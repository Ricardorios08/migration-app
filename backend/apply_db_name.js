const fs = require('fs');

function applyDbName(file) {
    if (!fs.existsSync(file)) return;
    let code = fs.readFileSync(file, 'utf8');

    if (code.includes('recaudacion')) {
        if (!code.includes('DB_NAME = process.env.MARIA_DB_NAME')) {
            code = code.replace(/const mariaDB = require\('\.\.\/db\/maria'\);/, "const mariaDB = require('../db/maria');\n\nconst DB_NAME = process.env.MARIA_DB_NAME || 'recaudacion2';");
            code = code.replace(/const maria = require\('\.\.\/db\/maria'\);/, "const maria = require('../db/maria');\n\nconst DB_NAME = process.env.MARIA_DB_NAME || 'recaudacion2';");
        }
        
        // 1. USE statements (if any still exist)
        code = code.replace(/"USE recaudacion"/g, '`USE ${DB_NAME}`');
        code = code.replace(/'USE recaudacion'/g, '`USE ${DB_NAME}`');
        code = code.replace(/"USE recaudacion2"/g, '`USE ${DB_NAME}`');
        code = code.replace(/'USE recaudacion2'/g, '`USE ${DB_NAME}`');

        // 2. Global replace for schema prefix
        code = code.replace(/recaudacion\./g, '${DB_NAME}.');
        code = code.replace(/recaudacion2\./g, '${DB_NAME}.');

        fs.writeFileSync(file, code);
        console.log("Applied DB_NAME to " + file);
    }
}

applyDbName('backend/routes/apremios.js');
applyDbName('backend/routes/ctacte.js');
applyDbName('backend/routes/ctacte2.js');
applyDbName('backend/routes/ctacteFn.js');
applyDbName('backend/routes/boletos.js');
applyDbName('backend/routes/apremioConfig.js');
