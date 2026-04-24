const mariaDB = require('./db/maria');

async function test() {
    console.log('Testing local MariaDB...');
    try {
        const localRes = await mariaDB.query('SELECT 1 as test');
        console.log('Local MariaDB OK:', localRes[0]);
    } catch (err) {
        console.error('Local MariaDB FAILED:', err.message);
    }

    console.log('\nTesting remote MariaDB (recaudacion2)...');
    try {
        const remoteRes = await mariaDB.queryRemote('SELECT 1 as test');
        console.log('Remote MariaDB OK:', remoteRes[0]);
        
        console.log('\nTesting table existence (recaudacion2.ctacte)...');
        const ctacteRes = await mariaDB.queryRemote('SELECT count(*) as count FROM ctacte LIMIT 1');
        console.log('ctacte table OK, count:', ctacteRes[0].count);
        
    } catch (err) {
        console.error('Remote MariaDB FAILED:', err.message);
    }
    
    process.exit(0);
}

test();
