// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.TipoFacilidadPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class TipoFacilidadPago : Entity
{
  public short CodiTifa { get; set; }

  public string DetaTifa { get; set; } = string.Empty;

  public string TipoTifa { get; set; } = string.Empty;

  public string MecaTifa { get; set; } = string.Empty;

  public Decimal InteTifa { get; set; }

  public Decimal MomiTifa { get; set; }

  public Decimal DecaTifa { get; set; }

  public Decimal DereTifa { get; set; }

  public short CumiTifa { get; set; }

  public short CumaTifa { get; set; }

  public Decimal ImmiTifa { get; set; }

  public string ExtrTifa { get; set; } = string.Empty;

  public override ID id => new ID("CodiTifa", (object) this.CodiTifa);
}
