import React, { useState, useEffect } from 'react';
import { Search, CheckCircle2, AlertCircle, Filter, Database, ArrowRight, FileText, X, Database as DatabaseIcon } from 'lucide-react';
import API_BASE_URL from '../config';

const Apremios = () => {
    const [data, setData] = useState([]);
    const [stats, setStats] = useState(null);
    const [loading, setLoading] = useState(false);
    const [statsLoading, setStatsLoading] = useState(false);
    const [showCopyModal, setShowCopyModal] = useState(false);
    const [pendingIds, setPendingIds] = useState([]);
    const [copyLoading, setCopyLoading] = useState(false);
    const [error, setError] = useState(null);
    const [officeId, setOfficeId] = useState('');
    const [statusFilter, setStatusFilter] = useState('all');
    const [limit, setLimit] = useState(100);
    const [skip, setSkip] = useState(0);
    const [total, setTotal] = useState(0);

    const [offices, setOffices] = useState([]);

    useEffect(() => {
        // Fetch offices for filtering
        fetch(`${API_BASE_URL}/api/ctacte/offices`)
            .then(res => res.json())
            .then(data => setOffices(data))
            .catch(err => console.error('Error fetching offices:', err));
        
        // Fetch initial stats
        fetchStats();
    }, []);

    const fetchStats = async () => {
        setStatsLoading(true);
        try {
            const res = await fetch(`${API_BASE_URL}/api/apremios/stats`);
            const data = await res.json();
            setStats(data);
        } catch (err) {
            console.error('Error fetching stats:', err);
        } finally {
            setStatsLoading(false);
        }
    };

    const handleOpenCopyModal = async () => {
        setShowCopyModal(true);
        setCopyLoading(true);
        try {
            const res = await fetch(`${API_BASE_URL}/api/apremios/pending-ids`);
            const data = await res.json();
            setPendingIds(data.ids || []);
        } catch (err) {
            console.error('Error fetching pending ids:', err);
        } finally {
            setCopyLoading(false);
        }
    };

    const handleCopyToClipboard = () => {
        const text = pendingIds.join(',');
        navigator.clipboard.writeText(text).then(() => {
            alert('Copiado al portapapeles!');
        }).catch(err => {
            console.error('Error copying:', err);
        });
    };

    const fetchData = async () => {
        setLoading(true);
        setError(null);
        try {
            const url = `${API_BASE_URL}/api/apremios/compare?limit=${limit}&skip=${skip}&status=${statusFilter}${officeId ? `&officeId=${officeId}` : ''}`;
            const res = await fetch(url);
            const result = await res.json();
            
            if (res.ok) {
                setData(result.data || []);
                setTotal(result.total || 0);
            } else {
                setError(result.error || 'Error al obtener datos');
            }
        } catch (err) {
            console.error('Fetch error:', err);
            setError('Error de conexión con el servidor');
        } finally {
            setLoading(false);
        }
    };

    useEffect(() => {
        fetchData();
    }, [skip, limit, officeId, statusFilter]);

    const handleSearch = (e) => {
        e.preventDefault();
        setSkip(0);
        fetchData();
        fetchStats(); // Update stats on manual refresh
    };

    return (
        <div className="view-container">
            <div className="view-header">
                <div className="header-title">
                    <Database size={24} color="#2563eb" />
                    <h1>Panel de Apremios & Cédulas</h1>
                </div>
                <div className="header-actions">
                    <form className="search-bar" onSubmit={handleSearch}>
                        <Filter size={18} />
                        <select 
                            value={officeId} 
                            onChange={(e) => { setOfficeId(e.target.value); setSkip(0); }}
                            className="styled-select"
                        >
                            <option value="">Todas las Oficinas</option>
                            {offices.map(off => (
                                <option key={off.CodiOfic} value={off.CodiOfic}>
                                    {off.CodiOfic} - {off.DetaOfic}
                                </option>
                            ))}
                        </select>

                        <select 
                            value={statusFilter} 
                            onChange={(e) => { setStatusFilter(e.target.value); setSkip(0); }}
                            className="styled-select"
                        >
                            <option value="all">Todos los Estados</option>
                            <option value="migrated">Migrados</option>
                            <option value="pending">Pendientes</option>
                        </select>

                        <button type="submit" className="btn-primary" disabled={loading}>
                            <Search size={18} />
                            Actualizar
                        </button>
                    </form>

                    <button className="btn-secondary" onClick={handleOpenCopyModal} title="Copiar lista de IDs pendientes">
                        <FileText size={18} />
                        Exportar IDs
                    </button>
                </div>
            </div>

            {/* QUICK STATS DASHBOARD */}
            <div className="stats-dashboard">
                <div className="stat-card main">
                    <div className="stat-icon legacy"><Database size={24} /></div>
                    <div className="stat-content">
                        <label>Total MariaDB</label>
                        <div className="stat-value">{statsLoading ? '...' : stats?.mariaTotal?.toLocaleString()}</div>
                    </div>
                </div>
                <div className="stat-card main">
                    <div className="stat-icon new"><Database size={24} /></div>
                    <div className="stat-content">
                        <label>Total Postgres</label>
                        <div className="stat-value">{statsLoading ? '...' : stats?.pgTotal?.toLocaleString()}</div>
                    </div>
                </div>
                <div className="stat-card highlight">
                    <div className={`stat-content ${stats?.pendingCount > 0 ? 'warning' : 'success'}`}>
                        <label>Pendientes de Migrar</label>
                        <div className="stat-value">{statsLoading ? '...' : stats?.pendingCount?.toLocaleString()}</div>
                    </div>
                    <div className="stat-progress">
                        <div className="progress-bar" style={{ 
                            width: `${stats ? (stats.migratedCount / stats.mariaTotal * 100) : 0}%`,
                            background: '#10b981'
                        }}></div>
                    </div>
                    <div style={{ fontSize: '0.7rem', marginTop: '5px', textAlign: 'right' }}>
                        {stats ? Math.round(stats.migratedCount / stats.mariaTotal * 100) : 0}% Completado
                    </div>
                </div>
                <div className="stat-card list">
                    <label>Apremios por Estado (MariaDB)</label>
                    <div className="stats-mini-list">
                        {stats?.byEstado?.slice(0, 4).map(est => (
                            <div key={est.id} className="mini-list-item">
                                <span className="item-name">{est.name}</span>
                                <span className="item-value">{est.count.toLocaleString()}</span>
                            </div>
                        ))}
                    </div>
                </div>
            </div>

            <div className="content-card">
                {error && (
                    <div className="error-banner">
                        <AlertCircle size={20} />
                        <span>{error}</span>
                    </div>
                )}

                <div className="table-stats">
                    Mostrando {data.length} de {total} apremios encontrados en MariaDB.
                </div>

                <div className="table-responsive" style={{ maxHeight: 'calc(100vh - 280px)', overflowY: 'auto' }}>
                    <table className="comparison-table">
                        <thead>
                            <tr>
                                <th colSpan="5" className="system-header legacy">SISTEMA ORIGINAL (MARIADB)</th>
                                <th className="divider"></th>
                                <th colSpan="3" className="system-header new">SISTEMA NUEVO (POSTGRESQL)</th>
                                <th className="divider"></th>
                                <th>ESTADO</th>
                            </tr>
                            <tr>
                                <th>Nro / Titular</th>
                                <th>Cuenta / Ofic</th>
                                <th>Reca / Inju</th>
                                <th>Estado</th>
                                <th>Total</th>
                                <th className="divider"></th>
                                <th>Cédula Nro</th>
                                <th>F. Alta</th>
                                <th>Importe</th>
                                <th className="divider"></th>
                                <th>Migrado</th>
                            </tr>
                        </thead>
                        <tbody>
                            {loading ? (
                                <tr>
                                    <td colSpan="12" style={{ textAlign: 'center', padding: '3rem' }}>
                                        <div className="spinner"></div>
                                        Cargando comparativa...
                                    </td>
                                </tr>
                            ) : data.length === 0 ? (
                                <tr>
                                    <td colSpan="12" style={{ textAlign: 'center', padding: '3rem' }}>
                                        No se encontraron apremios con los filtros seleccionados.
                                    </td>
                                </tr>
                            ) : (
                                data.map((item, idx) => (
                                    <tr key={idx} className={item.isMigrated ? 'row-migrated' : 'row-pending'}>
                                        <td style={{ minWidth: '180px' }}>
                                            <div style={{ fontWeight: 'bold' }}>{item.legacy.numeapre}</div>
                                            <div style={{ fontSize: '0.75rem', opacity: 0.8 }}>{item.legacy.tituapre}</div>
                                            <div style={{ fontSize: '0.7rem', color: 'var(--text-dim)' }}>
                                                Emisión: {item.legacy.feemapre ? new Date(item.legacy.feemapre).toLocaleDateString() : '-'}
                                            </div>
                                        </td>
                                        <td>
                                            <div>{item.legacy.cuenctct}</div>
                                            <small style={{ opacity: 0.6 }}>Ofic: {item.legacy.codiofic}</small>
                                        </td>
                                        <td>
                                            <div style={{ fontSize: '0.8rem' }}>Rem: {item.legacy.codireca}</div>
                                            <div style={{ fontSize: '0.8rem', fontWeight: item.legacy.codiinju > 0 ? 500 : 'normal' }}>
                                                Inst: {item.legacy.instanciadeta || item.legacy.codiinju}
                                            </div>
                                        </td>
                                        <td>
                                            <div style={{ fontSize: '0.8rem', fontWeight: 500 }}>{item.legacy.estadodeta || item.legacy.estaapre}</div>
                                            <small style={{ opacity: 0.6 }}>Cod: {item.legacy.estaapre}</small>
                                        </td>
                                        <td className="amount">${parseFloat(item.legacy.totaapre || 0).toFixed(2)}</td>
                                        
                                        <td className="divider"><ArrowRight size={14} opacity={0.3} /></td>
                                        
                                        {item.postgres ? (
                                            <>
                                                <td>
                                                    <div style={{ fontWeight: 500 }}>{item.postgres.cednro}</div>
                                                    <div style={{ fontSize: '0.75rem', color: '#2563eb' }}>{item.postgres.cedtexto}</div>
                                                </td>
                                                <td>{item.postgres.cedfchalt ? new Date(item.postgres.cedfchalt).toLocaleDateString() : '-'}</td>
                                                <td className="amount">
                                                    <span style={{ 
                                                        color: Math.abs(parseFloat(item.legacy.totaapre || 0) - parseFloat(item.postgres.cedimptot || 0)) > 0.1 ? '#ef4444' : 'inherit',
                                                        fontWeight: Math.abs(parseFloat(item.legacy.totaapre || 0) - parseFloat(item.postgres.cedimptot || 0)) > 0.1 ? 'bold' : 'normal'
                                                    }}>
                                                        ${parseFloat(item.postgres.cedimptot || 0).toFixed(2)}
                                                    </span>
                                                </td>
                                            </>
                                        ) : (
                                            <td colSpan="3" style={{ textAlign: 'center', color: '#94a3b8', fontStyle: 'italic' }}>
                                                No encontrado en Postgres (cedid = {item.legacy.numeapre})
                                            </td>
                                        )}

                                        <td className="divider"></td>
                                        
                                        <td style={{ textAlign: 'center' }}>
                                            {item.isMigrated ? (
                                                <div className="status-pill P" title="Cédula encontrada en Postgres">
                                                    <CheckCircle2 size={14} /> Migrado
                                                </div>
                                            ) : (
                                                <div className="status-pill D" title="Falta en Postgres">
                                                    <AlertCircle size={14} /> Pendiente
                                                </div>
                                            )}
                                        </td>
                                    </tr>
                                ))
                            )}
                        </tbody>
                    </table>
                </div>

                <div className="pagination">
                    <button 
                        disabled={skip === 0 || loading} 
                        onClick={() => setSkip(Math.max(0, skip - limit))}
                        className="btn-secondary"
                    >
                        Anterior
                    </button>
                    <span>Página {Math.floor(skip / limit) + 1} de {Math.ceil(total / limit) || 1}</span>
                    <button 
                        disabled={skip + limit >= total || loading} 
                        onClick={() => setSkip(skip + limit)}
                        className="btn-secondary"
                    >
                        Siguiente
                    </button>
                </div>
            </div>

            {/* MODAL PARA COPIAR PENDIENTES */}
            {showCopyModal && (
                <div className="modal-overlay">
                    <div className="modal-content">
                        <div className="modal-header">
                            <h3>IDs Pendientes (MariaDB)</h3>
                            <button className="close-btn" onClick={() => setShowCopyModal(false)}><X size={20} /></button>
                        </div>
                        <div className="modal-body">
                            <p style={{ fontSize: '0.85rem', marginBottom: '1rem', color: 'var(--text-dim)' }}>
                                Lista separada por comas de todos los <code>NumeApre</code> que aún no figuran en la tabla <code>cedula</code> de Postgres.
                            </p>
                            
                            {copyLoading ? (
                                <div style={{ textAlign: 'center', padding: '2rem' }}>Generando lista...</div>
                            ) : (
                                <>
                                    <textarea 
                                        className="copy-area" 
                                        readOnly 
                                        value={pendingIds.join(',')}
                                        onClick={(e) => e.target.select()}
                                    />
                                    <div style={{ marginTop: '1rem', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                                        <span style={{ fontSize: '0.8rem' }}>Total: <strong>{pendingIds.length}</strong> IDs</span>
                                        <button className="btn-primary" onClick={handleCopyToClipboard}>
                                            <FileText size={16} /> Copiar al Portapapeles
                                        </button>
                                    </div>
                                </>
                            )}
                        </div>
                    </div>
                </div>
            )}

            <style dangerouslySetInnerHTML={{ __html: `
                /* ... previous styles ... */
                .modal-overlay {
                    position: fixed;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    background: rgba(0, 0, 0, 0.7);
                    backdrop-filter: blur(4px);
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    z-index: 1000;
                }
                .modal-content {
                    background: #0f172a;
                    border: 1px solid var(--glass-border);
                    border-radius: 1rem;
                    width: 90%;
                    max-width: 600px;
                    box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.5);
                }
                .modal-header {
                    padding: 1.25rem;
                    border-bottom: 1px solid var(--glass-border);
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                }
                .modal-body {
                    padding: 1.25rem;
                }
                .close-btn {
                    background: none;
                    border: none;
                    color: var(--text-dim);
                    cursor: pointer;
                }
                .copy-area {
                    width: 100%;
                    height: 200px;
                    background: #1e293b;
                    border: 1px solid var(--glass-border);
                    border-radius: 0.5rem;
                    color: #e2e8f0;
                    font-family: monospace;
                    font-size: 0.8rem;
                    padding: 1rem;
                    resize: none;
                    outline: none;
                }
                /* Fin modal */
                
                .stats-dashboard {
                    display: grid;
                    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
                    gap: 1rem;
                    margin-bottom: 2rem;
                }
                .stat-card {
                    background: var(--glass);
                    border: 1px solid var(--glass-border);
                    border-radius: 0.75rem;
                    padding: 1.25rem;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                }
                .stat-card.main {
                    flex-direction: row;
                    align-items: center;
                    gap: 1rem;
                }
                .stat-icon {
                    padding: 0.75rem;
                    border-radius: 0.5rem;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                }
                .stat-icon.legacy { background: rgba(16, 185, 129, 0.1); color: #10b981; }
                .stat-icon.new { background: rgba(37, 99, 235, 0.1); color: #2563eb; }
                
                .stat-content label {
                    display: block;
                    font-size: 0.75rem;
                    color: var(--text-dim);
                    text-transform: uppercase;
                    letter-spacing: 0.05em;
                    margin-bottom: 0.25rem;
                }
                .stat-value {
                    font-size: 1.5rem;
                    font-weight: bold;
                    color: var(--text);
                }
                .stat-content.warning .stat-value { color: #f59e0b; }
                .stat-content.success .stat-value { color: #10b981; }

                .stat-progress {
                    height: 6px;
                    background: rgba(255, 255, 255, 0.1);
                    border-radius: 3px;
                    margin-top: 0.75rem;
                    overflow: hidden;
                }
                .progress-bar {
                    height: 100%;
                    transition: width 1s ease-out;
                }

                .stat-card.list label {
                    font-size: 0.75rem;
                    color: var(--text-dim);
                    margin-bottom: 0.75rem;
                    display: block;
                }
                .stats-mini-list {
                    display: flex;
                    flex-direction: column;
                    gap: 0.4rem;
                }
                .mini-list-item {
                    display: flex;
                    justify-content: space-between;
                    font-size: 0.8rem;
                    padding-bottom: 0.25rem;
                    border-bottom: 1px solid rgba(255, 255, 255, 0.05);
                }
                .mini-list-item:last-child { border-bottom: none; }
                .item-name { color: var(--text-dim); }
                .item-value { font-weight: 600; }

                .comparison-table {
                    width: 100%;
                    border-collapse: collapse;
                    font-size: 0.9rem;
                }
                .comparison-table th, .comparison-table td {
                    padding: 0.75rem;
                    text-align: left;
                    border-bottom: 1px solid var(--border);
                }
                .system-header {
                    text-align: center !important;
                    font-weight: bold;
                    letter-spacing: 0.05em;
                    padding: 0.5rem !important;
                }
                .system-header.legacy {
                    background: rgba(16, 185, 129, 0.1);
                    color: #10b981;
                }
                .system-header.new {
                    background: rgba(37, 99, 235, 0.1);
                    color: #2563eb;
                }
                .divider {
                    width: 20px;
                    padding: 0 !important;
                    border-bottom: none !important;
                    text-align: center !important;
                }
                .row-migrated {
                    background: rgba(16, 185, 129, 0.02);
                }
                .row-pending {
                    background: rgba(239, 68, 68, 0.02);
                }
                .amount {
                    font-family: monospace;
                    font-weight: 500;
                }
                .table-stats {
                    margin-bottom: 1rem;
                    font-size: 0.85rem;
                    color: var(--text-dim);
                }
                .pagination {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    gap: 1.5rem;
                    margin-top: 1.5rem;
                }
                .office-select, .styled-select {
                    background: #1e293b;
                    border: 1px solid var(--glass-border);
                    color: white;
                    padding: 0.45rem 0.8rem;
                    border-radius: 0.5rem;
                    outline: none;
                    cursor: pointer;
                    min-width: 150px;
                    font-size: 0.85rem;
                }
                .styled-select option {
                    background: #1e293b;
                    color: white;
                    padding: 10px;
                }
                .styled-select:focus {
                    border-color: #2563eb;
                    box-shadow: 0 0 0 2px rgba(37, 99, 235, 0.2);
                }
            `}} />
        </div>
    );
};

export default Apremios;
