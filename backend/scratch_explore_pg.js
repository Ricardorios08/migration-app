const { Pool } = require('pg');
const dotenv = require('dotenv');
dotenv.config();

const pool = new Pool({
    host: process.env.PG_HOST,
    user: process.env.PG_USER,
    password: process.env.PG_PASS,
    database: process.env.PG_DATABASE,
    port: process.env.PG_PORT
});

async function explore() {
    try {
        console.log("--- EXPLORANDO BOLPGO ---");
        const cab = await pool.query("SELECT * FROM public.bolpgocab LIMIT 1");
        console.log("CABECERA:", JSON.stringify(cab.rows[0], null, 2));

        const det = await pool.query("SELECT * FROM public.bolpgodet LIMIT 1");
        console.log("DETALLE:", JSON.stringify(det.rows[0], null, 2));

    } catch (err) {
        console.error("ERROR:", err);
    } finally {
        await pool.end();
        process.exit();
    }
}

explore();
