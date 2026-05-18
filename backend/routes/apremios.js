const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');
const postgresDB = require('../db/postgres');
const { logAction } = require('../utils/logger');
const jwt = require('jsonwebtoken');

const DB_NAME = 'recaudacion2';
const DB_RECAUDACION = 'recaudacion2';
const JWT_SECRET = process.env.JWT_SECRET || 'fallback_secret';

// Middleware de seguridad
const ensureAuth = (req, res, next) => {
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1];
    if (!token) return res.status(401).json({ error: 'No autorizado' });

    jwt.verify(token, JWT_SECRET, (err, user) => {
        if (err) return res.status(403).json({ error: 'Sesión expirada' });
        req.user = user;
        next();
    });
};

router.use(ensureAuth);

// Cache for PG IDs
let pgIdsCache = { ids: [], lastFetch: 0, ttl: 5 * 60 * 1000 };

async function getPgIds() {
    const now = Date.now();
    if (pgIdsCache.ids.length > 0 && (now - pgIdsCache.lastFetch) < pgIdsCache.ttl) return pgIdsCache.ids;
    const pgIdsRes = await postgresDB.query(`SELECT cedid FROM public.cedula WHERE cedid IS NOT NULL`);
    const ids = pgIdsRes.rows.map(r => parseInt(r.cedid)).filter(id => !isNaN(id));
    pgIdsCache.ids = ids;
    pgIdsCache.lastFetch = now;
    return ids;
}

// Stats
router.get('/stats', async (req, res) => {
    let conn;
    try {
        conn = await mariaDB.getConnection();
        const pgIds = await getPgIds();
        const mariaTotalRes = await conn.query(`SELECT COUNT(*) as total FROM ${DB_RECAUDACION}.apremio`);
        const mariaTotal = parseInt(mariaTotalRes[0].total);
        const estadoStatsRes = await conn.query(`SELECT a.EstaApre, ea.DetaEsap as name, COUNT(*) as value FROM ${DB_RECAUDACION}.apremio a LEFT JOIN ${DB_RECAUDACION}.estadoapremio ea ON a.EstaApre = ea.CodiEsap GROUP BY a.EstaApre, ea.DetaEsap ORDER BY value DESC LIMIT 10`);
        
        logAction(req.user.nombre_usuario, 'APREMIO_STATS', 'Consultando estadísticas generales de apremios', req);

        res.json({
            mariaTotal, pgTotal: pgIds.length, migratedCount: pgIds.length, pendingCount: Math.max(0, mariaTotal - pgIds.length),
            byEstado: estadoStatsRes.map(r => ({ id: r.EstaApre, name: r.name || `Código ${r.EstaApre}`, count: parseInt(r.value) }))
        });
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally { if (conn) conn.release(); }
});

// Pending IDs
router.get('/pending-ids', async (req, res) => {
    let conn;
    try {
        conn = await mariaDB.getConnection();
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
        const pendingRes = await conn.query(`SELECT a.NumeApre FROM ${DB_RECAUDACION}.apremio a LEFT JOIN tmp_migrated_ids_export t ON a.NumeApre = t.numeapre WHERE t.numeapre IS NULL ORDER BY a.NumeApre ASC`);
        res.json({ ids: pendingRes.map(r => r.NumeApre) });
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally { if (conn) conn.release(); }
});

// Compare (Dashboard)
router.get('/compare', async (req, res) => {
    const { officeId, limit = 100, skip = 0, status = 'all' } = req.query;
    let conn;
    try {
        conn = await mariaDB.getConnection();
        logAction(req.user.nombre_usuario, 'APREMIO_COMPARE', `Comparando apremios (Office: ${officeId || 'Todas'}, Status: ${status})`, req);

        if (status === 'migrated' || status === 'pending') {
            await conn.query(`CREATE TEMPORARY TABLE IF NOT EXISTS tmp_migrated_ids (numeapre INT PRIMARY KEY)`);
            await conn.query(`TRUNCATE TABLE tmp_migrated_ids`);
            const pgIds = await getPgIds();
            if (pgIds.length > 0) {
                const batchSize = 3000;
                for (let i = 0; i < pgIds.length; i += batchSize) {
                    const batchValues = pgIds.slice(i, i + batchSize);
                    const placeholders = batchValues.map(() => '(?)').join(',');
                    await conn.query(`INSERT IGNORE INTO tmp_migrated_ids (numeapre) VALUES ${placeholders}`, batchValues);
                }
            }
        }

        let mariaQuery = `SELECT a.NumeApre, a.FeemApre, a.TotaApre, a.CuenCtct, a.CodiOfic, a.TituApre, a.CodiReca, r.DetaReca as RecaudadorDeta, a.CodiInju, a.EstaApre, ea.DetaEsap as EstadoDeta, a.CapiApre, a.RecaApre, ij.DetaInju as InstanciaDeta FROM ${DB_RECAUDACION}.apremio a LEFT JOIN ${DB_RECAUDACION}.recaudador r ON a.CodiReca = r.CodiReca LEFT JOIN ${DB_RECAUDACION}.estadoapremio ea ON a.EstaApre = ea.CodiEsap LEFT JOIN ${DB_RECAUDACION}.instjudi ij ON a.CodiInju = ij.CodiInju `;
        if (status === 'migrated') mariaQuery += ` INNER JOIN tmp_migrated_ids t ON a.NumeApre = t.numeapre `;
        else if (status === 'pending') mariaQuery += ` LEFT JOIN tmp_migrated_ids t ON a.NumeApre = t.numeapre `;
        
        mariaQuery += ' WHERE 1=1 ';
        const params = [];
        if (status === 'pending') mariaQuery += ' AND t.numeapre IS NULL ';
        if (officeId) { mariaQuery += ' AND a.CodiOfic = ?'; params.push(officeId); }
        mariaQuery += ' ORDER BY a.NumeApre DESC LIMIT ? OFFSET ?';
        params.push(parseInt(limit), parseInt(skip));

        const mariaApremios = await conn.query(mariaQuery, params);
        if (mariaApremios.length === 0) return res.json({ data: [], total: 0 });

        const numeApreList = mariaApremios.map(a => a.NumeApre.toString());
        const pgRes = await postgresDB.query(`SELECT c.cedid, c.cednro, c.cedestado, c.cedetapa, c.cedimptot, c.cedfchalt, c.cedtexto, c.cedpercod, TRIM(p.pernom) as pernom FROM public.cedula c LEFT JOIN public.persona p ON c.cedpercod = p.percod WHERE c.cedid = ANY($1)`, [numeApreList]);
        
        const pgMap = {};
        pgRes.rows.forEach(row => { pgMap[row.cedid] = row; });

        const combined = mariaApremios.map(ma => ({
            legacy: { numeapre: ma.NumeApre, feemapre: ma.FeemApre, totaapre: parseFloat(ma.CapiApre || 0) + parseFloat(ma.RecaApre || 0), cuenctct: ma.CuenCtct, codiofic: ma.CodiOfic, tituapre: ma.TituApre, recaudadordeta: ma.RecaudadorDeta, instanciadeta: ma.InstanciaDeta, estadodeta: ma.EstadoDeta },
            postgres: pgMap[ma.NumeApre.toString()] || null,
            isMigrated: !!pgMap[ma.NumeApre.toString()]
        }));

        const totalRes = await conn.query(`SELECT COUNT(*) as total FROM ${DB_RECAUDACION}.apremio`);
        res.json({ data: combined, total: parseInt(totalRes[0].total) });
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally { if (conn) conn.release(); }
});

// Search Apremio ID
router.get('/search-id/:id', async (req, res) => {
    const { id } = req.params;
    const { searchType = 'id' } = req.query;
    logAction(req.user.nombre_usuario, 'APREMIO_SEARCH_ID', `Buscando apremio: ${id} (Tipo: ${searchType})`, req);
    
    try {
        const searchTerm = `%${id}%`;
        const isNumeric = /^\d+$/.test(id);
        let mariaResults = [];

        if (searchType === 'name') {
            mariaResults = await mariaDB.query(`SELECT a.NumeApre, a.CuenCtct, a.CodiOfic, a.TotaApre, ea.DetaEsap as EstadoDeta, a.TituApre FROM ${DB_RECAUDACION}.apremio a LEFT JOIN ${DB_RECAUDACION}.estadoapremio ea ON a.EstaApre = ea.CodiEsap WHERE a.TituApre LIKE ? ORDER BY a.NumeApre DESC LIMIT 50`, [searchTerm]);
        } else if (isNumeric) {
            mariaResults = await mariaDB.query(`SELECT a.NumeApre, a.CuenCtct, a.CodiOfic, a.TotaApre, ea.DetaEsap as EstadoDeta, a.TituApre FROM ${DB_RECAUDACION}.apremio a LEFT JOIN ${DB_RECAUDACION}.estadoapremio ea ON a.EstaApre = ea.CodiEsap WHERE a.NumeApre = ? OR CAST(a.NumeApre AS CHAR) LIKE ? ORDER BY a.NumeApre DESC LIMIT 50`, [parseInt(id), searchTerm]);
        }

        const pgRes = await postgresDB.query(`SELECT c.cedid, c.cednro, c.cedimptot, c.cedestado, TRIM(p.pernom) as pernom FROM public.cedula c LEFT JOIN public.persona p ON c.cedpercod = p.percod WHERE ${searchType === 'name' ? 'UPPER(p.pernom) LIKE UPPER($1)' : 'CAST(c.cedid AS TEXT) LIKE $1'} LIMIT 50`, [searchTerm]);
        
        const allIds = new Set([...mariaResults.map(r => r.NumeApre.toString()), ...pgRes.rows.map(r => r.cedid.toString())]);
        const combined = Array.from(allIds).map(idStr => {
            const m = mariaResults.find(r => r.NumeApre.toString() === idStr);
            const p = pgRes.rows.find(r => r.cedid.toString() === idStr);
            return { id: idStr, legacy: m, postgres: p, status: { inMaria: !!m, inPostgres: !!p } };
        });

        res.json(combined);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// GET /api/apremios/explorer - Advanced Multi-column search
router.get('/explorer', async (req, res) => {
    const { 
        numeApre, title, account, personId, officeId, status, 
        recaId, autoApre, dateFrom, dateTo, limit = 50, page = 1 
    } = req.query;
    
    let conn;
    try {
        conn = await mariaDB.getConnection();
        await conn.query(`USE ${DB_RECAUDACION}`);
        
        let whereClause = ' WHERE 1=1';
        const params = [];

        if (numeApre) { whereClause += " AND a.NumeApre = ?"; params.push(parseInt(numeApre)); }
        if (title) { whereClause += " AND a.TituApre LIKE ?"; params.push(`%${title.trim()}%`); }
        if (account) { whereClause += " AND a.CuenCtct LIKE ?"; params.push(`%${account.trim()}%`); }
        if (personId) { whereClause += " AND a.CucuPers = ?"; params.push(personId); }
        if (officeId) { whereClause += " AND a.CodiOfic = ?"; params.push(parseInt(officeId)); }
        if (status) { whereClause += " AND a.EstaApre = ?"; params.push(parseInt(status)); }
        if (recaId) { whereClause += " AND a.CodiReca = ?"; params.push(parseInt(recaId)); }
        if (autoApre) { whereClause += " AND a.AutoApre = ?"; params.push(parseInt(autoApre)); }
        if (dateFrom) { whereClause += " AND a.FealApre >= ?"; params.push(dateFrom); }
        if (dateTo) { whereClause += " AND a.FealApre <= ?"; params.push(dateTo); }

        // Count for pagination
        const countRes = await conn.query(`SELECT COUNT(*) as total FROM apremio a ${whereClause}`, params);
        const total = Number(countRes[0].total);

        // Fetch data
        let query = `
            SELECT a.*, ea.DetaEsap as EstadoDeta, r.DetaReca as RecaudadorDeta 
            FROM apremio a 
            LEFT JOIN estadoapremio ea ON a.EstaApre = ea.CodiEsap 
            LEFT JOIN recaudador r ON a.CodiReca = r.CodiReca
            ${whereClause} 
            ORDER BY a.NumeApre DESC 
            LIMIT ? OFFSET ?
        `;
        
        const limitVal = Number(limit);
        const pageVal = Number(page);
        const offsetVal = (pageVal - 1) * limitVal;
        
        const results = await conn.query(query, [...params, limitVal, offsetVal]);
        
        res.json({
            results,
            pagination: {
                total,
                page: pageVal,
                limit: limitVal,
                totalPages: Math.ceil(total / limitVal) || 0
            }
        });
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally { if (conn) conn.release(); }
});

module.exports = router;
