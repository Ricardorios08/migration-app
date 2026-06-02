const maria = require('./db/maria');
const pg = require('./db/postgres');

(async () => {
    try {
        console.log('=== QUERYING SAMPLE CEDULAS FROM POSTGRESQL ===');
        // Let's get a sample of 20 cedulas from PostgreSQL where cedtpo = 2 (Apremio)
        const pgCedulas = await pg.query(`
            SELECT cedid, cednro, cedtpo, cedestado, cedimptot, cedpercod 
            FROM public.cedula 
            WHERE cedtpo = 2 AND cedid IS NOT NULL AND cedid != ''
            LIMIT 20
        `);
        console.log('Sample PG Cedulas (cedtpo = 2):');
        console.table(pgCedulas.rows);

        if (pgCedulas.rows.length > 0) {
            const cedids = pgCedulas.rows.map(r => r.cedid);
            const cednros = pgCedulas.rows.map(r => r.cednro);
            
            // Let's check if any of these cedids match NumeApre in MariaDB
            console.log('\n=== CHECKING IF THESE cedid EXIST IN MARIADB APREMIO ===');
            const mariaByIds = await maria.query(`
                SELECT NumeApre, CuenCtct, TotaApre 
                FROM recaudacion2.apremio 
                WHERE NumeApre IN (?)
            `, [cedids.map(id => parseInt(id)).filter(id => !isNaN(id))]);
            
            console.log('MariaDB matches by NumeApre = cedid:');
            console.table(mariaByIds);

            // Let's check if any of these cednros match NumeApre in MariaDB
            console.log('\n=== CHECKING IF THESE cednro EXIST IN MARIADB APREMIO ===');
            const mariaByNros = await maria.query(`
                SELECT NumeApre, CuenCtct, TotaApre 
                FROM recaudacion2.apremio 
                WHERE NumeApre IN (?)
            `, [cednros.map(nro => parseInt(nro)).filter(nro => !isNaN(nro))]);
            
            console.log('MariaDB matches by NumeApre = cednro:');
            console.table(mariaByNros);
        }

    } catch (e) {
        console.error('ERROR:', e);
    } finally {
        process.exit();
    }
})();
