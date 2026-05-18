const mariaDB = require('./db/maria');
async function check() {
    try {
        const columns = await mariaDB.query("DESCRIBE recaudacion2.apredeta");
        console.log(JSON.stringify(columns, null, 2));
        process.exit(0);
    } catch (e) {
        console.error(e);
        process.exit(1);
    }
}
check();
