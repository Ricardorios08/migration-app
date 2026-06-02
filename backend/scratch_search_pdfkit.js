const fs = require('fs');
const path = require('path');

function searchDir(dir) {
    const files = fs.readdirSync(dir);
    files.forEach(file => {
        const filePath = path.join(dir, file);
        const stat = fs.statSync(filePath);
        if (stat.isDirectory()) {
            if (file !== 'node_modules' && file !== '.git') {
                searchDir(filePath);
            }
        } else {
            if (file.endsWith('.js')) {
                const content = fs.readFileSync(filePath, 'utf8');
                if (content.includes('pdfkit') || content.includes('PDFDocument')) {
                    console.log(`Found PDF library usage in: ${filePath}`);
                    // Print some context
                    const lines = content.split('\n');
                    lines.forEach((l, i) => {
                        if (l.includes('pdfkit') || l.includes('PDFDocument')) {
                            console.log(`  L${i+1}: ${l.trim()}`);
                        }
                    });
                }
            }
        }
    });
}

console.log('=== SEARCHING FOR PDFKIT USAGE IN BACKEND ===');
searchDir(path.join(__dirname, '../backend'));
