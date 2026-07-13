const path = require('path');
const dotenv = require('dotenv');
dotenv.config({ path: path.join(__dirname, '../.env') });

const mariadb = require('mariadb');

// Use superadmin credentials if defined and different from the normal user,
// otherwise fall back to the standard user (migracion) that has confirmed access.
const superUser = process.env.SUPERADMIN_MARIA_USER || process.env.MARIA_USER;
const superPass = process.env.SUPERADMIN_MARIA_PASS || process.env.MARIA_PASS;
console.log('--------------------------------------------------');
console.log('[DEBUG] .env Path Check:', path.join(__dirname, '../.env'));
console.log('[DEBUG] SUPERADMIN_MARIA_USER exists:', !!process.env.SUPERADMIN_MARIA_USER);
console.log('[DEBUG] MARIA_USER exists:', !!process.env.MARIA_USER);
console.log('[USER DB] Admin pool user:', superUser);
console.log('--------------------------------------------------');

const poolConfig = {
     host: process.env.MARIA_HOST, 
     port: parseInt(process.env.MARIA_PORT || "3306"),
     database: process.env.MARIA_USER_DB_NAME || 'user',  // BD separada para autenticacion
     connectionLimit: 10,
     connectTimeout: 10000,
     acquireTimeout: 10000,
     allowPublicKeyRetrieval: true
};

// Admin Pool — uses superadmin if available, falls back to normal user
const adminPool = mariadb.createPool({
    ...poolConfig,
    user: superUser,
    password: superPass
});

// User Pool — always uses the standard restricted user
const userPool = mariadb.createPool({
    ...poolConfig,
    user: process.env.MARIA_USER,
    password: process.env.MARIA_PASS
});

console.log('[USER DB] Initialized Dynamic Pools (Admin & User)');

const getPoolByRole = (rol) => {
    if (rol === 'admin' || rol === 'superadmin') {
        return adminPool;
    }
    return userPool;
};

module.exports = {
    // Legacy query (uses userPool or adminPool based on env if no role provided)
    query: async (sql, params, rol = null) => {
        let conn;
        try {
            const pool = getPoolByRole(rol);
            conn = await pool.getConnection();
            const res = await conn.query(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    // New function to query with explicit role
    queryWithRole: async (rol, sql, params) => {
        let conn;
        try {
            const pool = getPoolByRole(rol);
            conn = await pool.getConnection();
            const res = await conn.query(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    adminPool,
    userPool
};
