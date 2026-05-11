const mariaDB = require('./db/maria');

async function test() {
    try {
        console.log('Checking Indexes of ctacte...');
        const res = await mariaDB.query("SHOW INDEX FROM recaudacion2.ctacte");
        console.table(res.map(i => ({
            Table: i.Table,
            Column: i.Column_name,
            Key_name: i.Key_name
        })));
    } catch (e) {
        console.error('Test failed:', e);
    } finally {
        process.exit();
    }
}

test();
