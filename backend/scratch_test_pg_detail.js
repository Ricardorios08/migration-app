const pg = require('./db/postgres');

(async () => {
    try {
        const numeApre = '315458917';
        console.log(`=== FETCHING POSTGRESQL DETAIL FOR cedid = ${numeApre} ===`);

        // 1. Cedula
        const cedulaRes = await pg.query(`
            SELECT c.*, TRIM(p.pernom) as pernom 
            FROM public.cedula c 
            LEFT JOIN public.persona p ON c.cedpercod = p.percod 
            WHERE c.cedid = $1
        `, [numeApre]);

        if (cedulaRes.rows.length === 0) {
            console.log('No cedula found in PostgreSQL!');
            return;
        }

        const cedula = cedulaRes.rows[0];
        console.log('\n--- CEDULA ---');
        console.log(JSON.stringify(cedula, null, 2));

        const { cednro, cedtpo, cedmotfin, cedseccod } = cedula;

        // 2. Cedinstancia (History of instances)
        const instancesRes = await pg.query(`
            SELECT ci.*, TRIM(tci.tipcedinsdsc) as tipcedinsdsc, tci.tipcedinstrabar, tci.tipcedinsmedcau 
            FROM public.cedinstancia ci 
            LEFT JOIN public.tipcedinstancia tci ON ci.tipcedinscod = tci.tipcedinscod 
            WHERE ci.cednro = $1 
            ORDER BY ci.cedinsfec DESC, ci.cedinscod DESC
        `, [cednro]);
        console.log('\n--- CEDINSTANCIA ---');
        console.table(instancesRes.rows);

        // 3. Instanciacosto
        // Let's get instanciacosto for the instances we have on this cedula
        const tipcedinscods = [...new Set(instancesRes.rows.map(r => r.tipcedinscod))];
        let costs = [];
        if (tipcedinscods.length > 0) {
            const costsRes = await pg.query(`
                SELECT ic.*, TRIM(tci.tipcedinsdsc) as tipcedinsdsc 
                FROM public.instanciacosto ic 
                LEFT JOIN public.tipcedinstancia tci ON ic.tipcedinscod = tci.tipcedinscod 
                WHERE ic.tipcedinscod = ANY($1)
                ORDER BY ic.tipcedinscod ASC, ic.inscosalta DESC
            `, [tipcedinscods]);
            costs = costsRes.rows;
        }
        console.log('\n--- INSTANCIACOSTO ---');
        console.table(costs);

        // 4. Tipcedula
        const tipCedulaRes = await pg.query(`
            SELECT * FROM public.tipcedula WHERE tipcedid = $1
        `, [cedtpo]);
        console.log('\n--- TIPCEDULA ---');
        console.table(tipCedulaRes.rows);

        // 5. Cedmotfin
        if (cedmotfin != null) {
            const cedMotFinRes = await pg.query(`
                SELECT * FROM public.cedmotfin WHERE motfincod = $1
            `, [cedmotfin]);
            console.log('\n--- CEDMOTFIN ---');
            console.table(cedMotFinRes.rows);
        } else {
            console.log('\n--- CEDMOTFIN --- (Null)');
        }

        // 6. Tipocedulasector
        if (cedtpo != null && cedseccod != null) {
            const sectorRes = await pg.query(`
                SELECT * FROM public.tipocedulasector WHERE tipcedid = $1 AND tipcedseccod = $2
            `, [cedtpo, parseInt(cedseccod)]);
            console.log('\n--- TIPOCEDULASECTOR ---');
            console.table(sectorRes.rows);
        }

    } catch (e) {
        console.error('ERROR:', e);
    } finally {
        process.exit();
    }
})();
