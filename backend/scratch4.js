const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `
                SELECT * FROM public.generacioncuotadetalle LIMIT 5
            `;
        const res = await postgresDB.query(query, []);
        console.log(res.rows);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
