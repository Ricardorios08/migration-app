const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `
                SELECT gcd.genctadetcod, gc.genctacod 
                FROM public.generacioncuotadetalle gcd
                JOIN public.generacioncuota gc ON gcd.genctadetcod = gc.genctacod
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
