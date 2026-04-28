// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.RespuestaFormaPago
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
public class RespuestaFormaPago
{
  private string codigo_pago_fpField;
  private string codigo_barras_fpField;
  private DateTime fechavenc_fpField;
  private float importe_fpField;
  private byte[] pdfField;
  private byte[] codigo_barras_imagenField;
  private byte[] qr_imagenField;
  private string respuesta_entidad_cobroField;
  private string codigo_pmcField;
  private string codigo_linkField;
  private string url_qrField;
  private string cuit_cuentaField;
  private string cbu_cuentaField;

  public string codigo_pago_fp
  {
    get => this.codigo_pago_fpField;
    set => this.codigo_pago_fpField = value;
  }

  public string codigo_barras_fp
  {
    get => this.codigo_barras_fpField;
    set => this.codigo_barras_fpField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime fechavenc_fp
  {
    get => this.fechavenc_fpField;
    set => this.fechavenc_fpField = value;
  }

  public float importe_fp
  {
    get => this.importe_fpField;
    set => this.importe_fpField = value;
  }

  [SoapElement(DataType = "base64Binary")]
  public byte[] pdf
  {
    get => this.pdfField;
    set => this.pdfField = value;
  }

  [SoapElement(DataType = "base64Binary")]
  public byte[] codigo_barras_imagen
  {
    get => this.codigo_barras_imagenField;
    set => this.codigo_barras_imagenField = value;
  }

  [SoapElement(DataType = "base64Binary")]
  public byte[] qr_imagen
  {
    get => this.qr_imagenField;
    set => this.qr_imagenField = value;
  }

  public string respuesta_entidad_cobro
  {
    get => this.respuesta_entidad_cobroField;
    set => this.respuesta_entidad_cobroField = value;
  }

  public string codigo_pmc
  {
    get => this.codigo_pmcField;
    set => this.codigo_pmcField = value;
  }

  public string codigo_link
  {
    get => this.codigo_linkField;
    set => this.codigo_linkField = value;
  }

  public string url_qr
  {
    get => this.url_qrField;
    set => this.url_qrField = value;
  }

  public string cuit_cuenta
  {
    get => this.cuit_cuentaField;
    set => this.cuit_cuentaField = value;
  }

  public string cbu_cuenta
  {
    get => this.cbu_cuentaField;
    set => this.cbu_cuentaField = value;
  }
}
