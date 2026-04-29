const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');

const DB_NAME = process.env.MARIA_DB_NAME || 'recaudacion2';
const postgresDB = require('../db/postgres');

// Get list of offices
router.get('/offices', async (req, res) => {
    try {
        const offices = await mariaDB.queryRemote('SELECT CodiOfic, DetaOfic FROM oficina ORDER BY CodiOfic');
        const result = [...offices, { CodiOfic: 99, DetaOfic: 'CUIL/CUIT' }];
        res.json(result);
    } catch (err) {
        console.error('Error fetching offices:', err);
        res.status(500).json({ error: err.message });
    }
});

// Search persons by name, CUIT, DNI, or percod
router.get('/search-person', async (req, res) => {
    const { q } = req.query;
    if (!q || q.length < 2) return res.json([]);

    try {
        const searchTerm = q.trim();
        let query;
        let params;

        // Detect search type
        const isNumeric = /^\d+$/.test(searchTerm);
        const isCuit = /^\d{2}-?\d{7,8}-?\d{1}$/.test(searchTerm);

        if (isCuit) {
            // Search by CUIT (with or without dashes)
            const clean = searchTerm.replace(/-/g, '');
            const tipo = parseInt(clean.substring(0, 2));
            const nro = parseInt(clean.substring(2, clean.length - 1));
            const dig = parseInt(clean.substring(clean.length - 1));

            query = `
                SELECT p.percod, TRIM(p.pernom) as pernom, 
                       p.percuiltipo, p.percuilnro, p.percuildigver,
                       CONCAT(p.percuiltipo, '-', p.percuilnro, '-', p.percuildigver) as cuit
                FROM public.persona p
                WHERE p.percuiltipo = $1 AND p.percuilnro = $2 AND p.percuildigver = $3
                LIMIT 20
            `;
            params = [tipo, nro, dig];
        } else if (isNumeric) {
            // Search by percod OR by DNI number (percuilnro)
            query = `
                SELECT p.percod, TRIM(p.pernom) as pernom,
                       p.percuiltipo, p.percuilnro, p.percuildigver,
                       CONCAT(p.percuiltipo, '-', p.percuilnro, '-', p.percuildigver) as cuit
                FROM public.persona p
                WHERE p.percod = $1 OR p.percuilnro = $1
                ORDER BY p.percod
                LIMIT 20
            `;
            params = [parseInt(searchTerm)];
        } else {
            // Search by name (partial, case insensitive)
            query = `
                SELECT p.percod, TRIM(p.pernom) as pernom,
                       p.percuiltipo, p.percuilnro, p.percuildigver,
                       CONCAT(p.percuiltipo, '-', p.percuilnro, '-', p.percuildigver) as cuit
                FROM public.persona p
                WHERE UPPER(p.pernom) LIKE UPPER($1)
                ORDER BY p.pernom
                LIMIT 20
            `;
            params = [`%${searchTerm}%`];
        }

        const result = await postgresDB.query(query, params);

        // For each person found, get their associated offices/accounts
        const enriched = await Promise.all(result.rows.map(async (person) => {
            const accQuery = `
                SELECT DISTINCT t.tbecod as account, tt.tpotribcod as "officeId", tt.tpotribnom as "officeName"
                FROM public.tribper tp
                JOIN public.tributo t ON tp.tribcod = t.tribcod
                JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod
                WHERE tp.percod = $1
                ORDER BY tt.tpotribcod
                LIMIT 20
            `;
            const accRes = await postgresDB.query(accQuery, [person.percod]);
            return {
                ...person,
                cuit: person.percuiltipo > 0 ? person.cuit : null,
                accounts: accRes.rows
            };
        }));

        res.json(enriched);
    } catch (err) {
        console.error('Error searching persons:', err);
        res.status(500).json({ error: err.message });
    }
});

// Resolve account: finds which offices an account exists in (MariaDB & Postgres)
router.get('/resolve-account/:account', async (req, res) => {
    const { account } = req.params;
    const { searchType } = req.query;
    let conn;
    try {
        const officesFound = new Set();

        if (searchType === 'person') {
            // Search in Postgres for all offices this person has (via movements or ownership)
            const pgQuery = `
                SELECT DISTINCT t.tpotribcod as "officeId"
                FROM public.generacioncuota gc
                JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                WHERE gc.genctapercod = $1
                UNION
                SELECT DISTINCT t.tpotribcod as "officeId"
                FROM public.tribper tp
                JOIN public.tributo t ON tp.tribcod = t.tribcod
                WHERE tp.percod = $1
            `;
            const pgRes = await require('../db/postgres').query(pgQuery, [account]);
            pgRes.rows.forEach(r => officesFound.add(r.officeId.toString()));
        } else {
            // HIGH PERFORMANCE RESOLUTION: Force MariaDB to use (CodiOfic, CuenCtct) index
            const variants = [];
            for (let i = 0; i <= 11; i++) {
                variants.push(account.padStart(i, ' '));
            }
            const uniqueVariants = [...new Set(variants)];
            const inPlaceholders = uniqueVariants.map(() => '?').join(',');

            // We test the most common offices (1-30) individually to hit the index
            const officesToTest = Array.from({length: 30}, (_, i) => i + 1);

            // 1. Search in REMOTE MariaDB (CtaCte)
            let remoteConn;
            try {
                remoteConn = await mariaDB.getRemoteConnection();
                for (const off of officesToTest) {
                    const res = await remoteConn.query(`
                        SELECT DISTINCT CodiOfic FROM ctacte 
                        WHERE CodiOfic = ? AND CuenCtct IN (${inPlaceholders}) 
                        LIMIT 1
                    `, [off, ...uniqueVariants]);
                    if (res.length > 0) {
                        officesFound.add(res[0].CodiOfic.toString());
                    }
                }
            } catch (e) {
                console.error('[RESOLVE] Remote MariaDB error:', e.message);
            } finally {
                if (remoteConn) remoteConn.release();
            }

            // 2. Search in LOCAL MariaDB (CtaCte)
            let localConn;
            try {
                localConn = await mariaDB.getConnection();
                for (const off of officesToTest) {
                    const res = await localConn.query(`
                        SELECT DISTINCT CodiOfic FROM ${DB_NAME}.ctacte 
                        WHERE CodiOfic = ? AND CuenCtct IN (${inPlaceholders}) 
                        LIMIT 1
                    `, [off, ...uniqueVariants]);
                    if (res.length > 0) {
                        officesFound.add(res[0].CodiOfic.toString());
                    }
                }
            } catch (e) {
                console.error('[RESOLVE] Local MariaDB error:', e.message);
            } finally {
                if (localConn) localConn.release();
            }

            // 3. Search in Postgres
            try {
                const pgRes = await require('../db/postgres').query(`
                    SELECT DISTINCT tt.tpotribcod as "officeId"
                    FROM public.tributo t
                    JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod
                    WHERE t.tbecod = ANY($1)
                `, [uniqueVariants]);
                pgRes.rows.forEach(r => {
                    officesFound.add(r.officeId.toString());
                });
            } catch (pErr) { }
        }

        if (officesFound.size === 0) {
            return res.json([]);
        }

        const ids = Array.from(officesFound);
        let officeNames = [];

        try {
            if (!conn) conn = await mariaDB.getRemoteConnection();
            officeNames = await conn.query(`
                SELECT CodiOfic as id, DetaOfic as name 
                FROM oficina 
                WHERE CodiOfic IN (${ids.map(() => '?').join(',')})
            `, ids);
        } catch (mErr) {
            console.error('Error getting office names from MariaDB:', mErr.message);
            // Fallback: return IDs with generic names since MariaDB is down
            officeNames = ids.map(id => ({
                id: parseInt(id),
                name: `Oficina ${id} (Nombre no disponible)`
            }));
        }

        res.json(officeNames);
    } catch (err) {
        console.error('Error seeking account in databases:', err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) try { conn.release(); } catch (e) { }
    }
});

// Search legacy (MariaDB) - Optimized with Stored Procedures and Temp Tables
router.get('/legacy/search', async (req, res) => {
    const { officeId, account, onlyDebt, toDate, type, fealCorte } = req.query;
    let conn;

    try {
        conn = await mariaDB.getRemoteConnection();
        await conn.query(`USE ${DB_NAME}`); // Ensure database is selected

        // Normalize account to an array
        const accList = Array.isArray(account) ? account : (account ? [account.toString().trim()] : []);
        const dateStr = toDate || new Date().toISOString().split('T')[0];

        if (onlyDebt === 'true') {
            const allResults = [];
            for (const acc of accList) {
                console.log(`[DEBUG MariaDB] Emulating fnDeuda(office: ${officeId}, account: ${acc}, date: ${dateStr})`);

                // Single SELECT query to calculate everything without temp tables
                const debtQuery = `
                    SELECT 
                        t.PeriCtct, t.BimeCtct, MAX(t.CuotDefa) as CuotDefa, MAX(t.FeveCtct) as FeveCtct, 
                        IFNULL(c.DetaConc, MAX(t.DetaCtct)) as DetaCtct, 
                        SUM(IFNULL(t.DebeCtct, 0)) - SUM(IFNULL(t.CredCtct, 0)) as DebeCtct, 
                        IF(MAX(t.FeveCtct) < ?, 
                           (SUM(IFNULL(t.DebeCtct, 0)) - SUM(IFNULL(t.CredCtct, 0))) * CEIL(DATEDIFF(?, MAX(t.FeveCtct)) / 30) * 0.03, 
                           0) as RecaCtct,
                        MAX(t.NumeAcpa) as NumeAcpa,
                        MAX(t.FeenAcpa) as FechaPago,
                        MAX(t.NumeBole) as NumeBole,
                        MAX(t.NumeApre) as NumeApre,
                        MAX(t.CodiFapa) as CodiFapa,
                        (MAX(t.NumeApre) > 0) as hasApremio,
                        (MAX(t.CodiFapa) > 0) as hasPlan
                    FROM ctacte t
                    LEFT JOIN concepto c ON c.PeriInfo = t.PeriInfo AND c.CodiConc = t.CodiConc
                    WHERE t.CodiOfic = ? AND t.CuenCtct = ?
                    GROUP BY t.PeriCtct, t.BimeCtct, t.PeriInfo, t.CodiConc
                    HAVING (SUM(IFNULL(t.DebeCtct, 0)) - SUM(IFNULL(t.CredCtct, 0))) > 0.01
                    ORDER BY t.PeriCtct DESC, t.BimeCtct ASC
                `;

                const results = await conn.query(debtQuery, [dateStr, dateStr, officeId, acc]);
                
                // Map results to add TotaCtct and ensure numeric types
                const formatted = results.map(r => ({
                    ...r,
                    DebeCtct: parseFloat(r.DebeCtct || 0),
                    RecaCtct: parseFloat(r.RecaCtct || 0),
                    TotaCtct: parseFloat(r.DebeCtct || 0) + parseFloat(r.RecaCtct || 0),
                    hasApremio: !!r.hasApremio,
                    hasPlan: !!r.hasPlan
                }));
                
                allResults.push(...formatted);
            }
            res.json(allResults);
        } else {
            // Unified Historical View using direct SELECT/UNION to avoid temp tables
            const accPlaceholders = accList.map(() => '?').join(',');
            const fealCorteFilter = fealCorte ? 'AND FealCtct <= ?' : '';
            const mainParams = [officeId, ...accList];
            if (fealCorte) mainParams.push(fealCorte);

            const histQuery = `
                SELECT 
                    tmp.PeriCtct, tmp.BimeCtct, tmp.CuotDefa, tmp.FeveCtct, 
                    IFNULL(c.DetaConc, tmp.DetaCtct) as DetaCtct, 
                    tmp.DebeCtct, tmp.CredCtct, 
                    0 as RecaCtct,
                    (tmp.DebeCtct - tmp.CredCtct) as TotaCtct,
                    tmp.NumeAcpa,
                    tmp.FechaPago,
                    tmp.NumeApre,
                    tmp.CodiFapa,
                    (tmp.NumeApre > 0) as hasApremio,
                    (tmp.CodiFapa > 0) as hasPlan,
                    tmp.PeriInfo, tmp.CodiConc
                FROM (
                    SELECT PeriCtct, BimeCtct, CuotDefa, FeveCtct, DetaCtct, DebeCtct, CredCtct, NumeApre, CodiFapa, PeriInfo, CodiConc, NumeAcpa, FeenAcpa as FechaPago
                    FROM ctacte
                    WHERE CodiOfic = ? AND CuenCtct IN (${accPlaceholders}) ${fealCorteFilter}
                    UNION ALL
                    SELECT PeriCtct, BimeCtct, CuotDefa, FeveCtct, DetaCtct, DebeCtct, CredCtct, NumeApre, CodiFapa, PeriInfo, CodiConc, NumeAcpa, FeenAcpa as FechaPago
                    FROM recahisto.histoctacte
                    WHERE CodiOfic = ? AND CuenCtct IN (${accPlaceholders}) ${fealCorteFilter}
                ) tmp
                LEFT JOIN concepto c ON c.PeriInfo = tmp.PeriInfo AND c.CodiConc = tmp.CodiConc
                ORDER BY tmp.PeriCtct DESC, tmp.BimeCtct ASC, tmp.FeveCtct ASC
                LIMIT 2000
            `;
            
            const results = await conn.query(histQuery, [...mainParams, ...mainParams]);

            const referenceDate = toDate ? new Date(toDate) : new Date();
            const mappedResults = results.map(row => {
                let reca = parseFloat(row.recaCtct || row.RecaCtct || 0);
                const isPaid = row.numeAcpa && row.numeAcpa > 0 || row.NumeAcpa && row.NumeAcpa > 0;
                const debe = parseFloat(row.debeCtct || row.DebeCtct || 0);

                // If not paid and has no recargo yet, calculate manually (3% monthly)
                if (!isPaid && reca === 0 && row.FeveCtct) {
                    const dueDate = new Date(row.FeveCtct);
                    if (referenceDate > dueDate) {
                        const diffTime = Math.abs(referenceDate - dueDate);
                        const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
                        reca = debe * Math.ceil(diffDays / 30) * 0.03;
                    }
                }

                const haber = parseFloat(row.credCtct || row.CredCtct || 0);

                return {
                    ...row,
                    DebeCtct: debe,
                    RecaCtct: reca,
                    TotaCtct: isPaid ? 0 : (debe + reca - haber),
                    hasApremio: parseInt(row.numeApre || row.NumeApre || 0) > 0,
                    hasPlan: parseInt(row.codiFapa || row.CodiFapa || 0) > 0
                };
            });

            res.json(mappedResults);
        }
    } catch (err) {
        console.error('Error in complex search (ctacte):', err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

// Search new (PostgreSQL)
router.get('/new/search', async (req, res) => {
    const { officeId, account, accounts, searchType, percod, toDate, onlyDebt, showQuotaDetail } = req.query;

    try {
        let accountList = accounts ? (Array.isArray(accounts) ? accounts : [accounts]) : (account ? [account] : []);
        let resolvedInfo = [];

        // Resolution Logic: If we search by person, find all tbecods and their associated offices (tpotribcod)
        if (searchType === 'person' && percod) {
            const resolutionQuery = `
                SELECT DISTINCT t.tbecod, t.tpotribcod as "officeId"
                FROM public.generacioncuota gc
                JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                WHERE gc.genctapercod = $1
            `;
            const resolutionRes = await require('../db/postgres').query(resolutionQuery, [percod]);
            resolvedInfo = resolutionRes.rows;
            accountList = resolvedInfo.map(r => r.tbecod);
        }

        if (accountList.length === 0) {
            return res.json([]);
        }

        const placeholders = accountList.map((_, i) => `$${i + 1}`).join(',');

        // Base query depends on showQuotaDetail
        let query;
        if (showQuotaDetail === 'true') {
            query = `
                SELECT 
                    cc.ctactecod, 
                    gc.genctaancta as "PeriCtct", 
                    gc.genctanrocta as "BimeCtct", 
                    cc.ctactefchalta,
                    gc.genctafchvto as "FeveCtct",
                    COALESCE(gcd.genctadetimp, gc.genctaimpcta) as "DebeCtct",
                    gc.genctaimpcta as "TotalQuota",
                    cc.ctacteintact as "RecaCtct_stored",
                    cc.ctacteognmov,
                    gc.genctacednro as "NumeApre",
                    cc.genctacod as "CodiOfic",
                    cc.cabpgoctactecod as "NumeAcpa",
                    pgo.cabpgoctactefchpgo as "FechaPago",
                    cc.plnpgocod,
                    t.tbecod as "CuenCtct",
                    t.tribcod as "TributoID",
                    tt.tpotribnom as "TipoTributo",
                    tt.tpotribcod as "officeId",
                    TRIM(p.pernom) as "OwnerName",
                    p.percod as "PersonId",
                    CONCAT(p.percuiltipo, '-', p.percuilnro, '-', p.percuildigver) as "CUIT",
                    gcd.genctadettipcta as "TipoCta",
                    gcd.genctadetlin as "DetailLine",
                    cat.caonra as "Nomenclatura",
                    def.defidpab as "Pabellon",
                    def.defidnicho as "Nicho"
                FROM public.generacioncuota gc
                LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetcod
                LEFT JOIN public.tarifa trf ON gcd.genctadettar = trf.trfcod
                LEFT JOIN public.cuentacorriente cc ON cc.genctacod = gc.genctacod
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                INNER JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod
                LEFT JOIN public.cabecerapagoctacte pgo ON cc.cabpgoctactecod = pgo.cabpgoctactecod
                LEFT JOIN public.persona p ON gc.genctapercod = p.percod
                LEFT JOIN public.actividad a ON p.percod = a.actpercod
                LEFT JOIN public.tipoactividad ta ON a.tpoactcod = ta.tpoactcod
                LEFT JOIN public.catastro cat ON (tt.tpotribcod = 1 AND cat.caocod = t.tbecod)
                LEFT JOIN public.defuncion def ON (tt.tpotribcod = 4 AND def.defcod = t.tbecod)
                WHERE ${searchType === 'person' ? 'gc.genctapercod = $1' : `t.tbecod IN (${placeholders})`}
                AND tt.tpotribcod = $${searchType === 'person' ? '2' : accountList.length + 1}
                ${onlyDebt === 'true' ? 'AND (cc.cabpgoctactecod IS NULL OR cc.cabpgoctactecod = 0)' : ''}
                ORDER BY gc.genctaancta DESC, gc.genctanrocta ASC, gcd.genctadetlin ASC
                LIMIT 4000
            `;
        } else {
            query = `
                SELECT 
                    cc.ctactecod, 
                    gc.genctaancta as "PeriCtct", 
                    gc.genctanrocta as "BimeCtct", 
                    cc.ctactefchalta,
                    gc.genctafchvto as "FeveCtct",
                    gc.genctaimpcta as "DebeCtct",
                    cc.ctacteintact as "RecaCtct_stored",
                    cc.ctacteognmov,
                    gc.genctacednro as "NumeApre",
                    cc.genctacod as "CodiOfic",
                    cc.cabpgoctactecod as "NumeAcpa",
                    pgo.cabpgoctactefchpgo as "FechaPago",
                    cc.plnpgocod,
                    t.tbecod as "CuenCtct",
                    t.tribcod as "TributoID",
                    tt.tpotribnom as "TipoTributo",
                    tt.tpotribcod as "officeId",
                    TRIM(p.pernom) as "OwnerName",
                    p.percod as "PersonId",
                    CONCAT(p.percuiltipo, '-', p.percuilnro, '-', p.percuildigver) as "CUIT",
                    ta.tpoactnom as "TipoActividad",
                    cat.caonra as "Nomenclatura",
                    def.defidpab as "Pabellon",
                    def.defidnicho as "Nicho"
                FROM public.cuentacorriente cc
                INNER JOIN public.generacioncuota gc ON cc.genctacod = gc.genctacod
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                INNER JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod
                LEFT JOIN public.cabecerapagoctacte pgo ON cc.cabpgoctactecod = pgo.cabpgoctactecod
                LEFT JOIN public.persona p ON gc.genctapercod = p.percod
                LEFT JOIN public.actividad a ON p.percod = a.actpercod
                LEFT JOIN public.tipoactividad ta ON a.tpoactcod = ta.tpoactcod
                LEFT JOIN public.catastro cat ON (tt.tpotribcod = 1 AND cat.caocod = t.tbecod)
                LEFT JOIN public.defuncion def ON (tt.tpotribcod = 4 AND def.defcod = t.tbecod)
                WHERE ${searchType === 'person' ? 'gc.genctapercod = $1' : `t.tbecod IN (${placeholders})`}
                AND tt.tpotribcod = $${searchType === 'person' ? '2' : accountList.length + 1}
                ${onlyDebt === 'true' ? 'AND (cc.cabpgoctactecod IS NULL OR cc.cabpgoctactecod = 0)' : ''}
                ORDER BY gc.genctaancta DESC, gc.genctanrocta ASC
                LIMIT 2000
            `;
        }

        const queryParams = searchType === 'person' ? [percod, officeId] : [...accountList, officeId];
        const result = await require('../db/postgres').query(query, queryParams);
        const referenceDate = toDate ? new Date(toDate) : new Date();

        // Map to a common format for the frontend
        const mappedResults = result.rows.map(row => {
            const debe = parseFloat(row.debectct || row.DebeCtct || 0);
            let reca = 0;

            const ognMov = parseInt(row.ctacteognmov || row.ctacteognmov || 0);
            const feve = row.fevectct || row.FeveCtct;

            // Interest calculation: 3% monthly for Capital (ognmov = 1 or 0 fallback)
            // EXCLUDING those that are already surcharges/interests (DetailName like 'Recargos' or 'Interes')
            const detailName = (row.DetailName || row.detailname || row.TipoTributo || row.tipotributo || '').toLowerCase();
            const isSurcharge = detailName.includes('recargo') || detailName.includes('interes');

            // For Cemetery (office 4), we found ognMov is 0 in migration
            const isCapital = ognMov === 1 || (ognMov === 0 && !isSurcharge);

            if (isCapital && feve) {
                const dueDate = new Date(feve);
                if (referenceDate > dueDate) {
                    const diffTime = Math.abs(referenceDate - dueDate);
                    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
                    // REVERTIDO A 0.001 PARA COINCIDIR CON CAPTURA DE RENTAS
                    const tasaDiaria = 0.001; 
                    reca = debe * tasaDiaria * diffDays;
                }
            } else {
                reca = parseFloat(row.recactct_stored || row.RecaCtct_stored || 0);
            }

            const isPaid = (row.numeacpa && row.numeacpa > 0) || (row.NumeAcpa && row.NumeAcpa > 0);
            const haber = isPaid ? (debe + reca) : 0;

            return {
                ...row,
                PeriCtct: parseInt(row.perictct || row.PeriCtct),
                BimeCtct: parseInt(row.bimectct || row.BimeCtct),
                DebeCtct: debe,
                RecaCtct: reca,
                CredCtct: haber,
                TotaCtct: isPaid ? 0 : (debe + reca),
                DetaCtct: (row.DetailName || row.DetailName || (row.tipotributo || row.TipoTributo || '')).trim() || `Mov: ${ognMov}`,
                hasApremio: parseInt(row.numeapre || row.NumeApre || 0) > 0,
                hasPlan: (row.plnpgocod || row.plnpgocod) && parseInt(row.plnpgocod || row.plnpgocod) > 0,
                owner: (row.OwnerName || row.ownername) ? `${(row.OwnerName || row.ownername).trim()} (${row.PersonId || row.personid})` : null
            };
        });

        res.json(mappedResults);
    } catch (err) {
        console.error('Error in Postgres search:', err);
        res.status(500).json({ error: err.message });
    }
});

/**
 * PDF Report Generation
 * Merges data from both databases and returns a PDF
 */
router.get('/report/pdf', async (req, res) => {
    const { officeId, account, toDate, onlyDebt, searchType } = req.query;
    const PDFDocument = require('pdfkit-table');

    try {
        // 1. Fetch Data (logic duplicated from search routes for simplicity here, but could be refactored)
        // We simulate a search to get the same results used in the UI

        // This is a simplified version of the search logic to get both datasets
        let postgresData = [];
        let legacyData = [];

        // Fetch Postgres
        const pgRes = await fetch(`http://localhost:${process.env.PORT || 3001}/api/ctacte/new/search?officeId=${officeId}&account=${account}&searchType=${searchType}&toDate=${toDate}&onlyDebt=${onlyDebt}&showQuotaDetail=true`);
        postgresData = await pgRes.json();

        // Fetch Legacy
        // (Simplified: we use the officeId from query or resolved from pg)
        const legacyUrl = `http://localhost:${process.env.PORT || 3001}/api/ctacte/legacy/search?officeId=${officeId}&account=${account}&type=optimized&onlyDebt=${onlyDebt}&toDate=${toDate}`;
        const lRes = await fetch(legacyUrl);
        legacyData = await lRes.json();

        // 2. Create PDF
        const doc = new PDFDocument({ margin: 30, size: 'A4' });

        // Stream to response
        res.setHeader('Content-Type', 'application/pdf');
        res.setHeader('Content-Disposition', `attachment; filename=informe_migracion_${account}.pdf`);
        doc.pipe(res);

        // Header
        doc.fontSize(16).text('INFORME DE AUDITORÍA DE MIGRACIÓN', { align: 'center' });
        doc.moveDown();
        doc.fontSize(10).text(`Fecha de Reporte: ${new Date().toLocaleString()}`);
        doc.text(`Cuenta: ${account} | Oficina ID: ${officeId}`);
        if (postgresData.length > 0) {
            doc.text(`Titular: ${postgresData[0].OwnerName || 'N/A'}`);
            doc.text(`CUIT: ${postgresData[0].CUIT || 'N/A'}`);
        }
        doc.moveDown();

        // TABLE 1: LEGACY (MariaDB)
        doc.fontSize(12).fillColor('#10b981').text('DATOS SISTEMA ORIGINAL (MARIADB)', { underline: true });
        doc.moveDown(0.5);
        const legacyTable = {
            title: "",
            subtitle: "",
            headers: ["Per/C", "Vencimiento", "Detalle", "Debe", "Reca", "Haber", "Total"],
            rows: legacyData.map(r => [
                `${r.PeriCtct || ''}/${r.BimeCtct || ''}`,
                r.FeveCtct ? new Date(r.FeveCtct).toLocaleDateString() : '-',
                (r.DetaCtct || '').substring(0, 25),
                `$${parseFloat(r.DebeCtct || 0).toFixed(2)}`,
                `$${parseFloat(r.RecaCtct || 0).toFixed(2)}`,
                `$${parseFloat(r.CredCtct || 0).toFixed(2)}`,
                `$${parseFloat(r.TotaCtct || 0).toFixed(2)}`
            ])
        };

        if (legacyData.length > 0) {
            await doc.table(legacyTable, {
                prepareHeader: () => doc.fontSize(8).fillColor('black').font('Helvetica-Bold'),
                prepareRow: (row, indexColumn, indexRow, rectRow, rectCell) => doc.fontSize(8).fillColor('black').font('Helvetica'),
            });
        } else {
            doc.fontSize(8).fillColor('black').text('No se encontraron datos en el sistema legacy.');
        }

        doc.moveDown();

        // TABLE 2: POSTGRES
        doc.fontSize(12).fillColor('#2563eb').text('DATOS SISTEMA NUEVO (POSTGRESQL)', { underline: true });
        doc.moveDown(0.5);

        const pgTable = {
            title: "",
            subtitle: "",
            headers: ["Per/C", "Vencimiento", "Concepto/Recurso", "Debe", "Reca", "Haber", "Total"],
            rows: postgresData.map(r => [
                `${r.PeriCtct || ''}/${r.BimeCtct || ''}`,
                r.FeveCtct ? new Date(r.FeveCtct).toLocaleDateString() : '-',
                `${r.DetailName || r.TipoTributo || ''}${r.RecursoCod ? ' (Rec: ' + r.RecursoCod + ')' : ''}${r.DetailRef ? ' Ref: ' + r.DetailRef : ''}`,
                `$${parseFloat(r.DebeCtct || 0).toFixed(2)}`,
                `$${parseFloat(r.RecaCtct || 0).toFixed(2)}`,
                `$${parseFloat(r.CredCtct || 0).toFixed(2)}`,
                `$${parseFloat(r.TotaCtct || 0).toFixed(2)}`
            ])
        };

        if (postgresData.length > 0) {
            await doc.table(pgTable, {
                prepareHeader: () => doc.fontSize(8).fillColor('black').font('Helvetica-Bold'),
                prepareRow: (row, indexColumn, indexRow, rectRow, rectCell) => doc.fontSize(8).fillColor('black').font('Helvetica'),
            });
        } else {
            doc.fontSize(8).fillColor('black').text('No se encontraron datos en el sistema Postgres.');
        }

        doc.end();

    } catch (err) {
        console.error('PDF Generation Error:', err);
        res.status(500).send('Error generating PDF: ' + err.message);
    }
});

module.exports = router;
