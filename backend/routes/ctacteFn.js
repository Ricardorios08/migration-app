const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');
const postgresDB = require('../db/postgres');

/**
 * Helper to calculate legacy interest based on fnCalculoIntNuevos and fnCalculoIntViejos
 */
function calculateLegacyInterest(dueDate, queryDate, capital) {
    if (capital <= 0 || !dueDate) return 0;
    
    const dDate = new Date(dueDate);
    const qDate = new Date(queryDate);
    
    if (qDate <= dDate) return 0;

    const CUTOFF_NEW = new Date('2014-07-01');
    const CUTOFF_HIKE = new Date('2024-05-06');
    const RATE_BASE = 3.0; // % monthly
    const RATE_HIKE = 8.0; // % monthly

    let totalInterest = 0;

    if (dDate >= CUTOFF_NEW) {
        // MODERN LOGIC (fnCalculoIntNuevos)
        if (qDate < CUTOFF_HIKE) {
            // All at 3%
            const days = Math.ceil((qDate - dDate) / (1000 * 60 * 60 * 24));
            totalInterest = capital * days * (RATE_BASE / 3000);
        } else if (dDate >= CUTOFF_HIKE) {
            // All at 8%
            const days = Math.ceil((qDate - dDate) / (1000 * 60 * 60 * 24));
            totalInterest = capital * days * (RATE_HIKE / 3000);
        } else {
            // Mixed
            const days3 = Math.ceil((new Date('2024-05-05') - dDate) / (1000 * 60 * 60 * 24));
            const days8 = Math.ceil((qDate - CUTOFF_HIKE) / (1000 * 60 * 60 * 24)) + 1; // +1 to include the hike day
            totalInterest = (capital * days3 * (RATE_BASE / 3000)) + (capital * days8 * (RATE_HIKE / 3000));
        }
    } else {
        // HISTORICAL LOGIC (fnCalculoIntViejos)
        let vInteres = 1.0;
        let pI = new Date(dDate);
        const pF = new Date(qDate);

        // Utility to handle date segments
        const applySegment = (startDate, endDate, dailyFactor, isCompound) => {
            if (pI < endDate && pF > startDate) {
                const start = pI > startDate ? pI : startDate;
                const end = pF < endDate ? pF : endDate;
                const days = Math.ceil((end - start) / (1000 * 60 * 60 * 24));
                if (days > 0) {
                    if (isCompound) {
                        vInteres = vInteres * Math.pow(1 + dailyFactor, days);
                    } else {
                        vInteres = vInteres + (dailyFactor * days);
                    }
                    pI = new Date(end.getTime() + 86400000); // Move to next day
                }
            }
        };

        // Segments from fnCalculoIntViejos
        applySegment(new Date('1992-01-01'), new Date('1992-10-31'), 0.0018, true);
        applySegment(new Date('1992-11-01'), new Date('1995-06-30'), 0.0013, true);
        applySegment(new Date('1995-07-01'), new Date('1997-10-31'), 0.000966, false);
        applySegment(new Date('1997-11-01'), new Date('1999-12-31'), 0.000600, false);
        applySegment(new Date('2000-01-01'), new Date('2001-10-28'), 0.000476, false);
        applySegment(new Date('2001-10-29'), new Date('2002-05-26'), 0.000317, false);
        applySegment(new Date('2002-05-27'), new Date('2004-10-31'), 0.000845, false);
        applySegment(new Date('2004-11-01'), new Date('2005-12-31'), 0.000524, false);
        applySegment(new Date('2006-01-01'), new Date('2009-09-14'), 0.000516, false);
        applySegment(new Date('2009-09-15'), new Date('2014-06-30'), 0.000500, false);

        totalInterest = capital * (vInteres - 1);

        // Add the post-2014 parts if query date is beyond
        if (pF >= CUTOFF_NEW) {
            const startForModern = pI > CUTOFF_NEW ? pI : CUTOFF_NEW;
            if (pF < CUTOFF_HIKE) {
                const days = Math.ceil((pF - startForModern) / (1000 * 60 * 60 * 24));
                totalInterest += capital * days * (RATE_BASE / 3000);
            } else {
                const days3 = Math.ceil((new Date('2024-05-05') - startForModern) / (1000 * 60 * 60 * 24));
                const days8 = Math.ceil((pF - CUTOFF_HIKE) / (1000 * 60 * 60 * 24)) + 1;
                totalInterest += (capital * days3 * (RATE_BASE / 3000)) + (capital * (days8 > 0 ? days8 : 0) * (RATE_HIKE / 3000));
            }
        }
    }

    return Math.round(totalInterest * 100) / 100;
}

// MAIN SEARCH ROUTE
router.get('/legacy/search', async (req, res) => {
    const { officeId, account, onlyDebt, toDate, fealCorte } = req.query;
    let conn;

    try {
        conn = await mariaDB.getRemoteConnection();
        await conn.query("USE recaudacion2");

        const accList = Array.isArray(account) ? account : (account ? [account.toString().trim()] : []);
        const queryDate = toDate || new Date().toISOString().split('T')[0];
        
        let allResults = [];

        for (const acc of accList) {
            // 1. Get main debt from ctacte
            const mainDebtQuery = `
                SELECT 
                    t.PeriCtct, t.BimeCtct, MAX(t.CuotDefa) as CuotDefa, MAX(t.FeveCtct) as FeveCtct, 
                    IFNULL(c.DetaConc, MAX(t.DetaCtct)) as DetaCtct, 
                    SUM(IFNULL(t.DebeCtct, 0)) - SUM(IFNULL(t.CredCtct, 0)) as DebeCtct, 
                    MAX(t.NumeAcpa) as NumeAcpa, MAX(t.FeenAcpa) as FechaPago,
                    MAX(t.NumeBole) as NumeBole, MAX(t.NumeApre) as NumeApre, MAX(t.CodiFapa) as CodiFapa,
                    MAX(t.PeriInfo) as PeriInfo, MAX(t.CodiConc) as CodiConc,
                    'CTACTE' as Source
                FROM recaudacion2.ctacte t
                LEFT JOIN concepto c ON c.PeriInfo = t.PeriInfo AND c.CodiConc = t.CodiConc
                WHERE t.CodiOfic = ? AND t.CuenCtct = ?
                GROUP BY t.PeriCtct, t.BimeCtct, t.PeriInfo, t.CodiConc
                HAVING (SUM(IFNULL(t.DebeCtct, 0)) - SUM(IFNULL(t.CredCtct, 0))) > 0.01
            `;
            
            const mainResults = await conn.query(mainDebtQuery, [officeId, acc]);

            // 2. Get payment plan installments (facipago/detafapa)
            const planDebtQuery = `
                SELECT 
                    f.PeriInfo as PeriCtct, d.CuotDefa as BimeCtct, d.CuotDefa, d.FeveDefa as FeveCtct,
                    CONCAT('Plan ', f.CodiFapa, ' - Cuota ', d.CuotDefa) as DetaCtct,
                    d.TotaDefa as DebeCtct,
                    0 as NumeAcpa, NULL as FechaPago,
                    0 as NumeBole, 0 as NumeApre, f.CodiFapa,
                    f.PeriInfo, d.CodiFapa as CodiConc,
                    'PLAN' as Source
                FROM facipago f
                INNER JOIN detafapa d ON d.CodiFapa = f.CodiFapa
                WHERE f.CodiOfic = ? AND f.CuenCtct = ? AND f.EstaFapa = 'Activa'
                AND d.FepaDefa IS NULL
            `;
            const planResults = await conn.query(planDebtQuery, [officeId, acc]);

            const combined = [...mainResults, ...planResults];

            // 3. Apply Interest Logic and Format
            const finalResults = combined.map(row => {
                const capital = parseFloat(row.DebeCtct || 0);
                const reca = calculateLegacyInterest(row.FeveCtct, queryDate, capital);
                
                return {
                    ...row,
                    DebeCtct: capital,
                    RecaCtct: reca,
                    TotaCtct: capital + reca,
                    hasApremio: parseInt(row.NumeApre || 0) > 0,
                    hasPlan: parseInt(row.CodiFapa || 0) > 0
                };
            });

            allResults.push(...finalResults);
        }

        // Sort by period descending
        allResults.sort((a, b) => {
            if (b.PeriCtct !== a.PeriCtct) return b.PeriCtct - a.PeriCtct;
            return b.BimeCtct - a.BimeCtct;
        });

        res.json(allResults);

    } catch (err) {
        console.error('Error in ctacteFn search:', err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

// EXPERIMENTAL POSTGRES SEARCH WITH LEGACY INTERESTS
router.get('/new/search', async (req, res) => {
    const { officeId, account, accounts, searchType, percod, toDate, onlyDebt, showQuotaDetail } = req.query;

    try {
        let accountList = accounts ? (Array.isArray(accounts) ? accounts : [accounts]) : (account ? [account] : []);
        let resolvedInfo = [];

        if (searchType === 'person' && percod) {
            const resolutionQuery = `
                SELECT DISTINCT t.tbecod, t.tpotribcod as "officeId"
                FROM public.generacioncuota gc
                JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                WHERE gc.genctapercod = $1
            `;
            const resolutionRes = await postgresDB.query(resolutionQuery, [percod]);
            resolvedInfo = resolutionRes.rows;
            accountList = resolvedInfo.map(r => r.tbecod);
        }

        if (accountList.length === 0) return res.json([]);

        const placeholders = accountList.map((_, i) => `$${i + 1}`).join(',');

        let query;
        if (showQuotaDetail === 'true') {
            query = `
                SELECT 
                    cc.ctactecod, gc.genctaancta as "PeriCtct", gc.genctanrocta as "BimeCtct", 
                    cc.ctactefchalta, gc.genctafchvto as "FeveCtct",
                    COALESCE(gcd.genctadetimp, gc.genctaimpcta) as "DebeCtct",
                    cc.ctacteognmov, gc.genctacednro as "NumeApre",
                    cc.cabpgoctactecod as "NumeAcpa", pgo.cabpgoctactefchpgo as "FechaPago",
                    cc.plnpgocod, t.tbecod as "CuenCtct", tt.tpotribnom as "TipoTributo",
                    tt.tpotribcod as "officeId", p.percod as "PersonId",
                    TRIM(p.pernom) as "OwnerName", cat.caonra as "Nomenclatura",
                    def.defidpab as "Pabellon", def.defidnicho as "Nicho"
                FROM public.generacioncuota gc
                LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetcod
                LEFT JOIN public.cuentacorriente cc ON cc.genctacod = gc.genctacod
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                INNER JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod
                LEFT JOIN public.cabecerapagoctacte pgo ON cc.cabpgoctactecod = pgo.cabpgoctactecod
                LEFT JOIN public.persona p ON gc.genctapercod = p.percod
                LEFT JOIN public.catastro cat ON (tt.tpotribcod = 1 AND cat.caocod = t.tbecod)
                LEFT JOIN public.defuncion def ON (tt.tpotribcod = 4 AND def.defcod = t.tbecod)
                WHERE ${searchType === 'person' ? 'gc.genctapercod = $1' : `t.tbecod IN (${placeholders})`}
                AND tt.tpotribcod = $${searchType === 'person' ? '2' : accountList.length + 1}
                ${onlyDebt === 'true' ? 'AND (cc.cabpgoctactecod IS NULL OR cc.cabpgoctactecod = 0)' : ''}
                ORDER BY gc.genctaancta DESC, gc.genctanrocta DESC, gcd.genctadetlin ASC
                LIMIT 4000
            `;
        } else {
            query = `
                SELECT 
                    cc.ctactecod, gc.genctaancta as "PeriCtct", gc.genctanrocta as "BimeCtct", 
                    cc.ctactefchalta, gc.genctafchvto as "FeveCtct",
                    gc.genctaimpcta as "DebeCtct",
                    cc.ctacteognmov, gc.genctacednro as "NumeApre",
                    cc.cabpgoctactecod as "NumeAcpa", pgo.cabpgoctactefchpgo as "FechaPago",
                    cc.plnpgocod, t.tbecod as "CuenCtct", tt.tpotribnom as "TipoTributo",
                    tt.tpotribcod as "officeId", p.percod as "PersonId",
                    TRIM(p.pernom) as "OwnerName", cat.caonra as "Nomenclatura",
                    def.defidpab as "Pabellon", def.defidnicho as "Nicho"
                FROM public.cuentacorriente cc
                INNER JOIN public.generacioncuota gc ON cc.genctacod = gc.genctacod
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                INNER JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod
                LEFT JOIN public.cabecerapagoctacte pgo ON cc.cabpgoctactecod = pgo.cabpgoctactecod
                LEFT JOIN public.persona p ON gc.genctapercod = p.percod
                LEFT JOIN public.catastro cat ON (tt.tpotribcod = 1 AND cat.caocod = t.tbecod)
                LEFT JOIN public.defuncion def ON (tt.tpotribcod = 4 AND def.defcod = t.tbecod)
                WHERE ${searchType === 'person' ? 'gc.genctapercod = $1' : `t.tbecod IN (${placeholders})`}
                AND tt.tpotribcod = $${searchType === 'person' ? '2' : accountList.length + 1}
                ${onlyDebt === 'true' ? 'AND (cc.cabpgoctactecod IS NULL OR cc.cabpgoctactecod = 0)' : ''}
                ORDER BY gc.genctaancta DESC, gc.genctanrocta DESC
                LIMIT 2000
            `;
        }

        const queryParams = searchType === 'person' ? [percod, officeId] : [...accountList, officeId];
        const result = await postgresDB.query(query, queryParams);
        const queryDate = toDate || new Date().toISOString().split('T')[0];

        const mappedResults = result.rows.map(row => {
            const debe = parseFloat(row.DebeCtct || 0);
            let reca = 0;

            const ognMov = parseInt(row.ctacteognmov || 0);
            const feve = row.FeveCtct;

            const detailName = (row.TipoTributo || '').toLowerCase();
            const isSurcharge = detailName.includes('recargo') || detailName.includes('interes');
            const isCapital = ognMov === 1 || (ognMov === 0 && !isSurcharge);

            if (isCapital && feve) {
                const dDate = new Date(feve);
                const qDate = new Date(queryDate);
                if (qDate > dDate) {
                    const diffTime = Math.abs(qDate - dDate);
                    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
                    const tasaDiaria = 0.001; // REVERTIDO PARA COINCIDIR CON RENTAS
                    reca = debe * tasaDiaria * diffDays;
                }
            }

            const isPaid = parseInt(row.NumeAcpa || 0) > 0;
            const haber = isPaid ? (debe + reca) : 0;

            return {
                ...row,
                PeriCtct: parseInt(row.PeriCtct),
                BimeCtct: parseInt(row.BimeCtct),
                DebeCtct: debe,
                RecaCtct: reca,
                CredCtct: haber,
                TotaCtct: isPaid ? 0 : (debe + reca),
                DetaCtct: (row.TipoTributo || '').trim() || `Mov: ${ognMov}`,
                hasApremio: parseInt(row.NumeApre || 0) > 0,
                hasPlan: parseInt(row.plnpgocod || 0) > 0,
            };
        });

        res.json(mappedResults);
    } catch (err) {
        console.error('Error in Postgres Fn search:', err);
        res.status(500).json({ error: err.message });
    }
});

// REPORT: GENERAL COMPARISON OF ALL PADRONES
router.get('/report/comparison', async (req, res) => {
    const { officeId, page = 1, limit = 20, search } = req.query;
    const offset = (parseInt(page) - 1) * parseInt(limit);
    let conn;

    try {
        conn = await mariaDB.getRemoteConnection();
        await conn.query("USE recaudacion2");

        const offId = parseInt(officeId);
        const pNum = parseInt(page);
        const lmt = parseInt(limit);

        // 1. Get a page of unique accounts for this office
        let accountsQuery;
        let queryParams;

        if (search && search.trim()) {
            const searchTerm = search.trim();
            console.log(`[COMPARISON REPORT] Index-safe search for: "${searchTerm}" in Office ${offId}`);
            
            // Generate padded variants to hit the index (CuenCtct is typically char(10) or similar)
            const variants = [];
            for (let i = 0; i <= 10; i++) {
                variants.push(searchTerm.padStart(i, ' '));
            }
            const uniqueVariants = [...new Set(variants)];
            const inPlaceholders = uniqueVariants.map(() => '?').join(',');

            accountsQuery = `
                SELECT CuenCtct 
                FROM ctacte 
                WHERE CodiOfic = ? 
                AND CuenCtct IN (${inPlaceholders})
                GROUP BY CuenCtct
                ORDER BY CuenCtct ASC
                LIMIT ?, ?
            `;
            queryParams = [offId, ...uniqueVariants, (pNum - 1) * lmt, lmt];
        } else {
            accountsQuery = `
                SELECT CuenCtct 
                FROM ctacte 
                WHERE CodiOfic = ? 
                GROUP BY CuenCtct
                ORDER BY CuenCtct ASC
                LIMIT ?, ?
            `;
            queryParams = [offId, (pNum - 1) * lmt, lmt];
        }
        
        const accountsResult = await conn.query(accountsQuery, queryParams);
        
        if (accountsResult.length === 0) return res.json({ data: [], total: 0 });

        // Ensure unique accounts after trimming (avoid duplicates from different padding variants)
        const accList = [...new Set(accountsResult.map(r => r.CuenCtct.toString().trim()))];
        const placeholders = accList.map(() => '?').join(',');

        // 2. Fetch Personal Info from vpadrones_persona (more reliable than master tables)
        const personLinkQuery = `
            SELECT nro_padron as CuenCtct, nro_doc as percod, denominacion as nombre, CUIT
            FROM vpadrones_persona
            WHERE nro_padron IN (${placeholders}) AND principal = 'SI'
        `;
        const personDataRes = await conn.query(personLinkQuery, accList);
        const personMap = personDataRes.reduce((acc, r) => { acc[r.CuenCtct] = r; return acc; }, {});

        // 3. Fetch MariaDB Debt Records in Bulk (Grouped by period/bimester to avoid double counting)
        const mariaDebtQuery = `
            SELECT CuenCtct, PeriCtct, BimeCtct, MAX(FeveCtct) as FeveCtct, SUM(IFNULL(DebeCtct, 0) - IFNULL(CredCtct, 0)) as Capital
            FROM ctacte
            WHERE CodiOfic = ? AND CuenCtct IN (${placeholders})
            GROUP BY CuenCtct, PeriCtct, BimeCtct, PeriInfo, CodiConc
            HAVING SUM(IFNULL(DebeCtct, 0) - IFNULL(CredCtct, 0)) > 0.01
        `;
        const mariaRecords = await conn.query(mariaDebtQuery, [officeId, ...accList]);
        
        // 4. Fetch PostgreSQL Debt Records in Bulk
        // We use ANY with text array for robustness
        const pgDebtQuery = `
            SELECT t.tbecod::text as "CuenCtct", gc.genctaancta as "PeriCtct", gc.genctafchvto as "FeveCtct", gc.genctaimpcta as "DebeCtct"
            FROM public.cuentacorriente cc
            INNER JOIN public.generacioncuota gc ON cc.genctacod = gc.genctacod
            INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
            WHERE t.tpotribcod = $1 AND t.tbecod::text = ANY($2)
            AND (cc.cabpgoctactecod IS NULL OR cc.cabpgoctactecod = 0)
        `;
        const pgResult = await postgresDB.query(pgDebtQuery, [officeId, accList]);
        const pgRecords = pgResult.rows;

        // 5. Calculate Summaries
        const today = new Date().toISOString().split('T')[0];
        const finalResults = accList.map(acc => {
            const pInfo = personMap[acc] || { percod: 'N/A', nombre: 'N/A', CUIT: 'N/A' };
            
            // MariaDB Calculation
            const mdItems = mariaRecords.filter(r => r.CuenCtct.toString().trim() === acc);
            let mdTotal = 0;
            let mdAnterior = 0;
            
            mdItems.forEach(r => {
                const capital = parseFloat(r.Capital || 0);
                if (capital <= 0.01) return;
                
                const reca = calculateLegacyInterest(r.FeveCtct, today, capital);
                const totalRow = capital + reca;
                
                mdTotal += totalRow;
                if (parseInt(r.PeriCtct) <= 2018) {
                    mdAnterior += totalRow;
                }
            });

            // Postgres Calculation
            const pgItems = pgRecords.filter(r => r.CuenCtct.toString().trim() === acc);
            let pgTotal = 0;
            let pgAnterior = 0;

            pgItems.forEach(r => {
                const capital = parseFloat(r.DebeCtct || 0);
                let reca = 0;
                if (r.FeveCtct) {
                    const dDate = new Date(r.FeveCtct);
                    const qDate = new Date(today);
                    if (qDate > dDate) {
                        const diffDays = Math.ceil(Math.abs(qDate - dDate) / (1000 * 60 * 60 * 24));
                        reca = capital * 0.001 * diffDays;
                    }
                }
                const totalRow = capital + reca;

                pgTotal += totalRow;
                if (parseInt(r.PeriCtct) <= 2018) {
                    pgAnterior += totalRow;
                }
            });

            return {
                cuenta: acc,
                officeId: officeId,
                percod: pInfo.percod,
                nombre: pInfo.nombre,
                cuit: pInfo.CUIT,
                maria: {
                    total: mdTotal,
                    anterior: mdAnterior,
                    saldo: mdTotal
                },
                postgres: {
                    total: pgTotal,
                    anterior: pgAnterior,
                    saldo: pgTotal
                },
                diff: Math.abs(mdTotal - pgTotal)
            };
        });

        // Get total count (DISABLED for performance: too slow on 50M records)
        // const totalCountRes = await conn.query("SELECT COUNT(DISTINCT CuenCtct) as total FROM ctacte WHERE CodiOfic = ?", [officeId]);
        
        res.json({
            data: finalResults,
            total: 1000, // Placeholder to allow some navigation
            page: parseInt(page),
            pageSize: parseInt(limit)
        });

    } catch (err) {
        console.error('Error in comparison report:', err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

// Helper for offices
router.get('/offices', async (req, res) => {
    let conn;
    try {
        conn = await mariaDB.getRemoteConnection();
        const results = await conn.query("SELECT CodiOfic as id, DetaOfic as name FROM recaudacion2.oficina ORDER BY id");
        res.json(results);
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

module.exports = router;
