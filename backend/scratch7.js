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
                LIMIT 5
            `;
        const res = await postgresDB.query(query, []);
        console.table(res.rows);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
