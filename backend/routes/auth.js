const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const userDb = require('../db/userDb');
const fs = require('fs');
const path = require('path');

const JWT_SECRET = process.env.JWT_SECRET || 'fallback_secret';
const LOG_PATH = path.join(__dirname, '../logs/audit.log');
const BACKUP_DIR = path.join(__dirname, '../logs/backups');

// Middleware to verify JWT
const authenticateToken = (req, res, next) => {
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1];

    if (!token) return res.status(401).json({ error: 'Token no proporcionado' });

    jwt.verify(token, JWT_SECRET, (err, user) => {
        if (err) return res.status(403).json({ error: 'Token inválido o expirado' });
        req.user = user;
        next();
    });
};

// Middleware to check admin or superadmin role
const isAdmin = (req, res, next) => {
    if (req.user && (req.user.rol === 'admin' || req.user.rol === 'superadmin')) {
        next();
    } else {
        res.status(403).json({ error: 'Acceso denegado: se requiere rol de administrador' });
    }
};

// Middleware to check superadmin only
const isSuperAdmin = (req, res, next) => {
    if (req.user && req.user.rol === 'superadmin') {
        next();
    } else {
        res.status(403).json({ error: 'Acceso denegado: se requiere rol de super-administrador' });
    }
};

const isCtaCte = (req, res, next) => {
    if (req.user && req.user.rol === 'ctacte') {
        next();
    } else {
        res.status(403).json({ error: 'Acceso denegado: se requiere rol de Cta Cte' });
    }
};

// POST /login
router.post('/login', async (req, res) => {
    const { nombre_usuario, password } = req.body;
    try {
        const users = await userDb.query('SELECT * FROM user WHERE nombre_usuario = ?', [nombre_usuario]);
        if (users.length === 0) return res.status(401).json({ error: 'Usuario o contraseña incorrectos' });

        const user = users[0];
        const validPassword = await bcrypt.compare(password, user.password);
        if (!validPassword) return res.status(401).json({ error: 'Usuario o contraseña incorrectos' });

        const token = jwt.sign(
            { id: user.id, nombre_usuario: user.nombre_usuario, rol: user.rol },
            JWT_SECRET,
            { expiresIn: '8h' }
        );

        res.json({ token, user: { id: user.id, nombre_usuario: user.nombre_usuario, rol: user.rol } });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

router.get('/me', authenticateToken, (req, res) => {
    res.json({ user: req.user });
});

router.get('/users', authenticateToken, isAdmin, async (req, res) => {
    try {
        const users = await userDb.query('SELECT id, nombre_usuario, rol FROM user');
        res.json(users);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

router.post('/users', authenticateToken, isAdmin, async (req, res) => {
    const { nombre_usuario, password, rol } = req.body;
    if (!nombre_usuario || !password || !rol) return res.status(400).json({ error: 'Todo obligatorio' });
    try {
        const hashedPass = await bcrypt.hash(password, 10);
        await userDb.query('INSERT INTO user (nombre_usuario, password, rol) VALUES (?, ?, ?)', [nombre_usuario, hashedPass, rol]);
        res.json({ message: 'OK' });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

router.delete('/users/:id', authenticateToken, isAdmin, async (req, res) => {
    try {
        const { id } = req.params;
        const users = await userDb.query('SELECT nombre_usuario, rol FROM user WHERE id = ?', [id]);
        if (users.length > 0 && users[0].nombre_usuario === 'Ricardo') {
            return res.status(403).json({ error: 'No se puede eliminar a este admin' });
        }
        await userDb.query('DELETE FROM user WHERE id = ?', [id]);
        res.json({ message: 'OK' });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

router.put('/users/:id', authenticateToken, isSuperAdmin, async (req, res) => {
    try {
        const { id } = req.params;
        const { password, rol } = req.body;
        
        // Check if user exists and isn't Ricardo
        const users = await userDb.query('SELECT nombre_usuario FROM user WHERE id = ?', [id]);
        if (users.length === 0) return res.status(404).json({ error: 'Usuario no encontrado' });
        if (users[0].nombre_usuario === 'Ricardo' && req.user.nombre_usuario !== 'Ricardo') {
            return res.status(403).json({ error: 'No se puede modificar a este admin' });
        }

        if (password) {
            const hashedPass = await bcrypt.hash(password, 10);
            await userDb.query('UPDATE user SET password = ?, rol = ? WHERE id = ?', [hashedPass, rol, id]);
        } else {
            await userDb.query('UPDATE user SET rol = ? WHERE id = ?', [rol, id]);
        }
        res.json({ message: 'OK' });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// Logs (Superadmin only)
router.get('/logs', authenticateToken, isSuperAdmin, (req, res) => {
    try {
        if (!fs.existsSync(LOG_PATH)) return res.json({ logs: '' });
        const logs = fs.readFileSync(LOG_PATH, 'utf8');
        res.json({ logs });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

router.post('/logs/rotate', authenticateToken, isSuperAdmin, (req, res) => {
    try {
        if (!fs.existsSync(BACKUP_DIR)) fs.mkdirSync(BACKUP_DIR, { recursive: true });
        if (fs.existsSync(LOG_PATH)) {
            const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
            const backupPath = path.join(BACKUP_DIR, `audit_${timestamp}.log`);
            fs.copyFileSync(LOG_PATH, backupPath);
            fs.writeFileSync(LOG_PATH, `[${new Date().toLocaleString()}] [LOG_ROTATED] Log rotado por ${req.user.nombre_usuario}\n`);
        }
        res.json({ message: 'OK' });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

router.put('/change-password', authenticateToken, async (req, res) => {
    const { currentPassword, newPassword } = req.body;
    try {
        const users = await userDb.query('SELECT password FROM user WHERE id = ?', [req.user.id]);
        const validPassword = await bcrypt.compare(currentPassword, users[0].password);
        if (!validPassword) return res.status(401).json({ error: 'Error' });
        const hashedPass = await bcrypt.hash(newPassword, 10);
        await userDb.query('UPDATE user SET password = ? WHERE id = ?', [hashedPass, req.user.id]);
        res.json({ message: 'OK' });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;
