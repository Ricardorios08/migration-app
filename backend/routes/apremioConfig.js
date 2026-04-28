const express = require('express');
const router = express.Router();
const maria = require('../db/maria');

// GET /apremio-config/paraapre
router.get('/paraapre', async (req, res) => {
    try {
        await maria.query('USE recaudacion');
        const rows = await maria.query('SELECT * FROM paraapre');
        res.json(rows);
    } catch (err) {
        console.error('Error fetching paraapre:', err);
        res.status(500).json({ error: err.message });
    }
});

// GET /apremio-config/instjudi
router.get('/instjudi', async (req, res) => {
    try {
        await maria.query('USE recaudacion');
        const rows = await maria.query('SELECT * FROM instjudi ORDER BY CodiInju');
        res.json(rows);
    } catch (err) {
        console.error('Error fetching instjudi:', err);
        res.status(500).json({ error: err.message });
    }
});

// GET /apremio-config/escaapre
router.get('/escaapre', async (req, res) => {
    try {
        await maria.query('USE recaudacion');
        const rows = await maria.query('SELECT * FROM escaapre ORDER BY CodiPaap, CodiEsap');
        res.json(rows);
    } catch (err) {
        console.error('Error fetching escaapre:', err);
        res.status(500).json({ error: err.message });
    }
});

// GET /apremio-config/boleapre-sample?limit=10
router.get('/boleapre-sample', async (req, res) => {
    try {
        const limit = Math.min(parseInt(req.query.limit) || 10, 50);
        await maria.query('USE recaudacion');
        const rows = await maria.query(`SELECT * FROM boleapre WHERE CoadBoap > 0 LIMIT ?`, [limit]);
        res.json(rows);
    } catch (err) {
        console.error('Error fetching boleapre sample:', err);
        res.status(500).json({ error: err.message });
    }
});

// GET /apremio-config/debt?numeApre=123 or ?cuenCtct=123
router.get('/debt', async (req, res) => {
    try {
        const { numeApre, cuenCtct } = req.query;
        await maria.query('USE recaudacion');
        
        let sql = '';
        let params = [];
        
        if (numeApre) {
            sql = 'SELECT SUM(DebeCtct - CredCtct) as Capital, SUM(0) as Recargo FROM ctacte WHERE NumeApre = ?';
            params = [numeApre];
        } else if (cuenCtct) {
            sql = 'SELECT SUM(DebeCtct - CredCtct) as Capital, SUM(0) as Recargo FROM ctacte WHERE CuenCtct = ? AND NumeApre > 0';
            params = [cuenCtct];
        } else {
            return res.status(400).json({ error: 'Falta NumeApre o CuenCtct' });
        }

        const rows = await maria.query(sql, params);
        
        // Buscamos también el NumeApre si buscó por cuenta
        let actualApre = numeApre;
        if (cuenCtct && !numeApre) {
            const apreRow = await maria.query('SELECT NumeApre FROM ctacte WHERE CuenCtct = ? AND NumeApre > 0 LIMIT 1', [cuenCtct]);
            if (apreRow.length > 0) actualApre = apreRow[0].NumeApre;
        }

        res.json({
            capital: parseFloat(rows[0].Capital || 0),
            recargo: parseFloat(rows[0].Recargo || 0), // Aquí podríamos llamar a la fn de interés real si quisiéramos
            numeApre: actualApre
        });
    } catch (err) {
        console.error('Error fetching debt:', err);
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;
