const maria = require('./db/maria');
const pg = require('./db/postgres');

(async () => {
    try {
        console.log('=== BUSCANDO MUESTRAS DE MARIADB APREMIO ===');
        const apremios = await maria.query('SELECT NumeApre, CuenCtct, TotaApre FROM recaudacion2.apremio LIMIT 10');
        console.table(apremios);

        console.log('\n=== BUSCANDO EN POSTGRESQL "cedula" PARA LOS NUMEAPRE ===');
        const numeApres = apremios.map(a => String(a.NumeApre));
        
        // Buscamos si alguno de estos numeApre coincide con "cedid" o "cednro" o alguna columna en "cedula"
        const cedulasById = await pg.query('SELECT * FROM public.cedula WHERE cedid = ANY($1) OR cednro = ANY($1)', [numeApres]);
        console.log(`Coincidencias en cedula (por ID o Nro): ${cedulasById.rows.length}`);
        if (cedulasById.rows.length > 0) {
            console.table(cedulasById.rows.map(r => ({
                cednro: r.cednro,
                cedid: r.cedid,
                cedpercod: r.cedpercod,
                cedimptot: r.cedimptot
            })));
        }

        // Buscamos en cedinstancia
        const cedinstancias = await pg.query('SELECT * FROM public.cedinstancia WHERE cednro = ANY($1)', [numeApres]);
        console.log(`Coincidencias en cedinstancia: ${cedinstancias.rows.length}`);

        // Veamos una muestra aleatoria de cedula para ver que formato tiene cedid
        const sampleCed = await pg.query('SELECT cedid, cednro, cedpercod, cedimptot FROM public.cedula WHERE cedid IS NOT NULL LIMIT 10');
        console.log('\nMuestra de cedula para ver cedid:');
        console.table(sampleCed.rows);

    } catch (e) {
        console.error('ERROR:', e);
    } finally {
        process.exit();
    }
})();
