// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.PagoLote
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
public class PagoLote
{
  private int id_transaccionField;
  private int forma_pagoField;
  private DateTime fecha_pagoField;
  private float importeField;
  private OperacionPagoLote[] operacionesField;

  public int id_transaccion
  {
    get => this.id_transaccionField;
    set => this.id_transaccionField = value;
  }

  public int forma_pago
  {
    get => this.forma_pagoField;
    set => this.forma_pagoField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime fecha_pago
  {
    get => this.fecha_pagoField;
    set => this.fecha_pagoField = value;
  }

  public float importe
  {
    get => this.importeField;
    set => this.importeField = value;
  }

  public OperacionPagoLote[] operaciones
  {
    get => this.operacionesField;
    set => this.operacionesField = value;
  }
}
