// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DetalleContracargo
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
public class DetalleContracargo
{
  private long codigo_unico_transaccionField;
  private float montoField;
  private long numero_rendicionField;

  public long Codigo_unico_transaccion
  {
    get => this.codigo_unico_transaccionField;
    set => this.codigo_unico_transaccionField = value;
  }

  public float Monto
  {
    get => this.montoField;
    set => this.montoField = value;
  }

  public long Numero_rendicion
  {
    get => this.numero_rendicionField;
    set => this.numero_rendicionField = value;
  }
}
