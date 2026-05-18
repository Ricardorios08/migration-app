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

// Get columns of a table
router.get('/:engine/:db/columns/:table', async (req, res) => {
    const { engine, db, table } = req.params;
    if (!/^[a-zA-Z0-9_.]+$/.test(table)) return res.status(400).json({ error: 'Nombre de tabla inválido' });
    
    try {
        if (engine === 'pg') {
            const query = `
                SELECT column_name as "name", data_type as "type", is_nullable as "nullable"
                FROM information_schema.columns 
                WHERE table_schema = 'public' AND table_name = $1
            `;
            const result = await postgres.query(query, [table]);
            return res.json(result.rows.map(c => ({
                name: c.name,
                type: c.type,
                nullable: c.nullable
            })));
        }
        
        if (!ALLOWED_MARIA_DBS.includes(db)) return res.status(403).json({ error: 'Base de datos no permitida' });
        const result = await mariaDB.query(`SHOW COLUMNS FROM ${db}.${table}`);
        res.json(result.map(c => ({
            name: c.Field,
            type: c.Type,
            nullable: c.Null
        })));
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// Dynamic Aggregation Query Builder
router.post('/query', async (req, res) => {
    const { engine, db, table, selectColumns = [], aggregates = [], groupBy = [], filters = [], limit = 100 } = req.body;
    
    if (!/^[a-zA-Z0-9_.]+$/.test(table)) return res.status(400).json({ error: 'Nombre de tabla inválido' });
    if (engine !== 'pg' && !ALLOWED_MARIA_DBS.includes(db)) return res.status(403).json({ error: 'Base de datos no permitida' });

    const sanitizeColumnName = (col) => col.replace(/[^a-zA-Z0-9_*.]/g, '');
    
    try {
        const cleanSelect = selectColumns.map(sanitizeColumnName);
        const cleanGroupBy = groupBy.map(sanitizeColumnName);
        
        let projections = [];
        if (cleanSelect.length > 0) {
            projections.push(...cleanSelect);
        }
        
        aggregates.forEach(agg => {
            const op = agg.op.toUpperCase();
            if (!['SUM', 'COUNT', 'AVG', 'MIN', 'MAX'].includes(op)) return;
            const targetCol = agg.col === '*' ? '*' : sanitizeColumnName(agg.col);
            const alias = sanitizeColumnName(agg.alias || `${op}_${targetCol}`);
            
            projections.push(`${op}(${targetCol}) as "${alias}"`);
        });
        
        if (projections.length === 0) {
            projections.push('*');
        }
        
        let query = '';
        if (engine === 'pg') {
            query = `SELECT ${projections.join(', ')} FROM "${table}"`;
        } else {
            query = `SELECT ${projections.join(', ')} FROM ${db}.${table}`;
        }
        
        let whereClauses = [];
        let params = [];
        
        filters.forEach((filter, idx) => {
            const col = sanitizeColumnName(filter.col);
            const op = filter.op;
            const val = filter.val;
            
            if (!col || !op) return;
            
            if (['=', '>', '<', '<=', '>=', '!=', 'LIKE'].includes(op)) {
                if (engine === 'pg') {
                    whereClauses.push(`"${col}"::text ${op} $${params.length + 1}`);
                } else {
                    whereClauses.push(`${col} ${op} ?`);
                }
                params.push(op === 'LIKE' ? `%${val}%` : val);
            }
        });
        
        if (whereClauses.length > 0) {
            query += ` WHERE ${whereClauses.join(' AND ')}`;
        }
        
        if (cleanGroupBy.length > 0) {
            query += ` GROUP BY ${cleanGroupBy.join(', ')}`;
        }
        
        query += ` LIMIT ${Math.min(parseInt(limit) || 100, 5000)}`;
        
        console.log(`[DYNAMIC QUERY ENGINE] Running: "${query}" with params:`, params);
        
        let rows = [];
        if (engine === 'pg') {
            // Set statement timeout for PostgreSQL to 20 seconds
            await postgres.query(`SET statement_timeout = 20000`);
            const resData = await postgres.query(query, params);
            rows = resData.rows;
        } else {
            // Get connection from pool and query with a 20-second timeout
            let conn;
            try {
                conn = await mariaDB.getConnection();
                rows = await conn.query({ sql: query, timeout: 20000 }, params);
            } finally {
                if (conn) conn.release();
            }
        }
        
        res.json({
            success: true,
            queryExecuted: query,
            data: rows
        });
    } catch (err) {
        console.error('Dynamic Query Engine Error:', err);
        let errorMsg = err.message;
        if (err.code === 'ER_TIMEOUT' || err.message.toLowerCase().includes('timeout') || err.message.toLowerCase().includes('canceled')) {
            errorMsg = 'La consulta excedió el tiempo límite de 20 segundos para evitar saturación del servidor. Por favor, selecciona dimensiones de agrupación más específicas o agrega filtros en la sección 3 para reducir el volumen de datos a procesar.';
        }
        res.status(500).json({ error: errorMsg });
    }
});

module.exports = router;

