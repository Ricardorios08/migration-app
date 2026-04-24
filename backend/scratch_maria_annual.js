const mariaDB = require('./db/maria');

async function checkAnnualMaria() {
    let conn;
    try {
        console.log("Connecting to MariaDB...");
        conn = await mariaDB.getRemoteConnection();
        console.log("Connected.");
        
        // Check for specific concepts that might mean annual
        console.log("Checking Concepts for Annual/Unico...");
        const conc = await conn.query("SELECT CodiConc, DetaConc FROM recaudacion2.concepto WHERE DetaConc LIKE '%ANUAL%' OR DetaConc LIKE '%UNICO%' LIMIT 50");
        console.table(conc);

        // Check for BimeCtct = 0
        console.log("Checking BimeCtct = 0 records...");
        const b0 = await conn.query("SELECT PeriCtct, BimeCtct, count(*) as cnt FROM recaudacion2.ctacte WHERE BimeCtct = 0 GROUP BY PeriCtct, BimeCtct ORDER BY PeriCtct DESC LIMIT 10");
        console.table(b0);

        if (b0.length > 0) {
            console.log("Sample BimeCtct = 0 records:");
            const samples = await conn.query("SELECT * FROM recaudacion2.ctacte WHERE BimeCtct = 0 LIMIT 5");
            console.table(samples);
        }

    } catch (e) {
        console.error("Error:", e.message);
    } finally {
        if (conn) conn.release();
    }
}

checkAnnualMaria();
