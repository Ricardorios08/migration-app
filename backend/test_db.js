const mariadb = require('mariadb');
const dotenv = require('dotenv');
const path = require('path');

dotenv.config({ path: path.join(__dirname, '.env') });

console.log('--- DIAGNÓSTICO DE CONEXIÓN ---');
console.log('Host:', process.env.MARIA_HOST);
console.log('User:', process.env.MARIA_USER);
console.log('DB:', process.env.MARIA_DB_NAME);
console.log('Port:', process.env.MARIA_PORT);

const test = async () => {
    let conn;
    try {
        console.log('\nIntentando conectar...');
        conn = await mariadb.createConnection({
            host: process.env.MARIA_HOST,
            user: process.env.MARIA_USER,
            password: process.env.MARIA_PASS,
            port: parseInt(process.env.MARIA_PORT || "3306"),
            database: process.env.MARIA_DB_NAME,
            allowPublicKeyRetrieval: true
        });
        console.log('✅ ¡CONEXIÓN EXITOSA!');
        const res = await conn.query("SELECT DATABASE() as db, VERSION() as ver");
        console.log('Datos:', res[0]);
    } catch (err) {
        console.error('❌ ERROR DE CONEXIÓN:');
        console.error('Código:', err.code);
        console.error('Mensaje:', err.message);
        console.error('Detalle:', err);
    } finally {
        if (conn) conn.end();
        process.exit();
    }
};

test();
