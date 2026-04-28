// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay.DTOControlCajaGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay;

public class DTOControlCajaGuay
{
  public DTOControlCajaGuay() => this.Pagos = new List<DTOPagos>();

  public DateTime FecoAcpa { get; set; }

  public string UscoAcpa { get; set; } = string.Empty;

  public List<DTOPagos> Pagos { get; set; }
}
