const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');

// GET /api/boletos/search
router.get('/search', async (req, res) => {
    const { officeId, account, personId, period, status, numeBole, limit = 100 } = req.query;
    let conn;

    try {
        conn = await mariaDB.getConnection();
        await conn.query("USE recaudacion");

        // Direct join with pago table (grouped to avoid duplicates)
        let query = `
            SELECT 
                b.PeriBole, b.NumeBole, b.CodiOfic, b.CuenCtct, b.CucuPers, 
                b.FealBole, b.FeveBole, b.EstaBole, b.TotaBole, b.TipoBole,
                p.FechaPagoReal, p.ActaPago,
                per.DetaPers as NombreContribuyente
            FROM boleto b
            LEFT JOIN (
                SELECT PeriBole, NumeBole, MAX(FeenAcpa) as FechaPagoReal, MAX(NumeAcpa) as ActaPago
                FROM pago 
                GROUP BY PeriBole, NumeBole
            ) p ON b.PeriBole = p.PeriBole AND b.NumeBole = p.NumeBole
            LEFT JOIN infogov.persona per ON b.CucuPers = per.CucuPers
            WHERE 1=1
        `;
        const params = [];

        if (officeId) {
            query += " AND b.CodiOfic = ?";
            params.push(parseInt(officeId));
        }

        if (account) {
            const accountTrim = account.trim();
            query += " AND (TRIM(b.CuenCtct) = ? OR b.CuenCtct = ?)";
            params.push(accountTrim, accountTrim.padStart(10, ' '));
        }

        if (personId) {
            query += " AND b.CucuPers = ?";
            params.push(personId);
        }

        if (period) {
            query += " AND b.PeriBole = ?";
            params.push(period);
        }

        if (status) {
            query += " AND b.EstaBole = ?";
            params.push(status);
        }

        if (numeBole) {
            query += " AND b.NumeBole = ?";
            params.push(parseInt(numeBole));
        }

        query += " ORDER BY b.PeriBole DESC, b.NumeBole DESC LIMIT ?";
        params.push(parseInt(limit));

        const results = await conn.query(query, params);
        res.json(results);

    } catch (err) {
        console.error("Error searching boletos:", err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

// GET /api/boletos/details/:peri/:nume
router.get('/details/:peri/:nume', async (req, res) => {
    const { peri, nume } = req.params;
    let conn;

    try {
        conn = await mariaDB.getConnection();
        await conn.query("USE recaudacion");
        
        // 1. Get Main Header Info (simplified)
        const header = await conn.query(`
            SELECT 
                b.*, per.DetaPers as NombreContribuyente,
                p.FeenAcpa as FechaCobro, p.CodiUsua as UsuarioCobro, p.AltaFeho as HoraCobro,
                e.DetaEnre as Recaudador
            FROM recaudacion.boleto b
            LEFT JOIN infogov.persona per ON b.CucuPers = per.CucuPers
            LEFT JOIN recaudacion.pago p ON p.PeriBole = b.PeriBole AND p.NumeBole = b.NumeBole
            LEFT JOIN recaudacion.acrepago a ON p.FeenAcpa = a.FeenAcpa AND p.NumeAcpa = a.NumeAcpa
            LEFT JOIN infogov.entereca e ON a.CodiEnre = e.CodiEnre
            WHERE b.PeriBole = ? AND b.NumeBole = ?
            ORDER BY p.FeenAcpa DESC LIMIT 1
        `, [peri, nume]);

        // 2. Get Concepts (from detabole + concepto)
        const concepts = await conn.query(`
            SELECT 
                db.PeriCtct, db.BimeCtct, db.NumeCtct, db.CodiConc, c.DetaConc,
                db.CapiDebo as Capital, db.RecaDebo as Recargo, db.InteDebo as Interes, 
                db.DereDebo as Derecho, db.TotaDebo as Total
            FROM recaudacion.detabole db
            LEFT JOIN recaudacion.concepto c ON c.PeriInfo = db.PeriInfo AND c.CodiConc = db.CodiConc
            WHERE db.PeriBole = ? AND db.NumeBole = ?
        `, [peri, nume]);

        // 3. Get Reprints
        const reprints = await conn.query(`
            SELECT AltaUsua, AltaFeho 
            FROM recaudacion.ticket 
            WHERE PeriBole = ? AND NumeBole = ?
            ORDER BY AltaFeho DESC
        `, [peri, nume]);

        res.json({
            header: header[0],
            concepts,
            reprints
        });
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

// POST /api/boletos/audit-print
router.post('/audit-print', async (req, res) => {
    const { periBole, numeBole, user } = req.body;
    let conn;

    try {
        conn = await mariaDB.getConnection();
        await conn.query("USE recaudacion");
        await conn.query(`
            INSERT INTO ticket (PeriBole, NumeBole, AltaUsua) 
            VALUES (?, ?, ?)
        `, [periBole, numeBole, user]);
        res.json({ success: true });
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

module.exports = router;
