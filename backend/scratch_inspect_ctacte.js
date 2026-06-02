const mariaDB = require('./db/maria');

async function inspect() {
    try {
        console.log("=== INSPECTING CTACTE ROWS FOR NUMEAPRE 100000123 ===");
        const rows123 = await mariaDB.query(`
            SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, DebeCtct, CredCtct, DetaCtct, NumeApre, CodiConc, CodiTimo
            FROM recaudacion2.ctacte 
            WHERE NumeApre = 100000123
        `);
        console.table(rows123);

        console.log("\n=== INSPECTING CTACTE ROWS FOR NUMEAPRE 100000221 ===");
        const rows221 = await mariaDB.query(`
            SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, DebeCtct, CredCtct, DetaCtct, NumeApre, CodiConc, CodiTimo
            FROM recaudacion2.ctacte 
            WHERE NumeApre = 100000221
        `);
        console.table(rows221);
        
        console.log("\n=== INSPECTING CTACTE ROWS FOR NUMEAPRE 100000219 ===");
        const rows219 = await mariaDB.query(`
            SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, DebeCtct, CredCtct, DetaCtct, NumeApre, CodiConc, CodiTimo
            FROM recaudacion2.ctacte 
            WHERE NumeApre = 100000219
        `);
        console.table(rows219);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
}

inspect();
