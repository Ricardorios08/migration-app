const mariadb = require('mariadb');
const dotenv = require('dotenv');
const path = require('path');

dotenv.config({ path: path.join(__dirname, '../.env') });

const pool = mariadb.createPool({
     host: process.env.MARIA_HOST, 
     user: process.env.MARIA_USER, 
     password: process.env.MARIA_PASS,
     port: parseInt(process.env.MARIA_PORT || "3306"),
     database: 'recaudacion',
     connectionLimit: 15,
     connectTimeout: 15000
});

const remotePool = mariadb.createPool({
    host: process.env.MARIA_HOST_REMOTE,
    user: process.env.MARIA_USER_REMOTE,
    password: process.env.MARIA_PASS_REMOTE,
    port: parseInt(process.env.MARIA_PORT_REMOTE || "3306"),
    database: 'recaudacion2',
    connectionLimit: 15,
    connectTimeout: 15000
});

module.exports = {
    // Local (default)
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

    // Remote (Cta-Cte)
    queryRemote: async (sql, params) => {
        let conn;
        try {
            conn = await remotePool.getConnection();
            const res = await conn.query(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    getRemoteConnection: () => remotePool.getConnection(),
    remotePool
};
