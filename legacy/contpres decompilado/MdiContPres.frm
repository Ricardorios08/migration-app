VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC0080C7E7B78D}#1.0#0"; "C:\WINDOWS\SysWOW64\mswinsck.ocx"
Object = "{F5E116E1-0563-11D8-AA80000B6A0D10CB}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\HookMenu.ocx"
Begin VB.MDIForm MdiContPres
  Caption = "InfoGov - Contabilidad y Presupuesto"
  BackColor = &H8000000C&
  WindowState = 2
  Picture = "MdiContPres.frx":0000
  Icon = "MdiContPres.frx":0002A6DB
  LinkTopic = "MDIForm1"
  ClientLeft = 165
  ClientTop = 855
  ClientWidth = 14430
  ClientHeight = 8745
  Begin MSWinsockLib.Winsock Winsock
    OleObjectBlob = "MdiContPres.frx":0002AFA5
    Left = 720
    Top = 4200
  End
  Begin VB.Timer VersionTmr
    Interval = 60000
    Left = 720
    Top = 3600
  End
  Begin HookMenu.XpMenu XpMenu1
    OleObjectBlob = "MdiContPres.frx":0002AFE5
    Left = 720
    Top = 3000
  End
  Begin VB.Menu Contaduria
    Caption = "Contaduría"
    Begin VB.Menu ContaduriaImputacionesporContaduria
      Caption = "Imputaciones por Contaduría"
      Begin VB.Menu PreventivaDefinitivaDevengado
        Caption = "Preventivas, Definitivas y Devengados"
        Enabled = 0   'False
      End
      Begin VB.Menu ImputacionesdeSueldos
        Caption = "Imputaciones de Sueldos"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu ImputacionesdesdeComprasySuministros
      Caption = "Imputaciones desde Compras y Suministros"
      Begin VB.Menu AjustedePreventivaporCotizacion
        Caption = "Ajuste de Preventiva por Cotización"
        Enabled = 0   'False
      End
      Begin VB.Menu DefinitivasporOrdendeCompra
        Caption = "Definitivas por Orden de Compra"
        Enabled = 0   'False
      End
      Begin VB.Menu DevengadosporRecepciondeOrdendeCompra
        Caption = "Devengados por Recepción de Orden de Compra"
        Enabled = 0   'False
      End
      Begin VB.Menu ReasignarDefinitivadeOrdendeCompra
        Caption = "Reasignar Definitiva de Orden de Compra"
        Enabled = 0   'False
      End
      Begin VB.Menu ReasignarDevengadodeOrdendeCompra
        Caption = "Reasignar Devengado de Orden de Compra"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu TransferenciadeImputaciones
      Caption = "Transferencia de Imputaciones"
      Enabled = 0   'False
    End
    Begin VB.Menu ImputacionesalCierredeEjercicio
      Caption = "Imputaciones al Cierre de Ejercicio"
      Begin VB.Menu ReapropiaralEjercicioSiguiente
        Caption = "Reapropiar al Ejercicio Siguiente"
        Enabled = 0   'False
      End
      Begin VB.Menu PasaraResiduosPasivos
        Caption = "Pasar a Residuos Pasivos"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu LiquidaciondelGasto
      Caption = "Liquidación del Gasto"
      Begin VB.Menu Liquidacion
        Caption = "Liquidación General"
        Enabled = 0   'False
      End
      Begin VB.Menu LiquidaciondeImportesFijos
        Caption = "Liquidación de Importes Fijos"
        Enabled = 0   'False
      End
      Begin VB.Menu LiquidaciondeFondos
        Caption = "Liquidación por Cuenta Contable"
        Enabled = 0   'False
      End
      Begin VB.Menu VolantedeLiquidacion
        Caption = "Volante de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu ConceptosdeLiquidacion
        Caption = "Conceptos de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu DeclaraciondeIngresosBrutos
        Caption = "Declaración de Ingresos Brutos"
        Enabled = 0   'False
      End
      Begin VB.Menu DeclaraciondeGanancias
        Caption = "Declaración de Ganancias"
        Enabled = 0   'False
      End
      Begin VB.Menu DeclaraciondeSeguridadSocial
        Caption = "Declaración de Seguridad Social"
        Enabled = 0   'False
      End
      Begin VB.Menu DeclaraciondeIVA
        Caption = "Declaración de IVA"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu OrdenesdePago
      Caption = "Órdenes de Pago"
      Begin VB.Menu Ordenpago
        Caption = "Alta, Baja y Modificación"
        Enabled = 0   'False
      End
      Begin VB.Menu OrdenpagoRes
        Visible = 0   'False
        Caption = "Orden pago reservada"
        Enabled = 0   'False
      End
      Begin VB.Menu EmisionCheque
        Caption = "Emisión de Cheques"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeCheques
        Caption = "Listado de Cheques"
        Enabled = 0   'False
      End
      Begin VB.Menu ComprobantedeOrdendePago
        Caption = "Comprobante de Orden de Pago"
        Enabled = 0   'False
      End
      Begin VB.Menu CertificadodeRetencion
        Caption = "Certificado de Retención"
        Enabled = 0   'False
      End
      Begin VB.Menu Caratula
        Caption = "Carátula"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Remision
      Caption = "Remisión de Órdenes de Pago"
      Enabled = 0   'False
    End
    Begin VB.Menu ContaduriaConciliacionBancaria
      Caption = "Conciliación Bancaria"
      Begin VB.Menu ConciliacionBancaria
        Caption = "Conciliación Bancaria"
        Enabled = 0   'False
      End
      Begin VB.Menu ReportedeConciliacion
        Caption = "Reporte de Conciliación"
        Enabled = 0   'False
      End
      Begin VB.Menu ExtractoBancario
        Caption = "Extracto Bancario"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeExtractoBancario
        Caption = "Listado de Extracto Bancario"
        Enabled = 0   'False
      End
      Begin VB.Menu ConciliacionAutomaticaBancoNacion
        Caption = "Conciliación Automática Banco Nación"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu separador1
      Caption = "-"
    End
    Begin VB.Menu ImputacionesconSaldo
      Caption = "Imputaciones con Saldo"
      Begin VB.Menu PreventivasNoUtilizadas
        Caption = "Preventivas No Utilizadas"
        Enabled = 0   'False
      End
      Begin VB.Menu ReapropiacionalEjercicioSiguiente
        Caption = "Reapropiación al Ejercicio Siguiente"
        Enabled = 0   'False
      End
      Begin VB.Menu ResiduosPasivos
        Caption = "Residuos Pasivos por Partida"
        Enabled = 0   'False
      End
      Begin VB.Menu ResiduosPasivosporExpediente
        Caption = "Residuos Pasivos por Expediente"
        Enabled = 0   'False
      End
      Begin VB.Menu DeudaExigible
        Caption = "Deuda Exigible"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu LibroyResumendeImputaciones
      Caption = "Libro y Resumen de Imputaciones"
      Begin VB.Menu LibrodeImputaciones
        Caption = "Libro de Imputaciones"
        Enabled = 0   'False
      End
      Begin VB.Menu LibrodeImputacionesporInsumo
        Caption = "Libro de Imputaciones por Insumo"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeImputaciones
        Caption = "Resumen de Imputaciones"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeImputacionesporInsumo
        Caption = "Resumen de Imputaciones por Insumo"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeImputacionesporPartida
        Caption = "Resumen de Imputaciones por Partida"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeImputacionesporOrganigrama
        Caption = "Resumen de Imputaciones por Organigrama"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeImputacionesporFinalidad
        Caption = "Resumen de Imputaciones por Finalidad"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeImputacionesporOrganigramaPartidaFinalida
        Caption = "Resumen de Imputaciones por Organigrama-Partida-Finalidad"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeImputacionesporUnidaddeGasto
        Caption = "Resumen de Imputaciones por Unidad de Gasto"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu VolantedeImputaciones
      Caption = "Volante de Imputaciones (Exp.Original)"
      Enabled = 0   'False
    End
    Begin VB.Menu VolantedeImputacionesExpdePago
      Caption = "Volante de Imputaciones (Exp. de Pago)"
      Enabled = 0   'False
    End
    Begin VB.Menu InformesporProveedor
      Caption = "Informes por Proveedor"
      Begin VB.Menu ConsultaporProveedor
        Caption = "Consulta por Proveedor"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumenporProveedorConReap
        Caption = "Resumen por Proveedor c/reapropiación"
        Enabled = 0   'False
      End
      Begin VB.Menu ReapropiacionporProveedor
        Caption = "Reapropiación por Proveedor"
        Enabled = 0   'False
      End
      Begin VB.Menu ResiduosPasivosporProveedor
        Caption = "Residuos Pasivos por Proveedor"
        Enabled = 0   'False
      End
      Begin VB.Menu DeudaExigibleporProveedor
        Caption = "Deuda Exigible por Proveedor"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu ConsultaPorExpediente
      Caption = "Consulta por Expediente"
    End
    Begin VB.Menu Separador5
      Caption = "-"
    End
    Begin VB.Menu PlazoRecepcionaOrdenPago
      Caption = "Plazo desde Recepción a Orden de Pago"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu Tesoreria
    Caption = "Tesorería"
    Begin VB.Menu Bancos
      Caption = "Bancos"
      Begin VB.Menu Banco
        Caption = "Alta, Baja y Modificación"
        Enabled = 0   'False
      End
      Begin VB.Menu TipoMoviBanco
        Caption = "Tipos de Movimientos Bancarios"
        Enabled = 0   'False
      End
      Begin VB.Menu ExportacionBancos
        Caption = "Exportación a Bancos"
        Enabled = 0   'False
      End
      Begin VB.Menu BancosporPartida
        Caption = "Bancos por Partida"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu TesoreriaIngresodePagos
      Caption = "Ingreso de Pagos"
      Begin VB.Menu Pagado
        Caption = "Ingreso de Pagos"
        Enabled = 0   'False
      End
      Begin VB.Menu RecibosdeCheques
        Caption = "Recibos de Cheques"
        Enabled = 0   'False
      End
      Begin VB.Menu ArchivodeOrdendePago
        Caption = "Archivo de Orden de Pago"
        Enabled = 0   'False
      End
      Begin VB.Menu ReenviarMail
        Caption = "Reenviar Mail"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Deposito
      Caption = "Depósitos Bancarios"
      Enabled = 0   'False
    End
    Begin VB.Menu Ingreso
      Caption = "Recaudación"
      Enabled = 0   'False
    End
    Begin VB.Menu AjustesdeRecaudacion
      Caption = "Ajustes de Recaudación"
      Enabled = 0   'False
    End
    Begin VB.Menu MovimientoBancario
      Caption = "Movimientos Bancarios"
      Enabled = 0   'False
    End
    Begin VB.Menu mnuContracargos
      Caption = "Contracargos"
    End
    Begin VB.Menu Separador4
      Caption = "-"
    End
    Begin VB.Menu ResumendeBancos
      Caption = "Resumen de Bancos"
      Enabled = 0   'False
    End
    Begin VB.Menu LibroBanco
      Caption = "Libro Banco"
      Enabled = 0   'False
    End
    Begin VB.Menu UltimoNumerodeCheque
      Caption = "Último Número de Cheque"
      Enabled = 0   'False
    End
    Begin VB.Menu InformesdeOrdenesdePago
      Caption = "Informes de Órdenes de Pago"
      Begin VB.Menu OrdenesdePagodeIntendencia
        Caption = "Órdenes de Pago de Intendencia"
        Enabled = 0   'False
      End
      Begin VB.Menu OrdenesdePagoEmitidas
        Caption = "Órdenes de Pago"
        Enabled = 0   'False
      End
    End
  End
  Begin VB.Menu Contabilidad
    Caption = "Contabilidad"
    Begin VB.Menu ContabilidadParametros
      Caption = "Parámetros"
      Begin VB.Menu TipoCuentaContable
        Caption = "Tipos de Cuentas Contables"
        Enabled = 0   'False
      End
      Begin VB.Menu TipoAsiento
        Caption = "Tipos de Asientos"
        Enabled = 0   'False
      End
      Begin VB.Menu ParametrosalIniciodeEjercicio
        Caption = "Parámetros al Inicio de Ejercicio"
        Enabled = 0   'False
      End
      Begin VB.Menu ParametrosalCierredeEjercicio
        Caption = "Parámetros al Cierre de Ejercicio"
        Enabled = 0   'False
      End
      Begin VB.Menu ParametrosComisionesBancarias
        Caption = "Parámetros Comisiones Bancarias"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu CuentasContables
      Caption = "Cuentas Contables"
      Begin VB.Menu PlandeCuentas
        Caption = "Plan de Cuentas"
        Enabled = 0   'False
      End
      Begin VB.Menu ManualdeCuentas
        Caption = "Manual de Cuentas"
        Enabled = 0   'False
      End
      Begin VB.Menu RecursosEspeciales
        Caption = "Recursos Especiales"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu ContabilidadAsientosManuales
      Caption = "Asientos Manuales"
      Begin VB.Menu AsientosManuales
        Caption = "Asientos Manuales"
        Enabled = 0   'False
      End
      Begin VB.Menu ModificacionAsiento
        Caption = "Modificación"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu ContabilidadAsientosAutomaticos
      Caption = "Asientos Automáticos"
      Begin VB.Menu GenerarBalanceMensual
        Caption = "Generar Balance Mensual"
        Enabled = 0   'False
      End
      Begin VB.Menu Subdiario
        Caption = "Subdiario"
        Begin VB.Menu SubdiariodeIngresos
          Caption = "de Ingresos"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodeDepositos
          Caption = "de Depósitos"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodeAutorizados
          Caption = "de Autorizados"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodeDevengados
          Caption = "de Devengados"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodeEmisiondeCheques
          Caption = "de Emisión de Cheques"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodeRemisiondeCheques
          Caption = "de Remisión de Cheques"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodePagodeCheques
          Caption = "de Pago de Cheques"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodePagodeDebitos
          Caption = "de Pagos Extrapresupuestarios"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodeMovimientosBancarios
          Caption = "de Movimientos Bancarios"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodeInventario
          Caption = "de Inventario"
          Enabled = 0   'False
        End
        Begin VB.Menu SubdiariodeAforos
          Caption = "de Aforos"
          Enabled = 0   'False
        End
      End
    End
    Begin VB.Menu AdministraciondeBalances
      Caption = "Administración de Balances"
      Enabled = 0   'False
    End
    Begin VB.Menu ContabilidadDebitos
      Caption = "Débitos"
      Begin VB.Menu Debito
        Caption = "Débitos"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeDebitos
        Caption = "Listado de Débitos"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu separador2
      Caption = "-"
    End
    Begin VB.Menu ContabilidadInformes
      Caption = "Informes"
      Begin VB.Menu LibroDiario
        Caption = "Libro Diario"
        Enabled = 0   'False
      End
      Begin VB.Menu MayorGeneral
        Caption = "Mayor General"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu ControlesMensuales
      Caption = "Controles Mensuales"
      Begin VB.Menu ControldeCaja
        Caption = "Control de Caja"
        Enabled = 0   'False
      End
      Begin VB.Menu ControlChequesSinRemitir
        Caption = "Control de Cheques Sin Remitir"
        Enabled = 0   'False
      End
      Begin VB.Menu ControlTransferenciasSinRemitir
        Caption = "Control Transferencias Sin Remitir"
        Enabled = 0   'False
      End
      Begin VB.Menu ControldeCargosalTesorero
        Caption = "Control de Cargos al Tesorero"
        Enabled = 0   'False
      End
      Begin VB.Menu ControlTransferenciasalTesorero
        Caption = "Control Transferencias al Tesorero"
        Enabled = 0   'False
      End
      Begin VB.Menu LibroBancoMayorGeneral
        Caption = "Libro Banco - Mayor General"
        Enabled = 0   'False
      End
      Begin VB.Menu ProveedoresVarioseImputaciones
        Caption = "Proveedores Varios e Imputaciones"
        Enabled = 0   'False
      End
      Begin VB.Menu AltasPatrimonialesvsDevengados
        Caption = "Altas Patrimoniales vs Devengados"
        Enabled = 0   'False
      End
    End
  End
  Begin VB.Menu ComprasySuministros
    Caption = "Compras y Suministros"
    Begin VB.Menu NotasdePedido
      Caption = "Notas de Pedido"
      Begin VB.Menu NotasdePedidoABM
        Caption = "Alta, Baja y Modificación"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeNotasdePedido
        Caption = "Listado de Notas de Pedido"
        Enabled = 0   'False
      End
      Begin VB.Menu PasarNPalSiguienteEjercicio
        Caption = "Pasar N.P. al Siguiente Ejercicio"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Cotizacion
      Caption = "Cotización"
      Begin VB.Menu CotizacionABM
        Caption = "Alta, Baja y Modificación"
        Enabled = 0   'False
      End
      Begin VB.Menu SolicituddeCotizacion
        Caption = "Solicitud de Cotización"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeCotizaciones
        Caption = "Listado de Cotizaciones"
        Enabled = 0   'False
      End
      Begin VB.Menu PlanillaComparativa
        Caption = "Planilla Comparativa"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu OrdendeCompra
      Caption = "Orden de Compra"
      Begin VB.Menu OrdendeCompraABM
        Caption = "Alta de Orden de Compra"
        Enabled = 0   'False
      End
      Begin VB.Menu OrdendeCompraModificación
        Caption = "Modificar (o Anular) Orden de Compra"
        Enabled = 0   'False
      End
      Begin VB.Menu rptOrdendeCompra
        Caption = "Orden de Compra para el Proveedor"
        Enabled = 0   'False
      End
      Begin VB.Menu rptOrdendeCompraInterno
        Caption = "Orden de Compra Interno"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu RecepciondeOrdendeCompra
      Caption = "Recepción de Orden de Compra"
      Begin VB.Menu RecepcióndeOrdendeCompraABM
        Caption = "Alta de Recepción"
        Enabled = 0   'False
      End
      Begin VB.Menu ModificacionyBajadeRecepcion
        Caption = "Modificar (o Anular) Recepción"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeRecepciondeOrdendeCompra
        Caption = "Listado de Recepción de Orden de Compra"
        Enabled = 0   'False
      End
      Begin VB.Menu ConstanciadeRecepcion
        Caption = "Constancia de Recepción"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu separador3
      Caption = "-"
    End
    Begin VB.Menu InformesCompras
      Caption = "Informes"
      Begin VB.Menu PlazosLicitacion
        Caption = "Plazos de Compra"
        Enabled = 0   'False
      End
      Begin VB.Menu PlazoNotaPedidoaOrdenCompra
        Caption = "Plazo de Nota de Pedido a Orden de Compra"
        Enabled = 0   'False
      End
    End
  End
  Begin VB.Menu Informes
    Caption = "Informes"
    Begin VB.Menu Acuerdo2988
      Caption = "Acuerdo 2988"
      Begin VB.Menu A2988RendicionMensual
        Caption = "Rendición Mensual"
        Begin VB.Menu Balancedesumasysaldos
          Caption = "Balance de Sumas y Saldos"
          Enabled = 0   'False
        End
        Begin VB.Menu EjecucionPresupuestariadelasErogaciones
          Caption = "Ejecución Presupuestaria de las Erogaciones (Anexo III)"
          Enabled = 0   'False
        End
        Begin VB.Menu EjecucionPresupuestariadelosRecursos
          Caption = "Ejecución Presupuestaria de los Recursos (Anexo IV)"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoIX_mensual
          Caption = "Anexo IX - Mensual"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoXIV_mensual
          Caption = "Anexo XIV - Mensual"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988ContratosdeLocacion
          Caption = "Contratos de Locación (Art. 19 inc. H)"
          Enabled = 0   'False
        End
      End
      Begin VB.Menu A2988RendicionAnual
        Caption = "Rendición Anual"
        Begin VB.Menu BalancedeSumasySaldosAnual
          Caption = "Balance de Sumas y Saldos Anual"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoII
          Caption = "Anexo II"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoV
          Caption = "Anexo V"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoVII
          Caption = "Anexo VII"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoVIII
          Caption = "Anexo VIII"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoIX
          Caption = "Anexo X 6222"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoX
          Caption = "Anexo X"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoXI
          Caption = "Anexo XI"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoXIII
          Caption = "Anexo XIII"
          Enabled = 0   'False
        End
        Begin VB.Menu A2988AnexoXV
          Caption = "Anexo XV"
          Enabled = 0   'False
        End
      End
    End
    Begin VB.Menu Acuerdo3949
      Caption = "Acuerdo 3949"
      Begin VB.Menu A3949AnexoI
        Caption = "Anexo I"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949AnexoII
        Caption = "Anexo II"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949AnexoIIBis
        Caption = "Anexo II Bis"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949AnexoIII
        Caption = "Anexo III"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949AnexoIV
        Caption = "Anexo IV"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949AnexoV
        Caption = "Anexo V"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949AnexoVI
        Caption = "Anexo VI"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Acuerdo5017
      Caption = "Acuerdo 5017"
      Begin VB.Menu A5017AnexoI
        Caption = "Anexo I"
        Enabled = 0   'False
      End
      Begin VB.Menu A5017AnexoII
        Caption = "Anexo II"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu EjecuciondelasErogaciones
      Caption = "Ejecución de las Erogaciones"
      Begin VB.Menu SaldodeAutorizados
        Caption = "Saldo de Autorizados"
        Enabled = 0   'False
      End
      Begin VB.Menu SaldodeAutorizadosporFecha
        Caption = "Saldo de Autorizados por Fecha"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumenporJurisdiccionPartida
        Caption = "Resumen por Jurisdicción - Partida"
        Enabled = 0   'False
      End
    End
  End
  Begin VB.Menu PersonasyProveedores
    Caption = "Personas y Proveedores"
    Begin VB.Menu RegistroUnico
      Caption = "Registro Único"
      Enabled = 0   'False
    End
    Begin VB.Menu Fichadeproveedores
      Caption = "Ficha de Proveedores"
      Enabled = 0   'False
    End
    Begin VB.Menu ListadodeInterbanking
      Caption = "Listado de Interbanking"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu Herramientas
    Caption = "Herramientas"
    Begin VB.Menu Ventana
      Caption = "Ventana"
      WindowList = -1  'True
    End
    Begin VB.Menu Permisos
      Caption = "Permisos"
      Begin VB.Menu ActualizarPermisos
        Caption = "Actualizar Permisos"
      End
      Begin VB.Menu Usuario
        Caption = "Usuarios"
        Enabled = 0   'False
      End
      Begin VB.Menu Acceso
        Caption = "Accesos"
        Enabled = 0   'False
      End
      Begin VB.Menu OrgaxUsua
        Caption = "Oficinas por Usuario"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Impresora
      Caption = "Impresora"
      Begin VB.Menu Impresoras
        Index = 0
        Caption = "Predeterminada"
      End
    End
    Begin VB.Menu Periodo
      Caption = "Periodo"
      Begin VB.Menu Periodos
        Index = 0
        Caption = "Periodos"
      End
    End
    Begin VB.Menu mnuEjecutar
      Visible = 0   'False
      Caption = "Ejecutar"
      Enabled = 0   'False
    End
    Begin VB.Menu FirmasABM
      Caption = "Registro de Firmas"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu Salir
    Caption = "Salir"
  End
End

Attribute VB_Name = "MdiContPres"


Private Sub A3949AnexoV_Click() '979DE4
  'Data Table: 5077F4
  loc_979DB4: ImpAdLdRf MemVar_C3E010
  loc_979DB7: NewIfNullAd
  loc_979DBA: CastAd
  loc_979DBD: FStAdFuncNoPop
  loc_979DC0: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979DC5: FFree1Ad var_88
  loc_979DC8: LitVar_Missing var_A8
  loc_979DCB: PopAdLdVar
  loc_979DCC: LitVarI4
  loc_979DD4: PopAdLdVar
  loc_979DD5: ImpAdLdRf MemVar_C3E010
  loc_979DD8: NewIfNullPr rptA3949AnexoV
  loc_979DDB: rptA3949AnexoV.Show from_stack_1, from_stack_2
  loc_979DE0: ExitProcHresult
End Sub

Private Sub A5017AnexoII_Click() '97A1CC
  'Data Table: 5077F4
  loc_97A19C: ImpAdLdRf MemVar_C3E764
  loc_97A19F: NewIfNullAd
  loc_97A1A2: CastAd
  loc_97A1A5: FStAdFuncNoPop
  loc_97A1A8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97A1AD: FFree1Ad var_88
  loc_97A1B0: LitVar_Missing var_A8
  loc_97A1B3: PopAdLdVar
  loc_97A1B4: LitVarI4
  loc_97A1BC: PopAdLdVar
  loc_97A1BD: ImpAdLdRf MemVar_C3E764
  loc_97A1C0: NewIfNullPr rptA5017AnexoII
  loc_97A1C3: rptA5017AnexoII.Show from_stack_1, from_stack_2
  loc_97A1C8: ExitProcHresult
  loc_97A1C9: FLdZeroAd arg_1E
End Sub

Private Sub SaldodeAutorizados_Click() '9773B4
  'Data Table: 5077F4
  loc_977384: ImpAdLdRf MemVar_C3E480
  loc_977387: NewIfNullAd
  loc_97738A: CastAd
  loc_97738D: FStAdFuncNoPop
  loc_977390: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977395: FFree1Ad var_88
  loc_977398: LitVar_Missing var_A8
  loc_97739B: PopAdLdVar
  loc_97739C: LitVarI4
  loc_9773A4: PopAdLdVar
  loc_9773A5: ImpAdLdRf MemVar_C3E480
  loc_9773A8: NewIfNullPr rptSaldodeAutorizados
  loc_9773AB: rptSaldodeAutorizados.Show from_stack_1, from_stack_2
  loc_9773B0: ExitProcHresult
End Sub

Private Sub ResumenporJurisdiccionPartida_Click() '9770F8
  'Data Table: 5077F4
  loc_9770C8: ImpAdLdRf MemVar_C3E458
  loc_9770CB: NewIfNullAd
  loc_9770CE: CastAd
  loc_9770D1: FStAdFuncNoPop
  loc_9770D4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9770D9: FFree1Ad var_88
  loc_9770DC: LitVar_Missing var_A8
  loc_9770DF: PopAdLdVar
  loc_9770E0: LitVarI4
  loc_9770E8: PopAdLdVar
  loc_9770E9: ImpAdLdRf MemVar_C3E458
  loc_9770EC: NewIfNullPr rptResumenporJurisdiccionPartida
  loc_9770EF: rptResumenporJurisdiccionPartida.Show from_stack_1, from_stack_2
  loc_9770F4: ExitProcHresult
  loc_9770F5: DivR8
  loc_9770F6: NewIfNullAd
End Sub

Private Sub RegistroUnico_Click() '970750
  'Data Table: 5077F4
  loc_97072C: ImpAdLdRf MemVar_C3D930
  loc_97072F: NewIfNullAd
  loc_970732: CastAd
  loc_970735: FStAdFunc var_88
  loc_970738: FLdRfVar var_88
  loc_97073B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970740: ILdRf var_88
  loc_970743: CastAd
  loc_970746: ImpAdStAdFunc MemVar_C3D930
  loc_97074A: FFree1Ad var_88
  loc_97074D: ExitProcHresult
End Sub

Private Sub Fichadeproveedores_Click() '9704E8
  'Data Table: 5077F4
  loc_9704C4: ImpAdLdRf MemVar_C3DB10
  loc_9704C7: NewIfNullAd
  loc_9704CA: CastAd
  loc_9704CD: FStAdFunc var_88
  loc_9704D0: FLdRfVar var_88
  loc_9704D3: ImpAdCallFPR4 Proc_261_31_971890()
  loc_9704D8: ILdRf var_88
  loc_9704DB: CastAd
  loc_9704DE: ImpAdStAdFunc MemVar_C3DB10
  loc_9704E2: FFree1Ad var_88
  loc_9704E5: ExitProcHresult
End Sub

Private Sub Usuario_Click() '970E88
  'Data Table: 5077F4
  loc_970E64: ImpAdLdRf MemVar_C3DE6C
  loc_970E67: NewIfNullAd
  loc_970E6A: CastAd
  loc_970E6D: FStAdFunc var_88
  loc_970E70: FLdRfVar var_88
  loc_970E73: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970E78: ILdRf var_88
  loc_970E7B: CastAd
  loc_970E7E: ImpAdStAdFunc MemVar_C3DE6C
  loc_970E82: FFree1Ad var_88
  loc_970E85: ExitProcHresult
End Sub

Private Sub ListadodeInterbanking_Click() '9766D0
  'Data Table: 5077F4
  loc_9766A0: ImpAdLdRf MemVar_C3E23C
  loc_9766A3: NewIfNullAd
  loc_9766A6: CastAd
  loc_9766A9: FStAdFuncNoPop
  loc_9766AC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9766B1: FFree1Ad var_88
  loc_9766B4: LitVar_Missing var_A8
  loc_9766B7: PopAdLdVar
  loc_9766B8: LitVarI4
  loc_9766C0: PopAdLdVar
  loc_9766C1: ImpAdLdRf MemVar_C3E23C
  loc_9766C4: NewIfNullPr rptListadodeInterbanking
  loc_9766C7: rptListadodeInterbanking.Show from_stack_1, from_stack_2
  loc_9766CC: ExitProcHresult
End Sub

Private Sub A5017AnexoI_Click() '979F74
  'Data Table: 5077F4
  loc_979F44: ImpAdLdRf MemVar_C3E750
  loc_979F47: NewIfNullAd
  loc_979F4A: CastAd
  loc_979F4D: FStAdFuncNoPop
  loc_979F50: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979F55: FFree1Ad var_88
  loc_979F58: LitVar_Missing var_A8
  loc_979F5B: PopAdLdVar
  loc_979F5C: LitVarI4
  loc_979F64: PopAdLdVar
  loc_979F65: ImpAdLdRf MemVar_C3E750
  loc_979F68: NewIfNullPr rptA5017AnexoI
  loc_979F6B: rptA5017AnexoI.Show from_stack_1, from_stack_2
  loc_979F70: ExitProcHresult
End Sub

Private Sub FirmasABM_Click() '970A10
  'Data Table: 5077F4
  loc_9709EC: ImpAdLdRf MemVar_C3DB38
  loc_9709EF: NewIfNullAd
  loc_9709F2: CastAd
  loc_9709F5: FStAdFunc var_88
  loc_9709F8: FLdRfVar var_88
  loc_9709FB: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970A00: ILdRf var_88
  loc_970A03: CastAd
  loc_970A06: ImpAdStAdFunc MemVar_C3DB38
  loc_970A0A: FFree1Ad var_88
  loc_970A0D: ExitProcHresult
End Sub

Private Sub SaldodeAutorizadosporFecha_Click() '9771C0
  'Data Table: 5077F4
  loc_977190: ImpAdLdRf MemVar_C3E494
  loc_977193: NewIfNullAd
  loc_977196: CastAd
  loc_977199: FStAdFuncNoPop
  loc_97719C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9771A1: FFree1Ad var_88
  loc_9771A4: LitVar_Missing var_A8
  loc_9771A7: PopAdLdVar
  loc_9771A8: LitVarI4
  loc_9771B0: PopAdLdVar
  loc_9771B1: ImpAdLdRf MemVar_C3E494
  loc_9771B4: NewIfNullPr rptSaldodeAutorizadosporFecha
  loc_9771B7: rptSaldodeAutorizadosporFecha.Show from_stack_1, from_stack_2
  loc_9771BC: ExitProcHresult
  loc_9771BD: LtI4
  loc_9771BE: CI2R8
End Sub

Private Sub A2988AnexoII_Click() '978F0C
  'Data Table: 5077F4
  loc_978EDC: ImpAdLdRf MemVar_C3DE94
  loc_978EDF: NewIfNullAd
  loc_978EE2: CastAd
  loc_978EE5: FStAdFuncNoPop
  loc_978EE8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978EED: FFree1Ad var_88
  loc_978EF0: LitVar_Missing var_A8
  loc_978EF3: PopAdLdVar
  loc_978EF4: LitVarI4
  loc_978EFC: PopAdLdVar
  loc_978EFD: ImpAdLdRf MemVar_C3DE94
  loc_978F00: NewIfNullPr rptA2988AnexoII
  loc_978F03: rptA2988AnexoII.Show from_stack_1, from_stack_2
  loc_978F08: ExitProcHresult
End Sub

Private Sub PlanillaComparativa_Click() '97B9A0
  'Data Table: 5077F4
  loc_97B970: ImpAdLdRf MemVar_C3E2DC
  loc_97B973: NewIfNullAd
  loc_97B976: CastAd
  loc_97B979: FStAdFuncNoPop
  loc_97B97C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97B981: FFree1Ad var_88
  loc_97B984: LitVar_Missing var_A8
  loc_97B987: PopAdLdVar
  loc_97B988: LitVarI4
  loc_97B990: PopAdLdVar
  loc_97B991: ImpAdLdRf MemVar_C3E2DC
  loc_97B994: NewIfNullPr rptPlanillaComparativa
  loc_97B997: rptPlanillaComparativa.Show from_stack_1, from_stack_2
  loc_97B99C: ExitProcHresult
  loc_97B99D: MemLdFPR4 global_31
End Sub

Private Sub ExportacionBancos_Click() '963DF0
  'Data Table: 5077F4
  loc_963DD4: LitVar_Missing var_A4
  loc_963DD7: PopAdLdVar
  loc_963DD8: LitVarI4
  loc_963DE0: PopAdLdVar
  loc_963DE1: ImpAdLdRf MemVar_C3E5AC
  loc_963DE4: NewIfNullPr dlgInfogov3
  loc_963DE7: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_963DEC: ExitProcHresult
  loc_963DED: CRec2Uni arg_3AA
End Sub

Private Sub ListadodeNotasdePedido_Click() '9774E0
  'Data Table: 5077F4
  loc_9774B0: ImpAdLdRf MemVar_C3DC64
  loc_9774B3: NewIfNullAd
  loc_9774B6: CastAd
  loc_9774B9: FStAdFuncNoPop
  loc_9774BC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9774C1: FFree1Ad var_88
  loc_9774C4: LitVar_Missing var_A8
  loc_9774C7: PopAdLdVar
  loc_9774C8: LitVarI4
  loc_9774D0: PopAdLdVar
  loc_9774D1: ImpAdLdRf MemVar_C3DC64
  loc_9774D4: NewIfNullPr rptListadodeNotasdePedido
  loc_9774D7: rptListadodeNotasdePedido.Show from_stack_1, from_stack_2
  loc_9774DC: ExitProcHresult
  loc_9774DD: FLdPr Me
End Sub

Private Sub Debito_Click() '970070
  'Data Table: 5077F4
  loc_97004C: ImpAdLdRf MemVar_C3DA34
  loc_97004F: NewIfNullAd
  loc_970052: CastAd
  loc_970055: FStAdFunc var_88
  loc_970058: FLdRfVar var_88
  loc_97005B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970060: ILdRf var_88
  loc_970063: CastAd
  loc_970066: ImpAdStAdFunc MemVar_C3DA34
  loc_97006A: FFree1Ad var_88
  loc_97006D: ExitProcHresult
End Sub

Private Sub A2988ContratosdeLocacion_Click() '978CB4
  'Data Table: 5077F4
  loc_978C84: ImpAdLdRf MemVar_C3DF98
  loc_978C87: NewIfNullAd
  loc_978C8A: CastAd
  loc_978C8D: FStAdFuncNoPop
  loc_978C90: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978C95: FFree1Ad var_88
  loc_978C98: LitVar_Missing var_A8
  loc_978C9B: PopAdLdVar
  loc_978C9C: LitVarI4
  loc_978CA4: PopAdLdVar
  loc_978CA5: ImpAdLdRf MemVar_C3DF98
  loc_978CA8: NewIfNullPr rptA2988ContratosdeLocacion
  loc_978CAB: rptA2988ContratosdeLocacion.Show from_stack_1, from_stack_2
  loc_978CB0: ExitProcHresult
End Sub

Private Sub OrgaxUsua_Click() '9570CC
  'Data Table: 5077F4
  loc_9570B0: LitVar_Missing var_A4
  loc_9570B3: PopAdLdVar
  loc_9570B4: LitVarI4
  loc_9570BC: PopAdLdVar
  loc_9570BD: ImpAdLdRf MemVar_C3E5AC
  loc_9570C0: NewIfNullPr dlgInfogov3
  loc_9570C3: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_9570C8: ExitProcHresult
End Sub

Private Sub CotizacionABM_Click() '96F830
  'Data Table: 5077F4
  loc_96F80C: ImpAdLdRf MemVar_C3DA20
  loc_96F80F: NewIfNullAd
  loc_96F812: CastAd
  loc_96F815: FStAdFunc var_88
  loc_96F818: FLdRfVar var_88
  loc_96F81B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F820: ILdRf var_88
  loc_96F823: CastAd
  loc_96F826: ImpAdStAdFunc MemVar_C3DA20
  loc_96F82A: FFree1Ad var_88
  loc_96F82D: ExitProcHresult
  loc_96F82E: NewIfNullAd
End Sub

Private Sub OrdendeCompraModificación_Click() '96F8E0
  'Data Table: 5077F4
  loc_96F8BC: ImpAdLdRf MemVar_C3DCDC
  loc_96F8BF: NewIfNullAd
  loc_96F8C2: CastAd
  loc_96F8C5: FStAdFunc var_88
  loc_96F8C8: FLdRfVar var_88
  loc_96F8CB: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F8D0: ILdRf var_88
  loc_96F8D3: CastAd
  loc_96F8D6: ImpAdStAdFunc MemVar_C3DCDC
  loc_96F8DA: FFree1Ad var_88
  loc_96F8DD: ExitProcHresult
  loc_96F8DE: PopTmpLdAdStr arg_7C03
End Sub

Private Sub A2988AnexoX_Click() '979358
  'Data Table: 5077F4
  loc_979328: ImpAdLdRf MemVar_C3DF34
  loc_97932B: NewIfNullAd
  loc_97932E: CastAd
  loc_979331: FStAdFuncNoPop
  loc_979334: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979339: FFree1Ad var_88
  loc_97933C: LitVar_Missing var_A8
  loc_97933F: PopAdLdVar
  loc_979340: LitVarI4
  loc_979348: PopAdLdVar
  loc_979349: ImpAdLdRf MemVar_C3DF34
  loc_97934C: NewIfNullPr rptA2988AnexoX
  loc_97934F: rptA2988AnexoX.Show from_stack_1, from_stack_2
  loc_979354: ExitProcHresult
End Sub

Private Sub A2988AnexoV_Click() '979038
  'Data Table: 5077F4
  loc_979008: ImpAdLdRf MemVar_C3DEF8
  loc_97900B: NewIfNullAd
  loc_97900E: CastAd
  loc_979011: FStAdFuncNoPop
  loc_979014: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979019: FFree1Ad var_88
  loc_97901C: LitVar_Missing var_A8
  loc_97901F: PopAdLdVar
  loc_979020: LitVarI4
  loc_979028: PopAdLdVar
  loc_979029: ImpAdLdRf MemVar_C3DEF8
  loc_97902C: NewIfNullPr rptA2988AnexoV
  loc_97902F: rptA2988AnexoV.Show from_stack_1, from_stack_2
  loc_979034: ExitProcHresult
End Sub

Private Sub A2988AnexoXIII_Click() '9796DC
  'Data Table: 5077F4
  loc_9796AC: ImpAdLdRf MemVar_C3DF5C
  loc_9796AF: NewIfNullAd
  loc_9796B2: CastAd
  loc_9796B5: FStAdFuncNoPop
  loc_9796B8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9796BD: FFree1Ad var_88
  loc_9796C0: LitVar_Missing var_A8
  loc_9796C3: PopAdLdVar
  loc_9796C4: LitVarI4
  loc_9796CC: PopAdLdVar
  loc_9796CD: ImpAdLdRf MemVar_C3DF5C
  loc_9796D0: NewIfNullPr rptA2988AnexoXIII
  loc_9796D3: rptA2988AnexoXIII.Show from_stack_1, from_stack_2
  loc_9796D8: ExitProcHresult
End Sub

Private Sub A2988AnexoIX_Click() '979290
  'Data Table: 5077F4
  loc_979260: ImpAdLdRf MemVar_C3E73C
  loc_979263: NewIfNullAd
  loc_979266: CastAd
  loc_979269: FStAdFuncNoPop
  loc_97926C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979271: FFree1Ad var_88
  loc_979274: LitVar_Missing var_A8
  loc_979277: PopAdLdVar
  loc_979278: LitVarI4
  loc_979280: PopAdLdVar
  loc_979281: ImpAdLdRf MemVar_C3E73C
  loc_979284: NewIfNullPr rptA2988AnexoX6222
  loc_979287: rptA2988AnexoX6222.Show from_stack_1, from_stack_2
  loc_97928C: ExitProcHresult
End Sub

Private Sub ActualizarPermisos_Click() '940518
  'Data Table: 5077F4
  loc_940510: ImpAdCallFPR4 Proc_261_40_B3BA9C()
  loc_940515: ExitProcHresult
  loc_940516: FLdPr arg_7C08
End Sub

Private Sub EjecucionPresupuestariadelasErogaciones_Click() '978930
  'Data Table: 5077F4
  loc_978900: ImpAdLdRf MemVar_C3DEA8
  loc_978903: NewIfNullAd
  loc_978906: CastAd
  loc_978909: FStAdFuncNoPop
  loc_97890C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978911: FFree1Ad var_88
  loc_978914: LitVar_Missing var_A8
  loc_978917: PopAdLdVar
  loc_978918: LitVarI4
  loc_978920: PopAdLdVar
  loc_978921: ImpAdLdRf MemVar_C3DEA8
  loc_978924: NewIfNullPr rptA2988AnexoIII
  loc_978927: rptA2988AnexoIII.Show from_stack_1, from_stack_2
  loc_97892C: ExitProcHresult
End Sub

Private Sub A2988AnexoXV_Click() '979934
  'Data Table: 5077F4
  loc_979904: ImpAdLdRf MemVar_C3DF84
  loc_979907: NewIfNullAd
  loc_97990A: CastAd
  loc_97990D: FStAdFuncNoPop
  loc_979910: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979915: FFree1Ad var_88
  loc_979918: LitVar_Missing var_A8
  loc_97991B: PopAdLdVar
  loc_97991C: LitVarI4
  loc_979924: PopAdLdVar
  loc_979925: ImpAdLdRf MemVar_C3DF84
  loc_979928: NewIfNullPr rptA2988AnexoXV
  loc_97992B: rptA2988AnexoXV.Show from_stack_1, from_stack_2
  loc_979930: ExitProcHresult
End Sub

Private Sub ModificacionyBajadeRecepcion_Click() '96E128
  'Data Table: 5077F4
  loc_96E104: ImpAdLdRf MemVar_C3DBD8
  loc_96E107: NewIfNullAd
  loc_96E10A: CastAd
  loc_96E10D: FStAdFunc var_88
  loc_96E110: FLdRfVar var_88
  loc_96E113: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96E118: ILdRf var_88
  loc_96E11B: CastAd
  loc_96E11E: ImpAdStAdFunc MemVar_C3DBD8
  loc_96E122: FFree1Ad var_88
  loc_96E125: ExitProcHresult
  loc_96E126: Ary1LdCy
End Sub

Private Sub A3949AnexoVI_Click() '979EAC
  'Data Table: 5077F4
  loc_979E7C: ImpAdLdRf MemVar_C3E024
  loc_979E7F: NewIfNullAd
  loc_979E82: CastAd
  loc_979E85: FStAdFuncNoPop
  loc_979E88: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979E8D: FFree1Ad var_88
  loc_979E90: LitVar_Missing var_A8
  loc_979E93: PopAdLdVar
  loc_979E94: LitVarI4
  loc_979E9C: PopAdLdVar
  loc_979E9D: ImpAdLdRf MemVar_C3E024
  loc_979EA0: NewIfNullPr rptA3949AnexoVI
  loc_979EA3: rptA3949AnexoVI.Show from_stack_1, from_stack_2
  loc_979EA8: ExitProcHresult
End Sub

Private Sub Salir_Click() '96216C
  'Data Table: 5077F4
  loc_962154: ILdRf Me
  loc_962157: FStAdNoPop
  loc_96215B: ImpAdLdRf MemVar_C44F9C
  loc_96215E: NewIfNullPr Me
  loc_962161: Me.Global.Unload from_stack_1
  loc_962166: FFree1Ad var_88
  loc_962169: ExitProcHresult
End Sub

Private Sub MDIForm_Load() 'BB1A30
  'Data Table: 5077F4
  loc_BB0A18: ImpAdCallFPR4 Proc_283_0_A21944()
  loc_BB0A1D: LitStr "dsn=mycontpres-guaymallen;uid=root;pwd=bv3yr0n;database=contpres;"
  loc_BB0A20: ImpAdCallFPR4 Proc_261_43_990EFC()
  loc_BB0A25: ImpAdCallFPR4 Proc_261_51_A831CC()
  loc_BB0A2A: LitVar_Missing var_A4
  loc_BB0A2D: PopAdLdVar
  loc_BB0A2E: LitVar_Missing var_94
  loc_BB0A31: PopAdLdVar
  loc_BB0A32: ImpAdLdRf MemVar_C3DE44
  loc_BB0A35: NewIfNullPr frmSplash
  loc_BB0A38: frmSplash.Show from_stack_1, from_stack_2
  loc_BB0A3D: ImpAdLdRf MemVar_C3DE44
  loc_BB0A40: NewIfNullPr frmSplash
  loc_BB0A43: frmSplash.Refresh
  loc_BB0A48: OnErrorGoto loc_BB1905
  loc_BB0A4B: New Me
  loc_BB0A4F: FStAdFuncNoPop
  loc_BB0A52: FLdPr Me
  loc_BB0A55: MemStAd
  loc_BB0A59: FFree1Ad var_A8
  loc_BB0A5C: Call Proc_255_167_A07E48()
  loc_BB0A61: LitStr "Contaduría"
  loc_BB0A64: FLdPr Me
  loc_BB0A67: VCallAd Control_ID_PreventivaDefinitivaDevengado
  loc_BB0A6A: FStAdFunc var_A8
  loc_BB0A6D: FLdPr var_A8
  loc_BB0A70: Me.Menu.Tag = from_stack_1
  loc_BB0A75: FFree1Ad var_A8
  loc_BB0A78: LitStr "Contaduría"
  loc_BB0A7B: FLdPr Me
  loc_BB0A7E: VCallAd Control_ID_ImputacionesdeSueldos
  loc_BB0A81: FStAdFunc var_A8
  loc_BB0A84: FLdPr var_A8
  loc_BB0A87: Me.Tag = from_stack_1
  loc_BB0A8C: FFree1Ad var_A8
  loc_BB0A8F: LitStr "Contaduría - Imputaciones desde Compras y Suministros"
  loc_BB0A92: FLdPr Me
  loc_BB0A95: VCallAd Control_ID_AjustedePreventivaporCotizacion
  loc_BB0A98: FStAdFunc var_A8
  loc_BB0A9B: FLdPr var_A8
  loc_BB0A9E: Me.Tag = from_stack_1
  loc_BB0AA3: FFree1Ad var_A8
  loc_BB0AA6: LitStr "Contaduría - Imputaciones desde Compras y Suministros"
  loc_BB0AA9: FLdPr Me
  loc_BB0AAC: VCallAd Control_ID_DefinitivasporOrdendeCompra
  loc_BB0AAF: FStAdFunc var_A8
  loc_BB0AB2: FLdPr var_A8
  loc_BB0AB5: Me.Tag = from_stack_1
  loc_BB0ABA: FFree1Ad var_A8
  loc_BB0ABD: LitStr "Contaduría - Imputaciones desde Compras y Suministros"
  loc_BB0AC0: FLdPr Me
  loc_BB0AC3: VCallAd Control_ID_DevengadosporRecepciondeOrdendeCompra
  loc_BB0AC6: FStAdFunc var_A8
  loc_BB0AC9: FLdPr var_A8
  loc_BB0ACC: Me.Tag = from_stack_1
  loc_BB0AD1: FFree1Ad var_A8
  loc_BB0AD4: LitStr "Contaduría - Imputaciones desde Compras y Suministros"
  loc_BB0AD7: FLdPr Me
  loc_BB0ADA: VCallAd Control_ID_ReasignarDefinitivadeOrdendeCompra
  loc_BB0ADD: FStAdFunc var_A8
  loc_BB0AE0: FLdPr var_A8
  loc_BB0AE3: Me.Tag = from_stack_1
  loc_BB0AE8: FFree1Ad var_A8
  loc_BB0AEB: LitStr "Contaduría - Imputaciones desde Compras y Suministros"
  loc_BB0AEE: FLdPr Me
  loc_BB0AF1: VCallAd Control_ID_ReasignarDevengadodeOrdendeCompra
  loc_BB0AF4: FStAdFunc var_A8
  loc_BB0AF7: FLdPr var_A8
  loc_BB0AFA: Me.Tag = from_stack_1
  loc_BB0AFF: FFree1Ad var_A8
  loc_BB0B02: LitStr "Contaduría"
  loc_BB0B05: FLdPr Me
  loc_BB0B08: VCallAd Control_ID_TransferenciadeImputaciones
  loc_BB0B0B: FStAdFunc var_A8
  loc_BB0B0E: FLdPr var_A8
  loc_BB0B11: Me.Tag = from_stack_1
  loc_BB0B16: FFree1Ad var_A8
  loc_BB0B19: LitStr "Contaduría - Imputaciones al Cierre de Ejercicio"
  loc_BB0B1C: FLdPr Me
  loc_BB0B1F: VCallAd Control_ID_ReapropiaralEjercicioSiguiente
  loc_BB0B22: FStAdFunc var_A8
  loc_BB0B25: FLdPr var_A8
  loc_BB0B28: Me.Tag = from_stack_1
  loc_BB0B2D: FFree1Ad var_A8
  loc_BB0B30: LitStr "Contaduría - Imputaciones al Cierre de Ejercicio"
  loc_BB0B33: FLdPr Me
  loc_BB0B36: VCallAd Control_ID_PasaraResiduosPasivos
  loc_BB0B39: FStAdFunc var_A8
  loc_BB0B3C: FLdPr var_A8
  loc_BB0B3F: Me.Tag = from_stack_1
  loc_BB0B44: FFree1Ad var_A8
  loc_BB0B47: LitStr "Contaduría - Liquidación del Gasto"
  loc_BB0B4A: FLdPr Me
  loc_BB0B4D: VCallAd Control_ID_Liquidacion
  loc_BB0B50: FStAdFunc var_A8
  loc_BB0B53: FLdPr var_A8
  loc_BB0B56: Me.Tag = from_stack_1
  loc_BB0B5B: FFree1Ad var_A8
  loc_BB0B5E: LitStr "Contaduría - Liquidación del Gasto"
  loc_BB0B61: FLdPr Me
  loc_BB0B64: VCallAd Control_ID_LiquidaciondeImportesFijos
  loc_BB0B67: FStAdFunc var_A8
  loc_BB0B6A: FLdPr var_A8
  loc_BB0B6D: Me.Tag = from_stack_1
  loc_BB0B72: FFree1Ad var_A8
  loc_BB0B75: LitStr "Contaduría - Liquidación del Gasto"
  loc_BB0B78: FLdPr Me
  loc_BB0B7B: VCallAd Control_ID_LiquidaciondeFondos
  loc_BB0B7E: FStAdFunc var_A8
  loc_BB0B81: FLdPr var_A8
  loc_BB0B84: Me.Tag = from_stack_1
  loc_BB0B89: FFree1Ad var_A8
  loc_BB0B8C: LitStr "Contaduría - Liquidación del Gasto"
  loc_BB0B8F: FLdPr Me
  loc_BB0B92: VCallAd Control_ID_VolantedeLiquidacion
  loc_BB0B95: FStAdFunc var_A8
  loc_BB0B98: FLdPr var_A8
  loc_BB0B9B: Me.Tag = from_stack_1
  loc_BB0BA0: FFree1Ad var_A8
  loc_BB0BA3: LitStr "Contaduría - Liquidación del Gasto"
  loc_BB0BA6: FLdPr Me
  loc_BB0BA9: VCallAd Control_ID_ConceptosdeLiquidacion
  loc_BB0BAC: FStAdFunc var_A8
  loc_BB0BAF: FLdPr var_A8
  loc_BB0BB2: Me.Tag = from_stack_1
  loc_BB0BB7: FFree1Ad var_A8
  loc_BB0BBA: LitStr "Contaduría - Liquidación del Gasto"
  loc_BB0BBD: FLdPr Me
  loc_BB0BC0: VCallAd Control_ID_DeclaraciondeIngresosBrutos
  loc_BB0BC3: FStAdFunc var_A8
  loc_BB0BC6: FLdPr var_A8
  loc_BB0BC9: Me.Tag = from_stack_1
  loc_BB0BCE: FFree1Ad var_A8
  loc_BB0BD1: LitStr "Contaduría - Liquidación del Gasto"
  loc_BB0BD4: FLdPr Me
  loc_BB0BD7: VCallAd Control_ID_DeclaraciondeGanancias
  loc_BB0BDA: FStAdFunc var_A8
  loc_BB0BDD: FLdPr var_A8
  loc_BB0BE0: Me.Tag = from_stack_1
  loc_BB0BE5: FFree1Ad var_A8
  loc_BB0BE8: LitStr "Contaduría - Liquidación del Gasto"
  loc_BB0BEB: FLdPr Me
  loc_BB0BEE: VCallAd Control_ID_DeclaraciondeSeguridadSocial
  loc_BB0BF1: FStAdFunc var_A8
  loc_BB0BF4: FLdPr var_A8
  loc_BB0BF7: Me.Tag = from_stack_1
  loc_BB0BFC: FFree1Ad var_A8
  loc_BB0BFF: LitStr "Contaduría - Liquidación del Gasto"
  loc_BB0C02: FLdPr Me
  loc_BB0C05: VCallAd Control_ID_DeclaraciondeIVA
  loc_BB0C08: FStAdFunc var_A8
  loc_BB0C0B: FLdPr var_A8
  loc_BB0C0E: Me.Tag = from_stack_1
  loc_BB0C13: FFree1Ad var_A8
  loc_BB0C16: LitStr "Contaduría - Ordenes de Pago"
  loc_BB0C19: FLdPr Me
  loc_BB0C1C: VCallAd Control_ID_Ordenpago
  loc_BB0C1F: FStAdFunc var_A8
  loc_BB0C22: FLdPr var_A8
  loc_BB0C25: Me.Tag = from_stack_1
  loc_BB0C2A: FFree1Ad var_A8
  loc_BB0C2D: LitStr "Contaduría - Ordenes de Pago"
  loc_BB0C30: FLdPr Me
  loc_BB0C33: VCallAd Control_ID_OrdenpagoRes
  loc_BB0C36: FStAdFunc var_A8
  loc_BB0C39: FLdPr var_A8
  loc_BB0C3C: Me.Tag = from_stack_1
  loc_BB0C41: FFree1Ad var_A8
  loc_BB0C44: LitStr "Contaduría - Ordenes de Pago"
  loc_BB0C47: FLdPr Me
  loc_BB0C4A: VCallAd Control_ID_EmisionCheque
  loc_BB0C4D: FStAdFunc var_A8
  loc_BB0C50: FLdPr var_A8
  loc_BB0C53: Me.Tag = from_stack_1
  loc_BB0C58: FFree1Ad var_A8
  loc_BB0C5B: LitStr "Contaduría - Ordenes de Pago"
  loc_BB0C5E: FLdPr Me
  loc_BB0C61: VCallAd Control_ID_ListadodeCheques
  loc_BB0C64: FStAdFunc var_A8
  loc_BB0C67: FLdPr var_A8
  loc_BB0C6A: Me.Tag = from_stack_1
  loc_BB0C6F: FFree1Ad var_A8
  loc_BB0C72: LitStr "Contaduría - Ordenes de Pago"
  loc_BB0C75: FLdPr Me
  loc_BB0C78: VCallAd Control_ID_ComprobantedeOrdendePago
  loc_BB0C7B: FStAdFunc var_A8
  loc_BB0C7E: FLdPr var_A8
  loc_BB0C81: Me.Tag = from_stack_1
  loc_BB0C86: FFree1Ad var_A8
  loc_BB0C89: LitStr "Contaduría - Ordenes de Pago"
  loc_BB0C8C: FLdPr Me
  loc_BB0C8F: VCallAd Control_ID_CertificadodeRetencion
  loc_BB0C92: FStAdFunc var_A8
  loc_BB0C95: FLdPr var_A8
  loc_BB0C98: Me.Tag = from_stack_1
  loc_BB0C9D: FFree1Ad var_A8
  loc_BB0CA0: LitStr "Contaduría - Ordenes de Pago"
  loc_BB0CA3: FLdPr Me
  loc_BB0CA6: VCallAd Control_ID_Caratula
  loc_BB0CA9: FStAdFunc var_A8
  loc_BB0CAC: FLdPr var_A8
  loc_BB0CAF: Me.Tag = from_stack_1
  loc_BB0CB4: FFree1Ad var_A8
  loc_BB0CB7: LitStr "Contaduría - Remisión de Ordenes de Pago"
  loc_BB0CBA: FLdPr Me
  loc_BB0CBD: VCallAd Control_ID_Remision
  loc_BB0CC0: FStAdFunc var_A8
  loc_BB0CC3: FLdPr var_A8
  loc_BB0CC6: Me.Tag = from_stack_1
  loc_BB0CCB: FFree1Ad var_A8
  loc_BB0CCE: LitStr "Contaduría - Conciliación Bancaria"
  loc_BB0CD1: FLdPr Me
  loc_BB0CD4: VCallAd Control_ID_ConciliacionBancaria
  loc_BB0CD7: FStAdFunc var_A8
  loc_BB0CDA: FLdPr var_A8
  loc_BB0CDD: Me.Tag = from_stack_1
  loc_BB0CE2: FFree1Ad var_A8
  loc_BB0CE5: LitStr "Contaduría - Conciliación Bancaria"
  loc_BB0CE8: FLdPr Me
  loc_BB0CEB: VCallAd Control_ID_ReportedeConciliacion
  loc_BB0CEE: FStAdFunc var_A8
  loc_BB0CF1: FLdPr var_A8
  loc_BB0CF4: Me.Tag = from_stack_1
  loc_BB0CF9: FFree1Ad var_A8
  loc_BB0CFC: LitStr "Contaduría - Conciliación Bancaria"
  loc_BB0CFF: FLdPr Me
  loc_BB0D02: VCallAd Control_ID_ExtractoBancario
  loc_BB0D05: FStAdFunc var_A8
  loc_BB0D08: FLdPr var_A8
  loc_BB0D0B: Me.Tag = from_stack_1
  loc_BB0D10: FFree1Ad var_A8
  loc_BB0D13: LitStr "Contaduría - Conciliación Bancaria"
  loc_BB0D16: FLdPr Me
  loc_BB0D19: VCallAd Control_ID_ListadodeExtractoBancario
  loc_BB0D1C: FStAdFunc var_A8
  loc_BB0D1F: FLdPr var_A8
  loc_BB0D22: Me.Tag = from_stack_1
  loc_BB0D27: FFree1Ad var_A8
  loc_BB0D2A: LitStr "Contaduría - Conciliación Bancaria"
  loc_BB0D2D: FLdPr Me
  loc_BB0D30: VCallAd Control_ID_ConciliacionAutomaticaBancoNacion
  loc_BB0D33: FStAdFunc var_A8
  loc_BB0D36: FLdPr var_A8
  loc_BB0D39: Me.Tag = from_stack_1
  loc_BB0D3E: FFree1Ad var_A8
  loc_BB0D41: LitStr "Contaduría - Imputaciones con Saldo"
  loc_BB0D44: FLdPr Me
  loc_BB0D47: VCallAd Control_ID_PreventivasNoUtilizadas
  loc_BB0D4A: FStAdFunc var_A8
  loc_BB0D4D: FLdPr var_A8
  loc_BB0D50: Me.Tag = from_stack_1
  loc_BB0D55: FFree1Ad var_A8
  loc_BB0D58: LitStr "Contaduría - Imputaciones con Saldo"
  loc_BB0D5B: FLdPr Me
  loc_BB0D5E: VCallAd Control_ID_ReapropiacionalEjercicioSiguiente
  loc_BB0D61: FStAdFunc var_A8
  loc_BB0D64: FLdPr var_A8
  loc_BB0D67: Me.Tag = from_stack_1
  loc_BB0D6C: FFree1Ad var_A8
  loc_BB0D6F: LitStr "Contaduría - Imputaciones con Saldo"
  loc_BB0D72: FLdPr Me
  loc_BB0D75: VCallAd Control_ID_ResiduosPasivos
  loc_BB0D78: FStAdFunc var_A8
  loc_BB0D7B: FLdPr var_A8
  loc_BB0D7E: Me.Tag = from_stack_1
  loc_BB0D83: FFree1Ad var_A8
  loc_BB0D86: LitStr "Contaduría - Imputaciones con Saldo"
  loc_BB0D89: FLdPr Me
  loc_BB0D8C: VCallAd Control_ID_ResiduosPasivosporExpediente
  loc_BB0D8F: FStAdFunc var_A8
  loc_BB0D92: FLdPr var_A8
  loc_BB0D95: Me.Tag = from_stack_1
  loc_BB0D9A: FFree1Ad var_A8
  loc_BB0D9D: LitStr "Contaduría - Imputaciones con Saldo"
  loc_BB0DA0: FLdPr Me
  loc_BB0DA3: VCallAd Control_ID_DeudaExigible
  loc_BB0DA6: FStAdFunc var_A8
  loc_BB0DA9: FLdPr var_A8
  loc_BB0DAC: Me.Tag = from_stack_1
  loc_BB0DB1: FFree1Ad var_A8
  loc_BB0DB4: LitStr "Contaduría - Libro y Resumen de Imputaciones"
  loc_BB0DB7: FLdPr Me
  loc_BB0DBA: VCallAd Control_ID_LibrodeImputaciones
  loc_BB0DBD: FStAdFunc var_A8
  loc_BB0DC0: FLdPr var_A8
  loc_BB0DC3: Me.Tag = from_stack_1
  loc_BB0DC8: FFree1Ad var_A8
  loc_BB0DCB: LitStr "Contaduría - Libro y Resumen de Imputaciones"
  loc_BB0DCE: FLdPr Me
  loc_BB0DD1: VCallAd Control_ID_LibrodeImputacionesporInsumo
  loc_BB0DD4: FStAdFunc var_A8
  loc_BB0DD7: FLdPr var_A8
  loc_BB0DDA: Me.Tag = from_stack_1
  loc_BB0DDF: FFree1Ad var_A8
  loc_BB0DE2: LitStr "Contaduría - Libro y Resumen de Imputaciones"
  loc_BB0DE5: FLdPr Me
  loc_BB0DE8: VCallAd Control_ID_ResumendeImputaciones
  loc_BB0DEB: FStAdFunc var_A8
  loc_BB0DEE: FLdPr var_A8
  loc_BB0DF1: Me.Tag = from_stack_1
  loc_BB0DF6: FFree1Ad var_A8
  loc_BB0DF9: LitStr "Contaduría - Libro y Resumen de Imputaciones"
  loc_BB0DFC: FLdPr Me
  loc_BB0DFF: VCallAd Control_ID_ResumendeImputacionesporInsumo
  loc_BB0E02: FStAdFunc var_A8
  loc_BB0E05: FLdPr var_A8
  loc_BB0E08: Me.Tag = from_stack_1
  loc_BB0E0D: FFree1Ad var_A8
  loc_BB0E10: LitStr "Contaduría - Libro y Resumen de Imputaciones"
  loc_BB0E13: FLdPr Me
  loc_BB0E16: VCallAd Control_ID_ResumendeImputacionesporPartida
  loc_BB0E19: FStAdFunc var_A8
  loc_BB0E1C: FLdPr var_A8
  loc_BB0E1F: Me.Tag = from_stack_1
  loc_BB0E24: FFree1Ad var_A8
  loc_BB0E27: LitStr "Contaduría - Libro y Resumen de Imputaciones"
  loc_BB0E2A: FLdPr Me
  loc_BB0E2D: VCallAd Control_ID_ResumendeImputacionesporOrganigrama
  loc_BB0E30: FStAdFunc var_A8
  loc_BB0E33: FLdPr var_A8
  loc_BB0E36: Me.Tag = from_stack_1
  loc_BB0E3B: FFree1Ad var_A8
  loc_BB0E3E: LitStr "Contaduría - Libro y Resumen de Imputaciones"
  loc_BB0E41: FLdPr Me
  loc_BB0E44: VCallAd Control_ID_ResumendeImputacionesporFinalidad
  loc_BB0E47: FStAdFunc var_A8
  loc_BB0E4A: FLdPr var_A8
  loc_BB0E4D: Me.Tag = from_stack_1
  loc_BB0E52: FFree1Ad var_A8
  loc_BB0E55: LitStr "Contaduría - Libro y Resumen de Imputaciones"
  loc_BB0E58: FLdPr Me
  loc_BB0E5B: VCallAd Control_ID_ResumendeImputacionesporOrganigramaPartidaFinalida
  loc_BB0E5E: FStAdFunc var_A8
  loc_BB0E61: FLdPr var_A8
  loc_BB0E64: Me.Tag = from_stack_1
  loc_BB0E69: FFree1Ad var_A8
  loc_BB0E6C: LitStr "Contaduría - Libro y Resumen de Imputaciones"
  loc_BB0E6F: FLdPr Me
  loc_BB0E72: VCallAd Control_ID_ResumendeImputacionesporUnidaddeGasto
  loc_BB0E75: FStAdFunc var_A8
  loc_BB0E78: FLdPr var_A8
  loc_BB0E7B: Me.Tag = from_stack_1
  loc_BB0E80: FFree1Ad var_A8
  loc_BB0E83: LitStr "Contaduría"
  loc_BB0E86: FLdPr Me
  loc_BB0E89: VCallAd Control_ID_VolantedeImputaciones
  loc_BB0E8C: FStAdFunc var_A8
  loc_BB0E8F: FLdPr var_A8
  loc_BB0E92: Me.Tag = from_stack_1
  loc_BB0E97: FFree1Ad var_A8
  loc_BB0E9A: LitStr "Contaduría"
  loc_BB0E9D: FLdPr Me
  loc_BB0EA0: VCallAd Control_ID_VolantedeImputacionesExpdePago
  loc_BB0EA3: FStAdFunc var_A8
  loc_BB0EA6: FLdPr var_A8
  loc_BB0EA9: Me.Tag = from_stack_1
  loc_BB0EAE: FFree1Ad var_A8
  loc_BB0EB1: LitStr "Contaduría - Informes por Proveedor"
  loc_BB0EB4: FLdPr Me
  loc_BB0EB7: VCallAd Control_ID_ConsultaporProveedor
  loc_BB0EBA: FStAdFunc var_A8
  loc_BB0EBD: FLdPr var_A8
  loc_BB0EC0: Me.Tag = from_stack_1
  loc_BB0EC5: FFree1Ad var_A8
  loc_BB0EC8: LitStr "Contaduría - Informes por Proveedor"
  loc_BB0ECB: FLdPr Me
  loc_BB0ECE: VCallAd Control_ID_ResumenporProveedorConReap
  loc_BB0ED1: FStAdFunc var_A8
  loc_BB0ED4: FLdPr var_A8
  loc_BB0ED7: Me.Tag = from_stack_1
  loc_BB0EDC: FFree1Ad var_A8
  loc_BB0EDF: LitStr "Contaduría - Informes por Proveedor"
  loc_BB0EE2: FLdPr Me
  loc_BB0EE5: VCallAd Control_ID_ReapropiacionporProveedor
  loc_BB0EE8: FStAdFunc var_A8
  loc_BB0EEB: FLdPr var_A8
  loc_BB0EEE: Me.Tag = from_stack_1
  loc_BB0EF3: FFree1Ad var_A8
  loc_BB0EF6: LitStr "Contaduría - Informes por Proveedor"
  loc_BB0EF9: FLdPr Me
  loc_BB0EFC: VCallAd Control_ID_ResiduosPasivosporProveedor
  loc_BB0EFF: FStAdFunc var_A8
  loc_BB0F02: FLdPr var_A8
  loc_BB0F05: Me.Tag = from_stack_1
  loc_BB0F0A: FFree1Ad var_A8
  loc_BB0F0D: LitStr "Contaduría - Informes por Proveedor"
  loc_BB0F10: FLdPr Me
  loc_BB0F13: VCallAd Control_ID_DeudaExigibleporProveedor
  loc_BB0F16: FStAdFunc var_A8
  loc_BB0F19: FLdPr var_A8
  loc_BB0F1C: Me.Tag = from_stack_1
  loc_BB0F21: FFree1Ad var_A8
  loc_BB0F24: LitStr "Contaduría"
  loc_BB0F27: FLdPr Me
  loc_BB0F2A: VCallAd Control_ID_PlazoRecepcionaOrdenPago
  loc_BB0F2D: FStAdFunc var_A8
  loc_BB0F30: FLdPr var_A8
  loc_BB0F33: Me.Tag = from_stack_1
  loc_BB0F38: FFree1Ad var_A8
  loc_BB0F3B: LitStr "Tesorería - Bancos"
  loc_BB0F3E: FLdPr Me
  loc_BB0F41: VCallAd Control_ID_Banco
  loc_BB0F44: FStAdFunc var_A8
  loc_BB0F47: FLdPr var_A8
  loc_BB0F4A: Me.Tag = from_stack_1
  loc_BB0F4F: FFree1Ad var_A8
  loc_BB0F52: LitStr "Tesorería - Bancos (InfoGov3)"
  loc_BB0F55: FLdPr Me
  loc_BB0F58: VCallAd Control_ID_TipoMoviBanco
  loc_BB0F5B: FStAdFunc var_A8
  loc_BB0F5E: FLdPr var_A8
  loc_BB0F61: Me.Tag = from_stack_1
  loc_BB0F66: FFree1Ad var_A8
  loc_BB0F69: LitStr "Tesorería - Bancos"
  loc_BB0F6C: FLdPr Me
  loc_BB0F6F: VCallAd Control_ID_BancosporPartida
  loc_BB0F72: FStAdFunc var_A8
  loc_BB0F75: FLdPr var_A8
  loc_BB0F78: Me.Tag = from_stack_1
  loc_BB0F7D: FFree1Ad var_A8
  loc_BB0F80: LitStr "Tesorería - Ingreso de Pagos"
  loc_BB0F83: FLdPr Me
  loc_BB0F86: VCallAd Control_ID_Pagado
  loc_BB0F89: FStAdFunc var_A8
  loc_BB0F8C: FLdPr var_A8
  loc_BB0F8F: Me.Tag = from_stack_1
  loc_BB0F94: FFree1Ad var_A8
  loc_BB0F97: LitStr "Tesorería - Ingreso de Pagos"
  loc_BB0F9A: FLdPr Me
  loc_BB0F9D: VCallAd Control_ID_RecibosdeCheques
  loc_BB0FA0: FStAdFunc var_A8
  loc_BB0FA3: FLdPr var_A8
  loc_BB0FA6: Me.Tag = from_stack_1
  loc_BB0FAB: FFree1Ad var_A8
  loc_BB0FAE: LitStr "Tesorería - Ingreso de Pagos"
  loc_BB0FB1: FLdPr Me
  loc_BB0FB4: VCallAd Control_ID_ArchivodeOrdendePago
  loc_BB0FB7: FStAdFunc var_A8
  loc_BB0FBA: FLdPr var_A8
  loc_BB0FBD: Me.Tag = from_stack_1
  loc_BB0FC2: FFree1Ad var_A8
  loc_BB0FC5: LitStr "Tesorería - Ingreso de Pagos"
  loc_BB0FC8: FLdPr Me
  loc_BB0FCB: VCallAd Control_ID_ReenviarMail
  loc_BB0FCE: FStAdFunc var_A8
  loc_BB0FD1: FLdPr var_A8
  loc_BB0FD4: Me.Tag = from_stack_1
  loc_BB0FD9: FFree1Ad var_A8
  loc_BB0FDC: LitStr "Tesorería (InfoGov3)"
  loc_BB0FDF: FLdPr Me
  loc_BB0FE2: VCallAd Control_ID_Deposito
  loc_BB0FE5: FStAdFunc var_A8
  loc_BB0FE8: FLdPr var_A8
  loc_BB0FEB: Me.Tag = from_stack_1
  loc_BB0FF0: FFree1Ad var_A8
  loc_BB0FF3: LitStr "Tesorería (InfoGov3)"
  loc_BB0FF6: FLdPr Me
  loc_BB0FF9: VCallAd Control_ID_AjustesdeRecaudacion
  loc_BB0FFC: FStAdFunc var_A8
  loc_BB0FFF: FLdPr var_A8
  loc_BB1002: Me.Tag = from_stack_1
  loc_BB1007: FFree1Ad var_A8
  loc_BB100A: LitStr "Tesorería (InfoGov3)"
  loc_BB100D: FLdPr Me
  loc_BB1010: VCallAd Control_ID_MovimientoBancario
  loc_BB1013: FStAdFunc var_A8
  loc_BB1016: FLdPr var_A8
  loc_BB1019: Me.Tag = from_stack_1
  loc_BB101E: FFree1Ad var_A8
  loc_BB1021: LitStr "Tesorería"
  loc_BB1024: FLdPr Me
  loc_BB1027: VCallAd Control_ID_mnuContracargos
  loc_BB102A: FStAdFunc var_A8
  loc_BB102D: FLdPr var_A8
  loc_BB1030: Me.Tag = from_stack_1
  loc_BB1035: FFree1Ad var_A8
  loc_BB1038: LitStr "Tesorería"
  loc_BB103B: FLdPr Me
  loc_BB103E: VCallAd Control_ID_ResumendeBancos
  loc_BB1041: FStAdFunc var_A8
  loc_BB1044: FLdPr var_A8
  loc_BB1047: Me.Tag = from_stack_1
  loc_BB104C: FFree1Ad var_A8
  loc_BB104F: LitStr "Tesorería"
  loc_BB1052: FLdPr Me
  loc_BB1055: VCallAd Control_ID_LibroBanco
  loc_BB1058: FStAdFunc var_A8
  loc_BB105B: FLdPr var_A8
  loc_BB105E: Me.Tag = from_stack_1
  loc_BB1063: FFree1Ad var_A8
  loc_BB1066: LitStr "Tesorería"
  loc_BB1069: FLdPr Me
  loc_BB106C: VCallAd Control_ID_UltimoNumerodeCheque
  loc_BB106F: FStAdFunc var_A8
  loc_BB1072: FLdPr var_A8
  loc_BB1075: Me.Tag = from_stack_1
  loc_BB107A: FFree1Ad var_A8
  loc_BB107D: LitStr "Tesorería - Informes de Ordenes de Pago"
  loc_BB1080: FLdPr Me
  loc_BB1083: VCallAd Control_ID_OrdenesdePagodeIntendencia
  loc_BB1086: FStAdFunc var_A8
  loc_BB1089: FLdPr var_A8
  loc_BB108C: Me.Tag = from_stack_1
  loc_BB1091: FFree1Ad var_A8
  loc_BB1094: LitStr "Tesorería - Informes de Ordenes de Pago"
  loc_BB1097: FLdPr Me
  loc_BB109A: VCallAd Control_ID_OrdenesdePagoEmitidas
  loc_BB109D: FStAdFunc var_A8
  loc_BB10A0: FLdPr var_A8
  loc_BB10A3: Me.Tag = from_stack_1
  loc_BB10A8: FFree1Ad var_A8
  loc_BB10AB: LitStr "Contabilidad - Parámetros"
  loc_BB10AE: FLdPr Me
  loc_BB10B1: VCallAd Control_ID_TipoCuentaContable
  loc_BB10B4: FStAdFunc var_A8
  loc_BB10B7: FLdPr var_A8
  loc_BB10BA: Me.Tag = from_stack_1
  loc_BB10BF: FFree1Ad var_A8
  loc_BB10C2: LitStr "Contabilidad - Parámetros"
  loc_BB10C5: FLdPr Me
  loc_BB10C8: VCallAd Control_ID_TipoAsiento
  loc_BB10CB: FStAdFunc var_A8
  loc_BB10CE: FLdPr var_A8
  loc_BB10D1: Me.Tag = from_stack_1
  loc_BB10D6: FFree1Ad var_A8
  loc_BB10D9: LitStr "Contabilidad - Parámetros"
  loc_BB10DC: FLdPr Me
  loc_BB10DF: VCallAd Control_ID_ParametrosalIniciodeEjercicio
  loc_BB10E2: FStAdFunc var_A8
  loc_BB10E5: FLdPr var_A8
  loc_BB10E8: Me.Tag = from_stack_1
  loc_BB10ED: FFree1Ad var_A8
  loc_BB10F0: LitStr "Contabilidad - Parámetros"
  loc_BB10F3: FLdPr Me
  loc_BB10F6: VCallAd Control_ID_ParametrosalCierredeEjercicio
  loc_BB10F9: FStAdFunc var_A8
  loc_BB10FC: FLdPr var_A8
  loc_BB10FF: Me.Tag = from_stack_1
  loc_BB1104: FFree1Ad var_A8
  loc_BB1107: LitStr "Contabilidad - Parámetros"
  loc_BB110A: FLdPr Me
  loc_BB110D: VCallAd Control_ID_ParametrosComisionesBancarias
  loc_BB1110: FStAdFunc var_A8
  loc_BB1113: FLdPr var_A8
  loc_BB1116: Me.Tag = from_stack_1
  loc_BB111B: FFree1Ad var_A8
  loc_BB111E: LitStr "Contabilidad - Cuentas Contables"
  loc_BB1121: FLdPr Me
  loc_BB1124: VCallAd Control_ID_PlandeCuentas
  loc_BB1127: FStAdFunc var_A8
  loc_BB112A: FLdPr var_A8
  loc_BB112D: Me.Tag = from_stack_1
  loc_BB1132: FFree1Ad var_A8
  loc_BB1135: LitStr "Contabilidad - Cuentas Contables"
  loc_BB1138: FLdPr Me
  loc_BB113B: VCallAd Control_ID_ManualdeCuentas
  loc_BB113E: FStAdFunc var_A8
  loc_BB1141: FLdPr var_A8
  loc_BB1144: Me.Tag = from_stack_1
  loc_BB1149: FFree1Ad var_A8
  loc_BB114C: LitStr "Contabilidad - Cuentas Contables"
  loc_BB114F: FLdPr Me
  loc_BB1152: VCallAd Control_ID_RecursosEspeciales
  loc_BB1155: FStAdFunc var_A8
  loc_BB1158: FLdPr var_A8
  loc_BB115B: Me.Tag = from_stack_1
  loc_BB1160: FFree1Ad var_A8
  loc_BB1163: LitStr "Contabilidad - Asientos Manuales"
  loc_BB1166: FLdPr Me
  loc_BB1169: VCallAd Control_ID_AsientosManuales
  loc_BB116C: FStAdFunc var_A8
  loc_BB116F: FLdPr var_A8
  loc_BB1172: Me.Tag = from_stack_1
  loc_BB1177: FFree1Ad var_A8
  loc_BB117A: LitStr "Contabilidad - Asientos Manuales"
  loc_BB117D: FLdPr Me
  loc_BB1180: VCallAd Control_ID_ModificacionAsiento
  loc_BB1183: FStAdFunc var_A8
  loc_BB1186: FLdPr var_A8
  loc_BB1189: Me.Tag = from_stack_1
  loc_BB118E: FFree1Ad var_A8
  loc_BB1191: LitStr "Contabilidad - Asientos Automáticos"
  loc_BB1194: FLdPr Me
  loc_BB1197: VCallAd Control_ID_GenerarBalanceMensual
  loc_BB119A: FStAdFunc var_A8
  loc_BB119D: FLdPr var_A8
  loc_BB11A0: Me.Tag = from_stack_1
  loc_BB11A5: FFree1Ad var_A8
  loc_BB11A8: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB11AB: FLdPr Me
  loc_BB11AE: VCallAd Control_ID_SubdiariodeIngresos
  loc_BB11B1: FStAdFunc var_A8
  loc_BB11B4: FLdPr var_A8
  loc_BB11B7: Me.Tag = from_stack_1
  loc_BB11BC: FFree1Ad var_A8
  loc_BB11BF: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB11C2: FLdPr Me
  loc_BB11C5: VCallAd Control_ID_SubdiariodeDepositos
  loc_BB11C8: FStAdFunc var_A8
  loc_BB11CB: FLdPr var_A8
  loc_BB11CE: Me.Tag = from_stack_1
  loc_BB11D3: FFree1Ad var_A8
  loc_BB11D6: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB11D9: FLdPr Me
  loc_BB11DC: VCallAd Control_ID_SubdiariodeAutorizados
  loc_BB11DF: FStAdFunc var_A8
  loc_BB11E2: FLdPr var_A8
  loc_BB11E5: Me.Tag = from_stack_1
  loc_BB11EA: FFree1Ad var_A8
  loc_BB11ED: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB11F0: FLdPr Me
  loc_BB11F3: VCallAd Control_ID_SubdiariodeDevengados
  loc_BB11F6: FStAdFunc var_A8
  loc_BB11F9: FLdPr var_A8
  loc_BB11FC: Me.Tag = from_stack_1
  loc_BB1201: FFree1Ad var_A8
  loc_BB1204: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB1207: FLdPr Me
  loc_BB120A: VCallAd Control_ID_SubdiariodeEmisiondeCheques
  loc_BB120D: FStAdFunc var_A8
  loc_BB1210: FLdPr var_A8
  loc_BB1213: Me.Tag = from_stack_1
  loc_BB1218: FFree1Ad var_A8
  loc_BB121B: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB121E: FLdPr Me
  loc_BB1221: VCallAd Control_ID_SubdiariodeRemisiondeCheques
  loc_BB1224: FStAdFunc var_A8
  loc_BB1227: FLdPr var_A8
  loc_BB122A: Me.Tag = from_stack_1
  loc_BB122F: FFree1Ad var_A8
  loc_BB1232: LitStr "Contabilidad - Asientos Automáticos - Subdiario (InfoGov3)"
  loc_BB1235: FLdPr Me
  loc_BB1238: VCallAd Control_ID_SubdiariodePagodeCheques
  loc_BB123B: FStAdFunc var_A8
  loc_BB123E: FLdPr var_A8
  loc_BB1241: Me.Tag = from_stack_1
  loc_BB1246: FFree1Ad var_A8
  loc_BB1249: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB124C: FLdPr Me
  loc_BB124F: VCallAd Control_ID_SubdiariodePagodeDebitos
  loc_BB1252: FStAdFunc var_A8
  loc_BB1255: FLdPr var_A8
  loc_BB1258: Me.Tag = from_stack_1
  loc_BB125D: FFree1Ad var_A8
  loc_BB1260: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB1263: FLdPr Me
  loc_BB1266: VCallAd Control_ID_SubdiariodeMovimientosBancarios
  loc_BB1269: FStAdFunc var_A8
  loc_BB126C: FLdPr var_A8
  loc_BB126F: Me.Tag = from_stack_1
  loc_BB1274: FFree1Ad var_A8
  loc_BB1277: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB127A: FLdPr Me
  loc_BB127D: VCallAd Control_ID_SubdiariodeInventario
  loc_BB1280: FStAdFunc var_A8
  loc_BB1283: FLdPr var_A8
  loc_BB1286: Me.Tag = from_stack_1
  loc_BB128B: FFree1Ad var_A8
  loc_BB128E: LitStr "Contabilidad - Asientos Automáticos - Subdiario"
  loc_BB1291: FLdPr Me
  loc_BB1294: VCallAd Control_ID_SubdiariodeAforos
  loc_BB1297: FStAdFunc var_A8
  loc_BB129A: FLdPr var_A8
  loc_BB129D: Me.Tag = from_stack_1
  loc_BB12A2: FFree1Ad var_A8
  loc_BB12A5: LitStr "Contabilidad"
  loc_BB12A8: FLdPr Me
  loc_BB12AB: VCallAd Control_ID_AdministraciondeBalances
  loc_BB12AE: FStAdFunc var_A8
  loc_BB12B1: FLdPr var_A8
  loc_BB12B4: Me.Tag = from_stack_1
  loc_BB12B9: FFree1Ad var_A8
  loc_BB12BC: LitStr "Contabilidad - Débitos"
  loc_BB12BF: FLdPr Me
  loc_BB12C2: VCallAd Control_ID_Debito
  loc_BB12C5: FStAdFunc var_A8
  loc_BB12C8: FLdPr var_A8
  loc_BB12CB: Me.Tag = from_stack_1
  loc_BB12D0: FFree1Ad var_A8
  loc_BB12D3: LitStr "Contabilidad - Débitos"
  loc_BB12D6: FLdPr Me
  loc_BB12D9: VCallAd Control_ID_ListadodeDebitos
  loc_BB12DC: FStAdFunc var_A8
  loc_BB12DF: FLdPr var_A8
  loc_BB12E2: Me.Tag = from_stack_1
  loc_BB12E7: FFree1Ad var_A8
  loc_BB12EA: LitStr "Contabilidad - Informes"
  loc_BB12ED: FLdPr Me
  loc_BB12F0: VCallAd Control_ID_LibroDiario
  loc_BB12F3: FStAdFunc var_A8
  loc_BB12F6: FLdPr var_A8
  loc_BB12F9: Me.Tag = from_stack_1
  loc_BB12FE: FFree1Ad var_A8
  loc_BB1301: LitStr "Contabilidad - Informes"
  loc_BB1304: FLdPr Me
  loc_BB1307: VCallAd Control_ID_MayorGeneral
  loc_BB130A: FStAdFunc var_A8
  loc_BB130D: FLdPr var_A8
  loc_BB1310: Me.Tag = from_stack_1
  loc_BB1315: FFree1Ad var_A8
  loc_BB1318: LitStr "Contabilidad - Controles Mensuales"
  loc_BB131B: FLdPr Me
  loc_BB131E: VCallAd Control_ID_ControldeCaja
  loc_BB1321: FStAdFunc var_A8
  loc_BB1324: FLdPr var_A8
  loc_BB1327: Me.Tag = from_stack_1
  loc_BB132C: FFree1Ad var_A8
  loc_BB132F: LitStr "Contabilidad - Controles Mensuales"
  loc_BB1332: FLdPr Me
  loc_BB1335: VCallAd Control_ID_ControlChequesSinRemitir
  loc_BB1338: FStAdFunc var_A8
  loc_BB133B: FLdPr var_A8
  loc_BB133E: Me.Tag = from_stack_1
  loc_BB1343: FFree1Ad var_A8
  loc_BB1346: LitStr "Contabilidad - Controles Mensuales"
  loc_BB1349: FLdPr Me
  loc_BB134C: VCallAd Control_ID_ControlTransferenciasSinRemitir
  loc_BB134F: FStAdFunc var_A8
  loc_BB1352: FLdPr var_A8
  loc_BB1355: Me.Tag = from_stack_1
  loc_BB135A: FFree1Ad var_A8
  loc_BB135D: LitStr "Contabilidad - Controles Mensuales"
  loc_BB1360: FLdPr Me
  loc_BB1363: VCallAd Control_ID_ControldeCargosalTesorero
  loc_BB1366: FStAdFunc var_A8
  loc_BB1369: FLdPr var_A8
  loc_BB136C: Me.Tag = from_stack_1
  loc_BB1371: FFree1Ad var_A8
  loc_BB1374: LitStr "Contabilidad - Controles Mensuales"
  loc_BB1377: FLdPr Me
  loc_BB137A: VCallAd Control_ID_ControlTransferenciasalTesorero
  loc_BB137D: FStAdFunc var_A8
  loc_BB1380: FLdPr var_A8
  loc_BB1383: Me.Tag = from_stack_1
  loc_BB1388: FFree1Ad var_A8
  loc_BB138B: LitStr "Contabilidad - Controles Mensuales"
  loc_BB138E: FLdPr Me
  loc_BB1391: VCallAd Control_ID_LibroBancoMayorGeneral
  loc_BB1394: FStAdFunc var_A8
  loc_BB1397: FLdPr var_A8
  loc_BB139A: Me.Tag = from_stack_1
  loc_BB139F: FFree1Ad var_A8
  loc_BB13A2: LitStr "Contabilidad - Controles Mensuales"
  loc_BB13A5: FLdPr Me
  loc_BB13A8: VCallAd Control_ID_ProveedoresVarioseImputaciones
  loc_BB13AB: FStAdFunc var_A8
  loc_BB13AE: FLdPr var_A8
  loc_BB13B1: Me.Tag = from_stack_1
  loc_BB13B6: FFree1Ad var_A8
  loc_BB13B9: LitStr "Contabilidad - Controles Mensuales (InfoGov3)"
  loc_BB13BC: FLdPr Me
  loc_BB13BF: VCallAd Control_ID_AltasPatrimonialesvsDevengados
  loc_BB13C2: FStAdFunc var_A8
  loc_BB13C5: FLdPr var_A8
  loc_BB13C8: Me.Tag = from_stack_1
  loc_BB13CD: FFree1Ad var_A8
  loc_BB13D0: LitStr "Compras y Suministros - Notas de Pedido"
  loc_BB13D3: FLdPr Me
  loc_BB13D6: VCallAd Control_ID_NotasdePedidoABM
  loc_BB13D9: FStAdFunc var_A8
  loc_BB13DC: FLdPr var_A8
  loc_BB13DF: Me.Tag = from_stack_1
  loc_BB13E4: FFree1Ad var_A8
  loc_BB13E7: LitStr "Compras y Suministros - Notas de Pedido"
  loc_BB13EA: FLdPr Me
  loc_BB13ED: VCallAd Control_ID_ListadodeNotasdePedido
  loc_BB13F0: FStAdFunc var_A8
  loc_BB13F3: FLdPr var_A8
  loc_BB13F6: Me.Tag = from_stack_1
  loc_BB13FB: FFree1Ad var_A8
  loc_BB13FE: LitStr "Compras y Suministros - Notas de Pedido"
  loc_BB1401: FLdPr Me
  loc_BB1404: VCallAd Control_ID_PasarNPalSiguienteEjercicio
  loc_BB1407: FStAdFunc var_A8
  loc_BB140A: FLdPr var_A8
  loc_BB140D: Me.Tag = from_stack_1
  loc_BB1412: FFree1Ad var_A8
  loc_BB1415: LitStr "Compras y Suministros - Cotización"
  loc_BB1418: FLdPr Me
  loc_BB141B: VCallAd Control_ID_CotizacionABM
  loc_BB141E: FStAdFunc var_A8
  loc_BB1421: FLdPr var_A8
  loc_BB1424: Me.Tag = from_stack_1
  loc_BB1429: FFree1Ad var_A8
  loc_BB142C: LitStr "Compras y Suministros - Cotización"
  loc_BB142F: FLdPr Me
  loc_BB1432: VCallAd Control_ID_SolicituddeCotizacion
  loc_BB1435: FStAdFunc var_A8
  loc_BB1438: FLdPr var_A8
  loc_BB143B: Me.Tag = from_stack_1
  loc_BB1440: FFree1Ad var_A8
  loc_BB1443: LitStr "Compras y Suministros - Cotización"
  loc_BB1446: FLdPr Me
  loc_BB1449: VCallAd Control_ID_ListadodeCotizaciones
  loc_BB144C: FStAdFunc var_A8
  loc_BB144F: FLdPr var_A8
  loc_BB1452: Me.Tag = from_stack_1
  loc_BB1457: FFree1Ad var_A8
  loc_BB145A: LitStr "Compras y Suministros - Cotización"
  loc_BB145D: FLdPr Me
  loc_BB1460: VCallAd Control_ID_PlanillaComparativa
  loc_BB1463: FStAdFunc var_A8
  loc_BB1466: FLdPr var_A8
  loc_BB1469: Me.Tag = from_stack_1
  loc_BB146E: FFree1Ad var_A8
  loc_BB1471: LitStr "Compras y Suministros - Orden de Compra"
  loc_BB1474: FLdPr Me
  loc_BB1477: VCallAd Control_ID_OrdendeCompraABM
  loc_BB147A: FStAdFunc var_A8
  loc_BB147D: FLdPr var_A8
  loc_BB1480: Me.Tag = from_stack_1
  loc_BB1485: FFree1Ad var_A8
  loc_BB1488: LitStr "Compras y Suministros - Orden de Compra"
  loc_BB148B: FLdPr Me
  loc_BB148E: VCallAd Control_ID_OrdendeCompraModificación
  loc_BB1491: FStAdFunc var_A8
  loc_BB1494: FLdPr var_A8
  loc_BB1497: Me.Tag = from_stack_1
  loc_BB149C: FFree1Ad var_A8
  loc_BB149F: LitStr "Compras y Suministros - Orden de Compra"
  loc_BB14A2: FLdPr Me
  loc_BB14A5: VCallAd Control_ID_rptOrdendeCompra
  loc_BB14A8: FStAdFunc var_A8
  loc_BB14AB: FLdPr var_A8
  loc_BB14AE: Me.Tag = from_stack_1
  loc_BB14B3: FFree1Ad var_A8
  loc_BB14B6: LitStr "Compras y Suministros - Orden de Compra"
  loc_BB14B9: FLdPr Me
  loc_BB14BC: VCallAd Control_ID_rptOrdendeCompraInterno
  loc_BB14BF: FStAdFunc var_A8
  loc_BB14C2: FLdPr var_A8
  loc_BB14C5: Me.Tag = from_stack_1
  loc_BB14CA: FFree1Ad var_A8
  loc_BB14CD: LitStr "Compras y Suministros - Recepción de Orden de Compra"
  loc_BB14D0: FLdPr Me
  loc_BB14D3: VCallAd Control_ID_RecepcióndeOrdendeCompraABM
  loc_BB14D6: FStAdFunc var_A8
  loc_BB14D9: FLdPr var_A8
  loc_BB14DC: Me.Tag = from_stack_1
  loc_BB14E1: FFree1Ad var_A8
  loc_BB14E4: LitStr "Compras y Suministros - Recepción de Orden de Compra"
  loc_BB14E7: FLdPr Me
  loc_BB14EA: VCallAd Control_ID_ModificacionyBajadeRecepcion
  loc_BB14ED: FStAdFunc var_A8
  loc_BB14F0: FLdPr var_A8
  loc_BB14F3: Me.Tag = from_stack_1
  loc_BB14F8: FFree1Ad var_A8
  loc_BB14FB: LitStr "Compras y Suministros - Recepción de Orden de Compra"
  loc_BB14FE: FLdPr Me
  loc_BB1501: VCallAd Control_ID_ListadodeRecepciondeOrdendeCompra
  loc_BB1504: FStAdFunc var_A8
  loc_BB1507: FLdPr var_A8
  loc_BB150A: Me.Tag = from_stack_1
  loc_BB150F: FFree1Ad var_A8
  loc_BB1512: LitStr "Compras y Suministros - Recepción de Orden de Compra"
  loc_BB1515: FLdPr Me
  loc_BB1518: VCallAd Control_ID_ConstanciadeRecepcion
  loc_BB151B: FStAdFunc var_A8
  loc_BB151E: FLdPr var_A8
  loc_BB1521: Me.Tag = from_stack_1
  loc_BB1526: FFree1Ad var_A8
  loc_BB1529: LitStr "Compras y Suministros"
  loc_BB152C: FLdPr Me
  loc_BB152F: VCallAd Control_ID_PlazosLicitacion
  loc_BB1532: FStAdFunc var_A8
  loc_BB1535: FLdPr var_A8
  loc_BB1538: Me.Tag = from_stack_1
  loc_BB153D: FFree1Ad var_A8
  loc_BB1540: LitStr "Compras y Suministros"
  loc_BB1543: FLdPr Me
  loc_BB1546: VCallAd Control_ID_PlazoNotaPedidoaOrdenCompra
  loc_BB1549: FStAdFunc var_A8
  loc_BB154C: FLdPr var_A8
  loc_BB154F: Me.Tag = from_stack_1
  loc_BB1554: FFree1Ad var_A8
  loc_BB1557: LitStr "Informes - Acuerdo 2988 - Rendición Mensual"
  loc_BB155A: FLdPr Me
  loc_BB155D: VCallAd Control_ID_Balancedesumasysaldos
  loc_BB1560: FStAdFunc var_A8
  loc_BB1563: FLdPr var_A8
  loc_BB1566: Me.Tag = from_stack_1
  loc_BB156B: FFree1Ad var_A8
  loc_BB156E: LitStr "Informes - Acuerdo 2988 - Rendición Mensual - Anexo III"
  loc_BB1571: FLdPr Me
  loc_BB1574: VCallAd Control_ID_EjecucionPresupuestariadelasErogaciones
  loc_BB1577: FStAdFunc var_A8
  loc_BB157A: FLdPr var_A8
  loc_BB157D: Me.Tag = from_stack_1
  loc_BB1582: FFree1Ad var_A8
  loc_BB1585: LitStr "Informes - Acuerdo 2988 - Rendición Mensual - Anexo IV"
  loc_BB1588: FLdPr Me
  loc_BB158B: VCallAd Control_ID_EjecucionPresupuestariadelosRecursos
  loc_BB158E: FStAdFunc var_A8
  loc_BB1591: FLdPr var_A8
  loc_BB1594: Me.Tag = from_stack_1
  loc_BB1599: FFree1Ad var_A8
  loc_BB159C: LitStr "Informes - Acuerdo 2988 - Rendición Mensual - Anexo IX"
  loc_BB159F: FLdPr Me
  loc_BB15A2: VCallAd Control_ID_A2988AnexoIX_mensual
  loc_BB15A5: FStAdFunc var_A8
  loc_BB15A8: FLdPr var_A8
  loc_BB15AB: Me.Tag = from_stack_1
  loc_BB15B0: FFree1Ad var_A8
  loc_BB15B3: LitStr "Informes - Acuerdo 2988 - Rendición Mensual - Anexo XIV"
  loc_BB15B6: FLdPr Me
  loc_BB15B9: VCallAd Control_ID_A2988AnexoXIV_mensual
  loc_BB15BC: FStAdFunc var_A8
  loc_BB15BF: FLdPr var_A8
  loc_BB15C2: Me.Tag = from_stack_1
  loc_BB15C7: FFree1Ad var_A8
  loc_BB15CA: LitStr "Informes - Acuerdo 2988 - Rendición Mensual - Art. 19 inc. H"
  loc_BB15CD: FLdPr Me
  loc_BB15D0: VCallAd Control_ID_A2988ContratosdeLocacion
  loc_BB15D3: FStAdFunc var_A8
  loc_BB15D6: FLdPr var_A8
  loc_BB15D9: Me.Tag = from_stack_1
  loc_BB15DE: FFree1Ad var_A8
  loc_BB15E1: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB15E4: FLdPr Me
  loc_BB15E7: VCallAd Control_ID_BalancedeSumasySaldosAnual
  loc_BB15EA: FStAdFunc var_A8
  loc_BB15ED: FLdPr var_A8
  loc_BB15F0: Me.Tag = from_stack_1
  loc_BB15F5: FFree1Ad var_A8
  loc_BB15F8: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB15FB: FLdPr Me
  loc_BB15FE: VCallAd Control_ID_A2988AnexoII
  loc_BB1601: FStAdFunc var_A8
  loc_BB1604: FLdPr var_A8
  loc_BB1607: Me.Tag = from_stack_1
  loc_BB160C: FFree1Ad var_A8
  loc_BB160F: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB1612: FLdPr Me
  loc_BB1615: VCallAd Control_ID_A2988AnexoV
  loc_BB1618: FStAdFunc var_A8
  loc_BB161B: FLdPr var_A8
  loc_BB161E: Me.Tag = from_stack_1
  loc_BB1623: FFree1Ad var_A8
  loc_BB1626: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB1629: FLdPr Me
  loc_BB162C: VCallAd Control_ID_A2988AnexoVII
  loc_BB162F: FStAdFunc var_A8
  loc_BB1632: FLdPr var_A8
  loc_BB1635: Me.Tag = from_stack_1
  loc_BB163A: FFree1Ad var_A8
  loc_BB163D: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB1640: FLdPr Me
  loc_BB1643: VCallAd Control_ID_A2988AnexoVIII
  loc_BB1646: FStAdFunc var_A8
  loc_BB1649: FLdPr var_A8
  loc_BB164C: Me.Tag = from_stack_1
  loc_BB1651: FFree1Ad var_A8
  loc_BB1654: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB1657: FLdPr Me
  loc_BB165A: VCallAd Control_ID_A2988AnexoIX
  loc_BB165D: FStAdFunc var_A8
  loc_BB1660: FLdPr var_A8
  loc_BB1663: Me.Tag = from_stack_1
  loc_BB1668: FFree1Ad var_A8
  loc_BB166B: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB166E: FLdPr Me
  loc_BB1671: VCallAd Control_ID_A2988AnexoX
  loc_BB1674: FStAdFunc var_A8
  loc_BB1677: FLdPr var_A8
  loc_BB167A: Me.Tag = from_stack_1
  loc_BB167F: FFree1Ad var_A8
  loc_BB1682: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB1685: FLdPr Me
  loc_BB1688: VCallAd Control_ID_A2988AnexoXI
  loc_BB168B: FStAdFunc var_A8
  loc_BB168E: FLdPr var_A8
  loc_BB1691: Me.Tag = from_stack_1
  loc_BB1696: FFree1Ad var_A8
  loc_BB1699: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB169C: FLdPr Me
  loc_BB169F: VCallAd Control_ID_A2988AnexoXIII
  loc_BB16A2: FStAdFunc var_A8
  loc_BB16A5: FLdPr var_A8
  loc_BB16A8: Me.Tag = from_stack_1
  loc_BB16AD: FFree1Ad var_A8
  loc_BB16B0: LitStr "Informes - Acuerdo 2988 - Rendición Anual"
  loc_BB16B3: FLdPr Me
  loc_BB16B6: VCallAd Control_ID_A2988AnexoXV
  loc_BB16B9: FStAdFunc var_A8
  loc_BB16BC: FLdPr var_A8
  loc_BB16BF: Me.Tag = from_stack_1
  loc_BB16C4: FFree1Ad var_A8
  loc_BB16C7: LitStr "Informes - Acuerdo 3949"
  loc_BB16CA: FLdPr Me
  loc_BB16CD: VCallAd Control_ID_A3949AnexoI
  loc_BB16D0: FStAdFunc var_A8
  loc_BB16D3: FLdPr var_A8
  loc_BB16D6: Me.Tag = from_stack_1
  loc_BB16DB: FFree1Ad var_A8
  loc_BB16DE: LitStr "Informes - Acuerdo 3949"
  loc_BB16E1: FLdPr Me
  loc_BB16E4: VCallAd Control_ID_A3949AnexoII
  loc_BB16E7: FStAdFunc var_A8
  loc_BB16EA: FLdPr var_A8
  loc_BB16ED: Me.Tag = from_stack_1
  loc_BB16F2: FFree1Ad var_A8
  loc_BB16F5: LitStr "Informes - Acuerdo 3949"
  loc_BB16F8: FLdPr Me
  loc_BB16FB: VCallAd Control_ID_A3949AnexoIIBis
  loc_BB16FE: FStAdFunc var_A8
  loc_BB1701: FLdPr var_A8
  loc_BB1704: Me.Tag = from_stack_1
  loc_BB1709: FFree1Ad var_A8
  loc_BB170C: LitStr "Informes - Acuerdo 3949"
  loc_BB170F: FLdPr Me
  loc_BB1712: VCallAd Control_ID_A3949AnexoIII
  loc_BB1715: FStAdFunc var_A8
  loc_BB1718: FLdPr var_A8
  loc_BB171B: Me.Tag = from_stack_1
  loc_BB1720: FFree1Ad var_A8
  loc_BB1723: LitStr "Informes - Acuerdo 3949"
  loc_BB1726: FLdPr Me
  loc_BB1729: VCallAd Control_ID_A3949AnexoIV
  loc_BB172C: FStAdFunc var_A8
  loc_BB172F: FLdPr var_A8
  loc_BB1732: Me.Tag = from_stack_1
  loc_BB1737: FFree1Ad var_A8
  loc_BB173A: LitStr "Informes - Acuerdo 3949"
  loc_BB173D: FLdPr Me
  loc_BB1740: VCallAd Control_ID_A3949AnexoV
  loc_BB1743: FStAdFunc var_A8
  loc_BB1746: FLdPr var_A8
  loc_BB1749: Me.Tag = from_stack_1
  loc_BB174E: FFree1Ad var_A8
  loc_BB1751: LitStr "Informes - Acuerdo 3949"
  loc_BB1754: FLdPr Me
  loc_BB1757: VCallAd Control_ID_A3949AnexoVI
  loc_BB175A: FStAdFunc var_A8
  loc_BB175D: FLdPr var_A8
  loc_BB1760: Me.Tag = from_stack_1
  loc_BB1765: FFree1Ad var_A8
  loc_BB1768: LitStr "Informes - Acuerdo 5017"
  loc_BB176B: FLdPr Me
  loc_BB176E: VCallAd Control_ID_A5017AnexoI
  loc_BB1771: FStAdFunc var_A8
  loc_BB1774: FLdPr var_A8
  loc_BB1777: Me.Tag = from_stack_1
  loc_BB177C: FFree1Ad var_A8
  loc_BB177F: LitStr "Informes - Acuerdo 5017"
  loc_BB1782: FLdPr Me
  loc_BB1785: VCallAd Control_ID_A5017AnexoII
  loc_BB1788: FStAdFunc var_A8
  loc_BB178B: FLdPr var_A8
  loc_BB178E: Me.Tag = from_stack_1
  loc_BB1793: FFree1Ad var_A8
  loc_BB1796: LitStr "Informes - Ejecución de las Erogaciones"
  loc_BB1799: FLdPr Me
  loc_BB179C: VCallAd Control_ID_SaldodeAutorizados
  loc_BB179F: FStAdFunc var_A8
  loc_BB17A2: FLdPr var_A8
  loc_BB17A5: Me.Tag = from_stack_1
  loc_BB17AA: FFree1Ad var_A8
  loc_BB17AD: LitStr "Informes - Ejecución de las Erogaciones"
  loc_BB17B0: FLdPr Me
  loc_BB17B3: VCallAd Control_ID_SaldodeAutorizadosporFecha
  loc_BB17B6: FStAdFunc var_A8
  loc_BB17B9: FLdPr var_A8
  loc_BB17BC: Me.Tag = from_stack_1
  loc_BB17C1: FFree1Ad var_A8
  loc_BB17C4: LitStr "Informes - Ejecución de las Erogaciones"
  loc_BB17C7: FLdPr Me
  loc_BB17CA: VCallAd Control_ID_ResumenporJurisdiccionPartida
  loc_BB17CD: FStAdFunc var_A8
  loc_BB17D0: FLdPr var_A8
  loc_BB17D3: Me.Tag = from_stack_1
  loc_BB17D8: FFree1Ad var_A8
  loc_BB17DB: LitStr "Personas y Proveedores"
  loc_BB17DE: FLdPr Me
  loc_BB17E1: VCallAd Control_ID_RegistroUnico
  loc_BB17E4: FStAdFunc var_A8
  loc_BB17E7: FLdPr var_A8
  loc_BB17EA: Me.Tag = from_stack_1
  loc_BB17EF: FFree1Ad var_A8
  loc_BB17F2: LitStr "Personas y Proveedores"
  loc_BB17F5: FLdPr Me
  loc_BB17F8: VCallAd Control_ID_Fichadeproveedores
  loc_BB17FB: FStAdFunc var_A8
  loc_BB17FE: FLdPr var_A8
  loc_BB1801: Me.Tag = from_stack_1
  loc_BB1806: FFree1Ad var_A8
  loc_BB1809: LitStr "Personas y Proveedores"
  loc_BB180C: FLdPr Me
  loc_BB180F: VCallAd Control_ID_ListadodeInterbanking
  loc_BB1812: FStAdFunc var_A8
  loc_BB1815: FLdPr var_A8
  loc_BB1818: Me.Tag = from_stack_1
  loc_BB181D: FFree1Ad var_A8
  loc_BB1820: LitStr "Herramientas - Usuarios"
  loc_BB1823: FLdPr Me
  loc_BB1826: VCallAd Control_ID_Usuario
  loc_BB1829: FStAdFunc var_A8
  loc_BB182C: FLdPr var_A8
  loc_BB182F: Me.Tag = from_stack_1
  loc_BB1834: FFree1Ad var_A8
  loc_BB1837: LitStr "Herramientas - Accesos"
  loc_BB183A: FLdPr Me
  loc_BB183D: VCallAd Control_ID_Acceso
  loc_BB1840: FStAdFunc var_A8
  loc_BB1843: FLdPr var_A8
  loc_BB1846: Me.Tag = from_stack_1
  loc_BB184B: FFree1Ad var_A8
  loc_BB184E: LitStr "Herramientas"
  loc_BB1851: FLdPr Me
  loc_BB1854: VCallAd Control_ID_FirmasABM
  loc_BB1857: FStAdFunc var_A8
  loc_BB185A: FLdPr var_A8
  loc_BB185D: Me.Tag = from_stack_1
  loc_BB1862: FFree1Ad var_A8
  loc_BB1865: LitStr "Herramientas - Oficinas por Usuario (InfoGov3)"
  loc_BB1868: FLdPr Me
  loc_BB186B: VCallAd Control_ID_OrgaxUsua
  loc_BB186E: FStAdFunc var_A8
  loc_BB1871: FLdPr var_A8
  loc_BB1874: Me.Tag = from_stack_1
  loc_BB1879: FFree1Ad var_A8
  loc_BB187C: FLdRfVar var_AC
  loc_BB187F: FLdRfVar var_A8
  loc_BB1882: ImpAdLdRf MemVar_C44F9C
  loc_BB1885: NewIfNullPr Me
  loc_BB1888:  = Me.Global.Screen
  loc_BB188D: FLdPr var_A8
  loc_BB1890:  = Screen.Width
  loc_BB1895: FLdFPR4 var_AC
  loc_BB1898: LitI2_Byte 1
  loc_BB189A: CR8I2
  loc_BB189B: MulR8
  loc_BB189C: PopFPR4
  loc_BB189D: FLdPrThis
  loc_BB189E: Me.Width = from_stack_1s
  loc_BB18A3: FFree1Ad var_A8
  loc_BB18A6: FLdRfVar var_AC
  loc_BB18A9: FLdRfVar var_A8
  loc_BB18AC: ImpAdLdRf MemVar_C44F9C
  loc_BB18AF: NewIfNullPr Me
  loc_BB18B2:  = Me.Global.Screen
  loc_BB18B7: FLdPr var_A8
  loc_BB18BA:  = Screen.Height
  loc_BB18BF: FLdFPR4 var_AC
  loc_BB18C2: LitI2_Byte 1
  loc_BB18C4: CR8I2
  loc_BB18C5: MulR8
  loc_BB18C6: PopFPR4
  loc_BB18C7: FLdPrThis
  loc_BB18C8: Me.Height = from_stack_1s
  loc_BB18CD: FFree1Ad var_A8
  loc_BB18D0: LitI4 0
  loc_BB18D5: FStStrCopy var_B0
  loc_BB18D8: FLdRfVar var_B0
  loc_BB18DB: ImpAdCallFPR4 Proc_263_13_99E450()
  loc_BB18E0: FFree1Str var_B0
  loc_BB18E3: Call Proc_255_166_9E874C()
  loc_BB18E8: Call ActualizaMenuPeriodos()
  loc_BB18ED: ImpAdLdRf MemVar_C3DE44
  loc_BB18F0: NewIfNullAd
  loc_BB18F3: FStAdNoPop
  loc_BB18F7: ImpAdLdRf MemVar_C44F9C
  loc_BB18FA: NewIfNullPr Me
  loc_BB18FD: Me.Global.Unload from_stack_1
  loc_BB1902: FFree1Ad var_A8
  loc_BB1905: FLdRfVar var_AC
  loc_BB1908: ImpAdCallI2 Err 'rtcErrObj
  loc_BB190D: FStAdFunc var_A8
  loc_BB1910: FLdPr var_A8
  loc_BB1913:  = Err.Number
  loc_BB1918: ILdRf var_AC
  loc_BB191B: LitI4 &H183
  loc_BB1920: EqI4
  loc_BB1921: FFree1Ad var_A8
  loc_BB1924: BranchF loc_BB1A2E
  loc_BB1927: LitVarStr var_A4, "Error # "
  loc_BB192C: FLdRfVar var_AC
  loc_BB192F: ImpAdCallI2 Err 'rtcErrObj
  loc_BB1934: FStAdFunc var_A8
  loc_BB1937: FLdPr var_A8
  loc_BB193A:  = Err.Number
  loc_BB193F: ILdRf var_AC
  loc_BB1942: CVarI4
  loc_BB1946: FLdRfVar var_D4
  loc_BB1949: ImpAdCallFPR4  = Str()
  loc_BB194E: FLdRfVar var_D4
  loc_BB1951: ConcatVar var_E4
  loc_BB1955: LitVarStr var_F4, " fue generado por "
  loc_BB195A: ConcatVar var_104
  loc_BB195E: FLdRfVar var_B0
  loc_BB1961: ImpAdCallI2 Err 'rtcErrObj
  loc_BB1966: FStAdFunc var_108
  loc_BB1969: FLdPr var_108
  loc_BB196C:  = Err.Source
  loc_BB1971: FLdZeroAd var_B0
  loc_BB1974: CVarStr var_118
  loc_BB1977: ConcatVar var_128
  loc_BB197B: LitI4 &HD
  loc_BB1980: FLdRfVar var_138
  loc_BB1983: ImpAdCallFPR4  = Chr()
  loc_BB1988: FLdRfVar var_138
  loc_BB198B: ConcatVar var_148
  loc_BB198F: FLdRfVar var_150
  loc_BB1992: ImpAdCallI2 Err 'rtcErrObj
  loc_BB1997: FStAdFunc var_14C
  loc_BB199A: FLdPr var_14C
  loc_BB199D:  = Err.Description
  loc_BB19A2: FLdZeroAd var_150
  loc_BB19A5: CVarStr var_160
  loc_BB19A8: ConcatVar var_170
  loc_BB19AC: CStrVarTmp
  loc_BB19AD: FStStr var_B4
  loc_BB19B0: FFreeAd var_A8 = "": var_108 = ""
  loc_BB19B9: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_104 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_160 = ""
  loc_BB19D0: LitVar_Missing var_E4
  loc_BB19D3: LitVar_Missing var_D4
  loc_BB19D6: LitVarStr var_A4, "Error"
  loc_BB19DB: FStVarCopyObj var_C4
  loc_BB19DE: FLdRfVar var_C4
  loc_BB19E1: LitI4 0
  loc_BB19E6: FLdRfVar var_B4
  loc_BB19E9: CVarRef
  loc_BB19EE: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BB19F3: FFreeVar var_C4 = "": var_D4 = ""
  loc_BB19FC: LitVar_Missing var_104
  loc_BB19FF: LitVar_Missing var_E4
  loc_BB1A02: LitVarStr var_A4, "ERROR"
  loc_BB1A07: FStVarCopyObj var_D4
  loc_BB1A0A: FLdRfVar var_D4
  loc_BB1A0D: LitI4 0
  loc_BB1A12: LitVarStr var_94, " Revisar el MENU "
  loc_BB1A17: FStVarCopyObj var_C4
  loc_BB1A1A: FLdRfVar var_C4
  loc_BB1A1D: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BB1A22: FFreeVar var_C4 = "": var_D4 = "": var_E4 = ""
  loc_BB1A2D: ExitProcHresult
  loc_BB1A2E: ExitProcHresult
End Sub

Private Sub MDIForm_Unload(Cancel As Integer) '9744C8
  'Data Table: 5077F4
  loc_97449C: ImpAdLdPr unk_5078F4
  loc_97449F: MemLdPr global_0
  loc_9744A2: Me.Close
  loc_9744A7: LitNothing
  loc_9744A9: CastAd
  loc_9744AC: ImpAdStAdFunc MemVar_C3D030
  loc_9744B0: ImpAdCallFPR4 Proc_261_49_A125F8()
  loc_9744B5: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9744BA: ImpAdCallFPR4 Proc_263_18_9A94E4()
  loc_9744BF: ImpAdCallFPR4 Proc_263_16_A69960()
  loc_9744C4: ExitProcHresult
  loc_9744C5: FnAbsR4
End Sub

Private Sub MDIForm_QueryUnload(Cancel As Integer, UnloadMode As Integer) '994CF8
  'Data Table: 5077F4
  loc_994CA0: FLdRfVar var_88
  loc_994CA3: ImpAdLdRf MemVar_C44F9C
  loc_994CA6: NewIfNullPr Me
  loc_994CA9:  = Me.Global.Forms
  loc_994CAE: FLdPr var_88
  loc_994CB1: LateMemLdVar
  loc_994CB6: LitVarI2 var_98, 2
  loc_994CBB: HardType
  loc_994CBC: GtVarBool
  loc_994CBE: FFree1Ad var_88
  loc_994CC1: FFree1Var var_A8 = ""
  loc_994CC4: BranchF loc_994CDC
  loc_994CC7: LitI4 0
  loc_994CCC: LitStr "Debe cerrar todos los formularios abiertos antes de salir"
  loc_994CCF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_994CD4: LitI2_Byte &HFF
  loc_994CD6: IStI2 Cancel
  loc_994CD9: Branch loc_994CF6
  loc_994CDC: FLdPr Me
  loc_994CDF: MemLdI2 global_64
  loc_994CE2: BranchF loc_994CF6
  loc_994CE5: FLdPr Me
  loc_994CE8: MemLdRfVar from_stack_1.global_60
  loc_994CEB: FLdPr Me
  loc_994CEE: MemLdRfVar from_stack_1.global_56
  loc_994CF1: ImpAdCallFPR4 Proc_262_0_9B90FC(, )
  loc_994CF6: ExitProcHresult
End Sub

Private Sub A2988AnexoVII_Click() '97909C
  'Data Table: 5077F4
  loc_97906C: ImpAdLdRf MemVar_C3DF0C
  loc_97906F: NewIfNullAd
  loc_979072: CastAd
  loc_979075: FStAdFuncNoPop
  loc_979078: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97907D: FFree1Ad var_88
  loc_979080: LitVar_Missing var_A8
  loc_979083: PopAdLdVar
  loc_979084: LitVarI4
  loc_97908C: PopAdLdVar
  loc_97908D: ImpAdLdRf MemVar_C3DF0C
  loc_979090: NewIfNullPr rptA2988AnexoVII
  loc_979093: rptA2988AnexoVII.Show from_stack_1, from_stack_2
  loc_979098: ExitProcHresult
End Sub

Private Sub PasaraResiduosPasivos_Click() '96EE90
  'Data Table: 5077F4
  loc_96EE6C: ImpAdLdRf MemVar_C3DD54
  loc_96EE6F: NewIfNullAd
  loc_96EE72: CastAd
  loc_96EE75: FStAdFunc var_88
  loc_96EE78: FLdRfVar var_88
  loc_96EE7B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96EE80: ILdRf var_88
  loc_96EE83: CastAd
  loc_96EE86: ImpAdStAdFunc MemVar_C3DD54
  loc_96EE8A: FFree1Ad var_88
  loc_96EE8D: ExitProcHresult
End Sub

Private Sub A2988AnexoIX_mensual_Click() '978AC0
  'Data Table: 5077F4
  loc_978A90: ImpAdLdRf MemVar_C3DEE4
  loc_978A93: NewIfNullAd
  loc_978A96: CastAd
  loc_978A99: FStAdFuncNoPop
  loc_978A9C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978AA1: FFree1Ad var_88
  loc_978AA4: LitVar_Missing var_A8
  loc_978AA7: PopAdLdVar
  loc_978AA8: LitVarI4
  loc_978AB0: PopAdLdVar
  loc_978AB1: ImpAdLdRf MemVar_C3DEE4
  loc_978AB4: NewIfNullPr rptA2988AnexoIX_mensual
  loc_978AB7: rptA2988AnexoIX_mensual.Show from_stack_1, from_stack_2
  loc_978ABC: ExitProcHresult
End Sub

Private Sub A3949AnexoIV_Click() '979D80
  'Data Table: 5077F4
  loc_979D50: ImpAdLdRf MemVar_C3DFFC
  loc_979D53: NewIfNullAd
  loc_979D56: CastAd
  loc_979D59: FStAdFuncNoPop
  loc_979D5C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979D61: FFree1Ad var_88
  loc_979D64: LitVar_Missing var_A8
  loc_979D67: PopAdLdVar
  loc_979D68: LitVarI4
  loc_979D70: PopAdLdVar
  loc_979D71: ImpAdLdRf MemVar_C3DFFC
  loc_979D74: NewIfNullPr rptA3949AnexoIV
  loc_979D77: rptA3949AnexoIV.Show from_stack_1, from_stack_2
  loc_979D7C: ExitProcHresult
End Sub

Private Sub ReapropiaralEjercicioSiguiente_Click() '96EF98
  'Data Table: 5077F4
  loc_96EF74: ImpAdLdRf MemVar_C3DDA4
  loc_96EF77: NewIfNullAd
  loc_96EF7A: CastAd
  loc_96EF7D: FStAdFunc var_88
  loc_96EF80: FLdRfVar var_88
  loc_96EF83: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96EF88: ILdRf var_88
  loc_96EF8B: CastAd
  loc_96EF8E: ImpAdStAdFunc MemVar_C3DDA4
  loc_96EF92: FFree1Ad var_88
  loc_96EF95: ExitProcHresult
End Sub

Private Sub OrdendeCompraABM_Click() '96F888
  'Data Table: 5077F4
  loc_96F864: ImpAdLdRf MemVar_C3DC78
  loc_96F867: NewIfNullAd
  loc_96F86A: CastAd
  loc_96F86D: FStAdFunc var_88
  loc_96F870: FLdRfVar var_88
  loc_96F873: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F878: ILdRf var_88
  loc_96F87B: CastAd
  loc_96F87E: ImpAdStAdFunc MemVar_C3DC78
  loc_96F882: FFree1Ad var_88
  loc_96F885: ExitProcHresult
End Sub

Private Sub Banco_Click() '957F58
  'Data Table: 5077F4
  loc_957F3C: LitVar_Missing var_A4
  loc_957F3F: PopAdLdVar
  loc_957F40: LitVarI4
  loc_957F48: PopAdLdVar
  loc_957F49: ImpAdLdRf MemVar_C3E5AC
  loc_957F4C: NewIfNullPr dlgInfogov3
  loc_957F4F: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_957F54: ExitProcHresult
End Sub

Private Sub A2988AnexoXI_Click() '979420
  'Data Table: 5077F4
  loc_9793F0: ImpAdLdRf MemVar_C3DF48
  loc_9793F3: NewIfNullAd
  loc_9793F6: CastAd
  loc_9793F9: FStAdFuncNoPop
  loc_9793FC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979401: FFree1Ad var_88
  loc_979404: LitVar_Missing var_A8
  loc_979407: PopAdLdVar
  loc_979408: LitVarI4
  loc_979410: PopAdLdVar
  loc_979411: ImpAdLdRf MemVar_C3DF48
  loc_979414: NewIfNullPr rptA2988AnexoXI
  loc_979417: rptA2988AnexoXI.Show from_stack_1, from_stack_2
  loc_97941C: ExitProcHresult
End Sub

Private Sub Acceso_Click() '970C20
  'Data Table: 5077F4
  loc_970BFC: ImpAdLdRf MemVar_C3D944
  loc_970BFF: NewIfNullAd
  loc_970C02: CastAd
  loc_970C05: FStAdFunc var_88
  loc_970C08: FLdRfVar var_88
  loc_970C0B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970C10: ILdRf var_88
  loc_970C13: CastAd
  loc_970C16: ImpAdStAdFunc MemVar_C3D944
  loc_970C1A: FFree1Ad var_88
  loc_970C1D: ExitProcHresult
End Sub

Private Sub NotasdePedidoABM_Click() '96F6D0
  'Data Table: 5077F4
  loc_96F6AC: ImpAdLdRf MemVar_C3DC14
  loc_96F6AF: NewIfNullAd
  loc_96F6B2: CastAd
  loc_96F6B5: FStAdFunc var_88
  loc_96F6B8: FLdRfVar var_88
  loc_96F6BB: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F6C0: ILdRf var_88
  loc_96F6C3: CastAd
  loc_96F6C6: ImpAdStAdFunc MemVar_C3DC14
  loc_96F6CA: FFree1Ad var_88
  loc_96F6CD: ExitProcHresult
  loc_96F6CE: FLdPr arg_7C08
End Sub

Private Sub A3949AnexoII_Click() '979AC4
  'Data Table: 5077F4
  loc_979A94: ImpAdLdRf MemVar_C3DFC0
  loc_979A97: NewIfNullAd
  loc_979A9A: CastAd
  loc_979A9D: FStAdFuncNoPop
  loc_979AA0: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979AA5: FFree1Ad var_88
  loc_979AA8: LitVar_Missing var_A8
  loc_979AAB: PopAdLdVar
  loc_979AAC: LitVarI4
  loc_979AB4: PopAdLdVar
  loc_979AB5: ImpAdLdRf MemVar_C3DFC0
  loc_979AB8: NewIfNullPr rptA3949AnexoII
  loc_979ABB: rptA3949AnexoII.Show from_stack_1, from_stack_2
  loc_979AC0: ExitProcHresult
End Sub

Private Sub ControlTransferenciasSinRemitir_Click() '978354
  'Data Table: 5077F4
  loc_978324: ImpAdLdRf MemVar_C3E700
  loc_978327: NewIfNullAd
  loc_97832A: CastAd
  loc_97832D: FStAdFuncNoPop
  loc_978330: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978335: FFree1Ad var_88
  loc_978338: LitVar_Missing var_A8
  loc_97833B: PopAdLdVar
  loc_97833C: LitVarI4
  loc_978344: PopAdLdVar
  loc_978345: ImpAdLdRf MemVar_C3E700
  loc_978348: NewIfNullPr rptControlTransferenciasSinRemitir
  loc_97834B: rptControlTransferenciasSinRemitir.Show from_stack_1, from_stack_2
  loc_978350: ExitProcHresult
End Sub

Private Sub SubdiariodeEmisiondeCheques_Click() '977670
  'Data Table: 5077F4
  loc_977640: ImpAdLdRf MemVar_C3E50C
  loc_977643: NewIfNullAd
  loc_977646: CastAd
  loc_977649: FStAdFuncNoPop
  loc_97764C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977651: FFree1Ad var_88
  loc_977654: LitVar_Missing var_A8
  loc_977657: PopAdLdVar
  loc_977658: LitVarI4
  loc_977660: PopAdLdVar
  loc_977661: ImpAdLdRf MemVar_C3E50C
  loc_977664: NewIfNullPr rptSubdiariodeemisiondecheques
  loc_977667: rptSubdiariodeemisiondecheques.Show from_stack_1, from_stack_2
  loc_97766C: ExitProcHresult
  loc_97766D: CExtInstUnk
End Sub

Private Sub SolicituddeCotizacion_Click() '97747C
  'Data Table: 5077F4
  loc_97744C: ImpAdLdRf MemVar_C3E4A8
  loc_97744F: NewIfNullAd
  loc_977452: CastAd
  loc_977455: FStAdFuncNoPop
  loc_977458: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97745D: FFree1Ad var_88
  loc_977460: LitVar_Missing var_A8
  loc_977463: PopAdLdVar
  loc_977464: LitVarI4
  loc_97746C: PopAdLdVar
  loc_97746D: ImpAdLdRf MemVar_C3E4A8
  loc_977470: NewIfNullPr rptSolicituddeCotizacion
  loc_977473: rptSolicituddeCotizacion.Show from_stack_1, from_stack_2
  loc_977478: ExitProcHresult
End Sub

Private Sub LibroBanco_Click() '977A58
  'Data Table: 5077F4
  loc_977A28: ImpAdLdRf MemVar_C3E13C
  loc_977A2B: NewIfNullAd
  loc_977A2E: CastAd
  loc_977A31: FStAdFuncNoPop
  loc_977A34: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977A39: FFree1Ad var_88
  loc_977A3C: LitVar_Missing var_A8
  loc_977A3F: PopAdLdVar
  loc_977A40: LitVarI4
  loc_977A48: PopAdLdVar
  loc_977A49: ImpAdLdRf MemVar_C3E13C
  loc_977A4C: NewIfNullPr rptLibrobanco
  loc_977A4F: rptLibrobanco.Show from_stack_1, from_stack_2
  loc_977A54: ExitProcHresult
End Sub

Private Sub rptOrdendeCompra_Click() '97B93C
  'Data Table: 5077F4
  loc_97B90C: ImpAdLdRf MemVar_C3DCB4
  loc_97B90F: NewIfNullAd
  loc_97B912: CastAd
  loc_97B915: FStAdFuncNoPop
  loc_97B918: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97B91D: FFree1Ad var_88
  loc_97B920: LitVar_Missing var_A8
  loc_97B923: PopAdLdVar
  loc_97B924: LitVarI4
  loc_97B92C: PopAdLdVar
  loc_97B92D: ImpAdLdRf MemVar_C3DCB4
  loc_97B930: NewIfNullPr rptOrdendeCompra
  loc_97B933: rptOrdendeCompra.Show from_stack_1, from_stack_2
  loc_97B938: ExitProcHresult
  loc_97B939: AryLdPr
End Sub

Private Sub rptOrdendeCompraInterno_Click(arg_18) '97B6E4
  'Data Table: 5077F4
  loc_97B6B4: ImpAdLdRf MemVar_C3DC8C
  loc_97B6B7: NewIfNullAd
  loc_97B6BA: CastAd
  loc_97B6BD: FStAdFuncNoPop
  loc_97B6C0: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97B6C5: FFree1Ad var_88
  loc_97B6C8: LitVar_Missing var_A8
  loc_97B6CB: PopAdLdVar
  loc_97B6CC: LitVarI4
  loc_97B6D4: PopAdLdVar
  loc_97B6D5: ImpAdLdRf MemVar_C3DC8C
  loc_97B6D8: NewIfNullPr rptOrdendeCompraInterno
  loc_97B6DB: rptOrdendeCompraInterno.Show from_stack_1, from_stack_2
  loc_97B6E0: ExitProcHresult
  loc_97B6E1: FLdFPR8 arg_18
End Sub

Private Sub DeudaExigible_Click() '978548
  'Data Table: 5077F4
  loc_978518: ImpAdLdRf MemVar_C3E100
  loc_97851B: NewIfNullAd
  loc_97851E: CastAd
  loc_978521: FStAdFuncNoPop
  loc_978524: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978529: FFree1Ad var_88
  loc_97852C: LitVar_Missing var_A8
  loc_97852F: PopAdLdVar
  loc_978530: LitVarI4
  loc_978538: PopAdLdVar
  loc_978539: ImpAdLdRf MemVar_C3E100
  loc_97853C: NewIfNullPr rptDeudaExigible
  loc_97853F: rptDeudaExigible.Show from_stack_1, from_stack_2
  loc_978544: ExitProcHresult
End Sub

Private Sub ResiduosPasivos_Click() '97715C
  'Data Table: 5077F4
  loc_97712C: ImpAdLdRf MemVar_C3E37C
  loc_97712F: NewIfNullAd
  loc_977132: CastAd
  loc_977135: FStAdFuncNoPop
  loc_977138: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97713D: FFree1Ad var_88
  loc_977140: LitVar_Missing var_A8
  loc_977143: PopAdLdVar
  loc_977144: LitVarI4
  loc_97714C: PopAdLdVar
  loc_97714D: ImpAdLdRf MemVar_C3E37C
  loc_977150: NewIfNullPr rptResiduosPasivos
  loc_977153: rptResiduosPasivos.Show from_stack_1, from_stack_2
  loc_977158: ExitProcHresult
  loc_977159: Ary1LdFPR8
  loc_97715A: CDateR8
End Sub

Private Sub Impresoras_Click(Index As Integer) '9ADE18
  'Data Table: 5077F4
  loc_9ADD7C: LitI2_Byte 0
  loc_9ADD7E: FLdRfVar var_86
  loc_9ADD81: FLdRfVar var_8E
  loc_9ADD84: FLdPr Me
  loc_9ADD87: VCallAd Control_ID_Impresoras
  loc_9ADD8A: FStAdFunc var_8C
  loc_9ADD8D: FLdPr var_8C
  loc_9ADD90: Call 0.Method_Impresoras_ClickC ()
  loc_9ADD95: FLdI2 var_8E
  loc_9ADD98: LitI2_Byte 1
  loc_9ADD9A: SubI2
  loc_9ADD9B: FFree1Ad var_8C
  loc_9ADD9E: ForI2 var_92
  loc_9ADDA4: FLdI2 var_86
  loc_9ADDA7: ILdI2 Index
  loc_9ADDAA: EqI2
  loc_9ADDAB: FLdRfVar var_98
  loc_9ADDAE: FLdI2 var_86
  loc_9ADDB1: FLdPr Me
  loc_9ADDB4: VCallAd Control_ID_Impresoras
  loc_9ADDB7: FStAdFunc var_8C
  loc_9ADDBA: FLdPr var_8C
  loc_9ADDBD: Set from_stack_2 = Me(from_stack_1)
  loc_9ADDC2: FLdPr var_98
  loc_9ADDC5: Me.Checked = from_stack_1b
  loc_9ADDCA: FFreeAd var_8C = ""
  loc_9ADDD1: FLdRfVar var_86
  loc_9ADDD4: NextI2 var_92, loc_9ADDA4
  loc_9ADDD9: FLdRfVar var_9C
  loc_9ADDDC: FLdRfVar var_98
  loc_9ADDDF: ILdI2 Index
  loc_9ADDE2: FLdPr Me
  loc_9ADDE5: VCallAd Control_ID_Impresoras
  loc_9ADDE8: FStAdFunc var_8C
  loc_9ADDEB: FLdPr var_8C
  loc_9ADDEE: Set from_stack_2 = Me(from_stack_1)
  loc_9ADDF3: FLdPr var_98
  loc_9ADDF6:  = Me.Caption
  loc_9ADDFB: ILdRf var_9C
  loc_9ADDFE: ImpAdCallI2 Proc_261_24_A3529C()
  loc_9ADE03: FStStr var_A0
  loc_9ADE06: FFreeStr var_9C = ""
  loc_9ADE0D: FFreeAd var_8C = ""
  loc_9ADE14: ExitProcHresult
End Sub

Private Sub Periodos_Click(Index As Integer) '9C69AC
  'Data Table: 5077F4
  loc_9C68DC: FLdRfVar var_8C
  loc_9C68DF: ImpAdLdRf MemVar_C44F9C
  loc_9C68E2: NewIfNullPr Me
  loc_9C68E5:  = Me.Global.Forms
  loc_9C68EA: FLdPr var_8C
  loc_9C68ED: LateMemLdVar
  loc_9C68F2: LitVarI2 var_9C, 1
  loc_9C68F7: HardType
  loc_9C68F8: GtVarBool
  loc_9C68FA: FFree1Ad var_8C
  loc_9C68FD: FFree1Var var_AC = ""
  loc_9C6900: BranchF loc_9C6913
  loc_9C6903: LitI4 0
  loc_9C6908: LitStr "Debe cerrar todos los formularios abiertos antes de cambiar el periodo."
  loc_9C690B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9C6910: Branch loc_9C69A9
  loc_9C6913: LitI2_Byte 0
  loc_9C6915: FLdRfVar var_86
  loc_9C6918: FLdRfVar var_BE
  loc_9C691B: FLdPr Me
  loc_9C691E: VCallAd Control_ID_Periodos
  loc_9C6921: FStAdFunc var_8C
  loc_9C6924: FLdPr var_8C
  loc_9C6927: Call 0.Method_Periodos_ClickC ()
  loc_9C692C: FLdI2 var_BE
  loc_9C692F: LitI2_Byte 1
  loc_9C6931: SubI2
  loc_9C6932: FFree1Ad var_8C
  loc_9C6935: ForI2 var_C2
  loc_9C693B: FLdI2 var_86
  loc_9C693E: ILdI2 Index
  loc_9C6941: EqI2
  loc_9C6942: FLdRfVar var_C8
  loc_9C6945: FLdI2 var_86
  loc_9C6948: FLdPr Me
  loc_9C694B: VCallAd Control_ID_Periodos
  loc_9C694E: FStAdFunc var_8C
  loc_9C6951: FLdPr var_8C
  loc_9C6954: Set from_stack_2 = Me(from_stack_1)
  loc_9C6959: FLdPr var_C8
  loc_9C695C: Me.Checked = from_stack_1b
  loc_9C6961: FFreeAd var_8C = ""
  loc_9C6968: FLdRfVar var_86
  loc_9C696B: NextI2 var_C2, loc_9C693B
  loc_9C6970: FLdRfVar var_CC
  loc_9C6973: FLdRfVar var_C8
  loc_9C6976: ILdI2 Index
  loc_9C6979: FLdPr Me
  loc_9C697C: VCallAd Control_ID_Periodos
  loc_9C697F: FStAdFunc var_8C
  loc_9C6982: FLdPr var_8C
  loc_9C6985: Set from_stack_2 = Me(from_stack_1)
  loc_9C698A: FLdPr var_C8
  loc_9C698D:  = Me.Caption
  loc_9C6992: ILdRf var_CC
  loc_9C6995: CI2Str
  loc_9C6997: ImpAdStI2 MemVar_C3D064
  loc_9C699A: FFree1Str var_CC
  loc_9C699D: FFreeAd var_8C = ""
  loc_9C69A4: ImpAdCallFPR4 Proc_261_40_B3BA9C()
  loc_9C69A9: ExitProcHresult
End Sub

Private Sub TipoAsiento_Click() '962AF0
  'Data Table: 5077F4
  loc_962AD4: LitVar_Missing var_A4
  loc_962AD7: PopAdLdVar
  loc_962AD8: LitVarI4
  loc_962AE0: PopAdLdVar
  loc_962AE1: ImpAdLdRf MemVar_C3E5AC
  loc_962AE4: NewIfNullPr dlgInfogov3
  loc_962AE7: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_962AEC: ExitProcHresult
End Sub

Private Sub PreventivaDefinitivaDevengado_Click() '96F990
  'Data Table: 5077F4
  loc_96F96C: ImpAdLdRf MemVar_C3DD90
  loc_96F96F: NewIfNullAd
  loc_96F972: CastAd
  loc_96F975: FStAdFunc var_88
  loc_96F978: FLdRfVar var_88
  loc_96F97B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F980: ILdRf var_88
  loc_96F983: CastAd
  loc_96F986: ImpAdStAdFunc MemVar_C3DD90
  loc_96F98A: FFree1Ad var_88
  loc_96F98D: ExitProcHresult
  loc_96F98E: CStrVarTmp
End Sub

Private Sub ImputacionesdeSueldos_Click() '96F3B8
  'Data Table: 5077F4
  loc_96F394: ImpAdLdRf MemVar_C3DB4C
  loc_96F397: NewIfNullAd
  loc_96F39A: CastAd
  loc_96F39D: FStAdFunc var_88
  loc_96F3A0: FLdRfVar var_88
  loc_96F3A3: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F3A8: ILdRf var_88
  loc_96F3AB: CastAd
  loc_96F3AE: ImpAdStAdFunc MemVar_C3DB4C
  loc_96F3B2: FFree1Ad var_88
  loc_96F3B5: ExitProcHresult
End Sub

Private Sub AjustedePreventivaporCotizacion_Click() '96FD00
  'Data Table: 5077F4
  loc_96FCDC: ImpAdLdRf MemVar_C3D994
  loc_96FCDF: NewIfNullAd
  loc_96FCE2: CastAd
  loc_96FCE5: FStAdFunc var_88
  loc_96FCE8: FLdRfVar var_88
  loc_96FCEB: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96FCF0: ILdRf var_88
  loc_96FCF3: CastAd
  loc_96FCF6: ImpAdStAdFunc MemVar_C3D994
  loc_96FCFA: FFree1Ad var_88
  loc_96FCFD: ExitProcHresult
End Sub

Private Sub DefinitivasporOrdendeCompra_Click() '970908
  'Data Table: 5077F4
  loc_9708E4: ImpAdLdRf MemVar_C3DA70
  loc_9708E7: NewIfNullAd
  loc_9708EA: CastAd
  loc_9708ED: FStAdFunc var_88
  loc_9708F0: FLdRfVar var_88
  loc_9708F3: ImpAdCallFPR4 Proc_261_31_971890()
  loc_9708F8: ILdRf var_88
  loc_9708FB: CastAd
  loc_9708FE: ImpAdStAdFunc MemVar_C3DA70
  loc_970902: FFree1Ad var_88
  loc_970905: ExitProcHresult
  loc_970906: CopyBytes
End Sub

Private Sub DevengadosporRecepciondeOrdendeCompra_Click() '9706F8
  'Data Table: 5077F4
  loc_9706D4: ImpAdLdRf MemVar_C3DA84
  loc_9706D7: NewIfNullAd
  loc_9706DA: CastAd
  loc_9706DD: FStAdFunc var_88
  loc_9706E0: FLdRfVar var_88
  loc_9706E3: ImpAdCallFPR4 Proc_261_31_971890()
  loc_9706E8: ILdRf var_88
  loc_9706EB: CastAd
  loc_9706EE: ImpAdStAdFunc MemVar_C3DA84
  loc_9706F2: FFree1Ad var_88
  loc_9706F5: ExitProcHresult
End Sub

Private Sub ReasignarDefinitivadeOrdendeCompra_Click() '96F360
  'Data Table: 5077F4
  loc_96F33C: ImpAdLdRf MemVar_C3DDB8
  loc_96F33F: NewIfNullAd
  loc_96F342: CastAd
  loc_96F345: FStAdFunc var_88
  loc_96F348: FLdRfVar var_88
  loc_96F34B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F350: ILdRf var_88
  loc_96F353: CastAd
  loc_96F356: ImpAdStAdFunc MemVar_C3DDB8
  loc_96F35A: FFree1Ad var_88
  loc_96F35D: ExitProcHresult
End Sub

Private Sub ReasignarDevengadodeOrdendeCompra_Click() '9705F0
  'Data Table: 5077F4
  loc_9705CC: ImpAdLdRf MemVar_C3E778
  loc_9705CF: NewIfNullAd
  loc_9705D2: CastAd
  loc_9705D5: FStAdFunc var_88
  loc_9705D8: FLdRfVar var_88
  loc_9705DB: ImpAdCallFPR4 Proc_261_31_971890()
  loc_9705E0: ILdRf var_88
  loc_9705E3: CastAd
  loc_9705E6: ImpAdStAdFunc MemVar_C3E778
  loc_9705EA: FFree1Ad var_88
  loc_9705ED: ExitProcHresult
End Sub

Private Sub TransferenciadeImputaciones_Click() '96EFF0
  'Data Table: 5077F4
  loc_96EFCC: ImpAdLdRf MemVar_C3DE58
  loc_96EFCF: NewIfNullAd
  loc_96EFD2: CastAd
  loc_96EFD5: FStAdFunc var_88
  loc_96EFD8: FLdRfVar var_88
  loc_96EFDB: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96EFE0: ILdRf var_88
  loc_96EFE3: CastAd
  loc_96EFE6: ImpAdStAdFunc MemVar_C3DE58
  loc_96EFEA: FFree1Ad var_88
  loc_96EFED: ExitProcHresult
End Sub

Private Sub Liquidacion_Click() '96FDB0
  'Data Table: 5077F4
  loc_96FD8C: ImpAdLdRf MemVar_C3D250
  loc_96FD8F: NewIfNullAd
  loc_96FD92: CastAd
  loc_96FD95: FStAdFunc var_88
  loc_96FD98: FLdRfVar var_88
  loc_96FD9B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96FDA0: ILdRf var_88
  loc_96FDA3: CastAd
  loc_96FDA6: ImpAdStAdFunc MemVar_C3D250
  loc_96FDAA: FFree1Ad var_88
  loc_96FDAD: ExitProcHresult
End Sub

Private Sub LiquidaciondeImportesFijos_Click() '96D0A8
  'Data Table: 5077F4
  loc_96D084: ImpAdLdRf MemVar_C3DB60
  loc_96D087: NewIfNullAd
  loc_96D08A: CastAd
  loc_96D08D: FStAdFunc var_88
  loc_96D090: FLdRfVar var_88
  loc_96D093: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96D098: ILdRf var_88
  loc_96D09B: CastAd
  loc_96D09E: ImpAdStAdFunc MemVar_C3DB60
  loc_96D0A2: FFree1Ad var_88
  loc_96D0A5: ExitProcHresult
End Sub

Private Sub LiquidaciondeFondos_Click() '96D628
  'Data Table: 5077F4
  loc_96D604: ImpAdLdRf MemVar_C3D28C
  loc_96D607: NewIfNullAd
  loc_96D60A: CastAd
  loc_96D60D: FStAdFunc var_88
  loc_96D610: FLdRfVar var_88
  loc_96D613: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96D618: ILdRf var_88
  loc_96D61B: CastAd
  loc_96D61E: ImpAdStAdFunc MemVar_C3D28C
  loc_96D622: FFree1Ad var_88
  loc_96D625: ExitProcHresult
  loc_96D626: FStAdFuncNoPop
End Sub

Private Sub VolantedeLiquidacion_Click() '976D74
  'Data Table: 5077F4
  loc_976D44: ImpAdLdRf MemVar_C3DAC0
  loc_976D47: NewIfNullAd
  loc_976D4A: CastAd
  loc_976D4D: FStAdFuncNoPop
  loc_976D50: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_976D55: FFree1Ad var_88
  loc_976D58: LitVar_Missing var_A8
  loc_976D5B: PopAdLdVar
  loc_976D5C: LitVarI4
  loc_976D64: PopAdLdVar
  loc_976D65: ImpAdLdRf MemVar_C3DAC0
  loc_976D68: NewIfNullPr rptVolantedeLiquidacion
  loc_976D6B: rptVolantedeLiquidacion.Show from_stack_1, from_stack_2
  loc_976D70: ExitProcHresult
End Sub

Private Sub ConceptosdeLiquidacion_Click() '976D10
  'Data Table: 5077F4
  loc_976CE0: ImpAdLdRf MemVar_C3E04C
  loc_976CE3: NewIfNullAd
  loc_976CE6: CastAd
  loc_976CE9: FStAdFuncNoPop
  loc_976CEC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_976CF1: FFree1Ad var_88
  loc_976CF4: LitVar_Missing var_A8
  loc_976CF7: PopAdLdVar
  loc_976CF8: LitVarI4
  loc_976D00: PopAdLdVar
  loc_976D01: ImpAdLdRf MemVar_C3E04C
  loc_976D04: NewIfNullPr rptConceptosdeliquidacion
  loc_976D07: rptConceptosdeliquidacion.Show from_stack_1, from_stack_2
  loc_976D0C: ExitProcHresult
End Sub

Private Sub DeclaraciondeIngresosBrutos_Click() '959C24
  'Data Table: 5077F4
  loc_959C08: LitVar_Missing var_A4
  loc_959C0B: PopAdLdVar
  loc_959C0C: LitVarI4
  loc_959C14: PopAdLdVar
  loc_959C15: ImpAdLdRf MemVar_C3E5AC
  loc_959C18: NewIfNullPr dlgInfogov3
  loc_959C1B: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_959C20: ExitProcHresult
End Sub

Private Sub DeclaraciondeGanancias_Click() '977CB0
  'Data Table: 5077F4
  loc_977C80: ImpAdLdRf MemVar_C3E0C4
  loc_977C83: NewIfNullAd
  loc_977C86: CastAd
  loc_977C89: FStAdFuncNoPop
  loc_977C8C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977C91: FFree1Ad var_88
  loc_977C94: LitVar_Missing var_A8
  loc_977C97: PopAdLdVar
  loc_977C98: LitVarI4
  loc_977CA0: PopAdLdVar
  loc_977CA1: ImpAdLdRf MemVar_C3E0C4
  loc_977CA4: NewIfNullPr rptDeclaraciondeGanancias
  loc_977CA7: rptDeclaraciondeGanancias.Show from_stack_1, from_stack_2
  loc_977CAC: ExitProcHresult
End Sub

Private Sub DeclaraciondeSeguridadSocial_Click() '979B8C
  'Data Table: 5077F4
  loc_979B5C: ImpAdLdRf MemVar_C3E0EC
  loc_979B5F: NewIfNullAd
  loc_979B62: CastAd
  loc_979B65: FStAdFuncNoPop
  loc_979B68: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979B6D: FFree1Ad var_88
  loc_979B70: LitVar_Missing var_A8
  loc_979B73: PopAdLdVar
  loc_979B74: LitVarI4
  loc_979B7C: PopAdLdVar
  loc_979B7D: ImpAdLdRf MemVar_C3E0EC
  loc_979B80: NewIfNullPr rptDeclaraciondeSeguridadSocial
  loc_979B83: rptDeclaraciondeSeguridadSocial.Show from_stack_1, from_stack_2
  loc_979B88: ExitProcHresult
End Sub

Private Sub DeclaraciondeIVA_Click() '977BE8
  'Data Table: 5077F4
  loc_977BB8: ImpAdLdRf MemVar_C3E0D8
  loc_977BBB: NewIfNullAd
  loc_977BBE: CastAd
  loc_977BC1: FStAdFuncNoPop
  loc_977BC4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977BC9: FFree1Ad var_88
  loc_977BCC: LitVar_Missing var_A8
  loc_977BCF: PopAdLdVar
  loc_977BD0: LitVarI4
  loc_977BD8: PopAdLdVar
  loc_977BD9: ImpAdLdRf MemVar_C3E0D8
  loc_977BDC: NewIfNullPr rptDeclaraciondeIVA
  loc_977BDF: rptDeclaraciondeIVA.Show from_stack_1, from_stack_2
  loc_977BE4: ExitProcHresult
  loc_977BE5: CR8I2
  loc_977BE6: FnAbsR4
End Sub

Private Sub OrdenpagoRes_Click() '970540
  'Data Table: 5077F4
  loc_97051C: ImpAdLdRf MemVar_C3E6D8
  loc_97051F: NewIfNullAd
  loc_970522: CastAd
  loc_970525: FStAdFunc var_88
  loc_970528: FLdRfVar var_88
  loc_97052B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970530: ILdRf var_88
  loc_970533: CastAd
  loc_970536: ImpAdStAdFunc MemVar_C3E6D8
  loc_97053A: FFree1Ad var_88
  loc_97053D: ExitProcHresult
  loc_97053E: Error
End Sub

Private Sub EmisionCheque_Click() '96D050
  'Data Table: 5077F4
  loc_96D02C: ImpAdLdRf MemVar_C3D138
  loc_96D02F: NewIfNullAd
  loc_96D032: CastAd
  loc_96D035: FStAdFunc var_88
  loc_96D038: FLdRfVar var_88
  loc_96D03B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96D040: ILdRf var_88
  loc_96D043: CastAd
  loc_96D046: ImpAdStAdFunc MemVar_C3D138
  loc_96D04A: FFree1Ad var_88
  loc_96D04D: ExitProcHresult
  loc_96D04E: FFree1Ad arg_7C58
End Sub

Private Sub ListadodeCheques_Click() '9795B0
  'Data Table: 5077F4
  loc_979580: ImpAdLdRf MemVar_C3E1A0
  loc_979583: NewIfNullAd
  loc_979586: CastAd
  loc_979589: FStAdFuncNoPop
  loc_97958C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979591: FFree1Ad var_88
  loc_979594: LitVar_Missing var_A8
  loc_979597: PopAdLdVar
  loc_979598: LitVarI4
  loc_9795A0: PopAdLdVar
  loc_9795A1: ImpAdLdRf MemVar_C3E1A0
  loc_9795A4: NewIfNullPr rptListadodeCheques
  loc_9795A7: rptListadodeCheques.Show from_stack_1, from_stack_2
  loc_9795AC: ExitProcHresult
  loc_9795AD: FFree1Ad var_A8
End Sub

Private Sub ComprobantedeOrdendePago_Click() '976608
  'Data Table: 5077F4
  loc_9765D8: ImpAdLdRf MemVar_C3DAD4
  loc_9765DB: NewIfNullAd
  loc_9765DE: CastAd
  loc_9765E1: FStAdFuncNoPop
  loc_9765E4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9765E9: FFree1Ad var_88
  loc_9765EC: LitVar_Missing var_A8
  loc_9765EF: PopAdLdVar
  loc_9765F0: LitVarI4
  loc_9765F8: PopAdLdVar
  loc_9765F9: ImpAdLdRf MemVar_C3DAD4
  loc_9765FC: NewIfNullPr rptOrdenPago
  loc_9765FF: rptOrdenPago.Show from_stack_1, from_stack_2
  loc_976604: ExitProcHresult
End Sub

Private Sub CertificadodeRetencion_Click() '977D14
  'Data Table: 5077F4
  loc_977CE4: ImpAdLdRf MemVar_C3D85C
  loc_977CE7: NewIfNullAd
  loc_977CEA: CastAd
  loc_977CED: FStAdFuncNoPop
  loc_977CF0: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977CF5: FFree1Ad var_88
  loc_977CF8: LitVar_Missing var_A8
  loc_977CFB: PopAdLdVar
  loc_977CFC: LitVarI4
  loc_977D04: PopAdLdVar
  loc_977D05: ImpAdLdRf MemVar_C3D85C
  loc_977D08: NewIfNullPr rptCertificadoderetencion
  loc_977D0B: rptCertificadoderetencion.Show from_stack_1, from_stack_2
  loc_977D10: ExitProcHresult
End Sub

Private Sub Caratula_Click() '977D78
  'Data Table: 5077F4
  loc_977D48: ImpAdLdRf MemVar_C3DAE8
  loc_977D4B: NewIfNullAd
  loc_977D4E: CastAd
  loc_977D51: FStAdFuncNoPop
  loc_977D54: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977D59: FFree1Ad var_88
  loc_977D5C: LitVar_Missing var_A8
  loc_977D5F: PopAdLdVar
  loc_977D60: LitVarI4
  loc_977D68: PopAdLdVar
  loc_977D69: ImpAdLdRf MemVar_C3DAE8
  loc_977D6C: NewIfNullPr rptCaratula
  loc_977D6F: rptCaratula.Show from_stack_1, from_stack_2
  loc_977D74: ExitProcHresult
End Sub

Private Sub Remision_Click() '9706A0
  'Data Table: 5077F4
  loc_97067C: ImpAdLdRf MemVar_C3DE1C
  loc_97067F: NewIfNullAd
  loc_970682: CastAd
  loc_970685: FStAdFunc var_88
  loc_970688: FLdRfVar var_88
  loc_97068B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970690: ILdRf var_88
  loc_970693: CastAd
  loc_970696: ImpAdStAdFunc MemVar_C3DE1C
  loc_97069A: FFree1Ad var_88
  loc_97069D: ExitProcHresult
End Sub

Private Sub ConciliacionBancaria_Click() '970858
  'Data Table: 5077F4
  loc_970834: ImpAdLdRf MemVar_C3DA0C
  loc_970837: NewIfNullAd
  loc_97083A: CastAd
  loc_97083D: FStAdFunc var_88
  loc_970840: FLdRfVar var_88
  loc_970843: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970848: ILdRf var_88
  loc_97084B: CastAd
  loc_97084E: ImpAdStAdFunc MemVar_C3DA0C
  loc_970852: FFree1Ad var_88
  loc_970855: ExitProcHresult
End Sub

Private Sub ReportedeConciliacion_Click() '9775A8
  'Data Table: 5077F4
  loc_977578: ImpAdLdRf MemVar_C3E060
  loc_97757B: NewIfNullAd
  loc_97757E: CastAd
  loc_977581: FStAdFuncNoPop
  loc_977584: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977589: FFree1Ad var_88
  loc_97758C: LitVar_Missing var_A8
  loc_97758F: PopAdLdVar
  loc_977590: LitVarI4
  loc_977598: PopAdLdVar
  loc_977599: ImpAdLdRf MemVar_C3E060
  loc_97759C: NewIfNullPr rptConciliacionbancaria
  loc_97759F: rptConciliacionbancaria.Show from_stack_1, from_stack_2
  loc_9775A4: ExitProcHresult
End Sub

Private Sub ExtractoBancario_Click() '970C78
  'Data Table: 5077F4
  loc_970C54: ImpAdLdRf MemVar_C3DAFC
  loc_970C57: NewIfNullAd
  loc_970C5A: CastAd
  loc_970C5D: FStAdFunc var_88
  loc_970C60: FLdRfVar var_88
  loc_970C63: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970C68: ILdRf var_88
  loc_970C6B: CastAd
  loc_970C6E: ImpAdStAdFunc MemVar_C3DAFC
  loc_970C72: FFree1Ad var_88
  loc_970C75: ExitProcHresult
End Sub

Private Sub ListadodeExtractoBancario_Click() '976B80
  'Data Table: 5077F4
  loc_976B50: ImpAdLdRf MemVar_C3E214
  loc_976B53: NewIfNullAd
  loc_976B56: CastAd
  loc_976B59: FStAdFuncNoPop
  loc_976B5C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_976B61: FFree1Ad var_88
  loc_976B64: LitVar_Missing var_A8
  loc_976B67: PopAdLdVar
  loc_976B68: LitVarI4
  loc_976B70: PopAdLdVar
  loc_976B71: ImpAdLdRf MemVar_C3E214
  loc_976B74: NewIfNullPr rptListadodeExtractoBancario
  loc_976B77: rptListadodeExtractoBancario.Show from_stack_1, from_stack_2
  loc_976B7C: ExitProcHresult
End Sub

Private Sub Ordenpago_Click() '96DEC0
  'Data Table: 5077F4
  loc_96DE9C: ImpAdLdRf MemVar_C3DCF0
  loc_96DE9F: NewIfNullAd
  loc_96DEA2: CastAd
  loc_96DEA5: FStAdFunc var_88
  loc_96DEA8: FLdRfVar var_88
  loc_96DEAB: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96DEB0: ILdRf var_88
  loc_96DEB3: CastAd
  loc_96DEB6: ImpAdStAdFunc MemVar_C3DCF0
  loc_96DEBA: FFree1Ad var_88
  loc_96DEBD: ExitProcHresult
End Sub

Private Sub ConciliacionAutomaticaBancoNacion_Click() '970388
  'Data Table: 5077F4
  loc_970364: ImpAdLdRf MemVar_C3D9F8
  loc_970367: NewIfNullAd
  loc_97036A: CastAd
  loc_97036D: FStAdFunc var_88
  loc_970370: FLdRfVar var_88
  loc_970373: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970378: ILdRf var_88
  loc_97037B: CastAd
  loc_97037E: ImpAdStAdFunc MemVar_C3D9F8
  loc_970382: FFree1Ad var_88
  loc_970385: ExitProcHresult
End Sub

Private Sub PreventivasNoUtilizadas_Click() '976F04
  'Data Table: 5077F4
  loc_976ED4: ImpAdLdRf MemVar_C3E32C
  loc_976ED7: NewIfNullAd
  loc_976EDA: CastAd
  loc_976EDD: FStAdFuncNoPop
  loc_976EE0: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_976EE5: FFree1Ad var_88
  loc_976EE8: LitVar_Missing var_A8
  loc_976EEB: PopAdLdVar
  loc_976EEC: LitVarI4
  loc_976EF4: PopAdLdVar
  loc_976EF5: ImpAdLdRf MemVar_C3E32C
  loc_976EF8: NewIfNullPr rptPreventivasNoUtilizadas
  loc_976EFB: rptPreventivasNoUtilizadas.Show from_stack_1, from_stack_2
  loc_976F00: ExitProcHresult
End Sub

Private Sub ReapropiacionalEjercicioSiguiente_Click() '976EA0
  'Data Table: 5077F4
  loc_976E70: ImpAdLdRf MemVar_C3E354
  loc_976E73: NewIfNullAd
  loc_976E76: CastAd
  loc_976E79: FStAdFuncNoPop
  loc_976E7C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_976E81: FFree1Ad var_88
  loc_976E84: LitVar_Missing var_A8
  loc_976E87: PopAdLdVar
  loc_976E88: LitVarI4
  loc_976E90: PopAdLdVar
  loc_976E91: ImpAdLdRf MemVar_C3E354
  loc_976E94: NewIfNullPr rptReapropiacionalEjercicioSiguiente
  loc_976E97: rptReapropiacionalEjercicioSiguiente.Show from_stack_1, from_stack_2
  loc_976E9C: ExitProcHresult
  loc_976E9D: Ary1LdFPR8
  loc_976E9E: CDateR8
End Sub

Private Sub ResiduosPasivosporExpediente_Click() '9785AC
  'Data Table: 5077F4
  loc_97857C: ImpAdLdRf MemVar_C3E390
  loc_97857F: NewIfNullAd
  loc_978582: CastAd
  loc_978585: FStAdFuncNoPop
  loc_978588: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97858D: FFree1Ad var_88
  loc_978590: LitVar_Missing var_A8
  loc_978593: PopAdLdVar
  loc_978594: LitVarI4
  loc_97859C: PopAdLdVar
  loc_97859D: ImpAdLdRf MemVar_C3E390
  loc_9785A0: NewIfNullPr rptResiduosPasivosporExpediente
  loc_9785A3: rptResiduosPasivosporExpediente.Show from_stack_1, from_stack_2
  loc_9785A8: ExitProcHresult
End Sub

Private Sub LibrodeImputaciones_Click() '977350
  'Data Table: 5077F4
  loc_977320: ImpAdLdRf MemVar_C3E164
  loc_977323: NewIfNullAd
  loc_977326: CastAd
  loc_977329: FStAdFuncNoPop
  loc_97732C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977331: FFree1Ad var_88
  loc_977334: LitVar_Missing var_A8
  loc_977337: PopAdLdVar
  loc_977338: LitVarI4
  loc_977340: PopAdLdVar
  loc_977341: ImpAdLdRf MemVar_C3E164
  loc_977344: NewIfNullPr rptLibrodeImputaciones
  loc_977347: rptLibrodeImputaciones.Show from_stack_1, from_stack_2
  loc_97734C: ExitProcHresult
End Sub

Private Sub LibrodeImputacionesporInsumo_Click() '9788CC
  'Data Table: 5077F4
  loc_97889C: ImpAdLdRf MemVar_C3E178
  loc_97889F: NewIfNullAd
  loc_9788A2: CastAd
  loc_9788A5: FStAdFuncNoPop
  loc_9788A8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9788AD: FFree1Ad var_88
  loc_9788B0: LitVar_Missing var_A8
  loc_9788B3: PopAdLdVar
  loc_9788B4: LitVarI4
  loc_9788BC: PopAdLdVar
  loc_9788BD: ImpAdLdRf MemVar_C3E178
  loc_9788C0: NewIfNullPr rptLibrodeImputacionesporInsumo
  loc_9788C3: rptLibrodeImputacionesporInsumo.Show from_stack_1, from_stack_2
  loc_9788C8: ExitProcHresult
End Sub

Private Sub ResumendeImputaciones_Click() '97760C
  'Data Table: 5077F4
  loc_9775DC: ImpAdLdRf MemVar_C3E3CC
  loc_9775DF: NewIfNullAd
  loc_9775E2: CastAd
  loc_9775E5: FStAdFuncNoPop
  loc_9775E8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9775ED: FFree1Ad var_88
  loc_9775F0: LitVar_Missing var_A8
  loc_9775F3: PopAdLdVar
  loc_9775F4: LitVarI4
  loc_9775FC: PopAdLdVar
  loc_9775FD: ImpAdLdRf MemVar_C3E3CC
  loc_977600: NewIfNullPr rptResumendeimputaciones
  loc_977603: rptResumendeimputaciones.Show from_stack_1, from_stack_2
  loc_977608: ExitProcHresult
End Sub

Private Sub ResumendeImputacionesporInsumo_Click() '978DE0
  'Data Table: 5077F4
  loc_978DB0: ImpAdLdRf MemVar_C3E3F4
  loc_978DB3: NewIfNullAd
  loc_978DB6: CastAd
  loc_978DB9: FStAdFuncNoPop
  loc_978DBC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978DC1: FFree1Ad var_88
  loc_978DC4: LitVar_Missing var_A8
  loc_978DC7: PopAdLdVar
  loc_978DC8: LitVarI4
  loc_978DD0: PopAdLdVar
  loc_978DD1: ImpAdLdRf MemVar_C3E3F4
  loc_978DD4: NewIfNullPr rptResumendeImputacionesporInsumo
  loc_978DD7: rptResumendeImputacionesporInsumo.Show from_stack_1, from_stack_2
  loc_978DDC: ExitProcHresult
End Sub

Private Sub ResumendeImputacionesporPartida_Click() '977864
  'Data Table: 5077F4
  loc_977834: ImpAdLdRf MemVar_C3E430
  loc_977837: NewIfNullAd
  loc_97783A: CastAd
  loc_97783D: FStAdFuncNoPop
  loc_977840: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977845: FFree1Ad var_88
  loc_977848: LitVar_Missing var_A8
  loc_97784B: PopAdLdVar
  loc_97784C: LitVarI4
  loc_977854: PopAdLdVar
  loc_977855: ImpAdLdRf MemVar_C3E430
  loc_977858: NewIfNullPr rptResumendeImputacionesporPartida
  loc_97785B: rptResumendeImputacionesporPartida.Show from_stack_1, from_stack_2
  loc_977860: ExitProcHresult
End Sub

Private Sub ResumendeImputacionesporOrganigrama_Click() '9778C8
  'Data Table: 5077F4
  loc_977898: ImpAdLdRf MemVar_C3E408
  loc_97789B: NewIfNullAd
  loc_97789E: CastAd
  loc_9778A1: FStAdFuncNoPop
  loc_9778A4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9778A9: FFree1Ad var_88
  loc_9778AC: LitVar_Missing var_A8
  loc_9778AF: PopAdLdVar
  loc_9778B0: LitVarI4
  loc_9778B8: PopAdLdVar
  loc_9778B9: ImpAdLdRf MemVar_C3E408
  loc_9778BC: NewIfNullPr rptResumendeImputacionesporOrganigrama
  loc_9778BF: rptResumendeImputacionesporOrganigrama.Show from_stack_1, from_stack_2
  loc_9778C4: ExitProcHresult
End Sub

Private Sub ResumendeImputacionesporFinalidad_Click() '97841C
  'Data Table: 5077F4
  loc_9783EC: ImpAdLdRf MemVar_C3E3E0
  loc_9783EF: NewIfNullAd
  loc_9783F2: CastAd
  loc_9783F5: FStAdFuncNoPop
  loc_9783F8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9783FD: FFree1Ad var_88
  loc_978400: LitVar_Missing var_A8
  loc_978403: PopAdLdVar
  loc_978404: LitVarI4
  loc_97840C: PopAdLdVar
  loc_97840D: ImpAdLdRf MemVar_C3E3E0
  loc_978410: NewIfNullPr rptResumendeImputacionesporFinalidad
  loc_978413: rptResumendeImputacionesporFinalidad.Show from_stack_1, from_stack_2
  loc_978418: ExitProcHresult
End Sub

Private Sub ResumendeImputacionesporOrganigramaPartidaFinalida_Click() '9783B8
  'Data Table: 5077F4
  loc_978388: ImpAdLdRf MemVar_C3E41C
  loc_97838B: NewIfNullAd
  loc_97838E: CastAd
  loc_978391: FStAdFuncNoPop
  loc_978394: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978399: FFree1Ad var_88
  loc_97839C: LitVar_Missing var_A8
  loc_97839F: PopAdLdVar
  loc_9783A0: LitVarI4
  loc_9783A8: PopAdLdVar
  loc_9783A9: ImpAdLdRf MemVar_C3E41C
  loc_9783AC: NewIfNullPr rptResumendeImputacionesporOrganigramaPartidaFinalidad
  loc_9783AF: rptResumendeImputacionesporOrganigramaPartidaFinalidad.Show from_stack_1, from_stack_2
  loc_9783B4: ExitProcHresult
End Sub

Private Sub ResumendeImputacionesporUnidaddeGasto_Click() '97873C
  'Data Table: 5077F4
  loc_97870C: ImpAdLdRf MemVar_C3E444
  loc_97870F: NewIfNullAd
  loc_978712: CastAd
  loc_978715: FStAdFuncNoPop
  loc_978718: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97871D: FFree1Ad var_88
  loc_978720: LitVar_Missing var_A8
  loc_978723: PopAdLdVar
  loc_978724: LitVarI4
  loc_97872C: PopAdLdVar
  loc_97872D: ImpAdLdRf MemVar_C3E444
  loc_978730: NewIfNullPr rptResumendeImputacionesporUnidadGasto
  loc_978733: rptResumendeImputacionesporUnidadGasto.Show from_stack_1, from_stack_2
  loc_978738: ExitProcHresult
End Sub

Private Sub VolantedeImputaciones_Click() '977094
  'Data Table: 5077F4
  loc_977064: ImpAdLdRf MemVar_C3D9BC
  loc_977067: NewIfNullAd
  loc_97706A: CastAd
  loc_97706D: FStAdFuncNoPop
  loc_977070: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977075: FFree1Ad var_88
  loc_977078: LitVar_Missing var_A8
  loc_97707B: PopAdLdVar
  loc_97707C: LitVarI4
  loc_977084: PopAdLdVar
  loc_977085: ImpAdLdRf MemVar_C3D9BC
  loc_977088: NewIfNullPr rptVolantedeImputaciones
  loc_97708B: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_977090: ExitProcHresult
End Sub

Private Sub VolantedeImputacionesExpdePago_Click() '977030
  'Data Table: 5077F4
  loc_977000: ImpAdLdRf MemVar_C3DA98
  loc_977003: NewIfNullAd
  loc_977006: CastAd
  loc_977009: FStAdFuncNoPop
  loc_97700C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977011: FFree1Ad var_88
  loc_977014: LitVar_Missing var_A8
  loc_977017: PopAdLdVar
  loc_977018: LitVarI4
  loc_977020: PopAdLdVar
  loc_977021: ImpAdLdRf MemVar_C3DA98
  loc_977024: NewIfNullPr rptVolantedeImputacionesExpdePago
  loc_977027: rptVolantedeImputacionesExpdePago.Show from_stack_1, from_stack_2
  loc_97702C: ExitProcHresult
  loc_97702D: Ary1LdI4
  loc_97702E: LeCyR8
End Sub

Private Sub ConsultaporProveedor_Click() '9779F4
  'Data Table: 5077F4
  loc_9779C4: ImpAdLdRf MemVar_C3E074
  loc_9779C7: NewIfNullAd
  loc_9779CA: CastAd
  loc_9779CD: FStAdFuncNoPop
  loc_9779D0: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9779D5: FFree1Ad var_88
  loc_9779D8: LitVar_Missing var_A8
  loc_9779DB: PopAdLdVar
  loc_9779DC: LitVarI4
  loc_9779E4: PopAdLdVar
  loc_9779E5: ImpAdLdRf MemVar_C3E074
  loc_9779E8: NewIfNullPr rptConsultaporproveedor
  loc_9779EB: rptConsultaporproveedor.Show from_stack_1, from_stack_2
  loc_9779F0: ExitProcHresult
End Sub

Private Sub ResumenporProveedorConReap_Click() '977288
  'Data Table: 5077F4
  loc_977258: ImpAdLdRf MemVar_C3E46C
  loc_97725B: NewIfNullAd
  loc_97725E: CastAd
  loc_977261: FStAdFuncNoPop
  loc_977264: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977269: FFree1Ad var_88
  loc_97726C: LitVar_Missing var_A8
  loc_97726F: PopAdLdVar
  loc_977270: LitVarI4
  loc_977278: PopAdLdVar
  loc_977279: ImpAdLdRf MemVar_C3E46C
  loc_97727C: NewIfNullPr rptResumenporProveedorConReap
  loc_97727F: rptResumenporProveedorConReap.Show from_stack_1, from_stack_2
  loc_977284: ExitProcHresult
End Sub

Private Sub ReapropiacionporProveedor_Click() '978B88
  'Data Table: 5077F4
  loc_978B58: ImpAdLdRf MemVar_C3E368
  loc_978B5B: NewIfNullAd
  loc_978B5E: CastAd
  loc_978B61: FStAdFuncNoPop
  loc_978B64: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978B69: FFree1Ad var_88
  loc_978B6C: LitVar_Missing var_A8
  loc_978B6F: PopAdLdVar
  loc_978B70: LitVarI4
  loc_978B78: PopAdLdVar
  loc_978B79: ImpAdLdRf MemVar_C3E368
  loc_978B7C: NewIfNullPr rptReapropiacionporProveedor
  loc_978B7F: rptReapropiacionporProveedor.Show from_stack_1, from_stack_2
  loc_978B84: ExitProcHresult
End Sub

Private Sub ResiduosPasivosporProveedor_Click() '978B24
  'Data Table: 5077F4
  loc_978AF4: ImpAdLdRf MemVar_C3E3A4
  loc_978AF7: NewIfNullAd
  loc_978AFA: CastAd
  loc_978AFD: FStAdFuncNoPop
  loc_978B00: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978B05: FFree1Ad var_88
  loc_978B08: LitVar_Missing var_A8
  loc_978B0B: PopAdLdVar
  loc_978B0C: LitVarI4
  loc_978B14: PopAdLdVar
  loc_978B15: ImpAdLdRf MemVar_C3E3A4
  loc_978B18: NewIfNullPr rptResiduosPasivosporProveedor
  loc_978B1B: rptResiduosPasivosporProveedor.Show from_stack_1, from_stack_2
  loc_978B20: ExitProcHresult
End Sub

Private Sub DeudaExigibleporProveedor_Click() '97792C
  'Data Table: 5077F4
  loc_9778FC: ImpAdLdRf MemVar_C3E114
  loc_9778FF: NewIfNullAd
  loc_977902: CastAd
  loc_977905: FStAdFuncNoPop
  loc_977908: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97790D: FFree1Ad var_88
  loc_977910: LitVar_Missing var_A8
  loc_977913: PopAdLdVar
  loc_977914: LitVarI4
  loc_97791C: PopAdLdVar
  loc_97791D: ImpAdLdRf MemVar_C3E114
  loc_977920: NewIfNullPr rptDeudaExigibleporProveedor
  loc_977923: rptDeudaExigibleporProveedor.Show from_stack_1, from_stack_2
  loc_977928: ExitProcHresult
End Sub

Private Sub PlazoRecepcionaOrdenPago_Click() '977F6C
  'Data Table: 5077F4
  loc_977F3C: ImpAdLdRf MemVar_C3E304
  loc_977F3F: NewIfNullAd
  loc_977F42: CastAd
  loc_977F45: FStAdFuncNoPop
  loc_977F48: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977F4D: FFree1Ad var_88
  loc_977F50: LitVar_Missing var_A8
  loc_977F53: PopAdLdVar
  loc_977F54: LitVarI4
  loc_977F5C: PopAdLdVar
  loc_977F5D: ImpAdLdRf MemVar_C3E304
  loc_977F60: NewIfNullPr rptPlazoRecepcionaOrdenPago
  loc_977F63: rptPlazoRecepcionaOrdenPago.Show from_stack_1, from_stack_2
  loc_977F68: ExitProcHresult
End Sub

Private Sub BancosporPartida_Click() '962F64
  'Data Table: 5077F4
  loc_962F48: LitVar_Missing var_A4
  loc_962F4B: PopAdLdVar
  loc_962F4C: LitVarI4
  loc_962F54: PopAdLdVar
  loc_962F55: ImpAdLdRf MemVar_C3E5AC
  loc_962F58: NewIfNullPr dlgInfogov3
  loc_962F5B: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_962F60: ExitProcHresult
  loc_962F61: ImpAdLdPr 300C2
End Sub

Private Sub TipoMoviBanco_Click() '962D50
  'Data Table: 5077F4
  loc_962D34: LitVar_Missing var_A4
  loc_962D37: PopAdLdVar
  loc_962D38: LitVarI4
  loc_962D40: PopAdLdVar
  loc_962D41: ImpAdLdRf MemVar_C3E5AC
  loc_962D44: NewIfNullPr dlgInfogov3
  loc_962D47: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_962D4C: ExitProcHresult
End Sub

Private Sub RecibosdeCheques_Click() '977418
  'Data Table: 5077F4
  loc_9773E8: ImpAdLdRf MemVar_C3DD18
  loc_9773EB: NewIfNullAd
  loc_9773EE: CastAd
  loc_9773F1: FStAdFuncNoPop
  loc_9773F4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9773F9: FFree1Ad var_88
  loc_9773FC: LitVar_Missing var_A8
  loc_9773FF: PopAdLdVar
  loc_977400: LitVarI4
  loc_977408: PopAdLdVar
  loc_977409: ImpAdLdRf MemVar_C3DD18
  loc_97740C: NewIfNullPr rptRecibosdecheques
  loc_97740F: rptRecibosdecheques.Show from_stack_1, from_stack_2
  loc_977414: ExitProcHresult
  loc_977415: GeCy
  loc_977416: SubCy
End Sub

Private Sub ArchivodeOrdendePago_Click() '970F38
  'Data Table: 5077F4
  loc_970F14: ImpAdLdRf MemVar_C3D9D0
  loc_970F17: NewIfNullAd
  loc_970F1A: CastAd
  loc_970F1D: FStAdFunc var_88
  loc_970F20: FLdRfVar var_88
  loc_970F23: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970F28: ILdRf var_88
  loc_970F2B: CastAd
  loc_970F2E: ImpAdStAdFunc MemVar_C3D9D0
  loc_970F32: FFree1Ad var_88
  loc_970F35: ExitProcHresult
End Sub

Private Sub Pagado_Click() '970DD8
  'Data Table: 5077F4
  loc_970DB4: ImpAdLdRf MemVar_C3DD04
  loc_970DB7: NewIfNullAd
  loc_970DBA: CastAd
  loc_970DBD: FStAdFunc var_88
  loc_970DC0: FLdRfVar var_88
  loc_970DC3: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970DC8: ILdRf var_88
  loc_970DCB: CastAd
  loc_970DCE: ImpAdStAdFunc MemVar_C3DD04
  loc_970DD2: FFree1Ad var_88
  loc_970DD5: ExitProcHresult
End Sub

Private Sub MovimientoBancario_Click() '959128
  'Data Table: 5077F4
  loc_95910C: LitVar_Missing var_A4
  loc_95910F: PopAdLdVar
  loc_959110: LitVarI4
  loc_959118: PopAdLdVar
  loc_959119: ImpAdLdRf MemVar_C3E5AC
  loc_95911C: NewIfNullPr dlgInfogov3
  loc_95911F: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_959124: ExitProcHresult
End Sub

Private Sub ReenviarMail_Click() '970EE0
  'Data Table: 5077F4
  loc_970EBC: ImpAdLdRf MemVar_C3DE08
  loc_970EBF: NewIfNullAd
  loc_970EC2: CastAd
  loc_970EC5: FStAdFunc var_88
  loc_970EC8: FLdRfVar var_88
  loc_970ECB: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970ED0: ILdRf var_88
  loc_970ED3: CastAd
  loc_970ED6: ImpAdStAdFunc MemVar_C3DE08
  loc_970EDA: FFree1Ad var_88
  loc_970EDD: ExitProcHresult
End Sub

Private Sub ResumendeBancos_Click() '977ABC
  'Data Table: 5077F4
  loc_977A8C: ImpAdLdRf MemVar_C3E3B8
  loc_977A8F: NewIfNullAd
  loc_977A92: CastAd
  loc_977A95: FStAdFuncNoPop
  loc_977A98: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977A9D: FFree1Ad var_88
  loc_977AA0: LitVar_Missing var_A8
  loc_977AA3: PopAdLdVar
  loc_977AA4: LitVarI4
  loc_977AAC: PopAdLdVar
  loc_977AAD: ImpAdLdRf MemVar_C3E3B8
  loc_977AB0: NewIfNullPr rptResumendeBancos
  loc_977AB3: rptResumendeBancos.Show from_stack_1, from_stack_2
  loc_977AB8: ExitProcHresult
End Sub

Private Sub AjustesdeRecaudacion_Click() '9598E0
  'Data Table: 5077F4
  loc_9598C4: LitVar_Missing var_A4
  loc_9598C7: PopAdLdVar
  loc_9598C8: LitVarI4
  loc_9598D0: PopAdLdVar
  loc_9598D1: ImpAdLdRf MemVar_C3E5AC
  loc_9598D4: NewIfNullPr dlgInfogov3
  loc_9598D7: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_9598DC: ExitProcHresult
  loc_9598DD: FLdPr Me
End Sub

Private Sub OrdenesdePagodeIntendencia_Click() '976C48
  'Data Table: 5077F4
  loc_976C18: ImpAdLdRf MemVar_C3E2C8
  loc_976C1B: NewIfNullAd
  loc_976C1E: CastAd
  loc_976C21: FStAdFuncNoPop
  loc_976C24: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_976C29: FFree1Ad var_88
  loc_976C2C: LitVar_Missing var_A8
  loc_976C2F: PopAdLdVar
  loc_976C30: LitVarI4
  loc_976C38: PopAdLdVar
  loc_976C39: ImpAdLdRf MemVar_C3E2C8
  loc_976C3C: NewIfNullPr rptOrdenesdepagodeintendencia
  loc_976C3F: rptOrdenesdepagodeintendencia.Show from_stack_1, from_stack_2
  loc_976C44: ExitProcHresult
End Sub

Private Sub mnuContracargos_Click() '970120
  'Data Table: 5077F4
  loc_9700FC: ImpAdLdRf MemVar_C3E6C4
  loc_9700FF: NewIfNullAd
  loc_970102: CastAd
  loc_970105: FStAdFunc var_88
  loc_970108: FLdRfVar var_88
  loc_97010B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970110: ILdRf var_88
  loc_970113: CastAd
  loc_970116: ImpAdStAdFunc MemVar_C3E6C4
  loc_97011A: FFree1Ad var_88
  loc_97011D: ExitProcHresult
End Sub

Private Sub TipoCuentaContable_Click() '962B88
  'Data Table: 5077F4
  loc_962B6C: LitVar_Missing var_A4
  loc_962B6F: PopAdLdVar
  loc_962B70: LitVarI4
  loc_962B78: PopAdLdVar
  loc_962B79: ImpAdLdRf MemVar_C3E5AC
  loc_962B7C: NewIfNullPr dlgInfogov3
  loc_962B7F: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_962B84: ExitProcHresult
End Sub

Private Sub UltimoNumerodeCheque_Click() '979A60
  'Data Table: 5077F4
  loc_979A30: ImpAdLdRf MemVar_C3E598
  loc_979A33: NewIfNullAd
  loc_979A36: CastAd
  loc_979A39: FStAdFuncNoPop
  loc_979A3C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979A41: FFree1Ad var_88
  loc_979A44: LitVar_Missing var_A8
  loc_979A47: PopAdLdVar
  loc_979A48: LitVarI4
  loc_979A50: PopAdLdVar
  loc_979A51: ImpAdLdRf MemVar_C3E598
  loc_979A54: NewIfNullPr rptUltimoNumerodeCheque
  loc_979A57: rptUltimoNumerodeCheque.Show from_stack_1, from_stack_2
  loc_979A5C: ExitProcHresult
End Sub

Private Sub ParametrosalCierredeEjercicio_Click() '96F728
  'Data Table: 5077F4
  loc_96F704: ImpAdLdRf MemVar_C3DD2C
  loc_96F707: NewIfNullAd
  loc_96F70A: CastAd
  loc_96F70D: FStAdFunc var_88
  loc_96F710: FLdRfVar var_88
  loc_96F713: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F718: ILdRf var_88
  loc_96F71B: CastAd
  loc_96F71E: ImpAdStAdFunc MemVar_C3DD2C
  loc_96F722: FFree1Ad var_88
  loc_96F725: ExitProcHresult
End Sub

Private Sub OrdenesdePagoEmitidas_Click() '97779C
  'Data Table: 5077F4
  loc_97776C: ImpAdLdRf MemVar_C3E2B4
  loc_97776F: NewIfNullAd
  loc_977772: CastAd
  loc_977775: FStAdFuncNoPop
  loc_977778: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97777D: FFree1Ad var_88
  loc_977780: LitVar_Missing var_A8
  loc_977783: PopAdLdVar
  loc_977784: LitVarI4
  loc_97778C: PopAdLdVar
  loc_97778D: ImpAdLdRf MemVar_C3E2B4
  loc_977790: NewIfNullPr rptOrdenesdepago
  loc_977793: rptOrdenesdepago.Show from_stack_1, from_stack_2
  loc_977798: ExitProcHresult
End Sub

Private Sub PlandeCuentas_Click() '96FA98
  'Data Table: 5077F4
  loc_96FA74: ImpAdLdRf MemVar_C3DD68
  loc_96FA77: NewIfNullAd
  loc_96FA7A: CastAd
  loc_96FA7D: FStAdFunc var_88
  loc_96FA80: FLdRfVar var_88
  loc_96FA83: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96FA88: ILdRf var_88
  loc_96FA8B: CastAd
  loc_96FA8E: ImpAdStAdFunc MemVar_C3DD68
  loc_96FA92: FFree1Ad var_88
  loc_96FA95: ExitProcHresult
End Sub

Private Sub ParametrosalIniciodeEjercicio_Click() '96F258
  'Data Table: 5077F4
  loc_96F234: ImpAdLdRf MemVar_C3DD40
  loc_96F237: NewIfNullAd
  loc_96F23A: CastAd
  loc_96F23D: FStAdFunc var_88
  loc_96F240: FLdRfVar var_88
  loc_96F243: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F248: ILdRf var_88
  loc_96F24B: CastAd
  loc_96F24E: ImpAdStAdFunc MemVar_C3DD40
  loc_96F252: FFree1Ad var_88
  loc_96F255: ExitProcHresult
End Sub

Private Sub RecursosEspeciales_Click() '96FC50
  'Data Table: 5077F4
  loc_96FC2C: ImpAdLdRf MemVar_C3DDE0
  loc_96FC2F: NewIfNullAd
  loc_96FC32: CastAd
  loc_96FC35: FStAdFunc var_88
  loc_96FC38: FLdRfVar var_88
  loc_96FC3B: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96FC40: ILdRf var_88
  loc_96FC43: CastAd
  loc_96FC46: ImpAdStAdFunc MemVar_C3DDE0
  loc_96FC4A: FFree1Ad var_88
  loc_96FC4D: ExitProcHresult
End Sub

Private Sub ParametrosComisionesBancarias_Click() '96FBF8
  'Data Table: 5077F4
  loc_96FBD4: ImpAdLdRf MemVar_C3E6EC
  loc_96FBD7: NewIfNullAd
  loc_96FBDA: CastAd
  loc_96FBDD: FStAdFunc var_88
  loc_96FBE0: FLdRfVar var_88
  loc_96FBE3: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96FBE8: ILdRf var_88
  loc_96FBEB: CastAd
  loc_96FBEE: ImpAdStAdFunc MemVar_C3E6EC
  loc_96FBF2: FFree1Ad var_88
  loc_96FBF5: ExitProcHresult
End Sub

Private Sub ModificacionAsiento_Click() '996374
  'Data Table: 5077F4
  loc_99631C: LitVar_Missing var_A4
  loc_99631F: PopAdLdVar
  loc_996320: LitVar_Missing var_94
  loc_996323: PopAdLdVar
  loc_996324: ImpAdLdRf MemVar_C3DBC4
  loc_996327: NewIfNullPr frmModificacionAsiento
  loc_99632A: frmModificacionAsiento.Show from_stack_1, from_stack_2
  loc_99632F: FLdRfVar var_A8
  loc_996332: FLdPr Me
  loc_996335:  = Me.FontSize
  loc_99633A: FLdPr var_A8
  loc_99633D: LateMemLdVar
  loc_996342: FLdRfVar var_AC
  loc_996345: ImpAdLdRf MemVar_C3DBC4
  loc_996348: NewIfNullPr frmModificacionAsiento
  loc_99634B:  = frmModificacionAsiento.Name
  loc_996350: FLdZeroAd var_AC
  loc_996353: CVarStr var_BC
  loc_996356: HardType
  loc_996357: NeVarBool
  loc_996359: FFree1Ad var_A8
  loc_99635C: FFreeVar var_CC = ""
  loc_996363: BranchF loc_996371
  loc_996366: ImpAdLdRf MemVar_C3DBC4
  loc_996369: NewIfNullPr frmModificacionAsiento
  loc_99636C: frmModificacionAsiento.SetFocus
  loc_996371: ExitProcHresult
End Sub

Private Sub ManualdeCuentas_Click() '96FB48
  'Data Table: 5077F4
  loc_96FB24: ImpAdLdRf MemVar_C3DB9C
  loc_96FB27: NewIfNullAd
  loc_96FB2A: CastAd
  loc_96FB2D: FStAdFunc var_88
  loc_96FB30: FLdRfVar var_88
  loc_96FB33: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96FB38: ILdRf var_88
  loc_96FB3B: CastAd
  loc_96FB3E: ImpAdStAdFunc MemVar_C3DB9C
  loc_96FB42: FFree1Ad var_88
  loc_96FB45: ExitProcHresult
  loc_96FB46: IStDarg arg_7C03
End Sub

Private Sub SubdiariodeIngresos_Click() '977800
  'Data Table: 5077F4
  loc_9777D0: ImpAdLdRf MemVar_C3E520
  loc_9777D3: NewIfNullAd
  loc_9777D6: CastAd
  loc_9777D9: FStAdFuncNoPop
  loc_9777DC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9777E1: FFree1Ad var_88
  loc_9777E4: LitVar_Missing var_A8
  loc_9777E7: PopAdLdVar
  loc_9777E8: LitVarI4
  loc_9777F0: PopAdLdVar
  loc_9777F1: ImpAdLdRf MemVar_C3E520
  loc_9777F4: NewIfNullPr rptSubdiariodeingresos
  loc_9777F7: rptSubdiariodeingresos.Show from_stack_1, from_stack_2
  loc_9777FC: ExitProcHresult
End Sub

Private Sub AsientosManuales_Click() '96F518
  'Data Table: 5077F4
  loc_96F4F4: ImpAdLdRf MemVar_C3D9E4
  loc_96F4F7: NewIfNullAd
  loc_96F4FA: CastAd
  loc_96F4FD: FStAdFunc var_88
  loc_96F500: FLdRfVar var_88
  loc_96F503: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F508: ILdRf var_88
  loc_96F50B: CastAd
  loc_96F50E: ImpAdStAdFunc MemVar_C3D9E4
  loc_96F512: FFree1Ad var_88
  loc_96F515: ExitProcHresult
End Sub

Private Sub SubdiariodeAutorizados_Click() '979484
  'Data Table: 5077F4
  loc_979454: ImpAdLdRf MemVar_C3E4D0
  loc_979457: NewIfNullAd
  loc_97945A: CastAd
  loc_97945D: FStAdFuncNoPop
  loc_979460: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979465: FFree1Ad var_88
  loc_979468: LitVar_Missing var_A8
  loc_97946B: PopAdLdVar
  loc_97946C: LitVarI4
  loc_979474: PopAdLdVar
  loc_979475: ImpAdLdRf MemVar_C3E4D0
  loc_979478: NewIfNullPr rptSubdiariodeautorizados
  loc_97947B: rptSubdiariodeautorizados.Show from_stack_1, from_stack_2
  loc_979480: ExitProcHresult
  loc_979481: CStr2Ansi
End Sub

Private Sub SubdiariodeDevengados_Click() '97922C
  'Data Table: 5077F4
  loc_9791FC: ImpAdLdRf MemVar_C3E4F8
  loc_9791FF: NewIfNullAd
  loc_979202: CastAd
  loc_979205: FStAdFuncNoPop
  loc_979208: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97920D: FFree1Ad var_88
  loc_979210: LitVar_Missing var_A8
  loc_979213: PopAdLdVar
  loc_979214: LitVarI4
  loc_97921C: PopAdLdVar
  loc_97921D: ImpAdLdRf MemVar_C3E4F8
  loc_979220: NewIfNullPr rptSubdiariodedevengados
  loc_979223: rptSubdiariodedevengados.Show from_stack_1, from_stack_2
  loc_979228: ExitProcHresult
  loc_979229: VCallAd Control_ID_ResumendeImputacionesporOrganigrama
End Sub

Private Sub GenerarBalanceMensual_Click() '96F678
  'Data Table: 5077F4
  loc_96F654: ImpAdLdRf MemVar_C3D110
  loc_96F657: NewIfNullAd
  loc_96F65A: CastAd
  loc_96F65D: FStAdFunc var_88
  loc_96F660: FLdRfVar var_88
  loc_96F663: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F668: ILdRf var_88
  loc_96F66B: CastAd
  loc_96F66E: ImpAdStAdFunc MemVar_C3D110
  loc_96F672: FFree1Ad var_88
  loc_96F675: ExitProcHresult
End Sub

Private Sub SubdiariodeDepositos_Click() '9794E8
  'Data Table: 5077F4
  loc_9794B8: ImpAdLdRf MemVar_C3E4E4
  loc_9794BB: NewIfNullAd
  loc_9794BE: CastAd
  loc_9794C1: FStAdFuncNoPop
  loc_9794C4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9794C9: FFree1Ad var_88
  loc_9794CC: LitVar_Missing var_A8
  loc_9794CF: PopAdLdVar
  loc_9794D0: LitVarI4
  loc_9794D8: PopAdLdVar
  loc_9794D9: ImpAdLdRf MemVar_C3E4E4
  loc_9794DC: NewIfNullPr rptSubdiariodedepositos
  loc_9794DF: rptSubdiariodedepositos.Show from_stack_1, from_stack_2
  loc_9794E4: ExitProcHresult
End Sub

Private Sub SubdiariodeRemisiondeCheques_Click() '9791C8
  'Data Table: 5077F4
  loc_979198: ImpAdLdRf MemVar_C3E584
  loc_97919B: NewIfNullAd
  loc_97919E: CastAd
  loc_9791A1: FStAdFuncNoPop
  loc_9791A4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9791A9: FFree1Ad var_88
  loc_9791AC: LitVar_Missing var_A8
  loc_9791AF: PopAdLdVar
  loc_9791B0: LitVarI4
  loc_9791B8: PopAdLdVar
  loc_9791B9: ImpAdLdRf MemVar_C3E584
  loc_9791BC: NewIfNullPr rptSubdiarioderemisiondecheques
  loc_9791BF: rptSubdiarioderemisiondecheques.Show from_stack_1, from_stack_2
  loc_9791C4: ExitProcHresult
  loc_9791C5: FFree1Ad var_A8
End Sub

Private Sub SubdiariodePagodeCheques_Click() '964DAC
  'Data Table: 5077F4
  loc_964D90: LitVar_Missing var_A4
  loc_964D93: PopAdLdVar
  loc_964D94: LitVarI4
  loc_964D9C: PopAdLdVar
  loc_964D9D: ImpAdLdRf MemVar_C3E5AC
  loc_964DA0: NewIfNullPr dlgInfogov3
  loc_964DA3: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_964DA8: ExitProcHresult
End Sub

Private Sub SubdiariodePagodeDebitos_Click() '977DDC
  'Data Table: 5077F4
  loc_977DAC: ImpAdLdRf MemVar_C3E570
  loc_977DAF: NewIfNullAd
  loc_977DB2: CastAd
  loc_977DB5: FStAdFuncNoPop
  loc_977DB8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977DBD: FFree1Ad var_88
  loc_977DC0: LitVar_Missing var_A8
  loc_977DC3: PopAdLdVar
  loc_977DC4: LitVarI4
  loc_977DCC: PopAdLdVar
  loc_977DCD: ImpAdLdRf MemVar_C3E570
  loc_977DD0: NewIfNullPr rptSubdiariodepagodedebitos
  loc_977DD3: rptSubdiariodepagodedebitos.Show from_stack_1, from_stack_2
  loc_977DD8: ExitProcHresult
End Sub

Private Sub SubdiariodeMovimientosBancarios_Click() '97BA68
  'Data Table: 5077F4
  loc_97BA38: ImpAdLdRf MemVar_C3E548
  loc_97BA3B: NewIfNullAd
  loc_97BA3E: CastAd
  loc_97BA41: FStAdFuncNoPop
  loc_97BA44: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97BA49: FFree1Ad var_88
  loc_97BA4C: LitVar_Missing var_A8
  loc_97BA4F: PopAdLdVar
  loc_97BA50: LitVarI4
  loc_97BA58: PopAdLdVar
  loc_97BA59: ImpAdLdRf MemVar_C3E548
  loc_97BA5C: NewIfNullPr rptSubdiariodemovimientosbancarios
  loc_97BA5F: rptSubdiariodemovimientosbancarios.Show from_stack_1, from_stack_2
  loc_97BA64: ExitProcHresult
End Sub

Private Sub SubdiariodeInventario_Click() '977EA4
  'Data Table: 5077F4
  loc_977E74: ImpAdLdRf MemVar_C3E69C
  loc_977E77: NewIfNullAd
  loc_977E7A: CastAd
  loc_977E7D: FStAdFuncNoPop
  loc_977E80: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977E85: FFree1Ad var_88
  loc_977E88: LitVar_Missing var_A8
  loc_977E8B: PopAdLdVar
  loc_977E8C: LitVarI4
  loc_977E94: PopAdLdVar
  loc_977E95: ImpAdLdRf MemVar_C3E69C
  loc_977E98: NewIfNullPr rptSubdiariodeinventario
  loc_977E9B: rptSubdiariodeinventario.Show from_stack_1, from_stack_2
  loc_977EA0: ExitProcHresult
End Sub

Private Sub SubdiariodeAforos_Click() '97A03C
  'Data Table: 5077F4
  loc_97A00C: ImpAdLdRf MemVar_C3E4BC
  loc_97A00F: NewIfNullAd
  loc_97A012: CastAd
  loc_97A015: FStAdFuncNoPop
  loc_97A018: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97A01D: FFree1Ad var_88
  loc_97A020: LitVar_Missing var_A8
  loc_97A023: PopAdLdVar
  loc_97A024: LitVarI4
  loc_97A02C: PopAdLdVar
  loc_97A02D: ImpAdLdRf MemVar_C3E4BC
  loc_97A030: NewIfNullPr rptSubdiariodeaforos
  loc_97A033: rptSubdiariodeaforos.Show from_stack_1, from_stack_2
  loc_97A038: ExitProcHresult
End Sub

Private Sub AdministraciondeBalances_Click() '96FF68
  'Data Table: 5077F4
  loc_96FF44: ImpAdLdRf MemVar_C3D980
  loc_96FF47: NewIfNullAd
  loc_96FF4A: CastAd
  loc_96FF4D: FStAdFunc var_88
  loc_96FF50: FLdRfVar var_88
  loc_96FF53: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96FF58: ILdRf var_88
  loc_96FF5B: CastAd
  loc_96FF5E: ImpAdStAdFunc MemVar_C3D980
  loc_96FF62: FFree1Ad var_88
  loc_96FF65: ExitProcHresult
End Sub

Private Sub ListadodeDebitos_Click() '97986C
  'Data Table: 5077F4
  loc_97983C: ImpAdLdRf MemVar_C3E1D8
  loc_97983F: NewIfNullAd
  loc_979842: CastAd
  loc_979845: FStAdFuncNoPop
  loc_979848: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97984D: FFree1Ad var_88
  loc_979850: LitVar_Missing var_A8
  loc_979853: PopAdLdVar
  loc_979854: LitVarI4
  loc_97985C: PopAdLdVar
  loc_97985D: ImpAdLdRf MemVar_C3E1D8
  loc_979860: NewIfNullPr rptListadodedebitos
  loc_979863: rptListadodedebitos.Show from_stack_1, from_stack_2
  loc_979868: ExitProcHresult
  loc_979869: CBoolVarNull
End Sub

Private Sub LibroDiario_Click() '965B08
  'Data Table: 5077F4
  loc_965AEC: LitVar_Missing var_A4
  loc_965AEF: PopAdLdVar
  loc_965AF0: LitVarI4
  loc_965AF8: PopAdLdVar
  loc_965AF9: ImpAdLdRf MemVar_C3E5AC
  loc_965AFC: NewIfNullPr dlgInfogov3
  loc_965AFF: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_965B04: ExitProcHresult
  loc_965B05: PopAdLdVar
  loc_965B06: ImpAdLdRf MemVar_0
End Sub

Private Sub MayorGeneral_Click() '9596CC
  'Data Table: 5077F4
  loc_9596B0: LitVar_Missing var_A4
  loc_9596B3: PopAdLdVar
  loc_9596B4: LitVarI4
  loc_9596BC: PopAdLdVar
  loc_9596BD: ImpAdLdRf MemVar_C3E5AC
  loc_9596C0: NewIfNullPr dlgInfogov3
  loc_9596C3: dlgInfogov3.Show from_stack_1, from_stack_2
  loc_9596C8: ExitProcHresult
End Sub

Private Sub ControldeCaja_Click() '978034
  'Data Table: 5077F4
  loc_978004: ImpAdLdRf MemVar_C3E09C
  loc_978007: NewIfNullAd
  loc_97800A: CastAd
  loc_97800D: FStAdFuncNoPop
  loc_978010: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978015: FFree1Ad var_88
  loc_978018: LitVar_Missing var_A8
  loc_97801B: PopAdLdVar
  loc_97801C: LitVarI4
  loc_978024: PopAdLdVar
  loc_978025: ImpAdLdRf MemVar_C3E09C
  loc_978028: NewIfNullPr rptControldeCaja
  loc_97802B: rptControldeCaja.Show from_stack_1, from_stack_2
  loc_978030: ExitProcHresult
End Sub

Private Sub ControlChequesSinRemitir_Click() '97AA64
  'Data Table: 5077F4
  loc_97AA34: ImpAdLdRf MemVar_C3E088
  loc_97AA37: NewIfNullAd
  loc_97AA3A: CastAd
  loc_97AA3D: FStAdFuncNoPop
  loc_97AA40: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97AA45: FFree1Ad var_88
  loc_97AA48: LitVar_Missing var_A8
  loc_97AA4B: PopAdLdVar
  loc_97AA4C: LitVarI4
  loc_97AA54: PopAdLdVar
  loc_97AA55: ImpAdLdRf MemVar_C3E088
  loc_97AA58: NewIfNullPr rptControlChequesSinRemitir
  loc_97AA5B: rptControlChequesSinRemitir.Show from_stack_1, from_stack_2
  loc_97AA60: ExitProcHresult
End Sub

Private Sub ControldeCargosalTesorero_Click() '97B108
  'Data Table: 5077F4
  loc_97B0D8: ImpAdLdRf MemVar_C3E0B0
  loc_97B0DB: NewIfNullAd
  loc_97B0DE: CastAd
  loc_97B0E1: FStAdFuncNoPop
  loc_97B0E4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97B0E9: FFree1Ad var_88
  loc_97B0EC: LitVar_Missing var_A8
  loc_97B0EF: PopAdLdVar
  loc_97B0F0: LitVarI4
  loc_97B0F8: PopAdLdVar
  loc_97B0F9: ImpAdLdRf MemVar_C3E0B0
  loc_97B0FC: NewIfNullPr rptControldeCargosalTesorero
  loc_97B0FF: rptControldeCargosalTesorero.Show from_stack_1, from_stack_2
  loc_97B104: ExitProcHresult
End Sub

Private Sub ControlTransferenciasalTesorero_Click() '97B298
  'Data Table: 5077F4
  loc_97B268: ImpAdLdRf MemVar_C3E714
  loc_97B26B: NewIfNullAd
  loc_97B26E: CastAd
  loc_97B271: FStAdFuncNoPop
  loc_97B274: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97B279: FFree1Ad var_88
  loc_97B27C: LitVar_Missing var_A8
  loc_97B27F: PopAdLdVar
  loc_97B280: LitVarI4
  loc_97B288: PopAdLdVar
  loc_97B289: ImpAdLdRf MemVar_C3E714
  loc_97B28C: NewIfNullPr rptControlTransferenciasalTesorero
  loc_97B28F: rptControlTransferenciasalTesorero.Show from_stack_1, from_stack_2
  loc_97B294: ExitProcHresult
End Sub

Private Sub LibroBancoMayorGeneral_Click() '978610
  'Data Table: 5077F4
  loc_9785E0: ImpAdLdRf MemVar_C3E150
  loc_9785E3: NewIfNullAd
  loc_9785E6: CastAd
  loc_9785E9: FStAdFuncNoPop
  loc_9785EC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9785F1: FFree1Ad var_88
  loc_9785F4: LitVar_Missing var_A8
  loc_9785F7: PopAdLdVar
  loc_9785F8: LitVarI4
  loc_978600: PopAdLdVar
  loc_978601: ImpAdLdRf MemVar_C3E150
  loc_978604: NewIfNullPr rptLibroBancoMayorGeneral
  loc_978607: rptLibroBancoMayorGeneral.Show from_stack_1, from_stack_2
  loc_97860C: ExitProcHresult
End Sub

Private Sub ProveedoresVarioseImputaciones_Click() '978674
  'Data Table: 5077F4
  loc_978644: ImpAdLdRf MemVar_C3E340
  loc_978647: NewIfNullAd
  loc_97864A: CastAd
  loc_97864D: FStAdFuncNoPop
  loc_978650: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978655: FFree1Ad var_88
  loc_978658: LitVar_Missing var_A8
  loc_97865B: PopAdLdVar
  loc_97865C: LitVarI4
  loc_978664: PopAdLdVar
  loc_978665: ImpAdLdRf MemVar_C3E340
  loc_978668: NewIfNullPr rptProveedoresVarioseImputaciones
  loc_97866B: rptProveedoresVarioseImputaciones.Show from_stack_1, from_stack_2
  loc_978670: ExitProcHresult
End Sub

Private Sub ConsultaPorExpediente_Click() '96F308
  'Data Table: 5077F4
  loc_96F2E4: ImpAdLdRf MemVar_C3E5C0
  loc_96F2E7: NewIfNullAd
  loc_96F2EA: CastAd
  loc_96F2ED: FStAdFunc var_88
  loc_96F2F0: FLdRfVar var_88
  loc_96F2F3: ImpAdCallFPR4 Proc_261_31_971890()
  loc_96F2F8: ILdRf var_88
  loc_96F2FB: CastAd
  loc_96F2FE: ImpAdStAdFunc MemVar_C3E5C0
  loc_96F302: FFree1Ad var_88
  loc_96F305: ExitProcHresult
End Sub

Private Sub RecepcióndeOrdendeCompraABM_Click() '970178
  'Data Table: 5077F4
  loc_970154: ImpAdLdRf MemVar_C3DDCC
  loc_970157: NewIfNullAd
  loc_97015A: CastAd
  loc_97015D: FStAdFunc var_88
  loc_970160: FLdRfVar var_88
  loc_970163: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970168: ILdRf var_88
  loc_97016B: CastAd
  loc_97016E: ImpAdStAdFunc MemVar_C3DDCC
  loc_970172: FFree1Ad var_88
  loc_970175: ExitProcHresult
  loc_970176: AryLdRf
End Sub

Private Sub VersionTmr_Timer() '940668
  'Data Table: 5077F4
  loc_940660: ImpAdCallFPR4 Proc_261_51_A831CC()
  loc_940665: ExitProcHresult
End Sub

Private Sub ListadodeCotizaciones_Click() '978D18
  'Data Table: 5077F4
  loc_978CE8: ImpAdLdRf MemVar_C3E1B4
  loc_978CEB: NewIfNullAd
  loc_978CEE: CastAd
  loc_978CF1: FStAdFuncNoPop
  loc_978CF4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978CF9: FFree1Ad var_88
  loc_978CFC: LitVar_Missing var_A8
  loc_978CFF: PopAdLdVar
  loc_978D00: LitVarI4
  loc_978D08: PopAdLdVar
  loc_978D09: ImpAdLdRf MemVar_C3E1B4
  loc_978D0C: NewIfNullPr rptListadodeCotizaciones
  loc_978D0F: rptListadodeCotizaciones.Show from_stack_1, from_stack_2
  loc_978D14: ExitProcHresult
  loc_978D15: FLdZeroAd arg_1E
End Sub

Private Sub ListadodeRecepciondeOrdendeCompra_Click() '97B680
  'Data Table: 5077F4
  loc_97B650: ImpAdLdRf MemVar_C3DBEC
  loc_97B653: NewIfNullAd
  loc_97B656: CastAd
  loc_97B659: FStAdFuncNoPop
  loc_97B65C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_97B661: FFree1Ad var_88
  loc_97B664: LitVar_Missing var_A8
  loc_97B667: PopAdLdVar
  loc_97B668: LitVarI4
  loc_97B670: PopAdLdVar
  loc_97B671: ImpAdLdRf MemVar_C3DBEC
  loc_97B674: NewIfNullPr rptListadodeRecepciondeOrdendeCompra
  loc_97B677: rptListadodeRecepciondeOrdendeCompra.Show from_stack_1, from_stack_2
  loc_97B67C: ExitProcHresult
End Sub

Private Sub ConstanciadeRecepcion_Click() '977224
  'Data Table: 5077F4
  loc_9771F4: ImpAdLdRf MemVar_C3DC00
  loc_9771F7: NewIfNullAd
  loc_9771FA: CastAd
  loc_9771FD: FStAdFuncNoPop
  loc_977200: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977205: FFree1Ad var_88
  loc_977208: LitVar_Missing var_A8
  loc_97720B: PopAdLdVar
  loc_97720C: LitVarI4
  loc_977214: PopAdLdVar
  loc_977215: ImpAdLdRf MemVar_C3DC00
  loc_977218: NewIfNullPr rptConstanciadeRecepcion
  loc_97721B: rptConstanciadeRecepcion.Show from_stack_1, from_stack_2
  loc_977220: ExitProcHresult
  loc_977221: MemLdFPR8 global_36
End Sub

Private Sub PlazosLicitacion_Click() '978480
  'Data Table: 5077F4
  loc_978450: ImpAdLdRf MemVar_C3E318
  loc_978453: NewIfNullAd
  loc_978456: CastAd
  loc_978459: FStAdFuncNoPop
  loc_97845C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978461: FFree1Ad var_88
  loc_978464: LitVar_Missing var_A8
  loc_978467: PopAdLdVar
  loc_978468: LitVarI4
  loc_978470: PopAdLdVar
  loc_978471: ImpAdLdRf MemVar_C3E318
  loc_978474: NewIfNullPr rptPlazosLicitacion
  loc_978477: rptPlazosLicitacion.Show from_stack_1, from_stack_2
  loc_97847C: ExitProcHresult
End Sub

Private Sub PlazoNotaPedidoaOrdenCompra_Click() '9782F0
  'Data Table: 5077F4
  loc_9782C0: ImpAdLdRf MemVar_C3E2F0
  loc_9782C3: NewIfNullAd
  loc_9782C6: CastAd
  loc_9782C9: FStAdFuncNoPop
  loc_9782CC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9782D1: FFree1Ad var_88
  loc_9782D4: LitVar_Missing var_A8
  loc_9782D7: PopAdLdVar
  loc_9782D8: LitVarI4
  loc_9782E0: PopAdLdVar
  loc_9782E1: ImpAdLdRf MemVar_C3E2F0
  loc_9782E4: NewIfNullPr rptPlazoNotaPedidoaOrdenCompra
  loc_9782E7: rptPlazoNotaPedidoaOrdenCompra.Show from_stack_1, from_stack_2
  loc_9782EC: ExitProcHresult
  loc_9782ED: MemLdFPR4 global_862
End Sub

Private Sub Balancedesumasysaldos_Click() '978804
  'Data Table: 5077F4
  loc_9787D4: ImpAdLdRf MemVar_C3E038
  loc_9787D7: NewIfNullAd
  loc_9787DA: CastAd
  loc_9787DD: FStAdFuncNoPop
  loc_9787E0: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9787E5: FFree1Ad var_88
  loc_9787E8: LitVar_Missing var_A8
  loc_9787EB: PopAdLdVar
  loc_9787EC: LitVarI4
  loc_9787F4: PopAdLdVar
  loc_9787F5: ImpAdLdRf MemVar_C3E038
  loc_9787F8: NewIfNullPr rptBalancedesumasysaldos
  loc_9787FB: rptBalancedesumasysaldos.Show from_stack_1, from_stack_2
  loc_978800: ExitProcHresult
End Sub

Private Sub EjecucionPresupuestariadelosRecursos_Click() '9789F8
  'Data Table: 5077F4
  loc_9789C8: ImpAdLdRf MemVar_C3DEBC
  loc_9789CB: NewIfNullAd
  loc_9789CE: CastAd
  loc_9789D1: FStAdFuncNoPop
  loc_9789D4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9789D9: FFree1Ad var_88
  loc_9789DC: LitVar_Missing var_A8
  loc_9789DF: PopAdLdVar
  loc_9789E0: LitVarI4
  loc_9789E8: PopAdLdVar
  loc_9789E9: ImpAdLdRf MemVar_C3DEBC
  loc_9789EC: NewIfNullPr rptA2988AnexoIV
  loc_9789EF: rptA2988AnexoIV.Show from_stack_1, from_stack_2
  loc_9789F4: ExitProcHresult
End Sub

Private Sub PasarNPalSiguienteEjercicio_Click() '9A6D94
  'Data Table: 5077F4
  loc_9A6D0C: LitI2_Byte 0
  loc_9A6D0E: PopTmpLdAd2 var_94
  loc_9A6D11: LitI2_Byte &HFF
  loc_9A6D13: PopTmpLdAd2 var_92
  loc_9A6D16: LitStr "¿Pasa la Nota de Pedido al Ejercicio "
  loc_9A6D19: ImpAdLdI2 MemVar_C3D064
  loc_9A6D1C: LitI2_Byte 1
  loc_9A6D1E: AddI2
  loc_9A6D1F: CStrUI1
  loc_9A6D21: FStStrNoPop var_88
  loc_9A6D24: ConcatStr
  loc_9A6D25: FStStrNoPop var_8C
  loc_9A6D28: LitStr "?"
  loc_9A6D2B: ConcatStr
  loc_9A6D2C: FStStrNoPop var_90
  loc_9A6D2F: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_9A6D34: CI4UI1
  loc_9A6D35: LitI4 6
  loc_9A6D3A: EqI4
  loc_9A6D3B: FFreeStr var_88 = "": var_8C = ""
  loc_9A6D44: BranchF loc_9A6D90
  loc_9A6D47: FLdRfVar var_88
  loc_9A6D4A: FLdRfVar var_98
  loc_9A6D4D: NewIfNullPr clsnotapedido
  loc_9A6D50: from_stack_1v = clsnotapedido.PasarNPalEjercicioSiguiente()
  loc_9A6D55: ILdRf var_88
  loc_9A6D58: FLdPr Me
  loc_9A6D5B: MemStStrCopy
  loc_9A6D5F: FFree1Str var_88
  loc_9A6D62: FLdPr Me
  loc_9A6D65: MemLdStr global_68
  loc_9A6D68: LitStr vbNullString
  loc_9A6D6B: NeStr
  loc_9A6D6D: BranchF loc_9A6D83
  loc_9A6D70: LitI4 0
  loc_9A6D75: FLdPr Me
  loc_9A6D78: MemLdStr global_68
  loc_9A6D7B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9A6D80: Branch loc_9A6D90
  loc_9A6D83: LitI4 0
  loc_9A6D88: LitStr "NO se paso ninguna Nota de Pedido."
  loc_9A6D8B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9A6D90: ExitProcHresult
  loc_9A6D91: FLdPr arg_F00
End Sub

Private Sub A2988AnexoXIV_mensual_Click() '978C50
  'Data Table: 5077F4
  loc_978C20: ImpAdLdRf MemVar_C3DF70
  loc_978C23: NewIfNullAd
  loc_978C26: CastAd
  loc_978C29: FStAdFuncNoPop
  loc_978C2C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978C31: FFree1Ad var_88
  loc_978C34: LitVar_Missing var_A8
  loc_978C37: PopAdLdVar
  loc_978C38: LitVarI4
  loc_978C40: PopAdLdVar
  loc_978C41: ImpAdLdRf MemVar_C3DF70
  loc_978C44: NewIfNullPr rptA2988AnexoXIV_mensual
  loc_978C47: rptA2988AnexoXIV_mensual.Show from_stack_1, from_stack_2
  loc_978C4C: ExitProcHresult
End Sub

Private Sub BalancedeSumasySaldosAnual_Click() '978EA8
  'Data Table: 5077F4
  loc_978E78: ImpAdLdRf MemVar_C3E728
  loc_978E7B: NewIfNullAd
  loc_978E7E: CastAd
  loc_978E81: FStAdFuncNoPop
  loc_978E84: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_978E89: FFree1Ad var_88
  loc_978E8C: LitVar_Missing var_A8
  loc_978E8F: PopAdLdVar
  loc_978E90: LitVarI4
  loc_978E98: PopAdLdVar
  loc_978E99: ImpAdLdRf MemVar_C3E728
  loc_978E9C: NewIfNullPr rptBalancedesumasysaldosAnual
  loc_978E9F: rptBalancedesumasysaldosAnual.Show from_stack_1, from_stack_2
  loc_978EA4: ExitProcHresult
End Sub

Private Sub A2988AnexoVIII_Click() '979100
  'Data Table: 5077F4
  loc_9790D0: ImpAdLdRf MemVar_C3DF20
  loc_9790D3: NewIfNullAd
  loc_9790D6: CastAd
  loc_9790D9: FStAdFuncNoPop
  loc_9790DC: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_9790E1: FFree1Ad var_88
  loc_9790E4: LitVar_Missing var_A8
  loc_9790E7: PopAdLdVar
  loc_9790E8: LitVarI4
  loc_9790F0: PopAdLdVar
  loc_9790F1: ImpAdLdRf MemVar_C3DF20
  loc_9790F4: NewIfNullPr rptA2988AnexoVIII
  loc_9790F7: rptA2988AnexoVIII.Show from_stack_1, from_stack_2
  loc_9790FC: ExitProcHresult
End Sub

Private Sub A3949AnexoI_Click() '979998
  'Data Table: 5077F4
  loc_979968: ImpAdLdRf MemVar_C3DFAC
  loc_97996B: NewIfNullAd
  loc_97996E: CastAd
  loc_979971: FStAdFuncNoPop
  loc_979974: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979979: FFree1Ad var_88
  loc_97997C: LitVar_Missing var_A8
  loc_97997F: PopAdLdVar
  loc_979980: LitVarI4
  loc_979988: PopAdLdVar
  loc_979989: ImpAdLdRf MemVar_C3DFAC
  loc_97998C: NewIfNullPr rptA3949AnexoI
  loc_97998F: rptA3949AnexoI.Show from_stack_1, from_stack_2
  loc_979994: ExitProcHresult
End Sub

Private Sub A3949AnexoIIBis_Click() '979CB8
  'Data Table: 5077F4
  loc_979C88: ImpAdLdRf MemVar_C3DFD4
  loc_979C8B: NewIfNullAd
  loc_979C8E: CastAd
  loc_979C91: FStAdFuncNoPop
  loc_979C94: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979C99: FFree1Ad var_88
  loc_979C9C: LitVar_Missing var_A8
  loc_979C9F: PopAdLdVar
  loc_979CA0: LitVarI4
  loc_979CA8: PopAdLdVar
  loc_979CA9: ImpAdLdRf MemVar_C3DFD4
  loc_979CAC: NewIfNullPr rptA3949AnexoIIBis
  loc_979CAF: rptA3949AnexoIIBis.Show from_stack_1, from_stack_2
  loc_979CB4: ExitProcHresult
End Sub

Private Sub A3949AnexoIII_Click() '979D1C
  'Data Table: 5077F4
  loc_979CEC: ImpAdLdRf MemVar_C3DFE8
  loc_979CEF: NewIfNullAd
  loc_979CF2: CastAd
  loc_979CF5: FStAdFuncNoPop
  loc_979CF8: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979CFD: FFree1Ad var_88
  loc_979D00: LitVar_Missing var_A8
  loc_979D03: PopAdLdVar
  loc_979D04: LitVarI4
  loc_979D0C: PopAdLdVar
  loc_979D0D: ImpAdLdRf MemVar_C3DFE8
  loc_979D10: NewIfNullPr rptA3949AnexoIII
  loc_979D13: rptA3949AnexoIII.Show from_stack_1, from_stack_2
  loc_979D18: ExitProcHresult
End Sub

Public Sub ActualizaMenuPeriodos() 'A16390
  'Data Table: 5077F4
  loc_A1621C: LitI2_Byte &HFF
  loc_A1621E: FStI2 var_86
  loc_A16221: FLdRfVar var_8C
  loc_A16224: NewIfNullAd
  loc_A16227: FStAd var_90 
  loc_A1622B: LitStr "SELECT PeriInfo FROM infogov.periodo ORDER BY PeriInfo DESC;"
  loc_A1622E: FLdPr var_90
  loc_A16231: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A16236: FLdPr var_90
  loc_A16239: Call clsperiodo.MoveFirst()
  loc_A1623E: FLdRfVar var_92
  loc_A16241: FLdPr var_90
  loc_A16244: from_stack_1 = clsperiodo.EOF
  loc_A16249: FLdI2 var_92
  loc_A1624C: NotI4
  loc_A1624D: BranchF loc_A16389
  loc_A16250: FLdI2 var_86
  loc_A16253: LitI2_Byte 1
  loc_A16255: AddI2
  loc_A16256: FStI2 var_86
  loc_A16259: FLdI2 var_86
  loc_A1625C: FLdRfVar var_92
  loc_A1625F: FLdPr Me
  loc_A16262: VCallAd Control_ID_Periodos
  loc_A16265: FStAdFunc var_98
  loc_A16268: FLdPr var_98
  loc_A1626B:  = Me.Name
  loc_A16270: FLdI2 var_92
  loc_A16273: GtI2
  loc_A16274: FFree1Ad var_98
  loc_A16277: BranchF loc_A162A9
  loc_A1627A: FLdRfVar var_9C
  loc_A1627D: FLdI2 var_86
  loc_A16280: FLdPr Me
  loc_A16283: VCallAd Control_ID_Periodos
  loc_A16286: FStAdFunc var_98
  loc_A16289: FLdPr var_98
  loc_A1628C: Set from_stack_2 = Me(from_stack_1)
  loc_A16291: FLdZeroAd var_9C
  loc_A16294: FStAdFuncNoPop
  loc_A16297: ImpAdLdRf MemVar_C44F9C
  loc_A1629A: NewIfNullPr Me
  loc_A1629D: Me.Global.Load from_stack_1
  loc_A162A2: FFreeAd var_98 = ""
  loc_A162A9: FLdRfVar var_C8
  loc_A162AC: FLdRfVar var_A0
  loc_A162AF: LitVarStr var_B0, "PeriInfo"
  loc_A162B4: PopAdLdVar
  loc_A162B5: FLdRfVar var_9C
  loc_A162B8: FLdRfVar var_98
  loc_A162BB: FLdPr var_90
  loc_A162BE: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A162C3: FLdPr var_98
  loc_A162C6:  = Me.Fields
  loc_A162CB: FLdPr var_9C
  loc_A162CE: from_stack_2 = Me.Item(from_stack_1)
  loc_A162D3: FLdPr var_A0
  loc_A162D6:  = Me.Value
  loc_A162DB: FLdRfVar var_C8
  loc_A162DE: CStrVarTmp
  loc_A162DF: FStStrNoPop var_CC
  loc_A162E2: FLdRfVar var_B8
  loc_A162E5: FLdI2 var_86
  loc_A162E8: FLdPr Me
  loc_A162EB: VCallAd Control_ID_Periodos
  loc_A162EE: FStAdFunc var_B4
  loc_A162F1: FLdPr var_B4
  loc_A162F4: Set from_stack_2 = Me(from_stack_1)
  loc_A162F9: FLdPr var_B8
  loc_A162FC: Me.Caption = from_stack_1
  loc_A16301: FFree1Str var_CC
  loc_A16304: FFreeAd var_98 = "": var_9C = "": var_B4 = "": var_A0 = ""
  loc_A16311: FFree1Var var_C8 = ""
  loc_A16314: FLdRfVar var_C8
  loc_A16317: FLdRfVar var_A0
  loc_A1631A: LitVarStr var_B0, "PeriInfo"
  loc_A1631F: PopAdLdVar
  loc_A16320: FLdRfVar var_9C
  loc_A16323: FLdRfVar var_98
  loc_A16326: FLdPr var_90
  loc_A16329: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1632E: FLdPr var_98
  loc_A16331:  = Me.Fields
  loc_A16336: FLdPr var_9C
  loc_A16339: from_stack_2 = Me.Item(from_stack_1)
  loc_A1633E: FLdPr var_A0
  loc_A16341:  = Me.Value
  loc_A16346: FLdRfVar var_C8
  loc_A16349: FnCIntVar
  loc_A1634B: ImpAdLdI2 MemVar_C3D064
  loc_A1634E: EqI2
  loc_A1634F: FLdRfVar var_B8
  loc_A16352: FLdI2 var_86
  loc_A16355: FLdPr Me
  loc_A16358: VCallAd Control_ID_Periodos
  loc_A1635B: FStAdFunc var_B4
  loc_A1635E: FLdPr var_B4
  loc_A16361: Set from_stack_2 = Me(from_stack_1)
  loc_A16366: FLdPr var_B8
  loc_A16369: Me.Checked = from_stack_1b
  loc_A1636E: FFreeAd var_98 = "": var_9C = "": var_A0 = "": var_B4 = ""
  loc_A1637B: FFree1Var var_C8 = ""
  loc_A1637E: FLdPr var_90
  loc_A16381: Call clsperiodo.MoveSiguiente()
  loc_A16386: Branch loc_A1623E
  loc_A16389: LitNothing
  loc_A1638B: FStAd var_90 
  loc_A1638F: ExitProcHresult
End Sub

Private Function Proc_255_166_9E874C() '9E874C
  'Data Table: 5077F4
  loc_9E863C: LitI2_Byte &HFF
  loc_9E863E: FStI2 var_8A
  loc_9E8641: FLdRfVar var_90
  loc_9E8644: ImpAdLdRf MemVar_C44F9C
  loc_9E8647: NewIfNullPr Me
  loc_9E864A:  = Me.Global.Printers
  loc_9E864F: FLdZeroAd var_90
  loc_9E8652: FStAdFuncNoPop
  loc_9E8655: FLdRfVar var_88
  loc_9E8658: ForEachCollObj
  loc_9E8660: FLdI2 var_8A
  loc_9E8663: LitI2_Byte 1
  loc_9E8665: AddI2
  loc_9E8666: FStI2 var_8A
  loc_9E8669: FLdI2 var_8A
  loc_9E866C: LitI2_Byte 0
  loc_9E866E: GtI2
  loc_9E866F: BranchF loc_9E86A1
  loc_9E8672: FLdRfVar var_9C
  loc_9E8675: FLdI2 var_8A
  loc_9E8678: FLdPr Me
  loc_9E867B: VCallAd Control_ID_Impresoras
  loc_9E867E: FStAdFunc var_90
  loc_9E8681: FLdPr var_90
  loc_9E8684: Set from_stack_2 = Me(from_stack_1)
  loc_9E8689: FLdZeroAd var_9C
  loc_9E868C: FStAdFuncNoPop
  loc_9E868F: ImpAdLdRf MemVar_C44F9C
  loc_9E8692: NewIfNullPr Me
  loc_9E8695: Me.Global.Load from_stack_1
  loc_9E869A: FFreeAd var_90 = ""
  loc_9E86A1: FLdPr var_88
  loc_9E86A4: LateIdLdVar var_B0 DispID_28 1
  loc_9E86AB: CStrVarTmp
  loc_9E86AC: FStStrNoPop var_B4
  loc_9E86AF: FLdRfVar var_9C
  loc_9E86B2: FLdI2 var_8A
  loc_9E86B5: FLdPr Me
  loc_9E86B8: VCallAd Control_ID_Impresoras
  loc_9E86BB: FStAdFunc var_90
  loc_9E86BE: FLdPr var_90
  loc_9E86C1: Set from_stack_2 = Me(from_stack_1)
  loc_9E86C6: FLdPr var_9C
  loc_9E86C9: Me.Caption = from_stack_1
  loc_9E86CE: FFree1Str var_B4
  loc_9E86D1: FFreeAd var_90 = ""
  loc_9E86D8: FFree1Var var_B0 = ""
  loc_9E86DB: FLdRfVar var_90
  loc_9E86DE: ImpAdLdRf MemVar_C44F9C
  loc_9E86E1: NewIfNullPr Me
  loc_9E86E4:  = Me.Global.Printer
  loc_9E86E9: FLdPr var_90
  loc_9E86EC: LateIdLdVar var_B0 DispID_28 1
  loc_9E86F3: CStrVarTmp
  loc_9E86F4: FStStrNoPop var_B4
  loc_9E86F7: FLdPr var_88
  loc_9E86FA: LateIdLdVar var_C4 DispID_28 1
  loc_9E8701: CStrVarTmp
  loc_9E8702: FStStrNoPop var_C8
  loc_9E8705: EqStr
  loc_9E8707: FLdRfVar var_A0
  loc_9E870A: FLdI2 var_8A
  loc_9E870D: FLdPr Me
  loc_9E8710: VCallAd Control_ID_Impresoras
  loc_9E8713: FStAdFunc var_9C
  loc_9E8716: FLdPr var_9C
  loc_9E8719: Set from_stack_2 = Me(from_stack_1)
  loc_9E871E: FLdPr var_A0
  loc_9E8721: Me.Checked = from_stack_1b
  loc_9E8726: FFreeStr var_B4 = ""
  loc_9E872D: FFreeAd var_90 = "": var_9C = ""
  loc_9E8736: FFreeVar var_B0 = ""
  loc_9E873D: FLdRfVar var_88
  loc_9E8740: NextEachCollObj
  loc_9E8748: ExitProcHresult
End Function

Private Function Proc_255_167_A07E48() 'A07E48
  'Data Table: 5077F4
  loc_A07CEC: FLdRfVar var_94
  loc_A07CEF: FLdRfVar var_90
  loc_A07CF2: ImpAdLdRf MemVar_C44F9C
  loc_A07CF5: NewIfNullPr Me
  loc_A07CF8:  = Me.Global.Screen
  loc_A07CFD: FLdPr var_90
  loc_A07D00:  = Screen.TwipsPerPixelX
  loc_A07D05: FLdRfVar var_8C
  loc_A07D08: FLdRfVar var_88
  loc_A07D0B: ImpAdLdRf MemVar_C44F9C
  loc_A07D0E: NewIfNullPr Me
  loc_A07D11:  = Me.Global.Screen
  loc_A07D16: FLdPr var_88
  loc_A07D19:  = Screen.Width
  loc_A07D1E: FLdFPR4 var_8C
  loc_A07D21: FLdFPR4 var_94
  loc_A07D24: DivR8
  loc_A07D25: FLdPr Me
  loc_A07D28: MemStFPR4 global_56
  loc_A07D2B: FFreeAd var_88 = ""
  loc_A07D32: FLdRfVar var_94
  loc_A07D35: FLdRfVar var_90
  loc_A07D38: ImpAdLdRf MemVar_C44F9C
  loc_A07D3B: NewIfNullPr Me
  loc_A07D3E:  = Me.Global.Screen
  loc_A07D43: FLdPr var_90
  loc_A07D46:  = Screen.TwipsPerPixelY
  loc_A07D4B: FLdRfVar var_8C
  loc_A07D4E: FLdRfVar var_88
  loc_A07D51: ImpAdLdRf MemVar_C44F9C
  loc_A07D54: NewIfNullPr Me
  loc_A07D57:  = Me.Global.Screen
  loc_A07D5C: FLdPr var_88
  loc_A07D5F:  = Screen.Height
  loc_A07D64: FLdFPR4 var_8C
  loc_A07D67: FLdFPR4 var_94
  loc_A07D6A: DivR8
  loc_A07D6B: FLdPr Me
  loc_A07D6E: MemStFPR4 global_60
  loc_A07D71: FFreeAd var_88 = ""
  loc_A07D78: FLdPr Me
  loc_A07D7B: MemLdFPR4 global_56
  loc_A07D7E: FLdPr Me
  loc_A07D81: MemLdFPR4 global_60
  loc_A07D84: MulR8
  loc_A07D85: FnCDblR8
  loc_A07D87: LitI4 &HC0000
  loc_A07D8C: CR8I4
  loc_A07D8D: LtR8
  loc_A07D8E: BranchF loc_A07DF1
  loc_A07D91: LitVar_Missing var_108
  loc_A07D94: LitVar_Missing var_E8
  loc_A07D97: LitVarStr var_B8, "InfoGov"
  loc_A07D9C: FStVarCopyObj var_C8
  loc_A07D9F: FLdRfVar var_C8
  loc_A07DA2: LitI4 4
  loc_A07DA7: LitStr "La resolución de su pantalla no es adecuada para la visualización del sistema,"
  loc_A07DAA: LitStr vbCrLf
  loc_A07DAD: ConcatStr
  loc_A07DAE: FStStrNoPop var_98
  loc_A07DB1: LitStr "¿desea cambiarla ahora?"
  loc_A07DB4: ConcatStr
  loc_A07DB5: CVarStr var_A8
  loc_A07DB8: ImpAdCallI2 MsgBox(, , , , )
  loc_A07DBD: LitI4 6
  loc_A07DC2: EqI4
  loc_A07DC3: FFree1Str var_98
  loc_A07DC6: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_A07DD1: BranchF loc_A07DF1
  loc_A07DD4: LitI2 768
  loc_A07DD7: CR8I2
  loc_A07DD8: PopTmpLdAdFPR4
  loc_A07DDC: LitI2 1024
  loc_A07DDF: CR8I2
  loc_A07DE0: PopTmpLdAdFPR4
  loc_A07DE4: ImpAdCallFPR4 Proc_262_0_9B90FC(, )
  loc_A07DE9: LitI2_Byte &HFF
  loc_A07DEB: FLdPr Me
  loc_A07DEE: MemStI2 global_64
  loc_A07DF1: FLdRfVar var_8C
  loc_A07DF4: FLdRfVar var_88
  loc_A07DF7: ImpAdLdRf MemVar_C44F9C
  loc_A07DFA: NewIfNullPr Me
  loc_A07DFD:  = Me.Global.Screen
  loc_A07E02: FLdPr var_88
  loc_A07E05:  = Screen.Width
  loc_A07E0A: FLdFPR4 var_8C
  loc_A07E0D: LitI2_Byte 1
  loc_A07E0F: CR8I2
  loc_A07E10: MulR8
  loc_A07E11: PopFPR4
  loc_A07E12: FLdPrThis
  loc_A07E13: Me.Width = from_stack_1s
  loc_A07E18: FFree1Ad var_88
  loc_A07E1B: FLdRfVar var_8C
  loc_A07E1E: FLdRfVar var_88
  loc_A07E21: ImpAdLdRf MemVar_C44F9C
  loc_A07E24: NewIfNullPr Me
  loc_A07E27:  = Me.Global.Screen
  loc_A07E2C: FLdPr var_88
  loc_A07E2F:  = Screen.Height
  loc_A07E34: FLdFPR4 var_8C
  loc_A07E37: LitI2_Byte 1
  loc_A07E39: CR8I2
  loc_A07E3A: MulR8
  loc_A07E3B: PopFPR4
  loc_A07E3C: FLdPrThis
  loc_A07E3D: Me.Height = from_stack_1s
  loc_A07E42: FFree1Ad var_88
  loc_A07E45: ExitProcHresult
End Function

Private Function Proc_255_168_977B84() '977B84
  'Data Table: 5077F4
  loc_977B54: ImpAdLdRf MemVar_C3E6B0
  loc_977B57: NewIfNullAd
  loc_977B5A: CastAd
  loc_977B5D: FStAdFuncNoPop
  loc_977B60: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_977B65: FFree1Ad var_88
  loc_977B68: LitVar_Missing var_A8
  loc_977B6B: PopAdLdVar
  loc_977B6C: LitVarI4
  loc_977B74: PopAdLdVar
  loc_977B75: ImpAdLdRf MemVar_C3E6B0
  loc_977B78: NewIfNullPr rptDeclaraciondelSicoss
  loc_977B7B: rptDeclaraciondelSicoss.Show from_stack_1, from_stack_2
  loc_977B80: ExitProcHresult
End Function

Private Function Proc_255_169_970A68() '970A68
  'Data Table: 5077F4
  loc_970A44: ImpAdLdRf MemVar_C3DAAC
  loc_970A47: NewIfNullAd
  loc_970A4A: CastAd
  loc_970A4D: FStAdFunc var_88
  loc_970A50: FLdRfVar var_88
  loc_970A53: ImpAdCallFPR4 Proc_261_31_971890()
  loc_970A58: ILdRf var_88
  loc_970A5B: CastAd
  loc_970A5E: ImpAdStAdFunc MemVar_C3DAAC
  loc_970A62: FFree1Ad var_88
  loc_970A65: ExitProcHresult
End Function
