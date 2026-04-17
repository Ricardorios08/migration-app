const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `
                SELECT gc.genctacod, t.tbecod, gcd.genctadetcod, gcd.genctadetimp
                FROM public.generacioncuota gc
                INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
                LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetcod
                WHERE t.tbecod IN ('120839', '122750', '2', '3')
                LIMIT 10
            `;
        const res = await postgresDB.query(query, []);
        console.table(res.rows);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
