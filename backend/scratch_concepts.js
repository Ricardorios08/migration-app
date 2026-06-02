const mariaDB = require('./db/maria');

async function check() {
    try {
        const concepts = await mariaDB.query(`
            SELECT CodiConc, DetaConc 
            FROM recaudacion2.concepto 
            WHERE CodiConc IN ('13021301', '13030201', '91010500', '91010400', '13030203')
        `);
        console.table(concepts);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
}

check();
