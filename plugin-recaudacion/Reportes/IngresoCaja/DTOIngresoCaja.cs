// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja.DTOIngresoCaja
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;
using System.Linq;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja;

public class DTOIngresoCaja
{
  public DTOIngresoCaja() => this.Movimientos = new List<MoviCaja>();

  public string CodiUsua { get; set; } = string.Empty;

  public Decimal TotaIngr
  {
    get => this.Movimientos.Sum<MoviCaja>((Func<MoviCaja, Decimal>) (x => x.ImpoIngr));
  }

  public List<MoviCaja> Movimientos { get; set; }
}
