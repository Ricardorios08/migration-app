import React, { useState } from 'react';
import { Search, User, Mail, Phone, Fingerprint, CreditCard, Loader2 } from 'lucide-react';

const PersonaSearch = () => {
    const [query, setQuery] = useState('');
    const [results, setResults] = useState([]);
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState(null);

    const handleSearch = async (e) => {
        if (e) e.preventDefault();
        if (query.trim().length < 2) return;

        setLoading(true);
        setError(null);
        try {
            const response = await fetch(`http://localhost:3001/api/infogov/search-persona?q=${encodeURIComponent(query)}`);
            if (!response.ok) throw new Error('Error al buscar personas');
            const data = await response.ok ? await response.json() : [];
            setResults(data);
        } catch (err) {
            console.error(err);
            setError(err.message);
        } finally {
            setLoading(false);
        }
    };

    return (
        <div className="body-content">
            <div className="welcome-card">
                <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '1.5rem' }}>
                    <div style={{ padding: '0.5rem', background: 'rgba(37, 99, 235, 0.1)', borderRadius: '0.5rem' }}>
                        <User size={24} color="#2563eb" />
                    </div>
                    <h1 style={{ margin: 0, fontSize: '1.5rem' }}>Buscar Persona (InfoGov)</h1>
                </div>

                <form onSubmit={handleSearch} style={{ display: 'flex', gap: '0.75rem', marginBottom: '2rem' }}>
                    <div style={{ position: 'relative', flex: 1 }}>
                        <Search 
                            size={18} 
                            style={{ position: 'absolute', left: '1rem', top: '50%', transform: 'translateY(-50%)', color: 'var(--text-dim)' }} 
                        />
                        <input
                            type="text"
                            className="input-field"
                            placeholder="Nombre, CUIT o Documento..."
                            value={query}
                            onChange={(e) => setQuery(e.target.value)}
                            style={{ paddingLeft: '3rem' }}
                        />
                    </div>
                    <button type="submit" className="btn btn-primary" disabled={loading}>
                        {loading ? <Loader2 className="animate-spin" size={18} /> : 'Buscar'}
                    </button>
                </form>

                {error && (
                    <div style={{ padding: '1rem', background: 'rgba(239, 68, 68, 0.1)', border: '1px solid rgba(239, 68, 68, 0.2)', borderRadius: '0.5rem', color: '#ef4444', marginBottom: '1rem' }}>
                        {error}
                    </div>
                )}

                <div className="results-container">
                    {loading ? (
                        <div style={{ textAlign: 'center', padding: '3rem' }}>
                            <Loader2 className="animate-spin" size={32} color="#2563eb" style={{ margin: '0 auto' }} />
                            <p style={{ marginTop: '1rem', color: 'var(--text-dim)' }}>Buscando en infogov.persona...</p>
                        </div>
                    ) : results.length > 0 ? (
                        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(300px, 1fr))', gap: '1rem' }}>
                            {results.map((person) => (
                                <div key={person.CucuPers} className="data-card" style={{ padding: '1.25rem' }}>
                                    <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: '1rem' }}>
                                        <h3 style={{ margin: 0, fontSize: '1.1rem', color: 'var(--text)' }}>
                                            {person.DetaPers}
                                        </h3>
                                        <span style={{ fontSize: '0.75rem', padding: '0.2rem 0.5rem', background: 'var(--border)', borderRadius: '1rem' }}>
                                            ID: {person.CucuPers}
                                        </span>
                                    </div>

                                    <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
                                        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem' }}>
                                            <Fingerprint size={14} color="#2563eb" />
                                            <span style={{ color: 'var(--text-dim)' }}>DNI:</span> {person.NudoPers}
                                        </div>
                                        {person.CuitPers && (
                                            <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem' }}>
                                                <CreditCard size={14} color="#10b981" />
                                                <span style={{ color: 'var(--text-dim)' }}>CUIT:</span> {person.CuitPers}
                                            </div>
                                        )}
                                        {person.MailPers && (
                                            <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem' }}>
                                                <Mail size={14} />
                                                <span style={{ color: 'var(--text-dim)' }}>Email:</span> {person.MailPers}
                                            </div>
                                        )}
                                        {person.TelePers && (
                                            <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem' }}>
                                                <Phone size={14} />
                                                <span style={{ color: 'var(--text-dim)' }}>Tel:</span> {person.TelePers}
                                            </div>
                                        )}
                                    </div>
                                    
                                    <div style={{ marginTop: '1.25rem', paddingTop: '1rem', borderTop: '1px solid var(--border)', display: 'flex', gap: '0.5rem' }}>
                                        <button className="btn btn-secondary" style={{ flex: 1, fontSize: '0.8rem', padding: '0.4rem' }}>
                                            Ver Detalles
                                        </button>
                                        <button className="btn btn-primary" style={{ flex: 1, fontSize: '0.8rem', padding: '0.4rem' }}>
                                            Migrar
                                        </button>
                                    </div>
                                </div>
                            ))}
                        </div>
                    ) : query.length >= 2 ? (
                        <div style={{ textAlign: 'center', padding: '3rem', background: 'var(--glass)', borderRadius: '1rem' }}>
                            <Search size={32} color="var(--text-dim)" style={{ margin: '0 auto', opacity: 0.2 }} />
                            <p style={{ marginTop: '1rem', color: 'var(--text-dim)' }}>No se encontraron personas con "{query}"</p>
                        </div>
                    ) : (
                        <div style={{ textAlign: 'center', padding: '3rem', border: '2px dashed var(--border)', borderRadius: '1rem' }}>
                            <p style={{ color: 'var(--text-dim)' }}>Ingresa al menos 2 caracteres para buscar</p>
                        </div>
                    )}
                </div>
            </div>
        </div>
    );
};

export default PersonaSearch;
