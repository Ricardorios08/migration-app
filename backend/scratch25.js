const { Pool } = require('pg');
require('dotenv').config();

const pool = new Pool({
    host: process.env.PG_HOST,
    user: process.env.PG_USER,
    password: process.env.PG_PASS,
    database: process.env.PG_DATABASE,
    port: process.env.PG_PORT || 5432
});

async function checkTarifa() {
    try {
        const res = await pool.query(`
            SELECT column_name, data_type 
            FROM information_schema.columns 
            WHERE table_name = 'tarifa'
        `);
        console.log('Columns of tarifa:');
        res.rows.forEach(r => console.log(`${r.column_name}: ${r.data_type}`));
        
        const data = await pool.query('SELECT * FROM public.tarifa LIMIT 5');
        console.log('\nSample data:');
        console.table(data.rows);
    } catch (e) {
        console.error(e);
    } finally {
        await pool.end();
    }
}

checkTarifa();
