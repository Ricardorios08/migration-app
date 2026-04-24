// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.TipoLote
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
public class TipoLote
{
  private DatosFormaPago[] fpField;
  private DatosOperacionPago operacionField;
  private int convenioField;

  public DatosFormaPago[] fp
  {
    get => this.fpField;
    set => this.fpField = value;
  }

  public DatosOperacionPago operacion
  {
    get => this.operacionField;
    set => this.operacionField = value;
  }

  public int convenio
  {
    get => this.convenioField;
    set => this.convenioField = value;
  }
}
