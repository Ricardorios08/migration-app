const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');
const { logAction } = require('../utils/logger');
const jwt = require('jsonwebtoken');

const SCHEMA = 'recaudacion2';
const JWT_SECRET = process.env.JWT_SECRET || 'fallback_secret';

// Middleware para asegurar que el usuario esté logueado en este router
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

// Aplicar a todas las rutas de este router
router.use(ensureAuth);

// 1. Lista de estados
router.get('/statuses', async (req, res) => {
    try {
        const results = await mariaDB.query(`SELECT * FROM ${SCHEMA}.estadoapremio ORDER BY DetaEsap ASC`);
        res.json(results);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// 2. Exportación
router.get('/export', async (req, res) => {
    const { q, status } = req.query;
    logAction(req.user.nombre_usuario, 'APREMIO_EXPORT', `Exportando búsqueda: Q="${q || ''}", Estado=${status}`, req);
    
    try {
        let whereClauses = [];
        let params = [];

        if (q) {
            const isNumeric = /^\d+$/.test(q);
            if (isNumeric) {
                whereClauses.push(`(a.NumeApre = ? OR a.CuenCtct = ?)`);
                params.push(q, q);
            } else {
                whereClauses.push(`a.TituApre LIKE ?`);
                params.push(`%${q}%`);
            }
        }

        if (status && status !== 'all') {
            whereClauses.push(`a.EstaApre = ?`);
            params.push(status);
        }

        const whereSql = whereClauses.length > 0 ? `WHERE ${whereClauses.join(' AND ')}` : '';

        const query = `
            SELECT a.NumeApre as Numero, a.CuenCtct as Cuenta, a.TituApre as Titular, 
                   ea.DetaEsap as Estado, a.AutoApre as Autos, a.FealApre as Fecha_Alta,
                   a.TotaApre as Total, p.DetaReca as Recaudador, oj.DetaOfju as Oficial_Justicia,
                   o.DetaOfic as Oficina
            FROM ${SCHEMA}.apremio a
            LEFT JOIN ${SCHEMA}.recaudador p ON a.CodiReca = p.CodiReca
            LEFT JOIN ${SCHEMA}.oficjust oj ON a.CodiOfju = oj.CodiOfju
            LEFT JOIN ${SCHEMA}.oficina o ON a.CodiOfic = o.CodiOfic
            LEFT JOIN ${SCHEMA}.estadoapremio ea ON a.EstaApre = ea.CodiEsap
            ${whereSql}
            ORDER BY a.NumeApre DESC
        `;
        
        const results = await mariaDB.query(query, params);
        res.json(results);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// 3. Buscador
router.get('/search', async (req, res) => {
    const { q, page = 1, status } = req.query;
    const limit = 20;
    const offset = (page - 1) * limit;

    try {
        let whereClauses = [];
        let params = [];

        if (q) {
            const isNumeric = /^\d+$/.test(q);
            if (isNumeric) {
                whereClauses.push(`(a.NumeApre = ? OR a.CuenCtct = ?)`);
                params.push(q, q);
            } else {
                whereClauses.push(`a.TituApre LIKE ?`);
                params.push(`%${q}%`);
            }
        }

        if (status && status !== 'all') {
            whereClauses.push(`a.EstaApre = ?`);
            params.push(status);
        }

        const whereSql = whereClauses.length > 0 ? `WHERE ${whereClauses.join(' AND ')}` : '';

        const query = `
            SELECT a.*, p.DetaReca as Recaudador, oj.DetaOfju as OficialJusticia,
                   o.DetaOfic as Oficina, ea.DetaEsap as EstadoDeta
            FROM ${SCHEMA}.apremio a
            LEFT JOIN ${SCHEMA}.recaudador p ON a.CodiReca = p.CodiReca
            LEFT JOIN ${SCHEMA}.oficjust oj ON a.CodiOfju = oj.CodiOfju
            LEFT JOIN ${SCHEMA}.oficina o ON a.CodiOfic = o.CodiOfic
            LEFT JOIN ${SCHEMA}.estadoapremio ea ON a.EstaApre = ea.CodiEsap
            ${whereSql}
            ORDER BY a.NumeApre DESC
            LIMIT ? OFFSET ?
        `;
        
        const [results, countResults] = await Promise.all([
            mariaDB.query(query, [...params, limit, offset]),
            mariaDB.query(`SELECT COUNT(*) as total FROM ${SCHEMA}.apremio a ${whereSql}`, params)
        ]);

        if (page == 1) {
            logAction(req.user.nombre_usuario, 'APREMIO_SEARCH', `Búsqueda: Q="${q || ''}", Estado=${status}`, req);
        }

        res.json({
            data: results,
            total: countResults[0].total,
            page: parseInt(page),
            limit
        });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// 4. Detalle
router.get('/detail/:numeApre', async (req, res) => {
    const { numeApre } = req.params;
    logAction(req.user.nombre_usuario, 'APREMIO_DETAIL', `Viendo detalle apremio #${numeApre}`, req);

    try {
        const apreResults = await mariaDB.query(`
            SELECT a.*, p.DetaReca as Recaudador, oj.DetaOfju as OficialJusticia,
                   o.DetaOfic as Oficina, ea.DetaEsap as EstadoDeta
            FROM ${SCHEMA}.apremio a
            LEFT JOIN ${SCHEMA}.recaudador p ON a.CodiReca = p.CodiReca
            LEFT JOIN ${SCHEMA}.oficjust oj ON a.CodiOfju = oj.CodiOfju
            LEFT JOIN ${SCHEMA}.oficina o ON a.CodiOfic = o.CodiOfic
            LEFT JOIN ${SCHEMA}.estadoapremio ea ON a.EstaApre = ea.CodiEsap
            WHERE a.NumeApre = ?
        `, [numeApre]);

        if (apreResults.length === 0) return res.status(404).json({ error: 'Apremio no encontrado' });
        
        const apremio = apreResults[0];

        const [instances, debt] = await Promise.all([
            mariaDB.query(`
                SELECT ip.*, ij.DetaInju
                FROM ${SCHEMA}.instapre ip
                LEFT JOIN ${SCHEMA}.instjudi ij ON ip.CodiInju = ij.CodiInju
                WHERE ip.NumeApre = ?
                ORDER BY ip.FechInap DESC, ip.CodiInju DESC
            `, [numeApre]),
            mariaDB.query(`
                SELECT * FROM ${SCHEMA}.ctacte 
                WHERE CodiOfic = ? AND CuenCtct = ? AND NumeApre = ?
                ORDER BY PeriCtct DESC, BimeCtct DESC
            `, [apremio.CodiOfic, apremio.CuenCtct, numeApre])
        ]);

        res.json({ apremio, instances, debt });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;
