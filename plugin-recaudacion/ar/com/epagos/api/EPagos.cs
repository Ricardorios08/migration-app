// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.EPagos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Properties;
using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Serialization;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.ar.com.epagos.api;

[GeneratedCode("System.Web.Services", "4.8.4161.0")]
[DebuggerStepThrough]
[DesignerCategory("code")]
[WebServiceBinding(Name = "EPagosBinding", Namespace = "https://api.epagos.com.ar/")]
[SoapInclude(typeof (OperacionPagoLote))]
[SoapInclude(typeof (OperacionQR))]
[SoapInclude(typeof (DatosSuscripcion))]
[SoapInclude(typeof (CuentasCliente))]
[SoapInclude(typeof (CuentasClientes))]
[SoapInclude(typeof (DatosClienteCuentaRecurrente))]
[SoapInclude(typeof (TarjetasCliente))]
[SoapInclude(typeof (TarjetasClientes))]
[SoapInclude(typeof (DatosClienteRecurrente))]
[SoapInclude(typeof (RespuestaLote))]
[SoapInclude(typeof (TipoLote))]
[SoapInclude(typeof (DatosContracargoRespuesta))]
[SoapInclude(typeof (DetalleContracargo))]
[SoapInclude(typeof (DetalleRendicion))]
[SoapInclude(typeof (DatosRendicionRespuesta))]
[SoapInclude(typeof (DatosTurno))]
[SoapInclude(typeof (DatosFormaPagoObtenerPago))]
[SoapInclude(typeof (DatosPagoRespuesta))]
[SoapInclude(typeof (PagosAdicionales))]
[SoapInclude(typeof (DatosFormaPagoEntidades))]
[SoapInclude(typeof (RespuestaFormaPago))]
[SoapInclude(typeof (DatosFormaPago))]
[SoapInclude(typeof (DetallePago))]
public class EPagos : SoapHttpClientProtocol
{
  private SendOrPostCallback obtener_tokenOperationCompleted;
  private SendOrPostCallback solicitud_pagoOperationCompleted;
  private SendOrPostCallback obtener_entidades_pagoOperationCompleted;
  private SendOrPostCallback obtener_pagos_adicionalesOperationCompleted;
  private SendOrPostCallback obtener_pagosOperationCompleted;
  private SendOrPostCallback obtener_rendicionesOperationCompleted;
  private SendOrPostCallback obtener_contracargosOperationCompleted;
  private SendOrPostCallback solicitud_pago_loteOperationCompleted;
  private SendOrPostCallback obtener_tarjetas_clienteOperationCompleted;
  private SendOrPostCallback obtener_cuentas_clienteOperationCompleted;
  private SendOrPostCallback solicitud_pago_recurrente_suscripcionOperationCompleted;
  private SendOrPostCallback solicitud_pago_recurrenteOperationCompleted;
  private SendOrPostCallback generar_qr_vinculadoOperationCompleted;
  private SendOrPostCallback pago_loteOperationCompleted;
  private bool useDefaultCredentialsSetExplicitly;

  public EPagos()
  {
    this.Url = Settings.Default.plugin_recaudacion_ar_com_epagos_api_EPagos;
    if (this.IsLocalFileSystemWebService(this.Url))
    {
      this.UseDefaultCredentials = true;
      this.useDefaultCredentialsSetExplicitly = false;
    }
    else
      this.useDefaultCredentialsSetExplicitly = true;
  }

  public new string Url
  {
    get => base.Url;
    set
    {
      if (this.IsLocalFileSystemWebService(base.Url) && !this.useDefaultCredentialsSetExplicitly && !this.IsLocalFileSystemWebService(value))
        base.UseDefaultCredentials = false;
      base.Url = value;
    }
  }

  public new bool UseDefaultCredentials
  {
    get => base.UseDefaultCredentials;
    set
    {
      base.UseDefaultCredentials = value;
      this.useDefaultCredentialsSetExplicitly = true;
    }
  }

  public event obtener_tokenCompletedEventHandler obtener_tokenCompleted;

  public event solicitud_pagoCompletedEventHandler solicitud_pagoCompleted;

  public event obtener_entidades_pagoCompletedEventHandler obtener_entidades_pagoCompleted;

  public event obtener_pagos_adicionalesCompletedEventHandler obtener_pagos_adicionalesCompleted;

  public event obtener_pagosCompletedEventHandler obtener_pagosCompleted;

  public event obtener_rendicionesCompletedEventHandler obtener_rendicionesCompleted;

  public event obtener_contracargosCompletedEventHandler obtener_contracargosCompleted;

  public event solicitud_pago_loteCompletedEventHandler solicitud_pago_loteCompleted;

  public event obtener_tarjetas_clienteCompletedEventHandler obtener_tarjetas_clienteCompleted;

  public event obtener_cuentas_clienteCompletedEventHandler obtener_cuentas_clienteCompleted;

  public event solicitud_pago_recurrente_suscripcionCompletedEventHandler solicitud_pago_recurrente_suscripcionCompleted;

  public event solicitud_pago_recurrenteCompletedEventHandler solicitud_pago_recurrenteCompleted;

  public event generar_qr_vinculadoCompletedEventHandler generar_qr_vinculadoCompleted;

  public event pago_loteCompletedEventHandler pago_loteCompleted;

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/obtener_token", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public string obtener_token(
    string version,
    DatosCredenciales credenciales,
    out string respuesta,
    out string token)
  {
    object[] objArray = this.Invoke(nameof (obtener_token), new object[2]
    {
      (object) version,
      (object) credenciales
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    return (string) objArray[0];
  }

  public void obtener_tokenAsync(string version, DatosCredenciales credenciales)
  {
    this.obtener_tokenAsync(version, credenciales, (object) null);
  }

  public void obtener_tokenAsync(string version, DatosCredenciales credenciales, object userState)
  {
    if (this.obtener_tokenOperationCompleted == null)
      this.obtener_tokenOperationCompleted = new SendOrPostCallback(this.Onobtener_tokenOperationCompleted);
    this.InvokeAsync("obtener_token", new object[2]
    {
      (object) version,
      (object) credenciales
    }, this.obtener_tokenOperationCompleted, userState);
  }

  private void Onobtener_tokenOperationCompleted(object arg)
  {
    if (this.obtener_tokenCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.obtener_tokenCompleted((object) this, new obtener_tokenCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/solicitud_pago", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public string solicitud_pago(
    string version,
    TipoOperacion tipo_operacion,
    DatosCredencialesPago credenciales,
    DatosOperacionPago operacion,
    DatosFormaPago[] fp,
    ref int convenio,
    out string respuesta,
    out int id_transaccion,
    out string token,
    out int id_organismo,
    out string numero_operacion,
    [SoapElement("fp")] out RespuestaFormaPago[] fp1)
  {
    object[] objArray = this.Invoke(nameof (solicitud_pago), new object[6]
    {
      (object) version,
      (object) tipo_operacion,
      (object) credenciales,
      (object) operacion,
      (object) fp,
      (object) convenio
    });
    convenio = (int) objArray[1];
    respuesta = (string) objArray[2];
    id_transaccion = (int) objArray[3];
    token = (string) objArray[4];
    id_organismo = (int) objArray[5];
    numero_operacion = (string) objArray[6];
    fp1 = (RespuestaFormaPago[]) objArray[7];
    return (string) objArray[0];
  }

  public void solicitud_pagoAsync(
    string version,
    TipoOperacion tipo_operacion,
    DatosCredencialesPago credenciales,
    DatosOperacionPago operacion,
    DatosFormaPago[] fp,
    int convenio)
  {
    this.solicitud_pagoAsync(version, tipo_operacion, credenciales, operacion, fp, convenio, (object) null);
  }

  public void solicitud_pagoAsync(
    string version,
    TipoOperacion tipo_operacion,
    DatosCredencialesPago credenciales,
    DatosOperacionPago operacion,
    DatosFormaPago[] fp,
    int convenio,
    object userState)
  {
    if (this.solicitud_pagoOperationCompleted == null)
      this.solicitud_pagoOperationCompleted = new SendOrPostCallback(this.Onsolicitud_pagoOperationCompleted);
    this.InvokeAsync("solicitud_pago", new object[6]
    {
      (object) version,
      (object) tipo_operacion,
      (object) credenciales,
      (object) operacion,
      (object) fp,
      (object) convenio
    }, this.solicitud_pagoOperationCompleted, userState);
  }

  private void Onsolicitud_pagoOperationCompleted(object arg)
  {
    if (this.solicitud_pagoCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.solicitud_pagoCompleted((object) this, new solicitud_pagoCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/obtener_entidades_pago", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int obtener_entidades_pago(
    string version,
    DatosCredencialesPago credenciales,
    int[] fp,
    out string respuesta,
    out string token,
    out int id_organismo,
    [SoapElement("fp")] out DatosFormaPagoEntidades[] fp1)
  {
    object[] objArray = this.Invoke(nameof (obtener_entidades_pago), new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) fp
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_organismo = (int) objArray[3];
    fp1 = (DatosFormaPagoEntidades[]) objArray[4];
    return (int) objArray[0];
  }

  public void obtener_entidades_pagoAsync(
    string version,
    DatosCredencialesPago credenciales,
    int[] fp)
  {
    this.obtener_entidades_pagoAsync(version, credenciales, fp, (object) null);
  }

  public void obtener_entidades_pagoAsync(
    string version,
    DatosCredencialesPago credenciales,
    int[] fp,
    object userState)
  {
    if (this.obtener_entidades_pagoOperationCompleted == null)
      this.obtener_entidades_pagoOperationCompleted = new SendOrPostCallback(this.Onobtener_entidades_pagoOperationCompleted);
    this.InvokeAsync("obtener_entidades_pago", new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) fp
    }, this.obtener_entidades_pagoOperationCompleted, userState);
  }

  private void Onobtener_entidades_pagoOperationCompleted(object arg)
  {
    if (this.obtener_entidades_pagoCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.obtener_entidades_pagoCompleted((object) this, new obtener_entidades_pagoCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/obtener_pagos_adicionales", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int obtener_pagos_adicionales(
    string version,
    DatosCredencialesPago credenciales,
    DatosPagosAdicionales pagos,
    out string respuesta,
    out string token,
    out int id_organismo,
    out PagosAdicionales[] pagos_adicionales)
  {
    object[] objArray = this.Invoke(nameof (obtener_pagos_adicionales), new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) pagos
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_organismo = (int) objArray[3];
    pagos_adicionales = (PagosAdicionales[]) objArray[4];
    return (int) objArray[0];
  }

  public void obtener_pagos_adicionalesAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosPagosAdicionales pagos)
  {
    this.obtener_pagos_adicionalesAsync(version, credenciales, pagos, (object) null);
  }

  public void obtener_pagos_adicionalesAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosPagosAdicionales pagos,
    object userState)
  {
    if (this.obtener_pagos_adicionalesOperationCompleted == null)
      this.obtener_pagos_adicionalesOperationCompleted = new SendOrPostCallback(this.Onobtener_pagos_adicionalesOperationCompleted);
    this.InvokeAsync("obtener_pagos_adicionales", new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) pagos
    }, this.obtener_pagos_adicionalesOperationCompleted, userState);
  }

  private void Onobtener_pagos_adicionalesOperationCompleted(object arg)
  {
    if (this.obtener_pagos_adicionalesCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.obtener_pagos_adicionalesCompleted((object) this, new obtener_pagos_adicionalesCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/obtener_pagos", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int obtener_pagos(
    string version,
    DatosCredencialesPago credenciales,
    DatosPago pago,
    out string respuesta,
    out string token,
    out int id_organismo,
    [SoapElement("pago")] out DatosPagoRespuesta[] pago1,
    out int pagina,
    out int cantidadTotal)
  {
    object[] objArray = this.Invoke(nameof (obtener_pagos), new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) pago
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_organismo = (int) objArray[3];
    pago1 = (DatosPagoRespuesta[]) objArray[4];
    pagina = (int) objArray[5];
    cantidadTotal = (int) objArray[6];
    return (int) objArray[0];
  }

  public void obtener_pagosAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosPago pago)
  {
    this.obtener_pagosAsync(version, credenciales, pago, (object) null);
  }

  public void obtener_pagosAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosPago pago,
    object userState)
  {
    if (this.obtener_pagosOperationCompleted == null)
      this.obtener_pagosOperationCompleted = new SendOrPostCallback(this.Onobtener_pagosOperationCompleted);
    this.InvokeAsync("obtener_pagos", new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) pago
    }, this.obtener_pagosOperationCompleted, userState);
  }

  private void Onobtener_pagosOperationCompleted(object arg)
  {
    if (this.obtener_pagosCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.obtener_pagosCompleted((object) this, new obtener_pagosCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/obtener_rendiciones", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int obtener_rendiciones(
    string version,
    DatosCredencialesPago credenciales,
    DatosRendicion rendicion,
    out string respuesta,
    out string token,
    out int id_organismo,
    [SoapElement("rendicion")] out DatosRendicionRespuesta[] rendicion1)
  {
    object[] objArray = this.Invoke(nameof (obtener_rendiciones), new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) rendicion
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_organismo = (int) objArray[3];
    rendicion1 = (DatosRendicionRespuesta[]) objArray[4];
    return (int) objArray[0];
  }

  public void obtener_rendicionesAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosRendicion rendicion)
  {
    this.obtener_rendicionesAsync(version, credenciales, rendicion, (object) null);
  }

  public void obtener_rendicionesAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosRendicion rendicion,
    object userState)
  {
    if (this.obtener_rendicionesOperationCompleted == null)
      this.obtener_rendicionesOperationCompleted = new SendOrPostCallback(this.Onobtener_rendicionesOperationCompleted);
    this.InvokeAsync("obtener_rendiciones", new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) rendicion
    }, this.obtener_rendicionesOperationCompleted, userState);
  }

  private void Onobtener_rendicionesOperationCompleted(object arg)
  {
    if (this.obtener_rendicionesCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.obtener_rendicionesCompleted((object) this, new obtener_rendicionesCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/obtener_contracargos", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int obtener_contracargos(
    string version,
    DatosCredencialesPago credenciales,
    DatosContracargo contracargos,
    out string respuesta,
    out string token,
    out int id_organismo,
    [SoapElement("contracargos")] out DatosContracargoRespuesta[] contracargos1)
  {
    object[] objArray = this.Invoke(nameof (obtener_contracargos), new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) contracargos
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_organismo = (int) objArray[3];
    contracargos1 = (DatosContracargoRespuesta[]) objArray[4];
    return (int) objArray[0];
  }

  public void obtener_contracargosAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosContracargo contracargos)
  {
    this.obtener_contracargosAsync(version, credenciales, contracargos, (object) null);
  }

  public void obtener_contracargosAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosContracargo contracargos,
    object userState)
  {
    if (this.obtener_contracargosOperationCompleted == null)
      this.obtener_contracargosOperationCompleted = new SendOrPostCallback(this.Onobtener_contracargosOperationCompleted);
    this.InvokeAsync("obtener_contracargos", new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) contracargos
    }, this.obtener_contracargosOperationCompleted, userState);
  }

  private void Onobtener_contracargosOperationCompleted(object arg)
  {
    if (this.obtener_contracargosCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.obtener_contracargosCompleted((object) this, new obtener_contracargosCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/solicitud_pago_lote", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int solicitud_pago_lote(
    string version,
    TipoOperacion tipo_operacion,
    DatosCredencialesPago credenciales,
    TipoLote[] lote,
    out string respuesta,
    out string token,
    out int id_organismo,
    [SoapElement("lote")] out RespuestaLote[] lote1)
  {
    object[] objArray = this.Invoke(nameof (solicitud_pago_lote), new object[4]
    {
      (object) version,
      (object) tipo_operacion,
      (object) credenciales,
      (object) lote
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_organismo = (int) objArray[3];
    lote1 = (RespuestaLote[]) objArray[4];
    return (int) objArray[0];
  }

  public void solicitud_pago_loteAsync(
    string version,
    TipoOperacion tipo_operacion,
    DatosCredencialesPago credenciales,
    TipoLote[] lote)
  {
    this.solicitud_pago_loteAsync(version, tipo_operacion, credenciales, lote, (object) null);
  }

  public void solicitud_pago_loteAsync(
    string version,
    TipoOperacion tipo_operacion,
    DatosCredencialesPago credenciales,
    TipoLote[] lote,
    object userState)
  {
    if (this.solicitud_pago_loteOperationCompleted == null)
      this.solicitud_pago_loteOperationCompleted = new SendOrPostCallback(this.Onsolicitud_pago_loteOperationCompleted);
    this.InvokeAsync("solicitud_pago_lote", new object[4]
    {
      (object) version,
      (object) tipo_operacion,
      (object) credenciales,
      (object) lote
    }, this.solicitud_pago_loteOperationCompleted, userState);
  }

  private void Onsolicitud_pago_loteOperationCompleted(object arg)
  {
    if (this.solicitud_pago_loteCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.solicitud_pago_loteCompleted((object) this, new solicitud_pago_loteCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/obtener_tarjetas_cliente", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int obtener_tarjetas_cliente(
    string version,
    DatosCredencialesPago credenciales,
    DatosClienteRecurrente[] datosCliente,
    out string respuesta,
    out string token,
    out int id_organismo,
    out TarjetasClientes[] tarjetas)
  {
    object[] objArray = this.Invoke(nameof (obtener_tarjetas_cliente), new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) datosCliente
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_organismo = (int) objArray[3];
    tarjetas = (TarjetasClientes[]) objArray[4];
    return (int) objArray[0];
  }

  public void obtener_tarjetas_clienteAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosClienteRecurrente[] datosCliente)
  {
    this.obtener_tarjetas_clienteAsync(version, credenciales, datosCliente, (object) null);
  }

  public void obtener_tarjetas_clienteAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosClienteRecurrente[] datosCliente,
    object userState)
  {
    if (this.obtener_tarjetas_clienteOperationCompleted == null)
      this.obtener_tarjetas_clienteOperationCompleted = new SendOrPostCallback(this.Onobtener_tarjetas_clienteOperationCompleted);
    this.InvokeAsync("obtener_tarjetas_cliente", new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) datosCliente
    }, this.obtener_tarjetas_clienteOperationCompleted, userState);
  }

  private void Onobtener_tarjetas_clienteOperationCompleted(object arg)
  {
    if (this.obtener_tarjetas_clienteCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.obtener_tarjetas_clienteCompleted((object) this, new obtener_tarjetas_clienteCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/obtener_cuentas_cliente", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int obtener_cuentas_cliente(
    string version,
    DatosCredencialesPago credenciales,
    DatosClienteCuentaRecurrente[] datosCliente,
    out string respuesta,
    out string token,
    out int id_organismo,
    out CuentasClientes[] cuentas)
  {
    object[] objArray = this.Invoke(nameof (obtener_cuentas_cliente), new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) datosCliente
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_organismo = (int) objArray[3];
    cuentas = (CuentasClientes[]) objArray[4];
    return (int) objArray[0];
  }

  public void obtener_cuentas_clienteAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosClienteCuentaRecurrente[] datosCliente)
  {
    this.obtener_cuentas_clienteAsync(version, credenciales, datosCliente, (object) null);
  }

  public void obtener_cuentas_clienteAsync(
    string version,
    DatosCredencialesPago credenciales,
    DatosClienteCuentaRecurrente[] datosCliente,
    object userState)
  {
    if (this.obtener_cuentas_clienteOperationCompleted == null)
      this.obtener_cuentas_clienteOperationCompleted = new SendOrPostCallback(this.Onobtener_cuentas_clienteOperationCompleted);
    this.InvokeAsync("obtener_cuentas_cliente", new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) datosCliente
    }, this.obtener_cuentas_clienteOperationCompleted, userState);
  }

  private void Onobtener_cuentas_clienteOperationCompleted(object arg)
  {
    if (this.obtener_cuentas_clienteCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.obtener_cuentas_clienteCompleted((object) this, new obtener_cuentas_clienteCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/solicitud_pago_recurrente_suscripcion", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int solicitud_pago_recurrente_suscripcion(
    string version,
    TipoOperacionRec tipo_operacion,
    DatosCredencialesPago credenciales,
    DatosOperacionPago operacion,
    DatosSuscripcion[] suscripcion,
    string suscripcion_modalidad,
    string descripcion,
    int convenio,
    MedioRecurrente medio,
    SuscripcionCliente[] clientes,
    out string respuesta,
    out string token,
    out int id_organismo)
  {
    object[] objArray = this.Invoke(nameof (solicitud_pago_recurrente_suscripcion), new object[10]
    {
      (object) version,
      (object) tipo_operacion,
      (object) credenciales,
      (object) operacion,
      (object) suscripcion,
      (object) suscripcion_modalidad,
      (object) descripcion,
      (object) convenio,
      (object) medio,
      (object) clientes
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_organismo = (int) objArray[3];
    return (int) objArray[0];
  }

  public void solicitud_pago_recurrente_suscripcionAsync(
    string version,
    TipoOperacionRec tipo_operacion,
    DatosCredencialesPago credenciales,
    DatosOperacionPago operacion,
    DatosSuscripcion[] suscripcion,
    string suscripcion_modalidad,
    string descripcion,
    int convenio,
    MedioRecurrente medio,
    SuscripcionCliente[] clientes)
  {
    this.solicitud_pago_recurrente_suscripcionAsync(version, tipo_operacion, credenciales, operacion, suscripcion, suscripcion_modalidad, descripcion, convenio, medio, clientes, (object) null);
  }

  public void solicitud_pago_recurrente_suscripcionAsync(
    string version,
    TipoOperacionRec tipo_operacion,
    DatosCredencialesPago credenciales,
    DatosOperacionPago operacion,
    DatosSuscripcion[] suscripcion,
    string suscripcion_modalidad,
    string descripcion,
    int convenio,
    MedioRecurrente medio,
    SuscripcionCliente[] clientes,
    object userState)
  {
    if (this.solicitud_pago_recurrente_suscripcionOperationCompleted == null)
      this.solicitud_pago_recurrente_suscripcionOperationCompleted = new SendOrPostCallback(this.Onsolicitud_pago_recurrente_suscripcionOperationCompleted);
    this.InvokeAsync("solicitud_pago_recurrente_suscripcion", new object[10]
    {
      (object) version,
      (object) tipo_operacion,
      (object) credenciales,
      (object) operacion,
      (object) suscripcion,
      (object) suscripcion_modalidad,
      (object) descripcion,
      (object) convenio,
      (object) medio,
      (object) clientes
    }, this.solicitud_pago_recurrente_suscripcionOperationCompleted, userState);
  }

  private void Onsolicitud_pago_recurrente_suscripcionOperationCompleted(object arg)
  {
    if (this.solicitud_pago_recurrente_suscripcionCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.solicitud_pago_recurrente_suscripcionCompleted((object) this, new solicitud_pago_recurrente_suscripcionCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/solicitud_pago_recurrente", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int solicitud_pago_recurrente(
    string version,
    TipoOperacionRec tipo_operacion,
    DatosCredencialesPago credenciales,
    DatosOperacionPago operacion,
    int convenio,
    MedioRecurrente medio,
    SuscripcionCliente cliente,
    out string respuesta,
    out string token,
    out int id_transaccion,
    out int id_organismo,
    [SoapElement("convenio")] out string convenio1,
    out string numero_operacion,
    out RespuestaFormaPago[] fp)
  {
    object[] objArray = this.Invoke(nameof (solicitud_pago_recurrente), new object[7]
    {
      (object) version,
      (object) tipo_operacion,
      (object) credenciales,
      (object) operacion,
      (object) convenio,
      (object) medio,
      (object) cliente
    });
    respuesta = (string) objArray[1];
    token = (string) objArray[2];
    id_transaccion = (int) objArray[3];
    id_organismo = (int) objArray[4];
    convenio1 = (string) objArray[5];
    numero_operacion = (string) objArray[6];
    fp = (RespuestaFormaPago[]) objArray[7];
    return (int) objArray[0];
  }

  public void solicitud_pago_recurrenteAsync(
    string version,
    TipoOperacionRec tipo_operacion,
    DatosCredencialesPago credenciales,
    DatosOperacionPago operacion,
    int convenio,
    MedioRecurrente medio,
    SuscripcionCliente cliente)
  {
    this.solicitud_pago_recurrenteAsync(version, tipo_operacion, credenciales, operacion, convenio, medio, cliente, (object) null);
  }

  public void solicitud_pago_recurrenteAsync(
    string version,
    TipoOperacionRec tipo_operacion,
    DatosCredencialesPago credenciales,
    DatosOperacionPago operacion,
    int convenio,
    MedioRecurrente medio,
    SuscripcionCliente cliente,
    object userState)
  {
    if (this.solicitud_pago_recurrenteOperationCompleted == null)
      this.solicitud_pago_recurrenteOperationCompleted = new SendOrPostCallback(this.Onsolicitud_pago_recurrenteOperationCompleted);
    this.InvokeAsync("solicitud_pago_recurrente", new object[7]
    {
      (object) version,
      (object) tipo_operacion,
      (object) credenciales,
      (object) operacion,
      (object) convenio,
      (object) medio,
      (object) cliente
    }, this.solicitud_pago_recurrenteOperationCompleted, userState);
  }

  private void Onsolicitud_pago_recurrenteOperationCompleted(object arg)
  {
    if (this.solicitud_pago_recurrenteCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.solicitud_pago_recurrenteCompleted((object) this, new solicitud_pago_recurrenteCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/generar_qr_vinculado", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int generar_qr_vinculado(
    string version,
    DatosCredencialesPago credenciales,
    OperacionQR[] operaciones_qr,
    out string respuesta,
    [SoapElement(DataType = "base64Binary")] out byte[] qr)
  {
    object[] objArray = this.Invoke(nameof (generar_qr_vinculado), new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) operaciones_qr
    });
    respuesta = (string) objArray[1];
    qr = (byte[]) objArray[2];
    return (int) objArray[0];
  }

  public void generar_qr_vinculadoAsync(
    string version,
    DatosCredencialesPago credenciales,
    OperacionQR[] operaciones_qr)
  {
    this.generar_qr_vinculadoAsync(version, credenciales, operaciones_qr, (object) null);
  }

  public void generar_qr_vinculadoAsync(
    string version,
    DatosCredencialesPago credenciales,
    OperacionQR[] operaciones_qr,
    object userState)
  {
    if (this.generar_qr_vinculadoOperationCompleted == null)
      this.generar_qr_vinculadoOperationCompleted = new SendOrPostCallback(this.Ongenerar_qr_vinculadoOperationCompleted);
    this.InvokeAsync("generar_qr_vinculado", new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) operaciones_qr
    }, this.generar_qr_vinculadoOperationCompleted, userState);
  }

  private void Ongenerar_qr_vinculadoOperationCompleted(object arg)
  {
    if (this.generar_qr_vinculadoCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.generar_qr_vinculadoCompleted((object) this, new generar_qr_vinculadoCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  [SoapRpcMethod("http://api.epagos.com.ar/wsdl/2.0/index.php/pago_lote", RequestNamespace = "https://api.epagos.com.ar/", ResponseNamespace = "https://api.epagos.com.ar/")]
  [return: SoapElement("id_resp")]
  public int pago_lote(
    string version,
    DatosCredencialesPago credenciales,
    [SoapElement("pago_lote")] PagoLote pago_lote1,
    out string respuesta)
  {
    object[] objArray = this.Invoke(nameof (pago_lote), new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) pago_lote1
    });
    respuesta = (string) objArray[1];
    return (int) objArray[0];
  }

  public void pago_loteAsync(
    string version,
    DatosCredencialesPago credenciales,
    PagoLote pago_lote1)
  {
    this.pago_loteAsync(version, credenciales, pago_lote1, (object) null);
  }

  public void pago_loteAsync(
    string version,
    DatosCredencialesPago credenciales,
    PagoLote pago_lote1,
    object userState)
  {
    if (this.pago_loteOperationCompleted == null)
      this.pago_loteOperationCompleted = new SendOrPostCallback(this.Onpago_loteOperationCompleted);
    this.InvokeAsync("pago_lote", new object[3]
    {
      (object) version,
      (object) credenciales,
      (object) pago_lote1
    }, this.pago_loteOperationCompleted, userState);
  }

  private void Onpago_loteOperationCompleted(object arg)
  {
    if (this.pago_loteCompleted == null)
      return;
    InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
    this.pago_loteCompleted((object) this, new pago_loteCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
  }

  public new void CancelAsync(object userState) => base.CancelAsync(userState);

  private bool IsLocalFileSystemWebService(string url)
  {
    if (url == null || url == string.Empty)
      return false;
    Uri uri = new Uri(url);
    return uri.Port >= 1024 /*0x0400*/ && string.Compare(uri.Host, "localHost", StringComparison.OrdinalIgnoreCase) == 0;
  }
}
