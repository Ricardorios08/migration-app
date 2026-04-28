const { Pool } = require('pg');
require('dotenv').config();

const pool = new Pool({
    host: process.env.PG_HOST,
    user: process.env.PG_USER,
    password: process.env.PG_PASS,
    database: process.env.PG_DATABASE,
    port: process.env.PG_PORT || 5432
});

async function checkPostgresSchema() {
    try {
        const res = await pool.query(`
            SELECT column_name, data_type 
            FROM information_schema.columns 
            WHERE table_name = 'generacioncuotadetalle'
            ORDER BY ordinal_position
        `);
        console.log('Columns of generacioncuotadetalle:');
        res.rows.forEach(r => console.log(`${r.column_name}: ${r.data_type}`));
        
        const data = await pool.query('SELECT * FROM public.generacioncuotadetalle LIMIT 1');
        console.log('\nSample data:');
        console.log(data.rows[0]);
    } catch (e) {
        console.error(e);
    } finally {
        await pool.end();
    }
}

checkPostgresSchema();
