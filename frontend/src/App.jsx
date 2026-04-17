import React, { useState } from 'react';
import Sidebar from './components/Sidebar';
import Header from './components/Header';
import CuentaCorriente from './views/CuentaCorriente';
import ComerciosExcel from './views/ComerciosExcel';
import PersonaSearch from './views/PersonaSearch';
import TableExplorer from './views/TableExplorer';

function App() {
  const [view, setView] = useState('dashboard');
  const [sidebarCollapsed, setSidebarCollapsed] = useState(false);

  return (
    <div className={`dashboard-container ${sidebarCollapsed ? 'sidebar-collapsed' : ''}`}>
      <Sidebar 
        currentView={view} 
        setView={setView} 
        collapsed={sidebarCollapsed} 
        setCollapsed={setSidebarCollapsed} 
      />
      <main className="main-content">
        <Header />
        <div className="body-content-wrapper" style={{ flex: 1, overflow: 'hidden' }}>
          {view === 'dashboard' ? (
            <div className="body-content">
              {/* ... existing dashboard content ... */}
              <div className="welcome-card">
                <h1>Panel de Migración</h1>
                <p>
                  Bienvenido al sistema de comparación de datos. Utiliza el menú lateral para navegar por las diferentes tablas y entidades en proceso de migración.
                </p>
                
                <h2 className="section-title">Infraestructura</h2>
                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.5rem', marginTop: '1rem' }}>
                  <div style={{ padding: '1.5rem', background: 'var(--glass)', borderRadius: '0.75rem', border: '1px solid var(--glass-border)' }}>
                    <h3 style={{ marginBottom: '0.5rem', color: '#10b981' }}>MariaDB (Origen)</h3>
                    <p style={{ fontSize: '0.9rem' }}>Host: 192.168.40.54</p>
                    <p style={{ fontSize: '0.9rem' }}>Puerto: 3306</p>
                  </div>
                  <div style={{ padding: '1.5rem', background: 'var(--glass)', borderRadius: '0.75rem', border: '1px solid var(--glass-border)' }}>
                    <h3 style={{ marginBottom: '0.5rem', color: '#2563eb' }}>PostgreSQL (Destino)</h3>
                    <p style={{ fontSize: '0.9rem' }}>Host: aush6.intranet</p>
                    <p style={{ fontSize: '0.9rem' }}>Puerto: 5432</p>
                  </div>
                </div>

                <h2 className="section-title">Manual de Uso</h2>
                <p>
                  Pronto podrás ver aquí la comparación de las tablas seleccionadas. Por ahora, el menú <strong>ctacte</strong> está habilitado como acceso principal.
                </p>
              </div>
            </div>
          ) : view === 'ctacte' ? (
            <CuentaCorriente />
          ) : view === 'persona' ? (
            <PersonaSearch />
          ) : view === 'explorer' ? (
            <TableExplorer />
          ) : (
            <ComerciosExcel />
          )}
        </div>
      </main>
    </div>
  );
}

export default App;
