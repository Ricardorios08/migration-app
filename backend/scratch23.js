const mariadb = require('mariadb');
require('dotenv').config();

async function checkSchema() {
    const conn = await mariadb.createConnection({
        host: process.env.MARIADB_HOST || 'localhost',
        user: process.env.MARIADB_USER || 'root',
        password: process.env.MARIADB_PASSWORD || '',
        database: 'recaudacion'
    });

    try {
        const rows = await conn.query('DESCRIBE ctacte');
        console.log('Columns of ctacte:');
        rows.forEach(r => console.log(`${r.Field}: ${r.Type}`));
        
        const data = await conn.query('SELECT * FROM ctacte WHERE CuenCtct = 100027 AND PeriCtct = 2025 AND BimeCtct = 2 LIMIT 1');
        console.log('\nSample data for Peri 2025/2, Acc 100027:');
        if (data && data.length > 0) {
            console.log(data[0]);
        } else {
            console.log('No data found for this account/period.');
            const dataAll = await conn.query('SELECT * FROM ctacte LIMIT 1');
            console.log('\nRandom sample data:');
            console.log(dataAll[0]);
        }
    } catch (e) {
        console.error(e);
    } finally {
        await conn.end();
    }
}

checkSchema();
