// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Maipu.ReimpresionPP.CuotaFapa
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Maipu.ReimpresionPP;

public class CuotaFapa
{
  public string CuotDefaStr { get; set; } = string.Empty;

  public string EstaDefa { get; set; } = string.Empty;

  public DateTime FeveDefa { get; set; }

  public string FeveDefaStr
  {
    get => this.FeveDefa == DateTime.MinValue ? "---" : this.FeveDefa.ToShortDateString();
  }

  public DateTime FepaDefa { get; set; }

  public string FepaDefaStr
  {
    get => this.FepaDefa == DateTime.MinValue ? "---" : this.FepaDefa.ToShortDateString();
  }

  public Decimal TotaDefa { get; set; }
}
