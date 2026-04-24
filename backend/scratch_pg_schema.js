const postgresDB = require('./db/postgres');

async function checkPgStructure() {
    try {
        const tables = ['generacioncuota', 'cuentacorriente', 'tributo', 'tipotributo', 'persona'];
        for (const table of tables) {
            const res = await postgresDB.query(`
                SELECT column_name, data_type 
                FROM information_schema.columns 
                WHERE table_name = '${table}' AND table_schema = 'public'
                ORDER BY ordinal_position
            `);
            console.log(`\n--- Schema: public.${table} ---`);
            console.table(res.rows);
        }

    } catch (e) {
        console.error("Error:", e.message);
    }
}

checkPgStructure();
