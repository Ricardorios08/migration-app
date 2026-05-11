const postgresDB = require('./db/postgres');

async function run() {
    const query = process.argv[2];
    const params = process.argv[3] ? JSON.parse(process.argv[3]) : [];
    
    if (!query) {
        console.error('Falta la consulta SQL');
        process.exit(1);
    }

    try {
        const result = await postgresDB.query(query, params);
        console.log('--- RESULTADOS ---');
        if (result.rows.length > 100) {
            console.table(result.rows.slice(0, 100));
            console.log(`... y ${result.rows.length - 100} filas más.`);
        } else {
            console.table(result.rows);
        }
    } catch (err) {
        console.error('Error:', err.message);
    } finally {
        process.exit();
    }
}

run();
