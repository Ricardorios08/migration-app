// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.SuscripcionCliente
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
public class SuscripcionCliente
{
  private string identificador_clienteField;
  private string identificador_tarjetaField;
  private string identificador_cuentaField;

  public string identificador_cliente
  {
    get => this.identificador_clienteField;
    set => this.identificador_clienteField = value;
  }

  public string identificador_tarjeta
  {
    get => this.identificador_tarjetaField;
    set => this.identificador_tarjetaField = value;
  }

  public string identificador_cuenta
  {
    get => this.identificador_cuentaField;
    set => this.identificador_cuentaField = value;
  }
}
