const fs = require('fs');

function fixFile(file) {
    if (!fs.existsSync(file)) return;
    let code = fs.readFileSync(file, 'utf8');
    
    // Replace single quotes with backticks for strings that contain ${DB_NAME}
    // Only if it's currently inside single quotes '...'
    const regex = /'([^']*?\$\{DB_NAME\}[^']*)'/g;
    code = code.replace(regex, "`$1`");
    
    fs.writeFileSync(file, code);
    console.log("Fixed quotes in " + file);
}

fixFile('backend/routes/apremios.js');
fixFile('backend/routes/ctacte.js');
fixFile('backend/routes/ctacte2.js');
fixFile('backend/routes/boletos.js');
fixFile('backend/routes/ctacteFn.js');
