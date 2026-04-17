const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `
                SELECT 
                    cc.ctactecod, 
                    gc.genctaancta as "PeriCtct", 
                    gc.genctanrocta as "BimeCtct", 
                    gc.genctaimpcta as "TotalQuota"
                FROM public.generacioncuota gc
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                INNER JOIN public.cuentacorriente cc ON cc.genctacod = gc.genctacod
                WHERE t.tbecod = '120839' 
                ORDER BY gc.genctaancta DESC, gc.genctanrocta DESC
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
