const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');

const DB_NAME = process.env.MARIA_DB_NAME || 'recaudacion2';
const postgresDB = require('../db/postgres');

// Cache for PG IDs to avoid frequent large fetches
let pgIdsCache = {
    ids: [],
    lastFetch: 0,
    ttl: 5 * 60 * 1000 // 5 minutes
};

async function getPgIds() {
    const now = Date.now();
    if (pgIdsCache.ids.length > 0 && (now - pgIdsCache.lastFetch) < pgIdsCache.ttl) {
        return pgIdsCache.ids;
    }
    console.log('[CACHE] Fetching fresh IDs from Postgres...');
    const pgIdsRes = await postgresDB.query(`SELECT cedid FROM public.cedula WHERE cedid IS NOT NULL`);
    const ids = pgIdsRes.rows.map(r => parseInt(r.cedid)).filter(id => !isNaN(id));
    pgIdsCache.ids = ids;
    pgIdsCache.lastFetch = now;
    console.log(`[CACHE] Cached ${ids.length} IDs.`);
    return ids;
}

// Get summary statistics for dashboard
router.get('/stats', async (req, res) => {
    let conn;
    try {
        conn = await mariaDB.getConnection();
        
        const pgIds = await getPgIds();
        const pgTotal = pgIds.length;

        console.log('[STATS] Fetching MariaDB total...');
        const mariaTotalRes = await conn.query(`SELECT COUNT(*) as total FROM ${DB_NAME}.apremio`);
        const mariaTotal = parseInt(mariaTotalRes[0].total);

        console.log('[STATS] Fetching MariaDB stats by estado...');
        const estadoStatsRes = await conn.query(`
            SELECT a.EstaApre, ea.DetaEsap as name, COUNT(*) as value
            FROM ${DB_NAME}.apremio a
            LEFT JOIN ${DB_NAME}.estadoapremio ea ON a.EstaApre = ea.CodiEsap
            GROUP BY a.EstaApre, ea.DetaEsap
            ORDER BY value DESC
            LIMIT 10
        `);

        const migratedCount = pgTotal;
        const pendingCount = Math.max(0, mariaTotal - migratedCount);

        res.json({
            mariaTotal,
            pgTotal,
            migratedCount,
            pendingCount,
            byEstado: estadoStatsRes.map(r => ({
                id: r.EstaApre,
                name: r.name || `Código ${r.EstaApre}`,
                count: parseInt(r.value)
            }))
        });

    } catch (err) {
        console.error('Error fetching apremio stats:', err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

// Get list of all pending NumeApre (MariaDB but not in Postgres)
router.get('/pending-ids', async (req, res) => {
    let conn;
    try {
        conn = await mariaDB.getConnection();
        
        // Use temp table for cross-db exclusion
        await conn.query(`CREATE TEMPORARY TABLE IF NOT EXISTS tmp_migrated_ids_export (numeapre INT PRIMARY KEY)`);
        await conn.query(`TRUNCATE TABLE tmp_migrated_ids_export`);
        
        const pgIds = await getPgIds();
        
        if (pgIds.length > 0) {
            const batchSize = 3000;
            for (let i = 0; i < pgIds.length; i += batchSize) {
                const batchValues = pgIds.slice(i, i + batchSize);
                const placeholders = batchValues.map(() => '(?)').join(',');
                await conn.query(`INSERT IGNORE INTO tmp_migrated_ids_export (numeapre) VALUES ${placeholders}`, batchValues);
            }
        }

        const pendingRes = await conn.query(`
            SELECT a.NumeApre 
            FROM ${DB_NAME}.apremio a 
            LEFT JOIN tmp_migrated_ids_export t ON a.NumeApre = t.numeapre 
            WHERE t.numeapre IS NULL
            ORDER BY a.NumeApre ASC
        `);

        const ids = pendingRes.map(r => r.NumeApre);
        res.json({ ids });

    } catch (err) {
        console.error('Error fetching pending IDs:', err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

// Get apremios with migration status
router.get('/compare', async (req, res) => {
    const { officeId, limit = 100, skip = 0, status = 'all' } = req.query;
    let conn;

    try {
        conn = await mariaDB.getConnection();
        
        // Handle status filtering by using a temporary table for cross-db join
        let useStatusFilter = false;
        if (status === 'migrated' || status === 'pending') {
            useStatusFilter = true;
            console.log(`[COMPARE] Status filter requested: ${status}`);
            
            // Create temporary table in MariaDB
            console.log('[COMPARE] Creating temp table...');
            await conn.query(`CREATE TEMPORARY TABLE IF NOT EXISTS tmp_migrated_ids (numeapre INT PRIMARY KEY)`);
            await conn.query(`TRUNCATE TABLE tmp_migrated_ids`);
            
            // Fetch all IDs (uses cache if fresh)
            console.log('[COMPARE] Getting IDs from Postgres cache...');
            const pgIds = await getPgIds();
            console.log(`[COMPARE] Using ${pgIds.length} IDs for filtering. Processing...`);
            
            if (pgIds.length > 0) {
                const batchSize = 3000;
                for (let i = 0; i < pgIds.length; i += batchSize) {
                    const batchValues = pgIds.slice(i, i + batchSize);
                    
                    const placeholders = batchValues.map(() => '(?)').join(',');
                    await conn.query(`INSERT IGNORE INTO tmp_migrated_ids (numeapre) VALUES ${placeholders}`, batchValues);
                }
                console.log('[COMPARE] Temp table populated.');
            }
        }

        // 1. Fetch apremios from MariaDB
        // 1. Fetch apremios from MariaDB
        console.log('[COMPARE] Fetching apremios from MariaDB...');
        let mariaQuery = `
            SELECT a.NumeApre, a.FeemApre, a.TotaApre, a.CuenCtct, a.CodiOfic, a.TituApre,
                   a.CodiReca, r.DetaReca as RecaudadorDeta, 
                   a.CodiInju, a.EstaApre, ea.DetaEsap as EstadoDeta,
                   a.CapiApre, a.RecaApre, ij.DetaInju as InstanciaDeta
            FROM ${DB_NAME}.apremio a
            LEFT JOIN ${DB_NAME}.recaudador r ON a.CodiReca = r.CodiReca
            LEFT JOIN ${DB_NAME}.estadoapremio ea ON a.EstaApre = ea.CodiEsap
            LEFT JOIN ${DB_NAME}.instjudi ij ON a.CodiInju = ij.CodiInju
        `;

        if (useStatusFilter) {
            if (status === 'migrated') {
                mariaQuery += ` INNER JOIN tmp_migrated_ids t ON a.NumeApre = t.numeapre `;
            } else if (status === 'pending') {
                mariaQuery += ` LEFT JOIN tmp_migrated_ids t ON a.NumeApre = t.numeapre `;
            }
        }

        mariaQuery += ' WHERE 1=1 ';
        const params = [];

        if (useStatusFilter && status === 'pending') {
            mariaQuery += ' AND t.numeapre IS NULL ';
        }

        if (officeId) {
            mariaQuery += ' AND a.CodiOfic = ?';
            params.push(officeId);
        }

        mariaQuery += ' ORDER BY a.NumeApre DESC LIMIT ? OFFSET ?';
        params.push(parseInt(limit), parseInt(skip));

        console.log('[DEBUG MariaDB] Fetching apremios...');
        const mariaApremios = await conn.query(mariaQuery, params);

        if (mariaApremios.length === 0) {
            return res.json({ data: [], total: 0 });
        }

        // 2. Get list of NumeApre to search in Postgres
        const numeApreList = mariaApremios.map(a => a.NumeApre.toString());
        
        // 3. Search in Postgres cedula table
        // cedid in postgres corresponds to numeapre in mariadb
        const pgQuery = `
            SELECT c.cedid, c.cednro, c.cedestado, c.cedetapa, c.cedimptot, c.cedfchalt, c.cedtexto,
                   c.cedpercod, TRIM(p.pernom) as pernom,
                   (SELECT t.tipcedinsdsc 
                    FROM public.cedinstancia ci 
                    JOIN public.tipcedinstancia t ON ci.tipcedinscod = t.tipcedinscod 
                    WHERE ci.cednro = c.cednro 
                    ORDER BY ci.cedinsfec DESC, ci.cedinscod DESC 
                    LIMIT 1) as ultima_instancia,
                   (SELECT r.recnom 
                    FROM public.cedinstancia ci 
                    JOIN public.recaudador r ON ci.cedinsnro = r.reccod
                    WHERE ci.cednro = c.cednro AND ci.tipcedinscod = '1' 
                    LIMIT 1) as recaudador_nome
            FROM public.cedula c
            LEFT JOIN public.persona p ON c.cedpercod = p.percod
            WHERE c.cedid = ANY($1)
        `;
        const pgRes = await postgresDB.query(pgQuery, [numeApreList]);
        
        // Map postgres results by cedid for easy lookup
        const pgMap = {};
        pgRes.rows.forEach(row => {
            pgMap[row.cedid] = row;
        });

        // 4. Combine data
        const combined = mariaApremios.map(ma => {
            const pgData = pgMap[ma.NumeApre.toString()];
            const legacyTotal = parseFloat(ma.CapiApre || 0) + parseFloat(ma.RecaApre || 0);
            return {
                legacy: {
                    numeapre: ma.NumeApre,
                    feemapre: ma.FeemApre,
                    totaapre: legacyTotal,
                    capiapre: ma.CapiApre,
                    recaapre: ma.RecaApre,
                    cuenctct: ma.CuenCtct,
                    codiofic: ma.CodiOfic,
                    tituapre: ma.TituApre,
                    codireca: ma.CodiReca,
                    recaudadordeta: ma.RecaudadorDeta,
                    codiinju: ma.CodiInju,
                    instanciadeta: ma.InstanciaDeta,
                    estaapre: ma.EstaApre,
                    estadodeta: ma.EstadoDeta
                },
                postgres: pgData || null,
                isMigrated: !!pgData
            };
        });

        // Get total count for pagination
        let countQuery = `SELECT COUNT(*) as total FROM ${DB_NAME}.apremio a `;
        
        if (useStatusFilter) {
            if (status === 'migrated') {
                countQuery += ` INNER JOIN tmp_migrated_ids t ON a.NumeApre = t.numeapre `;
            } else if (status === 'pending') {
                countQuery += ` LEFT JOIN tmp_migrated_ids t ON a.NumeApre = t.numeapre `;
            }
        }

        countQuery += ' WHERE 1=1 ';
        const countParams = [];

        if (useStatusFilter && status === 'pending') {
            countQuery += ' AND t.numeapre IS NULL ';
        }

        if (officeId) {
            countQuery += ' AND a.CodiOfic = ?';
            countParams.push(officeId);
        }

        const totalRes = await conn.query(countQuery, countParams);
        const total = totalRes[0].total;

        res.json({
            data: combined,
            total: parseInt(total)
        });

    } catch (err) {
        console.error('Error comparing apremios:', err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

// Search Apremios by pattern
router.get('/search-id/:id', async (req, res) => {
    const { id } = req.params;
    const { searchType = 'id' } = req.query; // 'id' or 'ticket'
    let conn;

    try {
        conn = await mariaDB.getConnection();

        const searchTerm = (id.includes('%') || id.includes('_')) ? id : `%${id}%`;
        
        // 1. MariaDB Search
        let mariaQuery;
        let mariaParams;
        const isNumeric = /^\d+$/.test(id);

        if (searchType === 'name') {
            console.log(`[DEBUG] Searching Apremios by Name (Optimized): ${searchTerm}`);
            mariaQuery = `
                SELECT a.NumeApre, a.CuenCtct, a.CodiOfic, a.TotaApre, ea.DetaEsap as EstadoDeta,
                       a.CapiApre, a.RecaApre, a.TituApre
                FROM ${DB_NAME}.apremio a
                LEFT JOIN ${DB_NAME}.estadoapremio ea ON a.EstaApre = ea.CodiEsap
                WHERE a.TituApre LIKE ?
                ORDER BY a.NumeApre DESC
                LIMIT 50
            `;
            mariaParams = [searchTerm];
        } else if (isNumeric && searchType === 'id') {
            // ... (rest of numeric id logic)
            const numId = parseInt(id);
            const minRange = numId * 10;
            const maxRange = parseInt(id + '999999');
            mariaQuery = `
                SELECT a.NumeApre, a.CuenCtct, a.CodiOfic, a.TotaApre, ea.DetaEsap as EstadoDeta,
                       a.CapiApre, a.RecaApre
                FROM ${DB_NAME}.apremio a
                LEFT JOIN ${DB_NAME}.estadoapremio ea ON a.EstaApre = ea.CodiEsap
                WHERE a.NumeApre = ? 
                   OR (a.NumeApre >= ? AND a.NumeApre <= ?)
                   OR CAST(a.NumeApre AS CHAR) LIKE ?
                ORDER BY a.NumeApre DESC
                LIMIT 50
            `;
            mariaParams = [numId, minRange, maxRange, searchTerm];
        } else {
            mariaQuery = `
                SELECT a.NumeApre, a.CuenCtct, a.CodiOfic, a.TotaApre, ea.DetaEsap as EstadoDeta,
                       a.CapiApre, a.RecaApre
                FROM ${DB_NAME}.apremio a
                LEFT JOIN ${DB_NAME}.estadoapremio ea ON a.EstaApre = ea.CodiEsap
                WHERE CAST(a.NumeApre AS CHAR) LIKE ?
                ORDER BY a.NumeApre DESC
                LIMIT 50
            `;
            mariaParams = [searchTerm];
        }
        let mariaRes = await conn.query(mariaQuery, mariaParams);

        // 1.1 Check for orphan movements or Deep Name Search in CtaCte if results are low
        if (mariaRes.length < 10) {
            let orphanQuery;
            let orphanParams;
            
            if (searchType === 'name') {
                // Skip deep name search in CtaCte for now as it lacks names and joins are slow
                // Unless we really need it, but let's prioritize speed first.
                return;
            } else if (isNumeric && searchType === 'id') {
                const numId = parseInt(id);
                const minRange = numId * 10;
                const maxRange = parseInt(id + '999999');
                
                orphanQuery = `
                    SELECT DISTINCT t.NumeApre, t.CuenCtct, t.CodiOfic, 
                           SUM(t.DebeCtct - t.CredCtct) as TotaApre,
                           'SOLO EN CTACTE' as EstadoDeta,
                           SUM(t.DebeCtct - t.CredCtct) as CapiApre, 0 as RecaApre
                    FROM ${DB_NAME}.ctacte t
                    WHERE t.NumeApre = ? 
                       OR (t.NumeApre >= ? AND t.NumeApre <= ?)
                       OR CAST(t.NumeApre AS CHAR) LIKE ?
                    GROUP BY t.NumeApre, t.CuenCtct, t.CodiOfic
                    LIMIT 20
                `;
                orphanParams = [numId, minRange, maxRange, searchTerm];
            } else {
                orphanQuery = `
                    SELECT DISTINCT t.NumeApre, t.CuenCtct, t.CodiOfic, 
                           SUM(t.DebeCtct - t.CredCtct) as TotaApre,
                           'SOLO EN CTACTE' as EstadoDeta,
                           SUM(t.DebeCtct - t.CredCtct) as CapiApre, 0 as RecaApre
                    FROM ${DB_NAME}.ctacte t
                    WHERE CAST(t.NumeApre AS CHAR) LIKE ?
                    GROUP BY t.NumeApre, t.CuenCtct, t.CodiOfic
                    LIMIT 20
                `;
                orphanParams = [searchTerm];
            }
            const orphans = await conn.query(orphanQuery, orphanParams);
            orphans.forEach(o => {
                if (!mariaRes.some(m => m.NumeApre.toString() === o.NumeApre.toString())) {
                    mariaRes.push(o);
                }
            });
        }

        // 2. Postgres Search (depends on type)
        let pgQuery;
        if (searchType === 'ticket') {
            pgQuery = `
                SELECT c.cedid, c.cednro, c.cedimptot, c.cedestado, TRIM(p.pernom) as pernom
                FROM public.cedula c
                LEFT JOIN public.persona p ON c.cedpercod = p.percod
                WHERE CAST(c.cednro AS TEXT) LIKE $1
                ORDER BY c.cednro DESC
                LIMIT 50
            `;
        } else if (searchType === 'name') {
            pgQuery = `
                SELECT c.cedid, c.cednro, c.cedimptot, c.cedestado, TRIM(p.pernom) as pernom
                FROM public.cedula c
                LEFT JOIN public.persona p ON c.cedpercod = p.percod
                WHERE UPPER(p.pernom) LIKE UPPER($1)
                ORDER BY p.pernom ASC
                LIMIT 50
            `;
        } else {
            pgQuery = `
                SELECT c.cedid, c.cednro, c.cedimptot, c.cedestado, TRIM(p.pernom) as pernom
                FROM public.cedula c
                LEFT JOIN public.persona p ON c.cedpercod = p.percod
                WHERE CAST(c.cedid AS TEXT) LIKE $1
                ORDER BY c.cedid DESC
                LIMIT 50
            `;
        }
        const pgRes = await postgresDB.query(pgQuery, [searchTerm]);

        // 1.1 Check for orphan movements in CtaCte if results are low
        if (mariaRes.length < 10) {
            const orphanQuery = `
                SELECT DISTINCT t.NumeApre, t.CuenCtct, t.CodiOfic, 
                       SUM(t.DebeCtct - t.CredCtct) as TotaApre,
                       'SOLO EN CTACTE' as EstadoDeta,
                       SUM(t.DebeCtct - t.CredCtct) as CapiApre, 0 as RecaApre
                FROM ${DB_NAME}.ctacte t
                WHERE CAST(t.NumeApre AS CHAR) LIKE ?
                GROUP BY t.NumeApre, t.CuenCtct, t.CodiOfic
                LIMIT 20
            `;
            const orphans = await conn.query(orphanQuery, [searchTerm]);
            orphans.forEach(o => {
                if (!mariaRes.some(m => m.NumeApre.toString() === o.NumeApre.toString())) {
                    mariaRes.push(o);
                }
            });
        }



        // Combine unique IDs found in both
        const allIds = new Set([
            ...mariaRes.map(r => r.NumeApre.toString()),
            ...pgRes.rows.map(r => r.cedid.toString())
        ]);

        const combinedResults = Array.from(allIds).map(idStr => {
            const m = mariaRes.find(r => r.NumeApre.toString() === idStr);
            const p = pgRes.rows.find(r => r.cedid.toString() === idStr);
            
            const mariaTotal = m ? (parseFloat(m.CapiApre || 0) + parseFloat(m.RecaApre || 0)) : null;
            const pgTotal = p ? parseFloat(p.cedimptot || 0) : null;

            return {
                id: idStr,
                legacy: m ? {
                    numeapre: m.NumeApre,
                    cuenctct: m.CuenCtct,
                    totaapre: mariaTotal,
                    estadodeta: m.EstadoDeta,
                    denominacion: m.denominacion,
                    tituapre: m.TituApre
                } : null,
                postgres: p ? {
                    cedid: p.cedid,
                    cednro: p.cednro,
                    pernom: p.pernom,
                    cedimptot: pgTotal,
                    cedestado: p.cedestado
                } : null,
                status: {
                    inMaria: !!m,
                    inPostgres: !!p,
                    match: (m && p) ? (Math.abs(mariaTotal - pgTotal) < 1.0) : false
                }
            };
        });

        // Sort by ID descending
        combinedResults.sort((a, b) => parseInt(b.id) - parseInt(a.id));

        res.json(combinedResults);

    } catch (err) {
        console.error('Error searching apremios list:', err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

module.exports = router;
