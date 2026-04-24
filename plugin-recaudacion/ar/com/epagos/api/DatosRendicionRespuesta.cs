// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosRendicionRespuesta
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
public class DatosRendicionRespuesta
{
  private long numeroField;
  private long secuenciaField;
  private int convenioField;
  private string estadoField;
  private DateTime fecha_desdeField;
  private DateTime fecha_hastaField;
  private DateTime fecha_estimada_depositoField;
  private DateTime fecha_depositoField;
  private float montoField;
  private float monto_depositadoField;
  private float monto_comisionField;
  private float monto_IVAField;
  private float monto_IIBBField;
  private float monto_CCField;
  private long cantidadField;
  private DetalleRendicion[] detallesField;
  private DetalleContracargo[] contracargosField;
  private string contenidoField;

  public long Numero
  {
    get => this.numeroField;
    set => this.numeroField = value;
  }

  public long Secuencia
  {
    get => this.secuenciaField;
    set => this.secuenciaField = value;
  }

  public int Convenio
  {
    get => this.convenioField;
    set => this.convenioField = value;
  }

  public string Estado
  {
    get => this.estadoField;
    set => this.estadoField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime Fecha_desde
  {
    get => this.fecha_desdeField;
    set => this.fecha_desdeField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime Fecha_hasta
  {
    get => this.fecha_hastaField;
    set => this.fecha_hastaField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime Fecha_estimada_deposito
  {
    get => this.fecha_estimada_depositoField;
    set => this.fecha_estimada_depositoField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime Fecha_deposito
  {
    get => this.fecha_depositoField;
    set => this.fecha_depositoField = value;
  }

  public float Monto
  {
    get => this.montoField;
    set => this.montoField = value;
  }

  public float Monto_depositado
  {
    get => this.monto_depositadoField;
    set => this.monto_depositadoField = value;
  }

  public float Monto_comision
  {
    get => this.monto_comisionField;
    set => this.monto_comisionField = value;
  }

  public float Monto_IVA
  {
    get => this.monto_IVAField;
    set => this.monto_IVAField = value;
  }

  public float Monto_IIBB
  {
    get => this.monto_IIBBField;
    set => this.monto_IIBBField = value;
  }

  public float Monto_CC
  {
    get => this.monto_CCField;
    set => this.monto_CCField = value;
  }

  public long Cantidad
  {
    get => this.cantidadField;
    set => this.cantidadField = value;
  }

  public DetalleRendicion[] Detalles
  {
    get => this.detallesField;
    set => this.detallesField = value;
  }

  public DetalleContracargo[] Contracargos
  {
    get => this.contracargosField;
    set => this.contracargosField = value;
  }

  public string Contenido
  {
    get => this.contenidoField;
    set => this.contenidoField = value;
  }
}
