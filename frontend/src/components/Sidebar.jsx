import React from 'react';
import { 
  LayoutDashboard, 
  Database, 
  FileText, 
  ChevronRight, 
  PanelLeftClose, 
  PanelLeftOpen, 
  User, 
  Search, 
  Scale, 
  Code, 
  Users, 
  LogOut, 
  UserCircle,
  ShieldCheck
} from 'lucide-react';

const Sidebar = ({ currentView, setView, collapsed, setCollapsed, user, onLogout }) => {
  return (
    <aside className={`sidebar ${collapsed ? 'collapsed' : ''}`}>
      <div className="sidebar-header">
        {!collapsed && <span>Nomade - Guaymallen</span>}
        <button
          className="collapse-toggle"
          onClick={() => setCollapsed(!collapsed)}
          title={collapsed ? "Expandir" : "Colapsar"}
        >
          {collapsed ? <PanelLeftOpen size={18} /> : <PanelLeftClose size={18} />}
        </button>
      </div>

      <nav className="sidebar-menu">
        <div
          className={`menu-item ${currentView === 'dashboard' ? 'active' : ''}`}
          onClick={() => setView('dashboard')}
          title={collapsed ? "Dashboard" : ""}
        >
          <LayoutDashboard size={20} />
          {!collapsed && <span>Dashboard</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>
        
        <div
          className={`menu-item ${currentView === 'ctacte' ? 'active' : ''}`}
          onClick={() => setView('ctacte')}
          title={collapsed ? "Cuenta Corriente" : ""}
        >
          <FileText size={20} />
          {!collapsed && <span>Cta-Cte (PRUEBA)</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>

        <div
          className={`menu-item ${currentView === 'ctacte_fn' ? 'active' : ''}`}
          onClick={() => setView('ctacte_fn')}
          title={collapsed ? "Cuenta Corriente (fn)" : ""}
        >
          <FileText size={20} color="#3b82f6" />
          {!collapsed && <span style={{ color: '#3b82f6' }}>Cta-Cte (fn)</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>

        <div
          className={`menu-item ${currentView === 'apremios' ? 'active' : ''}`}
          onClick={() => setView('apremios')}
          title={collapsed ? "Apremios" : ""}
        >
          <Scale size={20} />
          {!collapsed && <span>Apremios</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>

        <div
          className={`menu-item ${currentView === 'comparison' ? 'active' : ''}`}
          onClick={() => setView('comparison')}
          title={collapsed ? "Compara Ctacte Listado" : ""}
        >
          <LayoutDashboard size={20} color="#10b981" />
          {!collapsed && <span>Compara Ctacte Listado</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>

        <div
          className={`menu-item ${currentView === 'integrity' ? 'active' : ''}`}
          onClick={() => setView('integrity')}
          title={collapsed ? "Auditoría Masiva (Snapshots)" : ""}
        >
          <ShieldCheck size={20} color="#7c4dff" />
          {!collapsed && <span style={{ color: '#7c4dff' }}>Auditoría Masiva (Snapshots)</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>

        <div
          className={`menu-item ${currentView === 'persona' ? 'active' : ''}`}
          onClick={() => setView('persona')}
          title={collapsed ? "Persona (InfoGov)" : ""}
        >
          <User size={20} />
          {!collapsed && <span>Persona (InfoGov)</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>

        <div
          className={`menu-item ${currentView === 'explorer' ? 'active' : ''}`}
          onClick={() => setView('explorer')}
          title={collapsed ? "Explorador" : ""}
        >
          <Search size={20} />
          {!collapsed && <span>Explorador</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>

        <div
          className={`menu-item ${currentView === 'excel' ? 'active' : ''}`}
          onClick={() => setView('excel')}
          title={collapsed ? "Excel Comercios" : ""}
        >
          <LayoutDashboard size={20} style={{ color: '#10b981' }} />
          {!collapsed && <span>Excel Comercios</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>

        <div className="sidebar-separator" style={{ height: '1px', background: 'var(--border)', margin: '1rem 0' }}></div>

        {/* User Specific Items */}
        {user?.rol === 'admin' && (
          <div
            className={`menu-item ${currentView === 'users' ? 'active' : ''}`}
            onClick={() => setView('users')}
            title={collapsed ? "Usuarios" : ""}
          >
            <Users size={20} color="#fcd34d" />
            {!collapsed && <span style={{ color: '#fcd34d' }}>Gestión Usuarios</span>}
            {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
          </div>
        )}

        {user?.rol === 'superadmin' && (
          <>
            <div
              className={`menu-item ${currentView === 'users' ? 'active' : ''}`}
              onClick={() => setView('users')}
              title={collapsed ? "Usuarios" : ""}
            >
              <Users size={20} color="#fcd34d" />
              {!collapsed && <span style={{ color: '#fcd34d' }}>Gestión Usuarios</span>}
              {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
            </div>
            <div
              className={`menu-item ${currentView === 'logs' ? 'active' : ''}`}
              onClick={() => setView('logs')}
              title={collapsed ? "Auditoría" : ""}
            >
              <Database size={20} color="#10b981" />
              {!collapsed && <span style={{ color: '#10b981' }}>Auditoría Sistema</span>}
              {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
            </div>
          </>
        )}

        <div
          className={`menu-item ${currentView === 'profile' ? 'active' : ''}`}
          onClick={() => setView('profile')}
          title={collapsed ? "Mi Perfil" : ""}
        >
          <UserCircle size={20} />
          {!collapsed && <span>Mi Perfil</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>

        <div
          className="menu-item logout-item"
          onClick={onLogout}
          title={collapsed ? "Cerrar Sesión" : ""}
          style={{ marginTop: 'auto', color: '#ef4444' }}
        >
          <LogOut size={20} />
          {!collapsed && <span>Cerrar Sesión</span>}
        </div>
      </nav>

      {!collapsed && (
        <div style={{ padding: '1rem 1.5rem', borderTop: '1px solid var(--border)' }}>
          <p style={{ fontSize: '0.75rem', color: 'var(--text-dim)' }}>
            Usuario: <span style={{ color: 'var(--primary)', fontWeight: 600 }}>{user?.nombre_usuario}</span>
          </p>
        </div>
      )}
    </aside>
  );
};

export default Sidebar;
