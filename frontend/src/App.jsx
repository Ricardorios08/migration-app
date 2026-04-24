import React, { useState } from 'react';
import Sidebar from './components/Sidebar';
import Header from './components/Header';
import CuentaCorriente from './views/CuentaCorriente';
import CuentaCorrienteFn from './views/CuentaCorrienteFn';
import CuentaCorriente2 from './views/CuentaCorriente2';
import ComerciosExcel from './views/ComerciosExcel';
import PersonaSearch from './views/PersonaSearch';
import TableExplorer from './views/TableExplorer';
import Apremios from './views/Apremios';
import ComparisonReport from './views/ComparisonReport';

import AuditDashboard from './views/AuditDashboard';

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
            <AuditDashboard />
          ) : view === 'ctacte' ? (
            <CuentaCorriente />
          ) : view === 'ctacte_fn' ? (
            <CuentaCorrienteFn />
          ) : view === 'ctacte2' ? (
            <CuentaCorriente2 />
          ) : view === 'persona' ? (
            <PersonaSearch />
          ) : view === 'explorer' ? (
            <TableExplorer />
          ) : view === 'apremios' ? (
            <Apremios />
          ) : view === 'comparison' ? (
            <ComparisonReport />
          ) : (
            <ComerciosExcel />
          )}
        </div>
      </main>
    </div>
  );
}

export default App;
