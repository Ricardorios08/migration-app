const express = require('express');
const router = express.Router();
const maria = require('../db/maria');
const postgres = require('../db/postgres');

const DB_NAME = process.env.MARIA_DB_NAME || 'recaudacion2';

// GET /comercio-rubros/:padron
router.get('/:padron', async (req, res) => {
    const { padron } = req.params;
    
    try {
        // 1. Fetch from MariaDB
        let mariaCommerce = await maria.query(`SELECT CodiCome, RazoCome FROM ${DB_NAME}.comercio WHERE CodiCome = ? OR CucuCome = ?`, [padron, padron]);
        
        let mariaRubros = [];
        let commerceInfo = { name: 'No encontrado', padron: padron };

        if (mariaCommerce.length > 0) {
            const codiCome = mariaCommerce[0].CodiCome;
            commerceInfo.name = mariaCommerce[0].RazoCome;
            commerceInfo.codiCome = codiCome;

            // Updated JOIN with subrubro to filter by PeriOrde = 2026 to avoid duplicates
            mariaRubros = await maria.query(`
                SELECT DISTINCT
                    s.CodiCome, s.CodiRamo, s.CodiRubr, s.CodiSubr, s.PrioSeco,
                    s.FealSeco as startDate, s.FebaSeco as endDate,
                    s.AcprSeco as isPrincipal, s.CantSeco as quantity, 
                    s.CateSeco as category, s.ObseSeco, s.AltaUsua, s.AltaFeho,
                    sr.DetaSubr as description,
                    t.Importe as utmValue,
                    tp.Porcentaje as percentage
                FROM ${DB_NAME}.servcome s
                JOIN ${DB_NAME}.subrubro sr ON 
                    s.CodiRubr = sr.CodiRubr AND 
                    s.CodiSubr = sr.CodiSubr AND 
                    sr.PeriOrde = 2026 -- FILTER BY YEAR TO AVOID DUPLICATES
                LEFT JOIN ${DB_NAME}.tarifariacomercio t ON 
                    t.CodiSubr = s.CodiSubr AND 
                    t.CodiRubr = s.CodiRubr AND 
                    t.CodiRamo = s.CodiRamo AND 
                    t.Categoria = s.CateSeco AND 
                    t.PeriInfo = 2026
                LEFT JOIN ${DB_NAME}.tarifariaporcentajes tp ON
                    tp.CodiSubr = s.CodiSubr AND
                    tp.CodiRubr = s.CodiRubr AND
                    tp.CodiRamo = s.CodiRamo AND
                    tp.PeriInfo = 2026
                WHERE s.CodiCome = ?
                ORDER BY sr.DetaSubr ASC
            `, [codiCome]);
        }

        // 2. Fetch from Postgres
        const pgCommerce = await postgres.query(`SELECT actcod, actrzs FROM actividad WHERE actcod::text = $1 OR actcgopad::text = $1`, [padron]);
        
        let pgRubros = [];
        if (pgCommerce.rows.length > 0) {
            const actcod = pgCommerce.rows[0].actcod;
            
            const pgRes = await postgres.query(`
                SELECT 
                    ar.rubcod, 
                    r.rubnom as description,
                    ar.rubactfchalt as "startDate",
                    ar.rubactfchbaj as "endDate",
                    ar.rubacttip as type,
                    ar.rubactcnt as quantity,
                    r.rubutm as utm,
                    r.rubsecporc as percentage,
                    ar.*, -- Raw link data
                    r.*  -- Raw rubric data
                FROM actividadrubro ar
                JOIN rubro r ON ar.rubcod = r.rubcod
                WHERE ar.actcod = $1
                ORDER BY r.rubnom ASC
            `, [actcod]);
            pgRubros = pgRes.rows;
        }

        res.json({
            commerce: commerceInfo,
            maria: mariaRubros,
            postgres: pgRubros
        });

    } catch (err) {
        console.error('Error fetching comercio rubros:', err);
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;
