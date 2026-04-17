const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `
                SELECT 
                    cc.ctactecod, 
                    gc.genctaancta as "PeriCtct", 
                    gc.genctanrocta as "BimeCtct", 
                    gcd.genctadetimp as "DebeCtct",
                    gc.genctaimpcta as "TotalQuota",
                    gcd.genctadetlin as "DetailLine"
                FROM public.generacioncuota gc
                LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetcod
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                INNER JOIN public.cuentacorriente cc ON cc.genctacod = gc.genctacod
                WHERE t.tbecod = '120839' 
                ORDER BY gc.genctaancta DESC, gc.genctanrocta DESC, gcd.genctadetlin ASC
                LIMIT 15
            `;
        const res = await postgresDB.query(query, []);
        console.table(res.rows);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
