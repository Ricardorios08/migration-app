const express = require('express');
const cors = require('cors');
const dotenv = require('dotenv');
const mariaDB = require('./db/maria');
const postgresDB = require('./db/postgres');
const ctacteRoutes = require('./routes/ctacte');
const excelRoutes = require('./routes/excelTools');
const { startVPN, canReachHost, isVpnAlreadyRunning } = require('./vpn');

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3001;

// Auto-connect VPN if database is not reachable
async function ensureVPN() {
    const dbHost = process.env.MARIA_HOST || process.env.PG_HOST;
    const dbPort = parseInt(process.env.MARIA_PORT || '3306');

    if (!dbHost) return;

    console.log(`[Startup] Checking connectivity to ${dbHost}:${dbPort}...`);
    const reachable = await canReachHost(dbHost, dbPort);

    if (reachable) {
        console.log('[Startup] ✅ Database is reachable, no VPN needed.');
        return;
    }

    console.log('[Startup] ⚠️  Database unreachable. Attempting VPN connection...');
    
    if (isVpnAlreadyRunning()) {
        console.log('[Startup] OpenVPN is running but DB still unreachable. Check VPN config.');
        return;
    }

    try {
        await startVPN();
        // Give the routing table a moment to settle
        await new Promise(r => setTimeout(r, 2000));
        
        const nowReachable = await canReachHost(dbHost, dbPort);
        if (nowReachable) {
            console.log('[Startup] ✅ VPN connected and database is now reachable!');
        } else {
            console.log('[Startup] ⚠️  VPN connected but database still unreachable. Check routes/firewall.');
        }
    } catch (err) {
        console.error('[Startup] VPN connection failed:', err.message);
        console.log('[Startup] Continuing without VPN... DB queries may fail.');
    }
}

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

// Start server with VPN check
async function start() {
    await ensureVPN();
    app.listen(PORT, () => {
        console.log(`Server running on port ${PORT}`);
    });
}

start();
