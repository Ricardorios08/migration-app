const mysql = require('mysql2/promise');
require('dotenv').config();

async function checkDb() {
    const connection = await mysql.createConnection({
        host: process.env.MARIA_HOST,
        user: process.env.MARIA_USER,
        password: process.env.MARIA_PASS,
        port: process.env.MARIA_PORT
    });

    try {
        console.log('Listing databases...');
        const [dbs] = await connection.query('SHOW DATABASES');
        console.log('Databases:', dbs.map(db => db.Database));

        const targetDb = 'infogov-260401_0030';
        if (dbs.some(db => db.Database === targetDb)) {
            console.log(`\nChecking database: ${targetDb}`);
            await connection.query(`USE \`${targetDb}\``);
            const [tables] = await connection.query('SHOW TABLES');
            const tableList = tables.map(t => Object.values(t)[0]);
            console.log('Tables found:', tableList.length);
            
            const contpresTables = tableList.filter(t => t.toLowerCase().includes('contpres') || t.toLowerCase().includes('itemcotizacion'));
            console.log('Contpres/ItemCotizacion related tables:', contpresTables);
            
            // Look for tables alphabetically after itemcotizacion to see what's missing
            const sortedTables = tableList.sort();
            const itemCotIndex = sortedTables.indexOf('itemcotizacion');
            if (itemCotIndex !== -1) {
                console.log('\nTables around itemcotizacion (alphabetically):');
                console.log(sortedTables.slice(Math.max(0, itemCotIndex - 5), itemCotIndex + 10));
            } else {
                console.log('\nitemcotizacion table not found in exact match. Searching for similar names...');
                console.log(tableList.filter(t => t.toLowerCase().includes('cotizacion')));
            }
        } else {
            console.log(`\nDatabase ${targetDb} NOT FOUND.`);
            // Search for similar names
            const similar = dbs.map(db => db.Database).filter(name => name.includes('infogov'));
            console.log('Similar databases:', similar);
        }

    } catch (err) {
        console.error('Error:', err);
    } finally {
        await connection.end();
    }
}

checkDb();
