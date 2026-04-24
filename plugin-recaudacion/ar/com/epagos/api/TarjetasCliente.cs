// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.TarjetasCliente
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
public class TarjetasCliente
{
  private string identificador_tarjetaField;
  private string marcaField;
  private int id_fpField;
  private DateTime fecha_altaField;

  public string identificador_tarjeta
  {
    get => this.identificador_tarjetaField;
    set => this.identificador_tarjetaField = value;
  }

  public string marca
  {
    get => this.marcaField;
    set => this.marcaField = value;
  }

  public int id_fp
  {
    get => this.id_fpField;
    set => this.id_fpField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime fecha_alta
  {
    get => this.fecha_altaField;
    set => this.fecha_altaField = value;
  }
}
