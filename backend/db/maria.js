const mariadb = require('mariadb');
const dotenv = require('dotenv');
const path = require('path');
const { requestContext } = require('../middleware/context');

dotenv.config({ path: path.join(__dirname, '../.env') });

// Default Pool (migracion)
const pool = mariadb.createPool({
     host: process.env.MARIA_HOST, 
     user: process.env.MARIA_USER, 
     password: process.env.MARIA_PASS,
     port: parseInt(process.env.MARIA_PORT || "3306"),
     database: 'recaudacion2',
     connectionLimit: 30,
     connectTimeout: 15000
});

// Superadmin Pool (currently same as default, ready to change via .env)
const superadminPool = mariadb.createPool({
     host: process.env.MARIA_HOST, 
     user: process.env.SUPERADMIN_MARIA_USER || process.env.MARIA_USER,
     password: process.env.SUPERADMIN_MARIA_PASS || process.env.MARIA_PASS,
     port: parseInt(process.env.MARIA_PORT || "3306"),
     database: 'recaudacion2',
     connectionLimit: 10,
     connectTimeout: 15000
});

const getActivePool = () => {
    const store = requestContext.getStore();
    const role = store ? store.get('role') : 'default';
    if (role === 'superadmin') {
        console.log('[DB] Using superadmin pool');
        return superadminPool;
    }
    return pool;
};

module.exports = {
    // Unified Connection based on Role
    query: async (sql, params) => {
        let conn;
        try {
            const activePool = getActivePool();
            conn = await activePool.getConnection();
            const res = await conn.query(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    getConnection: () => getActivePool().getConnection(),
    pool,
    superadminPool,

    // Aliases to avoid breaking code that hasn't been updated yet
    queryRemote: async (sql, params) => {
        let conn;
        try {
            const activePool = getActivePool();
            conn = await activePool.getConnection();
            const res = await conn.query(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    getRemoteConnection: () => getActivePool().getConnection(),
    remotePool: pool
};
