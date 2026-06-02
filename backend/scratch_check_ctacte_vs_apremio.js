const mariaDB = require('./db/maria');

async function check() {
    try {
        const query = `
            SELECT 
                a.NumeApre,
                a.CapiApre,
                a.RecaApre,
                a.TotaApre,
                (SELECT COUNT(*) FROM recaudacion2.apredeta WHERE NumeApre = a.NumeApre) as cnt_apredeta,
                (SELECT SUM(DebeCtct) FROM recaudacion2.ctacte WHERE CodiOfic = a.CodiOfic AND CuenCtct = a.CuenCtct AND NumeApre = a.NumeApre AND MoviCtct = 1) as sum_ctacte_capital,
                (SELECT SUM(DebeCtct) FROM recaudacion2.ctacte WHERE CodiOfic = a.CodiOfic AND CuenCtct = a.CuenCtct AND NumeApre = a.NumeApre AND MoviCtct > 1) as sum_ctacte_recargo,
                (SELECT SUM(DebeCtct) FROM recaudacion2.ctacte WHERE CodiOfic = a.CodiOfic AND CuenCtct = a.CuenCtct AND NumeApre = a.NumeApre) as sum_ctacte_total
            FROM recaudacion2.apremio a
            WHERE a.TotaApre > 0
            LIMIT 10;
        `;
        const results = await mariaDB.query(query);
        console.table(results);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
}

check();
