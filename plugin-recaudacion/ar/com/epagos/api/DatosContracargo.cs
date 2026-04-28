// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosContracargo
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
public class DatosContracargo
{
  private string numeroField;
  private string estadoField;
  private DateTime fecha_desdeField;
  private bool fecha_desdeFieldSpecified;
  private DateTime fecha_hastaField;
  private bool fecha_hastaFieldSpecified;

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
}
