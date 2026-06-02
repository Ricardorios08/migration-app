const mariaDB = require('./db/maria');

async function inspect() {
    try {
        const rows = await mariaDB.query(`
            SELECT c.CodiConc, o.DetaConc, SUM(c.DebeCtct) as SumDebe, SUM(c.CredCtct) as SumCred, COUNT(*) as RowCount
            FROM recaudacion2.ctacte c
            LEFT JOIN recaudacion2.concepto o ON c.CodiConc = o.CodiConc AND c.PeriInfo = o.PeriInfo
            WHERE c.CodiOfic = 1 AND c.CuenCtct = '5722' AND c.NumeApre = 100000123
            GROUP BY c.CodiConc, o.DetaConc
        `);
        console.log("=== BREAKDOWN FOR APREMIO #100000123 (CuenCtct='5722') ===");
        console.table(rows);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
}

inspect();
