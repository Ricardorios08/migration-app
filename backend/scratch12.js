const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `
                SELECT 
                    cc.ctactecod, 
                    gc.genctaancta as "PeriCtct", 
                    gc.genctanrocta as "BimeCtct", 
                    cc.ctactefchalta,
                    gc.genctafchvto as "FeveCtct",
                    gcd.genctadetimp as "DebeCtct",
                    gc.genctaimpcta as "TotalQuota",
                    cc.ctacteintact as "RecaCtct_stored",
                    cc.ctacteognmov,
                    cc.ctacteapr as "NumeApre",
                    cc.genctacod as "CodiOfic",
                    cc.cabpgoctactecod as "NumeAcpa",
                    pgo.cabpgoctactefchpgo as "FechaPago",
                    cc.plnpgocod,
                    t.tbecod as "CuenCtct",
                    gcd.genctadettipcta as "TipoCta",
                    gcd.genctadetlin as "DetailLine"
                FROM public.generacioncuota gc
                LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetcod
                LEFT JOIN public.tarifa trf ON gcd.genctadettar = trf.trfcod
                LEFT JOIN public.cuentacorriente cc ON cc.genctacod = gc.genctacod
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                LEFT JOIN public.cabecerapagoctacte pgo ON cc.cabpgoctactecod = pgo.cabpgoctactecod
                WHERE t.tbecod = '122750'
                LIMIT 5
            `;
        const res = await postgresDB.query(query, []);
        console.log("first row with detail:", res.rows[0]);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
