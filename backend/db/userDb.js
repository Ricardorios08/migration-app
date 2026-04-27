const mariadb = require('mariadb');
const dotenv = require('dotenv');
const path = require('path');

dotenv.config({ path: path.join(__dirname, '../.env') });

const pool = mariadb.createPool({
     host: process.env.MARIA_HOST, 
     user: process.env.MARIA_USER, 
     password: process.env.MARIA_PASS,
     port: parseInt(process.env.MARIA_PORT || "3306"),
     database: 'user',
     connectionLimit: 5
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
    batch: async (sql, params) => {
        let conn;
        try {
            conn = await pool.getConnection();
            const res = await conn.batch(sql, params);
            return res;
        } finally {
            if (conn) conn.release();
        }
    },
    pool
};
