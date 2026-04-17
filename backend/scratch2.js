const db = require('./db/postgres.js');
db.query("SELECT column_name FROM information_schema.columns WHERE table_name = 'generacioncuota'").then(res => {
    console.log("generacioncuota cols", res.rows.map(r=>r.column_name));
    process.exit(0);
});
