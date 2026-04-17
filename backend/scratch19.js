const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `SELECT percod, pernom FROM public.persona LIMIT 5`;
        const res = await postgresDB.query(query, []);
        console.table(res.rows);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
