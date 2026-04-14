import React, { useState, useEffect } from 'react';
import { Search, Info, CheckCircle2, AlertCircle, Calendar, Filter, X, FileText, Download } from 'lucide-react';
import { jsPDF } from 'jspdf';
import 'jspdf-autotable';

const CuentaCorriente = () => {
    const [offices, setOffices] = useState([]);
    const [selectedOffice, setSelectedOffice] = useState('1'); // Default Inmueble
    const [account, setAccount] = useState('');
    const [onlyDebt, setOnlyDebt] = useState(true);
    const [toDate, setToDate] = useState(new Date().toISOString().split('T')[0]);
    const [legacyData, setLegacyData] = useState([]);
    const [postgresData, setPostgresData] = useState([]);
    const [loading, setLoading] = useState(false);
    const [showPdfModal, setShowPdfModal] = useState(false);
    const [showSqlMariaModal, setShowSqlMariaModal] = useState(false);
    const [showSqlPgModal, setShowSqlPgModal] = useState(false);
    const [error, setError] = useState(null);
    const [postgresError, setPostgresError] = useState(null);

    const [showSubtotals, setShowSubtotals] = useState(false);
    const [isGrouped, setIsGrouped] = useState(false);
    const [leftWidth, setLeftWidth] = useState(50); // Set initial width to 50%
    const [isResizing, setIsResizing] = useState(false);
    const [searchBy, setSearchBy] = useState('account'); // 'account' or 'person'
    const [fealCorte, setFealCorte] = useState(''); // Cut-off date for FEALCTCT
    const [selectedPerson, setSelectedPerson] = useState(null);
    const [showQuotaDetail, setShowQuotaDetail] = useState(false);
    const [foundOffices, setFoundOffices] = useState([]);
    const [isResolvingOffices, setIsResolvingOffices] = useState(false);
    const [pdfBlobUrl, setPdfBlobUrl] = useState(null);

    useEffect(() => {
        const handleMouseMove = (e) => {
            if (!isResizing) return;
            const newWidth = (e.clientX / window.innerWidth) * 100;
            if (newWidth > 20 && newWidth < 80) { // Limit resizing between 20% and 80%
                setLeftWidth(newWidth);
            }
        };

        const handleMouseUp = () => {
            setIsResizing(false);
            document.body.style.cursor = 'default';
        };

        if (isResizing) {
            window.addEventListener('mousemove', handleMouseMove);
            window.addEventListener('mouseup', handleMouseUp);
            document.body.style.cursor = 'col-resize';
        }

        return () => {
            window.removeEventListener('mousemove', handleMouseMove);
            window.removeEventListener('mouseup', handleMouseUp);
        };
    }, [isResizing]);

    const handleMouseDown = (e) => {
        e.preventDefault();
        setIsResizing(true);
    };

    useEffect(() => {
        fetch('http://localhost:3001/api/ctacte/offices')
            .then(res => res.json())
            .then(data => setOffices(data))
            .catch(err => console.error('Error fetching offices:', err));
    }, []);

    // Resolve offices for account
    useEffect(() => {
        if (!account || account.length < 1) {
            setFoundOffices([]);
            return;
        }

        const timer = setTimeout(async () => {
            setIsResolvingOffices(true);
            try {
                const res = await fetch(`http://localhost:3001/api/ctacte/resolve-account/${account}?searchType=${searchBy}`);
                const data = await res.json();
                setFoundOffices(data);
                if (data.length > 0) {
                    // If current internal selection is null or not in new results, pick the first one
                    const currentOffInNewList = data.find(o => o.id.toString() === selectedOffice);
                    if (!selectedOffice || !currentOffInNewList) {
                        setSelectedOffice(data[0].id.toString());
                    }
                }
            } catch (err) {
                console.error('Error resolving offices:', err);
            } finally {
                setIsResolvingOffices(false);
            }
        }, 600);

        return () => clearTimeout(timer);
    }, [account, searchBy]);

    const renderRows = () => {
        if (!legacyData || legacyData.length === 0) return null;

        if (!showSubtotals && !isGrouped) {
            return legacyData.map((row, idx) => <DataRow key={idx} row={row} />);
        }

        // Logic for subtotals (Period + Cuota)
        const rows = [];
        let currentPeriod = legacyData[0].PeriCtct;
        let currentBime = legacyData[0].BimeCtct;
        let groupTotals = { debe: 0, reca: 0, haber: 0, total: 0 };

        legacyData.forEach((row, idx) => {
            if (row.PeriCtct !== currentPeriod || row.BimeCtct !== currentBime) {
                // Insert subtotal row for the previous group
                rows.push(<SubtotalRow key={`sub-${currentPeriod}-${currentBime}`} period={currentPeriod} bime={currentBime} totals={groupTotals} />);
                // Reset
                currentPeriod = row.PeriCtct;
                currentBime = row.BimeCtct;
                groupTotals = { debe: 0, reca: 0, haber: 0, total: 0 };
            }

            groupTotals.debe += parseFloat(row.DebeCtct || 0);
            groupTotals.reca += parseFloat(row.RecaCtct || 0);
            groupTotals.haber += parseFloat(row.CredCtct || 0);
            groupTotals.total += parseFloat(row.TotaCtct || 0);

            if (!isGrouped) {
                rows.push(<DataRow key={idx} row={row} />);
            }

            // If last row, add final subtotal
            if (idx === legacyData.length - 1) {
                rows.push(<SubtotalRow key={`sub-${currentPeriod}-${currentBime}`} period={currentPeriod} bime={currentBime} totals={groupTotals} />);
            }
        });

        return rows;
    };

    const DataRow = ({ row }) => (
        <tr>
            <td style={{ whiteSpace: 'nowrap' }}>{row.PeriCtct}/{row.BimeCtct}</td>
            <td style={{ whiteSpace: 'nowrap' }}>{new Date(row.FeveCtct).toLocaleDateString()}</td>
            <td style={{ fontSize: '0.8rem', opacity: 0.8 }} title={row.DetaCtct}>
                <div style={{ fontWeight: 'bold', color: 'var(--primary)' }}>{row.TipoTributo || ''}</div>
                {row.DetaCtct.substring(0, 30)}{row.DetaCtct.length > 30 ? '...' : ''}
            </td>
            <td style={{ textAlign: 'center' }}>{row.hasApremio ? <CheckCircle2 size={16} color="#ef4444" title={`Apremio: ${row.NumeApre}`} /> : '-'}</td>
            <td style={{ textAlign: 'center' }}>{row.hasPlan ? <CheckCircle2 size={16} color="#3b82f6" title={`Plan: ${row.CodiFapa}`} /> : '-'}</td>
            <td style={{ color: '#ef4444' }}>${parseFloat(row.DebeCtct || 0).toFixed(2)}</td>
            <td style={{ color: '#f59e0b' }}>${parseFloat(row.RecaCtct || 0).toFixed(2)}</td>
            <td style={{ color: '#10b981' }}>${parseFloat(row.CredCtct || 0).toFixed(2)}</td>
            <td style={{ fontWeight: 'bold' }}>${parseFloat(row.TotaCtct || 0).toFixed(2)}</td>
            <td>
                <div className={`status-pill ${row.NumeAcpa && row.NumeAcpa != '0' ? 'P' : 'D'}`}>
                    {row.NumeAcpa && row.NumeAcpa != '0' ? 'Pagado' : 'Deuda'}
                </div>
                {row.NumeAcpa && row.NumeAcpa != '0' && (
                    <div style={{ fontSize: '0.7rem', marginTop: '2px', opacity: 0.7 }}>
                        Ref: {row.NumeAcpa}
                        {row.FechaPago && row.FechaPago !== '0000-00-00' && (
                            <div style={{ fontWeight: 'bold' }}>F. Pago: {new Date(row.FechaPago).toLocaleDateString()}</div>
                        )}
                    </div>
                )}
            </td>
        </tr>
    );

    const SubtotalRow = ({ period, bime, totals }) => (
        <tr className="subtotal-row">
            <td colSpan={5} style={{ textAlign: 'right', fontWeight: 'bold', color: 'var(--primary)' }}>
                Subtotal {period}/{bime}:
            </td>
            <td style={{ color: '#ef4444', fontWeight: 'bold' }}>${totals.debe.toFixed(2)}</td>
            <td style={{ color: '#f59e0b', fontWeight: 'bold' }}>${totals.reca.toFixed(2)}</td>
            <td style={{ color: '#10b981', fontWeight: 'bold' }}>${totals.haber.toFixed(2)}</td>
            <td style={{ borderTop: '1px solid var(--primary)', background: 'rgba(37, 99, 235, 0.1)' }}>
                ${totals.total.toFixed(2)}
            </td>
            <td></td>
        </tr>
    );

    const handleSearch = async (e) => {
        if (e) e.preventDefault();
        if (!account) return;

        setLoading(true);
        setError(null);
        setPostgresError(null);

        try {
            // 1. Fetch PostgreSQL Data (New System)
            // It resolves percod internally if searchBy === 'person'
            let pgUrl = `http://localhost:3001/api/ctacte/new/search?officeId=${selectedOffice}&account=${account}&searchType=${searchBy}&percod=${account}&toDate=${toDate}&onlyDebt=${onlyDebt}&showQuotaDetail=${showQuotaDetail}`;
            const pgRes = await fetch(pgUrl);
            const pgData = await pgRes.json();
            
            if (!pgRes.ok) {
                setPostgresError(pgData.error || 'Error searching postgres data');
            } else {
                setPostgresData(pgData);
            }

            // 2. Determine accounts and THEIR OFFICES for MariaDB
            // Logic based on: tpotribcod = CodiOfic
            let queryGroups = [];
            if (searchBy === 'person' && pgData.length > 0) {
                // Group accounts by their resolved officeId from Postgres
                const groups = pgData.reduce((acc, r) => {
                    const offId = r.officeId || 1; // Fallback to 1 if not provided
                    if (!acc[offId]) acc[offId] = new Set();
                    acc[offId].add(r.CuenCtct);
                    return acc;
                }, {});
                
                queryGroups = Object.entries(groups).map(([offId, set]) => ({
                    office: offId,
                    accounts: Array.from(set)
                }));
            } else {
                // If searching by account, use the current office select logic (or fallback to 1)
                queryGroups = [{ office: selectedOffice || 1, accounts: [account] }];
            }

            // 3. Fetch MariaDB Data (Legacy System) for each office group
            let allLegacyData = [];
            for (const group of queryGroups) {
                let legacyUrl = `http://localhost:3001/api/ctacte/legacy/search?officeId=${group.office}&type=optimized&onlyDebt=${onlyDebt}&toDate=${toDate}&fealCorte=${fealCorte}`;
                group.accounts.forEach(acc => {
                    legacyUrl += `&account=${acc}`;
                });

                const legacyRes = await fetch(legacyUrl);
                const legacyDataRes = await legacyRes.json();
                
                if (legacyRes.ok) {
                    allLegacyData = [...allLegacyData, ...legacyDataRes];
                } else {
                    console.error(`Error in MariaDB office ${group.office}:`, legacyDataRes.error);
                }
            }
            setLegacyData(allLegacyData);

        } catch (err) {
            console.error('Error fetching data:', err);
            setError('Error al conectar con los servidores.');
        } finally {
            setLoading(false);
        }
    };

    const handleGeneratePDF = () => {
        const doc = new jsPDF('p', 'pt', 'a4');
        const pageWidth = doc.internal.pageSize.getWidth();
        const mainColor = [37, 99, 235]; // #2563eb
        const legacyColor = [16, 185, 129]; // #10b981

        // Header
        doc.setFontSize(18);
        doc.setTextColor(40);
        doc.text('INFORME DE AUDITORÍA DE MIGRACIÓN', pageWidth / 2, 40, { align: 'center' });
        
        doc.setFontSize(10);
        doc.setTextColor(100);
        doc.text(`Fecha de Reporte: ${new Date().toLocaleString()}`, 40, 65);
        
        const ownerName = postgresData[0]?.OwnerName || legacyData[0]?.DetaCtct?.split(' - ')[0] || 'N/A';
        const percod = postgresData[0]?.PersonId || 'N/A';
        const cuit = postgresData[0]?.CUIT || '--';
        const cta = [...new Set(postgresData.map(d => d.CuenCtct))].join(', ') || account;
        const officeName = offices.find(o => o.id.toString() === selectedOffice)?.name || selectedOffice;

        doc.setFontSize(11);
        doc.setTextColor(40);
        doc.text(`Titular: ${ownerName} (${percod})`, 40, 85);
        doc.text(`CUIT: ${cuit} | Cuenta: ${cta} | Oficina: ${officeName}`, 40, 100);

        if (postgresData[0]?.Nomenclatura) {
            doc.text(`Nomenclatura: ${postgresData[0].Nomenclatura}`, 40, 115);
        } else if (postgresData[0]?.Pabellon) {
            doc.text(`Ubicación: Pab: ${postgresData[0].Pabellon.trim()} Nicho: ${postgresData[0].Nicho?.trim()}`, 40, 115);
        }

        let currentY = 130;

        // LEGACY TABLE
        doc.setFontSize(13);
        doc.setTextColor(legacyColor[0], legacyColor[1], legacyColor[2]);
        doc.text('SISTEMA ORIGINAL (MARIADB)', 40, currentY);
        currentY += 10;

        const legacyRows = legacyData.map(r => [
            `${r.PeriCtct || ''}/${r.BimeCtct || ''}`,
            r.FeveCtct ? new Date(r.FeveCtct).toLocaleDateString() : '-',
            (r.DetaCtct || '').substring(0, 35),
            `$${parseFloat(r.DebeCtct || 0).toLocaleString(undefined, {minimumFractionDigits: 2})}`,
            `$${parseFloat(r.RecaCtct || 0).toLocaleString(undefined, {minimumFractionDigits: 2})}`,
            `$${parseFloat(r.CredCtct || 0).toLocaleString(undefined, {minimumFractionDigits: 2})}`,
            `$${parseFloat(r.TotaCtct || 0).toLocaleString(undefined, {minimumFractionDigits: 2})}`
        ]);

        doc.autoTable({
            startY: currentY,
            head: [['Pe/C', 'Vencimiento', 'Detalle', 'Debe', 'Recargo', 'Haber', 'Total']],
            body: legacyRows,
            theme: 'grid',
            headStyles: { fillColor: legacyColor, fontSize: 8 },
            styles: { fontSize: 7, cellPadding: 3 },
            margin: { left: 40, right: 40 }
        });

        currentY = doc.lastAutoTable.finalY + 30;

        // POSTGRES TABLE
        doc.setFontSize(13);
        doc.setTextColor(mainColor[0], mainColor[1], mainColor[2]);
        doc.text('SISTEMA NUEVO (POSTGRESQL)', 40, currentY);
        currentY += 10;

        const pgRows = postgresData.map(r => [
            `${r.PeriCtct || ''}/${r.BimeCtct || ''}`,
            r.FeveCtct ? new Date(r.FeveCtct).toLocaleDateString() : '-',
            `${r.DetaCtct || ''}${r.RecursoCod ? ' (Rec: '+r.RecursoCod+')' : ''}`,
            `$${parseFloat(r.DebeCtct || 0).toLocaleString(undefined, {minimumFractionDigits: 2})}`,
            `$${parseFloat(r.RecaCtct || 0).toLocaleString(undefined, {minimumFractionDigits: 2})}`,
            `$${parseFloat(r.CredCtct || 0).toLocaleString(undefined, {minimumFractionDigits: 2})}`,
            `$${parseFloat(r.TotaCtct || 0).toLocaleString(undefined, {minimumFractionDigits: 2})}`
        ]);

        doc.autoTable({
            startY: currentY,
            head: [['Pe/C', 'Vencimiento', 'Concepto', 'Debe', 'Interés', 'Haber', 'Total']],
            body: pgRows,
            theme: 'grid',
            headStyles: { fillColor: mainColor, fontSize: 8 },
            styles: { fontSize: 7, cellPadding: 3 },
            margin: { left: 40, right: 40 }
        });

        const blob = doc.output('blob');
        const url = URL.createObjectURL(blob);
        setPdfBlobUrl(url);
        setShowPdfModal(true);
    };

    const renderPostgresRows = () => {
        if (!postgresData || postgresData.length === 0) return null;

        let displayData = postgresData;
        
        // If grouped, aggregate by period/bime
        if (isGrouped && !showQuotaDetail) {
            const grouped = postgresData.reduce((acc, row) => {
                const key = `${row.PeriCtct}-${row.BimeCtct}`;
                const isPaid = (row.NumeAcpa && row.NumeAcpa != '0') || (row.numeacpa && row.numeacpa != '0');
                
                if (!acc[key]) {
                    acc[key] = { 
                        ...row, 
                        DebeCtct: 0, 
                        RecaCtct: 0, 
                        CredCtct: 0, 
                        TotaCtct: 0, 
                        paidCount: 0,
                        totalCount: 0,
                        DetailRef: 'Multiple', 
                        DetailName: 'Varios Conceptos' 
                    };
                }
                acc[key].DebeCtct += parseFloat(row.DebeCtct || 0);
                acc[key].RecaCtct += parseFloat(row.RecaCtct || 0);
                acc[key].CredCtct += parseFloat(row.CredCtct || 0);
                acc[key].TotaCtct += parseFloat(row.TotaCtct || 0);
                acc[key].totalCount += 1;
                if (isPaid) acc[key].paidCount += 1;
                
                // Determine label: if some paid and some not -> Pagos Parciales
                if (acc[key].paidCount > 0 && acc[key].paidCount < acc[key].totalCount) {
                    acc[key].DetailName = `Pagos Parciales (${acc[key].paidCount}/${acc[key].totalCount})`;
                } else if (acc[key].paidCount === acc[key].totalCount) {
                    acc[key].DetailName = 'Pagado Total';
                    acc[key].NumeAcpa = row.NumeAcpa; // Keep one ref
                } else {
                    acc[key].DetailName = 'Pendiente Total';
                    acc[key].NumeAcpa = '0';
                }

                return acc;
            }, {});
            displayData = Object.values(grouped);
        }

        const rows = [];
        let currentPeriod = null;
        let currentBime = null;
        let periodTotals = { debe: 0, reca: 0, haber: 0, total: 0 };

        displayData.forEach((row, idx) => {
            // Check for period change for subtotals
            if (showSubtotals && (currentPeriod !== row.PeriCtct || currentBime !== row.BimeCtct)) {
                if (currentPeriod !== null) {
                    rows.push(<SubtotalRow key={`sub-${currentPeriod}-${currentBime}`} period={currentPeriod} bime={currentBime} totals={periodTotals} />);
                }
                currentPeriod = row.PeriCtct;
                currentBime = row.BimeCtct;
                periodTotals = { debe: 0, reca: 0, haber: 0, total: 0 };
            }

            periodTotals.debe += parseFloat(row.DebeCtct || 0);
            periodTotals.reca += parseFloat(row.RecaCtct || 0);
            periodTotals.haber += parseFloat(row.CredCtct || 0);
            periodTotals.total += parseFloat(row.TotaCtct || 0);

            // Comparison logic
            const legacyMatch = legacyData.find(l => l.PeriCtct === row.PeriCtct && l.BimeCtct === row.BimeCtct);
            const isMismatchDebe = legacyMatch && Math.abs(parseFloat(legacyMatch.DebeCtct) - row.DebeCtct) > 0.1;
            const isMismatchReca = legacyMatch && Math.abs(parseFloat(legacyMatch.RecaCtct) - (row.RecaCtct || 0)) > 1.0;

            rows.push(
                <tr key={`pg-${idx}`} style={{ opacity: row.DetailRef === 'Multiple' ? 0.9 : 1 }}>
                    <td style={{ whiteSpace: 'nowrap' }}>{row.PeriCtct}/{row.BimeCtct}</td>
                    <td style={{ whiteSpace: 'nowrap' }}>{row.ctactefchalta ? new Date(row.ctactefchalta).toLocaleDateString() : (row.FeveCtct ? new Date(row.FeveCtct).toLocaleDateString() : '-')}</td>
                    <td style={{ fontSize: '0.8rem', opacity: 0.8 }}>
                        <div style={{ fontWeight: 'bold', color: 'var(--primary)' }}>{row.DetailName || row.TipoTributo}</div>
                    </td>
                    <td style={{ textAlign: 'center' }}>{row.hasApremio ? <CheckCircle2 size={16} color="#ef4444" /> : '-'}</td>
                    <td style={{ textAlign: 'center' }}>{row.hasPlan ? <CheckCircle2 size={16} color="#3b82f6" /> : '-'}</td>
                    <td style={{ color: isMismatchDebe ? '#fca5a5' : '#ef4444', fontWeight: isMismatchDebe ? 'bold' : 'normal' }}>
                        ${row.DebeCtct.toFixed(2)}
                    </td>
                    <td style={{ color: isMismatchReca ? '#fca5a5' : '#f59e0b', fontWeight: isMismatchReca ? 'bold' : 'normal' }}>
                        ${(row.RecaCtct || 0).toFixed(2)}
                    </td>
                    <td style={{ color: '#10b981' }}>
                        ${(row.CredCtct || 0).toFixed(2)}
                    </td>
                    <td style={{ fontWeight: 'bold' }}>${(row.TotaCtct || 0).toFixed(2)}</td>
                    <td>
                        <div className={`status-pill ${row.NumeAcpa && row.NumeAcpa != '0' ? 'P' : 'D'}`}>
                            {row.NumeAcpa && row.NumeAcpa != '0' ? 'Pagado' : 'Deuda'}
                        </div>
                        {row.NumeAcpa && row.NumeAcpa != '0' && (
                            <div style={{ fontSize: '0.7rem', marginTop: '2px', opacity: 0.7 }}>
                                Ref: {row.NumeAcpa}
                                {row.FechaPago && row.FechaPago !== '0001-01-01' && (
                                    <div style={{ fontWeight: 'bold' }}>F. Pago: {new Date(row.FechaPago).toLocaleDateString()}</div>
                                )}
                            </div>
                        )}
                    </td>
                </tr>
            );
        });

        // Add last subtotal
        if (showSubtotals && currentPeriod !== null) {
            rows.push(<SubtotalRow key={`sub-last`} period={currentPeriod} bime={currentBime} totals={periodTotals} />);
        }

        return rows;
    };

    const ownerData = postgresData.length > 0 ? postgresData[0] : null;
    const ownerNameFallback = ownerData?.OwnerName?.trim() || (legacyData.length > 0 ? "Titular Encontrado" : null);

    const PersonModal = ({ person, onClose }) => {
        if (!person) return (
            <div className="modal-overlay" onClick={onClose}>
                <div className="modal-content" onClick={e => e.stopPropagation()}>
                    <div className="modal-header">
                        <h2>Información no disponible</h2>
                        <button className="close-btn" onClick={onClose}>&times;</button>
                    </div>
                    <div className="modal-body">
                        <p>No se encontraron datos extendidos de la persona en el sistema de migración.</p>
                    </div>
                </div>
            </div>
        );
        return (
            <div className="modal-overlay" onClick={onClose}>
                <div className="modal-content" onClick={e => e.stopPropagation()}>
                    <div className="modal-header">
                        <h2>Detalles de la Persona</h2>
                        <button className="close-btn" onClick={onClose}>&times;</button>
                    </div>
                    <div className="modal-body">
                        <div className="info-grid">
                            <div className="info-item">
                                <label>Nombre:</label>
                                <span>{person.OwnerName || 'Desconocido'}</span>
                            </div>
                            <div className="info-item">
                                <label>CUIT/CUIL:</label>
                                <span>{person.CUIT === '--' ? 'Sin CUIT' : person.CUIT}</span>
                            </div>
                            <div className="info-item">
                                <label>Percod:</label>
                                <span>{person.PersonId || '-'}</span>
                            </div>
                            <div className="info-item">
                                <label>Actividad:</label>
                                <span>{person.TipoActividad || 'Información no disponible'}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    };

    return (
        <div className="ctacte-view">
            {selectedPerson !== null && <PersonModal person={selectedPerson} onClose={() => setSelectedPerson(null)} />}
            {/* Top Toolbar */}
            <div className="toolbar-dashboard">
                {ownerNameFallback && (
                    <div className="owner-header" style={{ display: 'flex', alignItems: 'center', gap: '1rem', cursor: 'pointer' }} onClick={() => setSelectedPerson(ownerData)}>
                        <Info size={20} color="var(--primary)" />
                        <div style={{ display: 'flex', flexDirection: 'column' }}>
                            <div style={{ fontWeight: 'bold', fontSize: '1.2rem' }}>
                                {ownerNameFallback} {ownerData?.PersonId && <span style={{ opacity: 0.6, fontSize: '0.9rem' }}>({ownerData.PersonId})</span>}
                                {postgresData.length > 0 && searchBy === 'person' && (
                                    <span style={{ marginLeft: '10px', color: '#10b981', fontSize: '1rem', background: 'rgba(16, 185, 129, 0.1)', padding: '2px 8px', borderRadius: '4px' }}>
                                        <strong>Cta:</strong> {[...new Set(postgresData.map(d => d.CuenCtct))].join(', ')}
                                    </span>
                                )}
                            </div>
                            <div style={{ display: 'flex', gap: '0.8rem', fontSize: '0.85rem', opacity: 0.8 }}>
                                {ownerData?.CUIT && ownerData.CUIT !== '--' && <span><strong>CUIT:</strong> {ownerData.CUIT}</span>}
                                {ownerData?.TipoActividad && (
                                    <span className="activity-badge" style={{ background: 'rgba(59, 130, 246, 0.2)', padding: '2px 8px', borderRadius: '12px', color: '#60a5fa' }}>
                                        {ownerData.TipoActividad}
                                    </span>
                                )}
                                {postgresData.length > 0 && (
                                    <div style={{ display: 'flex', gap: '1rem', flexWrap: 'wrap', marginTop: '4px' }}>
                                        <span style={{ color: 'var(--primary)', opacity: 0.9 }}>
                                            <strong>ID Tributo:</strong> {postgresData[0].TributoID} - {postgresData[0].TipoTributo}
                                        </span>
                                        {postgresData[0].Nomenclatura && (
                                            <span style={{ color: '#10b981' }}>
                                                <strong>Nom:</strong> {postgresData[0].Nomenclatura}
                                            </span>
                                        )}
                                        {postgresData[0].Pabellon && (
                                            <span style={{ color: '#f59e0b' }}>
                                                <strong>Pab:</strong> {postgresData[0].Pabellon.trim()} 
                                                {postgresData[0].Nicho && <span><strong> Nicho:</strong> {postgresData[0].Nicho.trim()}</span>}
                                            </span>
                                        )}
                                    </div>
                                )}
                            </div>
                        </div>
                    </div>
                )}
                <form onSubmit={handleSearch} className="search-controls" style={{ flexWrap: 'wrap' }}>
                    <div className="input-group">
                        <Filter size={18} />
                        <select 
                            value={searchBy} 
                            onChange={(e) => setSearchBy(e.target.value)}
                            style={{ background: 'transparent', border: 'none', color: 'white', padding: '0.5rem' }}
                        >
                            <option value="account">Por Cuenta</option>
                            <option value="person">Por Persona (Percod)</option>
                        </select>
                    </div>

                    <div className="input-group">
                        <Search size={18} />
                        <input 
                            type="text" 
                            placeholder={searchBy === 'account' ? "Nro. Cuenta" : "DNI / ID Persona"} 
                            value={account}
                            onChange={(e) => setAccount(e.target.value)}
                        />
                        {isResolvingOffices && <div className="loader-mini"></div>}
                    </div>

                    <div className="input-group" style={{ 
                        border: foundOffices.length > 1 ? '1px solid #fbbf24' : '1px solid var(--border)',
                        animation: foundOffices.length > 1 ? 'pulse-border 2s infinite' : 'none'
                    }}>
                        <Filter size={18} color={foundOffices.length > 1 ? '#fbbf24' : 'currentColor'} />
                        <select 
                            value={selectedOffice} 
                            onChange={(e) => setSelectedOffice(e.target.value)}
                            style={{ background: 'transparent', border: 'none', color: 'white', padding: '0.5rem', width: '180px' }}
                        >
                            {foundOffices.length > 0 ? (
                                foundOffices.map(off => (
                                    <option key={off.id} value={off.id}>{off.name} ({off.id})</option>
                                ))
                            ) : (
                                <option value="">Seleccione Oficina...</option>
                            )}
                        </select>
                        {foundOffices.length > 1 && <span className="badge-warning">!</span>}
                    </div>

                    <div className="input-group">
                        <Calendar size={18} />
                        <div style={{ display: 'flex', flexDirection: 'column', padding: '2px' }}>
                            <label style={{ fontSize: '0.65rem', opacity: 0.7, marginLeft: '0.5rem' }}>Fecha Tope (Interés)</label>
                            <input 
                                type="date" 
                                value={toDate}
                                onChange={(e) => setToDate(e.target.value)}
                                style={{ background: 'transparent', border: 'none', color: 'white' }}
                            />
                        </div>
                    </div>

                    <div className="input-group">
                        <Calendar size={18} color="#fbbf24" title="Filtro exclusivo para MariaDB" />
                        <div style={{ display: 'flex', flexDirection: 'column', padding: '2px' }}>
                            <label style={{ fontSize: '0.65rem', color: '#fbbf24', marginLeft: '0.5rem' }}>Alta Corte (Producción)</label>
                            <input 
                                type="date" 
                                value={fealCorte}
                                onChange={(e) => setFealCorte(e.target.value)}
                                style={{ background: 'transparent', border: 'none', color: '#fbbf24' }}
                            />
                        </div>
                    </div>

                    <div className="checkbox-group">
                        <input 
                            type="checkbox" 
                            id="onlyDebt" 
                            checked={onlyDebt}
                            onChange={(e) => setOnlyDebt(e.target.checked)}
                        />
                        <label htmlFor="onlyDebt">Solo Deuda</label>
                    </div>

                    <div className="checkbox-group">
                        <input 
                            type="checkbox" 
                            id="showQuotaDetail" 
                            checked={showQuotaDetail}
                            onChange={(e) => setShowQuotaDetail(e.target.checked)}
                        />
                        <label htmlFor="showQuotaDetail" title="Postgres: Muestra GeneracionCuota">Detalle Cuotas (P)</label>
                    </div>

                    <button type="submit" className="btn-search" disabled={loading}>
                        {loading ? 'Buscando...' : 'Buscar'}
                    </button>
                    
                    <div className="divider-vertical" style={{ width: '1px', height: '20px', background: 'var(--border)', margin: '0 0.5rem' }}></div>
                    
                    <div className="checkbox-group">
                        <input 
                            type="checkbox" 
                            id="showSubtotals" 
                            checked={showSubtotals}
                            onChange={(e) => setShowSubtotals(e.target.checked)}
                        />
                        <label htmlFor="showSubtotals">Totales Periodo</label>
                    </div>

                    <div className="checkbox-group">
                        <input 
                            type="checkbox" 
                            id="isGrouped" 
                            checked={isGrouped}
                            onChange={(e) => setIsGrouped(e.target.checked)}
                        />
                        <label htmlFor="isGrouped">Agrupar Cuotas</label>
                    </div>

                    <div className="divider-vertical" style={{ width: '1px', height: '20px', background: 'var(--border)', margin: '0 0.5rem' }}></div>

                    <button 
                        type="button" 
                        className="btn-pdf" 
                        disabled={!account || loading}
                        onClick={() => setShowPdfModal(true)}
                    >
                        Vista Previa PDF
                    </button>

                    <button 
                        type="button" 
                        className="btn-sql"
                        onClick={() => setShowSqlMariaModal(true)}
                    >
                        SQL MariaDB
                    </button>

                    <button 
                        type="button" 
                        className="btn-sql"
                        onClick={() => setShowSqlPgModal(true)}
                    >
                        SQL Postgres
                    </button>
                </form>
            </div>

            {/* Split Panels */}
            <div className="split-panels">
                {/* Legacy Panel (MariaDB) */}
                <div className="panel legacy-panel" style={{ width: `${leftWidth}%`, flex: 'none' }}>
                    <div className="panel-header">
                        <h3>SISTEMA ORIGINAL (MARIADB)</h3>
                        <div className="db-badge maria">Legacy</div>
                    </div>
                    
                    <div className="table-container">
                        {error && <div className="error-msg"><AlertCircle size={16} /> {error}</div>}
                        {legacyData.length > 0 ? (
                            <table className="comparison-table">
                                <thead>
                                    <tr>
                                        <th>Periodo</th>
                                        <th>Fecha Venc</th>
                                        <th>Detalle</th>
                                        <th>Apr.</th>
                                        <th>Plan</th>
                                        <th>Debe</th>
                                        <th>Recargo</th>
                                        <th>Haber</th>
                                        <th>Total</th>
                                        <th>Estado/Ref</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {renderRows()}
                                </tbody>
                                <tfoot style={{ background: 'rgba(255,255,255,0.05)', fontWeight: 'bold' }}>
                                    <tr>
                                        <td colSpan={5} style={{ textAlign: 'right' }}>TOTALES GENERALES:</td>
                                        <td style={{ color: '#ef4444' }}>
                                            ${legacyData.reduce((acc, row) => acc + parseFloat(row.DebeCtct || 0), 0).toFixed(2)}
                                        </td>
                                        <td style={{ color: '#f59e0b' }}>
                                            ${legacyData.reduce((acc, row) => acc + parseFloat(row.RecaCtct || 0), 0).toFixed(2)}
                                        </td>
                                        <td style={{ color: '#10b981' }}>
                                            ${legacyData.reduce((acc, row) => acc + parseFloat(row.CredCtct || 0), 0).toFixed(2)}
                                        </td>
                                        <td style={{ fontSize: '1.1rem', borderTop: '2px solid var(--primary)' }}>
                                            ${legacyData.reduce((acc, row) => acc + parseFloat(row.TotaCtct || 0), 0).toFixed(2)}
                                        </td>
                                        <td></td>
                                    </tr>
                                </tfoot>
                            </table>
                        ) : (
                            <div className="empty-state">
                                {!loading && <p>No hay datos para mostrar. Realiza una búsqueda.</p>}
                            </div>
                        )}
                    </div>
                </div>

                {/* Resizer Divider */}
                <div 
                    className={`resizer ${isResizing ? 'resizing' : ''}`} 
                    onMouseDown={handleMouseDown}
                />

                {/* New Panel (Postgres) */}
                <div className="panel new-panel" style={{ width: `${100 - leftWidth}%`, flex: 'none' }}>
                    <div className="panel-header">
                        <h3>SISTEMA NUEVO (POSTGRESQL)</h3>
                        <div className="db-badge postgres">Postgres</div>
                    </div>
                    
                    <div className="table-container">
                        {postgresError && <div className="error-msg"><AlertCircle size={16} /> {postgresError}</div>}
                        {postgresData.length > 0 ? (
                            <table className="comparison-table">
                                <thead>
                                    <tr>
                                        <th>Periodo</th>
                                        <th>Fecha Alta</th>
                                        <th>Tributo</th>
                                        <th>Apr.</th>
                                        <th>Plan</th>
                                        <th>Debe</th>
                                        <th>Interés</th>
                                        <th>Haber</th>
                                        <th>Total</th>
                                        <th>Estado/Ref</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {renderPostgresRows()}
                                </tbody>
                                <tfoot style={{ background: 'rgba(255,255,255,0.05)', fontWeight: 'bold' }}>
                                    <tr>
                                        <td colSpan={5} style={{ textAlign: 'right' }}>TOTALES POSTGRES:</td>
                                        <td style={{ color: '#ef4444' }}>
                                            ${postgresData.reduce((acc, row) => acc + parseFloat(row.DebeCtct || 0), 0).toFixed(2)}
                                        </td>
                                        <td style={{ color: '#f59e0b' }}>
                                            ${postgresData.reduce((acc, row) => acc + parseFloat(row.RecaCtct || 0), 0).toFixed(2)}
                                        </td>
                                        <td style={{ color: '#10b981' }}>
                                            ${postgresData.reduce((acc, row) => acc + parseFloat(row.CredCtct || 0), 0).toFixed(2)}
                                        </td>
                                        <td style={{ fontSize: '1.1rem', borderTop: '2px solid var(--primary)' }}>
                                            ${postgresData.reduce((acc, row) => acc + parseFloat(row.TotaCtct || 0), 0).toFixed(2)}
                                        </td>
                                        <td></td>
                                    </tr>
                                </tfoot>
                            </table>
                        ) : (
                            <div className="empty-state">
                                {!loading && !postgresError && (
                                    <>
                                        <p>No hay datos en Postgres para esta cuenta.</p>
                                        <Info size={24} opacity={0.3} />
                                    </>
                                )}
                            </div>
                        )}
                    </div>
                </div>
            </div>

            {/* MODALS */}
            {showPdfModal && (
                <div className="modal-overlay" onClick={() => setShowPdfModal(false)}>
                    <div className="modal-content pdf-modal" onClick={e => e.stopPropagation()}>
                        <div className="modal-header">
                            <h3><FileText size={18} style={{ marginRight: '8px' }} /> Vista Previa del Informe</h3>
                            <div style={{ display: 'flex', gap: '10px' }}>
                                <a 
                                    href={pdfBlobUrl} 
                                    download={`informe_auditoria_${account || 'export'}.pdf`}
                                    className="btn btn-pdf"
                                    style={{ padding: '4px 12px', fontSize: '0.8rem', background: '#2563eb' }}
                                >
                                    <Download size={14} /> Descargar
                                </a>
                                <button className="close-btn" onClick={() => setShowPdfModal(false)}>&times;</button>
                            </div>
                        </div>
                        <div style={{ flex: 1, background: '#525659', padding: '10px', height: '100%' }}>
                            <iframe 
                                src={pdfBlobUrl}
                                width="100%"
                                height="100%"
                                style={{ border: 'none', borderRadius: '4px' }}
                                title="PDF Preview"
                            />
                        </div>
                    </div>
                </div>
            )}

            {showSqlMariaModal && (
                <div className="modal-overlay" onClick={() => setShowSqlMariaModal(false)}>
                    <div className="modal-content" onClick={e => e.stopPropagation()}>
                        <div className="modal-header">
                            <h3>Consulta SQL MariaDB (Legacy)</h3>
                            <button onClick={() => setShowSqlMariaModal(false)}>&times;</button>
                        </div>
                        <pre className="sql-code">
{`-- 1. Preparar tabla temporal
CREATE TEMPORARY TABLE tmp_ctacte_historica LIKE ctacte;

-- 2. Insertar de tabla actual
INSERT INTO tmp_ctacte_historica (...) 
SELECT ... FROM ctacte 
WHERE CodiOfic = '\${selectedOffice}' AND CuenCtct = '\${account}';

-- 3. Insertar de archivo histórico (si aplica)
INSERT IGNORE INTO tmp_ctacte_historica (...) 
SELECT ... FROM recahisto.histoctacte 
WHERE CodiOfic = '${selectedOffice}' AND CuenCtct = '${account}';

-- 4. Consulta final con joins
SELECT tmp.*, c.DetaConc, tt.TpoTribNom 
FROM tmp_ctacte_historica tmp
LEFT JOIN concepto c ON tmp.CodiConc = c.CodiConc
LEFT JOIN tipotributo tt ON tmp.CodiOfic = tt.TpoTribCod
ORDER BY tmp.PeriCtct DESC, tmp.BimeCtct DESC;`}
                        </pre>
                    </div>
                </div>
            )}

            {showSqlPgModal && (
                <div className="modal-overlay" onClick={() => setShowSqlPgModal(false)}>
                    <div className="modal-content" onClick={e => e.stopPropagation()}>
                        <div className="modal-header">
                            <h3>Consulta SQL PostgreSQL (Nuevo)</h3>
                            <button onClick={() => setShowSqlPgModal(false)}>&times;</button>
                        </div>
                        <pre className="sql-code">
{`SELECT 
    cc.ctactecod, gc.genctaancta as "PeriCtct", gc.genctanrocta as "BimeCtct", 
    cc.ctactefchalta, gc.genctafchvto as "FeveCtct", 
    ${showQuotaDetail ? 'gcd.genctadetimp' : 'gc.genctaimpcta'} as "DebeCtct",
    ${showQuotaDetail ? 'trf.trfdsc' : 'tt.tpotribnom'} as "DetailName", 
    tt.tpotribnom as "TipoTributo",
    p.pernom as "Titular"
FROM public.generacioncuota gc
${showQuotaDetail ? 'LEFT JOIN public.generacioncuotadetalle gcd ON gc.genctacod = gcd.genctadetcod' : ''}
${showQuotaDetail ? 'LEFT JOIN public.tarifa trf ON gcd.genctadettar = trf.trfcod' : ''}
LEFT JOIN public.cuentacorriente cc ON cc.genctacod = gc.genctacod
INNER JOIN public.tributo t ON gc.genctatribcod = t.tribcod
INNER JOIN public.tipotributo tt ON t.tpotribcod = tt.tpotribcod
INNER JOIN public.persona p ON gc.genctapercod = p.percod 
WHERE ${searchBy === 'person' ? `gc.genctapercod = '${account}'` : `t.tbecod = '${account}'`}
AND tt.tpotribcod = '${selectedOffice}'
${onlyDebt ? 'AND (cc.cabpgoctactecod IS NULL OR cc.cabpgoctactecod = 0)' : ''}
ORDER BY gc.genctaancta DESC, gc.genctanrocta DESC;`}
                        </pre>
                    </div>
                </div>
            )}

            <style>{`
                .modal-overlay {
                    position: fixed;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    background: rgba(0,0,0,0.8);
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    z-index: 1000;
                    backdrop-filter: blur(4px);
                }

                .modal-content {
                    background: #1e293b;
                    padding: 0;
                    border-radius: 12px;
                    width: 80%;
                    max-width: 900px;
                    max-height: 80vh;
                    overflow: hidden;
                    border: 1px solid rgba(255,255,255,0.1);
                    display: flex;
                    flex-direction: column;
                }

                .pdf-modal {
                    width: 90%;
                    height: 90vh;
                    max-width: 1200px;
                }

                .modal-header {
                    padding: 1rem 1.5rem;
                    background: rgba(0,0,0,0.2);
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    border-bottom: 1px solid rgba(255,255,255,0.1);
                }

                .modal-header h3 { color: white; margin: 0; font-size: 1.1rem; }
                .modal-header button { 
                    background: transparent; 
                    border: none; 
                    color: white; 
                    font-size: 1.5rem; 
                    cursor: pointer; 
                }

                .sql-code {
                    padding: 1.5rem;
                    background: #0f172a;
                    color: #94a3b8;
                    font-family: 'Consolas', monospace;
                    font-size: 0.85rem;
                    line-height: 1.5;
                    overflow: auto;
                    margin: 0;
                }

                .btn-sql {
                    background: rgba(255,255,255,0.05);
                    border: 1px solid rgba(255,255,255,0.1);
                    color: #94a3b8;
                    padding: 0.4rem 0.8rem;
                    border-radius: 6px;
                    cursor: pointer;
                    font-size: 0.8rem;
                    transition: all 0.2s;
                }

                .btn-sql:hover {
                    background: rgba(255,255,255,0.1);
                    color: white;
                }

                .loader-mini {
                    width: 14px;
                    height: 14px;
                    border: 2px solid rgba(255,255,255,0.3);
                    border-radius: 50%;
                    border-top-color: white;
                    animation: spin 1s linear infinite;
                    margin-left: -25px;
                    margin-right: 10px;
                }

                @keyframes spin {
                    to { transform: rotate(360deg); }
                }

                @keyframes pulse-border {
                    0% { border-color: rgba(251, 191, 36, 0.4); }
                    50% { border-color: rgba(251, 191, 36, 1); }
                    100% { border-color: rgba(251, 191, 36, 0.4); }
                }

                .badge-warning {
                    background: #fbbf24;
                    color: #000;
                    font-weight: bold;
                    border-radius: 50%;
                    width: 18px;
                    height: 18px;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    font-size: 0.7rem;
                    margin-right: 5px;
                }

                .ctacte-view {
                    display: flex;
                    flex-direction: column;
                    height: calc(100vh - 64px);
                }

                .toolbar-dashboard {
                    padding: 1rem 2rem;
                    background: var(--glass);
                    border-bottom: 1px solid var(--border);
                }

                .search-controls {
                    display: flex;
                    gap: 1.5rem;
                    align-items: center;
                }

                .input-group {
                    display: flex;
                    align-items: center;
                    background: rgba(0, 0, 0, 0.2);
                    border: 1px solid var(--border);
                    border-radius: 6px;
                    padding-left: 0.75rem;
                }

                .input-group input, .input-group select {
                    background: transparent;
                    border: none;
                    color: white;
                    padding: 0.5rem 0.75rem;
                    outline: none;
                    font-size: 0.9rem;
                    cursor: pointer;
                }

                .input-group select option {
                    background-color: #1e293b;
                    color: white;
                }

                .checkbox-group {
                    display: flex;
                    align-items: center;
                    gap: 0.5rem;
                    font-size: 0.9rem;
                    color: var(--text-dim);
                }

                .btn-search {
                    background: var(--primary);
                    color: white;
                    border: none;
                    padding: 0.5rem 1.5rem;
                    border-radius: 6px;
                    cursor: pointer;
                    font-weight: 600;
                    transition: background 0.2s;
                }
                .btn-search:hover { background: #1d4ed8; }

                /* Modals */
                .modal-overlay {
                    position: fixed;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background: rgba(0, 0, 0, 0.85);
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    z-index: 2000;
                    backdrop-filter: blur(4px);
                }

                .modal-content {
                    background: #1e293b;
                    border-radius: 12px;
                    width: 90%;
                    max-width: 900px;
                    height: 90vh;
                    display: flex;
                    flex-direction: column;
                    box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
                    border: 1px solid rgba(255, 255, 255, 0.1);
                    overflow: hidden;
                }

                .modal-header {
                    padding: 1rem 1.5rem;
                    background: #0f172a;
                    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                }

                .modal-header h3 {
                    margin: 0;
                    font-size: 1.1rem;
                    color: white;
                    display: flex;
                    align-items: center;
                }

                .close-btn {
                    background: none;
                    border: none;
                    color: white;
                    font-size: 1.5rem;
                    cursor: pointer;
                    opacity: 0.6;
                    transition: opacity 0.2s;
                }
                .close-btn:hover { opacity: 1; }

                .pdf-modal {
                    max-width: 1100px;
                    width: 95%;
                }

                .btn-pdf {
                    background: #dc2626;
                    color: white;
                    border: none;
                    padding: 0.5rem 1rem;
                    border-radius: 6px;
                    cursor: pointer;
                    display: flex;
                    align-items: center;
                    gap: 0.5rem;
                    font-weight: 600;
                    transition: all 0.2s;
                }
                .btn-pdf:hover { background: #b91c1c; transform: translateY(-1px); }
                .btn-pdf:disabled { opacity: 0.5; cursor: not-allowed; }

                .split-panels {
                    display: flex;
                    flex-direction: row;
                    flex-wrap: nowrap;
                    padding: 1.5rem;
                    flex: 1;
                    overflow: hidden;
                    width: 100%;
                    gap: 0;
                }

                .panel {
                    background: var(--card-bg);
                    border-radius: 12px;
                    border: 1px solid var(--glass-border);
                    display: flex;
                    flex-direction: column;
                    overflow: hidden;
                    min-width: 100px;
                }

                .panel-header {
                    padding: 1rem 1.5rem;
                    border-bottom: 1px solid var(--border);
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                    background: rgba(0,0,0,0.1);
                    flex-shrink: 0;
                }

                .panel-header h3 { font-size: 0.9rem; font-weight: 700; opacity: 0.8; }

                .db-badge {
                    font-size: 0.7rem;
                    padding: 0.2rem 0.6rem;
                    border-radius: 4px;
                    text-transform: uppercase;
                    font-weight: 800;
                }
                .db-badge.maria { background: rgba(16, 185, 129, 0.2); color: #10b981; }
                .db-badge.postgres { background: rgba(37, 99, 235, 0.2); color: #2563eb; }

                .table-container { 
                    flex: 1; 
                    overflow-y: auto; 
                    overflow-x: auto; 
                    padding: 0.5rem; 
                }

                .comparison-table {
                    width: 100%;
                    border-collapse: collapse;
                    font-size: 0.85rem;
                }

                .comparison-table th {
                    text-align: left;
                    padding: 0.75rem;
                    background: var(--glass);
                    color: var(--text-dim);
                    position: sticky;
                    top: 0;
                }

                .comparison-table td {
                    padding: 0.35rem 0.75rem;
                    border-bottom: 1px solid rgba(255,255,255,0.02);
                    transition: background 0.1s;
                }

                .comparison-table tr:hover td {
                    background: rgba(255, 255, 255, 0.05);
                }

                .cell-total { color: #f8fafc; font-weight: 600; }

                .status-pill {
                    padding: 0.2rem 0.5rem;
                    border-radius: 4px;
                    font-size: 0.75rem;
                }
                .status-pill.P { background: rgba(16, 185, 129, 0.1); color: #10b981; }
                .status-pill.D { background: rgba(239, 68, 68, 0.1); color: #ef4444; }

                .empty-state {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    justify-content: center;
                    height: 100%;
                    color: var(--text-dim);
                    gap: 1rem;
                }

                .error-msg {
                    padding: 1rem;
                    background: rgba(239, 68, 68, 0.1);
                    color: #ef4444;
                    border-radius: 6px;
                    margin-bottom: 1rem;
                    display: flex;
                    align-items: center;
                    gap: 0.5rem;
                }
                .owner-header {
                    margin-bottom: 1rem;
                    display: flex;
                    align-items: center;
                    gap: 0.75rem;
                    background: var(--glass);
                    padding: 0.75rem 1.5rem;
                    border-radius: 8px;
                    border: 1px solid var(--primary);
                    color: white;
                    font-size: 1rem;
                }

                .owner-header strong {
                    color: var(--primary);
                    text-transform: uppercase;
                    font-size: 0.8rem;
                    letter-spacing: 0.05rem;
                }
            `}</style>
        </div>
    );
};

export default CuentaCorriente;
