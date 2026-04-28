// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosTurno
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
public class DatosTurno
{
  private DateTime fechaField;
  private DateTime horaField;
  private string dominioField;

  [SoapElement(DataType = "date")]
  public DateTime Fecha
  {
    get => this.fechaField;
    set => this.fechaField = value;
  }

  [SoapElement(DataType = "time")]
  public DateTime Hora
  {
    get => this.horaField;
    set => this.horaField = value;
  }

  public string Dominio
  {
    get => this.dominioField;
    set => this.dominioField = value;
  }
}
