import React, { useState } from 'react';
import axios from 'axios';
import { Search, ShieldCheck, ShieldAlert, Database, ArrowRight, Info, Scale, CheckCircle2, AlertCircle, User, FileText, ChevronRight } from 'lucide-react';
import { API_URL } from '../config';

const ApremioSearch = () => {
    const [searchTerm, setSearchTerm] = useState('');
    const [searchType, setSearchType] = useState('id'); // 'id' or 'ticket'
    const [loading, setLoading] = useState(false);
    const [results, setResults] = useState([]);
    const [selectedItem, setSelectedItem] = useState(null);
    const [error, setError] = useState(null);

    const handleSearch = async (e) => {
        e.preventDefault();
        // Allow empty search to fetch latest 20
        const term = searchTerm.trim() || 'null';

        setLoading(true);
        setError(null);
        setSelectedItem(null);

        try {
            const res = await axios.get(`${API_URL}/apremios/search-id/${term}?searchType=${searchType}`);
            setResults(res.data);
            if (res.data.length === 0) {
                setError('No se encontraron apremios que coincidan con la búsqueda.');
            }
        } catch (err) {
            setError(err.response?.data?.error || 'Error al buscar apremios.');
        } finally {
            setLoading(false);
        }
    };

    const StatusIcon = ({ status }) => {
        if (!status.inMaria) return <Database size={16} color="#94a3b8" title="No en MariaDB" />;
        if (!status.inPostgres) return <AlertCircle size={16} color="#ef4444" title="No migrado a Postgres" />;
        if (status.match) return <ShieldCheck size={16} color="#10b981" title="Saldos coinciden" />;
        return <ShieldAlert size={16} color="#f59e0b" title="Diferencia de saldos" />;
    };

    return (
        <div style={{ padding: '2rem', maxWidth: '1400px', margin: '0 auto' }}>
            {/* Header */}
            <div style={{ marginBottom: '2rem' }}>
                <h1 style={{ fontSize: '1.5rem', fontWeight: 700, display: 'flex', alignItems: 'center', gap: '0.75rem' }}>
                    <Scale color="#7c4dff" />
                    Buscador de Paridad de Apremios
                </h1>
                <p style={{ color: 'var(--text-dim)', fontSize: '0.9rem' }}>
                    Búsqueda flexible por ID para verificar la paridad entre sistemas.
                </p>
            </div>

            {/* Search Box */}
            <div style={{
                background: 'var(--card)',
                padding: '1.5rem',
                borderRadius: '16px',
                border: '1px solid var(--border)',
                boxShadow: '0 4px 20px rgba(0,0,0,0.05)',
                marginBottom: '2rem'
            }}>
                <form onSubmit={handleSearch} style={{ display: 'flex', gap: '1rem', alignItems: 'center' }}>
                    <div style={{ display: 'flex', flexDirection: 'column', gap: '4px' }}>
                        <span style={{ fontSize: '0.7rem', fontWeight: 700, color: 'var(--text-dim)', paddingLeft: '4px' }}>BUSCAR POR</span>
                        <select 
                            value={searchType}
                            onChange={(e) => setSearchType(e.target.value)}
                            style={{
                                padding: '0.75rem',
                                borderRadius: '10px',
                                border: '1px solid var(--border)',
                                background: 'var(--bg)',
                                color: 'var(--text)',
                                fontWeight: 600,
                                fontSize: '0.9rem',
                                cursor: 'pointer',
                                minWidth: '160px'
                            }}
                        >
                            <option value="id">ID (numeapre)</option>
                            <option value="ticket">Nro. de Cédula</option>
                            <option value="name">Nombre / Contribuyente</option>
                        </select>
                    </div>

                    <div style={{ flex: 1, display: 'flex', flexDirection: 'column', gap: '4px' }}>
                        <span style={{ fontSize: '0.7rem', fontWeight: 700, color: 'var(--text-dim)', paddingLeft: '4px' }}>VALOR A BUSCAR</span>
                        <div style={{ position: 'relative' }}>
                            <Search style={{ position: 'absolute', left: '12px', top: '50%', transform: 'translateY(-50%)', color: 'var(--text-dim)' }} size={20} />
                            <input
                                type="text"
                                placeholder={
                                    searchType === 'id' ? "Ej: 4970" : 
                                    searchType === 'ticket' ? "Ej: 123/2023" : 
                                    "Ej: PEREZ JUAN"
                                }
                                value={searchTerm}
                                onChange={(e) => setSearchTerm(e.target.value)}
                                style={{
                                    width: '100%',
                                    padding: '0.8rem 1rem 0.8rem 2.5rem',
                                    borderRadius: '12px',
                                    border: '1px solid var(--border)',
                                    background: 'var(--bg)',
                                    color: 'var(--text)',
                                    fontSize: '1rem',
                                    outline: 'none'
                                }}
                            />
                        </div>
                    </div>

                    <button
                        type="submit"
                        disabled={loading}
                        style={{
                            padding: '1rem 2rem',
                            borderRadius: '12px',
                            background: '#7c4dff',
                            color: '#fff',
                            border: 'none',
                            fontWeight: 600,
                            cursor: 'pointer',
                            marginTop: '1.2rem',
                            display: 'flex',
                            alignItems: 'center',
                            gap: '0.5rem'
                        }}
                    >
                        {loading ? 'Buscando...' : 'Buscar'}
                    </button>
                </form>
            </div>

            <div style={{ display: 'grid', gridTemplateColumns: results.length > 0 ? '400px 1fr' : '1fr', gap: '2rem' }}>
                
                {/* Results List */}
                {results.length > 0 && (
                    <div style={{
                        background: 'var(--card)',
                        borderRadius: '16px',
                        border: '1px solid var(--border)',
                        overflow: 'hidden',
                        height: 'fit-content'
                    }}>
                        <div style={{ padding: '1rem', borderBottom: '1px solid var(--border)', fontWeight: 700, fontSize: '0.9rem', background: '#f8fafc' }}>
                            RESULTADOS ({results.length})
                        </div>
                        <div style={{ maxHeight: '600px', overflowY: 'auto' }}>
                            {results.map((item) => (
                                <div
                                    key={item.id}
                                    onClick={() => setSelectedItem(item)}
                                    style={{
                                        padding: '1rem',
                                        borderBottom: '1px solid var(--border)',
                                        cursor: 'pointer',
                                        background: selectedItem?.id === item.id ? '#f0f4ff' : 'transparent',
                                        transition: 'all 0.2s',
                                        display: 'flex',
                                        alignItems: 'center',
                                        justifyContent: 'space-between'
                                    }}
                                >
                                    <div>
                                        <div style={{ fontWeight: 700, fontSize: '1rem', color: selectedItem?.id === item.id ? '#7c4dff' : 'var(--text)' }}>
                                            ID: {item.id}
                                        </div>
                                        <div style={{ fontSize: '0.75rem', color: 'var(--text-dim)', marginTop: '2px', display: 'flex', alignItems: 'center', gap: '4px' }}>
                                            <User size={12} /> {item.postgres?.pernom || item.legacy?.denominacion || item.legacy?.tituapre || 'Contribuyente N/A'}
                                        </div>
                                    </div>
                                    <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: '4px' }}>
                                        <div style={{ display: 'flex', gap: '4px' }}>
                                            {item.status.inMaria && <span style={{ padding: '2px 4px', borderRadius: '4px', background: '#e11d4822', color: '#e11d48', fontSize: '10px', fontWeight: 800 }}>MDB</span>}
                                            {item.status.inPostgres && <span style={{ padding: '2px 4px', borderRadius: '4px', background: '#3b82f622', color: '#3b82f6', fontSize: '10px', fontWeight: 800 }}>PG</span>}
                                        </div>
                                        <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem' }}>
                                            <StatusIcon status={item.status} />
                                            <ChevronRight size={18} color="var(--text-dim)" />
                                        </div>
                                    </div>
                                </div>
                            ))}
                        </div>
                    </div>
                )}

                {/* Detail View */}
                <div style={{ minHeight: '400px' }}>
                    {selectedItem ? (
                        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.5rem' }}>
                            {/* MariaDB Card */}
                            <DetailCard 
                                title="MARIADB (Legacy)" 
                                icon={<Database size={18} color="#e11d48" />}
                                exists={selectedItem.status.inMaria}
                                data={selectedItem.legacy ? [
                                    { label: 'Nro Apremio', value: selectedItem.legacy.numeapre },
                                    { label: 'Cuenta', value: selectedItem.legacy.cuenctct },
                                    { label: 'Estado', value: selectedItem.legacy.estadodeta },
                                    { label: 'Total', value: `$${parseFloat(selectedItem.legacy.totaapre || 0).toLocaleString()}`, highlight: true, color: '#e11d48' }
                                ] : null}
                            />

                            {/* Postgres Card */}
                            <DetailCard 
                                title="POSTGRESQL (Migrado)" 
                                icon={<Database size={18} color="#3b82f6" />}
                                exists={selectedItem.status.inPostgres}
                                data={selectedItem.postgres ? [
                                    { label: 'ID Cedula', value: selectedItem.postgres.cedid },
                                    { label: 'Nro Cédula', value: selectedItem.postgres.cednro },
                                    { label: 'Estado', value: selectedItem.postgres.cedestado },
                                    { label: 'Monto PG', value: `$${parseFloat(selectedItem.postgres.cedimptot || 0).toLocaleString()}`, highlight: true, color: '#3b82f6' }
                                ] : null}
                            />

                            {/* Parity Summary */}
                            <div style={{ 
                                gridColumn: 'span 2', 
                                padding: '1.5rem', 
                                background: selectedItem.status.match ? '#f0fdf4' : '#fff7ed', 
                                borderRadius: '16px',
                                border: `1px solid ${selectedItem.status.match ? '#bbf7d0' : '#ffedd5'}`,
                                display: 'flex',
                                alignItems: 'center',
                                gap: '1rem'
                            }}>
                                {selectedItem.status.match ? (
                                    <ShieldCheck size={32} color="#166534" />
                                ) : (
                                    <ShieldAlert size={32} color="#ea580c" />
                                )}
                                <div>
                                    <div style={{ fontWeight: 700, fontSize: '1.1rem', color: selectedItem.status.match ? '#166534' : '#9a3412' }}>
                                        {selectedItem.status.match ? 'Saldos Sincronizados' : 'Discrepancia Detectada'}
                                    </div>
                                    <div style={{ fontSize: '0.9rem', color: selectedItem.status.match ? '#15803d' : '#c2410c' }}>
                                        {selectedItem.status.match 
                                            ? 'Los montos registrados en ambos sistemas coinciden exactamente.' 
                                            : 'Existe una diferencia entre el total de MariaDB y el monto migrado a Postgres.'}
                                    </div>
                                </div>
                            </div>
                        </div>
                    ) : (
                        <div style={{ 
                            height: '100%', 
                            display: 'flex', 
                            flexDirection: 'column', 
                            alignItems: 'center', 
                            justifyContent: 'center',
                            background: 'var(--card)',
                            borderRadius: '16px',
                            border: '1px dashed var(--border)',
                            color: 'var(--text-dim)'
                        }}>
                            {error ? (
                                <div style={{ textAlign: 'center', padding: '2rem' }}>
                                    <AlertCircle size={48} color="#ef4444" style={{ marginBottom: '1rem', opacity: 0.5 }} />
                                    <p>{error}</p>
                                </div>
                            ) : (
                                <>
                                    <Search size={48} style={{ marginBottom: '1rem', opacity: 0.2 }} />
                                    <p>Busque y seleccione un apremio para ver la comparativa</p>
                                </>
                            )}
                        </div>
                    )}
                </div>
            </div>
        </div>
    );
};

const DetailCard = ({ title, icon, exists, data }) => (
    <div style={{
        background: 'var(--card)',
        borderRadius: '16px',
        border: '1px solid var(--border)',
        overflow: 'hidden'
    }}>
        <div style={{ padding: '1rem', borderBottom: '1px solid var(--border)', background: '#f8fafc', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontWeight: 700, fontSize: '0.85rem' }}>
                {icon}
                {title}
            </div>
            <div style={{ 
                fontSize: '0.65rem', 
                fontWeight: 800, 
                padding: '2px 8px', 
                borderRadius: '10px', 
                background: exists ? '#dcfce7' : '#fee2e2',
                color: exists ? '#166534' : '#991b1b'
            }}>
                {exists ? 'PRESENTE' : 'AUSENTE'}
            </div>
        </div>
        <div style={{ padding: '1.25rem' }}>
            {data ? (
                <div>
                    {data.map((field, i) => (
                        <div key={i} style={{ marginBottom: '0.75rem' }}>
                            <div style={{ fontSize: '0.65rem', color: 'var(--text-dim)', textTransform: 'uppercase', marginBottom: '2px' }}>{field.label}</div>
                            <div style={{ fontSize: field.highlight ? '1.1rem' : '0.95rem', fontWeight: field.highlight ? 700 : 500, color: field.color || 'var(--text)' }}>
                                {field.value || '—'}
                            </div>
                        </div>
                    ))}
                </div>
            ) : (
                <div style={{ textAlign: 'center', padding: '2rem 0', opacity: 0.4 }}>
                    <FileText size={32} style={{ marginBottom: '0.5rem' }} />
                    <div style={{ fontSize: '0.8rem' }}>Sin datos disponibles</div>
                </div>
            )}
        </div>
    </div>
);

export default ApremioSearch;
