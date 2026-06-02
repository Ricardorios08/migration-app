const fs = require('fs');
const path = require('path');

const routesDir = path.join(__dirname, '../backend/routes');
const files = fs.readdirSync(routesDir);

console.log('=== SEARCHING FOR PDF/REPORT/MARIADB APREMIO GENERATION IN ROUTES ===');
files.forEach(file => {
    const filePath = path.join(routesDir, file);
    const content = fs.readFileSync(filePath, 'utf8');
    const lines = content.split('\n');
    lines.forEach((line, index) => {
        if (line.toLowerCase().includes('pdf') || 
            line.toLowerCase().includes('report') || 
            line.toLowerCase().includes('generar') ||
            line.toLowerCase().includes('html') ||
            line.toLowerCase().includes('fs.write')) {
            console.log(`${file}:${index + 1}: ${line.trim()}`);
        }
    });
});
