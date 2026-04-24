const mariaDB = require('./db/maria');

async function findExamples() {
    try {
        console.log('Searching for accounts with boletos in MariaDB...');
        const query = `
            SELECT CodiOfic, CuenCtct, COUNT(*) as count, MIN(PeriBole) as min_peri, MAX(PeriBole) as max_peri
            FROM boleto
            WHERE EstaBole NOT IN ('Anulado Caja', 'Anulado Rentas', 'Anulado')
            GROUP BY CodiOfic, CuenCtct
            HAVING count > 0
            ORDER BY count DESC
            LIMIT 10
        `;
        const results = await mariaDB.query(query);
        console.table(results);
        
        if (results.length > 0) {
            const first = results[0];
            console.log(`\nTesting account ${first.CuenCtct} for office ${first.CodiOfic}...`);
            const boletos = await mariaDB.query(
                "SELECT * FROM boleto WHERE CuenCtct = ? AND CodiOfic = ? LIMIT 5",
                [first.CuenCtct, first.CodiOfic]
            );
            console.log('Sample boletos:');
            console.table(boletos.map(b => ({
                PeriBole: b.PeriBole,
                NumeBole: b.NumeBole,
                TotaBole: b.TotaBole,
                EstaBole: b.EstaBole,
                FeveBole: b.FeveBole
            })));
        }
    } catch (err) {
        console.error('Error:', err);
    } finally {
        process.exit();
    }
}

findExamples();
