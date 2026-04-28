VERSION 5.00
Object = "{F5E116E1-0563-11D8-AA80000B6A0D10CB}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\HookMenu.ocx"
Begin VB.MDIForm MDIrecaudacion
  BackColor = &H8000000C&
  WindowState = 2
  Picture = "MDIrecaudacion.frx":0000
  Icon = "MDIrecaudacion.frx":000119AA
  LinkTopic = "MDIForm1"
  ClientLeft = 132
  ClientTop = 1116
  ClientWidth = 9972
  ClientHeight = 8988
  StartUpPosition = 3 'Windows Default
  Moveable = 0   'False
  Begin VB.Timer VersionTmr
    Interval = 60000
    Left = 480
    Top = 480
  End
  Begin HookMenu.XpMenu XpMenu1
    OleObjectBlob = "MDIrecaudacion.frx":00012274
    Left = 600
    Top = 6360
  End
  Begin VB.Menu DatosGenerales
    Caption = "Parámetros"
    Begin VB.Menu ParametrosGeneralesABM
      Caption = "Parámetros Generales"
      Enabled = 0   'False
    End
    Begin VB.Menu ParametrosRentasABM
      Caption = "Parámetros de Rentas"
      Enabled = 0   'False
    End
    Begin VB.Menu InteresPorRecargoABM
      Caption = "Interes del Recargo"
      Enabled = 0   'False
    End
    Begin VB.Menu DescuentoporConceptoABM
      Caption = "Descuentos por Concepto"
      Enabled = 0   'False
    End
    Begin VB.Menu EnteRecaudadorABM
      Caption = "Ente Recaudador"
      Enabled = 0   'False
    End
    Begin VB.Menu ExcepcionABM
      Caption = "Exención"
      Enabled = 0   'False
    End
    Begin VB.Menu ConceptoABM
      Caption = "Concepto"
      Enabled = 0   'False
    End
    Begin VB.Menu Direcciones
      Caption = "Direcciones"
      Begin VB.Menu CalleABM
        Caption = "Calle"
        Enabled = 0   'False
      End
      Begin VB.Menu BarrioABM
        Caption = "Barrio"
        Enabled = 0   'False
      End
      Begin VB.Menu LocalidadABM
        Caption = "Localidad"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu ServDevaABM
      Caption = "Servicios de Derechos Varios"
      Enabled = 0   'False
    End
    Begin VB.Menu TipoFapaABM
      Caption = "Tipo de Facilidad de Pago"
      Enabled = 0   'False
    End
    Begin VB.Menu TipoMoviABM
      Caption = "Tipo de Movimientos"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu Contribuyentes
    Caption = "Contribuyentes"
    Begin VB.Menu Persona
      Caption = "Persona"
      Begin VB.Menu PersonaABM
        Caption = "Alta, Baja y Modificación"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu ModificaciondeCuilCuit
      Caption = "Modificacion CUIL - CUIT"
      Enabled = 0   'False
    End
    Begin VB.Menu UnificaciondePersonas
      Caption = "Unificación de Personas"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu HechosImponibles
    Caption = "Hechos Imponibles"
    Begin VB.Menu Catastro
      Caption = "Catastro"
      Begin VB.Menu ParametrosCatastro
        Caption = "Parametros"
        Begin VB.Menu EstadoInmuebleABM
          Caption = "Estados del Inmueble"
          Enabled = 0   'False
        End
        Begin VB.Menu ZonadeInmuebleABM
          Caption = "Zonas del Inmueble"
          Enabled = 0   'False
        End
        Begin VB.Menu GrupodelInmuebleABM
          Caption = "Grupo del Inmueble"
          Enabled = 0   'False
        End
        Begin VB.Menu ServCataABM
          Caption = "Servicios"
          Enabled = 0   'False
        End
      End
      Begin VB.Menu InmuebleABM
        Caption = "Inmueble"
        Enabled = 0   'False
      End
      Begin VB.Menu DomicilioPostalInmuebleABM
        Caption = "Domicilio Postal"
        Enabled = 0   'False
      End
      Begin VB.Menu TranInmuABM
        Caption = "Transferencia"
        Enabled = 0   'False
      End
      Begin VB.Menu SubDivisiondeInmueble
        Caption = "SubDivisión"
        Enabled = 0   'False
      End
      Begin VB.Menu UnificaciondeInmueble
        Caption = "Unificación"
        Enabled = 0   'False
      End
      Begin VB.Menu ServInmuABM
        Caption = "Servicios"
        Enabled = 0   'False
      End
      Begin VB.Menu InformesdeCatastro
        Caption = "Informes"
        Begin VB.Menu ListadodeInmueblePorCuenta
          Caption = "Listado de Inmuebles Por Cuenta"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeInmueblesporFechaAlta
          Caption = "Listado de Inmuebles Por Fecha"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeInmuebles
          Caption = "Listado de Inmuebles"
          Enabled = 0   'False
        End
      End
    End
    Begin VB.Menu DerechosGenerales
      Caption = "Derechos Generales"
      Begin VB.Menu DomicilioPostalComercioABM
        Caption = "Domicilio Postal"
        Enabled = 0   'False
      End
      Begin VB.Menu TranComeABM
        Caption = "Transferencia"
        Enabled = 0   'False
      End
      Begin VB.Menu CertificadodeComercio
        Caption = "Certificado"
        Enabled = 0   'False
      End
      Begin VB.Menu InformesdeDerechosGenerales
        Caption = "Informes"
        Begin VB.Menu ListadodeComercios
          Caption = "Listado de Comercios"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeComerciosporSubrubro
          Caption = "Listado de Comercio por Subrubros"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeComerciosporFecha
          Caption = "Listado de Comercio por Fecha"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeComerciosporUbicacion
          Caption = "Listado de Comercio por Ubicación"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeComerciosporDomicilio
          Caption = "Listado de Comercio por Domicilio"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeEstadisticadeComercio
          Caption = "Estadística de Comercio"
          Enabled = 0   'False
        End
      End
    End
    Begin VB.Menu Cementerio
      Caption = "Cementerio"
      Begin VB.Menu ParametrosdeCementerio
        Caption = "Parametros"
        Begin VB.Menu ServCemeABM
          Caption = "Servicios"
          Enabled = 0   'False
        End
        Begin VB.Menu TipoSepuABM
          Caption = "Tipo de Sepultura"
          Enabled = 0   'False
        End
      End
      Begin VB.Menu RegistrodeCementerioABM
        Caption = "Registro de Cementerio"
        Enabled = 0   'False
      End
      Begin VB.Menu DomicilioPostalDifuntoABM
        Caption = "Domicilio Postal"
        Enabled = 0   'False
      End
      Begin VB.Menu TranDifuABM
        Caption = "Transferencia"
        Enabled = 0   'False
      End
      Begin VB.Menu TrasladodeDifuntosABM
        Caption = "Traslado de Difuntos"
        Enabled = 0   'False
      End
      Begin VB.Menu InformesdeCementerio
        Caption = "Informes"
        Begin VB.Menu ListadoporUbicacion
          Caption = "Listado por Ubicación"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadoporTipodeSepultura
          Caption = "Tipo de Sepultura"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeVencimientosdeConcesiones
          Caption = "Vencimientos de Concesiones"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeControldeCementerio
          Caption = "Controles de Cementerio"
          Enabled = 0   'False
        End
        Begin VB.Menu ListadodeExpensasAforadas
          Caption = "Expensas Aforadas"
          Enabled = 0   'False
        End
      End
    End
    Begin VB.Menu DeudoresVariosABM
      Caption = "Deudores Varios"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu Apremio
    Caption = "Apremio"
    Begin VB.Menu Parametros
      Caption = "Parametros"
      Begin VB.Menu ParametrosdeApremioABM
        Caption = "Generales"
        Enabled = 0   'False
      End
      Begin VB.Menu RecaudadorABM
        Caption = "Recaudador"
        Enabled = 0   'False
      End
      Begin VB.Menu OficialdeJusticiaABM
        Caption = "Oficial de Justicia"
        Enabled = 0   'False
      End
      Begin VB.Menu InstanciaJudicialABM
        Caption = "Instancia Judicial"
        Enabled = 0   'False
      End
      Begin VB.Menu EscaApreABM
        Caption = "Escalas"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu BoletadeApremio
      Caption = "Apremio"
      Enabled = 0   'False
    End
    Begin VB.Menu GastosyHonorariosdeApremio
      Caption = "Gastos y Honorarios"
      Enabled = 0   'False
    End
    Begin VB.Menu JuiciosABM
      Caption = "Juicios"
      Enabled = 0   'False
    End
    Begin VB.Menu InformesApremio
      Caption = "Informes"
      Begin VB.Menu ListadodeApremioporOficinayCuenta
        Caption = "Listado por Oficina y Cuenta"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumenGeneraldeApremio
        Caption = "Resumen General"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumenGeneraldeRecaudadores
        Caption = "Resumen General de Recaudadores"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumenGeneraldeOficialdeJusticia
        Caption = "Resumen General de Oficial de Justicia"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeApremioconCuotasVencidas
        Caption = "Apremios con Cuotas Vencidas"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeRecaudacionporApremio
        Caption = "Recaudación por Apremio"
        Enabled = 0   'False
      End
      Begin VB.Menu EstadisticasdeApremioyBoletasNotificadas
        Caption = "Boletas de Apremio y Boletas Notificadas"
        Enabled = 0   'False
      End
      Begin VB.Menu EstadisticadeApremio
        Caption = "Estadística de Apremio"
        Enabled = 0   'False
      End
      Begin VB.Menu LiquidacionTasaJusticiaCajaForenseColegioAbogado
        Caption = "Liquidación T. Just, C. Forense y C. Abog."
        Enabled = 0   'False
      End
      Begin VB.Menu ListadoAcuerdo3328Apremio
        Caption = "Acuerdo 3328"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeApremioParaElTribunal
        Caption = "Listado de Apremio Para el Tribunal"
        Enabled = 0   'False
      End
      Begin VB.Menu GeneraciondeTXTCajaForence
        Caption = "Generación de TXT Caja Forence"
        Enabled = 0   'False
      End
    End
  End
  Begin VB.Menu Rentas
    Caption = "Rentas"
    Begin VB.Menu EmisionBoleto
      Caption = "Emisión de Boleto"
      Enabled = 0   'False
    End
    Begin VB.Menu EmisiondeBoletoMasivodeTasa
      Caption = "Emisión de Boleto Masivo de Tasas"
      Enabled = 0   'False
    End
    Begin VB.Menu EmisiondeBoletoMasivodeComercio
      Caption = "Emisión de Boleto Masivo de Comercio"
      Enabled = 0   'False
    End
    Begin VB.Menu CuentaCorriente
      Caption = "Cuenta Corriente"
      Enabled = 0   'False
    End
    Begin VB.Menu CuentaCorrienteUnica
      Caption = "Cuenta Corriente Única"
      Enabled = 0   'False
    End
    Begin VB.Menu PlanesdePago
      Caption = "Planes de Pago"
      Begin VB.Menu GeneraciondePlanesdePago
        Caption = "Generación de Planes de Pago"
        Enabled = 0   'False
      End
      Begin VB.Menu ReimpresiondeFacilidaddePago
        Caption = "Reimpresión de Facilidad de Pago"
        Enabled = 0   'False
      End
      Begin VB.Menu ConsultadePlanesdePago
        Caption = "Consulta de Planes de Pago"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodePlanesdePago
        Caption = "Listado de Planes de pago (Por Cuenta)"
        Enabled = 0   'False
      End
      Begin VB.Menu ModificaciondePlanesdePago
        Caption = "Modificación de Planes de pago"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodePlanesdePagoPorFecha
        Caption = "Listado de Planes de pago (Por Fecha)"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu DerechosVarios
      Caption = "Derechos Varios"
      Enabled = 0   'False
    End
    Begin VB.Menu AforosdeCementerio
      Caption = "Aforos de Cementerio"
      Enabled = 0   'False
    End
    Begin VB.Menu AforosdeDeudoresVarios
      Caption = "Aforos de Deudores Varios"
      Enabled = 0   'False
    End
    Begin VB.Menu Transiro
      Caption = "Tránsito"
      Begin VB.Menu MultasdeTransito
        Caption = "Multas de Tránsito"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeAforosyPagosTransito
        Caption = "Listado de Aforos y Pagos"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu DatosFijos
      Caption = "Datos Fijos"
      Enabled = 0   'False
    End
    Begin VB.Menu ProrrateodeDeuda
      Caption = "Prorrateo de Deuda"
      Enabled = 0   'False
    End
    Begin VB.Menu AforosDebitosCreditosVarios
      Caption = "Aforos, Debitos y Creditos Varios"
      Begin VB.Menu AforosVarios
        Caption = "Aforos Varios"
        Enabled = 0   'False
      End
      Begin VB.Menu DebitoManual
        Caption = "Debito Manual"
        Enabled = 0   'False
      End
      Begin VB.Menu CreditoManual
        Caption = "Crédito Manual"
        Enabled = 0   'False
      End
      Begin VB.Menu CreditoManualPlandePago
        Caption = "Crédito Manual Plan de Pago 1"
        Enabled = 0   'False
      End
      Begin VB.Menu CreditoManualPlandePagoPorExpediente
        Caption = "Crédito Manual Plan de Pago 2"
        Enabled = 0   'False
      End
      Begin VB.Menu AjustesdePagosDuplicados
        Caption = "Ajustes de Pagos Duplicados"
        Enabled = 0   'False
      End
      Begin VB.Menu CreditoManualModificacion
        Caption = "Modificación de Crédito Manual"
        Enabled = 0   'False
      End
      Begin VB.Menu Prescripcion
        Caption = "Prescripción de Deuda"
        Enabled = 0   'False
      End
      Begin VB.Menu AforosAutomaticosFraccionamiento
        Caption = "Aforos Automáticos/Fraccionamiento"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeCreditosyDebitosManuales
        Caption = "Listado de Créditos y Debitos Manuales"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Contracargos
      Caption = "Contracargos"
      Enabled = 0   'False
    End
    Begin VB.Menu CertificadodeLibreDeuda
      Caption = "Certificado de Libre Deuda"
      Enabled = 0   'False
    End
    Begin VB.Menu CertificadoInterno
      Caption = "Certificado Interno"
      Enabled = 0   'False
    End
    Begin VB.Menu ObrasReenbolsables
      Caption = "Obras Reenbolsables"
      Begin VB.Menu AfectaciondePadronesABM
        Caption = "Afectación de Padrones"
        Enabled = 0   'False
      End
      Begin VB.Menu NotificaciondePadrones
        Caption = "Notificación de Padrones"
        Enabled = 0   'False
      End
      Begin VB.Menu InformesObrasReenbolsables
        Caption = "Informes"
        Begin VB.Menu ListadodePadronesAfectados
          Caption = "Listado de Padrones Afectados"
          Enabled = 0   'False
        End
        Begin VB.Menu PagosdeObrasReembolsables
          Caption = "Pago de Obras Reembolsables"
          Enabled = 0   'False
        End
      End
    End
    Begin VB.Menu MenuCreditosasFavor
      Caption = "Créditos a Favor"
      Begin VB.Menu CreditosaFavor
        Caption = "Créditos a Favor"
        Enabled = 0   'False
      End
      Begin VB.Menu CreditosaFavorCreditosyAjustes
        Caption = "Créditos y Ajustes"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeCreditosaFavor
        Caption = "Listado de Créditos a Favor"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Exenciones
      Caption = "Exenciones"
      Begin VB.Menu ExencionesdeInmueble
        Caption = "Inmueble"
        Enabled = 0   'False
      End
      Begin VB.Menu ExencionesdeComercio
        Caption = "Comercio"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu DescuentoPorBono
      Caption = "Descuento por Bono"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu Recaudacion
    Caption = "Recaudación"
    Begin VB.Menu IngresosdeBoletosdeCaja
      Caption = "Ingresos de Boletos de Caja"
      Enabled = 0   'False
    End
    Begin VB.Menu IngresosdeBoletos
      Caption = "Ingresos de Boletos"
      Enabled = 0   'False
    End
    Begin VB.Menu ActualizaciondeCuentaCorriente
      Caption = "Actualizacion de Cuenta Corriente"
      Enabled = 0   'False
    End
    Begin VB.Menu IntegracionconContabilidadyPresupuesto
      Caption = "Integración con Contabilidad y Presupuesto"
      Begin VB.Menu IngresosdeRentas
        Caption = "Ingreso de Rentas"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeIngresodeRentas
        Caption = "Listado de Ingreso de Rentas"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu InformesdeRecaudacion
      Caption = "Informes"
      Begin VB.Menu ResumendeCobranza
        Caption = "Resumen de Cobranza"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeCobranzaporRecurso
        Caption = "Resumen de Cobranza por Recurso"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeCobranzaporRecursopordia
        Caption = "Resumen de Cobranza por Recurso por Día"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeCobranzaporCuentaContable
        Caption = "Resumen de Cobranza por Cuenta Contable"
        Enabled = 0   'False
      End
      Begin VB.Menu ResumendeCobranzaporEnteRecaudador
        Caption = "Resumen de Cobranza por Ente Recaudador"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeControldeCaja
        Caption = "Control de Caja"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeBoletosNOprocesadosEPAGOS
        Caption = "Listado de Boletos NO procesados E-PAGOS"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeBoletosNOprocesados
        Caption = "Listado de Boletos NO procesados"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu AnulacionBoletosdeRentas
      Caption = "Anulación de Boletos por Rentas"
      Enabled = 0   'False
    End
    Begin VB.Menu CapturadeArchivodeEnteRecaudadores
      Caption = "Captura de Archivo de Ente Recaudadores"
      Enabled = 0   'False
    End
    Begin VB.Menu GeneraciondeArchivoParaLinkyBanelco
      Caption = "Generación de Archivo Para Link y Banelco"
      Enabled = 0   'False
    End
    Begin VB.Menu BuscaPagosdeEPagos
      Caption = "Busca pagos de E-Pagos"
      Enabled = 0   'False
    End
    Begin VB.Menu ModificacióndeBoletosCobrados
      Caption = "Modificación de Boletos Cobrados"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu Liquidacion
    Caption = "Liquidación"
    Begin VB.Menu TipodeLiquidacionABM
      Caption = "Tipo de Liquidación"
      Enabled = 0   'False
    End
    Begin VB.Menu VencimientoABM
      Caption = "Vencimientos"
      Enabled = 0   'False
    End
    Begin VB.Menu LiquidaciondeInmueble
      Caption = "Inmueble"
      Begin VB.Menu CalculodeLiquidaciondeTasas
        Caption = "Cálculo de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu ControldelCalculodeLiquidaciondeTasas
        Caption = "Control del Cálculo de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu ComparacionEntreLiquidacionyCtaCteTasas
        Caption = "Comparación entre liquidación y la Cta. Cte."
        Enabled = 0   'False
      End
      Begin VB.Menu ErroresdeLiquidaciondeTasas
        Caption = "Errores de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu GeneracionCuentaCorrienteTasas
        Caption = "Generación en la Cuenta Corriente"
        Enabled = 0   'False
      End
      Begin VB.Menu EmisionMasivadeTasas
        Caption = "Emisión Masiva "
        Enabled = 0   'False
      End
      Begin VB.Menu PlanillaparaelRepartodeBoletos
        Caption = "Planilla para el Reparto de Boletos"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu ComerciosenGeneral
      Caption = "Comercios"
      Begin VB.Menu CalculodeLiquidacionComercioenGeneral
        Caption = "Cálculo de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu ControldelCalculodeLiquidaciondeComercio
        Caption = "Control del Cálculo de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu ControldelCalculodeLiquidaciondeComercioSintetico
        Caption = "Control del Cálculo de Liquidación Sintético"
        Enabled = 0   'False
      End
      Begin VB.Menu ErroresdeLiquidaciondeComercio
        Caption = "Errores de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu GeneracionCuentaCorrienteComercio
        Caption = "Generación en la Cuenta Corriente"
        Enabled = 0   'False
      End
      Begin VB.Menu EmisionMasivadeComercio
        Caption = "Emisión Masiva"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Antena
      Caption = "Antena"
      Begin VB.Menu CalculodeLiquidacionAntena
        Caption = "Cálculo de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu GeneracionCuentaCorrienteAntena
        Caption = "Generación en la Cuenta Corriente"
        Enabled = 0   'False
      End
      Begin VB.Menu EmisionMasivadeAntena
        Caption = "Emision Masiva"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Publicidad
      Caption = "Publicidad"
      Begin VB.Menu CalculodeLiquidacionPublicidad
        Caption = "Cálculo de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu GeneracionCuentaCorrientePublicidad
        Caption = "Generación en la Cuenta Corriente"
        Enabled = 0   'False
      End
      Begin VB.Menu EmisionMasivadePublicidad
        Caption = "Emision Masiva"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu LiquidaciondeCementerio
      Caption = "Cementerio"
      Begin VB.Menu CalculodeLiquidaciondeCementerio
        Caption = "Cálculo de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu ControldelCalculodeLiquidaciondeCementerio
        Caption = "Control del Cálculo de Liquidación"
        Enabled = 0   'False
      End
      Begin VB.Menu GeneracionCuentaCorrienteCementerio
        Caption = "Generación en la Cuenta Corriente"
        Enabled = 0   'False
      End
      Begin VB.Menu EmisionMasivadeCementerio
        Caption = "Emisión Masiva"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu EmisionBoletoPorRango
      Caption = "Emisión de Boleto por Rango"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu Informes
    Caption = "Informes"
    Begin VB.Menu ListadodeBoleto
      Caption = "Listado de Boletos"
      Enabled = 0   'False
    End
    Begin VB.Menu ConsultadeBoleto
      Caption = "Consulta de Boleto"
      Enabled = 0   'False
    End
    Begin VB.Menu ConsultaNrodeOperacionEPagos
      Caption = "Consulta Nro de Operacion E-Pagos"
      Enabled = 0   'False
    End
    Begin VB.Menu ListadodeServiciosdeDerechosVarios
      Caption = "Servicios de Derechos Varios"
      Enabled = 0   'False
    End
    Begin VB.Menu ListadodeDeudaporAno
      Caption = "Listado de Deuda por Año"
      Enabled = 0   'False
    End
    Begin VB.Menu ListadodeContribuyentesLibredeDeuda
      Caption = "Contribuyentes Libre de Deuda"
      Enabled = 0   'False
    End
    Begin VB.Menu ListadodeAforosporConcepto
      Caption = "Aforos por Concepto"
      Enabled = 0   'False
    End
    Begin VB.Menu EstadisticadeFacilidaddePago
      Caption = "Estadistica de Facilidad de Pago"
      Enabled = 0   'False
    End
    Begin VB.Menu ListadodePagosDuplicados
      Caption = "Listado de Pagos Duplicados"
      Enabled = 0   'False
    End
    Begin VB.Menu ListadodeDeudoresConApremio
      Caption = "Listado de Deudores con Apremio"
      Enabled = 0   'False
    End
    Begin VB.Menu TribunaldeCuentas
      Caption = "Tribunal de Cuentas"
      Begin VB.Menu A2988IIB5
        Caption = "Reporte de Deudores"
        Enabled = 0   'False
      End
      Begin VB.Menu A2988IIB5Resumen
        Caption = "Reporte de Deudores Resumen"
        Enabled = 0   'False
      End
      Begin VB.Menu Acuerdo2988AnexoXVIII
        Caption = "Acuerdo 2988 Anexo XVIII Art. 25 A"
        Enabled = 0   'False
      End
      Begin VB.Menu Acuerdo2988AnexoXIX
        Caption = "Acuerdo 2988 Anexo XIX Art. 25 B"
        Enabled = 0   'False
      End
      Begin VB.Menu Acuerdo2988AnexoXX
        Caption = "Acuerdo 2988 Anexo XX Art. 25 C"
        Enabled = 0   'False
      End
      Begin VB.Menu Acuerdo2988AnexoXXI
        Caption = "Acuerdo 2988 Anexo XXI Art. 25 D"
        Enabled = 0   'False
      End
      Begin VB.Menu A3328a2
        Caption = "Acuerdo 3328 Artículo 2"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949a17
        Caption = "Acuerdo 3949 Anexo 17"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949a18
        Caption = "Acuerdo 3949 Anexo 18"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949a22
        Caption = "Acuerdo 3949 Anexo 22"
        Enabled = 0   'False
      End
      Begin VB.Menu A3949a23
        Caption = "Acuerdo 3949 Anexo 23"
        Enabled = 0   'False
      End
      Begin VB.Menu Acuerdo5662Art14IncC
        Caption = "Acuerdo 5662 Art. 14 Inc. C"
        Enabled = 0   'False
      End
      Begin VB.Menu Acuerdo5662Art14IncD
        Caption = "Acuerdo 5662 Art. 14 Inc. D"
        Enabled = 0   'False
      End
      Begin VB.Menu GastoTributario
        Caption = "Gasto Tributario"
        Enabled = 0   'False
      End
      Begin VB.Menu ListadodeAforosParaElTribunal
        Caption = "Listado de Aforos"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu NormasIso
      Caption = "Normas ISO"
      Begin VB.Menu AforosyPagos
        Caption = "Aforos y Pagos"
        Enabled = 0   'False
      End
    End
    Begin VB.Menu Estadisticas
      Caption = "Estadísticas"
      Begin VB.Menu EstadisticadeFacturacionyCobrado
        Caption = "Estadística de Facturación y Cobrado"
        Enabled = 0   'False
      End
    End
  End
  Begin VB.Menu Herramientas
    Caption = "Herramientas"
    Begin VB.Menu Ventanas
      Caption = "Ventanas"
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
    End
    Begin VB.Menu Impresora
      Caption = "Impresora"
      Begin VB.Menu Impresoras
        Index = 0
        Caption = "Predeterminada"
      End
    End
    Begin VB.Menu ProcesoBajadeFacilidadActivas
      Caption = "Proceso Baja de Facilidad Activas"
      Enabled = 0   'False
    End
    Begin VB.Menu ProcesoCreditosManualesPagosDuplicados
      Caption = "Proceso Creditos Manuales Pagos Duplicados"
      Enabled = 0   'False
    End
    Begin VB.Menu Ejecutar
      Visible = 0   'False
      Caption = "Ejecutar"
      Enabled = 0   'False
    End
    Begin VB.Menu Migracion
      Caption = "Migración"
      Enabled = 0   'False
    End
  End
  Begin VB.Menu Ayuda
    Caption = "Ayuda"
    Begin VB.Menu Acercade
      Caption = "Acerca de"
    End
  End
  Begin VB.Menu Salir
    Caption = "Salir"
  End
End

Attribute VB_Name = "MDIrecaudacion"


Private Sub PagosdeObrasReembolsables_Click() 'A05ED4
  'Data Table: 53CCB4
  loc_A05EA4: ImpAdLdRf MemVar_D93A04
  loc_A05EA7: NewIfNullAd
  loc_A05EAA: CastAd
  loc_A05EAD: FStAdFuncNoPop
  loc_A05EB0: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05EB5: FFree1Ad var_88
  loc_A05EB8: LitVar_Missing var_A8
  loc_A05EBB: PopAdLdVar
  loc_A05EBC: LitVarI4
  loc_A05EC4: PopAdLdVar
  loc_A05EC5: ImpAdLdRf MemVar_D93A04
  loc_A05EC8: NewIfNullPr rptPagosdeObrasReembolsables
  loc_A05ECB: rptPagosdeObrasReembolsables.Show from_stack_1, from_stack_2
  loc_A05ED0: ExitProcHresult
End Sub

Private Sub DescuentoPorBono_Click() '9ECA10
  'Data Table: 53CCB4
  loc_9EC9EC: ImpAdLdRf MemVar_D934B4
  loc_9EC9EF: NewIfNullAd
  loc_9EC9F2: CastAd
  loc_9EC9F5: FStAdFunc var_88
  loc_9EC9F8: FLdRfVar var_88
  loc_9EC9FB: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9ECA00: ILdRf var_88
  loc_9ECA03: CastAd
  loc_9ECA06: ImpAdStAdFunc MemVar_D934B4
  loc_9ECA0A: FFree1Ad var_88
  loc_9ECA0D: ExitProcHresult
End Sub

Private Sub IngresosdeBoletos_Click() 'A607E0
  'Data Table: 53CCB4
  loc_A60788: LitVar_Missing var_A4
  loc_A6078B: PopAdLdVar
  loc_A6078C: LitVar_Missing var_94
  loc_A6078F: PopAdLdVar
  loc_A60790: ImpAdLdRf MemVar_D93E1C
  loc_A60793: NewIfNullPr frmIngresosdeBoletos
  loc_A60796: frmIngresosdeBoletos.Show from_stack_1, from_stack_2
  loc_A6079B: FLdRfVar var_A8
  loc_A6079E: FLdPr Me
  loc_A607A1:  = Me.FontSize
  loc_A607A6: FLdPr var_A8
  loc_A607A9: LateMemLdVar
  loc_A607AE: FLdRfVar var_AC
  loc_A607B1: ImpAdLdRf MemVar_D93E1C
  loc_A607B4: NewIfNullPr frmIngresosdeBoletos
  loc_A607B7:  = frmIngresosdeBoletos.Name
  loc_A607BC: FLdZeroAd var_AC
  loc_A607BF: CVarStr var_BC
  loc_A607C2: HardType
  loc_A607C3: NeVarBool
  loc_A607C5: FFree1Ad var_A8
  loc_A607C8: FFreeVar var_CC = ""
  loc_A607CF: BranchF loc_A607DD
  loc_A607D2: ImpAdLdRf MemVar_D93E1C
  loc_A607D5: NewIfNullPr frmIngresosdeBoletos
  loc_A607D8: frmIngresosdeBoletos.SetFocus
  loc_A607DD: ExitProcHresult
End Sub

Private Sub IngresosdeRentas_Click() 'A611A0
  'Data Table: 53CCB4
  loc_A61148: LitVar_Missing var_A4
  loc_A6114B: PopAdLdVar
  loc_A6114C: LitVar_Missing var_94
  loc_A6114F: PopAdLdVar
  loc_A61150: ImpAdLdRf MemVar_D93D40
  loc_A61153: NewIfNullPr frmIngresosdeRentas
  loc_A61156: frmIngresosdeRentas.Show from_stack_1, from_stack_2
  loc_A6115B: FLdRfVar var_A8
  loc_A6115E: FLdPr Me
  loc_A61161:  = Me.FontSize
  loc_A61166: FLdPr var_A8
  loc_A61169: LateMemLdVar
  loc_A6116E: FLdRfVar var_AC
  loc_A61171: ImpAdLdRf MemVar_D93D40
  loc_A61174: NewIfNullPr frmIngresosdeRentas
  loc_A61177:  = frmIngresosdeRentas.Name
  loc_A6117C: FLdZeroAd var_AC
  loc_A6117F: CVarStr var_BC
  loc_A61182: HardType
  loc_A61183: NeVarBool
  loc_A61185: FFree1Ad var_A8
  loc_A61188: FFreeVar var_CC = ""
  loc_A6118F: BranchF loc_A6119D
  loc_A61192: ImpAdLdRf MemVar_D93D40
  loc_A61195: NewIfNullPr frmIngresosdeRentas
  loc_A61198: frmIngresosdeRentas.SetFocus
  loc_A6119D: ExitProcHresult
End Sub

Private Sub ListadodeIngresodeRentas_Click() 'A051F0
  'Data Table: 53CCB4
  loc_A051C0: ImpAdLdRf MemVar_D93928
  loc_A051C3: NewIfNullAd
  loc_A051C6: CastAd
  loc_A051C9: FStAdFuncNoPop
  loc_A051CC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A051D1: FFree1Ad var_88
  loc_A051D4: LitVar_Missing var_A8
  loc_A051D7: PopAdLdVar
  loc_A051D8: LitVarI4
  loc_A051E0: PopAdLdVar
  loc_A051E1: ImpAdLdRf MemVar_D93928
  loc_A051E4: NewIfNullPr rptListadodeIngresosdeRentas
  loc_A051E7: rptListadodeIngresosdeRentas.Show from_stack_1, from_stack_2
  loc_A051EC: ExitProcHresult
  loc_A051ED: MemLdPr global_7167
End Sub

Private Sub VersionTmr_Timer() '9B049C
  'Data Table: 53CCB4
  loc_9B0494: ImpAdCallFPR4 Proc_272_48_B59D40()
  loc_9B0499: ExitProcHresult
  loc_9B049A: EqI4
End Sub

Private Sub ResumendeCobranzaporRecurso_Click() 'A05CE0
  'Data Table: 53CCB4
  loc_A05CB0: ImpAdLdRf MemVar_D93ED4
  loc_A05CB3: NewIfNullAd
  loc_A05CB6: CastAd
  loc_A05CB9: FStAdFuncNoPop
  loc_A05CBC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05CC1: FFree1Ad var_88
  loc_A05CC4: LitVar_Missing var_A8
  loc_A05CC7: PopAdLdVar
  loc_A05CC8: LitVarI4
  loc_A05CD0: PopAdLdVar
  loc_A05CD1: ImpAdLdRf MemVar_D93ED4
  loc_A05CD4: NewIfNullPr rptResumendeCobranzaporRecurso
  loc_A05CD7: rptResumendeCobranzaporRecurso.Show from_stack_1, from_stack_2
  loc_A05CDC: ExitProcHresult
End Sub

Private Sub ResumendeCobranzaporRecursopordia_Click() 'A05AEC
  'Data Table: 53CCB4
  loc_A05ABC: ImpAdLdRf MemVar_D93AE0
  loc_A05ABF: NewIfNullAd
  loc_A05AC2: CastAd
  loc_A05AC5: FStAdFuncNoPop
  loc_A05AC8: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05ACD: FFree1Ad var_88
  loc_A05AD0: LitVar_Missing var_A8
  loc_A05AD3: PopAdLdVar
  loc_A05AD4: LitVarI4
  loc_A05ADC: PopAdLdVar
  loc_A05ADD: ImpAdLdRf MemVar_D93AE0
  loc_A05AE0: NewIfNullPr rptResumendeCobranzaporRecursoporFecha
  loc_A05AE3: rptResumendeCobranzaporRecursoporFecha.Show from_stack_1, from_stack_2
  loc_A05AE8: ExitProcHresult
End Sub

Private Sub ResumendeCobranzaporCuentaContable_Click() 'A05D44
  'Data Table: 53CCB4
  loc_A05D14: ImpAdLdRf MemVar_D93AB8
  loc_A05D17: NewIfNullAd
  loc_A05D1A: CastAd
  loc_A05D1D: FStAdFuncNoPop
  loc_A05D20: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05D25: FFree1Ad var_88
  loc_A05D28: LitVar_Missing var_A8
  loc_A05D2B: PopAdLdVar
  loc_A05D2C: LitVarI4
  loc_A05D34: PopAdLdVar
  loc_A05D35: ImpAdLdRf MemVar_D93AB8
  loc_A05D38: NewIfNullPr rptResumendeCobranzaporCuentadeIngreso
  loc_A05D3B: rptResumendeCobranzaporCuentadeIngreso.Show from_stack_1, from_stack_2
  loc_A05D40: ExitProcHresult
End Sub

Private Sub ListadodeControldeCaja_Click() 'A0405C
  'Data Table: 53CCB4
  loc_A0402C: ImpAdLdRf MemVar_D93824
  loc_A0402F: NewIfNullAd
  loc_A04032: CastAd
  loc_A04035: FStAdFuncNoPop
  loc_A04038: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A0403D: FFree1Ad var_88
  loc_A04040: LitVar_Missing var_A8
  loc_A04043: PopAdLdVar
  loc_A04044: LitVarI4
  loc_A0404C: PopAdLdVar
  loc_A0404D: ImpAdLdRf MemVar_D93824
  loc_A04050: NewIfNullPr rptListadodeControldeCaja
  loc_A04053: rptListadodeControldeCaja.Show from_stack_1, from_stack_2
  loc_A04058: ExitProcHresult
End Sub

Private Sub ResumendeCobranzaporEnteRecaudador_Click() 'A06000
  'Data Table: 53CCB4
  loc_A05FD0: ImpAdLdRf MemVar_D93ACC
  loc_A05FD3: NewIfNullAd
  loc_A05FD6: CastAd
  loc_A05FD9: FStAdFuncNoPop
  loc_A05FDC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05FE1: FFree1Ad var_88
  loc_A05FE4: LitVar_Missing var_A8
  loc_A05FE7: PopAdLdVar
  loc_A05FE8: LitVarI4
  loc_A05FF0: PopAdLdVar
  loc_A05FF1: ImpAdLdRf MemVar_D93ACC
  loc_A05FF4: NewIfNullPr rptResumendeCobranzaporEnteRecaudador
  loc_A05FF7: rptResumendeCobranzaporEnteRecaudador.Show from_stack_1, from_stack_2
  loc_A05FFC: ExitProcHresult
  loc_A05FFD: GtCy
  loc_A05FFE: UMiR8
End Sub

Private Sub GeneraciondeArchivoParaLinkyBanelco_Click() 'A006F0
  'Data Table: 53CCB4
  loc_A006C0: ImpAdLdRf MemVar_D935A4
  loc_A006C3: NewIfNullAd
  loc_A006C6: CastAd
  loc_A006C9: FStAdFuncNoPop
  loc_A006CC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A006D1: FFree1Ad var_88
  loc_A006D4: LitVar_Missing var_A8
  loc_A006D7: PopAdLdVar
  loc_A006D8: LitVarI4
  loc_A006E0: PopAdLdVar
  loc_A006E1: ImpAdLdRf MemVar_D935A4
  loc_A006E4: NewIfNullPr rptGeneraciondeArchivoParaBanelco
  loc_A006E7: rptGeneraciondeArchivoParaBanelco.Show from_stack_1, from_stack_2
  loc_A006EC: ExitProcHresult
End Sub

Private Sub ParametrosdeApremioABM_Click() '9EB4C0
  'Data Table: 53CCB4
  loc_9EB49C: ImpAdLdRf MemVar_D93A18
  loc_9EB49F: NewIfNullAd
  loc_9EB4A2: CastAd
  loc_9EB4A5: FStAdFunc var_88
  loc_9EB4A8: FLdRfVar var_88
  loc_9EB4AB: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB4B0: ILdRf var_88
  loc_9EB4B3: CastAd
  loc_9EB4B6: ImpAdStAdFunc MemVar_D93A18
  loc_9EB4BA: FFree1Ad var_88
  loc_9EB4BD: ExitProcHresult
  loc_9EB4BE: CRec2Uni arg_3C00
End Sub

Private Sub ModificacióndeBoletosCobrados_Click() '9EB5C8
  'Data Table: 53CCB4
  loc_9EB5A4: ImpAdLdRf MemVar_D939A0
  loc_9EB5A7: NewIfNullAd
  loc_9EB5AA: CastAd
  loc_9EB5AD: FStAdFunc var_88
  loc_9EB5B0: FLdRfVar var_88
  loc_9EB5B3: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB5B8: ILdRf var_88
  loc_9EB5BB: CastAd
  loc_9EB5BE: ImpAdStAdFunc MemVar_D939A0
  loc_9EB5C2: FFree1Ad var_88
  loc_9EB5C5: ExitProcHresult
  loc_9EB5C6: AndI4
End Sub

Private Sub ListadodeBoletosNOprocesadosEPAGOS_Click() 'A030BC
  'Data Table: 53CCB4
  loc_A0308C: ImpAdLdRf MemVar_D937FC
  loc_A0308F: NewIfNullAd
  loc_A03092: CastAd
  loc_A03095: FStAdFuncNoPop
  loc_A03098: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A0309D: FFree1Ad var_88
  loc_A030A0: LitVar_Missing var_A8
  loc_A030A3: PopAdLdVar
  loc_A030A4: LitVarI4
  loc_A030AC: PopAdLdVar
  loc_A030AD: ImpAdLdRf MemVar_D937FC
  loc_A030B0: NewIfNullPr rptListadodeBoletosNoProcesadosEPagos
  loc_A030B3: rptListadodeBoletosNoProcesadosEPagos.Show from_stack_1, from_stack_2
  loc_A030B8: ExitProcHresult
  loc_A030B9: MemStR8 global_1128
End Sub

Private Sub DebitoManual_Click() 'A60C24
  'Data Table: 53CCB4
  loc_A60BCC: LitVar_Missing var_A4
  loc_A60BCF: PopAdLdVar
  loc_A60BD0: LitVar_Missing var_94
  loc_A60BD3: PopAdLdVar
  loc_A60BD4: ImpAdLdRf MemVar_D93DE0
  loc_A60BD7: NewIfNullPr frmDebitoManual
  loc_A60BDA: frmDebitoManual.Show from_stack_1, from_stack_2
  loc_A60BDF: FLdRfVar var_A8
  loc_A60BE2: FLdPr Me
  loc_A60BE5:  = Me.FontSize
  loc_A60BEA: FLdPr var_A8
  loc_A60BED: LateMemLdVar
  loc_A60BF2: FLdRfVar var_AC
  loc_A60BF5: ImpAdLdRf MemVar_D93DE0
  loc_A60BF8: NewIfNullPr frmDebitoManual
  loc_A60BFB:  = frmDebitoManual.Name
  loc_A60C00: FLdZeroAd var_AC
  loc_A60C03: CVarStr var_BC
  loc_A60C06: HardType
  loc_A60C07: NeVarBool
  loc_A60C09: FFree1Ad var_A8
  loc_A60C0C: FFreeVar var_CC = ""
  loc_A60C13: BranchF loc_A60C21
  loc_A60C16: ImpAdLdRf MemVar_D93DE0
  loc_A60C19: NewIfNullPr frmDebitoManual
  loc_A60C1C: frmDebitoManual.SetFocus
  loc_A60C21: ExitProcHresult
End Sub

Private Sub VencimientoABM_Click() '9EA968
  'Data Table: 53CCB4
  loc_9EA944: ImpAdLdRf MemVar_D93BA8
  loc_9EA947: NewIfNullAd
  loc_9EA94A: CastAd
  loc_9EA94D: FStAdFunc var_88
  loc_9EA950: FLdRfVar var_88
  loc_9EA953: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EA958: ILdRf var_88
  loc_9EA95B: CastAd
  loc_9EA95E: ImpAdStAdFunc MemVar_D93BA8
  loc_9EA962: FFree1Ad var_88
  loc_9EA965: ExitProcHresult
  loc_9EA966: PopAdLdVar
End Sub

Private Sub CalculodeLiquidaciondeTasas_Click() 'A6012C
  'Data Table: 53CCB4
  loc_A600D4: LitVar_Missing var_A4
  loc_A600D7: PopAdLdVar
  loc_A600D8: LitVar_Missing var_94
  loc_A600DB: PopAdLdVar
  loc_A600DC: ImpAdLdRf MemVar_D93CC8
  loc_A600DF: NewIfNullPr frmCalculodeLiquidacionTasas
  loc_A600E2: frmCalculodeLiquidacionTasas.Show from_stack_1, from_stack_2
  loc_A600E7: FLdRfVar var_A8
  loc_A600EA: FLdPr Me
  loc_A600ED:  = Me.FontSize
  loc_A600F2: FLdPr var_A8
  loc_A600F5: LateMemLdVar
  loc_A600FA: FLdRfVar var_AC
  loc_A600FD: ImpAdLdRf MemVar_D93CC8
  loc_A60100: NewIfNullPr frmCalculodeLiquidacionTasas
  loc_A60103:  = frmCalculodeLiquidacionTasas.Name
  loc_A60108: FLdZeroAd var_AC
  loc_A6010B: CVarStr var_BC
  loc_A6010E: HardType
  loc_A6010F: NeVarBool
  loc_A60111: FFree1Ad var_A8
  loc_A60114: FFreeVar var_CC = ""
  loc_A6011B: BranchF loc_A60129
  loc_A6011E: ImpAdLdRf MemVar_D93CC8
  loc_A60121: NewIfNullPr frmCalculodeLiquidacionTasas
  loc_A60124: frmCalculodeLiquidacionTasas.SetFocus
  loc_A60129: ExitProcHresult
End Sub

Private Sub ProrrateodeDeuda_Click() '9EB1A8
  'Data Table: 53CCB4
  loc_9EB184: ImpAdLdRf MemVar_D93A90
  loc_9EB187: NewIfNullAd
  loc_9EB18A: CastAd
  loc_9EB18D: FStAdFunc var_88
  loc_9EB190: FLdRfVar var_88
  loc_9EB193: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB198: ILdRf var_88
  loc_9EB19B: CastAd
  loc_9EB19E: ImpAdStAdFunc MemVar_D93A90
  loc_9EB1A2: FFree1Ad var_88
  loc_9EB1A5: ExitProcHresult
End Sub

Private Sub LiquidacionTasaJusticiaCajaForenseColegioAbogado_Click() 'A00BA0
  'Data Table: 53CCB4
  loc_A00B70: ImpAdLdRf MemVar_D935F4
  loc_A00B73: NewIfNullAd
  loc_A00B76: CastAd
  loc_A00B79: FStAdFuncNoPop
  loc_A00B7C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00B81: FFree1Ad var_88
  loc_A00B84: LitVar_Missing var_A8
  loc_A00B87: PopAdLdVar
  loc_A00B88: LitVarI4
  loc_A00B90: PopAdLdVar
  loc_A00B91: ImpAdLdRf MemVar_D935F4
  loc_A00B94: NewIfNullPr rptLiquidacionTasaJusticiaCajaForenseColegioAbogado
  loc_A00B97: rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.Show from_stack_1, from_stack_2
  loc_A00B9C: ExitProcHresult
End Sub

Private Sub ControldelCalculodeLiquidaciondeTasas_Click() 'A01FF0
  'Data Table: 53CCB4
  loc_A01FC0: ImpAdLdRf MemVar_D93748
  loc_A01FC3: NewIfNullAd
  loc_A01FC6: CastAd
  loc_A01FC9: FStAdFuncNoPop
  loc_A01FCC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A01FD1: FFree1Ad var_88
  loc_A01FD4: LitVar_Missing var_A8
  loc_A01FD7: PopAdLdVar
  loc_A01FD8: LitVarI4
  loc_A01FE0: PopAdLdVar
  loc_A01FE1: ImpAdLdRf MemVar_D93748
  loc_A01FE4: NewIfNullPr rptControldelCalculodeLiquidaciondeTasas
  loc_A01FE7: rptControldelCalculodeLiquidaciondeTasas.Show from_stack_1, from_stack_2
  loc_A01FEC: ExitProcHresult
End Sub

Private Sub EmisionMasivadeTasas_Click() '9EB308
  'Data Table: 53CCB4
  loc_9EB2E4: ImpAdLdRf MemVar_D934C8
  loc_9EB2E7: NewIfNullAd
  loc_9EB2EA: CastAd
  loc_9EB2ED: FStAdFunc var_88
  loc_9EB2F0: FLdRfVar var_88
  loc_9EB2F3: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB2F8: ILdRf var_88
  loc_9EB2FB: CastAd
  loc_9EB2FE: ImpAdStAdFunc MemVar_D934C8
  loc_9EB302: FFree1Ad var_88
  loc_9EB305: ExitProcHresult
  loc_9EB306: FStFPR4 arg_3C00
End Sub

Private Sub PlanillaparaelRepartodeBoletos_Click() 'A05F38
  'Data Table: 53CCB4
  loc_A05F08: ImpAdLdRf MemVar_D93A40
  loc_A05F0B: NewIfNullAd
  loc_A05F0E: CastAd
  loc_A05F11: FStAdFuncNoPop
  loc_A05F14: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05F19: FFree1Ad var_88
  loc_A05F1C: LitVar_Missing var_A8
  loc_A05F1F: PopAdLdVar
  loc_A05F20: LitVarI4
  loc_A05F28: PopAdLdVar
  loc_A05F29: ImpAdLdRf MemVar_D93A40
  loc_A05F2C: NewIfNullPr rptPlanilladeLiquidacionInmueble
  loc_A05F2F: rptPlanilladeLiquidacionInmueble.Show from_stack_1, from_stack_2
  loc_A05F34: ExitProcHresult
End Sub

Private Sub EscaApreABM_Click() '9EB360
  'Data Table: 53CCB4
  loc_9EB33C: ImpAdLdRf MemVar_D936BC
  loc_9EB33F: NewIfNullAd
  loc_9EB342: CastAd
  loc_9EB345: FStAdFunc var_88
  loc_9EB348: FLdRfVar var_88
  loc_9EB34B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB350: ILdRf var_88
  loc_9EB353: CastAd
  loc_9EB356: ImpAdStAdFunc MemVar_D936BC
  loc_9EB35A: FFree1Ad var_88
  loc_9EB35D: ExitProcHresult
  loc_9EB35E: OrI4
End Sub

Private Sub ControldelCalculodeLiquidaciondeComercio_Click() 'A04958
  'Data Table: 53CCB4
  loc_A04928: ImpAdLdRf MemVar_D93734
  loc_A0492B: NewIfNullAd
  loc_A0492E: CastAd
  loc_A04931: FStAdFuncNoPop
  loc_A04934: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A04939: FFree1Ad var_88
  loc_A0493C: LitVar_Missing var_A8
  loc_A0493F: PopAdLdVar
  loc_A04940: LitVarI4
  loc_A04948: PopAdLdVar
  loc_A04949: ImpAdLdRf MemVar_D93734
  loc_A0494C: NewIfNullPr rptControldelCalculodeLiquidaciondeComercio
  loc_A0494F: rptControldelCalculodeLiquidaciondeComercio.Show from_stack_1, from_stack_2
  loc_A04954: ExitProcHresult
End Sub

Private Sub ErroresdeLiquidaciondeComercio_Click() 'A02248
  'Data Table: 53CCB4
  loc_A02218: ImpAdLdRf MemVar_D93770
  loc_A0221B: NewIfNullAd
  loc_A0221E: CastAd
  loc_A02221: FStAdFuncNoPop
  loc_A02224: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A02229: FFree1Ad var_88
  loc_A0222C: LitVar_Missing var_A8
  loc_A0222F: PopAdLdVar
  loc_A02230: LitVarI4
  loc_A02238: PopAdLdVar
  loc_A02239: ImpAdLdRf MemVar_D93770
  loc_A0223C: NewIfNullPr rptErroresdeLiquidaciondeComercio
  loc_A0223F: rptErroresdeLiquidaciondeComercio.Show from_stack_1, from_stack_2
  loc_A02244: ExitProcHresult
End Sub

Private Sub EstadisticadeApremio_Click() 'A05704
  'Data Table: 53CCB4
  loc_A056D4: ImpAdLdRf MemVar_D93518
  loc_A056D7: NewIfNullAd
  loc_A056DA: CastAd
  loc_A056DD: FStAdFuncNoPop
  loc_A056E0: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A056E5: FFree1Ad var_88
  loc_A056E8: LitVar_Missing var_A8
  loc_A056EB: PopAdLdVar
  loc_A056EC: LitVarI4
  loc_A056F4: PopAdLdVar
  loc_A056F5: ImpAdLdRf MemVar_D93518
  loc_A056F8: NewIfNullPr rptEstadisticadeApremio
  loc_A056FB: rptEstadisticadeApremio.Show from_stack_1, from_stack_2
  loc_A05700: ExitProcHresult
End Sub

Private Sub CalculodeLiquidacionAntena_Click() '9EB518
  'Data Table: 53CCB4
  loc_9EB4F4: ImpAdLdRf MemVar_D93388
  loc_9EB4F7: NewIfNullAd
  loc_9EB4FA: CastAd
  loc_9EB4FD: FStAdFunc var_88
  loc_9EB500: FLdRfVar var_88
  loc_9EB503: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB508: ILdRf var_88
  loc_9EB50B: CastAd
  loc_9EB50E: ImpAdStAdFunc MemVar_D93388
  loc_9EB512: FFree1Ad var_88
  loc_9EB515: ExitProcHresult
  loc_9EB516: MemLdFPR8 global_15368
End Sub

Private Sub ListadodePlanesdePago_Click() 'A055D8
  'Data Table: 53CCB4
  loc_A055A8: ImpAdLdRf MemVar_D93D54
  loc_A055AB: NewIfNullAd
  loc_A055AE: CastAd
  loc_A055B1: FStAdFuncNoPop
  loc_A055B4: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A055B9: FFree1Ad var_88
  loc_A055BC: LitVar_Missing var_A8
  loc_A055BF: PopAdLdVar
  loc_A055C0: LitVarI4
  loc_A055C8: PopAdLdVar
  loc_A055C9: ImpAdLdRf MemVar_D93D54
  loc_A055CC: NewIfNullPr rptListadodePlanesdePago
  loc_A055CF: rptListadodePlanesdePago.Show from_stack_1, from_stack_2
  loc_A055D4: ExitProcHresult
  loc_A055D7: ExitProcR4
End Sub

Private Sub EmisionMasivadeAntena_Click() '9ECBC8
  'Data Table: 53CCB4
  loc_9ECBA4: ImpAdLdRf MemVar_D934C8
  loc_9ECBA7: NewIfNullAd
  loc_9ECBAA: CastAd
  loc_9ECBAD: FStAdFunc var_88
  loc_9ECBB0: FLdRfVar var_88
  loc_9ECBB3: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9ECBB8: ILdRf var_88
  loc_9ECBBB: CastAd
  loc_9ECBBE: ImpAdStAdFunc MemVar_D934C8
  loc_9ECBC2: FFree1Ad var_88
  loc_9ECBC5: ExitProcHresult
End Sub

Private Sub GeneracionCuentaCorrientePublicidad_Click() '9EC330
  'Data Table: 53CCB4
  loc_9EC30C: ImpAdLdRf MemVar_D93590
  loc_9EC30F: NewIfNullAd
  loc_9EC312: CastAd
  loc_9EC315: FStAdFunc var_88
  loc_9EC318: FLdRfVar var_88
  loc_9EC31B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EC320: ILdRf var_88
  loc_9EC323: CastAd
  loc_9EC326: ImpAdStAdFunc MemVar_D93590
  loc_9EC32A: FFree1Ad var_88
  loc_9EC32D: ExitProcHresult
  loc_9EC32E: NewIfNullPr Me
End Sub

Private Sub EmisionMasivadePublicidad_Click() 'A039B8
  'Data Table: 53CCB4
  loc_A03988: ImpAdLdRf MemVar_D93504
  loc_A0398B: NewIfNullAd
  loc_A0398E: CastAd
  loc_A03991: FStAdFuncNoPop
  loc_A03994: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A03999: FFree1Ad var_88
  loc_A0399C: LitVar_Missing var_A8
  loc_A0399F: PopAdLdVar
  loc_A039A0: LitVarI4
  loc_A039A8: PopAdLdVar
  loc_A039A9: ImpAdLdRf MemVar_D93504
  loc_A039AC: NewIfNullPr rptEmisionMasivadePublicidad
  loc_A039AF: rptEmisionMasivadePublicidad.Show from_stack_1, from_stack_2
  loc_A039B4: ExitProcHresult
End Sub

Private Sub CalculodeLiquidaciondeCementerio_Click() '9EB570
  'Data Table: 53CCB4
  loc_9EB54C: ImpAdLdRf MemVar_D9339C
  loc_9EB54F: NewIfNullAd
  loc_9EB552: CastAd
  loc_9EB555: FStAdFunc var_88
  loc_9EB558: FLdRfVar var_88
  loc_9EB55B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB560: ILdRf var_88
  loc_9EB563: CastAd
  loc_9EB566: ImpAdStAdFunc MemVar_D9339C
  loc_9EB56A: FFree1Ad var_88
  loc_9EB56D: ExitProcHresult
End Sub

Private Sub GeneracionCuentaCorrienteCementerio_Click() '9EC490
  'Data Table: 53CCB4
  loc_9EC46C: ImpAdLdRf MemVar_D9357C
  loc_9EC46F: NewIfNullAd
  loc_9EC472: CastAd
  loc_9EC475: FStAdFunc var_88
  loc_9EC478: FLdRfVar var_88
  loc_9EC47B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EC480: ILdRf var_88
  loc_9EC483: CastAd
  loc_9EC486: ImpAdStAdFunc MemVar_D9357C
  loc_9EC48A: FFree1Ad var_88
  loc_9EC48D: ExitProcHresult
  loc_9EC48E: FLdRfVar arg_3C00
End Sub

Private Sub EmisionMasivadeCementerio_Click() 'A03B48
  'Data Table: 53CCB4
  loc_A03B18: ImpAdLdRf MemVar_D934DC
  loc_A03B1B: NewIfNullAd
  loc_A03B1E: CastAd
  loc_A03B21: FStAdFuncNoPop
  loc_A03B24: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A03B29: FFree1Ad var_88
  loc_A03B2C: LitVar_Missing var_A8
  loc_A03B2F: PopAdLdVar
  loc_A03B30: LitVarI4
  loc_A03B38: PopAdLdVar
  loc_A03B39: ImpAdLdRf MemVar_D934DC
  loc_A03B3C: NewIfNullPr rptEmisionMasivadeCementerio
  loc_A03B3F: rptEmisionMasivadeCementerio.Show from_stack_1, from_stack_2
  loc_A03B44: ExitProcHresult
End Sub

Private Sub EmisionMasivadeComercio_Click() '9EBDB0
  'Data Table: 53CCB4
  loc_9EBD8C: ImpAdLdRf MemVar_D934C8
  loc_9EBD8F: NewIfNullAd
  loc_9EBD92: CastAd
  loc_9EBD95: FStAdFunc var_88
  loc_9EBD98: FLdRfVar var_88
  loc_9EBD9B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EBDA0: ILdRf var_88
  loc_9EBDA3: CastAd
  loc_9EBDA6: ImpAdStAdFunc MemVar_D934C8
  loc_9EBDAA: FFree1Ad var_88
  loc_9EBDAD: ExitProcHresult
End Sub

Private Sub EmisionBoletoPorRango_Click() 'A03D3C
  'Data Table: 53CCB4
  loc_A03D0C: ImpAdLdRf MemVar_D934F0
  loc_A03D0F: NewIfNullAd
  loc_A03D12: CastAd
  loc_A03D15: FStAdFuncNoPop
  loc_A03D18: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A03D1D: FFree1Ad var_88
  loc_A03D20: LitVar_Missing var_A8
  loc_A03D23: PopAdLdVar
  loc_A03D24: LitVarI4
  loc_A03D2C: PopAdLdVar
  loc_A03D2D: ImpAdLdRf MemVar_D934F0
  loc_A03D30: NewIfNullPr rptEmisionBoletoPorRango
  loc_A03D33: rptEmisionBoletoPorRango.Show from_stack_1, from_stack_2
  loc_A03D38: ExitProcHresult
End Sub

Private Sub GeneraciondePlanesdePago_Click() 'A5E968
  'Data Table: 53CCB4
  loc_A5E910: LitVar_Missing var_A4
  loc_A5E913: PopAdLdVar
  loc_A5E914: LitVar_Missing var_94
  loc_A5E917: PopAdLdVar
  loc_A5E918: ImpAdLdRf MemVar_D93E08
  loc_A5E91B: NewIfNullPr frmPlanesdePago
  loc_A5E91E: frmPlanesdePago.Show from_stack_1, from_stack_2
  loc_A5E923: FLdRfVar var_A8
  loc_A5E926: FLdPr Me
  loc_A5E929:  = Me.FontSize
  loc_A5E92E: FLdPr var_A8
  loc_A5E931: LateMemLdVar
  loc_A5E936: FLdRfVar var_AC
  loc_A5E939: ImpAdLdRf MemVar_D93E08
  loc_A5E93C: NewIfNullPr frmPlanesdePago
  loc_A5E93F:  = frmPlanesdePago.Name
  loc_A5E944: FLdZeroAd var_AC
  loc_A5E947: CVarStr var_BC
  loc_A5E94A: HardType
  loc_A5E94B: NeVarBool
  loc_A5E94D: FFree1Ad var_A8
  loc_A5E950: FFreeVar var_CC = ""
  loc_A5E957: BranchF loc_A5E965
  loc_A5E95A: ImpAdLdRf MemVar_D93E08
  loc_A5E95D: NewIfNullPr frmPlanesdePago
  loc_A5E960: frmPlanesdePago.SetFocus
  loc_A5E965: ExitProcHresult
End Sub

Private Sub ListadodeBoleto_Click() 'A04700
  'Data Table: 53CCB4
  loc_A046D0: ImpAdLdRf MemVar_D93680
  loc_A046D3: NewIfNullAd
  loc_A046D6: CastAd
  loc_A046D9: FStAdFuncNoPop
  loc_A046DC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A046E1: FFree1Ad var_88
  loc_A046E4: LitVar_Missing var_A8
  loc_A046E7: PopAdLdVar
  loc_A046E8: LitVarI4
  loc_A046F0: PopAdLdVar
  loc_A046F1: ImpAdLdRf MemVar_D93680
  loc_A046F4: NewIfNullPr rptListadodeBoletos
  loc_A046F7: rptListadodeBoletos.Show from_stack_1, from_stack_2
  loc_A046FC: ExitProcHresult
End Sub

Private Sub ConsultaNrodeOperacionEPagos_Click() 'A012A8
  'Data Table: 53CCB4
  loc_A01278: ImpAdLdRf MemVar_D93400
  loc_A0127B: NewIfNullAd
  loc_A0127E: CastAd
  loc_A01281: FStAdFuncNoPop
  loc_A01284: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A01289: FFree1Ad var_88
  loc_A0128C: LitVar_Missing var_A8
  loc_A0128F: PopAdLdVar
  loc_A01290: LitVarI4
  loc_A01298: PopAdLdVar
  loc_A01299: ImpAdLdRf MemVar_D93400
  loc_A0129C: NewIfNullPr rptConsultadeNroDeOperacionEPAGOS
  loc_A0129F: rptConsultadeNroDeOperacionEPAGOS.Show from_stack_1, from_stack_2
  loc_A012A4: ExitProcHresult
End Sub

Private Sub ListadodeServiciosdeDerechosVarios_Click() 'A05C7C
  'Data Table: 53CCB4
  loc_A05C4C: ImpAdLdRf MemVar_D9393C
  loc_A05C4F: NewIfNullAd
  loc_A05C52: CastAd
  loc_A05C55: FStAdFuncNoPop
  loc_A05C58: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05C5D: FFree1Ad var_88
  loc_A05C60: LitVar_Missing var_A8
  loc_A05C63: PopAdLdVar
  loc_A05C64: LitVarI4
  loc_A05C6C: PopAdLdVar
  loc_A05C6D: ImpAdLdRf MemVar_D9393C
  loc_A05C70: NewIfNullPr rptListadoServiciodeDerechosVarios
  loc_A05C73: rptListadoServiciodeDerechosVarios.Show from_stack_1, from_stack_2
  loc_A05C78: ExitProcHresult
End Sub

Private Sub ListadodeDeudaporAno_Click() 'A04A20
  'Data Table: 53CCB4
  loc_A049F0: ImpAdLdRf MemVar_D93874
  loc_A049F3: NewIfNullAd
  loc_A049F6: CastAd
  loc_A049F9: FStAdFuncNoPop
  loc_A049FC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A04A01: FFree1Ad var_88
  loc_A04A04: LitVar_Missing var_A8
  loc_A04A07: PopAdLdVar
  loc_A04A08: LitVarI4
  loc_A04A10: PopAdLdVar
  loc_A04A11: ImpAdLdRf MemVar_D93874
  loc_A04A14: NewIfNullPr rptListadodeDeudaporAño
  loc_A04A17: rptListadodeDeudaporAño.Show from_stack_1, from_stack_2
  loc_A04A1C: ExitProcHresult
End Sub

Private Sub ListadodeContribuyentesLibredeDeuda_Click() 'A03120
  'Data Table: 53CCB4
  loc_A030F0: ImpAdLdRf MemVar_D93810
  loc_A030F3: NewIfNullAd
  loc_A030F6: CastAd
  loc_A030F9: FStAdFuncNoPop
  loc_A030FC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A03101: FFree1Ad var_88
  loc_A03104: LitVar_Missing var_A8
  loc_A03107: PopAdLdVar
  loc_A03108: LitVarI4
  loc_A03110: PopAdLdVar
  loc_A03111: ImpAdLdRf MemVar_D93810
  loc_A03114: NewIfNullPr rptListadodeContribuyentessinDeuda
  loc_A03117: rptListadodeContribuyentessinDeuda.Show from_stack_1, from_stack_2
  loc_A0311C: ExitProcHresult
End Sub

Private Sub ListadodeAforosporConcepto_Click() 'A045D4
  'Data Table: 53CCB4
  loc_A045A4: ImpAdLdRf MemVar_D93630
  loc_A045A7: NewIfNullAd
  loc_A045AA: CastAd
  loc_A045AD: FStAdFuncNoPop
  loc_A045B0: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A045B5: FFree1Ad var_88
  loc_A045B8: LitVar_Missing var_A8
  loc_A045BB: PopAdLdVar
  loc_A045BC: LitVarI4
  loc_A045C4: PopAdLdVar
  loc_A045C5: ImpAdLdRf MemVar_D93630
  loc_A045C8: NewIfNullPr rptListadodeAforosporConcepto
  loc_A045CB: rptListadodeAforosporConcepto.Show from_stack_1, from_stack_2
  loc_A045D0: ExitProcHresult
  loc_A045D1: Ary1LdCy
End Sub

Private Sub EstadisticadeFacilidaddePago_Click() 'A04C78
  'Data Table: 53CCB4
  loc_A04C48: ImpAdLdRf MemVar_D9352C
  loc_A04C4B: NewIfNullAd
  loc_A04C4E: CastAd
  loc_A04C51: FStAdFuncNoPop
  loc_A04C54: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A04C59: FFree1Ad var_88
  loc_A04C5C: LitVar_Missing var_A8
  loc_A04C5F: PopAdLdVar
  loc_A04C60: LitVarI4
  loc_A04C68: PopAdLdVar
  loc_A04C69: ImpAdLdRf MemVar_D9352C
  loc_A04C6C: NewIfNullPr rptEstadisticadeFacilidaddePago
  loc_A04C6F: rptEstadisticadeFacilidaddePago.Show from_stack_1, from_stack_2
  loc_A04C74: ExitProcHresult
  loc_A04C75: CStr2Ansi
  loc_A04C76: CExtInstUnk
End Sub

Private Sub ResumendeCobranza_Click() 'A05510
  'Data Table: 53CCB4
  loc_A054E0: ImpAdLdRf MemVar_D93D68
  loc_A054E3: NewIfNullAd
  loc_A054E6: CastAd
  loc_A054E9: FStAdFuncNoPop
  loc_A054EC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A054F1: FFree1Ad var_88
  loc_A054F4: LitVar_Missing var_A8
  loc_A054F7: PopAdLdVar
  loc_A054F8: LitVarI4
  loc_A05500: PopAdLdVar
  loc_A05501: ImpAdLdRf MemVar_D93D68
  loc_A05504: NewIfNullPr rptResumendeCobranza
  loc_A05507: rptResumendeCobranza.Show from_stack_1, from_stack_2
  loc_A0550C: ExitProcHresult
  loc_A0550F: CI4Str
End Sub

Private Sub ListadodeDeudoresConApremio_Click() 'A0482C
  'Data Table: 53CCB4
  loc_A047FC: ImpAdLdRf MemVar_D93888
  loc_A047FF: NewIfNullAd
  loc_A04802: CastAd
  loc_A04805: FStAdFuncNoPop
  loc_A04808: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A0480D: FFree1Ad var_88
  loc_A04810: LitVar_Missing var_A8
  loc_A04813: PopAdLdVar
  loc_A04814: LitVarI4
  loc_A0481C: PopAdLdVar
  loc_A0481D: ImpAdLdRf MemVar_D93888
  loc_A04820: NewIfNullPr rptListadodeDeudoresConApremio
  loc_A04823: rptListadodeDeudoresConApremio.Show from_stack_1, from_stack_2
  loc_A04828: ExitProcHresult
  loc_A0482B: ExitProcHresult
End Sub

Private Sub A2988IIB5_Click() 'A04ED0
  'Data Table: 53CCB4
  loc_A04EA0: ImpAdLdRf MemVar_D931E4
  loc_A04EA3: NewIfNullAd
  loc_A04EA6: CastAd
  loc_A04EA9: FStAdFuncNoPop
  loc_A04EAC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A04EB1: FFree1Ad var_88
  loc_A04EB4: LitVar_Missing var_A8
  loc_A04EB7: PopAdLdVar
  loc_A04EB8: LitVarI4
  loc_A04EC0: PopAdLdVar
  loc_A04EC1: ImpAdLdRf MemVar_D931E4
  loc_A04EC4: NewIfNullPr rptA2988IIB5
  loc_A04EC7: rptA2988IIB5.Show from_stack_1, from_stack_2
  loc_A04ECC: ExitProcHresult
End Sub

Private Sub Migracion_Click() '9EA2E0
  'Data Table: 53CCB4
  loc_9EA2BC: ImpAdLdRf MemVar_D9398C
  loc_9EA2BF: NewIfNullAd
  loc_9EA2C2: CastAd
  loc_9EA2C5: FStAdFunc var_88
  loc_9EA2C8: FLdRfVar var_88
  loc_9EA2CB: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EA2D0: ILdRf var_88
  loc_9EA2D3: CastAd
  loc_9EA2D6: ImpAdStAdFunc MemVar_D9398C
  loc_9EA2DA: FFree1Ad var_88
  loc_9EA2DD: ExitProcHresult
End Sub

Private Sub Acuerdo2988AnexoXIX_Click() 'A04AE8
  'Data Table: 53CCB4
  loc_A04AB8: ImpAdLdRf MemVar_D93270
  loc_A04ABB: NewIfNullAd
  loc_A04ABE: CastAd
  loc_A04AC1: FStAdFuncNoPop
  loc_A04AC4: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A04AC9: FFree1Ad var_88
  loc_A04ACC: LitVar_Missing var_A8
  loc_A04ACF: PopAdLdVar
  loc_A04AD0: LitVarI4
  loc_A04AD8: PopAdLdVar
  loc_A04AD9: ImpAdLdRf MemVar_D93270
  loc_A04ADC: NewIfNullPr rptA2988XIX
  loc_A04ADF: rptA2988XIX.Show from_stack_1, from_stack_2
  loc_A04AE4: ExitProcHresult
End Sub

Private Sub Acuerdo2988AnexoXX_Click() 'A00F88
  'Data Table: 53CCB4
  loc_A00F58: ImpAdLdRf MemVar_D93298
  loc_A00F5B: NewIfNullAd
  loc_A00F5E: CastAd
  loc_A00F61: FStAdFuncNoPop
  loc_A00F64: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00F69: FFree1Ad var_88
  loc_A00F6C: LitVar_Missing var_A8
  loc_A00F6F: PopAdLdVar
  loc_A00F70: LitVarI4
  loc_A00F78: PopAdLdVar
  loc_A00F79: ImpAdLdRf MemVar_D93298
  loc_A00F7C: NewIfNullPr rptA2988XX
  loc_A00F7F: rptA2988XX.Show from_stack_1, from_stack_2
  loc_A00F84: ExitProcHresult
  loc_A00F85: StAryRecCopy
End Sub

Private Sub Acuerdo2988AnexoXXI_Click() 'A00E5C
  'Data Table: 53CCB4
  loc_A00E2C: ImpAdLdRf MemVar_D932AC
  loc_A00E2F: NewIfNullAd
  loc_A00E32: CastAd
  loc_A00E35: FStAdFuncNoPop
  loc_A00E38: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00E3D: FFree1Ad var_88
  loc_A00E40: LitVar_Missing var_A8
  loc_A00E43: PopAdLdVar
  loc_A00E44: LitVarI4
  loc_A00E4C: PopAdLdVar
  loc_A00E4D: ImpAdLdRf MemVar_D932AC
  loc_A00E50: NewIfNullPr rptA2988XXI
  loc_A00E53: rptA2988XXI.Show from_stack_1, from_stack_2
  loc_A00E58: ExitProcHresult
End Sub

Private Sub A3328a2_Click() 'A024A0
  'Data Table: 53CCB4
  loc_A02470: ImpAdLdRf MemVar_D931F8
  loc_A02473: NewIfNullAd
  loc_A02476: CastAd
  loc_A02479: FStAdFuncNoPop
  loc_A0247C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A02481: FFree1Ad var_88
  loc_A02484: LitVar_Missing var_A8
  loc_A02487: PopAdLdVar
  loc_A02488: LitVarI4
  loc_A02490: PopAdLdVar
  loc_A02491: ImpAdLdRf MemVar_D931F8
  loc_A02494: NewIfNullPr rptA3328a2
  loc_A02497: rptA3328a2.Show from_stack_1, from_stack_2
  loc_A0249C: ExitProcHresult
End Sub

Private Sub A3949a17_Click() 'A02374
  'Data Table: 53CCB4
  loc_A02344: ImpAdLdRf MemVar_D9320C
  loc_A02347: NewIfNullAd
  loc_A0234A: CastAd
  loc_A0234D: FStAdFuncNoPop
  loc_A02350: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A02355: FFree1Ad var_88
  loc_A02358: LitVar_Missing var_A8
  loc_A0235B: PopAdLdVar
  loc_A0235C: LitVarI4
  loc_A02364: PopAdLdVar
  loc_A02365: ImpAdLdRf MemVar_D9320C
  loc_A02368: NewIfNullPr rptA3949a17
  loc_A0236B: rptA3949a17.Show from_stack_1, from_stack_2
  loc_A02370: ExitProcHresult
End Sub

Private Sub Acuerdo2988AnexoXVIII_Click() 'A04638
  'Data Table: 53CCB4
  loc_A04608: ImpAdLdRf MemVar_D93284
  loc_A0460B: NewIfNullAd
  loc_A0460E: CastAd
  loc_A04611: FStAdFuncNoPop
  loc_A04614: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A04619: FFree1Ad var_88
  loc_A0461C: LitVar_Missing var_A8
  loc_A0461F: PopAdLdVar
  loc_A04620: LitVarI4
  loc_A04628: PopAdLdVar
  loc_A04629: ImpAdLdRf MemVar_D93284
  loc_A0462C: NewIfNullPr rptA2988XVIII
  loc_A0462F: rptA2988XVIII.Show from_stack_1, from_stack_2
  loc_A04634: ExitProcHresult
  loc_A04635: StAryRecMove
End Sub

Private Sub ListadodePlanesdePagoPorFecha_Click() 'A05A24
  'Data Table: 53CCB4
  loc_A059F4: ImpAdLdRf MemVar_D938C4
  loc_A059F7: NewIfNullAd
  loc_A059FA: CastAd
  loc_A059FD: FStAdFuncNoPop
  loc_A05A00: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05A05: FFree1Ad var_88
  loc_A05A08: LitVar_Missing var_A8
  loc_A05A0B: PopAdLdVar
  loc_A05A0C: LitVarI4
  loc_A05A14: PopAdLdVar
  loc_A05A15: ImpAdLdRf MemVar_D938C4
  loc_A05A18: NewIfNullPr rptListadodeFacilidaddePago
  loc_A05A1B: rptListadodeFacilidaddePago.Show from_stack_1, from_stack_2
  loc_A05A20: ExitProcHresult
End Sub

Private Sub ActualizaciondeCuentaCorriente_Click() 'A61680
  'Data Table: 53CCB4
  loc_A61628: LitVar_Missing var_A4
  loc_A6162B: PopAdLdVar
  loc_A6162C: LitVar_Missing var_94
  loc_A6162F: PopAdLdVar
  loc_A61630: ImpAdLdRf MemVar_D93D2C
  loc_A61633: NewIfNullPr frmActualizacionCuentaCorriente
  loc_A61636: frmActualizacionCuentaCorriente.Show from_stack_1, from_stack_2
  loc_A6163B: FLdRfVar var_A8
  loc_A6163E: FLdPr Me
  loc_A61641:  = Me.FontSize
  loc_A61646: FLdPr var_A8
  loc_A61649: LateMemLdVar
  loc_A6164E: FLdRfVar var_AC
  loc_A61651: ImpAdLdRf MemVar_D93D2C
  loc_A61654: NewIfNullPr frmActualizacionCuentaCorriente
  loc_A61657:  = frmActualizacionCuentaCorriente.Name
  loc_A6165C: FLdZeroAd var_AC
  loc_A6165F: CVarStr var_BC
  loc_A61662: HardType
  loc_A61663: NeVarBool
  loc_A61665: FFree1Ad var_A8
  loc_A61668: FFreeVar var_CC = ""
  loc_A6166F: BranchF loc_A6167D
  loc_A61672: ImpAdLdRf MemVar_D93D2C
  loc_A61675: NewIfNullPr frmActualizacionCuentaCorriente
  loc_A61678: frmActualizacionCuentaCorriente.SetFocus
  loc_A6167D: ExitProcHresult
  loc_A6167E: IDvI2
End Sub

Private Sub Acuerdo5662Art14IncC_Click() 'A00C04
  'Data Table: 53CCB4
  loc_A00BD4: ImpAdLdRf MemVar_D932C0
  loc_A00BD7: NewIfNullAd
  loc_A00BDA: CastAd
  loc_A00BDD: FStAdFuncNoPop
  loc_A00BE0: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00BE5: FFree1Ad var_88
  loc_A00BE8: LitVar_Missing var_A8
  loc_A00BEB: PopAdLdVar
  loc_A00BEC: LitVarI4
  loc_A00BF4: PopAdLdVar
  loc_A00BF5: ImpAdLdRf MemVar_D932C0
  loc_A00BF8: NewIfNullPr rptA5662a14Incc
  loc_A00BFB: rptA5662a14Incc.Show from_stack_1, from_stack_2
  loc_A00C00: ExitProcHresult
End Sub

Private Sub Acuerdo5662Art14IncD_Click() 'A00F24
  'Data Table: 53CCB4
  loc_A00EF4: ImpAdLdRf MemVar_D932D4
  loc_A00EF7: NewIfNullAd
  loc_A00EFA: CastAd
  loc_A00EFD: FStAdFuncNoPop
  loc_A00F00: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00F05: FFree1Ad var_88
  loc_A00F08: LitVar_Missing var_A8
  loc_A00F0B: PopAdLdVar
  loc_A00F0C: LitVarI4
  loc_A00F14: PopAdLdVar
  loc_A00F15: ImpAdLdRf MemVar_D932D4
  loc_A00F18: NewIfNullPr rptA5662a14Incd
  loc_A00F1B: rptA5662a14Incd.Show from_stack_1, from_stack_2
  loc_A00F20: ExitProcHresult
End Sub

Private Sub GastoTributario_Click() 'A00560
  'Data Table: 53CCB4
  loc_A00530: ImpAdLdRf MemVar_D93554
  loc_A00533: NewIfNullAd
  loc_A00536: CastAd
  loc_A00539: FStAdFuncNoPop
  loc_A0053C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00541: FFree1Ad var_88
  loc_A00544: LitVar_Missing var_A8
  loc_A00547: PopAdLdVar
  loc_A00548: LitVarI4
  loc_A00550: PopAdLdVar
  loc_A00551: ImpAdLdRf MemVar_D93554
  loc_A00554: NewIfNullPr rptGastoTributario
  loc_A00557: rptGastoTributario.Show from_stack_1, from_stack_2
  loc_A0055C: ExitProcHresult
  loc_A0055D: CastAd
End Sub

Private Sub ListadodeAforosParaElTribunal_Click() 'A00240
  'Data Table: 53CCB4
  loc_A00210: ImpAdLdRf MemVar_D9361C
  loc_A00213: NewIfNullAd
  loc_A00216: CastAd
  loc_A00219: FStAdFuncNoPop
  loc_A0021C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00221: FFree1Ad var_88
  loc_A00224: LitVar_Missing var_A8
  loc_A00227: PopAdLdVar
  loc_A00228: LitVarI4
  loc_A00230: PopAdLdVar
  loc_A00231: ImpAdLdRf MemVar_D9361C
  loc_A00234: NewIfNullPr rptListadodeAforoTribunal
  loc_A00237: rptListadodeAforoTribunal.Show from_stack_1, from_stack_2
  loc_A0023C: ExitProcHresult
  loc_A0023D: LitI2FP 256
End Sub

Private Sub EstadisticadeFacturacionyCobrado_Click() 'A01820
  'Data Table: 53CCB4
  loc_A017F0: ImpAdLdRf MemVar_D936D0
  loc_A017F3: NewIfNullAd
  loc_A017F6: CastAd
  loc_A017F9: FStAdFuncNoPop
  loc_A017FC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A01801: FFree1Ad var_88
  loc_A01804: LitVar_Missing var_A8
  loc_A01807: PopAdLdVar
  loc_A01808: LitVarI4
  loc_A01810: PopAdLdVar
  loc_A01811: ImpAdLdRf MemVar_D936D0
  loc_A01814: NewIfNullPr rptEstadisticadeFacturacionyCobrado
  loc_A01817: rptEstadisticadeFacturacionyCobrado.Show from_stack_1, from_stack_2
  loc_A0181C: ExitProcHresult
End Sub

Private Sub Usuario_Click() 'A5F76C
  'Data Table: 53CCB4
  loc_A5F714: LitVar_Missing var_A4
  loc_A5F717: PopAdLdVar
  loc_A5F718: LitVar_Missing var_94
  loc_A5F71B: PopAdLdVar
  loc_A5F71C: ImpAdLdRf MemVar_D93F38
  loc_A5F71F: NewIfNullPr frmUsuario
  loc_A5F722: frmUsuario.Show from_stack_1, from_stack_2
  loc_A5F727: FLdRfVar var_A8
  loc_A5F72A: FLdPr Me
  loc_A5F72D:  = Me.FontSize
  loc_A5F732: FLdPr var_A8
  loc_A5F735: LateMemLdVar
  loc_A5F73A: FLdRfVar var_AC
  loc_A5F73D: ImpAdLdRf MemVar_D93F38
  loc_A5F740: NewIfNullPr frmUsuario
  loc_A5F743:  = frmUsuario.Name
  loc_A5F748: FLdZeroAd var_AC
  loc_A5F74B: CVarStr var_BC
  loc_A5F74E: HardType
  loc_A5F74F: NeVarBool
  loc_A5F751: FFree1Ad var_A8
  loc_A5F754: FFreeVar var_CC = ""
  loc_A5F75B: BranchF loc_A5F769
  loc_A5F75E: ImpAdLdRf MemVar_D93F38
  loc_A5F761: NewIfNullPr frmUsuario
  loc_A5F764: frmUsuario.SetFocus
  loc_A5F769: ExitProcHresult
End Sub

Private Sub ProcesoBajadeFacilidadActivas_Click() 'A0612C
  'Data Table: 53CCB4
  loc_A060FC: ImpAdLdRf MemVar_D93A68
  loc_A060FF: NewIfNullAd
  loc_A06102: CastAd
  loc_A06105: FStAdFuncNoPop
  loc_A06108: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A0610D: FFree1Ad var_88
  loc_A06110: LitVar_Missing var_A8
  loc_A06113: PopAdLdVar
  loc_A06114: LitVarI4
  loc_A0611C: PopAdLdVar
  loc_A0611D: ImpAdLdRf MemVar_D93A68
  loc_A06120: NewIfNullPr rptProcesoParaDarDeBajaFacilidad
  loc_A06123: rptProcesoParaDarDeBajaFacilidad.Show from_stack_1, from_stack_2
  loc_A06128: ExitProcHresult
End Sub

Private Sub ProcesoCreditosManualesPagosDuplicados_Click() '9EAFF0
  'Data Table: 53CCB4
  loc_9EAFCC: ImpAdLdRf MemVar_D93A7C
  loc_9EAFCF: NewIfNullAd
  loc_9EAFD2: CastAd
  loc_9EAFD5: FStAdFunc var_88
  loc_9EAFD8: FLdRfVar var_88
  loc_9EAFDB: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EAFE0: ILdRf var_88
  loc_9EAFE3: CastAd
  loc_9EAFE6: ImpAdStAdFunc MemVar_D93A7C
  loc_9EAFEA: FFree1Ad var_88
  loc_9EAFED: ExitProcHresult
End Sub

Private Sub ControldelCalculodeLiquidaciondeCementerio_Click() 'A007B8
  'Data Table: 53CCB4
  loc_A00788: ImpAdLdRf MemVar_D93428
  loc_A0078B: NewIfNullAd
  loc_A0078E: CastAd
  loc_A00791: FStAdFuncNoPop
  loc_A00794: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00799: FFree1Ad var_88
  loc_A0079C: LitVar_Missing var_A8
  loc_A0079F: PopAdLdVar
  loc_A007A0: LitVarI4
  loc_A007A8: PopAdLdVar
  loc_A007A9: ImpAdLdRf MemVar_D93428
  loc_A007AC: NewIfNullPr rptControldelCalculodeLiquidaciondeCementerio
  loc_A007AF: rptControldelCalculodeLiquidaciondeCementerio.Show from_stack_1, from_stack_2
  loc_A007B4: ExitProcHresult
End Sub

Private Sub ListadodeApremioParaElTribunal_Click() 'A00DF8
  'Data Table: 53CCB4
  loc_A00DC8: ImpAdLdRf MemVar_D93658
  loc_A00DCB: NewIfNullAd
  loc_A00DCE: CastAd
  loc_A00DD1: FStAdFuncNoPop
  loc_A00DD4: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00DD9: FFree1Ad var_88
  loc_A00DDC: LitVar_Missing var_A8
  loc_A00DDF: PopAdLdVar
  loc_A00DE0: LitVarI4
  loc_A00DE8: PopAdLdVar
  loc_A00DE9: ImpAdLdRf MemVar_D93658
  loc_A00DEC: NewIfNullPr rptListadodeApremioParaTribunal
  loc_A00DEF: rptListadodeApremioParaTribunal.Show from_stack_1, from_stack_2
  loc_A00DF4: ExitProcHresult
End Sub

Private Sub AforosyPagos_Click() 'A031E8
  'Data Table: 53CCB4
  loc_A031B8: ImpAdLdRf MemVar_D93338
  loc_A031BB: NewIfNullAd
  loc_A031BE: CastAd
  loc_A031C1: FStAdFuncNoPop
  loc_A031C4: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A031C9: FFree1Ad var_88
  loc_A031CC: LitVar_Missing var_A8
  loc_A031CF: PopAdLdVar
  loc_A031D0: LitVarI4
  loc_A031D8: PopAdLdVar
  loc_A031D9: ImpAdLdRf MemVar_D93338
  loc_A031DC: NewIfNullPr rptAforosyPagos
  loc_A031DF: rptAforosyPagos.Show from_stack_1, from_stack_2
  loc_A031E4: ExitProcHresult
End Sub

Private Sub GeneracionCuentaCorrienteTasas_Click() 'A612D8
  'Data Table: 53CCB4
  loc_A61280: LitVar_Missing var_A4
  loc_A61283: PopAdLdVar
  loc_A61284: LitVar_Missing var_94
  loc_A61287: PopAdLdVar
  loc_A61288: ImpAdLdRf MemVar_D93D18
  loc_A6128B: NewIfNullPr frmGeneracionCuentaCorrienteTasas
  loc_A6128E: frmGeneracionCuentaCorrienteTasas.Show from_stack_1, from_stack_2
  loc_A61293: FLdRfVar var_A8
  loc_A61296: FLdPr Me
  loc_A61299:  = Me.FontSize
  loc_A6129E: FLdPr var_A8
  loc_A612A1: LateMemLdVar
  loc_A612A6: FLdRfVar var_AC
  loc_A612A9: ImpAdLdRf MemVar_D93D18
  loc_A612AC: NewIfNullPr frmGeneracionCuentaCorrienteTasas
  loc_A612AF:  = frmGeneracionCuentaCorrienteTasas.Name
  loc_A612B4: FLdZeroAd var_AC
  loc_A612B7: CVarStr var_BC
  loc_A612BA: HardType
  loc_A612BB: NeVarBool
  loc_A612BD: FFree1Ad var_A8
  loc_A612C0: FFreeVar var_CC = ""
  loc_A612C7: BranchF loc_A612D5
  loc_A612CA: ImpAdLdRf MemVar_D93D18
  loc_A612CD: NewIfNullPr frmGeneracionCuentaCorrienteTasas
  loc_A612D0: frmGeneracionCuentaCorrienteTasas.SetFocus
  loc_A612D5: ExitProcHresult
End Sub

Private Sub GeneracionCuentaCorrienteComercio_Click() '9EB9E8
  'Data Table: 53CCB4
  loc_9EB9C4: ImpAdLdRf MemVar_D937AC
  loc_9EB9C7: NewIfNullAd
  loc_9EB9CA: CastAd
  loc_9EB9CD: FStAdFunc var_88
  loc_9EB9D0: FLdRfVar var_88
  loc_9EB9D3: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB9D8: ILdRf var_88
  loc_9EB9DB: CastAd
  loc_9EB9DE: ImpAdStAdFunc MemVar_D937AC
  loc_9EB9E2: FFree1Ad var_88
  loc_9EB9E5: ExitProcHresult
  loc_9EB9E6: FStAdFuncNoPop
End Sub

Private Sub ControldelCalculodeLiquidaciondeComercioSintetico_Click() 'A0130C
  'Data Table: 53CCB4
  loc_A012DC: ImpAdLdRf MemVar_D9343C
  loc_A012DF: NewIfNullAd
  loc_A012E2: CastAd
  loc_A012E5: FStAdFuncNoPop
  loc_A012E8: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A012ED: FFree1Ad var_88
  loc_A012F0: LitVar_Missing var_A8
  loc_A012F3: PopAdLdVar
  loc_A012F4: LitVarI4
  loc_A012FC: PopAdLdVar
  loc_A012FD: ImpAdLdRf MemVar_D9343C
  loc_A01300: NewIfNullPr rptControldelCalculodeLiquidaciondeComercioSintetico
  loc_A01303: rptControldelCalculodeLiquidaciondeComercioSintetico.Show from_stack_1, from_stack_2
  loc_A01308: ExitProcHresult
End Sub

Private Sub A3949a18_Click() 'A0243C
  'Data Table: 53CCB4
  loc_A0240C: ImpAdLdRf MemVar_D93220
  loc_A0240F: NewIfNullAd
  loc_A02412: CastAd
  loc_A02415: FStAdFuncNoPop
  loc_A02418: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A0241D: FFree1Ad var_88
  loc_A02420: LitVar_Missing var_A8
  loc_A02423: PopAdLdVar
  loc_A02424: LitVarI4
  loc_A0242C: PopAdLdVar
  loc_A0242D: ImpAdLdRf MemVar_D93220
  loc_A02430: NewIfNullPr rptA3949a18
  loc_A02433: rptA3949a18.Show from_stack_1, from_stack_2
  loc_A02438: ExitProcHresult
End Sub

Private Sub BoletadeApremio_Click() '9EB0A0
  'Data Table: 53CCB4
  loc_9EB07C: ImpAdLdRf MemVar_D93360
  loc_9EB07F: NewIfNullAd
  loc_9EB082: CastAd
  loc_9EB085: FStAdFunc var_88
  loc_9EB088: FLdRfVar var_88
  loc_9EB08B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB090: ILdRf var_88
  loc_9EB093: CastAd
  loc_9EB096: ImpAdStAdFunc MemVar_D93360
  loc_9EB09A: FFree1Ad var_88
  loc_9EB09D: ExitProcHresult
End Sub

Private Sub CuentaCorrienteUnica_Click() 'A61410
  'Data Table: 53CCB4
  loc_A613B8: LitVar_Missing var_A4
  loc_A613BB: PopAdLdVar
  loc_A613BC: LitVar_Missing var_94
  loc_A613BF: PopAdLdVar
  loc_A613C0: ImpAdLdRf MemVar_D9375C
  loc_A613C3: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_A613C6: frmCuentaCorrienteCuitCuil.Show from_stack_1, from_stack_2
  loc_A613CB: FLdRfVar var_A8
  loc_A613CE: FLdPr Me
  loc_A613D1:  = Me.FontSize
  loc_A613D6: FLdPr var_A8
  loc_A613D9: LateMemLdVar
  loc_A613DE: FLdRfVar var_AC
  loc_A613E1: ImpAdLdRf MemVar_D9375C
  loc_A613E4: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_A613E7:  = frmCuentaCorrienteCuitCuil.Name
  loc_A613EC: FLdZeroAd var_AC
  loc_A613EF: CVarStr var_BC
  loc_A613F2: HardType
  loc_A613F3: NeVarBool
  loc_A613F5: FFree1Ad var_A8
  loc_A613F8: FFreeVar var_CC = ""
  loc_A613FF: BranchF loc_A6140D
  loc_A61402: ImpAdLdRf MemVar_D9375C
  loc_A61405: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_A61408: frmCuentaCorrienteCuitCuil.SetFocus
  loc_A6140D: ExitProcHresult
End Sub

Private Sub ErroresdeLiquidaciondeTasas_Click() 'A022AC
  'Data Table: 53CCB4
  loc_A0227C: ImpAdLdRf MemVar_D93784
  loc_A0227F: NewIfNullAd
  loc_A02282: CastAd
  loc_A02285: FStAdFuncNoPop
  loc_A02288: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A0228D: FFree1Ad var_88
  loc_A02290: LitVar_Missing var_A8
  loc_A02293: PopAdLdVar
  loc_A02294: LitVarI4
  loc_A0229C: PopAdLdVar
  loc_A0229D: ImpAdLdRf MemVar_D93784
  loc_A022A0: NewIfNullPr rptErroresdeLiquidaciondeTasas
  loc_A022A3: rptErroresdeLiquidaciondeTasas.Show from_stack_1, from_stack_2
  loc_A022A8: ExitProcHresult
  loc_A022A9: FStI2 arg_6CFF
End Sub

Private Sub CreditosaFavor_Click() 'A5E830
  'Data Table: 53CCB4
  loc_A5E7D8: LitVar_Missing var_A4
  loc_A5E7DB: PopAdLdVar
  loc_A5E7DC: LitVar_Missing var_94
  loc_A5E7DF: PopAdLdVar
  loc_A5E7E0: ImpAdLdRf MemVar_D93694
  loc_A5E7E3: NewIfNullPr frmCreditosaFavor
  loc_A5E7E6: frmCreditosaFavor.Show from_stack_1, from_stack_2
  loc_A5E7EB: FLdRfVar var_A8
  loc_A5E7EE: FLdPr Me
  loc_A5E7F1:  = Me.FontSize
  loc_A5E7F6: FLdPr var_A8
  loc_A5E7F9: LateMemLdVar
  loc_A5E7FE: FLdRfVar var_AC
  loc_A5E801: ImpAdLdRf MemVar_D93694
  loc_A5E804: NewIfNullPr frmCreditosaFavor
  loc_A5E807:  = frmCreditosaFavor.Name
  loc_A5E80C: FLdZeroAd var_AC
  loc_A5E80F: CVarStr var_BC
  loc_A5E812: HardType
  loc_A5E813: NeVarBool
  loc_A5E815: FFree1Ad var_A8
  loc_A5E818: FFreeVar var_CC = ""
  loc_A5E81F: BranchF loc_A5E82D
  loc_A5E822: ImpAdLdRf MemVar_D93694
  loc_A5E825: NewIfNullPr frmCreditosaFavor
  loc_A5E828: frmCreditosaFavor.SetFocus
  loc_A5E82D: ExitProcHresult
  loc_A5E82E: CRec2Uni arg_3C00
End Sub

Private Sub BuscaPagosdeEPagos_Click() '9EA758
  'Data Table: 53CCB4
  loc_9EA734: ImpAdLdRf MemVar_D93374
  loc_9EA737: NewIfNullAd
  loc_9EA73A: CastAd
  loc_9EA73D: FStAdFunc var_88
  loc_9EA740: FLdRfVar var_88
  loc_9EA743: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EA748: ILdRf var_88
  loc_9EA74B: CastAd
  loc_9EA74E: ImpAdStAdFunc MemVar_D93374
  loc_9EA752: FFree1Ad var_88
  loc_9EA755: ExitProcHresult
End Sub

Private Sub JuiciosABM_Click() '9EBF68
  'Data Table: 53CCB4
  loc_9EBF44: ImpAdLdRf MemVar_D935E0
  loc_9EBF47: NewIfNullAd
  loc_9EBF4A: CastAd
  loc_9EBF4D: FStAdFunc var_88
  loc_9EBF50: FLdRfVar var_88
  loc_9EBF53: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EBF58: ILdRf var_88
  loc_9EBF5B: CastAd
  loc_9EBF5E: ImpAdStAdFunc MemVar_D935E0
  loc_9EBF62: FFree1Ad var_88
  loc_9EBF65: ExitProcHresult
End Sub

Private Sub DerechosVarios_Click() '9EC120
  'Data Table: 53CCB4
  loc_9EC0FC: ImpAdLdRf MemVar_D936A8
  loc_9EC0FF: NewIfNullAd
  loc_9EC102: CastAd
  loc_9EC105: FStAdFunc var_88
  loc_9EC108: FLdRfVar var_88
  loc_9EC10B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EC110: ILdRf var_88
  loc_9EC113: CastAd
  loc_9EC116: ImpAdStAdFunc MemVar_D936A8
  loc_9EC11A: FFree1Ad var_88
  loc_9EC11D: ExitProcHresult
  loc_9EC11E: PopTmpLdAd8 arg_3C2E
End Sub

Private Sub A2988IIB5Resumen_Click() 'A01C08
  'Data Table: 53CCB4
  loc_A01BD8: ImpAdLdRf MemVar_D9325C
  loc_A01BDB: NewIfNullAd
  loc_A01BDE: CastAd
  loc_A01BE1: FStAdFuncNoPop
  loc_A01BE4: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A01BE9: FFree1Ad var_88
  loc_A01BEC: LitVar_Missing var_A8
  loc_A01BEF: PopAdLdVar
  loc_A01BF0: LitVarI4
  loc_A01BF8: PopAdLdVar
  loc_A01BF9: ImpAdLdRf MemVar_D9325C
  loc_A01BFC: NewIfNullPr rptA2988IIB5Resumen
  loc_A01BFF: rptA2988IIB5Resumen.Show from_stack_1, from_stack_2
  loc_A01C04: ExitProcHresult
  loc_A01C05: MidStr arg_1B
End Sub

Private Sub ListadodeApremioconCuotasVencidas_Click() 'A02A7C
  'Data Table: 53CCB4
  loc_A02A4C: ImpAdLdRf MemVar_D937D4
  loc_A02A4F: NewIfNullAd
  loc_A02A52: CastAd
  loc_A02A55: FStAdFuncNoPop
  loc_A02A58: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A02A5D: FFree1Ad var_88
  loc_A02A60: LitVar_Missing var_A8
  loc_A02A63: PopAdLdVar
  loc_A02A64: LitVarI4
  loc_A02A6C: PopAdLdVar
  loc_A02A6D: ImpAdLdRf MemVar_D937D4
  loc_A02A70: NewIfNullPr rptListadodeApremioconCuotasVencidas
  loc_A02A73: rptListadodeApremioconCuotasVencidas.Show from_stack_1, from_stack_2
  loc_A02A78: ExitProcHresult
End Sub

Private Sub ModificaciondePlanesdePago_Click() 'A5EDAC
  'Data Table: 53CCB4
  loc_A5ED54: LitVar_Missing var_A4
  loc_A5ED57: PopAdLdVar
  loc_A5ED58: LitVar_Missing var_94
  loc_A5ED5B: PopAdLdVar
  loc_A5ED5C: ImpAdLdRf MemVar_D939B4
  loc_A5ED5F: NewIfNullPr frmModificaciondeFacilidaddePago
  loc_A5ED62: frmModificaciondeFacilidaddePago.Show from_stack_1, from_stack_2
  loc_A5ED67: FLdRfVar var_A8
  loc_A5ED6A: FLdPr Me
  loc_A5ED6D:  = Me.FontSize
  loc_A5ED72: FLdPr var_A8
  loc_A5ED75: LateMemLdVar
  loc_A5ED7A: FLdRfVar var_AC
  loc_A5ED7D: ImpAdLdRf MemVar_D939B4
  loc_A5ED80: NewIfNullPr frmModificaciondeFacilidaddePago
  loc_A5ED83:  = frmModificaciondeFacilidaddePago.Name
  loc_A5ED88: FLdZeroAd var_AC
  loc_A5ED8B: CVarStr var_BC
  loc_A5ED8E: HardType
  loc_A5ED8F: NeVarBool
  loc_A5ED91: FFree1Ad var_A8
  loc_A5ED94: FFreeVar var_CC = ""
  loc_A5ED9B: BranchF loc_A5EDA9
  loc_A5ED9E: ImpAdLdRf MemVar_D939B4
  loc_A5EDA1: NewIfNullPr frmModificaciondeFacilidaddePago
  loc_A5EDA4: frmModificaciondeFacilidaddePago.SetFocus
  loc_A5EDA9: ExitProcHresult
End Sub

Private Sub DatosFijos_Click() 'A034A4
  'Data Table: 53CCB4
  loc_A03474: ImpAdLdRf MemVar_D934A0
  loc_A03477: NewIfNullAd
  loc_A0347A: CastAd
  loc_A0347D: FStAdFuncNoPop
  loc_A03480: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A03485: FFree1Ad var_88
  loc_A03488: LitVar_Missing var_A8
  loc_A0348B: PopAdLdVar
  loc_A0348C: LitVarI4
  loc_A03494: PopAdLdVar
  loc_A03495: ImpAdLdRf MemVar_D934A0
  loc_A03498: NewIfNullPr rptConsultadeDatosFijos
  loc_A0349B: rptConsultadeDatosFijos.Show from_stack_1, from_stack_2
  loc_A034A0: ExitProcHresult
  loc_A034A1: FnLBound
End Sub

Private Sub A3949a22_Click() 'A02310
  'Data Table: 53CCB4
  loc_A022E0: ImpAdLdRf MemVar_D93234
  loc_A022E3: NewIfNullAd
  loc_A022E6: CastAd
  loc_A022E9: FStAdFuncNoPop
  loc_A022EC: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A022F1: FFree1Ad var_88
  loc_A022F4: LitVar_Missing var_A8
  loc_A022F7: PopAdLdVar
  loc_A022F8: LitVarI4
  loc_A02300: PopAdLdVar
  loc_A02301: ImpAdLdRf MemVar_D93234
  loc_A02304: NewIfNullPr rptA3949a22
  loc_A02307: rptA3949a22.Show from_stack_1, from_stack_2
  loc_A0230C: ExitProcHresult
End Sub

Private Sub Prescripcion_Click() 'A5DC9C
  'Data Table: 53CCB4
  loc_A5DC44: LitVar_Missing var_A4
  loc_A5DC47: PopAdLdVar
  loc_A5DC48: LitVar_Missing var_94
  loc_A5DC4B: PopAdLdVar
  loc_A5DC4C: ImpAdLdRf MemVar_D93A54
  loc_A5DC4F: NewIfNullPr frmPrescripcion
  loc_A5DC52: frmPrescripcion.Show from_stack_1, from_stack_2
  loc_A5DC57: FLdRfVar var_A8
  loc_A5DC5A: FLdPr Me
  loc_A5DC5D:  = Me.FontSize
  loc_A5DC62: FLdPr var_A8
  loc_A5DC65: LateMemLdVar
  loc_A5DC6A: FLdRfVar var_AC
  loc_A5DC6D: ImpAdLdRf MemVar_D93A54
  loc_A5DC70: NewIfNullPr frmPrescripcion
  loc_A5DC73:  = frmPrescripcion.Name
  loc_A5DC78: FLdZeroAd var_AC
  loc_A5DC7B: CVarStr var_BC
  loc_A5DC7E: HardType
  loc_A5DC7F: NeVarBool
  loc_A5DC81: FFree1Ad var_A8
  loc_A5DC84: FFreeVar var_CC = ""
  loc_A5DC8B: BranchF loc_A5DC99
  loc_A5DC8E: ImpAdLdRf MemVar_D93A54
  loc_A5DC91: NewIfNullPr frmPrescripcion
  loc_A5DC94: frmPrescripcion.SetFocus
  loc_A5DC99: ExitProcHresult
  loc_A5DC9A: MemLdRfVar from_stack_1.global_15420
End Sub

Private Sub ListadodeBoletosNOprocesados_Click() 'A02BA8
  'Data Table: 53CCB4
  loc_A02B78: ImpAdLdRf MemVar_D937E8
  loc_A02B7B: NewIfNullAd
  loc_A02B7E: CastAd
  loc_A02B81: FStAdFuncNoPop
  loc_A02B84: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A02B89: FFree1Ad var_88
  loc_A02B8C: LitVar_Missing var_A8
  loc_A02B8F: PopAdLdVar
  loc_A02B90: LitVarI4
  loc_A02B98: PopAdLdVar
  loc_A02B99: ImpAdLdRf MemVar_D937E8
  loc_A02B9C: NewIfNullPr rptListadodeBoletosNoProcesados
  loc_A02B9F: rptListadodeBoletosNoProcesados.Show from_stack_1, from_stack_2
  loc_A02BA4: ExitProcHresult
  loc_A02BA7: ExitProcR4
End Sub

Private Sub Acceso_Click() 'A5F634
  'Data Table: 53CCB4
  loc_A5F5DC: LitVar_Missing var_A4
  loc_A5F5DF: PopAdLdVar
  loc_A5F5E0: LitVar_Missing var_94
  loc_A5F5E3: PopAdLdVar
  loc_A5F5E4: ImpAdLdRf MemVar_D93F4C
  loc_A5F5E7: NewIfNullPr frmAcceso
  loc_A5F5EA: frmAcceso.Show from_stack_1, from_stack_2
  loc_A5F5EF: FLdRfVar var_A8
  loc_A5F5F2: FLdPr Me
  loc_A5F5F5:  = Me.FontSize
  loc_A5F5FA: FLdPr var_A8
  loc_A5F5FD: LateMemLdVar
  loc_A5F602: FLdRfVar var_AC
  loc_A5F605: ImpAdLdRf MemVar_D93F4C
  loc_A5F608: NewIfNullPr frmAcceso
  loc_A5F60B:  = frmAcceso.Name
  loc_A5F610: FLdZeroAd var_AC
  loc_A5F613: CVarStr var_BC
  loc_A5F616: HardType
  loc_A5F617: NeVarBool
  loc_A5F619: FFree1Ad var_A8
  loc_A5F61C: FFreeVar var_CC = ""
  loc_A5F623: BranchF loc_A5F631
  loc_A5F626: ImpAdLdRf MemVar_D93F4C
  loc_A5F629: NewIfNullPr frmAcceso
  loc_A5F62C: frmAcceso.SetFocus
  loc_A5F631: ExitProcHresult
End Sub

Private Sub EmisiondeBoletoMasivodeTasa_Click() '9ECB70
  'Data Table: 53CCB4
  loc_9ECB4C: ImpAdLdRf MemVar_D934C8
  loc_9ECB4F: NewIfNullAd
  loc_9ECB52: CastAd
  loc_9ECB55: FStAdFunc var_88
  loc_9ECB58: FLdRfVar var_88
  loc_9ECB5B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9ECB60: ILdRf var_88
  loc_9ECB63: CastAd
  loc_9ECB66: ImpAdStAdFunc MemVar_D934C8
  loc_9ECB6A: FFree1Ad var_88
  loc_9ECB6D: ExitProcHresult
End Sub

Private Sub GeneracionCuentaCorrienteAntena_Click() '9EC6F8
  'Data Table: 53CCB4
  loc_9EC6D4: ImpAdLdRf MemVar_D93568
  loc_9EC6D7: NewIfNullAd
  loc_9EC6DA: CastAd
  loc_9EC6DD: FStAdFunc var_88
  loc_9EC6E0: FLdRfVar var_88
  loc_9EC6E3: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EC6E8: ILdRf var_88
  loc_9EC6EB: CastAd
  loc_9EC6EE: ImpAdStAdFunc MemVar_D93568
  loc_9EC6F2: FFree1Ad var_88
  loc_9EC6F5: ExitProcHresult
  loc_9EC6F6: FLdRfVar arg_3C00
End Sub

Private Sub ConsultadeBoleto_Click() 'A01690
  'Data Table: 53CCB4
  loc_A01660: ImpAdLdRf MemVar_D93720
  loc_A01663: NewIfNullAd
  loc_A01666: CastAd
  loc_A01669: FStAdFuncNoPop
  loc_A0166C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A01671: FFree1Ad var_88
  loc_A01674: LitVar_Missing var_A8
  loc_A01677: PopAdLdVar
  loc_A01678: LitVarI4
  loc_A01680: PopAdLdVar
  loc_A01681: ImpAdLdRf MemVar_D93720
  loc_A01684: NewIfNullPr rptConsultadeBoleto
  loc_A01687: rptConsultadeBoleto.Show from_stack_1, from_stack_2
  loc_A0168C: ExitProcHresult
End Sub

Private Sub ListadodePagosDuplicados_Click() 'A049BC
  'Data Table: 53CCB4
  loc_A0498C: ImpAdLdRf MemVar_D938B0
  loc_A0498F: NewIfNullAd
  loc_A04992: CastAd
  loc_A04995: FStAdFuncNoPop
  loc_A04998: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A0499D: FFree1Ad var_88
  loc_A049A0: LitVar_Missing var_A8
  loc_A049A3: PopAdLdVar
  loc_A049A4: LitVarI4
  loc_A049AC: PopAdLdVar
  loc_A049AD: ImpAdLdRf MemVar_D938B0
  loc_A049B0: NewIfNullPr rptListadodeSaldoaFavor
  loc_A049B3: rptListadodeSaldoaFavor.Show from_stack_1, from_stack_2
  loc_A049B8: ExitProcHresult
End Sub

Private Sub TipodeLiquidacionABM_Click() '9EA5A0
  'Data Table: 53CCB4
  loc_9EA57C: ImpAdLdRf MemVar_D93EFC
  loc_9EA57F: NewIfNullAd
  loc_9EA582: CastAd
  loc_9EA585: FStAdFunc var_88
  loc_9EA588: FLdRfVar var_88
  loc_9EA58B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EA590: ILdRf var_88
  loc_9EA593: CastAd
  loc_9EA596: ImpAdStAdFunc MemVar_D93EFC
  loc_9EA59A: FFree1Ad var_88
  loc_9EA59D: ExitProcHresult
End Sub

Private Sub ListadodeCreditosyDebitosManuales_Click() 'A05830
  'Data Table: 53CCB4
  loc_A05800: ImpAdLdRf MemVar_D93860
  loc_A05803: NewIfNullAd
  loc_A05806: CastAd
  loc_A05809: FStAdFuncNoPop
  loc_A0580C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05811: FFree1Ad var_88
  loc_A05814: LitVar_Missing var_A8
  loc_A05817: PopAdLdVar
  loc_A05818: LitVarI4
  loc_A05820: PopAdLdVar
  loc_A05821: ImpAdLdRf MemVar_D93860
  loc_A05824: NewIfNullPr rptListadodeCreditosyDebitosManuales
  loc_A05827: rptListadodeCreditosyDebitosManuales.Show from_stack_1, from_stack_2
  loc_A0582C: ExitProcHresult
  loc_A0582D: MulR8
End Sub

Private Sub ComparacionEntreLiquidacionyCtaCteTasas_Click() 'A02630
  'Data Table: 53CCB4
  loc_A02600: ImpAdLdRf MemVar_D933EC
  loc_A02603: NewIfNullAd
  loc_A02606: CastAd
  loc_A02609: FStAdFuncNoPop
  loc_A0260C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A02611: FFree1Ad var_88
  loc_A02614: LitVar_Missing var_A8
  loc_A02617: PopAdLdVar
  loc_A02618: LitVarI4
  loc_A02620: PopAdLdVar
  loc_A02621: ImpAdLdRf MemVar_D933EC
  loc_A02624: NewIfNullPr rptControldelCalculodeLiquidaciondeTasasComparacion
  loc_A02627: rptControldelCalculodeLiquidaciondeTasasComparacion.Show from_stack_1, from_stack_2
  loc_A0262C: ExitProcHresult
End Sub

Private Sub CalculodeLiquidacionComercioenGeneral_Click() '9EBD00
  'Data Table: 53CCB4
  loc_9EBCDC: ImpAdLdRf MemVar_D9370C
  loc_9EBCDF: NewIfNullAd
  loc_9EBCE2: CastAd
  loc_9EBCE5: FStAdFunc var_88
  loc_9EBCE8: FLdRfVar var_88
  loc_9EBCEB: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EBCF0: ILdRf var_88
  loc_9EBCF3: CastAd
  loc_9EBCF6: ImpAdStAdFunc MemVar_D9370C
  loc_9EBCFA: FFree1Ad var_88
  loc_9EBCFD: ExitProcHresult
End Sub

Private Sub ListadodeRecaudacionporApremio_Click() 'A04A84
  'Data Table: 53CCB4
  loc_A04A54: ImpAdLdRf MemVar_D938D8
  loc_A04A57: NewIfNullAd
  loc_A04A5A: CastAd
  loc_A04A5D: FStAdFuncNoPop
  loc_A04A60: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A04A65: FFree1Ad var_88
  loc_A04A68: LitVar_Missing var_A8
  loc_A04A6B: PopAdLdVar
  loc_A04A6C: LitVarI4
  loc_A04A74: PopAdLdVar
  loc_A04A75: ImpAdLdRf MemVar_D938D8
  loc_A04A78: NewIfNullPr rptListadodeRecaudacionporApremio
  loc_A04A7B: rptListadodeRecaudacionporApremio.Show from_stack_1, from_stack_2
  loc_A04A80: ExitProcHresult
End Sub

Private Sub CreditoManualPlandePago_Click() '9EA180
  'Data Table: 53CCB4
  loc_9EA15C: ImpAdLdRf MemVar_D93464
  loc_9EA15F: NewIfNullAd
  loc_9EA162: CastAd
  loc_9EA165: FStAdFunc var_88
  loc_9EA168: FLdRfVar var_88
  loc_9EA16B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EA170: ILdRf var_88
  loc_9EA173: CastAd
  loc_9EA176: ImpAdStAdFunc MemVar_D93464
  loc_9EA17A: FFree1Ad var_88
  loc_9EA17D: ExitProcHresult
End Sub

Private Sub A3949a23_Click() 'A01C6C
  'Data Table: 53CCB4
  loc_A01C3C: ImpAdLdRf MemVar_D93248
  loc_A01C3F: NewIfNullAd
  loc_A01C42: CastAd
  loc_A01C45: FStAdFuncNoPop
  loc_A01C48: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A01C4D: FFree1Ad var_88
  loc_A01C50: LitVar_Missing var_A8
  loc_A01C53: PopAdLdVar
  loc_A01C54: LitVarI4
  loc_A01C5C: PopAdLdVar
  loc_A01C5D: ImpAdLdRf MemVar_D93248
  loc_A01C60: NewIfNullPr rptA3949a23
  loc_A01C63: rptA3949a23.Show from_stack_1, from_stack_2
  loc_A01C68: ExitProcHresult
End Sub

Private Sub CapturadeArchivodeEnteRecaudadores_Click() '9EB620
  'Data Table: 53CCB4
  loc_9EB5FC: ImpAdLdRf MemVar_D933C4
  loc_9EB5FF: NewIfNullAd
  loc_9EB602: CastAd
  loc_9EB605: FStAdFunc var_88
  loc_9EB608: FLdRfVar var_88
  loc_9EB60B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB610: ILdRf var_88
  loc_9EB613: CastAd
  loc_9EB616: ImpAdStAdFunc MemVar_D933C4
  loc_9EB61A: FFree1Ad var_88
  loc_9EB61D: ExitProcHresult
End Sub

Private Sub IngresosdeBoletosdeCaja_Click() 'A5DC00
  'Data Table: 53CCB4
  loc_A5DBA8: LitVar_Missing var_A4
  loc_A5DBAB: PopAdLdVar
  loc_A5DBAC: LitVar_Missing var_94
  loc_A5DBAF: PopAdLdVar
  loc_A5DBB0: ImpAdLdRf MemVar_D93E48
  loc_A5DBB3: NewIfNullPr frmIngresoBoletosCaja
  loc_A5DBB6: frmIngresoBoletosCaja.Show from_stack_1, from_stack_2
  loc_A5DBBB: FLdRfVar var_A8
  loc_A5DBBE: FLdPr Me
  loc_A5DBC1:  = Me.FontSize
  loc_A5DBC6: FLdPr var_A8
  loc_A5DBC9: LateMemLdVar
  loc_A5DBCE: FLdRfVar var_AC
  loc_A5DBD1: ImpAdLdRf MemVar_D93E48
  loc_A5DBD4: NewIfNullPr frmIngresoBoletosCaja
  loc_A5DBD7:  = frmIngresoBoletosCaja.Name
  loc_A5DBDC: FLdZeroAd var_AC
  loc_A5DBDF: CVarStr var_BC
  loc_A5DBE2: HardType
  loc_A5DBE3: NeVarBool
  loc_A5DBE5: FFree1Ad var_A8
  loc_A5DBE8: FFreeVar var_CC = ""
  loc_A5DBEF: BranchF loc_A5DBFD
  loc_A5DBF2: ImpAdLdRf MemVar_D93E48
  loc_A5DBF5: NewIfNullPr frmIngresoBoletosCaja
  loc_A5DBF8: frmIngresoBoletosCaja.SetFocus
  loc_A5DBFD: ExitProcHresult
End Sub

Private Sub CalculodeLiquidacionPublicidad_Click() '9EB678
  'Data Table: 53CCB4
  loc_9EB654: ImpAdLdRf MemVar_D933B0
  loc_9EB657: NewIfNullAd
  loc_9EB65A: CastAd
  loc_9EB65D: FStAdFunc var_88
  loc_9EB660: FLdRfVar var_88
  loc_9EB663: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB668: ILdRf var_88
  loc_9EB66B: CastAd
  loc_9EB66E: ImpAdStAdFunc MemVar_D933B0
  loc_9EB672: FFree1Ad var_88
  loc_9EB675: ExitProcHresult
  loc_9EB676: FFree1Ad arg_3C78
End Sub

Private Sub AnulacionBoletosdeRentas_Click() 'A5F6D0
  'Data Table: 53CCB4
  loc_A5F678: LitVar_Missing var_A4
  loc_A5F67B: PopAdLdVar
  loc_A5F67C: LitVar_Missing var_94
  loc_A5F67F: PopAdLdVar
  loc_A5F680: ImpAdLdRf MemVar_D936F8
  loc_A5F683: NewIfNullPr frmAnulacionBoletosdeRentas
  loc_A5F686: frmAnulacionBoletosdeRentas.Show from_stack_1, from_stack_2
  loc_A5F68B: FLdRfVar var_A8
  loc_A5F68E: FLdPr Me
  loc_A5F691:  = Me.FontSize
  loc_A5F696: FLdPr var_A8
  loc_A5F699: LateMemLdVar
  loc_A5F69E: FLdRfVar var_AC
  loc_A5F6A1: ImpAdLdRf MemVar_D936F8
  loc_A5F6A4: NewIfNullPr frmAnulacionBoletosdeRentas
  loc_A5F6A7:  = frmAnulacionBoletosdeRentas.Name
  loc_A5F6AC: FLdZeroAd var_AC
  loc_A5F6AF: CVarStr var_BC
  loc_A5F6B2: HardType
  loc_A5F6B3: NeVarBool
  loc_A5F6B5: FFree1Ad var_A8
  loc_A5F6B8: FFreeVar var_CC = ""
  loc_A5F6BF: BranchF loc_A5F6CD
  loc_A5F6C2: ImpAdLdRf MemVar_D936F8
  loc_A5F6C5: NewIfNullPr frmAnulacionBoletosdeRentas
  loc_A5F6C8: frmAnulacionBoletosdeRentas.SetFocus
  loc_A5F6CD: ExitProcHresult
End Sub

Private Sub Impresoras_Click(Index As Integer) 'A8CAB0
  'Data Table: 53CCB4
  loc_A8CA14: LitI2_Byte 0
  loc_A8CA16: FLdRfVar var_86
  loc_A8CA19: FLdRfVar var_8E
  loc_A8CA1C: FLdPr Me
  loc_A8CA1F: VCallAd Control_ID_Impresoras
  loc_A8CA22: FStAdFunc var_8C
  loc_A8CA25: FLdPr var_8C
  loc_A8CA28: Call 0.Method_Impresoras_ClickC ()
  loc_A8CA2D: FLdI2 var_8E
  loc_A8CA30: LitI2_Byte 1
  loc_A8CA32: SubI2
  loc_A8CA33: FFree1Ad var_8C
  loc_A8CA36: ForI2 var_92
  loc_A8CA3C: FLdI2 var_86
  loc_A8CA3F: ILdI2 Index
  loc_A8CA42: EqI2
  loc_A8CA43: FLdRfVar var_98
  loc_A8CA46: FLdI2 var_86
  loc_A8CA49: FLdPr Me
  loc_A8CA4C: VCallAd Control_ID_Impresoras
  loc_A8CA4F: FStAdFunc var_8C
  loc_A8CA52: FLdPr var_8C
  loc_A8CA55: Set from_stack_2 = Me(from_stack_1)
  loc_A8CA5A: FLdPr var_98
  loc_A8CA5D: Me.Checked = from_stack_1b
  loc_A8CA62: FFreeAd var_8C = ""
  loc_A8CA69: FLdRfVar var_86
  loc_A8CA6C: NextI2 var_92, loc_A8CA3C
  loc_A8CA71: FLdRfVar var_9C
  loc_A8CA74: FLdRfVar var_98
  loc_A8CA77: ILdI2 Index
  loc_A8CA7A: FLdPr Me
  loc_A8CA7D: VCallAd Control_ID_Impresoras
  loc_A8CA80: FStAdFunc var_8C
  loc_A8CA83: FLdPr var_8C
  loc_A8CA86: Set from_stack_2 = Me(from_stack_1)
  loc_A8CA8B: FLdPr var_98
  loc_A8CA8E:  = Me.Caption
  loc_A8CA93: ILdRf var_9C
  loc_A8CA96: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A8CA9B: FStStr var_A0
  loc_A8CA9E: FFreeStr var_9C = ""
  loc_A8CAA5: FFreeAd var_8C = ""
  loc_A8CAAC: ExitProcHresult
  loc_A8CAAD: StAryMove
End Sub

Private Sub Ejecutar_Click() 'A5F460
  'Data Table: 53CCB4
  loc_A5F408: LitVar_Missing var_A4
  loc_A5F40B: PopAdLdVar
  loc_A5F40C: LitVar_Missing var_94
  loc_A5F40F: PopAdLdVar
  loc_A5F410: ImpAdLdRf MemVar_D93F60
  loc_A5F413: NewIfNullPr frmEjecutar
  loc_A5F416: frmEjecutar.Show from_stack_1, from_stack_2
  loc_A5F41B: FLdRfVar var_A8
  loc_A5F41E: FLdPr Me
  loc_A5F421:  = Me.FontSize
  loc_A5F426: FLdPr var_A8
  loc_A5F429: LateMemLdVar
  loc_A5F42E: FLdRfVar var_AC
  loc_A5F431: ImpAdLdRf MemVar_D93F60
  loc_A5F434: NewIfNullPr frmEjecutar
  loc_A5F437:  = frmEjecutar.Name
  loc_A5F43C: FLdZeroAd var_AC
  loc_A5F43F: CVarStr var_BC
  loc_A5F442: HardType
  loc_A5F443: NeVarBool
  loc_A5F445: FFree1Ad var_A8
  loc_A5F448: FFreeVar var_CC = ""
  loc_A5F44F: BranchF loc_A5F45D
  loc_A5F452: ImpAdLdRf MemVar_D93F60
  loc_A5F455: NewIfNullPr frmEjecutar
  loc_A5F458: frmEjecutar.SetFocus
  loc_A5F45D: ExitProcHresult
End Sub

Private Sub ParametrosGeneralesABM_Click() 'A5FF58
  'Data Table: 53CCB4
  loc_A5FF00: LitVar_Missing var_A4
  loc_A5FF03: PopAdLdVar
  loc_A5FF04: LitVar_Missing var_94
  loc_A5FF07: PopAdLdVar
  loc_A5FF08: ImpAdLdRf MemVar_D93E84
  loc_A5FF0B: NewIfNullPr frmParametrosGeneralesABM
  loc_A5FF0E: frmParametrosGeneralesABM.Show from_stack_1, from_stack_2
  loc_A5FF13: FLdRfVar var_A8
  loc_A5FF16: FLdPr Me
  loc_A5FF19:  = Me.FontSize
  loc_A5FF1E: FLdPr var_A8
  loc_A5FF21: LateMemLdVar
  loc_A5FF26: FLdRfVar var_AC
  loc_A5FF29: ImpAdLdRf MemVar_D93E84
  loc_A5FF2C: NewIfNullPr frmParametrosGeneralesABM
  loc_A5FF2F:  = frmParametrosGeneralesABM.Name
  loc_A5FF34: FLdZeroAd var_AC
  loc_A5FF37: CVarStr var_BC
  loc_A5FF3A: HardType
  loc_A5FF3B: NeVarBool
  loc_A5FF3D: FFree1Ad var_A8
  loc_A5FF40: FFreeVar var_CC = ""
  loc_A5FF47: BranchF loc_A5FF55
  loc_A5FF4A: ImpAdLdRf MemVar_D93E84
  loc_A5FF4D: NewIfNullPr frmParametrosGeneralesABM
  loc_A5FF50: frmParametrosGeneralesABM.SetFocus
  loc_A5FF55: ExitProcHresult
  loc_A5FF56: FStFPR4 arg_3C00
End Sub

Private Sub ParametrosRentasABM_Click() '9EB468
  'Data Table: 53CCB4
  loc_9EB444: ImpAdLdRf MemVar_D93A2C
  loc_9EB447: NewIfNullAd
  loc_9EB44A: CastAd
  loc_9EB44D: FStAdFunc var_88
  loc_9EB450: FLdRfVar var_88
  loc_9EB453: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB458: ILdRf var_88
  loc_9EB45B: CastAd
  loc_9EB45E: ImpAdStAdFunc MemVar_D93A2C
  loc_9EB462: FFree1Ad var_88
  loc_9EB465: ExitProcHresult
  loc_9EB466: ModI2
End Sub

Private Sub InteresPorRecargoABM_Click() '9EBFC0
  'Data Table: 53CCB4
  loc_9EBF9C: ImpAdLdRf MemVar_D935CC
  loc_9EBF9F: NewIfNullAd
  loc_9EBFA2: CastAd
  loc_9EBFA5: FStAdFunc var_88
  loc_9EBFA8: FLdRfVar var_88
  loc_9EBFAB: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EBFB0: ILdRf var_88
  loc_9EBFB3: CastAd
  loc_9EBFB6: ImpAdStAdFunc MemVar_D935CC
  loc_9EBFBA: FFree1Ad var_88
  loc_9EBFBD: ExitProcHresult
  loc_9EBFBE: ModI2
End Sub

Private Sub DescuentoporConceptoABM_Click() 'A61374
  'Data Table: 53CCB4
  loc_A6131C: LitVar_Missing var_A4
  loc_A6131F: PopAdLdVar
  loc_A61320: LitVar_Missing var_94
  loc_A61323: PopAdLdVar
  loc_A61324: ImpAdLdRf MemVar_D93CF0
  loc_A61327: NewIfNullPr frmDescuentoporConceptoABM
  loc_A6132A: frmDescuentoporConceptoABM.Show from_stack_1, from_stack_2
  loc_A6132F: FLdRfVar var_A8
  loc_A61332: FLdPr Me
  loc_A61335:  = Me.FontSize
  loc_A6133A: FLdPr var_A8
  loc_A6133D: LateMemLdVar
  loc_A61342: FLdRfVar var_AC
  loc_A61345: ImpAdLdRf MemVar_D93CF0
  loc_A61348: NewIfNullPr frmDescuentoporConceptoABM
  loc_A6134B:  = frmDescuentoporConceptoABM.Name
  loc_A61350: FLdZeroAd var_AC
  loc_A61353: CVarStr var_BC
  loc_A61356: HardType
  loc_A61357: NeVarBool
  loc_A61359: FFree1Ad var_A8
  loc_A6135C: FFreeVar var_CC = ""
  loc_A61363: BranchF loc_A61371
  loc_A61366: ImpAdLdRf MemVar_D93CF0
  loc_A61369: NewIfNullPr frmDescuentoporConceptoABM
  loc_A6136C: frmDescuentoporConceptoABM.SetFocus
  loc_A61371: ExitProcHresult
  loc_A61372: ImpAdLdFPR4 MemVar_0
End Sub

Private Sub EnteRecaudadorABM_Click() '9EBC50
  'Data Table: 53CCB4
  loc_9EBC2C: ImpAdLdRf MemVar_D934C8
  loc_9EBC2F: NewIfNullAd
  loc_9EBC32: CastAd
  loc_9EBC35: FStAdFunc var_88
  loc_9EBC38: FLdRfVar var_88
  loc_9EBC3B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EBC40: ILdRf var_88
  loc_9EBC43: CastAd
  loc_9EBC46: ImpAdStAdFunc MemVar_D934C8
  loc_9EBC4A: FFree1Ad var_88
  loc_9EBC4D: ExitProcHresult
End Sub

Private Sub ExcepcionABM_Click() '9EBBA0
  'Data Table: 53CCB4
  loc_9EBB7C: ImpAdLdRf MemVar_D93798
  loc_9EBB7F: NewIfNullAd
  loc_9EBB82: CastAd
  loc_9EBB85: FStAdFunc var_88
  loc_9EBB88: FLdRfVar var_88
  loc_9EBB8B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EBB90: ILdRf var_88
  loc_9EBB93: CastAd
  loc_9EBB96: ImpAdStAdFunc MemVar_D93798
  loc_9EBB9A: FFree1Ad var_88
  loc_9EBB9D: ExitProcHresult
End Sub

Private Sub ConceptoABM_Click() 'A606A8
  'Data Table: 53CCB4
  loc_A60650: LitVar_Missing var_A4
  loc_A60653: PopAdLdVar
  loc_A60654: LitVar_Missing var_94
  loc_A60657: PopAdLdVar
  loc_A60658: ImpAdLdRf MemVar_D93D90
  loc_A6065B: NewIfNullPr frmConceptoABM
  loc_A6065E: frmConceptoABM.Show from_stack_1, from_stack_2
  loc_A60663: FLdRfVar var_A8
  loc_A60666: FLdPr Me
  loc_A60669:  = Me.FontSize
  loc_A6066E: FLdPr var_A8
  loc_A60671: LateMemLdVar
  loc_A60676: FLdRfVar var_AC
  loc_A60679: ImpAdLdRf MemVar_D93D90
  loc_A6067C: NewIfNullPr frmConceptoABM
  loc_A6067F:  = frmConceptoABM.Name
  loc_A60684: FLdZeroAd var_AC
  loc_A60687: CVarStr var_BC
  loc_A6068A: HardType
  loc_A6068B: NeVarBool
  loc_A6068D: FFree1Ad var_A8
  loc_A60690: FFreeVar var_CC = ""
  loc_A60697: BranchF loc_A606A5
  loc_A6069A: ImpAdLdRf MemVar_D93D90
  loc_A6069D: NewIfNullPr frmConceptoABM
  loc_A606A0: frmConceptoABM.SetFocus
  loc_A606A5: ExitProcHresult
  loc_A606A6: FLdPr arg_3C08
End Sub

Private Sub CalleABM_Click() 'A601C8
  'Data Table: 53CCB4
  loc_A60170: LitVar_Missing var_A4
  loc_A60173: PopAdLdVar
  loc_A60174: LitVar_Missing var_94
  loc_A60177: PopAdLdVar
  loc_A60178: ImpAdLdRf MemVar_D93CDC
  loc_A6017B: NewIfNullPr frmCalleABM
  loc_A6017E: frmCalleABM.Show from_stack_1, from_stack_2
  loc_A60183: FLdRfVar var_A8
  loc_A60186: FLdPr Me
  loc_A60189:  = Me.FontSize
  loc_A6018E: FLdPr var_A8
  loc_A60191: LateMemLdVar
  loc_A60196: FLdRfVar var_AC
  loc_A60199: ImpAdLdRf MemVar_D93CDC
  loc_A6019C: NewIfNullPr frmCalleABM
  loc_A6019F:  = frmCalleABM.Name
  loc_A601A4: FLdZeroAd var_AC
  loc_A601A7: CVarStr var_BC
  loc_A601AA: HardType
  loc_A601AB: NeVarBool
  loc_A601AD: FFree1Ad var_A8
  loc_A601B0: FFreeVar var_CC = ""
  loc_A601B7: BranchF loc_A601C5
  loc_A601BA: ImpAdLdRf MemVar_D93CDC
  loc_A601BD: NewIfNullPr frmCalleABM
  loc_A601C0: frmCalleABM.SetFocus
  loc_A601C5: ExitProcHresult
  loc_A601C6: CVarI2 arg_3CFF
End Sub

Private Sub BarrioABM_Click() 'A6087C
  'Data Table: 53CCB4
  loc_A60824: LitVar_Missing var_A4
  loc_A60827: PopAdLdVar
  loc_A60828: LitVar_Missing var_94
  loc_A6082B: PopAdLdVar
  loc_A6082C: ImpAdLdRf MemVar_D93CB4
  loc_A6082F: NewIfNullPr frmBarrioABM
  loc_A60832: frmBarrioABM.Show from_stack_1, from_stack_2
  loc_A60837: FLdRfVar var_A8
  loc_A6083A: FLdPr Me
  loc_A6083D:  = Me.FontSize
  loc_A60842: FLdPr var_A8
  loc_A60845: LateMemLdVar
  loc_A6084A: FLdRfVar var_AC
  loc_A6084D: ImpAdLdRf MemVar_D93CB4
  loc_A60850: NewIfNullPr frmBarrioABM
  loc_A60853:  = frmBarrioABM.Name
  loc_A60858: FLdZeroAd var_AC
  loc_A6085B: CVarStr var_BC
  loc_A6085E: HardType
  loc_A6085F: NeVarBool
  loc_A60861: FFree1Ad var_A8
  loc_A60864: FFreeVar var_CC = ""
  loc_A6086B: BranchF loc_A60879
  loc_A6086E: ImpAdLdRf MemVar_D93CB4
  loc_A60871: NewIfNullPr frmBarrioABM
  loc_A60874: frmBarrioABM.SetFocus
  loc_A60879: ExitProcHresult
End Sub

Private Sub LocalidadABM_Click() 'A5DAC8
  'Data Table: 53CCB4
  loc_A5DA70: LitVar_Missing var_A4
  loc_A5DA73: PopAdLdVar
  loc_A5DA74: LitVar_Missing var_94
  loc_A5DA77: PopAdLdVar
  loc_A5DA78: ImpAdLdRf MemVar_D93E5C
  loc_A5DA7B: NewIfNullPr frmLocalidadABM
  loc_A5DA7E: frmLocalidadABM.Show from_stack_1, from_stack_2
  loc_A5DA83: FLdRfVar var_A8
  loc_A5DA86: FLdPr Me
  loc_A5DA89:  = Me.FontSize
  loc_A5DA8E: FLdPr var_A8
  loc_A5DA91: LateMemLdVar
  loc_A5DA96: FLdRfVar var_AC
  loc_A5DA99: ImpAdLdRf MemVar_D93E5C
  loc_A5DA9C: NewIfNullPr frmLocalidadABM
  loc_A5DA9F:  = frmLocalidadABM.Name
  loc_A5DAA4: FLdZeroAd var_AC
  loc_A5DAA7: CVarStr var_BC
  loc_A5DAAA: HardType
  loc_A5DAAB: NeVarBool
  loc_A5DAAD: FFree1Ad var_A8
  loc_A5DAB0: FFreeVar var_CC = ""
  loc_A5DAB7: BranchF loc_A5DAC5
  loc_A5DABA: ImpAdLdRf MemVar_D93E5C
  loc_A5DABD: NewIfNullPr frmLocalidadABM
  loc_A5DAC0: frmLocalidadABM.SetFocus
  loc_A5DAC5: ExitProcHresult
End Sub

Private Sub ServDevaABM_Click() '9EB150
  'Data Table: 53CCB4
  loc_9EB12C: ImpAdLdRf MemVar_D93B44
  loc_9EB12F: NewIfNullAd
  loc_9EB132: CastAd
  loc_9EB135: FStAdFunc var_88
  loc_9EB138: FLdRfVar var_88
  loc_9EB13B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB140: ILdRf var_88
  loc_9EB143: CastAd
  loc_9EB146: ImpAdStAdFunc MemVar_D93B44
  loc_9EB14A: FFree1Ad var_88
  loc_9EB14D: ExitProcHresult
  loc_9EB14E: FStAdFuncNoPop
End Sub

Private Sub TipoFapaABM_Click() 'A5FB14
  'Data Table: 53CCB4
  loc_A5FABC: LitVar_Missing var_A4
  loc_A5FABF: PopAdLdVar
  loc_A5FAC0: LitVar_Missing var_94
  loc_A5FAC3: PopAdLdVar
  loc_A5FAC4: ImpAdLdRf MemVar_D93F10
  loc_A5FAC7: NewIfNullPr frmTipoFapaABM
  loc_A5FACA: frmTipoFapaABM.Show from_stack_1, from_stack_2
  loc_A5FACF: FLdRfVar var_A8
  loc_A5FAD2: FLdPr Me
  loc_A5FAD5:  = Me.FontSize
  loc_A5FADA: FLdPr var_A8
  loc_A5FADD: LateMemLdVar
  loc_A5FAE2: FLdRfVar var_AC
  loc_A5FAE5: ImpAdLdRf MemVar_D93F10
  loc_A5FAE8: NewIfNullPr frmTipoFapaABM
  loc_A5FAEB:  = frmTipoFapaABM.Name
  loc_A5FAF0: FLdZeroAd var_AC
  loc_A5FAF3: CVarStr var_BC
  loc_A5FAF6: HardType
  loc_A5FAF7: NeVarBool
  loc_A5FAF9: FFree1Ad var_A8
  loc_A5FAFC: FFreeVar var_CC = ""
  loc_A5FB03: BranchF loc_A5FB11
  loc_A5FB06: ImpAdLdRf MemVar_D93F10
  loc_A5FB09: NewIfNullPr frmTipoFapaABM
  loc_A5FB0C: frmTipoFapaABM.SetFocus
  loc_A5FB11: ExitProcHresult
  loc_A5FB12: IDvI2
End Sub

Private Sub TipoMoviABM_Click() '9EAF98
  'Data Table: 53CCB4
  loc_9EAF74: ImpAdLdRf MemVar_D93B58
  loc_9EAF77: NewIfNullAd
  loc_9EAF7A: CastAd
  loc_9EAF7D: FStAdFunc var_88
  loc_9EAF80: FLdRfVar var_88
  loc_9EAF83: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EAF88: ILdRf var_88
  loc_9EAF8B: CastAd
  loc_9EAF8E: ImpAdStAdFunc MemVar_D93B58
  loc_9EAF92: FFree1Ad var_88
  loc_9EAF95: ExitProcHresult
End Sub

Private Sub EstadoInmuebleABM_Click() 'A6123C
  'Data Table: 53CCB4
  loc_A611E4: LitVar_Missing var_A4
  loc_A611E7: PopAdLdVar
  loc_A611E8: LitVar_Missing var_94
  loc_A611EB: PopAdLdVar
  loc_A611EC: ImpAdLdRf MemVar_D93D04
  loc_A611EF: NewIfNullPr frmEstadoInmuebleABM
  loc_A611F2: frmEstadoInmuebleABM.Show from_stack_1, from_stack_2
  loc_A611F7: FLdRfVar var_A8
  loc_A611FA: FLdPr Me
  loc_A611FD:  = Me.FontSize
  loc_A61202: FLdPr var_A8
  loc_A61205: LateMemLdVar
  loc_A6120A: FLdRfVar var_AC
  loc_A6120D: ImpAdLdRf MemVar_D93D04
  loc_A61210: NewIfNullPr frmEstadoInmuebleABM
  loc_A61213:  = frmEstadoInmuebleABM.Name
  loc_A61218: FLdZeroAd var_AC
  loc_A6121B: CVarStr var_BC
  loc_A6121E: HardType
  loc_A6121F: NeVarBool
  loc_A61221: FFree1Ad var_A8
  loc_A61224: FFreeVar var_CC = ""
  loc_A6122B: BranchF loc_A61239
  loc_A6122E: ImpAdLdRf MemVar_D93D04
  loc_A61231: NewIfNullPr frmEstadoInmuebleABM
  loc_A61234: frmEstadoInmuebleABM.SetFocus
  loc_A61239: ExitProcHresult
End Sub

Private Sub ZonadeInmuebleABM_Click() 'A5F3C4
  'Data Table: 53CCB4
  loc_A5F36C: LitVar_Missing var_A4
  loc_A5F36F: PopAdLdVar
  loc_A5F370: LitVar_Missing var_94
  loc_A5F373: PopAdLdVar
  loc_A5F374: ImpAdLdRf MemVar_D93F74
  loc_A5F377: NewIfNullPr frmZonadeInmuebleABM
  loc_A5F37A: frmZonadeInmuebleABM.Show from_stack_1, from_stack_2
  loc_A5F37F: FLdRfVar var_A8
  loc_A5F382: FLdPr Me
  loc_A5F385:  = Me.FontSize
  loc_A5F38A: FLdPr var_A8
  loc_A5F38D: LateMemLdVar
  loc_A5F392: FLdRfVar var_AC
  loc_A5F395: ImpAdLdRf MemVar_D93F74
  loc_A5F398: NewIfNullPr frmZonadeInmuebleABM
  loc_A5F39B:  = frmZonadeInmuebleABM.Name
  loc_A5F3A0: FLdZeroAd var_AC
  loc_A5F3A3: CVarStr var_BC
  loc_A5F3A6: HardType
  loc_A5F3A7: NeVarBool
  loc_A5F3A9: FFree1Ad var_A8
  loc_A5F3AC: FFreeVar var_CC = ""
  loc_A5F3B3: BranchF loc_A5F3C1
  loc_A5F3B6: ImpAdLdRf MemVar_D93F74
  loc_A5F3B9: NewIfNullPr frmZonadeInmuebleABM
  loc_A5F3BC: frmZonadeInmuebleABM.SetFocus
  loc_A5F3C1: ExitProcHresult
End Sub

Private Sub ServCataABM_Click() 'A5FC4C
  'Data Table: 53CCB4
  loc_A5FBF4: LitVar_Missing var_A4
  loc_A5FBF7: PopAdLdVar
  loc_A5FBF8: LitVar_Missing var_94
  loc_A5FBFB: PopAdLdVar
  loc_A5FBFC: ImpAdLdRf MemVar_D93EE8
  loc_A5FBFF: NewIfNullPr frmServCataABM
  loc_A5FC02: frmServCataABM.Show from_stack_1, from_stack_2
  loc_A5FC07: FLdRfVar var_A8
  loc_A5FC0A: FLdPr Me
  loc_A5FC0D:  = Me.FontSize
  loc_A5FC12: FLdPr var_A8
  loc_A5FC15: LateMemLdVar
  loc_A5FC1A: FLdRfVar var_AC
  loc_A5FC1D: ImpAdLdRf MemVar_D93EE8
  loc_A5FC20: NewIfNullPr frmServCataABM
  loc_A5FC23:  = frmServCataABM.Name
  loc_A5FC28: FLdZeroAd var_AC
  loc_A5FC2B: CVarStr var_BC
  loc_A5FC2E: HardType
  loc_A5FC2F: NeVarBool
  loc_A5FC31: FFree1Ad var_A8
  loc_A5FC34: FFreeVar var_CC = ""
  loc_A5FC3B: BranchF loc_A5FC49
  loc_A5FC3E: ImpAdLdRf MemVar_D93EE8
  loc_A5FC41: NewIfNullPr frmServCataABM
  loc_A5FC44: frmServCataABM.SetFocus
  loc_A5FC49: ExitProcHresult
  loc_A5FC4A: FLdR8 arg_3C00
End Sub

Private Sub InmuebleABM_Click() '9AF110
  'Data Table: 53CCB4
  loc_9AF10C: ExitProcHresult
End Sub

Private Sub TranComeABM_Click() '9EAAC8
  'Data Table: 53CCB4
  loc_9EAAA4: ImpAdLdRf MemVar_D93B6C
  loc_9EAAA7: NewIfNullAd
  loc_9EAAAA: CastAd
  loc_9EAAAD: FStAdFunc var_88
  loc_9EAAB0: FLdRfVar var_88
  loc_9EAAB3: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EAAB8: ILdRf var_88
  loc_9EAABB: CastAd
  loc_9EAABE: ImpAdStAdFunc MemVar_D93B6C
  loc_9EAAC2: FFree1Ad var_88
  loc_9EAAC5: ExitProcHresult
End Sub

Private Sub ServCemeABM_Click() '9EB048
  'Data Table: 53CCB4
  loc_9EB024: ImpAdLdRf MemVar_D93B30
  loc_9EB027: NewIfNullAd
  loc_9EB02A: CastAd
  loc_9EB02D: FStAdFunc var_88
  loc_9EB030: FLdRfVar var_88
  loc_9EB033: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB038: ILdRf var_88
  loc_9EB03B: CastAd
  loc_9EB03E: ImpAdStAdFunc MemVar_D93B30
  loc_9EB042: FFree1Ad var_88
  loc_9EB045: ExitProcHresult
  loc_9EB046: FStI2 arg_3C00
End Sub

Private Sub TipoSepuABM_Click() 'A5F9DC
  'Data Table: 53CCB4
  loc_A5F984: LitVar_Missing var_A4
  loc_A5F987: PopAdLdVar
  loc_A5F988: LitVar_Missing var_94
  loc_A5F98B: PopAdLdVar
  loc_A5F98C: ImpAdLdRf MemVar_D93F24
  loc_A5F98F: NewIfNullPr frmTipoSepuABM
  loc_A5F992: frmTipoSepuABM.Show from_stack_1, from_stack_2
  loc_A5F997: FLdRfVar var_A8
  loc_A5F99A: FLdPr Me
  loc_A5F99D:  = Me.FontSize
  loc_A5F9A2: FLdPr var_A8
  loc_A5F9A5: LateMemLdVar
  loc_A5F9AA: FLdRfVar var_AC
  loc_A5F9AD: ImpAdLdRf MemVar_D93F24
  loc_A5F9B0: NewIfNullPr frmTipoSepuABM
  loc_A5F9B3:  = frmTipoSepuABM.Name
  loc_A5F9B8: FLdZeroAd var_AC
  loc_A5F9BB: CVarStr var_BC
  loc_A5F9BE: HardType
  loc_A5F9BF: NeVarBool
  loc_A5F9C1: FFree1Ad var_A8
  loc_A5F9C4: FFreeVar var_CC = ""
  loc_A5F9CB: BranchF loc_A5F9D9
  loc_A5F9CE: ImpAdLdRf MemVar_D93F24
  loc_A5F9D1: NewIfNullPr frmTipoSepuABM
  loc_A5F9D4: frmTipoSepuABM.SetFocus
  loc_A5F9D9: ExitProcHresult
End Sub

Private Sub RegistrodeCementerioABM_Click() 'A5FD84
  'Data Table: 53CCB4
  loc_A5FD2C: LitVar_Missing var_A4
  loc_A5FD2F: PopAdLdVar
  loc_A5FD30: LitVar_Missing var_94
  loc_A5FD33: PopAdLdVar
  loc_A5FD34: ImpAdLdRf MemVar_D93EC0
  loc_A5FD37: NewIfNullPr frmRegistrodeCementerioABM
  loc_A5FD3A: frmRegistrodeCementerioABM.Show from_stack_1, from_stack_2
  loc_A5FD3F: FLdRfVar var_A8
  loc_A5FD42: FLdPr Me
  loc_A5FD45:  = Me.FontSize
  loc_A5FD4A: FLdPr var_A8
  loc_A5FD4D: LateMemLdVar
  loc_A5FD52: FLdRfVar var_AC
  loc_A5FD55: ImpAdLdRf MemVar_D93EC0
  loc_A5FD58: NewIfNullPr frmRegistrodeCementerioABM
  loc_A5FD5B:  = frmRegistrodeCementerioABM.Name
  loc_A5FD60: FLdZeroAd var_AC
  loc_A5FD63: CVarStr var_BC
  loc_A5FD66: HardType
  loc_A5FD67: NeVarBool
  loc_A5FD69: FFree1Ad var_A8
  loc_A5FD6C: FFreeVar var_CC = ""
  loc_A5FD73: BranchF loc_A5FD81
  loc_A5FD76: ImpAdLdRf MemVar_D93EC0
  loc_A5FD79: NewIfNullPr frmRegistrodeCementerioABM
  loc_A5FD7C: frmRegistrodeCementerioABM.SetFocus
  loc_A5FD81: ExitProcHresult
End Sub

Private Sub TranDifuABM_Click() '9EAB20
  'Data Table: 53CCB4
  loc_9EAAFC: ImpAdLdRf MemVar_D93B80
  loc_9EAAFF: NewIfNullAd
  loc_9EAB02: CastAd
  loc_9EAB05: FStAdFunc var_88
  loc_9EAB08: FLdRfVar var_88
  loc_9EAB0B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EAB10: ILdRf var_88
  loc_9EAB13: CastAd
  loc_9EAB16: ImpAdStAdFunc MemVar_D93B80
  loc_9EAB1A: FFree1Ad var_88
  loc_9EAB1D: ExitProcHresult
  loc_9EAB1E: LitI2 15360
End Sub

Private Sub TrasladodeDifuntosABM_Click() '9AF1E0
  'Data Table: 53CCB4
  loc_9AF1DC: ExitProcHresult
End Sub

Private Sub ListadoporUbicacion_Click() 'A056A0
  'Data Table: 53CCB4
  loc_A05670: ImpAdLdRf MemVar_D93978
  loc_A05673: NewIfNullAd
  loc_A05676: CastAd
  loc_A05679: FStAdFuncNoPop
  loc_A0567C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05681: FFree1Ad var_88
  loc_A05684: LitVar_Missing var_A8
  loc_A05687: PopAdLdVar
  loc_A05688: LitVarI4
  loc_A05690: PopAdLdVar
  loc_A05691: ImpAdLdRf MemVar_D93978
  loc_A05694: NewIfNullPr rptUbicaciondeDifuntos
  loc_A05697: rptUbicaciondeDifuntos.Show from_stack_1, from_stack_2
  loc_A0569C: ExitProcHresult
End Sub

Private Sub ListadoporTipodeSepultura_Click() 'A05E0C
  'Data Table: 53CCB4
  loc_A05DDC: ImpAdLdRf MemVar_D93964
  loc_A05DDF: NewIfNullAd
  loc_A05DE2: CastAd
  loc_A05DE5: FStAdFuncNoPop
  loc_A05DE8: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05DED: FFree1Ad var_88
  loc_A05DF0: LitVar_Missing var_A8
  loc_A05DF3: PopAdLdVar
  loc_A05DF4: LitVarI4
  loc_A05DFC: PopAdLdVar
  loc_A05DFD: ImpAdLdRf MemVar_D93964
  loc_A05E00: NewIfNullPr rptListadoporTipodeSepultura
  loc_A05E03: rptListadoporTipodeSepultura.Show from_stack_1, from_stack_2
  loc_A05E08: ExitProcHresult
  loc_A05E09: MemStI2 global_1702
End Sub

Private Sub ListadodeVencimientosdeConcesiones_Click() 'A05C18
  'Data Table: 53CCB4
  loc_A05BE8: ImpAdLdRf MemVar_D93950
  loc_A05BEB: NewIfNullAd
  loc_A05BEE: CastAd
  loc_A05BF1: FStAdFuncNoPop
  loc_A05BF4: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05BF9: FFree1Ad var_88
  loc_A05BFC: LitVar_Missing var_A8
  loc_A05BFF: PopAdLdVar
  loc_A05C00: LitVarI4
  loc_A05C08: PopAdLdVar
  loc_A05C09: ImpAdLdRf MemVar_D93950
  loc_A05C0C: NewIfNullPr rptListadodeVencimientodeConcesiones
  loc_A05C0F: rptListadodeVencimientodeConcesiones.Show from_stack_1, from_stack_2
  loc_A05C14: ExitProcHresult
End Sub

Private Sub ListadodeControldeCementerio_Click() 'A03F30
  'Data Table: 53CCB4
  loc_A03F00: ImpAdLdRf MemVar_D93838
  loc_A03F03: NewIfNullAd
  loc_A03F06: CastAd
  loc_A03F09: FStAdFuncNoPop
  loc_A03F0C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A03F11: FFree1Ad var_88
  loc_A03F14: LitVar_Missing var_A8
  loc_A03F17: PopAdLdVar
  loc_A03F18: LitVarI4
  loc_A03F20: PopAdLdVar
  loc_A03F21: ImpAdLdRf MemVar_D93838
  loc_A03F24: NewIfNullPr rptListadodeControldeCementerio
  loc_A03F27: rptListadodeControldeCementerio.Show from_stack_1, from_stack_2
  loc_A03F2C: ExitProcHresult
End Sub

Private Sub ListadodeExpensasAforadas_Click() 'A04890
  'Data Table: 53CCB4
  loc_A04860: ImpAdLdRf MemVar_D9389C
  loc_A04863: NewIfNullAd
  loc_A04866: CastAd
  loc_A04869: FStAdFuncNoPop
  loc_A0486C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A04871: FFree1Ad var_88
  loc_A04874: LitVar_Missing var_A8
  loc_A04877: PopAdLdVar
  loc_A04878: LitVarI4
  loc_A04880: PopAdLdVar
  loc_A04881: ImpAdLdRf MemVar_D9389C
  loc_A04884: NewIfNullPr rptListadodeExpensasAforadas
  loc_A04887: rptListadodeExpensasAforadas.Show from_stack_1, from_stack_2
  loc_A0488C: ExitProcHresult
End Sub

Private Sub DeudoresVariosABM_Click() '9AEC98
  'Data Table: 53CCB4
  loc_9AEC94: ExitProcHresult
  loc_9AEC95: MemStI2 global_872
End Sub

Private Sub PersonaABM_Click() 'A5FEBC
  'Data Table: 53CCB4
  loc_A5FE64: LitVar_Missing var_A4
  loc_A5FE67: PopAdLdVar
  loc_A5FE68: LitVar_Missing var_94
  loc_A5FE6B: PopAdLdVar
  loc_A5FE6C: ImpAdLdRf MemVar_D93E98
  loc_A5FE6F: NewIfNullPr frmPersonaABM
  loc_A5FE72: frmPersonaABM.Show from_stack_1, from_stack_2
  loc_A5FE77: FLdRfVar var_A8
  loc_A5FE7A: FLdPr Me
  loc_A5FE7D:  = Me.FontSize
  loc_A5FE82: FLdPr var_A8
  loc_A5FE85: LateMemLdVar
  loc_A5FE8A: FLdRfVar var_AC
  loc_A5FE8D: ImpAdLdRf MemVar_D93E98
  loc_A5FE90: NewIfNullPr frmPersonaABM
  loc_A5FE93:  = frmPersonaABM.Name
  loc_A5FE98: FLdZeroAd var_AC
  loc_A5FE9B: CVarStr var_BC
  loc_A5FE9E: HardType
  loc_A5FE9F: NeVarBool
  loc_A5FEA1: FFree1Ad var_A8
  loc_A5FEA4: FFreeVar var_CC = ""
  loc_A5FEAB: BranchF loc_A5FEB9
  loc_A5FEAE: ImpAdLdRf MemVar_D93E98
  loc_A5FEB1: NewIfNullPr frmPersonaABM
  loc_A5FEB4: frmPersonaABM.SetFocus
  loc_A5FEB9: ExitProcHresult
End Sub

Private Sub ModificaciondeCuilCuit_Click() '9EB780
  'Data Table: 53CCB4
  loc_9EB75C: ImpAdLdRf MemVar_D934C8
  loc_9EB75F: NewIfNullAd
  loc_9EB762: CastAd
  loc_9EB765: FStAdFunc var_88
  loc_9EB768: FLdRfVar var_88
  loc_9EB76B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB770: ILdRf var_88
  loc_9EB773: CastAd
  loc_9EB776: ImpAdStAdFunc MemVar_D934C8
  loc_9EB77A: FFree1Ad var_88
  loc_9EB77D: ExitProcHresult
  loc_9EB77E: ILdRf arg_3CFF
End Sub

Private Sub UnificaciondePersonas_Click() '9EABD0
  'Data Table: 53CCB4
  loc_9EABAC: ImpAdLdRf MemVar_D93B94
  loc_9EABAF: NewIfNullAd
  loc_9EABB2: CastAd
  loc_9EABB5: FStAdFunc var_88
  loc_9EABB8: FLdRfVar var_88
  loc_9EABBB: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EABC0: ILdRf var_88
  loc_9EABC3: CastAd
  loc_9EABC6: ImpAdStAdFunc MemVar_D93B94
  loc_9EABCA: FFree1Ad var_88
  loc_9EABCD: ExitProcHresult
  loc_9EABCE: CRec2Uni arg_3C00
End Sub

Private Sub MDIForm_Load() 'C781C4
  'Data Table: 53CCB4
  loc_C76F04: ImpAdCallFPR4 Proc_16_0_A7DA84()
  loc_C76F09: LitStr "PROVIDER=MSDASQL;dsn=myrecaudacion-guaymallen;uid=root;pwd=bv3yr0n;database=recaudacion;"
  loc_C76F0C: ImpAdCallFPR4 Proc_272_34_A205CC()
  loc_C76F11: ImpAdCallFPR4 Proc_272_48_B59D40()
  loc_C76F16: OnErrorGoto loc_C78098
  loc_C76F19: Call Proc_13_177_AE2E9C()
  loc_C76F1E: New Me
  loc_C76F22: FStAdFuncNoPop
  loc_C76F25: FLdPr Me
  loc_C76F28: MemStAd
  loc_C76F2C: FFree1Ad var_8C
  loc_C76F2F: FLdRfVar var_94
  loc_C76F32: FLdRfVar var_8C
  loc_C76F35: ImpAdLdRf MemVar_D9C5D8
  loc_C76F38: NewIfNullPr Global
  loc_C76F3B:  = Global.Screen
  loc_C76F40: FLdPr var_8C
  loc_C76F43:  = Screen.Width
  loc_C76F48: FLdFPR4 var_94
  loc_C76F4B: LitI2_Byte 1
  loc_C76F4D: CR8I2
  loc_C76F4E: MulR8
  loc_C76F4F: PopFPR4
  loc_C76F50: FLdPrThis
  loc_C76F51: Me.Width = from_stack_1s
  loc_C76F56: FFree1Ad var_8C
  loc_C76F59: FLdRfVar var_94
  loc_C76F5C: FLdRfVar var_8C
  loc_C76F5F: ImpAdLdRf MemVar_D9C5D8
  loc_C76F62: NewIfNullPr Global
  loc_C76F65:  = Global.Screen
  loc_C76F6A: FLdPr var_8C
  loc_C76F6D:  = Screen.Height
  loc_C76F72: FLdFPR4 var_94
  loc_C76F75: LitI2_Byte 1
  loc_C76F77: CR8I2
  loc_C76F78: MulR8
  loc_C76F79: PopFPR4
  loc_C76F7A: FLdPrThis
  loc_C76F7B: Me.Height = from_stack_1s
  loc_C76F80: FFree1Ad var_8C
  loc_C76F83: LitStr "Parametros - Parametros Generales"
  loc_C76F86: FLdPr Me
  loc_C76F89: VCallAd Control_ID_ParametrosGeneralesABM
  loc_C76F8C: FStAdFunc var_8C
  loc_C76F8F: FLdPr var_8C
  loc_C76F92: Me.Tag = from_stack_1
  loc_C76F97: FFree1Ad var_8C
  loc_C76F9A: LitStr "Parametros - Parametros de Rentas"
  loc_C76F9D: FLdPr Me
  loc_C76FA0: VCallAd Control_ID_ParametrosRentasABM
  loc_C76FA3: FStAdFunc var_8C
  loc_C76FA6: FLdPr var_8C
  loc_C76FA9: Me.Tag = from_stack_1
  loc_C76FAE: FFree1Ad var_8C
  loc_C76FB1: LitStr "Parametros - Interes por Recargo Fuera de Termino"
  loc_C76FB4: FLdPr Me
  loc_C76FB7: VCallAd Control_ID_InteresPorRecargoABM
  loc_C76FBA: FStAdFunc var_8C
  loc_C76FBD: FLdPr var_8C
  loc_C76FC0: Me.Tag = from_stack_1
  loc_C76FC5: FFree1Ad var_8C
  loc_C76FC8: LitStr "Parametros - Descuentos por Concepto"
  loc_C76FCB: FLdPr Me
  loc_C76FCE: VCallAd Control_ID_DescuentoporConceptoABM
  loc_C76FD1: FStAdFunc var_8C
  loc_C76FD4: FLdPr var_8C
  loc_C76FD7: Me.Tag = from_stack_1
  loc_C76FDC: FFree1Ad var_8C
  loc_C76FDF: LitStr "Parametros - Ente Recaudador"
  loc_C76FE2: FLdPr Me
  loc_C76FE5: VCallAd Control_ID_EnteRecaudadorABM
  loc_C76FE8: FStAdFunc var_8C
  loc_C76FEB: FLdPr var_8C
  loc_C76FEE: Me.Tag = from_stack_1
  loc_C76FF3: FFree1Ad var_8C
  loc_C76FF6: LitStr "Parametros - Excepción"
  loc_C76FF9: FLdPr Me
  loc_C76FFC: VCallAd Control_ID_ExcepcionABM
  loc_C76FFF: FStAdFunc var_8C
  loc_C77002: FLdPr var_8C
  loc_C77005: Me.Tag = from_stack_1
  loc_C7700A: FFree1Ad var_8C
  loc_C7700D: LitStr "Parametros - Conceptos"
  loc_C77010: FLdPr Me
  loc_C77013: VCallAd Control_ID_ConceptoABM
  loc_C77016: FStAdFunc var_8C
  loc_C77019: FLdPr var_8C
  loc_C7701C: Me.Tag = from_stack_1
  loc_C77021: FFree1Ad var_8C
  loc_C77024: LitStr "Parametros - Direcciones - Calle"
  loc_C77027: FLdPr Me
  loc_C7702A: VCallAd Control_ID_CalleABM
  loc_C7702D: FStAdFunc var_8C
  loc_C77030: FLdPr var_8C
  loc_C77033: Me.Tag = from_stack_1
  loc_C77038: FFree1Ad var_8C
  loc_C7703B: LitStr "Parametros - Direcciones - Barrio"
  loc_C7703E: FLdPr Me
  loc_C77041: VCallAd Control_ID_BarrioABM
  loc_C77044: FStAdFunc var_8C
  loc_C77047: FLdPr var_8C
  loc_C7704A: Me.Tag = from_stack_1
  loc_C7704F: FFree1Ad var_8C
  loc_C77052: LitStr "Parametros - Direcciones - Localidad"
  loc_C77055: FLdPr Me
  loc_C77058: VCallAd Control_ID_LocalidadABM
  loc_C7705B: FStAdFunc var_8C
  loc_C7705E: FLdPr var_8C
  loc_C77061: Me.Tag = from_stack_1
  loc_C77066: FFree1Ad var_8C
  loc_C77069: LitStr "Parametros - Servicios de Deudores Varios"
  loc_C7706C: FLdPr Me
  loc_C7706F: VCallAd Control_ID_ServDevaABM
  loc_C77072: FStAdFunc var_8C
  loc_C77075: FLdPr var_8C
  loc_C77078: Me.Tag = from_stack_1
  loc_C7707D: FFree1Ad var_8C
  loc_C77080: LitStr "Parametros - Tipo de Facilidad de Pago"
  loc_C77083: FLdPr Me
  loc_C77086: VCallAd Control_ID_TipoFapaABM
  loc_C77089: FStAdFunc var_8C
  loc_C7708C: FLdPr var_8C
  loc_C7708F: Me.Tag = from_stack_1
  loc_C77094: FFree1Ad var_8C
  loc_C77097: LitStr "Parametros - Tipos de Movimientos"
  loc_C7709A: FLdPr Me
  loc_C7709D: VCallAd Control_ID_TipoMoviABM
  loc_C770A0: FStAdFunc var_8C
  loc_C770A3: FLdPr var_8C
  loc_C770A6: Me.Tag = from_stack_1
  loc_C770AB: FFree1Ad var_8C
  loc_C770AE: LitStr "Hecho Imponible - Catastro - Parametros - Estados del Inmueble"
  loc_C770B1: FLdPr Me
  loc_C770B4: VCallAd Control_ID_EstadoInmuebleABM
  loc_C770B7: FStAdFunc var_8C
  loc_C770BA: FLdPr var_8C
  loc_C770BD: Me.Tag = from_stack_1
  loc_C770C2: FFree1Ad var_8C
  loc_C770C5: LitStr "Hecho Imponible - Catastro - Parametros - Zonas del Inmueble"
  loc_C770C8: FLdPr Me
  loc_C770CB: VCallAd Control_ID_ZonadeInmuebleABM
  loc_C770CE: FStAdFunc var_8C
  loc_C770D1: FLdPr var_8C
  loc_C770D4: Me.Tag = from_stack_1
  loc_C770D9: FFree1Ad var_8C
  loc_C770DC: LitStr "Hecho Imponible - Catastro - Parametros - Grupo del Inmueble"
  loc_C770DF: FLdPr Me
  loc_C770E2: VCallAd Control_ID_GrupodelInmuebleABM
  loc_C770E5: FStAdFunc var_8C
  loc_C770E8: FLdPr var_8C
  loc_C770EB: Me.Tag = from_stack_1
  loc_C770F0: FFree1Ad var_8C
  loc_C770F3: LitStr "Hecho Imponible - Catastro - Parametros - Servicios del Inmueble"
  loc_C770F6: FLdPr Me
  loc_C770F9: VCallAd Control_ID_ServCataABM
  loc_C770FC: FStAdFunc var_8C
  loc_C770FF: FLdPr var_8C
  loc_C77102: Me.Tag = from_stack_1
  loc_C77107: FFree1Ad var_8C
  loc_C7710A: LitStr "Hecho Imponible - Catastro - Inmueble"
  loc_C7710D: FLdPr Me
  loc_C77110: VCallAd Control_ID_InmuebleABM
  loc_C77113: FStAdFunc var_8C
  loc_C77116: FLdPr var_8C
  loc_C77119: Me.Tag = from_stack_1
  loc_C7711E: FFree1Ad var_8C
  loc_C77121: LitStr "Hecho Imponible - Catastro - Domicilio Postal"
  loc_C77124: FLdPr Me
  loc_C77127: VCallAd Control_ID_DomicilioPostalInmuebleABM
  loc_C7712A: FStAdFunc var_8C
  loc_C7712D: FLdPr var_8C
  loc_C77130: Me.Tag = from_stack_1
  loc_C77135: FFree1Ad var_8C
  loc_C77138: LitStr "Hecho Imponible - Catastro - Transferencias"
  loc_C7713B: FLdPr Me
  loc_C7713E: VCallAd Control_ID_TranInmuABM
  loc_C77141: FStAdFunc var_8C
  loc_C77144: FLdPr var_8C
  loc_C77147: Me.Tag = from_stack_1
  loc_C7714C: FFree1Ad var_8C
  loc_C7714F: LitStr "Hecho Imponible - Catastro - SubDivisión"
  loc_C77152: FLdPr Me
  loc_C77155: VCallAd Control_ID_SubDivisiondeInmueble
  loc_C77158: FStAdFunc var_8C
  loc_C7715B: FLdPr var_8C
  loc_C7715E: Me.Tag = from_stack_1
  loc_C77163: FFree1Ad var_8C
  loc_C77166: LitStr "Hecho Imponible - Catastro - Unificación"
  loc_C77169: FLdPr Me
  loc_C7716C: VCallAd Control_ID_UnificaciondeInmueble
  loc_C7716F: FStAdFunc var_8C
  loc_C77172: FLdPr var_8C
  loc_C77175: Me.Tag = from_stack_1
  loc_C7717A: FFree1Ad var_8C
  loc_C7717D: LitStr "Hecho Imponible - Catastro - Servicios del Inmuble"
  loc_C77180: FLdPr Me
  loc_C77183: VCallAd Control_ID_ServInmuABM
  loc_C77186: FStAdFunc var_8C
  loc_C77189: FLdPr var_8C
  loc_C7718C: Me.Tag = from_stack_1
  loc_C77191: FFree1Ad var_8C
  loc_C77194: LitStr "Hecho Imponible - Catastro - Listado de Inmuebles por Cuenta"
  loc_C77197: FLdPr Me
  loc_C7719A: VCallAd Control_ID_ListadodeInmueblePorCuenta
  loc_C7719D: FStAdFunc var_8C
  loc_C771A0: FLdPr var_8C
  loc_C771A3: Me.Tag = from_stack_1
  loc_C771A8: FFree1Ad var_8C
  loc_C771AB: LitStr "Hecho Imponible - Catastro - Listado de Inmuebles Por Fecha de Alta"
  loc_C771AE: FLdPr Me
  loc_C771B1: VCallAd Control_ID_ListadodeInmueblesporFechaAlta
  loc_C771B4: FStAdFunc var_8C
  loc_C771B7: FLdPr var_8C
  loc_C771BA: Me.Tag = from_stack_1
  loc_C771BF: FFree1Ad var_8C
  loc_C771C2: LitStr "Hecho Imponible - Catastro - Listado de Inmuebles"
  loc_C771C5: FLdPr Me
  loc_C771C8: VCallAd Control_ID_ListadodeInmuebles
  loc_C771CB: FStAdFunc var_8C
  loc_C771CE: FLdPr var_8C
  loc_C771D1: Me.Tag = from_stack_1
  loc_C771D6: FFree1Ad var_8C
  loc_C771D9: LitStr "Hecho Imponible - Derechos Generales - Domicilio Postal"
  loc_C771DC: FLdPr Me
  loc_C771DF: VCallAd Control_ID_DomicilioPostalComercioABM
  loc_C771E2: FStAdFunc var_8C
  loc_C771E5: FLdPr var_8C
  loc_C771E8: Me.Tag = from_stack_1
  loc_C771ED: FFree1Ad var_8C
  loc_C771F0: LitStr "Hecho Imponible - Derechos Generales - Transferencia"
  loc_C771F3: FLdPr Me
  loc_C771F6: VCallAd Control_ID_TranComeABM
  loc_C771F9: FStAdFunc var_8C
  loc_C771FC: FLdPr var_8C
  loc_C771FF: Me.Tag = from_stack_1
  loc_C77204: FFree1Ad var_8C
  loc_C77207: LitStr "Hecho Imponible - Derechos Generales - Certificado de Comercio"
  loc_C7720A: FLdPr Me
  loc_C7720D: VCallAd Control_ID_CertificadodeComercio
  loc_C77210: FStAdFunc var_8C
  loc_C77213: FLdPr var_8C
  loc_C77216: Me.Tag = from_stack_1
  loc_C7721B: FFree1Ad var_8C
  loc_C7721E: LitStr "Hecho Imponible - Derechos Generales - Informes - Listado de Comercios"
  loc_C77221: FLdPr Me
  loc_C77224: VCallAd Control_ID_ListadodeComercios
  loc_C77227: FStAdFunc var_8C
  loc_C7722A: FLdPr var_8C
  loc_C7722D: Me.Tag = from_stack_1
  loc_C77232: FFree1Ad var_8C
  loc_C77235: LitStr "Hecho Imponible - Derechos Generales - Informes - Listado de Comercios por SubRubros"
  loc_C77238: FLdPr Me
  loc_C7723B: VCallAd Control_ID_ListadodeComerciosporSubrubro
  loc_C7723E: FStAdFunc var_8C
  loc_C77241: FLdPr var_8C
  loc_C77244: Me.Tag = from_stack_1
  loc_C77249: FFree1Ad var_8C
  loc_C7724C: LitStr "Hecho Imponible - Derechos Generales - Informes - Listado de Comercios por Fecha"
  loc_C7724F: FLdPr Me
  loc_C77252: VCallAd Control_ID_ListadodeComerciosporFecha
  loc_C77255: FStAdFunc var_8C
  loc_C77258: FLdPr var_8C
  loc_C7725B: Me.Tag = from_stack_1
  loc_C77260: FFree1Ad var_8C
  loc_C77263: LitStr "Hecho Imponible - Derechos Generales - Informes - Listado de Comercio por Ubicación"
  loc_C77266: FLdPr Me
  loc_C77269: VCallAd Control_ID_ListadodeComerciosporUbicacion
  loc_C7726C: FStAdFunc var_8C
  loc_C7726F: FLdPr var_8C
  loc_C77272: Me.Tag = from_stack_1
  loc_C77277: FFree1Ad var_8C
  loc_C7727A: LitStr "Hecho Imponible - Derechos Generales - Informes - Listado de Estadìstica de Comercio"
  loc_C7727D: FLdPr Me
  loc_C77280: VCallAd Control_ID_ListadodeEstadisticadeComercio
  loc_C77283: FStAdFunc var_8C
  loc_C77286: FLdPr var_8C
  loc_C77289: Me.Tag = from_stack_1
  loc_C7728E: FFree1Ad var_8C
  loc_C77291: LitStr "Hecho Imponible - Derechos Generales - Informes - Listado de Comercio por Domicilio"
  loc_C77294: FLdPr Me
  loc_C77297: VCallAd Control_ID_ListadodeComerciosporDomicilio
  loc_C7729A: FStAdFunc var_8C
  loc_C7729D: FLdPr var_8C
  loc_C772A0: Me.Tag = from_stack_1
  loc_C772A5: FFree1Ad var_8C
  loc_C772A8: LitStr "Hecho Imponible - Cementerio - Parametros - Servicios"
  loc_C772AB: FLdPr Me
  loc_C772AE: VCallAd Control_ID_ServCemeABM
  loc_C772B1: FStAdFunc var_8C
  loc_C772B4: FLdPr var_8C
  loc_C772B7: Me.Tag = from_stack_1
  loc_C772BC: FFree1Ad var_8C
  loc_C772BF: LitStr "Hecho Imponible - Cementerio - Parametros - Tipo de Sepultura"
  loc_C772C2: FLdPr Me
  loc_C772C5: VCallAd Control_ID_TipoSepuABM
  loc_C772C8: FStAdFunc var_8C
  loc_C772CB: FLdPr var_8C
  loc_C772CE: Me.Tag = from_stack_1
  loc_C772D3: FFree1Ad var_8C
  loc_C772D6: LitStr "Hecho Imponible - Cementerio - Registro de Cementerio"
  loc_C772D9: FLdPr Me
  loc_C772DC: VCallAd Control_ID_RegistrodeCementerioABM
  loc_C772DF: FStAdFunc var_8C
  loc_C772E2: FLdPr var_8C
  loc_C772E5: Me.Tag = from_stack_1
  loc_C772EA: FFree1Ad var_8C
  loc_C772ED: LitStr "Hecho Imponible - Cementerio - Domicilio Postal"
  loc_C772F0: FLdPr Me
  loc_C772F3: VCallAd Control_ID_DomicilioPostalDifuntoABM
  loc_C772F6: FStAdFunc var_8C
  loc_C772F9: FLdPr var_8C
  loc_C772FC: Me.Tag = from_stack_1
  loc_C77301: FFree1Ad var_8C
  loc_C77304: LitStr "Hecho Imponible - Cementerio - Transferencia de Titular del Difunto"
  loc_C77307: FLdPr Me
  loc_C7730A: VCallAd Control_ID_TranDifuABM
  loc_C7730D: FStAdFunc var_8C
  loc_C77310: FLdPr var_8C
  loc_C77313: Me.Tag = from_stack_1
  loc_C77318: FFree1Ad var_8C
  loc_C7731B: LitStr "Hecho Imponible - Cementerio - Traslado de Difunto"
  loc_C7731E: FLdPr Me
  loc_C77321: VCallAd Control_ID_TrasladodeDifuntosABM
  loc_C77324: FStAdFunc var_8C
  loc_C77327: FLdPr var_8C
  loc_C7732A: Me.Tag = from_stack_1
  loc_C7732F: FFree1Ad var_8C
  loc_C77332: LitStr "Hecho Imponible - Cementerio - Informes - Listado por Ubicación"
  loc_C77335: FLdPr Me
  loc_C77338: VCallAd Control_ID_ListadoporUbicacion
  loc_C7733B: FStAdFunc var_8C
  loc_C7733E: FLdPr var_8C
  loc_C77341: Me.Tag = from_stack_1
  loc_C77346: FFree1Ad var_8C
  loc_C77349: LitStr "Hecho Imponible - Cementerio - Informes - Listado por Tipo de Sepultura"
  loc_C7734C: FLdPr Me
  loc_C7734F: VCallAd Control_ID_ListadoporTipodeSepultura
  loc_C77352: FStAdFunc var_8C
  loc_C77355: FLdPr var_8C
  loc_C77358: Me.Tag = from_stack_1
  loc_C7735D: FFree1Ad var_8C
  loc_C77360: LitStr "Hecho Imponible - Cementerio - Informes - Listado de Vencimiento de Concesiones"
  loc_C77363: FLdPr Me
  loc_C77366: VCallAd Control_ID_ListadodeVencimientosdeConcesiones
  loc_C77369: FStAdFunc var_8C
  loc_C7736C: FLdPr var_8C
  loc_C7736F: Me.Tag = from_stack_1
  loc_C77374: FFree1Ad var_8C
  loc_C77377: LitStr "Hecho Imponible - Cementerio - Informes - Listado de Controles de Cementerio"
  loc_C7737A: FLdPr Me
  loc_C7737D: VCallAd Control_ID_ListadodeControldeCementerio
  loc_C77380: FStAdFunc var_8C
  loc_C77383: FLdPr var_8C
  loc_C77386: Me.Tag = from_stack_1
  loc_C7738B: FFree1Ad var_8C
  loc_C7738E: LitStr "Hecho Imponible - Cementerio - Informes - Listado de Expensas Aforadas"
  loc_C77391: FLdPr Me
  loc_C77394: VCallAd Control_ID_ListadodeExpensasAforadas
  loc_C77397: FStAdFunc var_8C
  loc_C7739A: FLdPr var_8C
  loc_C7739D: Me.Tag = from_stack_1
  loc_C773A2: FFree1Ad var_8C
  loc_C773A5: LitStr "Hecho Imponible - Deudores Varios"
  loc_C773A8: FLdPr Me
  loc_C773AB: VCallAd Control_ID_DeudoresVariosABM
  loc_C773AE: FStAdFunc var_8C
  loc_C773B1: FLdPr var_8C
  loc_C773B4: Me.Tag = from_stack_1
  loc_C773B9: FFree1Ad var_8C
  loc_C773BC: LitStr "Contribuyentes - Persona - Alta, Baja y Modificación"
  loc_C773BF: FLdPr Me
  loc_C773C2: VCallAd Control_ID_PersonaABM
  loc_C773C5: FStAdFunc var_8C
  loc_C773C8: FLdPr var_8C
  loc_C773CB: Me.Tag = from_stack_1
  loc_C773D0: FFree1Ad var_8C
  loc_C773D3: LitStr "Contribuyente - Mdificación del CUIL - CUIT"
  loc_C773D6: FLdPr Me
  loc_C773D9: VCallAd Control_ID_ModificaciondeCuilCuit
  loc_C773DC: FStAdFunc var_8C
  loc_C773DF: FLdPr var_8C
  loc_C773E2: Me.Tag = from_stack_1
  loc_C773E7: FFree1Ad var_8C
  loc_C773EA: LitStr "Contribuyente - Unifición de Personas"
  loc_C773ED: FLdPr Me
  loc_C773F0: VCallAd Control_ID_UnificaciondePersonas
  loc_C773F3: FStAdFunc var_8C
  loc_C773F6: FLdPr var_8C
  loc_C773F9: Me.Tag = from_stack_1
  loc_C773FE: FFree1Ad var_8C
  loc_C77401: LitStr "Apremio - Parametros - Parametros Generales de Apremio"
  loc_C77404: FLdPr Me
  loc_C77407: VCallAd Control_ID_ParametrosdeApremioABM
  loc_C7740A: FStAdFunc var_8C
  loc_C7740D: FLdPr var_8C
  loc_C77410: Me.Tag = from_stack_1
  loc_C77415: FFree1Ad var_8C
  loc_C77418: LitStr "Apremio - Parametros - Recaudador"
  loc_C7741B: FLdPr Me
  loc_C7741E: VCallAd Control_ID_RecaudadorABM
  loc_C77421: FStAdFunc var_8C
  loc_C77424: FLdPr var_8C
  loc_C77427: Me.Tag = from_stack_1
  loc_C7742C: FFree1Ad var_8C
  loc_C7742F: LitStr "Apremio - Parametros - Oficial de Justicia"
  loc_C77432: FLdPr Me
  loc_C77435: VCallAd Control_ID_OficialdeJusticiaABM
  loc_C77438: FStAdFunc var_8C
  loc_C7743B: FLdPr var_8C
  loc_C7743E: Me.Tag = from_stack_1
  loc_C77443: FFree1Ad var_8C
  loc_C77446: LitStr "Apremio - Parametros - Instancia Judicial"
  loc_C77449: FLdPr Me
  loc_C7744C: VCallAd Control_ID_InstanciaJudicialABM
  loc_C7744F: FStAdFunc var_8C
  loc_C77452: FLdPr var_8C
  loc_C77455: Me.Tag = from_stack_1
  loc_C7745A: FFree1Ad var_8C
  loc_C7745D: LitStr "Apremio - Parametros - Escalas de Apremio"
  loc_C77460: FLdPr Me
  loc_C77463: VCallAd Control_ID_EscaApreABM
  loc_C77466: FStAdFunc var_8C
  loc_C77469: FLdPr var_8C
  loc_C7746C: Me.Tag = from_stack_1
  loc_C77471: FFree1Ad var_8C
  loc_C77474: LitStr "Apremio - Apremio"
  loc_C77477: FLdPr Me
  loc_C7747A: VCallAd Control_ID_BoletadeApremio
  loc_C7747D: FStAdFunc var_8C
  loc_C77480: FLdPr var_8C
  loc_C77483: Me.Tag = from_stack_1
  loc_C77488: FFree1Ad var_8C
  loc_C7748B: LitStr "Apremio - Gastos y Honorarios de Apremio"
  loc_C7748E: FLdPr Me
  loc_C77491: VCallAd Control_ID_GastosyHonorariosdeApremio
  loc_C77494: FStAdFunc var_8C
  loc_C77497: FLdPr var_8C
  loc_C7749A: Me.Tag = from_stack_1
  loc_C7749F: FFree1Ad var_8C
  loc_C774A2: LitStr "Apremio - Juicios"
  loc_C774A5: FLdPr Me
  loc_C774A8: VCallAd Control_ID_JuiciosABM
  loc_C774AB: FStAdFunc var_8C
  loc_C774AE: FLdPr var_8C
  loc_C774B1: Me.Tag = from_stack_1
  loc_C774B6: FFree1Ad var_8C
  loc_C774B9: LitStr "Apremio - Informes - Listado de Apremio por Oficina y Cuenta"
  loc_C774BC: FLdPr Me
  loc_C774BF: VCallAd Control_ID_ListadodeApremioporOficinayCuenta
  loc_C774C2: FStAdFunc var_8C
  loc_C774C5: FLdPr var_8C
  loc_C774C8: Me.Tag = from_stack_1
  loc_C774CD: FFree1Ad var_8C
  loc_C774D0: LitStr "Apremio - Informes - Resumen General de Apremio"
  loc_C774D3: FLdPr Me
  loc_C774D6: VCallAd Control_ID_ResumenGeneraldeApremio
  loc_C774D9: FStAdFunc var_8C
  loc_C774DC: FLdPr var_8C
  loc_C774DF: Me.Tag = from_stack_1
  loc_C774E4: FFree1Ad var_8C
  loc_C774E7: LitStr "Apremio - Informes - Resumen General de Recaudadores"
  loc_C774EA: FLdPr Me
  loc_C774ED: VCallAd Control_ID_ResumenGeneraldeRecaudadores
  loc_C774F0: FStAdFunc var_8C
  loc_C774F3: FLdPr var_8C
  loc_C774F6: Me.Tag = from_stack_1
  loc_C774FB: FFree1Ad var_8C
  loc_C774FE: LitStr "Apremio - Informes - Resumen General de Oficial de Justicia"
  loc_C77501: FLdPr Me
  loc_C77504: VCallAd Control_ID_ResumenGeneraldeOficialdeJusticia
  loc_C77507: FStAdFunc var_8C
  loc_C7750A: FLdPr var_8C
  loc_C7750D: Me.Tag = from_stack_1
  loc_C77512: FFree1Ad var_8C
  loc_C77515: LitStr "Apremio - Informes - Listado de Apremio con Cuotas Vencidas"
  loc_C77518: FLdPr Me
  loc_C7751B: VCallAd Control_ID_ListadodeApremioconCuotasVencidas
  loc_C7751E: FStAdFunc var_8C
  loc_C77521: FLdPr var_8C
  loc_C77524: Me.Tag = from_stack_1
  loc_C77529: FFree1Ad var_8C
  loc_C7752C: LitStr "Apremio - Informes - Listado de Recaudación por Apremio"
  loc_C7752F: FLdPr Me
  loc_C77532: VCallAd Control_ID_ListadodeRecaudacionporApremio
  loc_C77535: FStAdFunc var_8C
  loc_C77538: FLdPr var_8C
  loc_C7753B: Me.Tag = from_stack_1
  loc_C77540: FFree1Ad var_8C
  loc_C77543: LitStr "Apremio - Informes - Boletas de Apremio y Boletas Notificadas"
  loc_C77546: FLdPr Me
  loc_C77549: VCallAd Control_ID_EstadisticasdeApremioyBoletasNotificadas
  loc_C7754C: FStAdFunc var_8C
  loc_C7754F: FLdPr var_8C
  loc_C77552: Me.Tag = from_stack_1
  loc_C77557: FFree1Ad var_8C
  loc_C7755A: LitStr "Apremio - Informes - Estadística de Apremio"
  loc_C7755D: FLdPr Me
  loc_C77560: VCallAd Control_ID_EstadisticadeApremio
  loc_C77563: FStAdFunc var_8C
  loc_C77566: FLdPr var_8C
  loc_C77569: Me.Tag = from_stack_1
  loc_C7756E: FFree1Ad var_8C
  loc_C77571: LitStr "Apremio - Informes - Liquidación Tasa de Justicia, Caja Forense y Colegio de Abogado"
  loc_C77574: FLdPr Me
  loc_C77577: VCallAd Control_ID_LiquidacionTasaJusticiaCajaForenseColegioAbogado
  loc_C7757A: FStAdFunc var_8C
  loc_C7757D: FLdPr var_8C
  loc_C77580: Me.Tag = from_stack_1
  loc_C77585: FFree1Ad var_8C
  loc_C77588: LitStr "Apremio - Informes -Listado Acuerdo 3328 Apremio"
  loc_C7758B: FLdPr Me
  loc_C7758E: VCallAd Control_ID_ListadoAcuerdo3328Apremio
  loc_C77591: FStAdFunc var_8C
  loc_C77594: FLdPr var_8C
  loc_C77597: Me.Tag = from_stack_1
  loc_C7759C: FFree1Ad var_8C
  loc_C7759F: LitStr "Apremio - Informes - Listado de Apremio Para El Tribunal"
  loc_C775A2: FLdPr Me
  loc_C775A5: VCallAd Control_ID_ListadodeApremioParaElTribunal
  loc_C775A8: FStAdFunc var_8C
  loc_C775AB: FLdPr var_8C
  loc_C775AE: Me.Tag = from_stack_1
  loc_C775B3: FFree1Ad var_8C
  loc_C775B6: LitStr "Apremio - Informes - Generación de TXT Caja Forence"
  loc_C775B9: FLdPr Me
  loc_C775BC: VCallAd Control_ID_GeneraciondeTXTCajaForence
  loc_C775BF: FStAdFunc var_8C
  loc_C775C2: FLdPr var_8C
  loc_C775C5: Me.Tag = from_stack_1
  loc_C775CA: FFree1Ad var_8C
  loc_C775CD: LitStr "Rentas - Emision de Boleto"
  loc_C775D0: FLdPr Me
  loc_C775D3: VCallAd Control_ID_EmisionBoleto
  loc_C775D6: FStAdFunc var_8C
  loc_C775D9: FLdPr var_8C
  loc_C775DC: Me.Tag = from_stack_1
  loc_C775E1: FFree1Ad var_8C
  loc_C775E4: LitStr "Rentas - Emision de Boleto Masivo de Tasas"
  loc_C775E7: FLdPr Me
  loc_C775EA: VCallAd Control_ID_EmisiondeBoletoMasivodeTasa
  loc_C775ED: FStAdFunc var_8C
  loc_C775F0: FLdPr var_8C
  loc_C775F3: Me.Tag = from_stack_1
  loc_C775F8: FFree1Ad var_8C
  loc_C775FB: LitStr "Rentas - Emision de Boleto Masivo de Comercio"
  loc_C775FE: FLdPr Me
  loc_C77601: VCallAd Control_ID_EmisiondeBoletoMasivodeComercio
  loc_C77604: FStAdFunc var_8C
  loc_C77607: FLdPr var_8C
  loc_C7760A: Me.Tag = from_stack_1
  loc_C7760F: FFree1Ad var_8C
  loc_C77612: LitStr "Rentas - Cuenta Corriente"
  loc_C77615: FLdPr Me
  loc_C77618: VCallAd Control_ID_CuentaCorriente
  loc_C7761B: FStAdFunc var_8C
  loc_C7761E: FLdPr var_8C
  loc_C77621: Me.Tag = from_stack_1
  loc_C77626: FFree1Ad var_8C
  loc_C77629: LitStr "Rentas - Cuenta Corriente Unica"
  loc_C7762C: FLdPr Me
  loc_C7762F: VCallAd Control_ID_CuentaCorrienteUnica
  loc_C77632: FStAdFunc var_8C
  loc_C77635: FLdPr var_8C
  loc_C77638: Me.Tag = from_stack_1
  loc_C7763D: FFree1Ad var_8C
  loc_C77640: LitStr "Rentas - Planes de Pago - Generacion de Planes de Pago"
  loc_C77643: FLdPr Me
  loc_C77646: VCallAd Control_ID_GeneraciondePlanesdePago
  loc_C77649: FStAdFunc var_8C
  loc_C7764C: FLdPr var_8C
  loc_C7764F: Me.Tag = from_stack_1
  loc_C77654: FFree1Ad var_8C
  loc_C77657: LitStr "Rentas - Planes de Pago - Reimpresión de Facilidad de Pago"
  loc_C7765A: FLdPr Me
  loc_C7765D: VCallAd Control_ID_ReimpresiondeFacilidaddePago
  loc_C77660: FStAdFunc var_8C
  loc_C77663: FLdPr var_8C
  loc_C77666: Me.Tag = from_stack_1
  loc_C7766B: FFree1Ad var_8C
  loc_C7766E: LitStr "Rentas - Planes de Pago - Consulta de Planes de Pago"
  loc_C77671: FLdPr Me
  loc_C77674: VCallAd Control_ID_ConsultadePlanesdePago
  loc_C77677: FStAdFunc var_8C
  loc_C7767A: FLdPr var_8C
  loc_C7767D: Me.Tag = from_stack_1
  loc_C77682: FFree1Ad var_8C
  loc_C77685: LitStr "Rentas - Planes de Pago - Listado de Planes de Pago (Por Cuenta)"
  loc_C77688: FLdPr Me
  loc_C7768B: VCallAd Control_ID_ListadodePlanesdePago
  loc_C7768E: FStAdFunc var_8C
  loc_C77691: FLdPr var_8C
  loc_C77694: Me.Tag = from_stack_1
  loc_C77699: FFree1Ad var_8C
  loc_C7769C: LitStr "Rentas - Planes de Pago - Modificación de Planes de Pago"
  loc_C7769F: FLdPr Me
  loc_C776A2: VCallAd Control_ID_ModificaciondePlanesdePago
  loc_C776A5: FStAdFunc var_8C
  loc_C776A8: FLdPr var_8C
  loc_C776AB: Me.Tag = from_stack_1
  loc_C776B0: FFree1Ad var_8C
  loc_C776B3: LitStr "Rentas - Planes de Pago - Listado de Planes de Pago (Por Fecha)"
  loc_C776B6: FLdPr Me
  loc_C776B9: VCallAd Control_ID_ListadodePlanesdePagoPorFecha
  loc_C776BC: FStAdFunc var_8C
  loc_C776BF: FLdPr var_8C
  loc_C776C2: Me.Tag = from_stack_1
  loc_C776C7: FFree1Ad var_8C
  loc_C776CA: LitStr "Rentas - Derechos Varios"
  loc_C776CD: FLdPr Me
  loc_C776D0: VCallAd Control_ID_DerechosVarios
  loc_C776D3: FStAdFunc var_8C
  loc_C776D6: FLdPr var_8C
  loc_C776D9: Me.Tag = from_stack_1
  loc_C776DE: FFree1Ad var_8C
  loc_C776E1: LitStr "Rentas - Aforos de Cementerio"
  loc_C776E4: FLdPr Me
  loc_C776E7: VCallAd Control_ID_AforosdeCementerio
  loc_C776EA: FStAdFunc var_8C
  loc_C776ED: FLdPr var_8C
  loc_C776F0: Me.Tag = from_stack_1
  loc_C776F5: FFree1Ad var_8C
  loc_C776F8: LitStr "Rentas - Aforos de Deudores Varios"
  loc_C776FB: FLdPr Me
  loc_C776FE: VCallAd Control_ID_AforosdeDeudoresVarios
  loc_C77701: FStAdFunc var_8C
  loc_C77704: FLdPr var_8C
  loc_C77707: Me.Tag = from_stack_1
  loc_C7770C: FFree1Ad var_8C
  loc_C7770F: LitStr "Rentas - Transito - Multas de Transito"
  loc_C77712: FLdPr Me
  loc_C77715: VCallAd Control_ID_MultasdeTransito
  loc_C77718: FStAdFunc var_8C
  loc_C7771B: FLdPr var_8C
  loc_C7771E: Me.Tag = from_stack_1
  loc_C77723: FFree1Ad var_8C
  loc_C77726: LitStr "Rentas - Transito - Listado de Aforos y Pagos"
  loc_C77729: FLdPr Me
  loc_C7772C: VCallAd Control_ID_ListadodeAforosyPagosTransito
  loc_C7772F: FStAdFunc var_8C
  loc_C77732: FLdPr var_8C
  loc_C77735: Me.Tag = from_stack_1
  loc_C7773A: FFree1Ad var_8C
  loc_C7773D: LitStr "Rentas - Datos Fijos"
  loc_C77740: FLdPr Me
  loc_C77743: VCallAd Control_ID_DatosFijos
  loc_C77746: FStAdFunc var_8C
  loc_C77749: FLdPr var_8C
  loc_C7774C: Me.Tag = from_stack_1
  loc_C77751: FFree1Ad var_8C
  loc_C77754: LitStr "Rentas - Prorrateo de Deuda"
  loc_C77757: FLdPr Me
  loc_C7775A: VCallAd Control_ID_ProrrateodeDeuda
  loc_C7775D: FStAdFunc var_8C
  loc_C77760: FLdPr var_8C
  loc_C77763: Me.Tag = from_stack_1
  loc_C77768: FFree1Ad var_8C
  loc_C7776B: LitStr "Rentas - Certificado de Libre Deuda"
  loc_C7776E: FLdPr Me
  loc_C77771: VCallAd Control_ID_CertificadodeLibreDeuda
  loc_C77774: FStAdFunc var_8C
  loc_C77777: FLdPr var_8C
  loc_C7777A: Me.Tag = from_stack_1
  loc_C7777F: FFree1Ad var_8C
  loc_C77782: LitStr "Rentas - Certificado Interno"
  loc_C77785: FLdPr Me
  loc_C77788: VCallAd Control_ID_CertificadoInterno
  loc_C7778B: FStAdFunc var_8C
  loc_C7778E: FLdPr var_8C
  loc_C77791: Me.Tag = from_stack_1
  loc_C77796: FFree1Ad var_8C
  loc_C77799: LitStr "Rentas - Descuento por Bono"
  loc_C7779C: FLdPr Me
  loc_C7779F: VCallAd Control_ID_DescuentoPorBono
  loc_C777A2: FStAdFunc var_8C
  loc_C777A5: FLdPr var_8C
  loc_C777A8: Me.Tag = from_stack_1
  loc_C777AD: FFree1Ad var_8C
  loc_C777B0: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Aforos Varios"
  loc_C777B3: FLdPr Me
  loc_C777B6: VCallAd Control_ID_AforosVarios
  loc_C777B9: FStAdFunc var_8C
  loc_C777BC: FLdPr var_8C
  loc_C777BF: Me.Tag = from_stack_1
  loc_C777C4: FFree1Ad var_8C
  loc_C777C7: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Debito Manual"
  loc_C777CA: FLdPr Me
  loc_C777CD: VCallAd Control_ID_DebitoManual
  loc_C777D0: FStAdFunc var_8C
  loc_C777D3: FLdPr var_8C
  loc_C777D6: Me.Tag = from_stack_1
  loc_C777DB: FFree1Ad var_8C
  loc_C777DE: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Crédito Manual"
  loc_C777E1: FLdPr Me
  loc_C777E4: VCallAd Control_ID_CreditoManual
  loc_C777E7: FStAdFunc var_8C
  loc_C777EA: FLdPr var_8C
  loc_C777ED: Me.Tag = from_stack_1
  loc_C777F2: FFree1Ad var_8C
  loc_C777F5: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Crédito Manual a Cuotas del Plan de Pago"
  loc_C777F8: FLdPr Me
  loc_C777FB: VCallAd Control_ID_CreditoManualPlandePago
  loc_C777FE: FStAdFunc var_8C
  loc_C77801: FLdPr var_8C
  loc_C77804: Me.Tag = from_stack_1
  loc_C77809: FFree1Ad var_8C
  loc_C7780C: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Crédito Manual a Cuotas del Plan de Pago Por Expediente"
  loc_C7780F: FLdPr Me
  loc_C77812: VCallAd Control_ID_CreditoManualPlandePagoPorExpediente
  loc_C77815: FStAdFunc var_8C
  loc_C77818: FLdPr var_8C
  loc_C7781B: Me.Tag = from_stack_1
  loc_C77820: FFree1Ad var_8C
  loc_C77823: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Ajustes de Pagos Duplicados"
  loc_C77826: FLdPr Me
  loc_C77829: VCallAd Control_ID_AjustesdePagosDuplicados
  loc_C7782C: FStAdFunc var_8C
  loc_C7782F: FLdPr var_8C
  loc_C77832: Me.Tag = from_stack_1
  loc_C77837: FFree1Ad var_8C
  loc_C7783A: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Modificación Crédito Manual"
  loc_C7783D: FLdPr Me
  loc_C77840: VCallAd Control_ID_CreditoManualModificacion
  loc_C77843: FStAdFunc var_8C
  loc_C77846: FLdPr var_8C
  loc_C77849: Me.Tag = from_stack_1
  loc_C7784E: FFree1Ad var_8C
  loc_C77851: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Prescripción"
  loc_C77854: FLdPr Me
  loc_C77857: VCallAd Control_ID_Prescripcion
  loc_C7785A: FStAdFunc var_8C
  loc_C7785D: FLdPr var_8C
  loc_C77860: Me.Tag = from_stack_1
  loc_C77865: FFree1Ad var_8C
  loc_C77868: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Aforos Automáticos/Fraccionamiento"
  loc_C7786B: FLdPr Me
  loc_C7786E: VCallAd Control_ID_AforosAutomaticosFraccionamiento
  loc_C77871: FStAdFunc var_8C
  loc_C77874: FLdPr var_8C
  loc_C77877: Me.Tag = from_stack_1
  loc_C7787C: FFree1Ad var_8C
  loc_C7787F: LitStr "Rentas - Aforos, Debitos y Créditos Varios - Listado de Créditos y Debitos Manuales"
  loc_C77882: FLdPr Me
  loc_C77885: VCallAd Control_ID_ListadodeCreditosyDebitosManuales
  loc_C77888: FStAdFunc var_8C
  loc_C7788B: FLdPr var_8C
  loc_C7788E: Me.Tag = from_stack_1
  loc_C77893: FFree1Ad var_8C
  loc_C77896: LitStr "Rentas - Contracargos"
  loc_C77899: FLdPr Me
  loc_C7789C: VCallAd Control_ID_Contracargos
  loc_C7789F: FStAdFunc var_8C
  loc_C778A2: FLdPr var_8C
  loc_C778A5: Me.Tag = from_stack_1
  loc_C778AA: FFree1Ad var_8C
  loc_C778AD: LitStr "Rentas - Obras Reembolsables - Afectación de Padrones"
  loc_C778B0: FLdPr Me
  loc_C778B3: VCallAd Control_ID_AfectaciondePadronesABM
  loc_C778B6: FStAdFunc var_8C
  loc_C778B9: FLdPr var_8C
  loc_C778BC: Me.Tag = from_stack_1
  loc_C778C1: FFree1Ad var_8C
  loc_C778C4: LitStr "Rentas - Obras Reembolsables - Notificación de Padrones"
  loc_C778C7: FLdPr Me
  loc_C778CA: VCallAd Control_ID_NotificaciondePadrones
  loc_C778CD: FStAdFunc var_8C
  loc_C778D0: FLdPr var_8C
  loc_C778D3: Me.Tag = from_stack_1
  loc_C778D8: FFree1Ad var_8C
  loc_C778DB: LitStr "Rentas - Obras Reembolsables - Informes - Listado de Padrones Afectados"
  loc_C778DE: FLdPr Me
  loc_C778E1: VCallAd Control_ID_ListadodePadronesAfectados
  loc_C778E4: FStAdFunc var_8C
  loc_C778E7: FLdPr var_8C
  loc_C778EA: Me.Tag = from_stack_1
  loc_C778EF: FFree1Ad var_8C
  loc_C778F2: LitStr "Rentas - Obras Reembolsables - Informes - Pagos de Obras Reembolsables"
  loc_C778F5: FLdPr Me
  loc_C778F8: VCallAd Control_ID_PagosdeObrasReembolsables
  loc_C778FB: FStAdFunc var_8C
  loc_C778FE: FLdPr var_8C
  loc_C77901: Me.Tag = from_stack_1
  loc_C77906: FFree1Ad var_8C
  loc_C77909: LitStr "Rentas - Créditos a Favor - Créditos a Favor "
  loc_C7790C: FLdPr Me
  loc_C7790F: VCallAd Control_ID_CreditosaFavor
  loc_C77912: FStAdFunc var_8C
  loc_C77915: FLdPr var_8C
  loc_C77918: Me.Tag = from_stack_1
  loc_C7791D: FFree1Ad var_8C
  loc_C77920: LitStr "Rentas - Créditos a Favor - Créditos y Ajustes"
  loc_C77923: FLdPr Me
  loc_C77926: VCallAd Control_ID_CreditosaFavorCreditosyAjustes
  loc_C77929: FStAdFunc var_8C
  loc_C7792C: FLdPr var_8C
  loc_C7792F: Me.Tag = from_stack_1
  loc_C77934: FFree1Ad var_8C
  loc_C77937: LitStr "Rentas - Créditos a Favor - Listado Créditos y Ajustes"
  loc_C7793A: FLdPr Me
  loc_C7793D: VCallAd Control_ID_ListadodeCreditosaFavor
  loc_C77940: FStAdFunc var_8C
  loc_C77943: FLdPr var_8C
  loc_C77946: Me.Tag = from_stack_1
  loc_C7794B: FFree1Ad var_8C
  loc_C7794E: LitStr "Rentas - Exenciones - Exenciones de Inmueble"
  loc_C77951: FLdPr Me
  loc_C77954: VCallAd Control_ID_ExencionesdeInmueble
  loc_C77957: FStAdFunc var_8C
  loc_C7795A: FLdPr var_8C
  loc_C7795D: Me.Tag = from_stack_1
  loc_C77962: FFree1Ad var_8C
  loc_C77965: LitStr "Rentas - Exenciones - Exenciones de Comercio"
  loc_C77968: FLdPr Me
  loc_C7796B: VCallAd Control_ID_ExencionesdeComercio
  loc_C7796E: FStAdFunc var_8C
  loc_C77971: FLdPr var_8C
  loc_C77974: Me.Tag = from_stack_1
  loc_C77979: FFree1Ad var_8C
  loc_C7797C: LitStr "Recaudación - Ingreso de Boletos de Caja"
  loc_C7797F: FLdPr Me
  loc_C77982: VCallAd Control_ID_IngresosdeBoletosdeCaja
  loc_C77985: FStAdFunc var_8C
  loc_C77988: FLdPr var_8C
  loc_C7798B: Me.Tag = from_stack_1
  loc_C77990: FFree1Ad var_8C
  loc_C77993: LitStr "Recaudación - Ingreso de Boletos"
  loc_C77996: FLdPr Me
  loc_C77999: VCallAd Control_ID_IngresosdeBoletos
  loc_C7799C: FStAdFunc var_8C
  loc_C7799F: FLdPr var_8C
  loc_C779A2: Me.Tag = from_stack_1
  loc_C779A7: FFree1Ad var_8C
  loc_C779AA: LitStr "Recaudación - Actualización de Cuenta Corriente"
  loc_C779AD: FLdPr Me
  loc_C779B0: VCallAd Control_ID_ActualizaciondeCuentaCorriente
  loc_C779B3: FStAdFunc var_8C
  loc_C779B6: FLdPr var_8C
  loc_C779B9: Me.Tag = from_stack_1
  loc_C779BE: FFree1Ad var_8C
  loc_C779C1: LitStr "Recaudación - Integración con Contabilidad y Presupuesto - Ingreso de Rentas"
  loc_C779C4: FLdPr Me
  loc_C779C7: VCallAd Control_ID_IngresosdeRentas
  loc_C779CA: FStAdFunc var_8C
  loc_C779CD: FLdPr var_8C
  loc_C779D0: Me.Tag = from_stack_1
  loc_C779D5: FFree1Ad var_8C
  loc_C779D8: LitStr "Recaudación - Integración con Contabilidad y Presupuesto - Listado de Ingreso de Rentas"
  loc_C779DB: FLdPr Me
  loc_C779DE: VCallAd Control_ID_ListadodeIngresodeRentas
  loc_C779E1: FStAdFunc var_8C
  loc_C779E4: FLdPr var_8C
  loc_C779E7: Me.Tag = from_stack_1
  loc_C779EC: FFree1Ad var_8C
  loc_C779EF: LitStr "Recaudacion - Informes - Resumen de Cobranza"
  loc_C779F2: FLdPr Me
  loc_C779F5: VCallAd Control_ID_ResumendeCobranza
  loc_C779F8: FStAdFunc var_8C
  loc_C779FB: FLdPr var_8C
  loc_C779FE: Me.Tag = from_stack_1
  loc_C77A03: FFree1Ad var_8C
  loc_C77A06: LitStr "Recaudación - Informes - Resumen de Cobranza por Recurso"
  loc_C77A09: FLdPr Me
  loc_C77A0C: VCallAd Control_ID_ResumendeCobranzaporRecurso
  loc_C77A0F: FStAdFunc var_8C
  loc_C77A12: FLdPr var_8C
  loc_C77A15: Me.Tag = from_stack_1
  loc_C77A1A: FFree1Ad var_8C
  loc_C77A1D: LitStr "Recaudación - Informes - Resumen de Cobranza por Recurso por Día"
  loc_C77A20: FLdPr Me
  loc_C77A23: VCallAd Control_ID_ResumendeCobranzaporRecursopordia
  loc_C77A26: FStAdFunc var_8C
  loc_C77A29: FLdPr var_8C
  loc_C77A2C: Me.Tag = from_stack_1
  loc_C77A31: FFree1Ad var_8C
  loc_C77A34: LitStr "Recaudación - Informes - Resumen de Cobranza por Cuenta Contable de Ingresos"
  loc_C77A37: FLdPr Me
  loc_C77A3A: VCallAd Control_ID_ResumendeCobranzaporCuentaContable
  loc_C77A3D: FStAdFunc var_8C
  loc_C77A40: FLdPr var_8C
  loc_C77A43: Me.Tag = from_stack_1
  loc_C77A48: FFree1Ad var_8C
  loc_C77A4B: LitStr "Recaudación - Informes - Resumen de Cobranza por Ente Recaudador"
  loc_C77A4E: FLdPr Me
  loc_C77A51: VCallAd Control_ID_ResumendeCobranzaporEnteRecaudador
  loc_C77A54: FStAdFunc var_8C
  loc_C77A57: FLdPr var_8C
  loc_C77A5A: Me.Tag = from_stack_1
  loc_C77A5F: FFree1Ad var_8C
  loc_C77A62: LitStr "Recaudación - Informes - Listado de Control de Caja"
  loc_C77A65: FLdPr Me
  loc_C77A68: VCallAd Control_ID_ListadodeControldeCaja
  loc_C77A6B: FStAdFunc var_8C
  loc_C77A6E: FLdPr var_8C
  loc_C77A71: Me.Tag = from_stack_1
  loc_C77A76: FFree1Ad var_8C
  loc_C77A79: LitStr "Recaudación - Anulacion de Boletos por Renta"
  loc_C77A7C: FLdPr Me
  loc_C77A7F: VCallAd Control_ID_AnulacionBoletosdeRentas
  loc_C77A82: FStAdFunc var_8C
  loc_C77A85: FLdPr var_8C
  loc_C77A88: Me.Tag = from_stack_1
  loc_C77A8D: FFree1Ad var_8C
  loc_C77A90: LitStr "Recaudación - Captura de Archivos de Entes Recaudadores"
  loc_C77A93: FLdPr Me
  loc_C77A96: VCallAd Control_ID_CapturadeArchivodeEnteRecaudadores
  loc_C77A99: FStAdFunc var_8C
  loc_C77A9C: FLdPr var_8C
  loc_C77A9F: Me.Tag = from_stack_1
  loc_C77AA4: FFree1Ad var_8C
  loc_C77AA7: LitStr "Recaudación - Generacion de Archivo para Link y Banelco"
  loc_C77AAA: FLdPr Me
  loc_C77AAD: VCallAd Control_ID_GeneraciondeArchivoParaLinkyBanelco
  loc_C77AB0: FStAdFunc var_8C
  loc_C77AB3: FLdPr var_8C
  loc_C77AB6: Me.Tag = from_stack_1
  loc_C77ABB: FFree1Ad var_8C
  loc_C77ABE: LitStr "Recaudación - Busca Pagos de E-Pagos"
  loc_C77AC1: FLdPr Me
  loc_C77AC4: VCallAd Control_ID_BuscaPagosdeEPagos
  loc_C77AC7: FStAdFunc var_8C
  loc_C77ACA: FLdPr var_8C
  loc_C77ACD: Me.Tag = from_stack_1
  loc_C77AD2: FFree1Ad var_8C
  loc_C77AD5: LitStr "Recaudación - Modificación de Boletos Cobrados "
  loc_C77AD8: FLdPr Me
  loc_C77ADB: VCallAd Control_ID_ModificacióndeBoletosCobrados
  loc_C77ADE: FStAdFunc var_8C
  loc_C77AE1: FLdPr var_8C
  loc_C77AE4: Me.Tag = from_stack_1
  loc_C77AE9: FFree1Ad var_8C
  loc_C77AEC: LitStr "Recaudación - Listado de Boletos NO procesados de E-Pagos  "
  loc_C77AEF: FLdPr Me
  loc_C77AF2: VCallAd Control_ID_ListadodeBoletosNOprocesadosEPAGOS
  loc_C77AF5: FStAdFunc var_8C
  loc_C77AF8: FLdPr var_8C
  loc_C77AFB: Me.Tag = from_stack_1
  loc_C77B00: FFree1Ad var_8C
  loc_C77B03: LitStr "Recaudación - Listado de Boletos NO procesados"
  loc_C77B06: FLdPr Me
  loc_C77B09: VCallAd Control_ID_ListadodeBoletosNOprocesados
  loc_C77B0C: FStAdFunc var_8C
  loc_C77B0F: FLdPr var_8C
  loc_C77B12: Me.Tag = from_stack_1
  loc_C77B17: FFree1Ad var_8C
  loc_C77B1A: LitStr "Liquidación - Tipo de Liquidación"
  loc_C77B1D: FLdPr Me
  loc_C77B20: VCallAd Control_ID_TipodeLiquidacionABM
  loc_C77B23: FStAdFunc var_8C
  loc_C77B26: FLdPr var_8C
  loc_C77B29: Me.Tag = from_stack_1
  loc_C77B2E: FFree1Ad var_8C
  loc_C77B31: LitStr "Liquidación - Vencimientos"
  loc_C77B34: FLdPr Me
  loc_C77B37: VCallAd Control_ID_VencimientoABM
  loc_C77B3A: FStAdFunc var_8C
  loc_C77B3D: FLdPr var_8C
  loc_C77B40: Me.Tag = from_stack_1
  loc_C77B45: FFree1Ad var_8C
  loc_C77B48: LitStr "Liquidación - Inmueble - Cálculo de Liquidación"
  loc_C77B4B: FLdPr Me
  loc_C77B4E: VCallAd Control_ID_CalculodeLiquidaciondeTasas
  loc_C77B51: FStAdFunc var_8C
  loc_C77B54: FLdPr var_8C
  loc_C77B57: Me.Tag = from_stack_1
  loc_C77B5C: FFree1Ad var_8C
  loc_C77B5F: LitStr "Liquidación - Inmueble - Control del Cálculo de Liquidación"
  loc_C77B62: FLdPr Me
  loc_C77B65: VCallAd Control_ID_ControldelCalculodeLiquidaciondeTasas
  loc_C77B68: FStAdFunc var_8C
  loc_C77B6B: FLdPr var_8C
  loc_C77B6E: Me.Tag = from_stack_1
  loc_C77B73: FFree1Ad var_8C
  loc_C77B76: LitStr "Liquidación - Inmueble - Comparación entre la liquidación y la cuenta corriente"
  loc_C77B79: FLdPr Me
  loc_C77B7C: VCallAd Control_ID_ComparacionEntreLiquidacionyCtaCteTasas
  loc_C77B7F: FStAdFunc var_8C
  loc_C77B82: FLdPr var_8C
  loc_C77B85: Me.Tag = from_stack_1
  loc_C77B8A: FFree1Ad var_8C
  loc_C77B8D: LitStr "Liquidación - Inmueble - Errores en la Liquidación de Tasas"
  loc_C77B90: FLdPr Me
  loc_C77B93: VCallAd Control_ID_ErroresdeLiquidaciondeTasas
  loc_C77B96: FStAdFunc var_8C
  loc_C77B99: FLdPr var_8C
  loc_C77B9C: Me.Tag = from_stack_1
  loc_C77BA1: FFree1Ad var_8C
  loc_C77BA4: LitStr "Liquidación - Inmueble - Generación en la Cuenta Corriente"
  loc_C77BA7: FLdPr Me
  loc_C77BAA: VCallAd Control_ID_GeneracionCuentaCorrienteTasas
  loc_C77BAD: FStAdFunc var_8C
  loc_C77BB0: FLdPr var_8C
  loc_C77BB3: Me.Tag = from_stack_1
  loc_C77BB8: FFree1Ad var_8C
  loc_C77BBB: LitStr "Liquidación - Inmueble - Emisión Masiva de Boletos de Tasas Municipales"
  loc_C77BBE: FLdPr Me
  loc_C77BC1: VCallAd Control_ID_EmisionMasivadeTasas
  loc_C77BC4: FStAdFunc var_8C
  loc_C77BC7: FLdPr var_8C
  loc_C77BCA: Me.Tag = from_stack_1
  loc_C77BCF: FFree1Ad var_8C
  loc_C77BD2: LitStr "Liquidación - Inmueble - Planilla Para el Reparto de Boletos"
  loc_C77BD5: FLdPr Me
  loc_C77BD8: VCallAd Control_ID_PlanillaparaelRepartodeBoletos
  loc_C77BDB: FStAdFunc var_8C
  loc_C77BDE: FLdPr var_8C
  loc_C77BE1: Me.Tag = from_stack_1
  loc_C77BE6: FFree1Ad var_8C
  loc_C77BE9: LitStr "Liquidación - Comercio en General - Calculo de Liquidación"
  loc_C77BEC: FLdPr Me
  loc_C77BEF: VCallAd Control_ID_CalculodeLiquidacionComercioenGeneral
  loc_C77BF2: FStAdFunc var_8C
  loc_C77BF5: FLdPr var_8C
  loc_C77BF8: Me.Tag = from_stack_1
  loc_C77BFD: FFree1Ad var_8C
  loc_C77C00: LitStr "Liquidación - Comercio - Control del Cálculo de Liquidación"
  loc_C77C03: FLdPr Me
  loc_C77C06: VCallAd Control_ID_ControldelCalculodeLiquidaciondeComercio
  loc_C77C09: FStAdFunc var_8C
  loc_C77C0C: FLdPr var_8C
  loc_C77C0F: Me.Tag = from_stack_1
  loc_C77C14: FFree1Ad var_8C
  loc_C77C17: LitStr "Liquidación - Comercio - Control del Cálculo de Liquidación Sintético"
  loc_C77C1A: FLdPr Me
  loc_C77C1D: VCallAd Control_ID_ControldelCalculodeLiquidaciondeComercioSintetico
  loc_C77C20: FStAdFunc var_8C
  loc_C77C23: FLdPr var_8C
  loc_C77C26: Me.Tag = from_stack_1
  loc_C77C2B: FFree1Ad var_8C
  loc_C77C2E: LitStr "Liquidación - Comercio - Errores en la Liquidación de Comercio"
  loc_C77C31: FLdPr Me
  loc_C77C34: VCallAd Control_ID_ErroresdeLiquidaciondeComercio
  loc_C77C37: FStAdFunc var_8C
  loc_C77C3A: FLdPr var_8C
  loc_C77C3D: Me.Tag = from_stack_1
  loc_C77C42: FFree1Ad var_8C
  loc_C77C45: LitStr "Liquidación - Comercio - Generación en la Cuenta Corriente"
  loc_C77C48: FLdPr Me
  loc_C77C4B: VCallAd Control_ID_GeneracionCuentaCorrienteComercio
  loc_C77C4E: FStAdFunc var_8C
  loc_C77C51: FLdPr var_8C
  loc_C77C54: Me.Tag = from_stack_1
  loc_C77C59: FFree1Ad var_8C
  loc_C77C5C: LitStr "Liquidación - Antena - Cálculo de Liquidación de Antena"
  loc_C77C5F: FLdPr Me
  loc_C77C62: VCallAd Control_ID_CalculodeLiquidacionAntena
  loc_C77C65: FStAdFunc var_8C
  loc_C77C68: FLdPr var_8C
  loc_C77C6B: Me.Tag = from_stack_1
  loc_C77C70: FFree1Ad var_8C
  loc_C77C73: LitStr "Liquidación - Antena - Generación en la Cuenta Corriente de Antena"
  loc_C77C76: FLdPr Me
  loc_C77C79: VCallAd Control_ID_GeneracionCuentaCorrienteAntena
  loc_C77C7C: FStAdFunc var_8C
  loc_C77C7F: FLdPr var_8C
  loc_C77C82: Me.Tag = from_stack_1
  loc_C77C87: FFree1Ad var_8C
  loc_C77C8A: LitStr "Liquidación - Antena - Emisión Masiva de Boletos de Derechos Generales"
  loc_C77C8D: FLdPr Me
  loc_C77C90: VCallAd Control_ID_EmisionMasivadeAntena
  loc_C77C93: FStAdFunc var_8C
  loc_C77C96: FLdPr var_8C
  loc_C77C99: Me.Tag = from_stack_1
  loc_C77C9E: FFree1Ad var_8C
  loc_C77CA1: LitStr "Liquidación - Publicidad - Cálculo de Liquidación de Publicidad"
  loc_C77CA4: FLdPr Me
  loc_C77CA7: VCallAd Control_ID_CalculodeLiquidacionPublicidad
  loc_C77CAA: FStAdFunc var_8C
  loc_C77CAD: FLdPr var_8C
  loc_C77CB0: Me.Tag = from_stack_1
  loc_C77CB5: FFree1Ad var_8C
  loc_C77CB8: LitStr "Liquidación - Publicidad - Generación en la Cuenta Corriente de Publicidad"
  loc_C77CBB: FLdPr Me
  loc_C77CBE: VCallAd Control_ID_GeneracionCuentaCorrientePublicidad
  loc_C77CC1: FStAdFunc var_8C
  loc_C77CC4: FLdPr var_8C
  loc_C77CC7: Me.Tag = from_stack_1
  loc_C77CCC: FFree1Ad var_8C
  loc_C77CCF: LitStr "Liquidación - Publicidad - Emisión Masiva de Publicidad"
  loc_C77CD2: FLdPr Me
  loc_C77CD5: VCallAd Control_ID_EmisionMasivadePublicidad
  loc_C77CD8: FStAdFunc var_8C
  loc_C77CDB: FLdPr var_8C
  loc_C77CDE: Me.Tag = from_stack_1
  loc_C77CE3: FFree1Ad var_8C
  loc_C77CE6: LitStr "Liquidación - Cementerio - Cálculo de Liquidación"
  loc_C77CE9: FLdPr Me
  loc_C77CEC: VCallAd Control_ID_CalculodeLiquidaciondeCementerio
  loc_C77CEF: FStAdFunc var_8C
  loc_C77CF2: FLdPr var_8C
  loc_C77CF5: Me.Tag = from_stack_1
  loc_C77CFA: FFree1Ad var_8C
  loc_C77CFD: LitStr "Liquidación - Cementerio - Control del Cálculo de Liquidación"
  loc_C77D00: FLdPr Me
  loc_C77D03: VCallAd Control_ID_ControldelCalculodeLiquidaciondeCementerio
  loc_C77D06: FStAdFunc var_8C
  loc_C77D09: FLdPr var_8C
  loc_C77D0C: Me.Tag = from_stack_1
  loc_C77D11: FFree1Ad var_8C
  loc_C77D14: LitStr "Liquidación - Cementerio - Generación en le Cuenta Corriente"
  loc_C77D17: FLdPr Me
  loc_C77D1A: VCallAd Control_ID_GeneracionCuentaCorrienteCementerio
  loc_C77D1D: FStAdFunc var_8C
  loc_C77D20: FLdPr var_8C
  loc_C77D23: Me.Tag = from_stack_1
  loc_C77D28: FFree1Ad var_8C
  loc_C77D2B: LitStr "Liquidación - Cementerio - Emisión Masiva de boletos"
  loc_C77D2E: FLdPr Me
  loc_C77D31: VCallAd Control_ID_EmisionMasivadeCementerio
  loc_C77D34: FStAdFunc var_8C
  loc_C77D37: FLdPr var_8C
  loc_C77D3A: Me.Tag = from_stack_1
  loc_C77D3F: FFree1Ad var_8C
  loc_C77D42: LitStr "Liquidación - Comercio - Emisión Masiva de Boletos de Derechos Generales"
  loc_C77D45: FLdPr Me
  loc_C77D48: VCallAd Control_ID_EmisionMasivadeComercio
  loc_C77D4B: FStAdFunc var_8C
  loc_C77D4E: FLdPr var_8C
  loc_C77D51: Me.Tag = from_stack_1
  loc_C77D56: FFree1Ad var_8C
  loc_C77D59: LitStr "Liquidación - Emisión de Boleto por Rango"
  loc_C77D5C: FLdPr Me
  loc_C77D5F: VCallAd Control_ID_EmisionBoletoPorRango
  loc_C77D62: FStAdFunc var_8C
  loc_C77D65: FLdPr var_8C
  loc_C77D68: Me.Tag = from_stack_1
  loc_C77D6D: FFree1Ad var_8C
  loc_C77D70: LitStr "Informes - Listado de Boletos"
  loc_C77D73: FLdPr Me
  loc_C77D76: VCallAd Control_ID_ListadodeBoleto
  loc_C77D79: FStAdFunc var_8C
  loc_C77D7C: FLdPr var_8C
  loc_C77D7F: Me.Tag = from_stack_1
  loc_C77D84: FFree1Ad var_8C
  loc_C77D87: LitStr "Informes - Consulta de Boleto"
  loc_C77D8A: FLdPr Me
  loc_C77D8D: VCallAd Control_ID_ConsultadeBoleto
  loc_C77D90: FStAdFunc var_8C
  loc_C77D93: FLdPr var_8C
  loc_C77D96: Me.Tag = from_stack_1
  loc_C77D9B: FFree1Ad var_8C
  loc_C77D9E: LitStr "Informes - Consulta de Numero de Operación E-pagos"
  loc_C77DA1: FLdPr Me
  loc_C77DA4: VCallAd Control_ID_ConsultaNrodeOperacionEPagos
  loc_C77DA7: FStAdFunc var_8C
  loc_C77DAA: FLdPr var_8C
  loc_C77DAD: Me.Tag = from_stack_1
  loc_C77DB2: FFree1Ad var_8C
  loc_C77DB5: LitStr "Informes - Listado de Servicios de Derechos Varios"
  loc_C77DB8: FLdPr Me
  loc_C77DBB: VCallAd Control_ID_ListadodeServiciosdeDerechosVarios
  loc_C77DBE: FStAdFunc var_8C
  loc_C77DC1: FLdPr var_8C
  loc_C77DC4: Me.Tag = from_stack_1
  loc_C77DC9: FFree1Ad var_8C
  loc_C77DCC: LitStr "Informes - Listado de Deuda por Año"
  loc_C77DCF: FLdPr Me
  loc_C77DD2: VCallAd Control_ID_ListadodeDeudaporAno
  loc_C77DD5: FStAdFunc var_8C
  loc_C77DD8: FLdPr var_8C
  loc_C77DDB: Me.Tag = from_stack_1
  loc_C77DE0: FFree1Ad var_8C
  loc_C77DE3: LitStr "Informes - Listado de Contribuyentes Libre de Deuda"
  loc_C77DE6: FLdPr Me
  loc_C77DE9: VCallAd Control_ID_ListadodeContribuyentesLibredeDeuda
  loc_C77DEC: FStAdFunc var_8C
  loc_C77DEF: FLdPr var_8C
  loc_C77DF2: Me.Tag = from_stack_1
  loc_C77DF7: FFree1Ad var_8C
  loc_C77DFA: LitStr "Informes - Listado de Aforos por Concepto"
  loc_C77DFD: FLdPr Me
  loc_C77E00: VCallAd Control_ID_ListadodeAforosporConcepto
  loc_C77E03: FStAdFunc var_8C
  loc_C77E06: FLdPr var_8C
  loc_C77E09: Me.Tag = from_stack_1
  loc_C77E0E: FFree1Ad var_8C
  loc_C77E11: LitStr "Informes - Estadística de Facildad de Pago"
  loc_C77E14: FLdPr Me
  loc_C77E17: VCallAd Control_ID_EstadisticadeFacilidaddePago
  loc_C77E1A: FStAdFunc var_8C
  loc_C77E1D: FLdPr var_8C
  loc_C77E20: Me.Tag = from_stack_1
  loc_C77E25: FFree1Ad var_8C
  loc_C77E28: LitStr "Informes - Listado de Pagos Duplicados"
  loc_C77E2B: FLdPr Me
  loc_C77E2E: VCallAd Control_ID_ListadodePagosDuplicados
  loc_C77E31: FStAdFunc var_8C
  loc_C77E34: FLdPr var_8C
  loc_C77E37: Me.Tag = from_stack_1
  loc_C77E3C: FFree1Ad var_8C
  loc_C77E3F: LitStr "Informes - Listado de Deudores con Apremio"
  loc_C77E42: FLdPr Me
  loc_C77E45: VCallAd Control_ID_ListadodeDeudoresConApremio
  loc_C77E48: FStAdFunc var_8C
  loc_C77E4B: FLdPr var_8C
  loc_C77E4E: Me.Tag = from_stack_1
  loc_C77E53: FFree1Ad var_8C
  loc_C77E56: LitStr "Informes - Tribunal de Cuentas - Acuerdo 2988 II.B5"
  loc_C77E59: FLdPr Me
  loc_C77E5C: VCallAd Control_ID_A2988IIB5
  loc_C77E5F: FStAdFunc var_8C
  loc_C77E62: FLdPr var_8C
  loc_C77E65: Me.Tag = from_stack_1
  loc_C77E6A: FFree1Ad var_8C
  loc_C77E6D: LitStr "Informes - Tribunal de Cuentas - Acuerdo 2988 II.B5 Resumen"
  loc_C77E70: FLdPr Me
  loc_C77E73: VCallAd Control_ID_A2988IIB5Resumen
  loc_C77E76: FStAdFunc var_8C
  loc_C77E79: FLdPr var_8C
  loc_C77E7C: Me.Tag = from_stack_1
  loc_C77E81: FFree1Ad var_8C
  loc_C77E84: LitStr "Informes - Tribunal de Cuentas - Acuerdo 2988 XVIII Art. 25 A"
  loc_C77E87: FLdPr Me
  loc_C77E8A: VCallAd Control_ID_Acuerdo2988AnexoXVIII
  loc_C77E8D: FStAdFunc var_8C
  loc_C77E90: FLdPr var_8C
  loc_C77E93: Me.Tag = from_stack_1
  loc_C77E98: FFree1Ad var_8C
  loc_C77E9B: LitStr "Informes - Tribunal de Cuentas - Acuerdo 2988 XIX Art. 25 B"
  loc_C77E9E: FLdPr Me
  loc_C77EA1: VCallAd Control_ID_Acuerdo2988AnexoXIX
  loc_C77EA4: FStAdFunc var_8C
  loc_C77EA7: FLdPr var_8C
  loc_C77EAA: Me.Tag = from_stack_1
  loc_C77EAF: FFree1Ad var_8C
  loc_C77EB2: LitStr "Informes - Tribunal de Cuentas - Acuerdo 2988 XX Art. 25 C"
  loc_C77EB5: FLdPr Me
  loc_C77EB8: VCallAd Control_ID_Acuerdo2988AnexoXX
  loc_C77EBB: FStAdFunc var_8C
  loc_C77EBE: FLdPr var_8C
  loc_C77EC1: Me.Tag = from_stack_1
  loc_C77EC6: FFree1Ad var_8C
  loc_C77EC9: LitStr "Informes - Tribunal de Cuentas - Acuerdo 2988 XXI Art. 25 D"
  loc_C77ECC: FLdPr Me
  loc_C77ECF: VCallAd Control_ID_Acuerdo2988AnexoXXI
  loc_C77ED2: FStAdFunc var_8C
  loc_C77ED5: FLdPr var_8C
  loc_C77ED8: Me.Tag = from_stack_1
  loc_C77EDD: FFree1Ad var_8C
  loc_C77EE0: LitStr "Informes - Tribunal de Cuentas - Acuerdo 3328 Artículo 2"
  loc_C77EE3: FLdPr Me
  loc_C77EE6: VCallAd Control_ID_A3328a2
  loc_C77EE9: FStAdFunc var_8C
  loc_C77EEC: FLdPr var_8C
  loc_C77EEF: Me.Tag = from_stack_1
  loc_C77EF4: FFree1Ad var_8C
  loc_C77EF7: LitStr "Informes - Tribunal de Cuentas - Acuerdo 3949 Anexo 17"
  loc_C77EFA: FLdPr Me
  loc_C77EFD: VCallAd Control_ID_A3949a17
  loc_C77F00: FStAdFunc var_8C
  loc_C77F03: FLdPr var_8C
  loc_C77F06: Me.Tag = from_stack_1
  loc_C77F0B: FFree1Ad var_8C
  loc_C77F0E: LitStr "Informes - Tribunal de Cuentas - Acuerdo 3949 Anexo 18"
  loc_C77F11: FLdPr Me
  loc_C77F14: VCallAd Control_ID_A3949a18
  loc_C77F17: FStAdFunc var_8C
  loc_C77F1A: FLdPr var_8C
  loc_C77F1D: Me.Tag = from_stack_1
  loc_C77F22: FFree1Ad var_8C
  loc_C77F25: LitStr "Informes - Tribunal de Cuentas - Acuerdo 3949 Anexo 22"
  loc_C77F28: FLdPr Me
  loc_C77F2B: VCallAd Control_ID_A3949a22
  loc_C77F2E: FStAdFunc var_8C
  loc_C77F31: FLdPr var_8C
  loc_C77F34: Me.Tag = from_stack_1
  loc_C77F39: FFree1Ad var_8C
  loc_C77F3C: LitStr "Informes - Tribunal de Cuentas - Acuerdo 3949 Anexo 23"
  loc_C77F3F: FLdPr Me
  loc_C77F42: VCallAd Control_ID_A3949a23
  loc_C77F45: FStAdFunc var_8C
  loc_C77F48: FLdPr var_8C
  loc_C77F4B: Me.Tag = from_stack_1
  loc_C77F50: FFree1Ad var_8C
  loc_C77F53: LitStr "Informes - Tribunal de Cuentas - Acuerdo 5662 Articulo 14 Inciso C"
  loc_C77F56: FLdPr Me
  loc_C77F59: VCallAd Control_ID_Acuerdo5662Art14IncC
  loc_C77F5C: FStAdFunc var_8C
  loc_C77F5F: FLdPr var_8C
  loc_C77F62: Me.Tag = from_stack_1
  loc_C77F67: FFree1Ad var_8C
  loc_C77F6A: LitStr "Informes - Tribunal de Cuentas - Acuerdo 5662 Articulo 14 Inciso D"
  loc_C77F6D: FLdPr Me
  loc_C77F70: VCallAd Control_ID_Acuerdo5662Art14IncD
  loc_C77F73: FStAdFunc var_8C
  loc_C77F76: FLdPr var_8C
  loc_C77F79: Me.Tag = from_stack_1
  loc_C77F7E: FFree1Ad var_8C
  loc_C77F81: LitStr "Informes - Tribunal de Cuentas - Gasto Tributario"
  loc_C77F84: FLdPr Me
  loc_C77F87: VCallAd Control_ID_GastoTributario
  loc_C77F8A: FStAdFunc var_8C
  loc_C77F8D: FLdPr var_8C
  loc_C77F90: Me.Tag = from_stack_1
  loc_C77F95: FFree1Ad var_8C
  loc_C77F98: LitStr "Informes - Tribunal de Cuentas - Listado de Aforos para el Tribunal"
  loc_C77F9B: FLdPr Me
  loc_C77F9E: VCallAd Control_ID_ListadodeAforosParaElTribunal
  loc_C77FA1: FStAdFunc var_8C
  loc_C77FA4: FLdPr var_8C
  loc_C77FA7: Me.Tag = from_stack_1
  loc_C77FAC: FFree1Ad var_8C
  loc_C77FAF: LitStr "Informes - Normas ISO - Aforos y Pagos"
  loc_C77FB2: FLdPr Me
  loc_C77FB5: VCallAd Control_ID_AforosyPagos
  loc_C77FB8: FStAdFunc var_8C
  loc_C77FBB: FLdPr var_8C
  loc_C77FBE: Me.Tag = from_stack_1
  loc_C77FC3: FFree1Ad var_8C
  loc_C77FC6: LitStr "Informes - Estadísticas - Estadística de Facturación y Cobrado"
  loc_C77FC9: FLdPr Me
  loc_C77FCC: VCallAd Control_ID_EstadisticadeFacturacionyCobrado
  loc_C77FCF: FStAdFunc var_8C
  loc_C77FD2: FLdPr var_8C
  loc_C77FD5: Me.Tag = from_stack_1
  loc_C77FDA: FFree1Ad var_8C
  loc_C77FDD: LitStr "Herramientas - Usuario"
  loc_C77FE0: FLdPr Me
  loc_C77FE3: VCallAd Control_ID_Usuario
  loc_C77FE6: FStAdFunc var_8C
  loc_C77FE9: FLdPr var_8C
  loc_C77FEC: Me.Tag = from_stack_1
  loc_C77FF1: FFree1Ad var_8C
  loc_C77FF4: LitStr "Herramientas - Acceso"
  loc_C77FF7: FLdPr Me
  loc_C77FFA: VCallAd Control_ID_Acceso
  loc_C77FFD: FStAdFunc var_8C
  loc_C78000: FLdPr var_8C
  loc_C78003: Me.Tag = from_stack_1
  loc_C78008: FFree1Ad var_8C
  loc_C7800B: LitStr "Herramientas - Proceso para dar de Baja Facilidades Activas"
  loc_C7800E: FLdPr Me
  loc_C78011: VCallAd Control_ID_ProcesoBajadeFacilidadActivas
  loc_C78014: FStAdFunc var_8C
  loc_C78017: FLdPr var_8C
  loc_C7801A: Me.Tag = from_stack_1
  loc_C7801F: FFree1Ad var_8C
  loc_C78022: LitStr "Herramientas - Proceso Creditos Manuales de Pagos Duplicados"
  loc_C78025: FLdPr Me
  loc_C78028: VCallAd Control_ID_ProcesoCreditosManualesPagosDuplicados
  loc_C7802B: FStAdFunc var_8C
  loc_C7802E: FLdPr var_8C
  loc_C78031: Me.Tag = from_stack_1
  loc_C78036: FFree1Ad var_8C
  loc_C78039: FLdRfVar var_94
  loc_C7803C: FLdRfVar var_8C
  loc_C7803F: ImpAdLdRf MemVar_D9C5D8
  loc_C78042: NewIfNullPr Global
  loc_C78045:  = Global.Screen
  loc_C7804A: FLdPr var_8C
  loc_C7804D:  = Screen.Width
  loc_C78052: FLdFPR4 var_94
  loc_C78055: LitI2_Byte 1
  loc_C78057: CR8I2
  loc_C78058: MulR8
  loc_C78059: PopFPR4
  loc_C7805A: FLdPrThis
  loc_C7805B: Me.Width = from_stack_1s
  loc_C78060: FFree1Ad var_8C
  loc_C78063: FLdRfVar var_94
  loc_C78066: FLdRfVar var_8C
  loc_C78069: ImpAdLdRf MemVar_D9C5D8
  loc_C7806C: NewIfNullPr Global
  loc_C7806F:  = Global.Screen
  loc_C78074: FLdPr var_8C
  loc_C78077:  = Screen.Height
  loc_C7807C: FLdFPR4 var_94
  loc_C7807F: LitI2_Byte 1
  loc_C78081: CR8I2
  loc_C78082: MulR8
  loc_C78083: PopFPR4
  loc_C78084: FLdPrThis
  loc_C78085: Me.Height = from_stack_1s
  loc_C7808A: FFree1Ad var_8C
  loc_C7808D: ImpAdCallFPR4 Proc_272_40_B5CC94()
  loc_C78092: Call Proc_13_178_AE4940()
  loc_C78097: ExitProcHresult
  loc_C78098: FLdRfVar var_94
  loc_C7809B: ImpAdCallI2 Err 'rtcErrObj
  loc_C780A0: FStAdFunc var_8C
  loc_C780A3: FLdPr var_8C
  loc_C780A6:  = Err.Number
  loc_C780AB: ILdRf var_94
  loc_C780AE: LitI4 &H183
  loc_C780B3: EqI4
  loc_C780B4: FFree1Ad var_8C
  loc_C780B7: BranchF loc_C781C1
  loc_C780BA: LitVarStr var_D8, "Error # "
  loc_C780BF: FLdRfVar var_94
  loc_C780C2: ImpAdCallI2 Err 'rtcErrObj
  loc_C780C7: FStAdFunc var_8C
  loc_C780CA: FLdPr var_8C
  loc_C780CD:  = Err.Number
  loc_C780D2: ILdRf var_94
  loc_C780D5: CVarI4
  loc_C780D9: FLdRfVar var_C8
  loc_C780DC: ImpAdCallFPR4  = Str()
  loc_C780E1: FLdRfVar var_C8
  loc_C780E4: ConcatVar var_E8
  loc_C780E8: LitVarStr var_F8, " fue generado por "
  loc_C780ED: ConcatVar var_108
  loc_C780F1: FLdRfVar var_110
  loc_C780F4: ImpAdCallI2 Err 'rtcErrObj
  loc_C780F9: FStAdFunc var_10C
  loc_C780FC: FLdPr var_10C
  loc_C780FF:  = Err.Source
  loc_C78104: FLdZeroAd var_110
  loc_C78107: CVarStr var_120
  loc_C7810A: ConcatVar var_130
  loc_C7810E: LitI4 &HD
  loc_C78113: FLdRfVar var_140
  loc_C78116: ImpAdCallFPR4  = Chr()
  loc_C7811B: FLdRfVar var_140
  loc_C7811E: ConcatVar var_150
  loc_C78122: FLdRfVar var_158
  loc_C78125: ImpAdCallI2 Err 'rtcErrObj
  loc_C7812A: FStAdFunc var_154
  loc_C7812D: FLdPr var_154
  loc_C78130:  = Err.Description
  loc_C78135: FLdZeroAd var_158
  loc_C78138: CVarStr var_168
  loc_C7813B: ConcatVar var_178
  loc_C7813F: CStrVarTmp
  loc_C78140: FStStr var_98
  loc_C78143: FFreeAd var_8C = "": var_10C = ""
  loc_C7814C: FFreeVar var_B8 = "": var_C8 = "": var_E8 = "": var_108 = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_168 = ""
  loc_C78163: LitVar_Missing var_E8
  loc_C78166: LitVar_Missing var_C8
  loc_C78169: LitVarStr var_D8, "Error"
  loc_C7816E: FStVarCopyObj var_B8
  loc_C78171: FLdRfVar var_B8
  loc_C78174: LitI4 0
  loc_C78179: FLdRfVar var_98
  loc_C7817C: CVarRef
  loc_C78181: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C78186: FFreeVar var_B8 = "": var_C8 = ""
  loc_C7818F: LitVar_Missing var_108
  loc_C78192: LitVar_Missing var_E8
  loc_C78195: LitVarStr var_D8, "ERROR"
  loc_C7819A: FStVarCopyObj var_C8
  loc_C7819D: FLdRfVar var_C8
  loc_C781A0: LitI4 0
  loc_C781A5: LitVarStr var_A8, " Revisar el MENU "
  loc_C781AA: FStVarCopyObj var_B8
  loc_C781AD: FLdRfVar var_B8
  loc_C781B0: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C781B5: FFreeVar var_B8 = "": var_C8 = "": var_E8 = ""
  loc_C781C0: ExitProcHresult
  loc_C781C1: ExitProcHresult
End Sub

Private Sub MDIForm_Unload(Cancel As Integer) 'A3FD98
  'Data Table: 53CCB4
  loc_A3FD4C: ImpAdLdPr unk_53CF55
  loc_A3FD4F: MemLdPr global_0
  loc_A3FD52: Me.Close
  loc_A3FD57: LitNothing
  loc_A3FD59: CastAd
  loc_A3FD5C: ImpAdStAdFunc MemVar_D9301C
  loc_A3FD60: LitI2_Byte 0
  loc_A3FD62: ImpAdCallFPR4 Proc_272_45_B529C8()
  loc_A3FD67: LitI2_Byte &HFF
  loc_A3FD69: ILdRf Me
  loc_A3FD6C: CastAd
  loc_A3FD6F: FStAdFunc var_88
  loc_A3FD72: FLdRfVar var_88
  loc_A3FD75: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A3FD7A: FFree1Ad var_88
  loc_A3FD7D: ImpAdCallFPR4 Proc_57_22_A883E4()
  loc_A3FD82: ImpAdCallFPR4 Proc_57_20_B45944()
  loc_A3FD87: LitStr "HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\ODBC Data Sources\myrecaudacion-rivadavia"
  loc_A3FD8A: FLdRfVar var_98
  loc_A3FD8D: ImpAdCallFPR4 Proc_57_24_A3BDA0(, )
  loc_A3FD92: FFree1Var var_98 = ""
  loc_A3FD95: ExitProcHresult
  loc_A3FD96: CRec2Uni arg_3C00
End Sub

Private Sub MDIForm_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'A51D04
  'Data Table: 53CCB4
  loc_A51CB0: FLdRfVar var_88
  loc_A51CB3: ImpAdLdRf MemVar_D9C5D8
  loc_A51CB6: NewIfNullPr Global
  loc_A51CB9:  = Global.Forms
  loc_A51CBE: FLdPr var_88
  loc_A51CC1: LateMemLdVar
  loc_A51CC6: LitVarI2 var_98, 1
  loc_A51CCB: HardType
  loc_A51CCC: GtVarBool
  loc_A51CCE: FFree1Ad var_88
  loc_A51CD1: FFree1Var var_A8 = ""
  loc_A51CD4: BranchF loc_A51CE7
  loc_A51CD7: LitStr "Debe cerrar todos los formularios abiertos antes de salir"
  loc_A51CDA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A51CDF: LitI2_Byte &HFF
  loc_A51CE1: IStI2 Cancel
  loc_A51CE4: Branch loc_A51D01
  loc_A51CE7: FLdPr Me
  loc_A51CEA: MemLdI2 global_64
  loc_A51CED: BranchF loc_A51D01
  loc_A51CF0: FLdPr Me
  loc_A51CF3: MemLdRfVar from_stack_1.global_60
  loc_A51CF6: FLdPr Me
  loc_A51CF9: MemLdRfVar from_stack_1.global_56
  loc_A51CFC: ImpAdCallFPR4 Proc_36_0_A9C978(, )
  loc_A51D01: ExitProcHresult
  loc_A51D02: FFree1Ad arg_3C74
End Sub

Private Sub ActualizarPermisos_Click() '9B0464
  'Data Table: 53CCB4
  loc_9B045C: ImpAdCallFPR4 Proc_272_40_B5CC94()
  loc_9B0461: ExitProcHresult
End Sub

Private Sub OficialdeJusticiaABM_Click() '9EB3B8
  'Data Table: 53CCB4
  loc_9EB394: ImpAdLdRf MemVar_D939F0
  loc_9EB397: NewIfNullAd
  loc_9EB39A: CastAd
  loc_9EB39D: FStAdFunc var_88
  loc_9EB3A0: FLdRfVar var_88
  loc_9EB3A3: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB3A8: ILdRf var_88
  loc_9EB3AB: CastAd
  loc_9EB3AE: ImpAdStAdFunc MemVar_D939F0
  loc_9EB3B2: FFree1Ad var_88
  loc_9EB3B5: ExitProcHresult
End Sub

Private Sub InstanciaJudicialABM_Click() '9EBAF0
  'Data Table: 53CCB4
  loc_9EBACC: ImpAdLdRf MemVar_D937C0
  loc_9EBACF: NewIfNullAd
  loc_9EBAD2: CastAd
  loc_9EBAD5: FStAdFunc var_88
  loc_9EBAD8: FLdRfVar var_88
  loc_9EBADB: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EBAE0: ILdRf var_88
  loc_9EBAE3: CastAd
  loc_9EBAE6: ImpAdStAdFunc MemVar_D937C0
  loc_9EBAEA: FFree1Ad var_88
  loc_9EBAED: ExitProcHresult
  loc_9EBAEE: CExtInstUnk
End Sub

Private Sub Salir_Click() '9CF370
  'Data Table: 53CCB4
  loc_9CF358: ILdRf Me
  loc_9CF35B: FStAdNoPop
  loc_9CF35F: ImpAdLdRf MemVar_D9C5D8
  loc_9CF362: NewIfNullPr Global
  loc_9CF365: Global.Unload from_stack_1
  loc_9CF36A: FFree1Ad var_88
  loc_9CF36D: ExitProcHresult
  loc_9CF36E: LitVar_TRUE arg_3C00
End Sub

Private Sub ListadodeApremioporOficinayCuenta_Click() 'A01050
  'Data Table: 53CCB4
  loc_A01020: ImpAdLdRf MemVar_D9366C
  loc_A01023: NewIfNullAd
  loc_A01026: CastAd
  loc_A01029: FStAdFuncNoPop
  loc_A0102C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A01031: FFree1Ad var_88
  loc_A01034: LitVar_Missing var_A8
  loc_A01037: PopAdLdVar
  loc_A01038: LitVarI4
  loc_A01040: PopAdLdVar
  loc_A01041: ImpAdLdRf MemVar_D9366C
  loc_A01044: NewIfNullPr rptListadodeApremioporOficinayCuenta
  loc_A01047: rptListadodeApremioporOficinayCuenta.Show from_stack_1, from_stack_2
  loc_A0104C: ExitProcHresult
End Sub

Private Sub GastosyHonorariosdeApremio_Click() '9EA230
  'Data Table: 53CCB4
  loc_9EA20C: ImpAdLdRf MemVar_D93540
  loc_9EA20F: NewIfNullAd
  loc_9EA212: CastAd
  loc_9EA215: FStAdFunc var_88
  loc_9EA218: FLdRfVar var_88
  loc_9EA21B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EA220: ILdRf var_88
  loc_9EA223: CastAd
  loc_9EA226: ImpAdStAdFunc MemVar_D93540
  loc_9EA22A: FFree1Ad var_88
  loc_9EA22D: ExitProcHresult
End Sub

Private Sub ResumenGeneraldeOficialdeJusticia_Click() 'A058F8
  'Data Table: 53CCB4
  loc_A058C8: ImpAdLdRf MemVar_D93B08
  loc_A058CB: NewIfNullAd
  loc_A058CE: CastAd
  loc_A058D1: FStAdFuncNoPop
  loc_A058D4: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A058D9: FFree1Ad var_88
  loc_A058DC: LitVar_Missing var_A8
  loc_A058DF: PopAdLdVar
  loc_A058E0: LitVarI4
  loc_A058E8: PopAdLdVar
  loc_A058E9: ImpAdLdRf MemVar_D93B08
  loc_A058EC: NewIfNullPr rptResumenGeneraldeApremiosporOficialdeJusticia
  loc_A058EF: rptResumenGeneraldeApremiosporOficialdeJusticia.Show from_stack_1, from_stack_2
  loc_A058F4: ExitProcHresult
  loc_A058F5: CVarCy arg_0
End Sub

Private Sub ResumenGeneraldeRecaudadores_Click() 'A0563C
  'Data Table: 53CCB4
  loc_A0560C: ImpAdLdRf MemVar_D93B1C
  loc_A0560F: NewIfNullAd
  loc_A05612: CastAd
  loc_A05615: FStAdFuncNoPop
  loc_A05618: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A0561D: FFree1Ad var_88
  loc_A05620: LitVar_Missing var_A8
  loc_A05623: PopAdLdVar
  loc_A05624: LitVarI4
  loc_A0562C: PopAdLdVar
  loc_A0562D: ImpAdLdRf MemVar_D93B1C
  loc_A05630: NewIfNullPr rptResumenGeneraldeRecaudadores
  loc_A05633: rptResumenGeneraldeRecaudadores.Show from_stack_1, from_stack_2
  loc_A05638: ExitProcHresult
End Sub

Private Sub EstadisticasdeApremioyBoletasNotificadas_Click() 'A05A88
  'Data Table: 53CCB4
  loc_A05A58: ImpAdLdRf MemVar_D938EC
  loc_A05A5B: NewIfNullAd
  loc_A05A5E: CastAd
  loc_A05A61: FStAdFuncNoPop
  loc_A05A64: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05A69: FFree1Ad var_88
  loc_A05A6C: LitVar_Missing var_A8
  loc_A05A6F: PopAdLdVar
  loc_A05A70: LitVarI4
  loc_A05A78: PopAdLdVar
  loc_A05A79: ImpAdLdRf MemVar_D938EC
  loc_A05A7C: NewIfNullPr rptEstadisticasdeApremioyBoletasNotificadas
  loc_A05A7F: rptEstadisticasdeApremioyBoletasNotificadas.Show from_stack_1, from_stack_2
  loc_A05A84: ExitProcHresult
End Sub

Private Sub ListadoAcuerdo3328Apremio_Click() 'A00CCC
  'Data Table: 53CCB4
  loc_A00C9C: ImpAdLdRf MemVar_D93608
  loc_A00C9F: NewIfNullAd
  loc_A00CA2: CastAd
  loc_A00CA5: FStAdFuncNoPop
  loc_A00CA8: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00CAD: FFree1Ad var_88
  loc_A00CB0: LitVar_Missing var_A8
  loc_A00CB3: PopAdLdVar
  loc_A00CB4: LitVarI4
  loc_A00CBC: PopAdLdVar
  loc_A00CBD: ImpAdLdRf MemVar_D93608
  loc_A00CC0: NewIfNullPr rptAcuerdo3328Apremio
  loc_A00CC3: rptAcuerdo3328Apremio.Show from_stack_1, from_stack_2
  loc_A00CC8: ExitProcHresult
End Sub

Private Sub EmisionBoleto_Click() 'A60B88
  'Data Table: 53CCB4
  loc_A60B30: LitVar_Missing var_A4
  loc_A60B33: PopAdLdVar
  loc_A60B34: LitVar_Missing var_94
  loc_A60B37: PopAdLdVar
  loc_A60B38: ImpAdLdRf MemVar_D93DF4
  loc_A60B3B: NewIfNullPr frmEmisionBoleto
  loc_A60B3E: frmEmisionBoleto.Show from_stack_1, from_stack_2
  loc_A60B43: FLdRfVar var_A8
  loc_A60B46: FLdPr Me
  loc_A60B49:  = Me.FontSize
  loc_A60B4E: FLdPr var_A8
  loc_A60B51: LateMemLdVar
  loc_A60B56: FLdRfVar var_AC
  loc_A60B59: ImpAdLdRf MemVar_D93DF4
  loc_A60B5C: NewIfNullPr frmEmisionBoleto
  loc_A60B5F:  = frmEmisionBoleto.Name
  loc_A60B64: FLdZeroAd var_AC
  loc_A60B67: CVarStr var_BC
  loc_A60B6A: HardType
  loc_A60B6B: NeVarBool
  loc_A60B6D: FFree1Ad var_A8
  loc_A60B70: FFreeVar var_CC = ""
  loc_A60B77: BranchF loc_A60B85
  loc_A60B7A: ImpAdLdRf MemVar_D93DF4
  loc_A60B7D: NewIfNullPr frmEmisionBoleto
  loc_A60B80: frmEmisionBoleto.SetFocus
  loc_A60B85: ExitProcHresult
End Sub

Private Sub ResumenGeneraldeApremio_Click() 'A059C0
  'Data Table: 53CCB4
  loc_A05990: ImpAdLdRf MemVar_D93AF4
  loc_A05993: NewIfNullAd
  loc_A05996: CastAd
  loc_A05999: FStAdFuncNoPop
  loc_A0599C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A059A1: FFree1Ad var_88
  loc_A059A4: LitVar_Missing var_A8
  loc_A059A7: PopAdLdVar
  loc_A059A8: LitVarI4
  loc_A059B0: PopAdLdVar
  loc_A059B1: ImpAdLdRf MemVar_D93AF4
  loc_A059B4: NewIfNullPr rptResumenGeneraldeApremios
  loc_A059B7: rptResumenGeneraldeApremios.Show from_stack_1, from_stack_2
  loc_A059BC: ExitProcHresult
End Sub

Private Sub CuentaCorriente_Click() 'A60D5C
  'Data Table: 53CCB4
  loc_A60D04: LitVar_Missing var_A4
  loc_A60D07: PopAdLdVar
  loc_A60D08: LitVar_Missing var_94
  loc_A60D0B: PopAdLdVar
  loc_A60D0C: ImpAdLdRf MemVar_D93DCC
  loc_A60D0F: NewIfNullPr frmCtaCte
  loc_A60D12: frmCtaCte.Show from_stack_1, from_stack_2
  loc_A60D17: FLdRfVar var_A8
  loc_A60D1A: FLdPr Me
  loc_A60D1D:  = Me.FontSize
  loc_A60D22: FLdPr var_A8
  loc_A60D25: LateMemLdVar
  loc_A60D2A: FLdRfVar var_AC
  loc_A60D2D: ImpAdLdRf MemVar_D93DCC
  loc_A60D30: NewIfNullPr frmCtaCte
  loc_A60D33:  = frmCtaCte.Name
  loc_A60D38: FLdZeroAd var_AC
  loc_A60D3B: CVarStr var_BC
  loc_A60D3E: HardType
  loc_A60D3F: NeVarBool
  loc_A60D41: FFree1Ad var_A8
  loc_A60D44: FFreeVar var_CC = ""
  loc_A60D4B: BranchF loc_A60D59
  loc_A60D4E: ImpAdLdRf MemVar_D93DCC
  loc_A60D51: NewIfNullPr frmCtaCte
  loc_A60D54: frmCtaCte.SetFocus
  loc_A60D59: ExitProcHresult
End Sub

Private Sub GeneraciondeTXTCajaForence_Click() 'A00880
  'Data Table: 53CCB4
  loc_A00850: ImpAdLdRf MemVar_D935B8
  loc_A00853: NewIfNullAd
  loc_A00856: CastAd
  loc_A00859: FStAdFuncNoPop
  loc_A0085C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00861: FFree1Ad var_88
  loc_A00864: LitVar_Missing var_A8
  loc_A00867: PopAdLdVar
  loc_A00868: LitVarI4
  loc_A00870: PopAdLdVar
  loc_A00871: ImpAdLdRf MemVar_D935B8
  loc_A00874: NewIfNullPr rptGeneraciondeTXTCajaForence
  loc_A00877: rptGeneraciondeTXTCajaForence.Show from_stack_1, from_stack_2
  loc_A0087C: ExitProcHresult
  loc_A0087F: LitI2_Byte &H3C
End Sub

Private Sub ReimpresiondeFacilidaddePago_Click() 'A05DA8
  'Data Table: 53CCB4
  loc_A05D78: ImpAdLdRf MemVar_D93AA4
  loc_A05D7B: NewIfNullAd
  loc_A05D7E: CastAd
  loc_A05D81: FStAdFuncNoPop
  loc_A05D84: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05D89: FFree1Ad var_88
  loc_A05D8C: LitVar_Missing var_A8
  loc_A05D8F: PopAdLdVar
  loc_A05D90: LitVarI4
  loc_A05D98: PopAdLdVar
  loc_A05D99: ImpAdLdRf MemVar_D93AA4
  loc_A05D9C: NewIfNullPr rptFacilidaddePago
  loc_A05D9F: rptFacilidaddePago.Show from_stack_1, from_stack_2
  loc_A05DA4: ExitProcHresult
End Sub

Private Sub EmisiondeBoletoMasivodeComercio_Click() '9ECC20
  'Data Table: 53CCB4
  loc_9ECBFC: ImpAdLdRf MemVar_D934C8
  loc_9ECBFF: NewIfNullAd
  loc_9ECC02: CastAd
  loc_9ECC05: FStAdFunc var_88
  loc_9ECC08: FLdRfVar var_88
  loc_9ECC0B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9ECC10: ILdRf var_88
  loc_9ECC13: CastAd
  loc_9ECC16: ImpAdStAdFunc MemVar_D934C8
  loc_9ECC1A: FFree1Ad var_88
  loc_9ECC1D: ExitProcHresult
End Sub

Private Sub ConsultadePlanesdePago_Click() 'A60F30
  'Data Table: 53CCB4
  loc_A60ED8: LitVar_Missing var_A4
  loc_A60EDB: PopAdLdVar
  loc_A60EDC: LitVar_Missing var_94
  loc_A60EDF: PopAdLdVar
  loc_A60EE0: ImpAdLdRf MemVar_D93DA4
  loc_A60EE3: NewIfNullPr frmConsultadePlanesdePago
  loc_A60EE6: frmConsultadePlanesdePago.Show from_stack_1, from_stack_2
  loc_A60EEB: FLdRfVar var_A8
  loc_A60EEE: FLdPr Me
  loc_A60EF1:  = Me.FontSize
  loc_A60EF6: FLdPr var_A8
  loc_A60EF9: LateMemLdVar
  loc_A60EFE: FLdRfVar var_AC
  loc_A60F01: ImpAdLdRf MemVar_D93DA4
  loc_A60F04: NewIfNullPr frmConsultadePlanesdePago
  loc_A60F07:  = frmConsultadePlanesdePago.Name
  loc_A60F0C: FLdZeroAd var_AC
  loc_A60F0F: CVarStr var_BC
  loc_A60F12: HardType
  loc_A60F13: NeVarBool
  loc_A60F15: FFree1Ad var_A8
  loc_A60F18: FFreeVar var_CC = ""
  loc_A60F1F: BranchF loc_A60F2D
  loc_A60F22: ImpAdLdRf MemVar_D93DA4
  loc_A60F25: NewIfNullPr frmConsultadePlanesdePago
  loc_A60F28: frmConsultadePlanesdePago.SetFocus
  loc_A60F2D: ExitProcHresult
End Sub

Private Sub AforosdeCementerio_Click() '9EAE90
  'Data Table: 53CCB4
  loc_9EAE6C: ImpAdLdRf MemVar_D93310
  loc_9EAE6F: NewIfNullAd
  loc_9EAE72: CastAd
  loc_9EAE75: FStAdFunc var_88
  loc_9EAE78: FLdRfVar var_88
  loc_9EAE7B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EAE80: ILdRf var_88
  loc_9EAE83: CastAd
  loc_9EAE86: ImpAdStAdFunc MemVar_D93310
  loc_9EAE8A: FFree1Ad var_88
  loc_9EAE8D: ExitProcHresult
End Sub

Private Sub AforosdeDeudoresVarios_Click() '9EAF40
  'Data Table: 53CCB4
  loc_9EAF1C: ImpAdLdRf MemVar_D93324
  loc_9EAF1F: NewIfNullAd
  loc_9EAF22: CastAd
  loc_9EAF25: FStAdFunc var_88
  loc_9EAF28: FLdRfVar var_88
  loc_9EAF2B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EAF30: ILdRf var_88
  loc_9EAF33: CastAd
  loc_9EAF36: ImpAdStAdFunc MemVar_D93324
  loc_9EAF3A: FFree1Ad var_88
  loc_9EAF3D: ExitProcHresult
End Sub

Private Sub ListadodeAforosyPagosTransito_Click() 'A00D30
  'Data Table: 53CCB4
  loc_A00D00: ImpAdLdRf MemVar_D93644
  loc_A00D03: NewIfNullAd
  loc_A00D06: CastAd
  loc_A00D09: FStAdFuncNoPop
  loc_A00D0C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00D11: FFree1Ad var_88
  loc_A00D14: LitVar_Missing var_A8
  loc_A00D17: PopAdLdVar
  loc_A00D18: LitVarI4
  loc_A00D20: PopAdLdVar
  loc_A00D21: ImpAdLdRf MemVar_D93644
  loc_A00D24: NewIfNullPr rptListadodeAforosyPagosTransito
  loc_A00D27: rptListadodeAforosyPagosTransito.Show from_stack_1, from_stack_2
  loc_A00D2C: ExitProcHresult
  loc_A00D2D: FStI2 arg_DFF
End Sub

Private Sub CertificadodeLibreDeuda_Click() 'A02950
  'Data Table: 53CCB4
  loc_A02920: ImpAdLdRf MemVar_D933D8
  loc_A02923: NewIfNullAd
  loc_A02926: CastAd
  loc_A02929: FStAdFuncNoPop
  loc_A0292C: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A02931: FFree1Ad var_88
  loc_A02934: LitVar_Missing var_A8
  loc_A02937: PopAdLdVar
  loc_A02938: LitVarI4
  loc_A02940: PopAdLdVar
  loc_A02941: ImpAdLdRf MemVar_D933D8
  loc_A02944: NewIfNullPr rptCertificadodeLibreDeuda
  loc_A02947: rptCertificadodeLibreDeuda.Show from_stack_1, from_stack_2
  loc_A0294C: ExitProcHresult
End Sub

Private Sub CreditoManual_Click() 'A60E94
  'Data Table: 53CCB4
  loc_A60E3C: LitVar_Missing var_A4
  loc_A60E3F: PopAdLdVar
  loc_A60E40: LitVar_Missing var_94
  loc_A60E43: PopAdLdVar
  loc_A60E44: ImpAdLdRf MemVar_D93DB8
  loc_A60E47: NewIfNullPr frmCreditoManual
  loc_A60E4A: frmCreditoManual.Show from_stack_1, from_stack_2
  loc_A60E4F: FLdRfVar var_A8
  loc_A60E52: FLdPr Me
  loc_A60E55:  = Me.FontSize
  loc_A60E5A: FLdPr var_A8
  loc_A60E5D: LateMemLdVar
  loc_A60E62: FLdRfVar var_AC
  loc_A60E65: ImpAdLdRf MemVar_D93DB8
  loc_A60E68: NewIfNullPr frmCreditoManual
  loc_A60E6B:  = frmCreditoManual.Name
  loc_A60E70: FLdZeroAd var_AC
  loc_A60E73: CVarStr var_BC
  loc_A60E76: HardType
  loc_A60E77: NeVarBool
  loc_A60E79: FFree1Ad var_A8
  loc_A60E7C: FFreeVar var_CC = ""
  loc_A60E83: BranchF loc_A60E91
  loc_A60E86: ImpAdLdRf MemVar_D93DB8
  loc_A60E89: NewIfNullPr frmCreditoManual
  loc_A60E8C: frmCreditoManual.SetFocus
  loc_A60E91: ExitProcHresult
End Sub

Private Sub CreditoManualPlandePagoPorExpediente_Click() '9EC750
  'Data Table: 53CCB4
  loc_9EC72C: ImpAdLdRf MemVar_D93478
  loc_9EC72F: NewIfNullAd
  loc_9EC732: CastAd
  loc_9EC735: FStAdFunc var_88
  loc_9EC738: FLdRfVar var_88
  loc_9EC73B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EC740: ILdRf var_88
  loc_9EC743: CastAd
  loc_9EC746: ImpAdStAdFunc MemVar_D93478
  loc_9EC74A: FFree1Ad var_88
  loc_9EC74D: ExitProcHresult
  loc_9EC74E: ModI2
End Sub

Private Sub AjustesdePagosDuplicados_Click() '9EAD30
  'Data Table: 53CCB4
  loc_9EAD0C: ImpAdLdRf MemVar_D9334C
  loc_9EAD0F: NewIfNullAd
  loc_9EAD12: CastAd
  loc_9EAD15: FStAdFunc var_88
  loc_9EAD18: FLdRfVar var_88
  loc_9EAD1B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EAD20: ILdRf var_88
  loc_9EAD23: CastAd
  loc_9EAD26: ImpAdStAdFunc MemVar_D9334C
  loc_9EAD2A: FFree1Ad var_88
  loc_9EAD2D: ExitProcHresult
End Sub

Private Sub AforosVarios_Click() 'A6060C
  'Data Table: 53CCB4
  loc_A605B4: LitVar_Missing var_A4
  loc_A605B7: PopAdLdVar
  loc_A605B8: LitVar_Missing var_94
  loc_A605BB: PopAdLdVar
  loc_A605BC: ImpAdLdRf MemVar_D93D7C
  loc_A605BF: NewIfNullPr frmAforosVarios
  loc_A605C2: frmAforosVarios.Show from_stack_1, from_stack_2
  loc_A605C7: FLdRfVar var_A8
  loc_A605CA: FLdPr Me
  loc_A605CD:  = Me.FontSize
  loc_A605D2: FLdPr var_A8
  loc_A605D5: LateMemLdVar
  loc_A605DA: FLdRfVar var_AC
  loc_A605DD: ImpAdLdRf MemVar_D93D7C
  loc_A605E0: NewIfNullPr frmAforosVarios
  loc_A605E3:  = frmAforosVarios.Name
  loc_A605E8: FLdZeroAd var_AC
  loc_A605EB: CVarStr var_BC
  loc_A605EE: HardType
  loc_A605EF: NeVarBool
  loc_A605F1: FFree1Ad var_A8
  loc_A605F4: FFreeVar var_CC = ""
  loc_A605FB: BranchF loc_A60609
  loc_A605FE: ImpAdLdRf MemVar_D93D7C
  loc_A60601: NewIfNullPr frmAforosVarios
  loc_A60604: frmAforosVarios.SetFocus
  loc_A60609: ExitProcHresult
End Sub

Private Sub AforosAutomaticosFraccionamiento_Click() '9EAD88
  'Data Table: 53CCB4
  loc_9EAD64: ImpAdLdRf MemVar_D932FC
  loc_9EAD67: NewIfNullAd
  loc_9EAD6A: CastAd
  loc_9EAD6D: FStAdFunc var_88
  loc_9EAD70: FLdRfVar var_88
  loc_9EAD73: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EAD78: ILdRf var_88
  loc_9EAD7B: CastAd
  loc_9EAD7E: ImpAdStAdFunc MemVar_D932FC
  loc_9EAD82: FFree1Ad var_88
  loc_9EAD85: ExitProcHresult
End Sub

Private Sub Contracargos_Click() '9EB830
  'Data Table: 53CCB4
  loc_9EB80C: ImpAdLdRf MemVar_D93414
  loc_9EB80F: NewIfNullAd
  loc_9EB812: CastAd
  loc_9EB815: FStAdFunc var_88
  loc_9EB818: FLdRfVar var_88
  loc_9EB81B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB820: ILdRf var_88
  loc_9EB823: CastAd
  loc_9EB826: ImpAdStAdFunc MemVar_D93414
  loc_9EB82A: FFree1Ad var_88
  loc_9EB82D: ExitProcHresult
End Sub

Private Sub CreditoManualModificacion_Click() '9EBB48
  'Data Table: 53CCB4
  loc_9EBB24: ImpAdLdRf MemVar_D93450
  loc_9EBB27: NewIfNullAd
  loc_9EBB2A: CastAd
  loc_9EBB2D: FStAdFunc var_88
  loc_9EBB30: FLdRfVar var_88
  loc_9EBB33: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EBB38: ILdRf var_88
  loc_9EBB3B: CastAd
  loc_9EBB3E: ImpAdStAdFunc MemVar_D93450
  loc_9EBB42: FFree1Ad var_88
  loc_9EBB45: ExitProcHresult
End Sub

Private Sub MultasdeTransito_Click() '9EB7D8
  'Data Table: 53CCB4
  loc_9EB7B4: ImpAdLdRf MemVar_D939C8
  loc_9EB7B7: NewIfNullAd
  loc_9EB7BA: CastAd
  loc_9EB7BD: FStAdFunc var_88
  loc_9EB7C0: FLdRfVar var_88
  loc_9EB7C3: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB7C8: ILdRf var_88
  loc_9EB7CB: CastAd
  loc_9EB7CE: ImpAdStAdFunc MemVar_D939C8
  loc_9EB7D2: FFree1Ad var_88
  loc_9EB7D5: ExitProcHresult
End Sub

Private Sub ListadodePadronesAfectados_Click() 'A04E08
  'Data Table: 53CCB4
  loc_A04DD8: ImpAdLdRf MemVar_D93900
  loc_A04DDB: NewIfNullAd
  loc_A04DDE: CastAd
  loc_A04DE1: FStAdFuncNoPop
  loc_A04DE4: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A04DE9: FFree1Ad var_88
  loc_A04DEC: LitVar_Missing var_A8
  loc_A04DEF: PopAdLdVar
  loc_A04DF0: LitVarI4
  loc_A04DF8: PopAdLdVar
  loc_A04DF9: ImpAdLdRf MemVar_D93900
  loc_A04DFC: NewIfNullPr rptListadodePadronesAfectados
  loc_A04DFF: rptListadodePadronesAfectados.Show from_stack_1, from_stack_2
  loc_A04E04: ExitProcHresult
End Sub

Private Sub RecaudadorABM_Click() 'A5FE20
  'Data Table: 53CCB4
  loc_A5FDC8: LitVar_Missing var_A4
  loc_A5FDCB: PopAdLdVar
  loc_A5FDCC: LitVar_Missing var_94
  loc_A5FDCF: PopAdLdVar
  loc_A5FDD0: ImpAdLdRf MemVar_D93EAC
  loc_A5FDD3: NewIfNullPr frmRecaudadorABM
  loc_A5FDD6: frmRecaudadorABM.Show from_stack_1, from_stack_2
  loc_A5FDDB: FLdRfVar var_A8
  loc_A5FDDE: FLdPr Me
  loc_A5FDE1:  = Me.FontSize
  loc_A5FDE6: FLdPr var_A8
  loc_A5FDE9: LateMemLdVar
  loc_A5FDEE: FLdRfVar var_AC
  loc_A5FDF1: ImpAdLdRf MemVar_D93EAC
  loc_A5FDF4: NewIfNullPr frmRecaudadorABM
  loc_A5FDF7:  = frmRecaudadorABM.Name
  loc_A5FDFC: FLdZeroAd var_AC
  loc_A5FDFF: CVarStr var_BC
  loc_A5FE02: HardType
  loc_A5FE03: NeVarBool
  loc_A5FE05: FFree1Ad var_A8
  loc_A5FE08: FFreeVar var_CC = ""
  loc_A5FE0F: BranchF loc_A5FE1D
  loc_A5FE12: ImpAdLdRf MemVar_D93EAC
  loc_A5FE15: NewIfNullPr frmRecaudadorABM
  loc_A5FE18: frmRecaudadorABM.SetFocus
  loc_A5FE1D: ExitProcHresult
End Sub

Private Sub AfectaciondePadronesABM_Click() '9EAC80
  'Data Table: 53CCB4
  loc_9EAC5C: ImpAdLdRf MemVar_D932E8
  loc_9EAC5F: NewIfNullAd
  loc_9EAC62: CastAd
  loc_9EAC65: FStAdFunc var_88
  loc_9EAC68: FLdRfVar var_88
  loc_9EAC6B: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EAC70: ILdRf var_88
  loc_9EAC73: CastAd
  loc_9EAC76: ImpAdStAdFunc MemVar_D932E8
  loc_9EAC7A: FFree1Ad var_88
  loc_9EAC7D: ExitProcHresult
  loc_9EAC7E: LitI2_Byte 0
End Sub

Private Sub CreditosaFavorCreditosyAjustes_Click() '9EC4E8
  'Data Table: 53CCB4
  loc_9EC4C4: ImpAdLdRf MemVar_D9348C
  loc_9EC4C7: NewIfNullAd
  loc_9EC4CA: CastAd
  loc_9EC4CD: FStAdFunc var_88
  loc_9EC4D0: FLdRfVar var_88
  loc_9EC4D3: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EC4D8: ILdRf var_88
  loc_9EC4DB: CastAd
  loc_9EC4DE: ImpAdStAdFunc MemVar_D9348C
  loc_9EC4E2: FFree1Ad var_88
  loc_9EC4E5: ExitProcHresult
  loc_9EC4E6: CR8R8
End Sub

Private Sub NotificaciondePadrones_Click() '9EB728
  'Data Table: 53CCB4
  loc_9EB704: ImpAdLdRf MemVar_D939DC
  loc_9EB707: NewIfNullAd
  loc_9EB70A: CastAd
  loc_9EB70D: FStAdFunc var_88
  loc_9EB710: FLdRfVar var_88
  loc_9EB713: ImpAdCallFPR4 Proc_272_51_9F69E8()
  loc_9EB718: ILdRf var_88
  loc_9EB71B: CastAd
  loc_9EB71E: ImpAdStAdFunc MemVar_D939DC
  loc_9EB722: FFree1Ad var_88
  loc_9EB725: ExitProcHresult
End Sub

Private Sub ListadodeCreditosaFavor_Click() 'A05768
  'Data Table: 53CCB4
  loc_A05738: ImpAdLdRf MemVar_D9384C
  loc_A0573B: NewIfNullAd
  loc_A0573E: CastAd
  loc_A05741: FStAdFuncNoPop
  loc_A05744: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05749: FFree1Ad var_88
  loc_A0574C: LitVar_Missing var_A8
  loc_A0574F: PopAdLdVar
  loc_A05750: LitVarI4
  loc_A05758: PopAdLdVar
  loc_A05759: ImpAdLdRf MemVar_D9384C
  loc_A0575C: NewIfNullPr rptListadodeCreditosaFavor
  loc_A0575F: rptListadodeCreditosaFavor.Show from_stack_1, from_stack_2
  loc_A05764: ExitProcHresult
  loc_A05767: ExitProcR4
End Sub

Private Function Proc_13_174_A60AEC() 'A60AEC
  'Data Table: 53CCB4
  loc_A60A94: LitVar_Missing var_A4
  loc_A60A97: PopAdLdVar
  loc_A60A98: LitVar_Missing var_94
  loc_A60A9B: PopAdLdVar
  loc_A60A9C: ImpAdLdRf MemVar_D936E4
  loc_A60A9F: NewIfNullPr frmAnticipodeTasas
  loc_A60AA2: frmAnticipodeTasas.Show from_stack_1, from_stack_2
  loc_A60AA7: FLdRfVar var_A8
  loc_A60AAA: FLdPr Me
  loc_A60AAD:  = Me.FontSize
  loc_A60AB2: FLdPr var_A8
  loc_A60AB5: LateMemLdVar
  loc_A60ABA: FLdRfVar var_AC
  loc_A60ABD: ImpAdLdRf MemVar_D936E4
  loc_A60AC0: NewIfNullPr frmAnticipodeTasas
  loc_A60AC3:  = frmAnticipodeTasas.Name
  loc_A60AC8: FLdZeroAd var_AC
  loc_A60ACB: CVarStr var_BC
  loc_A60ACE: HardType
  loc_A60ACF: NeVarBool
  loc_A60AD1: FFree1Ad var_A8
  loc_A60AD4: FFreeVar var_CC = ""
  loc_A60ADB: BranchF loc_A60AE9
  loc_A60ADE: ImpAdLdRf MemVar_D936E4
  loc_A60AE1: NewIfNullPr frmAnticipodeTasas
  loc_A60AE4: frmAnticipodeTasas.SetFocus
  loc_A60AE9: ExitProcHresult
End Function

Private Function Proc_13_175_9AF248() '9AF248
  'Data Table: 53CCB4
  loc_9AF244: ExitProcHresult
End Function

Private Function Proc_13_176_A05128() 'A05128
  'Data Table: 53CCB4
  loc_A050F8: ImpAdLdRf MemVar_D93914
  loc_A050FB: NewIfNullAd
  loc_A050FE: CastAd
  loc_A05101: FStAdFuncNoPop
  loc_A05104: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A05109: FFree1Ad var_88
  loc_A0510C: LitVar_Missing var_A8
  loc_A0510F: PopAdLdVar
  loc_A05110: LitVarI4
  loc_A05118: PopAdLdVar
  loc_A05119: ImpAdLdRf MemVar_D93914
  loc_A0511C: NewIfNullPr rptListadodeRecursos
  loc_A0511F: rptListadodeRecursos.Show from_stack_1, from_stack_2
  loc_A05124: ExitProcHresult
  loc_A05125: ImpAdStI2 MemVar_D935CC
End Function

Private Function Proc_13_177_AE2E9C() 'AE2E9C
  'Data Table: 53CCB4
  loc_AE2D40: FLdRfVar var_94
  loc_AE2D43: FLdRfVar var_90
  loc_AE2D46: ImpAdLdRf MemVar_D9C5D8
  loc_AE2D49: NewIfNullPr Global
  loc_AE2D4C:  = Global.Screen
  loc_AE2D51: FLdPr var_90
  loc_AE2D54:  = Screen.TwipsPerPixelX
  loc_AE2D59: FLdRfVar var_8C
  loc_AE2D5C: FLdRfVar var_88
  loc_AE2D5F: ImpAdLdRf MemVar_D9C5D8
  loc_AE2D62: NewIfNullPr Global
  loc_AE2D65:  = Global.Screen
  loc_AE2D6A: FLdPr var_88
  loc_AE2D6D:  = Screen.Width
  loc_AE2D72: FLdFPR4 var_8C
  loc_AE2D75: FLdFPR4 var_94
  loc_AE2D78: DivR8
  loc_AE2D79: FLdPr Me
  loc_AE2D7C: MemStFPR4 global_56
  loc_AE2D7F: FFreeAd var_88 = ""
  loc_AE2D86: FLdRfVar var_94
  loc_AE2D89: FLdRfVar var_90
  loc_AE2D8C: ImpAdLdRf MemVar_D9C5D8
  loc_AE2D8F: NewIfNullPr Global
  loc_AE2D92:  = Global.Screen
  loc_AE2D97: FLdPr var_90
  loc_AE2D9A:  = Screen.TwipsPerPixelY
  loc_AE2D9F: FLdRfVar var_8C
  loc_AE2DA2: FLdRfVar var_88
  loc_AE2DA5: ImpAdLdRf MemVar_D9C5D8
  loc_AE2DA8: NewIfNullPr Global
  loc_AE2DAB:  = Global.Screen
  loc_AE2DB0: FLdPr var_88
  loc_AE2DB3:  = Screen.Height
  loc_AE2DB8: FLdFPR4 var_8C
  loc_AE2DBB: FLdFPR4 var_94
  loc_AE2DBE: DivR8
  loc_AE2DBF: FLdPr Me
  loc_AE2DC2: MemStFPR4 global_60
  loc_AE2DC5: FFreeAd var_88 = ""
  loc_AE2DCC: FLdPr Me
  loc_AE2DCF: MemLdFPR4 global_56
  loc_AE2DD2: LitI2 1024
  loc_AE2DD5: CR8I2
  loc_AE2DD6: LtR8
  loc_AE2DD7: FLdPr Me
  loc_AE2DDA: MemLdFPR4 global_60
  loc_AE2DDD: LitI2 768
  loc_AE2DE0: CR8I2
  loc_AE2DE1: LtR8
  loc_AE2DE2: OrI4
  loc_AE2DE3: BranchF loc_AE2E46
  loc_AE2DE6: LitVar_Missing var_108
  loc_AE2DE9: LitVar_Missing var_E8
  loc_AE2DEC: LitVarStr var_B8, "InfoGov"
  loc_AE2DF1: FStVarCopyObj var_C8
  loc_AE2DF4: FLdRfVar var_C8
  loc_AE2DF7: LitI4 4
  loc_AE2DFC: LitStr "La resolución de su pantalla no es adecuada para la visualización del sistema,"
  loc_AE2DFF: LitStr vbCrLf
  loc_AE2E02: ConcatStr
  loc_AE2E03: FStStrNoPop var_98
  loc_AE2E06: LitStr "¿desea cambiarla ahora?"
  loc_AE2E09: ConcatStr
  loc_AE2E0A: CVarStr var_A8
  loc_AE2E0D: ImpAdCallI2 MsgBox(, , , , )
  loc_AE2E12: LitI4 6
  loc_AE2E17: EqI4
  loc_AE2E18: FFree1Str var_98
  loc_AE2E1B: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_AE2E26: BranchF loc_AE2E46
  loc_AE2E29: LitI2 768
  loc_AE2E2C: CR8I2
  loc_AE2E2D: PopTmpLdAdFPR4
  loc_AE2E31: LitI2 1024
  loc_AE2E34: CR8I2
  loc_AE2E35: PopTmpLdAdFPR4
  loc_AE2E39: ImpAdCallFPR4 Proc_36_0_A9C978(, )
  loc_AE2E3E: LitI2_Byte &HFF
  loc_AE2E40: FLdPr Me
  loc_AE2E43: MemStI2 global_64
  loc_AE2E46: FLdRfVar var_8C
  loc_AE2E49: FLdRfVar var_88
  loc_AE2E4C: ImpAdLdRf MemVar_D9C5D8
  loc_AE2E4F: NewIfNullPr Global
  loc_AE2E52:  = Global.Screen
  loc_AE2E57: FLdPr var_88
  loc_AE2E5A:  = Screen.Width
  loc_AE2E5F: FLdFPR4 var_8C
  loc_AE2E62: LitI2_Byte 1
  loc_AE2E64: CR8I2
  loc_AE2E65: MulR8
  loc_AE2E66: PopFPR4
  loc_AE2E67: FLdPrThis
  loc_AE2E68: Me.Width = from_stack_1s
  loc_AE2E6D: FFree1Ad var_88
  loc_AE2E70: FLdRfVar var_8C
  loc_AE2E73: FLdRfVar var_88
  loc_AE2E76: ImpAdLdRf MemVar_D9C5D8
  loc_AE2E79: NewIfNullPr Global
  loc_AE2E7C:  = Global.Screen
  loc_AE2E81: FLdPr var_88
  loc_AE2E84:  = Screen.Height
  loc_AE2E89: FLdFPR4 var_8C
  loc_AE2E8C: LitI2_Byte 1
  loc_AE2E8E: CR8I2
  loc_AE2E8F: MulR8
  loc_AE2E90: PopFPR4
  loc_AE2E91: FLdPrThis
  loc_AE2E92: Me.Height = from_stack_1s
  loc_AE2E97: FFree1Ad var_88
  loc_AE2E9A: ExitProcHresult
End Function

Private Function Proc_13_178_AE4940() 'AE4940
  'Data Table: 53CCB4
  loc_AE47EC: LitI2_Byte &HFF
  loc_AE47EE: FStI2 var_8E
  loc_AE47F1: FLdRfVar var_94
  loc_AE47F4: ImpAdLdRf MemVar_D9C5D8
  loc_AE47F7: NewIfNullPr Global
  loc_AE47FA:  = Global.Printers
  loc_AE47FF: FLdZeroAd var_94
  loc_AE4802: FStAdFuncNoPop
  loc_AE4805: FLdRfVar var_88
  loc_AE4808: ForEachCollObj
  loc_AE4810: FLdI2 var_8E
  loc_AE4813: LitI2_Byte 1
  loc_AE4815: AddI2
  loc_AE4816: FStI2 var_8E
  loc_AE4819: FLdI2 var_8E
  loc_AE481C: LitI2_Byte 0
  loc_AE481E: GtI2
  loc_AE481F: BranchF loc_AE4851
  loc_AE4822: FLdRfVar var_A0
  loc_AE4825: FLdI2 var_8E
  loc_AE4828: FLdPr Me
  loc_AE482B: VCallAd Control_ID_Impresoras
  loc_AE482E: FStAdFunc var_94
  loc_AE4831: FLdPr var_94
  loc_AE4834: Set from_stack_2 = Me(from_stack_1)
  loc_AE4839: FLdZeroAd var_A0
  loc_AE483C: FStAdFuncNoPop
  loc_AE483F: ImpAdLdRf MemVar_D9C5D8
  loc_AE4842: NewIfNullPr Global
  loc_AE4845: Global.Load from_stack_1
  loc_AE484A: FFreeAd var_94 = ""
  loc_AE4851: FLdPr var_88
  loc_AE4854: LateIdLdVar var_B4 DispID_28 1
  loc_AE485B: CStrVarTmp
  loc_AE485C: FStStrNoPop var_B8
  loc_AE485F: FLdRfVar var_A0
  loc_AE4862: FLdI2 var_8E
  loc_AE4865: FLdPr Me
  loc_AE4868: VCallAd Control_ID_Impresoras
  loc_AE486B: FStAdFunc var_94
  loc_AE486E: FLdPr var_94
  loc_AE4871: Set from_stack_2 = Me(from_stack_1)
  loc_AE4876: FLdPr var_A0
  loc_AE4879: Me.Caption = from_stack_1
  loc_AE487E: FFree1Str var_B8
  loc_AE4881: FFreeAd var_94 = ""
  loc_AE4888: FFree1Var var_B4 = ""
  loc_AE488B: FLdRfVar var_94
  loc_AE488E: ImpAdLdRf MemVar_D9C5D8
  loc_AE4891: NewIfNullPr Global
  loc_AE4894:  = Global.Printer
  loc_AE4899: FLdPr var_94
  loc_AE489C: LateIdLdVar var_B4 DispID_28 1
  loc_AE48A3: CStrVarTmp
  loc_AE48A4: FStStrNoPop var_B8
  loc_AE48A7: FLdPr var_88
  loc_AE48AA: LateIdLdVar var_C8 DispID_28 1
  loc_AE48B1: CStrVarTmp
  loc_AE48B2: FStStrNoPop var_CC
  loc_AE48B5: EqStr
  loc_AE48B7: FLdRfVar var_A4
  loc_AE48BA: FLdI2 var_8E
  loc_AE48BD: FLdPr Me
  loc_AE48C0: VCallAd Control_ID_Impresoras
  loc_AE48C3: FStAdFunc var_A0
  loc_AE48C6: FLdPr var_A0
  loc_AE48C9: Set from_stack_2 = Me(from_stack_1)
  loc_AE48CE: FLdPr var_A4
  loc_AE48D1: Me.Checked = from_stack_1b
  loc_AE48D6: FFreeStr var_B8 = ""
  loc_AE48DD: FFreeAd var_94 = "": var_A0 = ""
  loc_AE48E6: FFreeVar var_B4 = ""
  loc_AE48ED: FLdRfVar var_88
  loc_AE48F0: NextEachCollObj
  loc_AE48F8: LitStr "ImpresoraBoletos"
  loc_AE48FB: LitStr "HKEY_CURRENT_USER\SOFTWARE\InfoGov\"
  loc_AE48FE: ImpAdCallI2 Proc_57_25_A824CC(, )
  loc_AE4903: FStStr var_8C
  loc_AE4906: LitVarStr var_FC, "hp4250 en caja01"
  loc_AE490B: FStVarCopyObj var_B4
  loc_AE490E: FLdRfVar var_B4
  loc_AE4911: FLdRfVar var_8C
  loc_AE4914: CVarRef
  loc_AE4919: ILdRf var_8C
  loc_AE491C: LitStr vbNullString
  loc_AE491F: NeStr
  loc_AE4921: CVarBoolI2 var_DC
  loc_AE4925: FLdRfVar var_C8
  loc_AE4928: ImpAdCallFPR4  = IIf(, , )
  loc_AE492D: FLdRfVar var_C8
  loc_AE4930: CStrVarTmp
  loc_AE4931: ImpAdStStr MemVar_D93CA4
  loc_AE4935: FFreeVar var_DC = "": var_B4 = ""
  loc_AE493E: ExitProcHresult
End Function
