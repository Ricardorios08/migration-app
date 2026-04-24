// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.ResumenBoletosAnuladosMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class ResumenBoletosAnuladosMP
{
  public short PeriBole { get; set; }

  public long NumeBole { get; set; }

  public long CucuPers { get; set; }

  public string DetaPers { get; set; } = string.Empty;

  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; } = string.Empty;

  public string DetaOfic { get; set; } = string.Empty;

  public Decimal TotaBole { get; set; }

  public string MoanBole { get; set; } = string.Empty;

  public string UsuaAnul { get; set; } = string.Empty;

  public DateTime FechAnul { get; set; }

  public string FechAnulFormated
  {
    get => this.FechAnul == DateTime.MinValue ? "---" : this.FechAnul.ToString("G");
  }
}
