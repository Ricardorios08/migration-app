const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');
const postgres = require('../db/postgres');

// Whitelist of MariaDB databases
const ALLOWED_MARIA_DBS = ['infogov', 'contpres', 'municipiov1', 'personal3', 'recahisto', 'recaudacion', 'recaudacion2'];

// Helper for MariaDB
const getMariaQueryFn = (db) => {
    if (db === 'recaudacion2' || db === 'recaudacion_remote') {
        return mariaDB.queryRemote;
    }
    return mariaDB.query;
};

// List tables in a specific database/schema
router.get('/:engine/:db/tables', async (req, res) => {
    const { engine, db } = req.params;
    
    try {
        if (engine === 'pg') {
            const query = `
                SELECT table_name as "Name", 
                       (SELECT reltuples::bigint FROM pg_class WHERE relname = table_name) as "Rows",
                       '' as "Comment",
                       NULL as "Update_time"
                FROM information_schema.tables 
                WHERE table_schema = 'public' 
                ORDER BY table_name`;
            const result = await postgres.query(query);
            return res.json(result.rows.map(t => ({
                name: t.Name,
                rows: t.Rows,
                comment: t.Comment,
                updated: t.Update_time
            })));
        }

        // MariaDB Logic
        if (!ALLOWED_MARIA_DBS.includes(db) && db !== 'recaudacion_remote') {
            return res.status(403).json({ error: 'Base de datos no permitida' });
        }

        const queryFn = getMariaQueryFn(db);
        const targetDb = db === 'recaudacion_remote' ? 'recaudacion' : db;
        const result = await queryFn(`SHOW TABLE STATUS FROM ${targetDb}`);
        const formatted = result.map(t => ({
            name: t.Name,
            rows: t.Rows,
            comment: t.Comment,
            updated: t.Update_time
        }));
        res.json(formatted);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// Dynamic Table Explorer
router.get('/:engine/:db/explore/:table', async (req, res) => {
    res.setHeader('Cache-Control', 'no-store, no-cache, must-revalidate, proxy-revalidate');
    const { engine, db, table } = req.params;
    const { q, limit = 100 } = req.query;
    
    if (!/^[a-zA-Z0-9_.]+$/.test(table)) {
        return res.status(400).json({ error: 'Nombre de tabla inválido' });
    }

    try {
        if (engine === 'pg') {
            let query = `SELECT * FROM "${table}"`;
            let params = [];
            
            if (q) {
                // Simplified PG search (requires knowing columns or using a generic approach)
                // For now, we fetch columns first to build the search
                const colRes = await postgres.query(`SELECT column_name FROM information_schema.columns WHERE table_name = $1`, [table]);
                const searchable = colRes.rows.map(c => `CAST("${c.column_name}" AS TEXT) ILIKE $2`);
                if (searchable.length > 0) {
                    query += ` WHERE ${searchable.join(' OR ')}`;
                    params = [table, `%${q}%`];
                }
            } else {
                params = [];
            }

            query += ` LIMIT ${parseInt(limit)}`;
            const result = await postgres.query(query, params);
            return res.json(result.rows);
        }

        // MariaDB Logic
        if (!ALLOWED_MARIA_DBS.includes(db) && db !== 'recaudacion_remote') {
            return res.status(403).json({ error: 'Base de datos no permitida' });
        }

        const queryFn = getMariaQueryFn(db);
        const targetDb = db === 'recaudacion_remote' ? 'recaudacion' : db;
        
        let query = `SELECT * FROM ${targetDb}.${table}`;
        let params = [];

        if (q) {
            const columns = await queryFn(`SHOW COLUMNS FROM ${targetDb}.${table}`);
            const searchableColumns = columns
                .filter(col => {
                    const type = col.Type.toLowerCase();
                    return type.includes('char') || type.includes('text') || type.includes('varchar') || type.includes('int') || type.includes('decimal');
                })
                .map(col => {
                    const type = col.Type.toLowerCase();
                    if (type.includes('int') || type.includes('decimal')) {
                        return `CAST(${col.Field} AS CHAR) LIKE ?`;
                    }
                    return `${col.Field} LIKE ?`;
                });
            
            if (searchableColumns.length > 0) {
                query += ` WHERE ${searchableColumns.join(' OR ')}`;
                params = searchableColumns.map(() => `%${q}%`);
            }
        }

        query += ` LIMIT ${parseInt(limit)}`;
        const result = await queryFn(query, params);
        res.json(result);
    } catch (err) {
        console.error(`Error exploring ${db}.${table}:`, err);
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;
