const userDb = require('./db/userDb');

async function checkUsers() {
    try {
        console.log("--- Usuarios con rol municipalidad ---");
        const users = await userDb.query('SELECT * FROM user WHERE rol = ?', ['municipalidad'], 'admin');
        console.log(JSON.stringify(users, null, 2));
    } catch (err) {
        console.error("Error:", err.message);
    } finally {
        process.exit();
    }
}

checkUsers();
