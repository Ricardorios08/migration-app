// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPagoMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.PlanPago;

public class PlanPagoMP : Entity
{
  public long CodiFapa { get; set; }

  public long CucuPers { get; set; }

  public short CodiTifa { get; set; }

  public short CacuFapa { get; set; }

  public short CaapFapa { get; set; }

  public DateTime FealFapa { get; set; }

  public DateTime FepaFapa { get; set; }

  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; } = string.Empty;

  public string EstaFapa { get; set; } = string.Empty;

  public Decimal TainFapa { get; set; }

  public Decimal CapiFapa { get; set; }

  public Decimal DecaFapa { get; set; }

  public Decimal RecaFapa { get; set; }

  public Decimal DereFapa { get; set; }

  public Decimal ApreFapa { get; set; }

  public Decimal InteFapa { get; set; }

  public Decimal TotaFapa { get; set; }

  public short CodiTifp { get; set; }

  public long CufiFapa { get; set; }

  public string FirmFapa { get; set; } = string.Empty;

  public override ID id => new ID("CodiFapa", (object) this.CodiFapa);
}
