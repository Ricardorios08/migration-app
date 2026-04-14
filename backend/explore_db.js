const mariaDB = require('./db/maria');

async function explore() {
    try {
        const columns = await mariaDB.query("SHOW COLUMNS FROM recaudacion.ctacte");
        console.log('--- RECAUDACION.CTACTE COLUMNS ---');
        console.table(columns);
        
        const offices = await mariaDB.query("SHOW COLUMNS FROM recaudacion.oficina");
        console.log('--- RECAUDACION.OFICINA COLUMNS ---');
        console.table(offices);
        
        const sample = await mariaDB.query("SELECT * FROM recaudacion.ctacte LIMIT 1");
        console.log('--- RECAUDACION.CTACTE SAMPLE ---');
        console.log(sample[0]);
    } catch (err) {
        console.error('Error during exploration:', err);
    } finally {
        process.exit();
    }
}

explore();
