const mariaDB = require('./db/maria');
const postgresDB = require('./db/postgres');

async function test() {
    try {
        console.log('Testing MariaDB...');
        const mariaRes = await mariaDB.query("SELECT NumeApre FROM recaudacion.apremio WHERE NumeApre = 500177924");
        console.log('MariaDB Result:', mariaRes);

        console.log('Testing Postgres...');
        const pgRes = await postgresDB.query("SELECT cedid FROM public.cedula WHERE cedid = $1", [500177924]);
        console.log('Postgres Result:', pgRes.rows);
    } catch (e) {
        console.error('Test failed:', e);
    } finally {
        process.exit();
    }
}

test();
