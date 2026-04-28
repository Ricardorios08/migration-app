// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.RespuestaLote
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
public class RespuestaLote
{
  private int id_transaccionField;
  private string numero_operacionField;
  private int convenioField;
  private RespuestaFormaPago[] respuesta_forma_pago_arrayField;

  public int id_transaccion
  {
    get => this.id_transaccionField;
    set => this.id_transaccionField = value;
  }

  public string numero_operacion
  {
    get => this.numero_operacionField;
    set => this.numero_operacionField = value;
  }

  public int convenio
  {
    get => this.convenioField;
    set => this.convenioField = value;
  }

  public RespuestaFormaPago[] respuesta_forma_pago_array
  {
    get => this.respuesta_forma_pago_arrayField;
    set => this.respuesta_forma_pago_arrayField = value;
  }
}
