const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `SELECT COUNT(*) FROM public.persona`;
        const res = await postgresDB.query(query, []);
        console.log("persona count:", res.rows[0]);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
