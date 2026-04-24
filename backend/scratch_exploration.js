const postgresDB = require('./db/postgres');
const mariaDB = require('./db/maria');

async function explorePayments() {
    console.log("--- Exploring PostgreSQL (Annual vs Monthly) ---");
    // Look for rows where genctanrocta is 0 (typical for annual)
    const pgQuery = `
        SELECT genctaancta, genctanrocta, count(*) 
        FROM public.generacioncuota 
        GROUP BY genctaancta, genctanrocta 
        ORDER BY genctaancta DESC, genctanrocta ASC 
        LIMIT 20
    `;
    try {
        const pgRes = await postgresDB.query(pgQuery);
        console.table(pgRes.rows);
    } catch (e) { console.error("PG Error:", e.message); }

    console.log("\n--- Exploring MariaDB (Annual vs Bimonthly) ---");
    let conn;
    try {
        conn = await mariaDB.getRemoteConnection();
        const mQuery = `
            SELECT PeriCtct, BimeCtct, count(*) 
            FROM recaudacion2.ctacte 
            GROUP BY PeriCtct, BimeCtct 
            ORDER BY PeriCtct DESC, BimeCtct ASC 
            LIMIT 20
        `;
        const mRes = await conn.query(mQuery);
        console.table(mRes);
    } catch (e) { console.error("Maria Error:", e.message); }
    finally { if (conn) conn.release(); }
}

explorePayments();
