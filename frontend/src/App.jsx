import React, { useState, useEffect } from 'react';
import axios from 'axios';
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
import Login from './views/Login';
import UserManagement from './views/UserManagement';
import Profile from './views/Profile';
import LogViewer from './views/LogViewer';
import SnapshotAudit from './views/SnapshotAudit';
import BoletoSearch from './views/BoletoSearch';
import ApremioDashboard from './views/ApremioDashboard';
import GastosApremioReport from './views/GastosApremioReport';
import ApremioTables from './views/ApremioTables';
import ApremioSearch from './views/ApremioSearch';
import RubrosComparison from './views/RubrosComparison';
import AuditModule from './views/AuditModule';
import CtacteModule from './views/CtacteModule';
import { API_URL } from './config';

function App() {
  const [user, setUser] = useState(null);
  const [view, setView] = useState('dashboard');
  const [sidebarCollapsed, setSidebarCollapsed] = useState(false);
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
  const [checkingAuth, setCheckingAuth] = useState(true);

  useEffect(() => {
    const token = localStorage.getItem('nomade_token');
    const savedUser = localStorage.getItem('nomade_user');
    
    if (token && savedUser) {
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
      // Verify token with backend
      axios.get(`${API_URL}/auth/me`)
        .then(res => {
          const userData = res.data.user;
          setUser(userData);
          if (userData.rol === 'municipalidad') {
            setView('ctacte_fn');
          }
        })
        .catch(err => {
          console.error('Invalid token', err);
          handleLogout();
        })
        .finally(() => {
          setCheckingAuth(false);
        });
    } else {
      setCheckingAuth(false);
    }
  }, []);

  const handleLogin = (userData) => {
    setUser(userData);
    if (userData.rol === 'municipalidad') {
      setView('ctacte_fn');
    } else {
      setView('dashboard');
    }
  };

  const handleLogout = () => {
    localStorage.removeItem('nomade_token');
    localStorage.removeItem('nomade_user');
    delete axios.defaults.headers.common['Authorization'];
    setUser(null);
    setView('dashboard');
  };

  if (checkingAuth) {
    return <div className="loading-screen">Cargando...</div>;
  }

  if (!user) {
    return <Login onLogin={handleLogin} />;
  }

  return (
    <div className={`dashboard-container ${sidebarCollapsed ? 'sidebar-collapsed' : ''}`}>
      <Sidebar 
        currentView={view} 
        setView={(v) => { setView(v); setMobileMenuOpen(false); }} 
        collapsed={sidebarCollapsed} 
        setCollapsed={setSidebarCollapsed} 
        mobileOpen={mobileMenuOpen}
        setMobileOpen={setMobileMenuOpen}
        user={user}
        onLogout={handleLogout}
      />
      <main className="main-content">
        <Header user={user} onMenuToggle={() => setMobileMenuOpen(!mobileMenuOpen)} />
        <div className="body-content-wrapper">
          {view === 'audit_module' ? (
            <AuditModule setView={setView} />
          ) : view === 'ctacte_module' ? (
            <CtacteModule setView={setView} user={user} />
          ) : view === 'dashboard' ? (
            <AuditDashboard />
          ) : view === 'ctacte' ? (
            <CuentaCorriente />
          ) : view === 'ctacte_fn' ? (
            <CuentaCorrienteFn user={user} />
          ) : view === 'ctacte2' ? (
            <CuentaCorriente2 />
          ) : view === 'persona' ? (
            <PersonaSearch />
          ) : view === 'explorer' ? (
            <TableExplorer />
          ) : view === 'apremio_dashboard' ? (
            <ApremioDashboard setView={setView} />
          ) : view === 'apremios' ? (
            <Apremios />
          ) : view === 'gastos_apremio' ? (
            <GastosApremioReport setView={setView} />
          ) : view === 'apremio_tables' ? (
            <ApremioTables setView={setView} />
          ) : view === 'apremio_search' ? (
            <ApremioSearch />
          ) : view === 'comparison' ? (
            <ComparisonReport />
          ) : view === 'users' ? (
            <UserManagement />
          ) : view === 'profile' ? (
            <Profile user={user} />
          ) : view === 'logs' ? (
            <LogViewer />
          ) : view === 'integrity' ? (
            <SnapshotAudit />
          ) : view === 'boletos' ? (
            <BoletoSearch currentUser={user} />
          ) : view === 'rubros' ? (
            <RubrosComparison />
          ) : (
            <ComerciosExcel />
          )}
        </div>
      </main>
    </div>
  );
}

export default App;
