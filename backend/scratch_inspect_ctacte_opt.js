const mariaDB = require('./db/maria');

async function inspect() {
    try {
        const apremios = await mariaDB.query(`
            SELECT NumeApre, CodiOfic, CuenCtct, CapiApre, RecaApre, TotaApre 
            FROM recaudacion2.apremio 
            WHERE NumeApre IN (100000123, 100000221, 100000219)
        `);
        
        console.log("=== APREMIO HEADERS ===");
        console.table(apremios);

        for (const apre of apremios) {
            console.log(`\n=== CTACTE ROWS FOR APREMIO #${apre.NumeApre} (CodiOfic=${apre.CodiOfic}, CuenCtct='${apre.CuenCtct}') ===`);
            const ctacteRows = await mariaDB.query(`
                SELECT PeriCtct, BimeCtct, NumeCtct, MoviCtct, DebeCtct, CredCtct, DetaCtct, CodiConc, CodiTimo, FeveCtct
                FROM recaudacion2.ctacte 
                WHERE CodiOfic = ? AND CuenCtct = ? AND NumeApre = ?
                ORDER BY PeriCtct DESC, BimeCtct DESC, MoviCtct ASC
            `, [apre.CodiOfic, apre.CuenCtct, apre.NumeApre]);
            console.table(ctacteRows);
            
            // Sum calculations
            const sumDebe = ctacteRows.reduce((acc, r) => acc + parseFloat(r.DebeCtct || 0), 0);
            const sumCred = ctacteRows.reduce((acc, r) => acc + parseFloat(r.CredCtct || 0), 0);
            const sumNet = sumDebe - sumCred;
            console.log(`SUM Debe: ${sumDebe.toFixed(2)}, SUM Cred: ${sumCred.toFixed(2)}, Net Balance (Debe - Cred): ${sumNet.toFixed(2)}`);
        }
        
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
}

inspect();
