const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');

// Whitelist of databases to explore
const ALLOWED_DBS = ['infogov', 'contpres', 'municipiov1', 'personal3', 'recahisto', 'recaudacion'];

// List tables in a specific database
router.get('/:db/tables', async (req, res) => {
    const { db } = req.params;
    
    if (!ALLOWED_DBS.includes(db)) {
        return res.status(403).json({ error: 'Base de datos no permitida' });
    }

    try {
        const result = await mariaDB.query(`SHOW TABLE STATUS FROM ${db}`);
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
router.get('/:db/explore/:table', async (req, res) => {
    res.setHeader('Cache-Control', 'no-store, no-cache, must-revalidate, proxy-revalidate');
    const { db, table } = req.params;
    const { q, limit = 100 } = req.query;
    
    console.log(`[Explorer Request] DB: ${db}, Table: ${table}, Q: ${q}`);
    
    if (!ALLOWED_DBS.includes(db)) {
        return res.status(403).json({ error: 'Base de datos no permitida' });
    }

    if (!/^[a-zA-Z0-9_]+$/.test(table)) {
        return res.status(400).json({ error: 'Nombre de tabla inválido' });
    }

    try {
        let query = `SELECT * FROM ${db}.${table}`;
        let params = [];

        if (q) {
            const columns = await mariaDB.query(`SHOW COLUMNS FROM ${db}.${table}`);
            const searchableColumns = columns
                .filter(col => {
                    const type = col.Type.toLowerCase();
                    return type.includes('char') || 
                           type.includes('text') || 
                           type.includes('varchar') ||
                           type.includes('int') ||
                           type.includes('decimal');
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
        
        console.log(`[Explorer Search] DB: ${db}, Table: ${table}, Query: ${query}, Params:`, params);
        
        const result = await mariaDB.query(query, params);
        res.json(result);
    } catch (err) {
        console.error(`Error exploring ${db}.${table}:`, err);
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;
