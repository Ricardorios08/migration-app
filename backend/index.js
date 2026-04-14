const express = require('express');
const cors = require('cors');
const dotenv = require('dotenv');
const mariaDB = require('./db/maria');
const postgresDB = require('./db/postgres');
const ctacteRoutes = require('./routes/ctacte');
const excelRoutes = require('./routes/excelTools');

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3001;

app.use(cors());
app.use(express.json());

app.use('/api/ctacte', ctacteRoutes);
app.use('/api/excel', excelRoutes);

// Health check / Connection test
app.get('/api/test-connections', async (req, res) => {
    let result = {
        maria: { status: 'testing', error: null },
        postgres: { status: 'testing', error: null }
    };

    try {
        await mariaDB.query('SELECT 1');
        result.maria.status = 'connected';
    } catch (err) {
        result.maria.status = 'failed';
        result.maria.error = err.message;
    }

    try {
        await postgresDB.query('SELECT 1');
        result.postgres.status = 'connected';
    } catch (err) {
        result.postgres.status = 'failed';
        result.postgres.error = err.message;
    }

    res.json(result);
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
