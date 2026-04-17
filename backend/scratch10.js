const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `
                SELECT genctadetcod, genctadetlin, genctadetid, genctadetimp 
                FROM public.generacioncuotadetalle 
                WHERE genctadetlin > 1
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
