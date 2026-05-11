const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');
const { logAction } = require('../utils/logger');
const jwt = require('jsonwebtoken');

const DB_NAME = 'recaudacion2'; 
const DB_RECAUDACION = 'recaudacion2'; 
const JWT_SECRET = process.env.JWT_SECRET || 'fallback_secret';

// Middleware de seguridad estricto
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

// GET /api/boletos/search
router.get('/search', async (req, res) => {
    const { officeId, account, personId, period, status, numeBole, limit = 100 } = req.query;
    let conn;
    try {
        conn = await mariaDB.getConnection();
        const threadId = conn.threadId;
        req.on('aborted', async () => {
            if (!threadId) return;
            let killConn = await mariaDB.superadminPool.getConnection();
            try { await killConn.query(`KILL QUERY ${threadId}`); } finally { killConn.release(); }
        });

        await conn.query(`USE ${DB_RECAUDACION}`);
        let query = `SELECT b.PeriBole, b.NumeBole, b.CodiOfic, b.CuenCtct, b.CucuPers, b.FealBole, b.FeveBole, b.EstaBole, b.TotaBole, b.TipoBole, p.FechaPagoReal, p.ActaPago, per.DetaPers as NombreContribuyente FROM boleto b LEFT JOIN (SELECT PeriBole, NumeBole, MAX(FeenAcpa) as FechaPagoReal, MAX(NumeAcpa) as ActaPago FROM pago GROUP BY PeriBole, NumeBole) p ON b.PeriBole = p.PeriBole AND b.NumeBole = p.NumeBole LEFT JOIN infogov.persona per ON b.CucuPers = per.CucuPers WHERE 1=1`;
        const params = [];

        if (officeId) { query += " AND b.CodiOfic = ?"; params.push(parseInt(officeId)); }
        if (account) { const accountTrim = account.trim(); query += " AND (TRIM(b.CuenCtct) = ? OR b.CuenCtct = ?)"; params.push(accountTrim, accountTrim.padStart(10, ' ')); }
        if (personId) { query += " AND b.CucuPers = ?"; params.push(personId); }
        if (period) { query += " AND b.PeriBole = ?"; params.push(period); }
        if (status) { query += " AND b.EstaBole = ?"; params.push(status); }
        if (numeBole) { query += " AND b.NumeBole = ?"; params.push(parseInt(numeBole)); }

        query += " ORDER BY b.PeriBole DESC, b.NumeBole DESC LIMIT ?";
        params.push(parseInt(limit));

        const results = await conn.query(query, params);
        logAction(req.user.nombre_usuario, 'SEARCH_BOLETO', `Búsqueda Boletos: ${JSON.stringify(req.query)}`, req);
        res.json(results);
    } catch (err) {
        if (err.code === 'ER_QUERY_INTERRUPTED') return res.status(499).json({ error: 'Búsqueda cancelada' });
        res.status(500).json({ error: err.message });
    } finally { if (conn) conn.release(); }
});

// GET /api/boletos/details/:peri/:nume
router.get('/details/:peri/:nume', async (req, res) => {
    const { peri, nume } = req.params;
    let conn;
    try {
        conn = await mariaDB.getConnection();
        await conn.query(`USE ${DB_RECAUDACION}`);
        const header = await conn.query(`SELECT b.*, per.DetaPers as NombreContribuyente, p.FeenAcpa as FechaCobro, p.CodiUsua as UsuarioCobro, p.AltaFeho as HoraCobro, e.DetaEnre as Recaudador FROM ${DB_NAME}.boleto b LEFT JOIN infogov.persona per ON b.CucuPers = per.CucuPers LEFT JOIN ${DB_NAME}.pago p ON p.PeriBole = b.PeriBole AND p.NumeBole = b.NumeBole LEFT JOIN ${DB_NAME}.acrepago a ON p.FeenAcpa = a.FeenAcpa AND p.NumeAcpa = a.NumeAcpa LEFT JOIN infogov.entereca e ON a.CodiEnre = e.CodiEnre WHERE b.PeriBole = ? AND b.NumeBole = ? ORDER BY p.FeenAcpa DESC LIMIT 1`, [peri, nume]);
        const concepts = await conn.query(`SELECT db.PeriCtct, db.BimeCtct, db.NumeCtct, db.CodiConc, c.DetaConc, db.CapiDebo as Capital, db.RecaDebo as Recargo, db.InteDebo as Interes, db.DereDebo as Derecho, db.TotaDebo as Total FROM ${DB_NAME}.detabole db LEFT JOIN ${DB_NAME}.concepto c ON c.PeriInfo = db.PeriInfo AND c.CodiConc = db.CodiConc WHERE db.PeriBole = ? AND db.NumeBole = ?`, [peri, nume]);
        const reprints = await conn.query(`SELECT AltaUsua, AltaFeho FROM ${DB_NAME}.ticket WHERE PeriBole = ? AND NumeBole = ? ORDER BY AltaFeho DESC`, [peri, nume]);
        
        logAction(req.user.nombre_usuario, 'VIEW_BOLETO_DETAIL', `Detalle Boleto: ${peri}/${nume}`, req);
        res.json({ header: header[0], concepts, reprints });
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally { if (conn) conn.release(); }
});

// POST /api/boletos/audit-print
router.post('/audit-print', async (req, res) => {
    const { periBole, numeBole } = req.body;
    const user = req.user.nombre_usuario; // Usar siempre el usuario del Token
    let conn;
    try {
        conn = await mariaDB.getConnection();
        await conn.query(`USE ${DB_RECAUDACION}`);
        await conn.query(`INSERT INTO ticket (PeriBole, NumeBole, AltaUsua) VALUES (?, ?, ?)`, [periBole, numeBole, user]);
        logAction(user, 'PRINT_BOLETO', `Reimpresión Boleto: ${periBole}/${numeBole}`, req);
        res.json({ success: true });
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally { if (conn) conn.release(); }
});

module.exports = router;
