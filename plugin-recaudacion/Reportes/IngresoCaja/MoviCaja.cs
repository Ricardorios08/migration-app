// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja.MoviCaja
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja;

public class MoviCaja
{
  public string CodiUsua { get; set; } = string.Empty;

  public string CodiConc { get; set; } = string.Empty;

  public string DetaConc { get; set; } = string.Empty;

  public Decimal ImpoIngr { get; set; }

  public string IngrConc { get; set; } = string.Empty;
}
