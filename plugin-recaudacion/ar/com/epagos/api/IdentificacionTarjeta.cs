// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.IdentificacionTarjeta
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
public class IdentificacionTarjeta
{
  private int tipo_identificacion_tarjeta_fpField;
  private int numero_identificacion_tarjeta_fpField;

  public int tipo_identificacion_tarjeta_fp
  {
    get => this.tipo_identificacion_tarjeta_fpField;
    set => this.tipo_identificacion_tarjeta_fpField = value;
  }

  public int numero_identificacion_tarjeta_fp
  {
    get => this.numero_identificacion_tarjeta_fpField;
    set => this.numero_identificacion_tarjeta_fpField = value;
  }
}
