import React, { useState, useEffect } from 'react';
import { 
    Search, FileText, User, MapPin, Calendar, Gavel, 
    CheckCircle, AlertCircle, ArrowRight, Clock,
    DollarSign, Scale, Printer, ArrowLeft, Info,
    Download, ChevronLeft, ChevronRight, FileDown, Loader2, Filter,
    Table
} from 'lucide-react';
import { jsPDF } from 'jspdf';
import autoTable from 'jspdf-autotable';
import { API_URL } from '../config';

const ApremioIndividualReport = () => {
    const [viewMode, setViewMode] = useState('search'); 
    const [searchTerm, setSearchTerm] = useState('');
    const [statusFilter, setStatusFilter] = useState('all');
    const [statuses, setStatuses] = useState([]);
    const [searchResults, setSearchResults] = useState([]);
    const [totalResults, setTotalResults] = useState(0);
    const [currentPage, setCurrentPage] = useState(1);
    const [detail, setDetail] = useState(null);
    const [loading, setLoading] = useState(false);
    const [exporting, setExporting] = useState(false);
    const [downloadingId, setDownloadingId] = useState(null);
    const [error, setError] = useState(null);

    const API_BASE = API_URL;
    const LIMIT = 20;

    const formatCurrency = (val) => new Intl.NumberFormat('es-AR', { style: 'currency', currency: 'ARS' }).format(val || 0);
    const formatDate = (date) => date ? new Date(date).toLocaleDateString() : '-';

    // Helper para obtener cabeceras con Token
    const getAuthHeaders = () => {
        const token = localStorage.getItem('nomade_token');
        return {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${token}`
        };
    };

    useEffect(() => {
        const fetchStatuses = async () => {
            try {
                const res = await fetch(`${API_BASE}/apremio-individual/statuses`, {
                    headers: getAuthHeaders()
                });
                if (res.ok) {
                    const data = await res.json();
                    if (Array.isArray(data)) setStatuses(data);
                }
            } catch (err) { console.error("Error fetching statuses:", err); }
        };
        fetchStatuses();
    }, []);

    useEffect(() => {
        if (viewMode === 'search') {
            fetchResults(currentPage);
        }
    }, [currentPage, statusFilter, viewMode]);

    const fetchResults = async (page = 1) => {
        if (viewMode !== 'search') return;
        setLoading(true);
        try {
            const res = await fetch(`${API_BASE}/apremio-individual/search?q=${searchTerm}&status=${statusFilter}&page=${page}`, {
                headers: getAuthHeaders()
            });
            if (!res.ok) throw new Error('Error en la búsqueda');
            const response = await res.json();
            setSearchResults(response.data || []);
            setTotalResults(response.total || 0);
        } catch (err) { setError(err.message); } finally { setLoading(false); }
    };

    const handleSearch = (e) => {
        if (e) e.preventDefault();
        setCurrentPage(1);
        fetchResults(1);
    };

    const fetchDetail = async (numeApre) => {
        setLoading(true);
        try {
            const res = await fetch(`${API_BASE}/apremio-individual/detail/${numeApre}`, {
                headers: getAuthHeaders()
            });
            if (!res.ok) throw new Error('Error al obtener detalle');
            const data = await res.json();
            setDetail(data);
            setViewMode('detail');
        } catch (err) { setError(err.message); } finally { setLoading(false); }
    };

    const handleExportXLS = async () => {
        setExporting(true);
        try {
            const res = await fetch(`${API_BASE}/apremio-individual/export?q=${searchTerm}&status=${statusFilter}`, {
                headers: getAuthHeaders()
            });
            if (!res.ok) throw new Error('Error al exportar');
            const data = await res.json();
            
            if (!data || data.length === 0) {
                alert("No hay datos para exportar");
                return;
            }

            const headers = Object.keys(data[0]);
            const csvRows = [headers.join(';')];
            
            for (const row of data) {
                const values = headers.map(header => {
                    const val = row[header];
                    return `"${(val || '').toString().replace(/"/g, '""')}"`;
                });
                csvRows.push(values.join(';'));
            }
            
            const csvContent = "\uFEFF" + csvRows.join('\n');
            const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
            const url = URL.createObjectURL(blob);
            const link = document.createElement("a");
            link.setAttribute("href", url);
            link.setAttribute("download", `Exportacion_Apremios_${new Date().toISOString().slice(0,10)}.csv`);
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        } catch (err) {
            alert("Error al exportar: " + err.message);
        } finally {
            setExporting(false);
        }
    };

    const generatePDF = (data) => {
        const { apremio, instances, debt } = data;
        const doc = new jsPDF();
        
        const totalCapital = debt.reduce((acc, curr) => acc + (parseFloat(curr.DebeCtct) || 0), 0);
        const totalInteres = parseFloat(apremio.RecaApre) || 0;
        const gastosAdm = (totalCapital + totalInteres) * 0.05;
        const totalGeneral = totalCapital + totalInteres + gastosAdm;

        doc.setFontSize(22);
        doc.setTextColor(0, 90, 141);
        doc.setFont('helvetica', 'bold');
        doc.text('RECAUDACIÓN', 15, 20);
        doc.setFontSize(10);
        doc.setTextColor(100);
        doc.setFont('helvetica', 'normal');
        doc.text('Municipalidad de Guaymallén', 15, 26);
        doc.setFontSize(14);
        doc.setTextColor(0);
        doc.setFont('helvetica', 'bold');
        doc.text('REPORTE ESTADOS BOLETA DE DEUDA', 110, 20, { align: 'left' });
        doc.setFontSize(10);
        doc.text(`BOLETA N°: ${apremio.NumeBole || '-'}`, 110, 26);
        doc.text(`CAMPAÑA N°: ${apremio.PeriBole || '-'}`, 110, 31);
        doc.setFont('helvetica', 'normal');
        doc.text(`Guaymallén, ${new Date().toLocaleDateString()}`, 110, 36);

        doc.setFillColor(163, 163, 163);
        doc.rect(15, 42, 180, 8, 'F');
        doc.setTextColor(255);
        doc.setFont('helvetica', 'bold');
        doc.text(`Expediente: ${apremio.AutoApre || '-'}`, 190, 47, { align: 'right' });

        autoTable(doc, {
            startY: 55,
            head: [['Cuenta', 'Agente (Recaudador)', 'Alta', 'Exp. Apremio', 'Estado', 'Juzgado']],
            body: [[apremio.CuenCtct, `${apremio.CodiReca} - ${apremio.Recaudador}`, formatDate(apremio.FealApre), apremio.NumeApre, apremio.EstadoDeta || 'Activo', apremio.JuzgInap]],
            headStyles: { fillColor: [204, 230, 244], textColor: [0, 74, 117] },
            styles: { fontSize: 8, cellPadding: 2 }
        });

        doc.setTextColor(0);
        doc.setFontSize(12);
        doc.text('Titulares', 15, doc.lastAutoTable.finalY + 10);
        autoTable(doc, {
            startY: doc.lastAutoTable.finalY + 13,
            head: [['Nombre', 'CUIT / CUIL']],
            body: [[apremio.TituApre, apremio.CucuPers]],
            headStyles: { fillColor: [204, 230, 244], textColor: [0, 74, 117] },
            styles: { fontSize: 8 }
        });

        const periodos = Array.from(new Set(debt.map(d => d.PeriCtct))).sort().map(year => {
            return `${year}: ${debt.filter(d => d.PeriCtct === year).map(d => d.BimeCtct).join(', ')};`;
        }).join(' ');
        
        doc.setFontSize(12);
        doc.text('Períodos Reclamados', 15, doc.lastAutoTable.finalY + 10);
        doc.setFontSize(8);
        doc.setFont('helvetica', 'normal');
        const splitPeriodos = doc.splitTextToSize(periodos, 180);
        doc.text(splitPeriodos, 15, doc.lastAutoTable.finalY + 15);

        doc.setFontSize(12);
        doc.setFont('helvetica', 'bold');
        doc.text('Cuotas reclamadas', 15, doc.lastAutoTable.finalY + 25);
        autoTable(doc, {
            startY: doc.lastAutoTable.finalY + 28,
            head: [['Periodo', 'Cuota', 'Conceptos', 'Vto Cuot/Déb.', 'Capital']],
            body: [
                ...debt.map(d => [d.PeriCtct, d.BimeCtct, d.DetaCtct, formatDate(d.FeveCtct), formatCurrency(d.DebeCtct)]),
                [{ content: 'Totales', colSpan: 4, styles: { halign: 'right', fontStyle: 'bold', fillColor: [243, 244, 246] } }, 
                 { content: formatCurrency(totalCapital), styles: { fontStyle: 'bold', fillColor: [243, 244, 246] } }]
            ],
            headStyles: { fillColor: [204, 230, 244], textColor: [0, 74, 117] },
            styles: { fontSize: 7 }
        });

        autoTable(doc, {
            startY: doc.lastAutoTable.finalY + 10,
            head: [['Concepto', 'Capital', 'Interés', 'Total']],
            body: [
                ['Total Reclamado', formatCurrency(totalCapital), formatCurrency(totalInteres), formatCurrency(totalCapital + totalInteres)],
                ['Gastos Administrativos (5%)', '-', '-', formatCurrency(gastosAdm)],
                [{ content: 'TOTAL GENERAL', colSpan: 3, styles: { halign: 'right', fontStyle: 'bold', fillColor: [0, 90, 141], textColor: [255, 255, 255] } },
                { content: formatCurrency(totalGeneral), styles: { fontStyle: 'bold', fillColor: [0, 90, 141], textColor: [255, 255, 255] } }]
            ],
            headStyles: { fillColor: [204, 230, 244], textColor: [0, 74, 117] },
            styles: { fontSize: 8 }
        });

        doc.setFontSize(12);
        doc.setTextColor(0);
        doc.text('Instancias Boleta de deuda', 15, doc.lastAutoTable.finalY + 10);
        autoTable(doc, {
            startY: doc.lastAutoTable.finalY + 13,
            head: [['Fecha Alta', 'N°', 'Instancia Judicial', 'Agente', 'Juzgado']],
            body: instances.map(inst => [formatDate(inst.FechInap), inst.CodiInju, inst.DetaInju, apremio.OficialJusticia, inst.JuzgInap]),
            headStyles: { fillColor: [204, 230, 244], textColor: [0, 74, 117] },
            styles: { fontSize: 7 }
        });

        const pageCount = doc.internal.getNumberOfPages();
        for (let i = 1; i <= pageCount; i++) {
            doc.setPage(i);
            doc.setFontSize(8);
            doc.setTextColor(150);
            doc.text(`Página ${i} de ${pageCount}`, 105, 285, { align: 'center' });
        }

        doc.save(`Reporte_Apremio_${apremio.NumeApre}.pdf`);
    };

    const handleQuickDownload = async (e, numeApre) => {
        e.stopPropagation();
        setDownloadingId(numeApre);
        try {
            const res = await fetch(`${API_BASE}/apremio-individual/detail/${numeApre}`, {
                headers: getAuthHeaders()
            });
            const data = await res.json();
            generatePDF(data);
        } catch (err) { alert("Error al generar PDF: " + err.message); } finally { setDownloadingId(null); }
    };

    const mainStyles = {
        container: { width: '100%', padding: '1rem', boxSizing: 'border-box', color: '#f1f5f9', minHeight: '100vh', overflowY: 'auto' },
        card: { backgroundColor: '#0f172a', border: '1px solid #1e293b', borderRadius: '1rem', overflow: 'hidden', boxShadow: '0 10px 30px -5px rgba(0, 0, 0, 0.7)' },
        tableContainer: { overflowX: 'auto', backgroundColor: '#020617', borderRadius: '0.75rem', border: '1px solid #1e293b', marginBottom: '1rem' },
        table: { width: '100%', borderCollapse: 'collapse', fontSize: '0.75rem', whiteSpace: 'nowrap' },
        th: { padding: '0.75rem 1rem', borderBottom: '2px solid #1e293b', color: '#64748b', fontWeight: 'bold', textAlign: 'left', position: 'sticky', top: 0, backgroundColor: '#020617', zIndex: 10 },
        td: { padding: '0.6rem 1rem', borderBottom: '1px solid #1e293b', color: '#cbd5e1' },
        input: { width: '100%', backgroundColor: '#020617', border: '1px solid #1e293b', padding: '1rem 3.5rem', borderRadius: '0.75rem', color: 'white', fontSize: '1.1rem', outline: 'none' },
        select: { backgroundColor: '#020617', border: '1px solid #1e293b', padding: '0.6rem 1rem', borderRadius: '0.5rem', color: 'white', outline: 'none', cursor: 'pointer' },
        btnSearch: { padding: '0.6rem 1.5rem', backgroundColor: '#2563eb', color: 'white', border: 'none', borderRadius: '0.5rem', fontWeight: 'bold', cursor: 'pointer' },
        btnExport: { padding: '0.6rem 1.5rem', backgroundColor: '#10b981', color: 'white', border: 'none', borderRadius: '0.5rem', fontWeight: 'bold', cursor: 'pointer', display: 'flex', alignItems: 'center', gap: '0.5rem' },
        pagination: { display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginTop: '1rem', backgroundColor: '#0f172a', padding: '1rem', borderRadius: '0.75rem', border: '1px solid #1e293b' },
        btnPage: { display: 'flex', alignItems: 'center', gap: '0.5rem', padding: '0.5rem 1rem', backgroundColor: '#1e293b', color: 'white', border: 'none', borderRadius: '0.5rem', cursor: 'pointer' },
        statusBadge: (code) => ({
            padding: '0.2rem 0.5rem',
            borderRadius: '0.25rem',
            fontSize: '0.65rem',
            fontWeight: 'bold',
            textTransform: 'uppercase',
            backgroundColor: code === 99 ? 'rgba(16, 185, 129, 0.2)' : 'rgba(59, 130, 246, 0.2)',
            color: code === 99 ? '#10b981' : '#3b82f6',
            border: `1px solid ${code === 99 ? '#10b981' : '#3b82f6'}`
        })
    };

    const totalPages = Math.ceil(totalResults / LIMIT);

    if (viewMode === 'detail' && detail) {
        return (
            <div style={mainStyles.container}>
                <div style={{ display: 'flex', justifyContent: 'space-between', marginBottom: '1.5rem' }}>
                    <button onClick={() => setViewMode('search')} style={{ background: 'none', border: 'none', color: '#94a3b8', display: 'flex', alignItems: 'center', gap: '0.5rem', cursor: 'pointer' }}>
                        <ArrowLeft size={18} /> Volver
                    </button>
                    <button onClick={() => generatePDF(detail)} style={{ backgroundColor: '#10b981', color: 'white', padding: '0.6rem 1.5rem', borderRadius: '0.5rem', border: 'none', fontWeight: 'bold', cursor: 'pointer', display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                        <Download size={18} /> Descargar PDF Oficial
                    </button>
                </div>
                <div style={mainStyles.card}>
                    <div style={{ padding: '2rem', borderBottom: '1px solid #1e293b', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                        <div>
                            <h2 style={{ margin: 0, fontSize: '1.5rem' }}>Detalle de Apremio #{detail.apremio.NumeApre}</h2>
                            <p style={{ color: '#64748b', margin: '0.5rem 0' }}>{detail.apremio.TituApre} | {detail.apremio.CuenCtct}</p>
                        </div>
                        <div style={{ textAlign: 'right' }}>
                            <div style={{ fontSize: '1.75rem', fontWeight: 'bold', color: '#3b82f6' }}>{formatCurrency(detail.apremio.TotaApre)}</div>
                            <div style={{ fontSize: '0.7rem', color: '#64748b' }}>TOTAL CALCULADO</div>
                        </div>
                    </div>
                    <div style={{ padding: '2rem' }}>
                        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: '1.5rem' }}>
                            <div><label style={{ fontSize: '0.6rem', color: '#64748b' }}>AUTOS</label><div style={{ fontSize: '0.9rem' }}>{detail.apremio.AutoApre}</div></div>
                            <div><label style={{ fontSize: '0.6rem', color: '#64748b' }}>SECRETARIA</label><div style={{ fontSize: '0.9rem' }}>{detail.apremio.SecrInap}</div></div>
                            <div><label style={{ fontSize: '0.6rem', color: '#64748b' }}>JUZGADO</label><div style={{ fontSize: '0.9rem' }}>{detail.apremio.JuzgInap}</div></div>
                            <div><label style={{ fontSize: '0.6rem', color: '#64748b' }}>TITULAR</label><div style={{ fontSize: '0.9rem' }}>{detail.apremio.TituApre}</div></div>
                        </div>
                        <div style={{ marginTop: '3rem' }}>
                            <h3 style={{ fontSize: '1rem', color: '#3b82f6', marginBottom: '1.5rem' }}>Composición de Deuda</h3>
                            <div style={mainStyles.tableContainer}>
                                <table style={mainStyles.table}>
                                    <thead><tr><th style={mainStyles.th}>Período</th><th style={mainStyles.th}>Detalle</th><th style={mainStyles.th}>Debe</th><th style={mainStyles.th}>Haber</th></tr></thead>
                                    <tbody>
                                        {detail.debt.map((d, i) => (
                                            <tr key={i}><td style={mainStyles.td}>{d.PeriCtct}/{d.BimeCtct}</td><td style={mainStyles.td}>{d.DetaCtct}</td><td style={mainStyles.td}>{formatCurrency(d.DebeCtct)}</td><td style={mainStyles.td}>{formatCurrency(d.CredCtct)}</td></tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }

    return (
        <div style={mainStyles.container}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '2rem' }}>
                <h1 style={{ fontSize: '2rem', fontWeight: 'bold', margin: 0 }}>Módulo de Apremios</h1>
                <div style={{ display: 'flex', gap: '1rem' }}>
                    <button style={{ ...mainStyles.btnSearch, backgroundColor: '#1e293b' }} onClick={() => { setSearchTerm(''); setStatusFilter('all'); setCurrentPage(1); }}>Limpiar</button>
                    <button style={mainStyles.btnExport} onClick={handleExportXLS} disabled={exporting}>
                        {exporting ? <Loader2 className="spin" size={18} /> : <Table size={18} />}
                        {exporting ? 'Generando...' : 'Exportar Excel (XLS)'}
                    </button>
                </div>
            </div>

            <div style={{ display: 'flex', gap: '1rem', marginBottom: '2rem' }}>
                <form onSubmit={handleSearch} style={{ position: 'relative', flex: 1 }}>
                    <Search style={{ position: 'absolute', left: '1.25rem', top: '50%', transform: 'translateY(-50%)', color: '#64748b' }} size={24} />
                    <input style={mainStyles.input} type="text" value={searchTerm} onChange={(e) => setSearchTerm(e.target.value)} placeholder="Busque por Número, Cuenta o Nombre..." />
                    <button type="submit" style={{ position: 'absolute', right: '1rem', top: '50%', transform: 'translateY(-50%)', ...mainStyles.btnSearch }}>Buscar</button>
                </form>
                
                <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', minWidth: '250px' }}>
                    <Filter size={20} color="#64748b" />
                    <select 
                        style={{ ...mainStyles.select, flex: 1 }} 
                        value={statusFilter} 
                        onChange={(e) => { setStatusFilter(e.target.value); setCurrentPage(1); }}
                    >
                        <option value="all">Todos los Estados</option>
                        {Array.isArray(statuses) && statuses.map(s => (
                            <option key={s.CodiEsap} value={s.CodiEsap}>{s.DetaEsap}</option>
                        ))}
                    </select>
                </div>
            </div>

            {loading && !searchResults.length && <div style={{ textAlign: 'center', padding: '2rem', color: '#3b82f6' }}>Cargando registros...</div>}

            {searchResults.length > 0 && (
                <div style={{ paddingBottom: '3rem' }}>
                    <div style={mainStyles.tableContainer}>
                        <table style={mainStyles.table}>
                            <thead>
                                <tr>
                                    <th style={mainStyles.th}>PDF</th>
                                    <th style={mainStyles.th}>NUME</th>
                                    <th style={mainStyles.th}>CUENTA</th>
                                    <th style={mainStyles.th}>TITULAR</th>
                                    <th style={mainStyles.th}>ESTADO</th>
                                    <th style={mainStyles.th}>JUZGADO</th>
                                    <th style={mainStyles.th}>TOTAL</th>
                                    <th style={mainStyles.th}>ACC</th>
                                </tr>
                            </thead>
                            <tbody>
                                {searchResults.map((a) => (
                                    <tr key={a.NumeApre} style={{ cursor: 'pointer' }} onClick={() => fetchDetail(a.NumeApre)} className="hover-row">
                                        <td style={mainStyles.td}>
                                            <button 
                                                onClick={(e) => handleQuickDownload(e, a.NumeApre)}
                                                style={{ background: 'none', border: 'none', cursor: 'pointer', color: downloadingId === a.NumeApre ? '#3b82f6' : '#ef4444' }}
                                                title="Descargar PDF Oficial"
                                            >
                                                {downloadingId === a.NumeApre ? <Loader2 size={18} className="spin" /> : <FileDown size={18} />}
                                            </button>
                                        </td>
                                        <td style={{ ...mainStyles.td, fontWeight: 'bold' }}>{a.NumeApre}</td>
                                        <td style={mainStyles.td}>{a.CuenCtct}</td>
                                        <td style={mainStyles.td}>{a.TituApre}</td>
                                        <td style={mainStyles.td}>
                                            <span style={mainStyles.statusBadge(a.EstaApre)}>
                                                {a.EstadoDeta || `Estado ${a.EstaApre}`}
                                            </span>
                                        </td>
                                        <td style={mainStyles.td}>{a.JuzgInap}</td>
                                        <td style={{ ...mainStyles.td, fontWeight: 'bold', color: '#3b82f6' }}>{formatCurrency(a.TotaApre)}</td>
                                        <td style={mainStyles.td}><ArrowRight size={14} color="#3b82f6" /></td>
                                    </tr>
                                ))}
                            </tbody>
                        </table>
                    </div>

                    <div style={mainStyles.pagination}>
                        <button disabled={currentPage === 1} onClick={() => setCurrentPage(p => p - 1)} style={{ ...mainStyles.btnPage, opacity: currentPage === 1 ? 0.5 : 1 }}><ChevronLeft size={18} /> Anterior</button>
                        <span style={{ fontSize: '0.9rem', color: '#94a3b8' }}>Página <span style={{ color: 'white', fontWeight: 'bold' }}>{currentPage}</span> de <span style={{ color: 'white', fontWeight: 'bold' }}>{totalPages}</span> ({totalResults} registros)</span>
                        <button disabled={currentPage >= totalPages} onClick={() => setCurrentPage(p => p + 1)} style={{ ...mainStyles.btnPage, opacity: currentPage >= totalPages ? 0.5 : 1 }}>Siguiente <ChevronRight size={18} /></button>
                    </div>
                </div>
            )}

            <style>{`
                .hover-row:hover { background-color: rgba(37, 99, 235, 0.1); }
                .spin { animation: spin 1s linear infinite; }
                @keyframes spin { from { transform: rotate(0deg); } to { transform: rotate(360deg); } }
            `}</style>
        </div>
    );
};

export default ApremioIndividualReport;
