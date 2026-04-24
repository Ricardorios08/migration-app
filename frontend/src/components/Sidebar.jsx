import { LayoutDashboard, Database, FileText, ChevronRight, ChevronLeft, PanelLeftClose, PanelLeftOpen, User, Search, Scale, Code } from 'lucide-react';

const Sidebar = ({ currentView, setView, collapsed, setCollapsed }) => {
  return (
    <aside className={`sidebar ${collapsed ? 'collapsed' : ''}`}>
      <div className="sidebar-header">
        {!collapsed && <span>Migration Nomade</span>}
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
{/*
        <div
          className={`menu-item ${currentView === 'ctacte2' ? 'active' : ''}`}
          onClick={() => setView('ctacte2')}
          title={collapsed ? "Cta-Cte (fnDeuda)" : ""}
        >
          <Code size={20} color="#f59e0b" />
          {!collapsed && <span style={{ color: '#f59e0b' }}>Cta-Cte (SP)</span>}
          {!collapsed && <ChevronRight size={16} style={{ marginLeft: 'auto', opacity: 0.5 }} />}
        </div>
*/}
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
      </nav>

      {!collapsed && (
        <div style={{ padding: '1.5rem', marginTop: 'auto', borderTop: '1px solid var(--border)' }}>
          <p style={{ fontSize: '0.75rem', color: 'var(--text-dim)' }}>v1.0.0 Alpha</p>
        </div>
      )}
    </aside>
  );
};

export default Sidebar;
