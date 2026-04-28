import React, { useState } from 'react';
import axios from 'axios';
import { Search, FileText, Calendar, User, Hash, Filter, X, Info, CheckCircle, AlertCircle, Printer, History, Landmark, Clock } from 'lucide-react';
import { API_URL } from '../config';

const BoletoSearch = ({ currentUser }) => {
    const [filters, setFilters] = useState({
        officeId: '',
        account: '',
        personId: '',
        period: '',
        status: '',
        numeBole: ''
    });
    const [results, setResults] = useState([]);
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState(null);
    
    // Modal State
    const [showModal, setShowModal] = useState(false);
    const [boletoData, setBoletoData] = useState(null); // { header, concepts, reprints }
    const [loadingDetails, setLoadingDetails] = useState(false);

    const handleSearch = async (e) => {
        if (e) e.preventDefault();
        setLoading(true);
        setError(null);
        try {
            const params = {};
            if (filters.officeId) params.officeId = filters.officeId;
            if (filters.account) params.account = filters.account;
            if (filters.personId) params.personId = filters.personId;
            if (filters.period) params.period = filters.period;
            if (filters.status) params.status = filters.status;
            if (filters.numeBole) params.numeBole = filters.numeBole;

            const res = await axios.get(`${API_URL}/boletos/search`, { params });
            setResults(res.data);
        } catch (err) {
            setError(err.response?.data?.error || err.message);
        } finally {
            setLoading(false);
        }
    };

    const fetchFullInfo = async (boleto) => {
        setShowModal(true);
        setLoadingDetails(true);
        setBoletoData(null);
        try {
            const res = await axios.get(`${API_URL}/boletos/details/${boleto.PeriBole}/${boleto.NumeBole}`);
            setBoletoData(res.data);
        } catch (err) {
            console.error("Error fetching full info:", err);
        } finally {
            setLoadingDetails(false);
        }
    };

    const handlePrintAudit = async () => {
        if (!boletoData || !boletoData.header) return;
        try {
            await axios.post(`${API_URL}/boletos/audit-print`, {
                periBole: boletoData.header.PeriBole,
                numeBole: boletoData.header.NumeBole,
                user: currentUser?.nombre_usuario || 'desconocido'
            });
            alert("Acción de impresión registrada en auditoría (tabla ticket).");
            // Refresh info to show new reprint in history
            fetchFullInfo(boletoData.header);
        } catch (err) {
            console.error("Error auditing print:", err);
        }
    };

    const formatCurrency = (val) => {
        return new Intl.NumberFormat('es-AR', { style: 'currency', currency: 'ARS' }).format(val || 0);
    };

    const formatDate = (dateStr) => {
        if (!dateStr) return 'N/A';
        return new Date(dateStr).toLocaleDateString('es-AR');
    };

    const formatTime = (dateStr) => {
        if (!dateStr) return '';
        return new Date(dateStr).toLocaleTimeString('es-AR', { hour: '2-digit', minute: '2-digit' });
    };

    const getStatusColor = (status) => {
        switch (status) {
            case 'Pagado': return '#10b981';
            case 'Anulado Caja':
            case 'Anulado Rentas': return '#ef4444';
            case 'Emitido': return '#3b82f6';
            case 'Actualizado': return '#f59e0b';
            default: return 'var(--text-dim)';
        }
    };

    return (
        <div className="body-content" style={{ overflowY: 'auto', maxHeight: 'calc(100vh - 80px)' }}>
            <div style={{ marginBottom: '2rem' }}>
                <h1 style={{ fontSize: '1.8rem', fontWeight: '800', marginBottom: '0.5rem', display: 'flex', alignItems: 'center', gap: '0.75rem' }}>
                    <FileText size={32} color="var(--primary)" />
                    Buscador de Boletos (InfoBoleto)
                </h1>
                <p style={{ color: 'var(--text-dim)' }}>Consulta histórica y trazabilidad de pagos heredada del sistema Legacy.</p>
            </div>

            {/* Filters Card */}
            <div className="data-card" style={{ padding: '2rem', marginBottom: '2rem' }}>
                <form onSubmit={handleSearch} style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(180px, 1fr))', gap: '1.5rem' }}>
                    <div className="form-group">
                        <label style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem', marginBottom: '0.5rem', color: 'var(--text-dim)' }}>
                            <Hash size={14} /> Oficina
                        </label>
                        <input 
                            type="number" 
                            className="input-field" 
                            placeholder="Ej: 1" 
                            value={filters.officeId}
                            onChange={(e) => setFilters({...filters, officeId: e.target.value})}
                        />
                    </div>
                    <div className="form-group">
                        <label style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem', marginBottom: '0.5rem', color: 'var(--text-dim)' }}>
                            <User size={14} /> Cuenta / Padrón
                        </label>
                        <input 
                            type="text" 
                            className="input-field" 
                            placeholder="Ej: 215" 
                            value={filters.account}
                            onChange={(e) => setFilters({...filters, account: e.target.value})}
                        />
                    </div>
                    <div className="form-group">
                        <label style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem', marginBottom: '0.5rem', color: 'var(--text-dim)' }}>
                            <FileText size={14} /> Boleto #
                        </label>
                        <input 
                            type="number" 
                            className="input-field" 
                            placeholder="Número exacto" 
                            value={filters.numeBole}
                            onChange={(e) => setFilters({...filters, numeBole: e.target.value})}
                        />
                    </div>
                    <div className="form-group">
                        <label style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem', marginBottom: '0.5rem', color: 'var(--text-dim)' }}>
                            <Calendar size={14} /> Año / Periodo
                        </label>
                        <input 
                            type="number" 
                            className="input-field" 
                            placeholder="Ej: 2024" 
                            value={filters.period}
                            onChange={(e) => setFilters({...filters, period: e.target.value})}
                        />
                    </div>
                    <div className="form-group">
                        <label style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem', marginBottom: '0.5rem', color: 'var(--text-dim)' }}>
                            <Filter size={14} /> Estado
                        </label>
                        <select 
                            className="input-field" 
                            value={filters.status}
                            onChange={(e) => setFilters({...filters, status: e.target.value})}
                        >
                            <option value="">Todos los estados</option>
                            <option value="Generado">Generado</option>
                            <option value="Emitido">Emitido</option>
                            <option value="Pagado">Pagado</option>
                            <option value="Actualizado">Actualizado</option>
                            <option value="Anulado Caja">Anulado Caja</option>
                            <option value="Anulado Rentas">Anulado Rentas</option>
                        </select>
                    </div>
                    <div style={{ display: 'flex', alignItems: 'flex-end' }}>
                        <button type="submit" className="btn btn-primary" disabled={loading} style={{ width: '100%', height: '42px' }}>
                            {loading ? 'Buscando...' : <><Search size={18} /> Buscar</>}
                        </button>
                    </div>
                </form>
            </div>

            {error && (
                <div style={{ padding: '1rem', background: 'rgba(239, 68, 68, 0.1)', border: '1px solid #ef4444', color: '#f87171', borderRadius: '0.75rem', marginBottom: '2rem' }}>
                    {error}
                </div>
            )}

            {/* Results Table */}
            <div className="data-card" style={{ overflow: 'hidden' }}>
                <table className="user-table" style={{ width: '100%', borderCollapse: 'collapse' }}>
                    <thead>
                        <tr style={{ background: 'rgba(255,255,255,0.02)' }}>
                            <th style={{ padding: '1rem' }}>Boleto #</th>
                            <th style={{ padding: '1rem' }}>Contribuyente</th>
                            <th style={{ padding: '1rem' }}>Cuenta</th>
                            <th style={{ padding: '1rem' }}>Estado</th>
                            <th style={{ padding: '1rem' }}>Pago Real</th>
                            <th style={{ padding: '1rem', textAlign: 'right' }}>Total</th>
                            <th style={{ padding: '1rem', textAlign: 'center' }}>InfoBoleto</th>
                        </tr>
                    </thead>
                    <tbody>
                        {results.length === 0 && !loading ? (
                            <tr>
                                <td colSpan="7" style={{ padding: '3rem', textAlign: 'center', color: 'var(--text-dim)', opacity: 0.5 }}>
                                    No hay resultados. Ingresa filtros y presiona Buscar.
                                </td>
                            </tr>
                        ) : results.map((b) => (
                            <tr key={`${b.PeriBole}-${b.NumeBole}`} className="table-row" style={{ borderBottom: '1px solid var(--border)' }}>
                                <td style={{ padding: '1rem' }}>
                                    <div style={{ fontWeight: '700', color: 'white' }}>{b.NumeBole}</div>
                                    <div style={{ fontSize: '0.75rem', color: 'var(--text-dim)' }}>Año: {b.PeriBole}</div>
                                </td>
                                <td style={{ padding: '1rem' }}>
                                    <div style={{ fontWeight: '600', color: '#f8fafc' }}>{b.NombreContribuyente || 'N/A'}</div>
                                    <div style={{ fontSize: '0.75rem', color: 'var(--text-dim)' }}>Cucu: {b.CucuPers}</div>
                                </td>
                                <td style={{ padding: '1rem' }}>
                                    <div style={{ fontWeight: '600', color: 'var(--primary)' }}>#{b.CuenCtct.trim()}</div>
                                    <div style={{ fontSize: '0.7rem', opacity: 0.6 }}>Ofic: {b.CodiOfic}</div>
                                </td>
                                <td style={{ padding: '1rem' }}>
                                    <span style={{ 
                                        padding: '0.25rem 0.75rem', 
                                        borderRadius: '99px', 
                                        fontSize: '0.75rem', 
                                        fontWeight: '700',
                                        background: `${getStatusColor(b.EstaBole)}20`,
                                        color: getStatusColor(b.EstaBole),
                                        border: `1px solid ${getStatusColor(b.EstaBole)}40`
                                    }}>
                                        {b.EstaBole}
                                    </span>
                                </td>
                                <td style={{ padding: '1rem' }}>
                                    {b.FechaPagoReal ? (
                                        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', color: '#10b981' }}>
                                            <CheckCircle size={16} />
                                            <div>
                                                <div style={{ fontWeight: '600', fontSize: '0.9rem' }}>{formatDate(b.FechaPagoReal)}</div>
                                                <div style={{ fontSize: '0.7rem', opacity: 0.7 }}>Acta: {b.ActaPago}</div>
                                            </div>
                                        </div>
                                    ) : (
                                        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', color: 'var(--text-dim)', opacity: 0.5 }}>
                                            <AlertCircle size={16} />
                                            <span>Sin pago</span>
                                        </div>
                                    )}
                                </td>
                                <td style={{ padding: '1rem', textAlign: 'right', fontWeight: '700', color: 'white' }}>
                                    {formatCurrency(b.TotaBole)}
                                </td>
                                <td style={{ padding: '1rem', textAlign: 'center' }}>
                                    <button 
                                        onClick={() => fetchFullInfo(b)}
                                        className="btn btn-secondary" 
                                        style={{ padding: '0.4rem', borderRadius: '8px' }}
                                        title="Ver InfoBoleto Completo"
                                    >
                                        <Info size={18} />
                                    </button>
                                </td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>

            {/* InfoBoleto Modal */}
            {showModal && (
                <div className="modal-overlay" onClick={() => setShowModal(false)}>
                    <div className="modal-content" style={{ width: '900px', maxWidth: '95%', maxHeight: '90vh', display: 'flex', flexDirection: 'column' }} onClick={e => e.stopPropagation()}>
                        <div className="modal-header">
                            <div>
                                <h2 style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                                    <FileText size={24} /> InfoBoleto #{boletoData?.header?.NumeBole}
                                </h2>
                                <p style={{ fontSize: '0.8rem', color: 'var(--text-dim)' }}>Detalle completo y trazabilidad de auditoría</p>
                            </div>
                            <div style={{ display: 'flex', gap: '1rem', alignItems: 'center' }}>
                                <button className="btn btn-primary" onClick={handlePrintAudit} disabled={!boletoData}>
                                    <Printer size={18} /> Reimprimir
                                </button>
                                <button className="close-btn" onClick={() => setShowModal(false)}><X size={24} /></button>
                            </div>
                        </div>
                        
                        <div className="modal-body" style={{ overflowY: 'auto', padding: '1.5rem' }}>
                            {loadingDetails ? (
                                <div style={{ padding: '3rem', textAlign: 'center' }}>Cargando información del legado...</div>
                            ) : !boletoData ? (
                                <div style={{ padding: '3rem', textAlign: 'center' }}>No hay datos.</div>
                            ) : (
                                <div style={{ display: 'grid', gridTemplateColumns: '1fr 300px', gap: '1.5rem' }}>
                                    {/* Left Column: Header & Concepts */}
                                    <div>
                                        <div className="data-card" style={{ padding: '1.5rem', marginBottom: '1.5rem', background: 'rgba(255,255,255,0.03)' }}>
                                            <h3 style={{ fontSize: '1rem', marginBottom: '1rem', color: 'var(--primary)', borderBottom: '1px solid var(--border)', paddingBottom: '0.5rem' }}>DATOS DE CABECERA</h3>
                                            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1rem' }}>
                                                <div className="info-item">
                                                    <label>Contribuyente</label>
                                                    <span style={{ fontSize: '1.1rem', fontWeight: '700' }}>{boletoData.header.NombreContribuyente}</span>
                                                </div>
                                                <div className="info-item">
                                                    <label>CUCU / CUIT</label>
                                                    <span>{boletoData.header.CucuPers}</span>
                                                </div>
                                                <div className="info-item">
                                                    <label>Cuenta / Padrón</label>
                                                    <span>#{boletoData.header.CuenCtct.trim()} (Ofic {boletoData.header.CodiOfic})</span>
                                                </div>
                                                <div className="info-item">
                                                    <label>Vencimiento</label>
                                                    <span>{formatDate(boletoData.header.FeveBole)}</span>
                                                </div>
                                            </div>
                                        </div>

                                        <h3 style={{ fontSize: '1rem', marginBottom: '1rem', display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                                            <FileText size={18} /> CONCEPTOS ABONADOS
                                        </h3>
                                        <table className="user-table">
                                            <thead>
                                                <tr>
                                                    <th>Periodo</th>
                                                    <th>Descripción</th>
                                                    <th style={{ textAlign: 'right' }}>Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {boletoData.concepts.map((c, i) => (
                                                    <tr key={i}>
                                                        <td>{c.PeriCtct}/{c.BimeCtct}</td>
                                                        <td>
                                                            <div style={{ fontWeight: '600' }}>{c.DetaConc}</div>
                                                            <div style={{ fontSize: '0.7rem', color: 'var(--text-dim)' }}>Cód: {c.CodiConc}</div>
                                                        </td>
                                                        <td style={{ textAlign: 'right', fontWeight: '700' }}>{formatCurrency(c.Total)}</td>
                                                    </tr>
                                                ))}
                                            </tbody>
                                            <tfoot>
                                                <tr style={{ background: 'rgba(16, 185, 129, 0.1)' }}>
                                                    <td colSpan="2" style={{ textAlign: 'right', padding: '0.75rem', fontWeight: '800' }}>TOTAL BOLETO:</td>
                                                    <td style={{ textAlign: 'right', padding: '0.75rem', fontWeight: '800', color: '#10b981' }}>{formatCurrency(boletoData.header.TotaBole)}</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>

                                    {/* Right Column: Payment & History */}
                                    <div style={{ display: 'flex', flexDirection: 'column', gap: '1.5rem' }}>
                                        {/* Payment Status */}
                                        <div className="data-card" style={{ padding: '1.25rem', borderLeft: `4px solid ${boletoData.header.FechaCobro ? '#10b981' : '#64748b'}` }}>
                                            <h4 style={{ fontSize: '0.8rem', color: 'var(--text-dim)', marginBottom: '1rem', textTransform: 'uppercase' }}>Estado de Cobro</h4>
                                            {boletoData.header.FechaCobro ? (
                                                <div style={{ display: 'flex', flexDirection: 'column', gap: '0.75rem' }}>
                                                    <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', color: '#10b981' }}>
                                                        <CheckCircle size={20} />
                                                        <span style={{ fontWeight: '700' }}>PAGADO</span>
                                                    </div>
                                                    <div style={{ fontSize: '0.85rem' }}>
                                                        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', marginBottom: '0.25rem' }}>
                                                            <Clock size={14} color="var(--text-dim)" /> {formatDate(boletoData.header.FechaCobro)} {formatTime(boletoData.header.HoraCobro)}
                                                        </div>
                                                        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', marginBottom: '0.25rem' }}>
                                                            <User size={14} color="var(--text-dim)" /> {boletoData.header.UsuarioCobro}
                                                        </div>
                                                        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                                                            <Landmark size={14} color="var(--text-dim)" /> {boletoData.header.Recaudador || 'Caja Municipal'}
                                                        </div>
                                                    </div>
                                                </div>
                                            ) : (
                                                <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', color: 'var(--text-dim)' }}>
                                                    <AlertCircle size={20} />
                                                    <span style={{ fontWeight: '700' }}>PENDIENTE</span>
                                                </div>
                                            )}
                                        </div>

                                        {/* Reprint History */}
                                        <div className="data-card" style={{ padding: '1.25rem' }}>
                                            <h4 style={{ fontSize: '0.8rem', color: 'var(--text-dim)', marginBottom: '1rem', textTransform: 'uppercase', display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                                                <History size={16} /> Historial Reimpresión
                                            </h4>
                                            <div style={{ maxHeight: '200px', overflowY: 'auto' }}>
                                                {boletoData.reprints.length === 0 ? (
                                                    <p style={{ fontSize: '0.75rem', color: 'var(--text-dim)', textAlign: 'center', padding: '1rem' }}>No hay registros de reimpresión.</p>
                                                ) : (
                                                    <ul style={{ listStyle: 'none', padding: 0, margin: 0 }}>
                                                        {boletoData.reprints.map((r, i) => (
                                                            <li key={i} style={{ padding: '0.5rem 0', borderBottom: '1px solid var(--border)', fontSize: '0.8rem' }}>
                                                                <div style={{ fontWeight: '600' }}>{r.AltaUsua}</div>
                                                                <div style={{ fontSize: '0.7rem', color: 'var(--text-dim)' }}>{formatDate(r.AltaFeho)} {formatTime(r.AltaFeho)}</div>
                                                            </li>
                                                        ))}
                                                    </ul>
                                                )}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            )}
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
};

export default BoletoSearch;
