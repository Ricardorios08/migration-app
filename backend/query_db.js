const mariaDB = require('./db/maria');

async function run() {
    const query = process.argv[2];
    if (!query) {
        console.error('Falta la consulta SQL');
        process.exit(1);
    }

    try {
        const results = await mariaDB.query(query);
        console.log('--- RESULTADOS ---');
        if (Array.isArray(results)) {
            if (results.length > 100) {
                console.table(results.slice(0, 100));
                console.log(`... y ${results.length - 100} filas más.`);
            } else {
                console.table(results);
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
