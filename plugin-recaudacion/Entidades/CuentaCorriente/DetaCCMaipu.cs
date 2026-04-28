// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.DetaCCMaipu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class DetaCCMaipu
{
  public short CodiOfic { get; set; }

  public string DetaOfic { get; set; } = string.Empty;

  public string CuenCtct { get; set; } = string.Empty;

  public string PeriBimestre { get; set; } = string.Empty;

  public short PeriCtct { get; set; }

  public short BimeCtct { get; set; }

  public long NumeCtct { get; set; }

  public short MoviCtct { get; set; }

  public string BoleCtct { get; set; } = string.Empty;

  public short PeriBole { get; set; }

  public int NumeBole { get; set; }

  public DateTime FealCtct { get; set; }

  public string FealCtctStr
  {
    get => this.FealCtct == DateTime.MinValue ? "---" : this.FealCtct.ToShortDateString();
  }

  public DateTime FeveCtct { get; set; }

  public string FeveCtctStr
  {
    get => this.FeveCtct == DateTime.MinValue ? "---" : this.FeveCtct.ToShortDateString();
  }

  public short PeriInfo { get; set; }

  public string CodiConc { get; set; } = string.Empty;

  public string DetaConc { get; set; } = string.Empty;

  public int CodiFapa { get; set; }

  public short CuotDefa { get; set; }

  public int NumeApre { get; set; }

  public string ExpeCtct { get; set; } = string.Empty;

  public string DetaCtct { get; set; } = string.Empty;

  public short CodiTimo { get; set; }

  public string DetaTimo { get; set; } = string.Empty;

  public Decimal DebeCtct { get; set; }

  public Decimal CredCtct { get; set; }

  public Decimal SaldCtct { get; set; }

  public Decimal RecaCtct { get; set; }

  public Decimal CapiApre { get; set; }

  public Decimal RecaApre { get; set; }

  public Decimal ApreCtct { get; set; }

  public Decimal TotaCtct { get; set; }

  public string AltaUsua { get; set; } = string.Empty;

  public string DetaTifa { get; set; } = string.Empty;

  public bool EsFacilidad { get; set; }

  public string EstaDefa { get; set; } = string.Empty;

  public TipoResumenMP Tipo { get; set; }

  public bool Seleccionado { get; set; }

  public bool Congelado { get; set; }

  public DateTime AltaFehoApre { get; set; }

  public DateTime AltaFehoFaci { get; set; }

  public Decimal DescuentoCapital { get; set; }

  public Decimal DescuentoRecargo { get; set; }
}
