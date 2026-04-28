// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosPagoTarjeta
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
public class DatosPagoTarjeta
{
  private string numero_tarjeta_fpField;
  private string banco_tarjeta_fpField;
  private FechaVencimiento vencimiento_tarjeta_fpField;
  private string codigo_seg_tarjeta_fpField;
  private int cuotas_tarjeta_fpField;
  private string titular_tarjeta_fpField;
  private IdentificacionTarjeta identificacion_tarjeta_fpField;
  private DateTime fechanac_tarjeta_fpField;
  private DireccionTarjeta direccion_tarjeta_fpField;

  public string numero_tarjeta_fp
  {
    get => this.numero_tarjeta_fpField;
    set => this.numero_tarjeta_fpField = value;
  }

  public string banco_tarjeta_fp
  {
    get => this.banco_tarjeta_fpField;
    set => this.banco_tarjeta_fpField = value;
  }

  public FechaVencimiento vencimiento_tarjeta_fp
  {
    get => this.vencimiento_tarjeta_fpField;
    set => this.vencimiento_tarjeta_fpField = value;
  }

  public string codigo_seg_tarjeta_fp
  {
    get => this.codigo_seg_tarjeta_fpField;
    set => this.codigo_seg_tarjeta_fpField = value;
  }

  public int cuotas_tarjeta_fp
  {
    get => this.cuotas_tarjeta_fpField;
    set => this.cuotas_tarjeta_fpField = value;
  }

  public string titular_tarjeta_fp
  {
    get => this.titular_tarjeta_fpField;
    set => this.titular_tarjeta_fpField = value;
  }

  public IdentificacionTarjeta identificacion_tarjeta_fp
  {
    get => this.identificacion_tarjeta_fpField;
    set => this.identificacion_tarjeta_fpField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime fechanac_tarjeta_fp
  {
    get => this.fechanac_tarjeta_fpField;
    set => this.fechanac_tarjeta_fpField = value;
  }

  public DireccionTarjeta direccion_tarjeta_fp
  {
    get => this.direccion_tarjeta_fpField;
    set => this.direccion_tarjeta_fpField = value;
  }
}
