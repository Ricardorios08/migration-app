const fs = require('fs');

function fix(file) {
    if (!fs.existsSync(file)) return;
    let code = fs.readFileSync(file, 'utf8');
    
    code = code.replace(/console\.log\('\[STATS\] Fetching MariaDB stats by estado\.\.\.`\);/g, "console.log('[STATS] Fetching MariaDB stats by estado...');");
    code = code.replace(/console\.log\(`Error fetching apremio stats: ', err\);/g, "console.log('Error fetching apremio stats: ', err);");
    code = code.replace(/res\.status\(500\)\.json\({ error: `Internal server error' }\);/g, "res.status(500).json({ error: 'Internal server error' });");
    code = code.replace(/console\.log\('Executing postgres query for stats\.\.\.`\);/g, "console.log('Executing postgres query for stats...');");
    
    // Catch-all: find `... ' or '... ` across small spans
    code = code.replace(/'([^'\`\n]*?)`/g, (m, p1) => { if (!p1.includes('${')) return "'" + p1 + "'"; return m; });
    code = code.replace(/`([^'\`\n]*?)'/g, (m, p1) => { if (!p1.includes('${')) return "'" + p1 + "'"; return m; });
    
    fs.writeFileSync(file, code);
    console.log("Fixed " + file);
}

fix('backend/routes/apremios.js');
fix('backend/routes/ctacte.js');
fix('backend/routes/ctacte2.js');
fix('backend/routes/ctacteFn.js');
fix('backend/routes/boletos.js');
