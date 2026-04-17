const db = require('./db/postgres.js');
db.query("SELECT column_name FROM information_schema.columns WHERE table_name = 'generacioncuotadetalle'").then(res => {
    console.log(res.rows.map(r=>r.column_name));
    process.exit(0);
});
