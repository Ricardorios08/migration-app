const postgresDB = require('./db/postgres');
(async () => {
    try {
        const query = `
                SELECT 
                    COUNT(*) as total, 
                    COUNT(gcd.genctadetcod) as con_detalle_id 
                FROM public.generacioncuota gc
                INNER JOIN public.cuentacorriente cc ON cc.genctacod = gc.genctacod
                LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetid
            `;
        const res = await postgresDB.query(query, []);
        console.table(res.rows);
    } catch (err) {
        console.error(err);
    } finally {
        process.exit();
    }
})();
