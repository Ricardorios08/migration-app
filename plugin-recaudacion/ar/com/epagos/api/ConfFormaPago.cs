// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.ConfFormaPago
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
public class ConfFormaPago
{
  private string patronField;
  private int longitudTarjetaField;
  private string algoritmoValidacionField;
  private bool codigoSeguridadField;
  private int codigoSeguridadLongitudField;
  private string codigoSeguridadUbicacionField;

  public string Patron
  {
    get => this.patronField;
    set => this.patronField = value;
  }

  public int LongitudTarjeta
  {
    get => this.longitudTarjetaField;
    set => this.longitudTarjetaField = value;
  }

  public string AlgoritmoValidacion
  {
    get => this.algoritmoValidacionField;
    set => this.algoritmoValidacionField = value;
  }

  public bool CodigoSeguridad
  {
    get => this.codigoSeguridadField;
    set => this.codigoSeguridadField = value;
  }

  public int CodigoSeguridadLongitud
  {
    get => this.codigoSeguridadLongitudField;
    set => this.codigoSeguridadLongitudField = value;
  }

  public string CodigoSeguridadUbicacion
  {
    get => this.codigoSeguridadUbicacionField;
    set => this.codigoSeguridadUbicacionField = value;
  }
}
