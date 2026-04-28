// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.FormaPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

internal class FormaPago
{
  public int CodiTipa { get; set; }

  public string DetaTipa { get; set; }

  public int TipoTipa { get; set; }

  public string CodiCuco { get; set; }

  public long NuchFopa { get; set; }

  public string NuchFopaStr { get; set; } = string.Empty;

  public Decimal ImpoFopa { get; set; }
}
