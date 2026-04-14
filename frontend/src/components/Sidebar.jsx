import { LayoutDashboard, Database, FileText, ChevronRight, ChevronLeft, PanelLeftClose, PanelLeftOpen } from 'lucide-react';

const Sidebar = ({ currentView, setView, collapsed, setCollapsed }) => {
  return (
    <aside className={`sidebar ${collapsed ? 'collapsed' : ''}`}>
      <div className="sidebar-header">
        <Database size={24} color="#2563eb" />
        {!collapsed && <span>MigrationTool</span>}
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
          {!collapsed && <span>Cta-Cte</span>}
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
