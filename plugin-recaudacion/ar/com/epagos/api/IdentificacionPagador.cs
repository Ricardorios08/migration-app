// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.IdentificacionPagador
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
public class IdentificacionPagador
{
  private int tipo_doc_pagadorField;
  private long numero_doc_pagadorField;
  private long cuit_doc_pagadorField;

  public int tipo_doc_pagador
  {
    get => this.tipo_doc_pagadorField;
    set => this.tipo_doc_pagadorField = value;
  }

  public long numero_doc_pagador
  {
    get => this.numero_doc_pagadorField;
    set => this.numero_doc_pagadorField = value;
  }

  public long cuit_doc_pagador
  {
    get => this.cuit_doc_pagadorField;
    set => this.cuit_doc_pagadorField = value;
  }
}
