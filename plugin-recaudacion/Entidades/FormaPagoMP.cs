// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.FormaPagoMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class FormaPagoMP
{
  public int CodiTipa { get; set; }

  public string DetaTipa { get; set; }

  public int TipoTipa { get; set; }

  public string NuchFopa { get; set; } = string.Empty;

  public Decimal ImpoFopa { get; set; }
}
