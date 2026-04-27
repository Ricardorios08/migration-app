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
import { API_URL } from './config';

function App() {
  const [user, setUser] = useState(null);
  const [view, setView] = useState('dashboard');
  const [sidebarCollapsed, setSidebarCollapsed] = useState(false);
  const [checkingAuth, setCheckingAuth] = useState(true);

  useEffect(() => {
    const token = localStorage.getItem('nomade_token');
    const savedUser = localStorage.getItem('nomade_user');
    
    if (token && savedUser) {
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
      // Verify token with backend
      axios.get(`${API_URL}/auth/me`)
        .then(res => {
          setUser(res.data.user);
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
    setView('dashboard');
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
        setView={setView} 
        collapsed={sidebarCollapsed} 
        setCollapsed={setSidebarCollapsed} 
        user={user}
        onLogout={handleLogout}
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
          ) : view === 'users' ? (
            <UserManagement />
          ) : view === 'profile' ? (
            <Profile user={user} />
          ) : view === 'logs' ? (
            <LogViewer />
          ) : view === 'integrity' ? (
            <SnapshotAudit />
          ) : (
            <ComerciosExcel />
          )}
        </div>
      </main>
    </div>
  );
}

export default App;
