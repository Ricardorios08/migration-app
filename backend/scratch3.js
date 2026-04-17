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
                    t.tribcod as "TributoID",
                    tt.tpotribnom as "TipoTributo",
                    tt.tpotribcod as "officeId",
                    TRIM(p.pernom) as "OwnerName",
                    p.percod as "PersonId",
                    CONCAT(p.percuiltipo, '-', p.percuilnro, '-', p.percuildigver) as "CUIT",
                    gcd.genctadettipcta as "TipoCta",
                    gcd.genctadetlin as "DetailLine"
                FROM public.generacioncuota gc
                LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetcod
                LEFT JOIN public.tarifa trf ON gcd.genctadettar = trf.trfcod
                LEFT JOIN public.cuentacorriente cc ON cc.genctacod = gc.genctacod
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                INNER JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod
                LEFT JOIN public.cabecerapagoctacte pgo ON cc.cabpgoctactecod = pgo.cabpgoctactecod
                LEFT JOIN public.persona p ON gc.genctapercod = p.percod
                WHERE t.tbecod IN ('120839', '122750', '2', '3')
                ORDER BY gc.genctaancta DESC, gc.genctanrocta DESC, gcd.genctadetlin ASC
                LIMIT 10
            `;
        const res = await postgresDB.query(query, []);
        console.table(res.rows.map(r => ({
            Peri: r.PeriCtct,
            Bime: r.BimeCtct,
            DebeCtct: r.DebeCtct,
            Total: r.TotalQuota,
            DetailLine: r.DetailLine
        })));
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
