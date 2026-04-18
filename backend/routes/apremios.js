const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');
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
        const mariaTotalRes = await conn.query('SELECT COUNT(*) as total FROM recaudacion.apremio');
        const mariaTotal = parseInt(mariaTotalRes[0].total);

        console.log('[STATS] Fetching MariaDB stats by estado...');
        const estadoStatsRes = await conn.query(`
            SELECT a.EstaApre, ea.DetaEsap as name, COUNT(*) as value
            FROM recaudacion.apremio a
            LEFT JOIN recaudacion.estadoapremio ea ON a.EstaApre = ea.CodiEsap
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
            FROM recaudacion.apremio a 
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
                   a.CodiReca, a.CodiInju, a.EstaApre, ea.DetaEsap as EstadoDeta,
                   a.CapiApre, a.RecaApre, ij.DetaInju as InstanciaDeta
            FROM recaudacion.apremio a
            LEFT JOIN recaudacion.estadoapremio ea ON a.EstaApre = ea.CodiEsap
            LEFT JOIN recaudacion.instjudi ij ON a.CodiInju = ij.CodiInju
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
            SELECT cedid, cednro, cedestado, cedimptot, cedfchalt, cedtexto
            FROM public.cedula
            WHERE cedid = ANY($1)
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
        let countQuery = 'SELECT COUNT(*) as total FROM recaudacion.apremio a ';
        
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

module.exports = router;
