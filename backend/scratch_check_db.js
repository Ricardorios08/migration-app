const maria = require('./db/maria');

(async () => {
    try {
        const paraapre = await maria.query('SELECT * FROM recaudacion2.paraapre');
        console.log('=== PARAAPRE ===');
        console.log(JSON.stringify(paraapre, null, 2));

        const instjudi = await maria.query('SELECT * FROM recaudacion2.instjudi');
        console.log('\n=== INSTJUDI ===');
        console.log(JSON.stringify(instjudi, null, 2));
    } catch (e) {
        console.error('ERROR:', e);
    } finally {
        process.exit();
    }
})();
