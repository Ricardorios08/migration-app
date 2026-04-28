// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.EmisionBoleto.DetaBoleMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.EmisionBoleto;

public class DetaBoleMP
{
  public short PeriBole { get; set; }

  public int NumeBole { get; set; }

  public short PeriCtct { get; set; }

  public short BimeCtct { get; set; }

  public long NumeCtct { get; set; }

  public short MoviCtct { get; set; }

  public short MoviDebo { get; set; }

  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; } = string.Empty;

  public string TipoCtct { get; set; } = string.Empty;

  public long CodiFapa { get; set; }

  public short CuotDefa { get; set; }

  public long NumeApre { get; set; }

  public short CodiTimo { get; set; }

  public short PeriInfo { get; set; }

  public string CodiConc { get; set; } = string.Empty;

  public string ExpeCtct { get; set; } = string.Empty;

  public string ObseDebo { get; set; } = string.Empty;

  public Decimal CapiDebo { get; set; }

  public Decimal DecaDebo { get; set; }

  public Decimal RecaDebo { get; set; }

  public Decimal DereDebo { get; set; }

  public Decimal InteDebo { get; set; }

  public Decimal ExenDebo { get; set; }

  public Decimal CrafDebo { get; set; }

  public Decimal ApreDebo { get; set; }

  public Decimal TotaDebo { get; set; }
}
