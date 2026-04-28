// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosOperacionPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Xml.Serialization;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.ar.com.epagos.api;

[GeneratedCode("System.Xml", "4.8.4161.0")]
[DebuggerStepThrough]
[DesignerCategory("code")]
[SoapType(Namespace = "https://api.epagos.com.ar/")]
[Serializable]
public class DatosOperacionPago
{
  private string numero_operacionField;
  private string identificador_externo_2Field;
  private string identificador_externo_3Field;
  private string identificador_externo_4Field;
  private string url_boletaField;
  private string identificador_clienteField;
  private int id_moneda_operacionField;
  private float monto_operacionField;
  private bool opc_pdfField;
  private DateTime opc_fecha_vencimientoField;
  private bool opc_devolver_qrField;
  private bool opc_devolver_qrFieldSpecified;
  private bool opc_devolver_codbarrasField;
  private bool opc_devolver_codbarrasFieldSpecified;
  private bool opc_generar_pdfField;
  private bool opc_generar_pdfFieldSpecified;
  private DetallePago[] detalle_operacionField;
  private DateTime fecha_2do_vencField;
  private bool fecha_2do_vencFieldSpecified;
  private float monto_operacion_2do_vencField;
  private bool monto_operacion_2do_vencFieldSpecified;
  private DatosPagadorPago pagadorField;
  private int tipo_operacionField;
  private bool tipo_operacionFieldSpecified;
  private int codigo_publicacionField;
  private bool codigo_publicacionFieldSpecified;

  public string numero_operacion
  {
    get => this.numero_operacionField;
    set => this.numero_operacionField = value;
  }

  public string identificador_externo_2
  {
    get => this.identificador_externo_2Field;
    set => this.identificador_externo_2Field = value;
  }

  public string identificador_externo_3
  {
    get => this.identificador_externo_3Field;
    set => this.identificador_externo_3Field = value;
  }

  public string identificador_externo_4
  {
    get => this.identificador_externo_4Field;
    set => this.identificador_externo_4Field = value;
  }

  public string url_boleta
  {
    get => this.url_boletaField;
    set => this.url_boletaField = value;
  }

  public string identificador_cliente
  {
    get => this.identificador_clienteField;
    set => this.identificador_clienteField = value;
  }

  public int id_moneda_operacion
  {
    get => this.id_moneda_operacionField;
    set => this.id_moneda_operacionField = value;
  }

  public float monto_operacion
  {
    get => this.monto_operacionField;
    set => this.monto_operacionField = value;
  }

  public bool opc_pdf
  {
    get => this.opc_pdfField;
    set => this.opc_pdfField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime opc_fecha_vencimiento
  {
    get => this.opc_fecha_vencimientoField;
    set => this.opc_fecha_vencimientoField = value;
  }

  public bool opc_devolver_qr
  {
    get => this.opc_devolver_qrField;
    set => this.opc_devolver_qrField = value;
  }

  [SoapIgnore]
  public bool opc_devolver_qrSpecified
  {
    get => this.opc_devolver_qrFieldSpecified;
    set => this.opc_devolver_qrFieldSpecified = value;
  }

  public bool opc_devolver_codbarras
  {
    get => this.opc_devolver_codbarrasField;
    set => this.opc_devolver_codbarrasField = value;
  }

  [SoapIgnore]
  public bool opc_devolver_codbarrasSpecified
  {
    get => this.opc_devolver_codbarrasFieldSpecified;
    set => this.opc_devolver_codbarrasFieldSpecified = value;
  }

  public bool opc_generar_pdf
  {
    get => this.opc_generar_pdfField;
    set => this.opc_generar_pdfField = value;
  }

  [SoapIgnore]
  public bool opc_generar_pdfSpecified
  {
    get => this.opc_generar_pdfFieldSpecified;
    set => this.opc_generar_pdfFieldSpecified = value;
  }

  public DetallePago[] detalle_operacion
  {
    get => this.detalle_operacionField;
    set => this.detalle_operacionField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime fecha_2do_venc
  {
    get => this.fecha_2do_vencField;
    set => this.fecha_2do_vencField = value;
  }

  [SoapIgnore]
  public bool fecha_2do_vencSpecified
  {
    get => this.fecha_2do_vencFieldSpecified;
    set => this.fecha_2do_vencFieldSpecified = value;
  }

  public float monto_operacion_2do_venc
  {
    get => this.monto_operacion_2do_vencField;
    set => this.monto_operacion_2do_vencField = value;
  }

  [SoapIgnore]
  public bool monto_operacion_2do_vencSpecified
  {
    get => this.monto_operacion_2do_vencFieldSpecified;
    set => this.monto_operacion_2do_vencFieldSpecified = value;
  }

  public DatosPagadorPago pagador
  {
    get => this.pagadorField;
    set => this.pagadorField = value;
  }

  public int tipo_operacion
  {
    get => this.tipo_operacionField;
    set => this.tipo_operacionField = value;
  }

  [SoapIgnore]
  public bool tipo_operacionSpecified
  {
    get => this.tipo_operacionFieldSpecified;
    set => this.tipo_operacionFieldSpecified = value;
  }

  public int codigo_publicacion
  {
    get => this.codigo_publicacionField;
    set => this.codigo_publicacionField = value;
  }

  [SoapIgnore]
  public bool codigo_publicacionSpecified
  {
    get => this.codigo_publicacionFieldSpecified;
    set => this.codigo_publicacionFieldSpecified = value;
  }
}
