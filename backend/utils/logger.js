const fs = require('fs');
const path = require('path');

const LOG_PATH = path.join(__dirname, '../logs/audit.log');
const LOG_DIR = path.join(__dirname, '../logs');

if (!fs.existsSync(LOG_DIR)) {
    fs.mkdirSync(LOG_DIR, { recursive: true });
}

const auditLog = (action, user, details = '') => {
    const timestamp = new Date().toLocaleString();
    const userName = user ? (user.nombre_usuario || user.id || 'Anon') : 'Sist';
    const logEntry = `[${timestamp}] [${action}] Usuario: ${userName} | ${details}\n`;
    
    fs.appendFile(LOG_PATH, logEntry, (err) => {
        if (err) console.error('Error writing to audit log:', err);
    });
};

module.exports = { auditLog };
