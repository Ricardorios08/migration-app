// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay.DTOPagos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay;

public class DTOPagos
{
  public string NumeBole { get; set; }

  public string DetaFopa { get; set; } = string.Empty;

  public string NuchFopa { get; set; } = string.Empty;

  public string DetaOfic { get; set; } = string.Empty;

  public string CuenCtct { get; set; } = string.Empty;

  public Decimal TotaPago { get; set; }

  public string CodiUsua { get; set; } = string.Empty;

  public string ObsePago { get; set; } = string.Empty;
}
