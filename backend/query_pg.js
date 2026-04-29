const postgresDB = require('./db/postgres');

async function run() {
    const query = process.argv[2];
    if (!query) {
        console.error('Falta la consulta SQL');
        process.exit(1);
    }

    try {
        const results = await postgresDB.query(query);
        console.log('--- RESULTADOS ---');
        if (Array.isArray(results.rows)) {
            if (results.rows.length > 100) {
                console.table(results.rows.slice(0, 100));
                console.log(`... y ${results.rows.length - 100} filas más.`);
            } else {
                console.table(results.rows);
            }
        } else {
            console.log(results);
        }
    } catch (err) {
        console.error('Error:', err.message);
    } finally {
        process.exit();
    }
}

run();
