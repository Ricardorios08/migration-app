// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DireccionTarjeta
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
public class DireccionTarjeta
{
  private string calle_direccion_tarjeta_fpField;
  private string numero_direccion_tarjeta_fpField;

  public string calle_direccion_tarjeta_fp
  {
    get => this.calle_direccion_tarjeta_fpField;
    set => this.calle_direccion_tarjeta_fpField = value;
  }

  public string numero_direccion_tarjeta_fp
  {
    get => this.numero_direccion_tarjeta_fpField;
    set => this.numero_direccion_tarjeta_fpField = value;
  }
}
