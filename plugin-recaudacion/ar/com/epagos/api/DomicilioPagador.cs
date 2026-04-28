// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DomicilioPagador
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
public class DomicilioPagador
{
  private string calle_dom_pagadorField;
  private string numero_dom_pagadorField;
  private string adicional_dom_pagadorField;
  private string cp_dom_pagadorField;
  private string ciudad_dom_pagadorField;
  private int provincia_dom_pagadorField;
  private int pais_dom_pagadorField;

  public string calle_dom_pagador
  {
    get => this.calle_dom_pagadorField;
    set => this.calle_dom_pagadorField = value;
  }

  public string numero_dom_pagador
  {
    get => this.numero_dom_pagadorField;
    set => this.numero_dom_pagadorField = value;
  }

  public string adicional_dom_pagador
  {
    get => this.adicional_dom_pagadorField;
    set => this.adicional_dom_pagadorField = value;
  }

  public string cp_dom_pagador
  {
    get => this.cp_dom_pagadorField;
    set => this.cp_dom_pagadorField = value;
  }

  public string ciudad_dom_pagador
  {
    get => this.ciudad_dom_pagadorField;
    set => this.ciudad_dom_pagadorField = value;
  }

  public int provincia_dom_pagador
  {
    get => this.provincia_dom_pagadorField;
    set => this.provincia_dom_pagadorField = value;
  }

  public int pais_dom_pagador
  {
    get => this.pais_dom_pagadorField;
    set => this.pais_dom_pagadorField = value;
  }
}
