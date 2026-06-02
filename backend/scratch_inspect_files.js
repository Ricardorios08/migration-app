const fs = require('fs');
const path = require('path');

const files = ['ApremioSearch.jsx', 'ApremioExplorer.jsx'];

files.forEach(filename => {
    const filePath = path.join(__dirname, '../frontend/src/views/', filename);
    if (!fs.existsSync(filePath)) {
        console.log(`File not found: ${filename}`);
        return;
    }
    const content = fs.readFileSync(filePath, 'utf8');
    console.log(`\n=== FILE: ${filename} ===`);
    console.log('Total length:', content.length, 'characters');

    const lines = content.split('\n');
    lines.forEach((line, index) => {
        if (line.toLowerCase().includes('column') || 
            line.toLowerCase().includes('render') || 
            line.toLowerCase().includes('action') || 
            line.toLowerCase().includes('numeapre') || 
            line.toLowerCase().includes('cednro') ||
            line.toLowerCase().includes('table') ||
            line.toLowerCase().includes('th>')) {
            console.log(`${index + 1}: ${line.trim()}`);
        }
    });
});
