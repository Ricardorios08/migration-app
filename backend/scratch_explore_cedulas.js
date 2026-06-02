const pg = require('./db/postgres');

(async () => {
    try {
        console.log('=== EXPLORANDO ESTRUCTURAS EN POSTGRESQL ===');
        
        const tables = ['cedula', 'instanciacosto', 'tipcedinstancia', 'cedinstancia', 'tipcedula', 'cedmotfin', 'tipocedulasector'];
        
        // 1. Mostrar columnas de cada tabla
        const colRes = await pg.query(`
            SELECT table_name, column_name, data_type, is_nullable
            FROM information_schema.columns
            WHERE table_schema = 'public'
              AND table_name = ANY($1)
            ORDER BY table_name, ordinal_position
        `, [tables]);
        
        console.log('\n--- COLUMNAS ENCONTRADAS ---');
        // Agrupar por tabla para mostrar ordenado
        const grouped = {};
        colRes.rows.forEach(col => {
            if (!grouped[col.table_name]) grouped[col.table_name] = [];
            grouped[col.table_name].push({
                column: col.column_name,
                type: col.data_type,
                nullable: col.is_nullable
            });
        });
        
        for (const [table, cols] of Object.entries(grouped)) {
            console.log(`\nTable: [${table}]`);
            console.table(cols);
        }
        
        // 2. Intentar traer un registro de muestra de cada tabla
        console.log('\n--- REGISTROS DE MUESTRA ---');
        for (const table of tables) {
            try {
                const sample = await pg.query(`SELECT * FROM public."${table}" LIMIT 1`);
                console.log(`\nTable: [${table}] - Sample Row:`);
                if (sample.rows.length > 0) {
                    console.log(JSON.stringify(sample.rows[0], null, 2));
                } else {
                    console.log('(Vacía)');
                }
            } catch (err) {
                console.log(`Table: [${table}] - Error querying sample: ${err.message}`);
            }
        }
        
    } catch (e) {
        console.error('ERROR GLOBAL:', e);
    } finally {
        process.exit();
    }
})();
