// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.TelefonoPagador
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
public class TelefonoPagador
{
  private int codigo_telef_pagadorField;
  private int numero_telef_pagadorField;

  public int codigo_telef_pagador
  {
    get => this.codigo_telef_pagadorField;
    set => this.codigo_telef_pagadorField = value;
  }

  public int numero_telef_pagador
  {
    get => this.numero_telef_pagadorField;
    set => this.numero_telef_pagadorField = value;
  }
}
