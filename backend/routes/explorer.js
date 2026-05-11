const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');
const postgres = require('../db/postgres');
const { logAction } = require('../utils/logger');
const jwt = require('jsonwebtoken');

const DB_NAME = 'recaudacion2';
const JWT_SECRET = process.env.JWT_SECRET || 'fallback_secret';
const ALLOWED_MARIA_DBS = ['infogov', 'contpres', 'municipiov1', 'personal3', 'recahisto', 'recaudacion', 'recaudacion2', DB_NAME];

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

// List tables
router.get('/:engine/:db/tables', async (req, res) => {
    const { engine, db } = req.params;
    logAction(req.user.nombre_usuario, 'EXPLORER_LIST_TABLES', `Listando tablas en ${engine.toUpperCase()} / ${db}`, req);
    
    try {
        if (engine === 'pg') {
            const query = `SELECT table_name as "Name", (SELECT reltuples::bigint FROM pg_class WHERE relname = table_name) as "Rows", '' as "Comment", NULL as "Update_time" FROM information_schema.tables WHERE table_schema = 'public' ORDER BY table_name`;
            const result = await postgres.query(query);
            return res.json(result.rows.map(t => ({ name: t.Name, rows: t.Rows, comment: t.Comment, updated: t.Update_time })));
        }

        if (!ALLOWED_MARIA_DBS.includes(db)) return res.status(403).json({ error: 'Base de datos no permitida' });
        const result = await mariaDB.query(`SHOW TABLE STATUS FROM ${db}`);
        res.json(result.map(t => ({ name: t.Name, rows: t.Rows, comment: t.Comment, updated: t.Update_time })));
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// Dynamic Table Explorer
router.get('/:engine/:db/explore/:table', async (req, res) => {
    res.setHeader('Cache-Control', 'no-store, no-cache, must-revalidate, proxy-revalidate');
    const { engine, db, table } = req.params;
    const { q, limit = 100 } = req.query;
    
    logAction(req.user.nombre_usuario, 'EXPLORER_VIEW_DATA', `Consultando tabla: ${db}.${table} (${engine.toUpperCase()}) | Filtro: ${q || 'Ninguno'}`, req);

    if (!/^[a-zA-Z0-9_.]+$/.test(table)) return res.status(400).json({ error: 'Nombre de tabla inválido' });

    try {
        if (engine === 'pg') {
            let query = `SELECT * FROM "${table}"`;
            let params = [];
            if (q) {
                const colRes = await postgres.query(`SELECT column_name FROM information_schema.columns WHERE table_name = $1`, [table]);
                const searchable = colRes.rows.map(c => `CAST("${c.column_name}" AS TEXT) ILIKE $2`);
                if (searchable.length > 0) {
                    query += ` WHERE ${searchable.join(' OR ')}`;
                    params = [table, `%${q}%`];
                }
            }
            query += ` LIMIT ${parseInt(limit)}`;
            const result = await postgres.query(query, params);
            return res.json(result.rows);
        }

        if (!ALLOWED_MARIA_DBS.includes(db)) return res.status(403).json({ error: 'Base de datos no permitida' });
        let query = `SELECT * FROM ${db}.${table}`;
        let params = [];

        if (q) {
            const columns = await mariaDB.query(`SHOW COLUMNS FROM ${db}.${table}`);
            const searchableColumns = columns.filter(col => {
                const type = col.Type.toLowerCase();
                return type.includes('char') || type.includes('text') || type.includes('varchar') || type.includes('int') || type.includes('decimal');
            }).map(col => {
                const type = col.Type.toLowerCase();
                return type.includes('int') || type.includes('decimal') ? `CAST(${col.Field} AS CHAR) LIKE ?` : `${col.Field} LIKE ?`;
            });
            
            if (searchableColumns.length > 0) {
                query += ` WHERE ${searchableColumns.join(' OR ')}`;
                params = searchableColumns.map(() => `%${q}%`);
            }
        }

        query += ` LIMIT ${parseInt(limit)}`;
        const result = await mariaDB.query(query, params);
        res.json(result);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;
