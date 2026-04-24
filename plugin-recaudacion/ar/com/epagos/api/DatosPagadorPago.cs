// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosPagadorPago
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
public class DatosPagadorPago
{
  private string nombre_pagadorField;
  private string apellido_pagadorField;
  private DateTime fechanac_pagadorField;
  private string email_pagadorField;
  private IdentificacionPagador identificacion_pagadorField;
  private DomicilioPagador domicilio_pagadorField;
  private TelefonoPagador telefono_pagadorField;
  private string cbu_pagadorField;

  public string nombre_pagador
  {
    get => this.nombre_pagadorField;
    set => this.nombre_pagadorField = value;
  }

  public string apellido_pagador
  {
    get => this.apellido_pagadorField;
    set => this.apellido_pagadorField = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime fechanac_pagador
  {
    get => this.fechanac_pagadorField;
    set => this.fechanac_pagadorField = value;
  }

  public string email_pagador
  {
    get => this.email_pagadorField;
    set => this.email_pagadorField = value;
  }

  public IdentificacionPagador identificacion_pagador
  {
    get => this.identificacion_pagadorField;
    set => this.identificacion_pagadorField = value;
  }

  public DomicilioPagador domicilio_pagador
  {
    get => this.domicilio_pagadorField;
    set => this.domicilio_pagadorField = value;
  }

  public TelefonoPagador telefono_pagador
  {
    get => this.telefono_pagadorField;
    set => this.telefono_pagadorField = value;
  }

  public string cbu_pagador
  {
    get => this.cbu_pagadorField;
    set => this.cbu_pagadorField = value;
  }
}
