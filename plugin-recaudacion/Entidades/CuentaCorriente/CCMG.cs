// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.CCMG
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class CCMG
{
  public short PeriCtct { get; set; }

  public short BimeCtct { get; set; }

  public string BoleCtct { get; set; } = string.Empty;

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

  public string DetaConc { get; set; } = string.Empty;

  public int CodiFapa { get; set; }

  public short CuotDefa { get; set; }

  public int NumeApre { get; set; }

  public string ExpeCtct { get; set; } = string.Empty;

  public string DetaTimo { get; set; } = string.Empty;

  public Decimal DebeCtct { get; set; }

  public Decimal RecaCtct { get; set; }

  public Decimal TotaCtct { get; set; }
}
