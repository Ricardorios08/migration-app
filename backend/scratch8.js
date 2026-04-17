const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `SELECT genctacod FROM public.generacioncuota LIMIT 5`;
        const res = await postgresDB.query(query, []);
        console.table(res.rows);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
