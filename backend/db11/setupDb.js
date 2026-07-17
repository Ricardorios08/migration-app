/**
 * setupDb.js
 * Se ejecuta al arrancar el servidor en producción.
 * Si users.sqlite no existe o está vacío, crea la tabla y
 * siembra un superadmin usando variables de entorno.
 *
 * Variables requeridas en Hostinger:
 *   SETUP_ADMIN_USER  — nombre del usuario administrador inicial
 *   SETUP_ADMIN_PASS  — contraseña en texto plano (se hashea aquí)
 */

const path = require('path');
const Database = require('better-sqlite3');
const bcrypt = require('bcryptjs');

const DB_PATH = path.join(__dirname, 'users.sqlite');

async function setupDb() {
    const db = new Database(DB_PATH);
    db.pragma('journal_mode = WAL');

    // Crear tabla si no existe
    db.exec(`
        CREATE TABLE IF NOT EXISTS user (
            id             INTEGER PRIMARY KEY AUTOINCREMENT,
            nombre_usuario TEXT NOT NULL UNIQUE,
            password       TEXT NOT NULL,
            rol            TEXT NOT NULL DEFAULT 'viewer',
            theme          TEXT NOT NULL DEFAULT 'dark'
        )
    `);

    const count = db.prepare('SELECT COUNT(*) as cnt FROM user').get();

    if (count.cnt === 0) {
        const adminUser = process.env.SETUP_ADMIN_USER;
        const adminPass = process.env.SETUP_ADMIN_PASS;

        if (!adminUser || !adminPass) {
            console.warn('[SETUP DB] ⚠ SQLite vacío y no hay SETUP_ADMIN_USER/SETUP_ADMIN_PASS definidas.');
            console.warn('[SETUP DB]   El login no funcionará hasta que crees un usuario.');
            db.close();
            return;
        }

        const hashed = await bcrypt.hash(adminPass, 10);
        db.prepare(`
            INSERT INTO user (nombre_usuario, password, rol, theme)
            VALUES (?, ?, 'superadmin', 'dark')
        `).run(adminUser, hashed);

        console.log(`[SETUP DB] ✔ Usuario inicial creado: ${adminUser} (superadmin)`);
    } else {
        console.log(`[SETUP DB] ✔ SQLite OK — ${count.cnt} usuario(s) existente(s)`);
    }

    db.close();
}

module.exports = setupDb;
