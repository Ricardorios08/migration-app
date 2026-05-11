const mariaDB = require('./db/maria');

async function test() {
    try {
        console.log('Checking Processlist...');
        const res = await mariaDB.query("SHOW PROCESSLIST");
        console.table(res.map(p => ({
            Id: p.Id,
            User: p.User,
            Host: p.Host,
            db: p.db,
            Command: p.Command,
            Time: p.Time,
            State: p.State,
            Info: p.Info ? p.Info.substring(0, 50) : ''
        })));
    } catch (e) {
        console.error('Test failed:', e);
    } finally {
        process.exit();
    }
}

test();
