const mariaDB = require('./db/maria');

async function checkColumns() {
    try {
        const columns = await mariaDB.query("SHOW COLUMNS FROM boleto");
        console.log('--- BOLETO COLUMNS ---');
        console.table(columns);
        
        const pagoColumns = await mariaDB.query("SHOW COLUMNS FROM pago");
        console.log('--- PAGO COLUMNS ---');
        console.table(pagoColumns);

        const tmpColumns = await mariaDB.query("SHOW COLUMNS FROM tmp_ctacteboleto");
        console.log('--- TMP_CTACTEBOLETO COLUMNS ---');
        console.table(tmpColumns);
    } catch (err) {
        console.error('Error:', err);
    } finally {
        process.exit();
    }
}

checkColumns();
