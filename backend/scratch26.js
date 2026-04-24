const { Pool } = require('pg');
require('dotenv').config();

const pool = new Pool({
    host: process.env.PG_HOST,
    user: process.env.PG_USER,
    password: process.env.PG_PASS,
    database: process.env.PG_DATABASE,
    port: process.env.PG_PORT || 5432
});

async function findBomberos() {
    try {
        console.log('Searching for "Bomber" in tarifa...');
        const res = await pool.query("SELECT * FROM public.tarifa WHERE trfdsc ILIKE '%bomber%'");
        console.table(res.rows);
        
        console.log('\nSearching for "Bomber" in all tables descriptions...');
        // (Just a sample search in typical tables)
        const tables = ['tipotributo', 'tributo', 'concepto'];
        for (const t of tables) {
            try {
                const res = await pool.query(`SELECT * FROM public.${t} WHERE 1=1 AND (nom ILIKE '%bomber%' OR dsc ILIKE '%bomber%')`);
                console.log(`Matches in ${t}:`, res.rows.length);
            } catch(e) {}
        }
    } catch (e) {
        console.error(e);
    } finally {
        await pool.end();
    }
}

findBomberos();
