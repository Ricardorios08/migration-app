// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosFormaPagoObtenerPago
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
public class DatosFormaPagoObtenerPago
{
  private int identificadorField;
  private TipoFormaPagoObtenerPago tipoField;
  private string codigoPagoField;
  private string codigoBarrasField;
  private DateTime fechaVencimientoField;
  private float importeField;

  public int Identificador
  {
    get => this.identificadorField;
    set => this.identificadorField = value;
  }

  public TipoFormaPagoObtenerPago Tipo
  {
    get => this.tipoField;
    set => this.tipoField = value;
  }

  public string CodigoPago
  {
    get => this.codigoPagoField;
    set => this.codigoPagoField = value;
  }

  public string CodigoBarras
  {
    get => this.codigoBarrasField;
    set => this.codigoBarrasField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime FechaVencimiento
  {
    get => this.fechaVencimientoField;
    set => this.fechaVencimientoField = value;
  }

  public float Importe
  {
    get => this.importeField;
    set => this.importeField = value;
  }
}
