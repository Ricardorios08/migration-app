// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosContracargoRespuesta
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
public class DatosContracargoRespuesta
{
  private string numeroField;
  private string estadoField;
  private string medioField;
  private int transaccionField;
  private float montoField;
  private string tarjetaField;
  private int loteField;
  private int cuponField;
  private byte[] respuestaField;
  private string respuesta_formatoField;
  private byte[] comprobanteField;
  private string comprobante_formatoField;
  private DateTime fechaField;
  private DateTime fecha_vencimientoField;
  private bool fecha_vencimientoFieldSpecified;
  private DateTime fecha_resolucionField;
  private bool fecha_resolucionFieldSpecified;
  private DateTime fecha_confirmacionField;
  private bool fecha_confirmacionFieldSpecified;
  private DateTime fecha_finalizacionField;
  private bool fecha_finalizacionFieldSpecified;

  public string Numero
  {
    get => this.numeroField;
    set => this.numeroField = value;
  }

  public string Estado
  {
    get => this.estadoField;
    set => this.estadoField = value;
  }

  public string Medio
  {
    get => this.medioField;
    set => this.medioField = value;
  }

  public int Transaccion
  {
    get => this.transaccionField;
    set => this.transaccionField = value;
  }

  public float Monto
  {
    get => this.montoField;
    set => this.montoField = value;
  }

  public string Tarjeta
  {
    get => this.tarjetaField;
    set => this.tarjetaField = value;
  }

  public int Lote
  {
    get => this.loteField;
    set => this.loteField = value;
  }

  public int Cupon
  {
    get => this.cuponField;
    set => this.cuponField = value;
  }

  [SoapElement(DataType = "base64Binary")]
  public byte[] Respuesta
  {
    get => this.respuestaField;
    set => this.respuestaField = value;
  }

  public string Respuesta_formato
  {
    get => this.respuesta_formatoField;
    set => this.respuesta_formatoField = value;
  }

  [SoapElement(DataType = "base64Binary")]
  public byte[] Comprobante
  {
    get => this.comprobanteField;
    set => this.comprobanteField = value;
  }

  public string Comprobante_formato
  {
    get => this.comprobante_formatoField;
    set => this.comprobante_formatoField = value;
  }

  public DateTime Fecha
  {
    get => this.fechaField;
    set => this.fechaField = value;
  }

  public DateTime Fecha_vencimiento
  {
    get => this.fecha_vencimientoField;
    set => this.fecha_vencimientoField = value;
  }

  [SoapIgnore]
  public bool Fecha_vencimientoSpecified
  {
    get => this.fecha_vencimientoFieldSpecified;
    set => this.fecha_vencimientoFieldSpecified = value;
  }

  public DateTime Fecha_resolucion
  {
    get => this.fecha_resolucionField;
    set => this.fecha_resolucionField = value;
  }

  [SoapIgnore]
  public bool Fecha_resolucionSpecified
  {
    get => this.fecha_resolucionFieldSpecified;
    set => this.fecha_resolucionFieldSpecified = value;
  }

  public DateTime Fecha_confirmacion
  {
    get => this.fecha_confirmacionField;
    set => this.fecha_confirmacionField = value;
  }

  [SoapIgnore]
  public bool Fecha_confirmacionSpecified
  {
    get => this.fecha_confirmacionFieldSpecified;
    set => this.fecha_confirmacionFieldSpecified = value;
  }

  public DateTime Fecha_finalizacion
  {
    get => this.fecha_finalizacionField;
    set => this.fecha_finalizacionField = value;
  }

  [SoapIgnore]
  public bool Fecha_finalizacionSpecified
  {
    get => this.fecha_finalizacionFieldSpecified;
    set => this.fecha_finalizacionFieldSpecified = value;
  }
}
