const mariadb = require('mariadb');
const dotenv = require('dotenv');
const path = require('path');

dotenv.config({ path: path.join(__dirname, '../.env') });

const pool = mariadb.createPool({
     host: process.env.MARIA_HOST, 
     user: process.env.MARIA_USER, 
     password: process.env.MARIA_PASS,
     port: parseInt(process.env.MARIA_PORT || "3306"),
     database: process.env.MARIA_DB_NAME || 'recaudacion2',
     connectionLimit: 15,
     connectTimeout: 10000,
     acquireTimeout: 10000,
     allowPublicKeyRetrieval: true
});

module.exports = {
    query: async (sql, params) => {
        let conn;
        try {
            conn = await pool.getConnection();
            const res = await conn.query(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    getConnection: () => pool.getConnection(),
    pool,
    superadminPool: pool, // Fallback to same pool
    queryRemote: async (sql, params) => {
        let conn;
        try {
            conn = await pool.getConnection();
            const res = await conn.query(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    getRemoteConnection: () => pool.getConnection(),
    remotePool: pool
};
