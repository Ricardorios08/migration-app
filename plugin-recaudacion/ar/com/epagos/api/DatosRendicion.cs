// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosRendicion
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
public class DatosRendicion
{
  private long numeroField;
  private bool numeroFieldSpecified;
  private long secuenciaField;
  private bool secuenciaFieldSpecified;
  private DateTime fecha_desdeField;
  private bool fecha_desdeFieldSpecified;
  private DateTime fecha_hastaField;
  private bool fecha_hastaFieldSpecified;
  private DateTime fecha_deposito_desdeField;
  private bool fecha_deposito_desdeFieldSpecified;
  private DateTime fecha_deposito_hastaField;
  private bool fecha_deposito_hastaFieldSpecified;

  public long Numero
  {
    get => this.numeroField;
    set => this.numeroField = value;
  }

  [SoapIgnore]
  public bool NumeroSpecified
  {
    get => this.numeroFieldSpecified;
    set => this.numeroFieldSpecified = value;
  }

  public long Secuencia
  {
    get => this.secuenciaField;
    set => this.secuenciaField = value;
  }

  [SoapIgnore]
  public bool SecuenciaSpecified
  {
    get => this.secuenciaFieldSpecified;
    set => this.secuenciaFieldSpecified = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime Fecha_desde
  {
    get => this.fecha_desdeField;
    set => this.fecha_desdeField = value;
  }

  [SoapIgnore]
  public bool Fecha_desdeSpecified
  {
    get => this.fecha_desdeFieldSpecified;
    set => this.fecha_desdeFieldSpecified = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime Fecha_hasta
  {
    get => this.fecha_hastaField;
    set => this.fecha_hastaField = value;
  }

  [SoapIgnore]
  public bool Fecha_hastaSpecified
  {
    get => this.fecha_hastaFieldSpecified;
    set => this.fecha_hastaFieldSpecified = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime Fecha_deposito_desde
  {
    get => this.fecha_deposito_desdeField;
    set => this.fecha_deposito_desdeField = value;
  }

  [SoapIgnore]
  public bool Fecha_deposito_desdeSpecified
  {
    get => this.fecha_deposito_desdeFieldSpecified;
    set => this.fecha_deposito_desdeFieldSpecified = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime Fecha_deposito_hasta
  {
    get => this.fecha_deposito_hastaField;
    set => this.fecha_deposito_hastaField = value;
  }

  [SoapIgnore]
  public bool Fecha_deposito_hastaSpecified
  {
    get => this.fecha_deposito_hastaFieldSpecified;
    set => this.fecha_deposito_hastaFieldSpecified = value;
  }
}
