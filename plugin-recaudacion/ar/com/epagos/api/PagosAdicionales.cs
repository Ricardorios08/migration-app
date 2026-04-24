// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.PagosAdicionales
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
public class PagosAdicionales
{
  private long codigoUnicoTransaccionField;
  private string formaPagoField;
  private float montoField;
  private DateTime fechaPagoField;
  private DateTime fechaNovedadField;
  private int idPagoField;

  public long CodigoUnicoTransaccion
  {
    get => this.codigoUnicoTransaccionField;
    set => this.codigoUnicoTransaccionField = value;
  }

  public string FormaPago
  {
    get => this.formaPagoField;
    set => this.formaPagoField = value;
  }

  public float Monto
  {
    get => this.montoField;
    set => this.montoField = value;
  }

  public DateTime FechaPago
  {
    get => this.fechaPagoField;
    set => this.fechaPagoField = value;
  }

  public DateTime FechaNovedad
  {
    get => this.fechaNovedadField;
    set => this.fechaNovedadField = value;
  }

  public int IdPago
  {
    get => this.idPagoField;
    set => this.idPagoField = value;
  }
}
