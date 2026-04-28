const fs = require('fs');
const files = ['backend/routes/apremios.js', 'backend/routes/ctacte.js', 'backend/routes/ctacte2.js', 'backend/routes/ctacteFn.js', 'backend/routes/boletos.js', 'backend/routes/apremioConfig.js'];
files.forEach(f => {
    let lines = fs.readFileSync(f, 'utf8').split('\n');
    lines.forEach((l, i) => {
        // If the line has '...' containing ${DB_NAME}
        if (l.match(/'[^']*?\$\{DB_NAME\}[^']*?'/)) {
            console.log(f + ':' + (i+1) + ' -> ' + l.trim());
            // Fix it by replacing ' with `
            lines[i] = l.replace(/'([^']*?\$\{DB_NAME\}[^']*?)'/g, "`$1`");
        }
    });
    fs.writeFileSync(f, lines.join('\n'));
});
