const postgresDB = require('./db/postgres');
const mariaDB = require('./db/maria');

async function checkAnnual() {
    console.log("--- Searching for 'anual' in PostgreSQL Descriptions ---");
    const pgQ = "SELECT tt.tpotribnom, gc.genctaancta, gc.genctanrocta, count(*) FROM public.generacioncuota gc JOIN public.tributo t ON gc.genctatribcod = t.tribcod JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod WHERE tt.tpotribnom ILIKE '%anual%' GROUP BY 1,2,3";
    try {
        const res = await postgresDB.query(pgQ);
        console.table(res.rows);
    } catch(e) { console.log("PG Error:", e.message); }

    console.log("\n--- Searching for 'anual' in MariaDB Conceptos ---");
    let conn;
    try {
        conn = await mariaDB.getRemoteConnection();
        const mQ = "SELECT * FROM recaudacion2.concepto WHERE DetaConc LIKE '%anual%' OR DetaConc LIKE '%pago%un%rec%'";
        const mRes = await conn.query(mQ);
        console.table(mRes);
        
        console.log("\n--- Checking ctacte for BimeCtct = 0 or Cuota 0 ---");
        const mQ2 = "SELECT PeriCtct, BimeCtct, count(*) FROM recaudacion2.ctacte WHERE BimeCtct = 0 OR BimeCtct > 12 GROUP BY 1,2";
        const mRes2 = await conn.query(mQ2);
        console.table(mRes2);

    } catch(e) { console.log("Maria Error:", e.message); }
    finally { if (conn) conn.release(); }
}

checkAnnual();
