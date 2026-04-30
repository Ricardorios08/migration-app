const mariadb = require('mariadb');
const dotenv = require('dotenv');
const path = require('path');

dotenv.config({ path: path.join(__dirname, '../.env') });

console.log('DB INIT - User:', process.env.SUPERADMIN_MARIA_USER || process.env.MARIA_USER);

const pool = mariadb.createPool({
     host: process.env.MARIA_HOST, 
     user: process.env.SUPERADMIN_MARIA_USER || process.env.MARIA_USER, 
     password: process.env.SUPERADMIN_MARIA_PASS || process.env.MARIA_PASS,
     port: parseInt(process.env.MARIA_PORT || "3306"),
     connectionLimit: 10,
     connectTimeout: 10000,
     acquireTimeout: 10000,
     allowPublicKeyRetrieval: true
});

module.exports = {
    query: async (sql, params) => {
        let conn;
        try {
            conn = await pool.getConnection();
            await conn.query("USE `user`").catch(() => {});
            const res = await conn.query(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    batch: async (sql, params) => {
        let conn;
        try {
            conn = await pool.getConnection();
            await conn.query("USE `user`").catch(() => {});
            const res = await conn.batch(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    pool
};
