import React, { useState, useEffect } from 'react';
import { Database, Zap, Activity, Menu } from 'lucide-react';
import API_BASE_URL from '../config';

const Header = ({ user, onMenuToggle }) => {
    const [status, setStatus] = useState({ maria: 'pending', postgres: 'pending' });

    useEffect(() => {
        const checkConnections = async () => {
            try {
                const response = await fetch(`${API_BASE_URL}/api/test-connections`);
                const data = await response.json();
                setStatus({
                    maria: data.maria.status,
                    postgres: data.postgres.status
                });
            } catch (error) {
                setStatus({ maria: 'failed', postgres: 'failed' });
            }
        };

        checkConnections();
        const interval = setInterval(checkConnections, 30000);
        return () => clearInterval(interval);
    }, []);

    const StatusDot = ({ type }) => (
        <div className={`status-dot ${type}`}></div>
    );

    return (
        <header className="header">
            <div style={{ display: 'flex', alignItems: 'center', gap: '1rem' }}>
                <button className="menu-toggle" onClick={onMenuToggle}>
                    <Menu size={24} />
                </button>
                <div className="header-title">Migration Overview</div>
            </div>
            {user?.rol !== 'municipalidad' && (
                <div className="connection-status">
                    <div className="status-indicator">
                        <Database size={16} color="#10b981" />
                        <span>MariaDB: 192.168.133.15</span>
                        <StatusDot type={status.maria} />
                    </div>
                    <div className="status-indicator">
                        <Database size={16} color="#2563eb" />
                        <span>Postgres: aush6.intranet</span>
                        <StatusDot type={status.postgres} />
                    </div>
                    <div className="status-indicator" style={{ border: 'none', background: 'transparent' }}>
                        <Activity size={18} color="var(--primary)" />
                    </div>
                </div>
            )}
        </header>
    );
};

export default Header;
