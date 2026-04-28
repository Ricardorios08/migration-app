const fs = require('fs');

function revertBadQuotes(file) {
    if (!fs.existsSync(file)) return;
    let code = fs.readFileSync(file, 'utf8');
    
    code = code.replace(/router\.get\('\/legacy\/search\`, async/g, "router.get('/legacy/search', async");
    code = code.replace(/\.split\(\`T'\)\[0\]/g, ".split('T')[0]");
    code = code.replace(/router\.get\('\/report\/comparison\`, async/g, "router.get('/report/comparison', async");
    code = code.replace(/padStart\(i, \` '\)/g, "padStart(i, ' ')");
    code = code.replace(/router\.post\(\`\/audit-print', async/g, "router.post('/audit-print', async");
    
    fs.writeFileSync(file, code);
    console.log("Reverted bad quotes in " + file);
}

revertBadQuotes('backend/routes/boletos.js');
revertBadQuotes('backend/routes/ctacte.js');
revertBadQuotes('backend/routes/ctacte2.js');
revertBadQuotes('backend/routes/ctacteFn.js');
