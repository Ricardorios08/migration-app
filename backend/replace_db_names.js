const fs = require('fs');

const files = [
    'backend/routes/ctacteFn.js',
    'backend/routes/ctacte2.js',
    'backend/routes/ctacte.js',
    'backend/routes/apremioConfig.js',
    'backend/routes/apremios.js',
    'backend/routes/dashboard.js',
    'backend/routes/explorer.js'
];

files.forEach(file => {
    if (fs.existsSync(file)) {
        let code = fs.readFileSync(file, 'utf8');
        let modified = false;

        if (code.includes('recaudacion') || code.includes('recaudacion2')) {
            if (!code.includes('DB_NAME = process.env.MARIA_DB_NAME')) {
                code = code.replace(/const mariaDB = require\('..\/db\/maria'\);/, "const mariaDB = require('../db/maria');\n\nconst DB_NAME = process.env.MARIA_DB_NAME || 'recaudacion2';");
            }
            code = code.replace(/USE recaudacion/g, 'USE ${DB_NAME}');
            code = code.replace(/USE recaudacion2/g, 'USE ${DB_NAME}');
            code = code.replace(/recaudacion\./g, '${DB_NAME}.');
            code = code.replace(/recaudacion2\./g, '${DB_NAME}.');
            
            // Fix string literal vs template literal for USE
            code = code.replace(/"USE \$\{DB_NAME\}"/g, '`USE ${DB_NAME}`');
            code = code.replace(/'USE \$\{DB_NAME\}'/g, '`USE ${DB_NAME}`');

            fs.writeFileSync(file, code);
            console.log('Updated ' + file);
        }
    }
});
