const express = require('express');
const router = express.Router();
const mariaDB = require('../db/maria');

const DB_NAME = 'recaudacion2'; // Solo para ctacte
const DB_RECAUDACION = 'recaudacion2'; 
const postgresDB = require('../db/postgres');

const { calculateLegacyInterest } = require('../utils/interestUtils');

// MAIN SEARCH ROUTE
router.get('/legacy/search', async (req, res) => {
    const { officeId, account, onlyDebt, toDate, filterYear, filterMonth } = req.query;
    let conn;

    console.log(`\n--- [DEBUG] /legacy/search called ---`);
    console.log(`PARAMS: officeId=${officeId}, account=${account}, onlyDebt=${onlyDebt}, toDate=${toDate}`);

    try {
        conn = await mariaDB.getRemoteConnection();
        await conn.query(`USE ${DB_RECAUDACION}`);

        const accList = Array.isArray(account) ? account : (account ? [account.toString().trim()] : []);
        const queryDate = toDate || new Date().toISOString().split('T')[0];

        console.log(`accList:`, accList);

        // Dynamic Legacy Account Mapper (Smart Resolver for Office 3 & 5)
        const mappedAccList = [];
        const originalToMappedMap = {}; // Maps mapped account -> search key

        for (const acc of accList) {
            let mappedAcc = acc;
            console.log(`[RESOLVER DEBUG] Processing account: '${acc}'`);
            
            // If the query is for Deudores Varios (Office 3) or Ingresos Varios (Office 5)
            if ((officeId == '3' || officeId == '5') && /^\d+$/.test(acc)) {
                try {
                    console.log(`[RESOLVER DEBUG] Querying Postgres for percod = '${acc}'`);
                    // 1. Find if this is a valid Postgres percod
                    const pgRes = await postgresDB.query(
                        "SELECT percuiltipo, percuilnro, percuildigver FROM public.persona WHERE percod = $1",
                        [acc]
                    );
                    
                    console.log(`[RESOLVER DEBUG] Postgres matches:`, pgRes.rows.length);
                    
                    if (pgRes.rows.length > 0) {
                        const { percuiltipo, percuilnro, percuildigver } = pgRes.rows[0];
                        const fullCuit = `${percuiltipo}${percuilnro}${percuildigver}`;
                        console.log(`[RESOLVER DEBUG] CUIT found in Postgres: '${fullCuit}'`);
                        
                        // 2. Find corresponding legacy citizen CucuPers in infogov
                        const mariaPers = await conn.query(
                            "SELECT CucuPers FROM infogov.persona WHERE CucuPers = ? OR CuitPers = ?",
                            [fullCuit, fullCuit]
                        );
                        
                        console.log(`[RESOLVER DEBUG] MariaDB person matches in infogov:`, mariaPers.length);
                        
                        if (mariaPers.length > 0) {
                            const cucuPers = mariaPers[0].CucuPers;
                            console.log(`[RESOLVER DEBUG] CucuPers found: '${cucuPers}'`);
                            
                            // 3. Find CuenCtct in relacion for this office and citizen
                            const relRes = await conn.query(
                                "SELECT CuenCtct FROM relacion WHERE CodiOfic = ? AND CucuPers = ?",
                                [officeId, cucuPers]
                            );
                            
                            console.log(`[RESOLVER DEBUG] relacion table matches for office ${officeId}:`, relRes.length);
                            
                            if (relRes.length > 0) {
                                mappedAcc = relRes[0].CuenCtct.toString().trim();
                                console.log(`[SMART RESOLVER SUCCESS] Mapped search account '${acc}' to legacy account '${mappedAcc}'`);
                            }
                        }
                    }
                } catch (err) {
                    console.error("[SMART RESOLVER ERROR]:", err);
                }
            }
            
            mappedAccList.push(mappedAcc);
            originalToMappedMap[mappedAcc] = acc;
        }

        // Lookup account name based on office using mapped accounts
        let accountNameMap = {};
        for (const acc of mappedAccList) {
            let nameQuery = "";
            let nameParams = [acc];
            
            if (officeId == '7' || officeId == '13') { // Antenas (7 in remote, 13 in local/old)
                nameQuery = "SELECT RazoCome as name FROM antena WHERE CodiCome = ?";
            } else if (officeId == '2') { // Comercio
                nameQuery = "SELECT RazoCome as name FROM comercio WHERE CodiCome = ?";
            } else if (officeId == '6' || officeId == '3') { // Publicidad (6 in remote, 3 in local/old)
                nameQuery = "SELECT RazoCome as name FROM publicidad WHERE CodiCome = ?";
            } else if (officeId == '4') { // Cementerio
                nameQuery = "SELECT RazoCome as name FROM cementerio WHERE CodiCome = ?";
            }

            if (nameQuery) {
                try {
                    const nameRes = await conn.query(nameQuery, nameParams);
                    if (nameRes.length > 0) accountNameMap[acc] = nameRes[0].name;
                } catch (e) { console.error("Error fetching account name:", e); }
            }
        }

        let allResults = [];

        for (const acc of mappedAccList) {
            let whereClause = "WHERE t.CodiOfic = ? AND t.CuenCtct = ?";
            let params = [officeId, acc];

            if (filterYear) {
                whereClause += " AND t.PeriCtct = ?";
                params.push(filterYear);
            }
            if (filterMonth) {
                whereClause += " AND t.BimeCtct = ?";
                params.push(filterMonth);
            }

            // 1. Get main debt from ctacte
            const isOnlyDebt = onlyDebt === 'true';
            const mainDebtQuery = `
                SELECT 
                    t.PeriCtct, t.BimeCtct, MAX(t.CuotDefa) as CuotDefa, MAX(t.FeveCtct) as FeveCtct, 
                    IFNULL(c.DetaConc, MAX(t.DetaCtct)) as DetaCtct, 
                    SUM(IFNULL(t.DebeCtct, 0)) as DebeCtct, 
                    SUM(IFNULL(t.CredCtct, 0)) as CredCtct,
                    MAX(t.NumeAcpa) as NumeAcpa, MAX(t.FeenAcpa) as FechaPago,
                    MAX(t.NumeBole) as NumeBole, MAX(t.PeriBole) as PeriBole, MAX(t.NumeApre) as NumeApre, MAX(t.CodiFapa) as CodiFapa,
                    MAX(t.PeriInfo) as PeriInfo, MAX(t.CodiConc) as CodiConc,
                    'CTACTE' as Source,
                    t.CuenCtct as CuenCtct
                FROM ${DB_NAME}.ctacte t
                LEFT JOIN ${DB_RECAUDACION}.concepto c ON c.PeriInfo = t.PeriInfo AND c.CodiConc = t.CodiConc
                ${whereClause}
                GROUP BY t.PeriCtct, t.BimeCtct, t.PeriInfo, t.CodiConc, t.CuenCtct
                ${isOnlyDebt ? 'HAVING (SUM(IFNULL(t.DebeCtct, 0)) - SUM(IFNULL(t.CredCtct, 0))) > 0.01' : ''}
            `;

            const mainResults = await conn.query(mainDebtQuery, params);

            // 2. Get payment plan installments (facipago/detafapa)
            let planWhereClause = `WHERE f.CodiOfic = ? AND f.CuenCtct = ? AND f.EstaFapa = 'Activa' ${isOnlyDebt ? 'AND d.FepaDefa IS NULL' : ''}`;
            let planParams = [officeId, acc];

            if (filterYear) {
                planWhereClause += " AND f.PeriInfo = ?";
                planParams.push(filterYear);
            }
            if (filterMonth) {
                planWhereClause += " AND d.CuotDefa = ?";
                planParams.push(filterMonth);
            }

            const planDebtQuery = `
                SELECT 
                    f.PeriInfo as PeriCtct, d.CuotDefa as BimeCtct, d.CuotDefa, d.FeveDefa as FeveCtct,
                    CONCAT('Plan ', f.CodiFapa, ' - Cuota ', d.CuotDefa) as DetaCtct,
                    d.TotaDefa as DebeCtct,
                    IF(d.FepaDefa IS NOT NULL, d.TotaDefa, 0) as CredCtct,
                    0 as NumeAcpa, d.FepaDefa as FechaPago,
                    0 as NumeBole, 0 as NumeApre, f.CodiFapa,
                    f.PeriInfo, d.CodiFapa as CodiConc,
                    'PLAN' as Source,
                    f.CuenCtct as CuenCtct
                FROM facipago f
                INNER JOIN detafapa d ON d.CodiFapa = f.CodiFapa
                ${planWhereClause}
            `;
            const planResults = await conn.query(planDebtQuery, planParams);

            const combined = [...mainResults, ...planResults];

            // 3. Apply Interest Logic and Format
            const finalResults = combined.map(row => {
                const debe = parseFloat(row.DebeCtct || 0);
                const haber = parseFloat(row.CredCtct || 0);
                const capital = Math.max(0, debe - haber);

                let reca = 0;
                if (capital > 0.01) {
                    reca = calculateLegacyInterest(row.FeveCtct, queryDate, capital);
                }

                // Restore original searched account code for parity alignment
                const originalSearchAcc = originalToMappedMap[row.CuenCtct.toString().trim()] || row.CuenCtct;

                return {
                    ...row,
                    DebeCtct: debe,
                    RecaCtct: reca,
                    CredCtct: haber,
                    TotaCtct: Math.max(0, (debe + reca) - haber),
                    hasApremio: parseInt(row.NumeApre || 0) > 0,
                    hasPlan: parseInt(row.CodiFapa || 0) > 0,
                    AccountName: accountNameMap[acc] || null,
                    CuenCtct: originalSearchAcc
                };
            });

            allResults.push(...finalResults);
        }

        // Sort by period descending
        allResults.sort((a, b) => {
            if (parseInt(b.PeriCtct) !== parseInt(a.PeriCtct)) return parseInt(b.PeriCtct) - parseInt(a.PeriCtct);
            return parseInt(a.BimeCtct) - parseInt(b.BimeCtct);
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
    const { officeId, account, accounts, searchType, percod, toDate, onlyDebt, showQuotaDetail, filterYear, filterMonth } = req.query;

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
                    COALESCE(rt.rectrfdsc, tt.tpotribnom) as "DetaCtct",
                    tt.tpotribcod as "officeId", p.percod as "PersonId",
                    TRIM(p.pernom) as "OwnerName", cat.caonra as "Nomenclatura",
                    def.defidpab as "Pabellon", def.defidnicho as "Nicho"
                FROM public.generacioncuota gc
                LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetcod
                LEFT JOIN public.recursostarifa rt ON rt.rectrfcod = gcd.genctadetreccod
                LEFT JOIN public.cuentacorriente cc ON cc.genctacod = gc.genctacod
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                INNER JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod
                LEFT JOIN public.cabecerapagoctacte pgo ON cc.cabpgoctactecod = pgo.cabpgoctactecod
                LEFT JOIN public.persona p ON gc.genctapercod = p.percod
                LEFT JOIN public.catastro cat ON (tt.tpotribcod = 1 AND cat.caocod = t.tbecod)
                LEFT JOIN public.defuncion def ON (tt.tpotribcod = 4 AND def.defcod = t.tbecod)
                WHERE ${searchType === 'person' ? 'gc.genctapercod = $1' : `t.tbecod IN (${placeholders})`}
                AND tt.tpotribcod = \$${searchType === 'person' ? '2' : accountList.length + 1}
                ${onlyDebt === 'true' ? 'AND (cc.cabpgoctactecod IS NULL OR cc.cabpgoctactecod = 0)' : ''}
                ${filterYear ? `AND gc.genctaancta = ${parseInt(filterYear)}` : ''}
                ${filterMonth ? `AND gc.genctanrocta = ${parseInt(filterMonth)}` : ''}
                ORDER BY gc.genctaancta DESC, gc.genctanrocta ASC, gcd.genctadetlin ASC
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
                AND tt.tpotribcod = \$${searchType === 'person' ? '2' : accountList.length + 1}
                ${onlyDebt === 'true' ? 'AND (cc.cabpgoctactecod IS NULL OR cc.cabpgoctactecod = 0)' : ''}
                ${filterYear ? `AND gc.genctaancta = ${parseInt(filterYear)}` : ''}
                ${filterMonth ? `AND gc.genctanrocta = ${parseInt(filterMonth)}` : ''}
                ORDER BY gc.genctaancta DESC, gc.genctanrocta ASC
                LIMIT 2000
            `;
        }

        const queryParams = searchType === 'person' ? [percod, officeId] : [...accountList, officeId];
        const result = await postgresDB.query(query, queryParams);

        console.log(`[POSTGRES DEBUG] Query for ${accountList.join(',')} returned ${result.rows.length} rows. showQuotaDetail: ${showQuotaDetail}`);

        const queryDate = toDate || new Date().toISOString().split('T')[0];

        const mappedResults = result.rows.map(row => {
            const debe = parseFloat(row.DebeCtct || 0);
            let reca = 0;

            const ognMov = parseInt(row.ctacteognmov || 0);
            const feve = row.FeveCtct;

            const detailName = (row.TipoTributo || '').toLowerCase();
            const isSurcharge = detailName.includes('recargo') || detailName.includes('interes');
            const isCapital = ognMov === 1 || (ognMov === 0 && !isSurcharge);

            const isPaid = parseInt(row.NumeAcpa || 0) > 0 || parseFloat(row.CredCtct || 0) > 0.01;
            if (isCapital && feve && !isPaid) {
                const calculationEndDate = queryDate;
                reca = calculateLegacyInterest(feve, calculationEndDate, debe);
                
                if (debe > 60000 && debe < 70000) {
                    console.log(`[DEBUG INTEREST] Capital: ${debe}, Venc: ${feve}, Fin: ${calculationEndDate}, Reca: ${reca}, isPaid: ${isPaid}`);
                }
            } else if (isPaid) {
                reca = 0;
            }

            const haber = isPaid ? parseFloat(row.CredCtct || row.Pagado || debe) : 0;

            return {
                ...row,
                PeriCtct: parseInt(row.PeriCtct),
                BimeCtct: parseInt(row.BimeCtct),
                DebeCtct: debe,
                RecaCtct: reca,
                CredCtct: haber,
                TotaCtct: isPaid ? 0 : (debe + reca),
                TipoTributo: (row.TipoTributo || '').trim(),
                DetaCtct: (row.DetaCtct || '').trim() || `Mov: ${ognMov}`,
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
        await conn.query(`USE ${DB_RECAUDACION}`);

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
                FROM ${DB_NAME}.ctacte 
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
                FROM ${DB_NAME}.ctacte 
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
            FROM ${DB_RECAUDACION}.vpadrones_persona
            WHERE nro_padron IN (${placeholders}) AND principal = 'SI'
        `;
        const personDataRes = await conn.query(personLinkQuery, accList);
        const personMap = personDataRes.reduce((acc, r) => { acc[r.CuenCtct] = r; return acc; }, {});

        // 3. Fetch MariaDB Records in Bulk (Grouped by period/bimester)
        const mariaDebtQuery = `
            SELECT CuenCtct, PeriCtct, BimeCtct, MAX(FeveCtct) as FeveCtct, 
                   SUM(IFNULL(DebeCtct, 0) - IFNULL(CredCtct, 0)) as Capital,
                   SUM(IFNULL(CredCtct, 0)) as Pagado
            FROM ${DB_NAME}.ctacte
            WHERE CodiOfic = ? AND CuenCtct IN (${placeholders})
            GROUP BY CuenCtct, PeriCtct, BimeCtct, PeriInfo, CodiConc
        `;
        const mariaRecords = await conn.query(mariaDebtQuery, [officeId, ...accList]);

        // 3b. Fetch MariaDB Plan Records in Bulk
        const mariaPlanQuery = `
            SELECT f.CuenCtct, f.PeriInfo as PeriCtct, d.CuotDefa as BimeCtct, MAX(d.FeveDefa) as FeveCtct, 
                   SUM(d.TotaDefa) as Capital,
                   SUM(CASE WHEN d.FepaDefa IS NOT NULL THEN d.TotaDefa ELSE 0 END) as Pagado
            FROM ${DB_RECAUDACION}.facipago f
            INNER JOIN ${DB_RECAUDACION}.detafapa d ON d.CodiFapa = f.CodiFapa
            WHERE f.CodiOfic = ? AND f.CuenCtct IN (${placeholders})
            AND f.EstaFapa = 'Activa'
            GROUP BY f.CuenCtct, f.PeriInfo, d.CuotDefa
        `;
        const mariaPlans = await conn.query(mariaPlanQuery, [officeId, ...accList]);

        // 4. Fetch PostgreSQL Records in Bulk
        const pgDebtQuery = `
            SELECT t.tbecod::text as "CuenCtct", gc.genctaancta as "PeriCtct", gc.genctafchvto as "FeveCtct", gc.genctaimpcta as "DebeCtct",
                   (CASE WHEN (cc.cabpgoctactecod > 0) THEN gc.genctaimpcta ELSE 0 END) as "Pagado"
            FROM public.cuentacorriente cc
            INNER JOIN public.generacioncuota gc ON cc.genctacod = gc.genctacod
            INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
            WHERE t.tpotribcod = $1 AND t.tbecod::text = ANY($2)
        `;
        const pgResult = await postgresDB.query(pgDebtQuery, [officeId, accList]);
        const pgRecords = pgResult.rows;

        // 4b. Fetch Detailed Account Names (Trade name, etc.)
        let accountNameMap = {};
        if (accList.length > 0) {
            let nameQuery = "";
            if (offId === 7 || offId === 13) { // Antenas
                nameQuery = `SELECT CodiCome as acc, RazoCome as name FROM antena WHERE CodiCome IN (${placeholders})`;
            } else if (offId === 2) { // Comercio
                nameQuery = `SELECT CodiCome as acc, RazoCome as name FROM comercio WHERE CodiCome IN (${placeholders})`;
            } else if (offId === 6 || offId === 3) { // Publicidad
                nameQuery = `SELECT CodiCome as acc, RazoCome as name FROM publicidad WHERE CodiCome IN (${placeholders})`;
            } else if (offId === 4) { // Cementerio
                nameQuery = `SELECT CodiCome as acc, RazoCome as name FROM cementerio WHERE CodiCome IN (${placeholders})`;
            }

            if (nameQuery) {
                try {
                    const nameResults = await conn.query(nameQuery, accList);
                    nameResults.forEach(r => { accountNameMap[r.acc.toString().trim()] = r.name; });
                } catch (e) { console.error("Error in bulk name lookup:", e); }
            }
        }

        // 5. Calculate Summaries
        const today = new Date().toISOString().split('T')[0];
        const finalResults = accList.map(acc => {
            const pInfo = personMap[acc] || { percod: 'N/A', nombre: 'N/A', CUIT: 'N/A' };

            // MariaDB Calculation
            const mdItems = mariaRecords.filter(r => r.CuenCtct.toString().trim() === acc);
            const plItems = mariaPlans.filter(r => r.CuenCtct.toString().trim() === acc);
            const allMdItems = [...mdItems, ...plItems];

            let mdPendiente = 0;
            let mdPagado = 0;
            let mdAnterior = 0;

            allMdItems.forEach(r => {
                const capitalPendiente = parseFloat(r.Capital || 0);
                const pagado = parseFloat(r.Pagado || 0);
                
                mdPagado += pagado;

                if (capitalPendiente > 0.01) {
                    // Solo calculamos interés si NO está pagado (capitalPendiente > 0)
                    const reca = calculateLegacyInterest(r.FeveCtct, today, capitalPendiente);
                    const totalRow = capitalPendiente + reca;
                    mdPendiente += totalRow;
                    if (parseInt(r.PeriCtct) <= 2018) {
                        mdAnterior += totalRow;
                    }
                }
            });

            // Postgres Calculation
            const pgItems = pgRecords.filter(r => r.CuenCtct.toString().trim() === acc);
            let pgPendiente = 0;
            let pgPagado = 0;
            let pgAnterior = 0;

            pgItems.forEach(r => {
                const capital = parseFloat(r.DebeCtct || 0);
                const pagado = parseFloat(r.Pagado || 0);
                
                pgPagado += pagado;

                // Si NO hay pago, calculamos deuda con interés dinámico
                if (pagado < 0.01 && capital > 0.01) {
                    let reca = 0;
                    if (r.FeveCtct) {
                        reca = calculateLegacyInterest(r.FeveCtct, today, capital);
                    }
                    const totalRow = capital + reca;
                    pgPendiente += totalRow;
                    if (parseInt(r.PeriCtct) <= 2018) {
                        pgAnterior += totalRow;
                    }
                }
            });

            return {
                cuenta: acc,
                accountName: accountNameMap[acc] || null,
                officeId: officeId,
                percod: pInfo.percod,
                nombre: pInfo.nombre,
                cuit: pInfo.CUIT,
                maria: {
                    total: mdPendiente,
                    pagado: mdPagado,
                    anterior: mdAnterior,
                    saldo: mdPendiente
                },
                postgres: {
                    total: pgPendiente,
                    pagado: pgPagado,
                    anterior: pgAnterior,
                    saldo: pgPendiente
                },
                diffDeuda: Math.abs(mdPendiente - pgPendiente),
                diffPagado: Math.abs(mdPagado - pgPagado),
                diffTotal: Math.abs((mdPendiente + mdPagado) - (pgPendiente + pgPagado))
            };
        });

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
        const results = await conn.query(`SELECT CodiOfic as id, DetaOfic as name FROM ${DB_RECAUDACION}.oficina ORDER BY id`);
        res.json(results);
    } catch (err) {
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

// NEW: Fetch ticket history for a specific period/account to debug re-emissions
router.get('/tickets/:officeId/:account/:period/:bime', async (req, res) => {
    const { officeId, account, period, bime } = req.params;
    let conn;
    try {
        conn = await mariaDB.getRemoteConnection();
        
        // 1. First, find all ticket numbers AND their years associated with this exact debt in ctacte
        const ticketNumbersQuery = `
            SELECT DISTINCT NumeBole, PeriBole 
            FROM ${DB_NAME}.ctacte 
            WHERE CuenCtct = ? AND CodiOfic = ? AND PeriCtct = ? AND BimeCtct = ?
            AND NumeBole > 0
        `;
        const ticketRows = await conn.query(ticketNumbersQuery, [account, officeId, period, bime]);
        
        if (ticketRows.length === 0) {
            // Fallback: If no tickets in ctacte, try to find tickets emitted for this period directly
            const fallbackQuery = `
                SELECT b.*, b.CodiUsua as UserName
                FROM ${DB_RECAUDACION}.boleto b
                WHERE b.CodiOfic = ? AND b.CuenCtct = ? 
                AND b.PeriBole = ? AND b.NumeLiqu = ?
                ORDER BY b.AltaFeho ASC
            `;
            const fallbackResults = await conn.query(fallbackQuery, [officeId, account, period, bime]);
            return res.json(fallbackResults);
        }

        // Create a condition for pairs (NumeBole, PeriBole) to avoid bringing tickets from other years
        const conditions = ticketRows.map(r => `(b.NumeBole = ${r.NumeBole} AND b.PeriBole = ${r.PeriBole})`).join(' OR ');

        // 2. Fetch details for all those tickets, ensuring they belong to this account/office
        const detailsQuery = `
            SELECT b.*, b.CodiUsua as UserName
            FROM ${DB_RECAUDACION}.boleto b
            WHERE b.CodiOfic = ? AND b.CuenCtct = ?
            AND (${conditions})
            ORDER BY b.AltaFeho ASC
        `;
        const results = await conn.query(detailsQuery, [officeId, account]);
        res.json(results);
    } catch (err) {
        console.error("Error in /tickets:", err);
        res.status(500).json({ error: err.message });
    } finally {
        if (conn) conn.release();
    }
});

router.get('/pg-tickets/:account/:period/:bime', async (req, res) => {
    const { account, period, bime } = req.params;
    const postgresDB = require('../db/postgres');
    try {
        const query = `
            SELECT 
                cc.ctactecod, 
                gc.genctaancta as "PeriCtct", 
                gc.genctanrocta as "BimeCtct", 
                gc.genctaimpcta as "Importe",
                cc.cabpgoctactecod as "PagoId",
                cc.ctactefchalta as "Fecha",
                gc.genctacednro as "BoletoOriginal",
                bc.bolpgocod as "BoletoPago",
                bc.bolpgofecemi as "FechaEmisionBoleto",
                bc.bolpgoestado as "EstadoBoleto",
                p.pernom as "OwnerName",
                rt.rectrfdsc as "ConceptoNombre"
            FROM public.cuentacorriente cc
            INNER JOIN public.generacioncuota gc ON cc.genctacod = gc.genctacod
            INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
            LEFT JOIN public.persona p ON gc.genctapercod = p.percod
            LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetcod
            LEFT JOIN public.recursostarifa rt ON rt.rectrfcod = gcd.genctadetreccod
            LEFT JOIN public.bolpgodet bd ON cc.ctactecod = bd.boldetctactecod
            LEFT JOIN public.bolpgocab bc ON (bd.bolpgocod = bc.bolpgocod AND bd.bolpgoeje = bc.bolpgoeje)
            WHERE t.tbecod = $1 
            AND gc.genctaancta = $2 
            AND gc.genctanrocta = $3
            ORDER BY cc.ctactefchalta ASC, bc.bolpgofecemi DESC
        `;
        const result = await postgresDB.query(query, [account, period, bime]);
        res.json(result.rows);
    } catch (err) {
        console.error("Error in /pg-tickets:", err);
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;
