const mariaDB = require('./db/maria');

async function inspect() {
    try {
        const rows = await mariaDB.query(`
            SELECT CodiConc, SUM(DebeCtct) as SumDebe, SUM(CredCtct) as SumCred, COUNT(*) as RowCount
            FROM recaudacion2.ctacte
            WHERE CodiOfic = 1 AND NumeApre = 100000123
            GROUP BY CodiConc
        `);
        console.log("=== BREAKDOWN FOR APREMIO #100000123 (Without CuenCtct filter) ===");
        console.table(rows);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
}

inspect();
