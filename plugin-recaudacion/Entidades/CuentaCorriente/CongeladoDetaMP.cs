// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.CongeladoDetaMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class CongeladoDetaMP
{
  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; } = string.Empty;

  public short NumeCong { get; set; }

  public short PeriCtct { get; set; }

  public short BimeCtct { get; set; }

  public long NumeCtct { get; set; }

  public short MoviCtct { get; set; }

  public int NumeApre { get; set; }

  public long CodiFapa { get; set; }

  public short CuotDefa { get; set; }
}
