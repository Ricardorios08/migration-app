// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.DatoBoleCtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class DatoBoleCtaCte
{
  public short PeriBole { get; set; }

  public int NumeBole { get; set; }

  public short CodiTili { get; set; }

  public int NumeLiqu { get; set; }

  public int OrdeLiqu { get; set; } = 0;

  public string TipoBole { get; set; } = string.Empty;

  public string EstaBole { get; set; } = string.Empty;

  public DateTime FealBole { get; set; }

  public string FealBoleStr
  {
    get => this.FealBole == DateTime.MinValue ? string.Empty : this.FealBole.ToString("dd/MM/yyyy");
  }

  public DateTime FeveBole { get; set; }

  public string FeveBoleStr
  {
    get => this.FeveBole == DateTime.MinValue ? string.Empty : this.FeveBole.ToString("dd/MM/yyyy");
  }

  public DateTime FeenAcpa { get; set; }

  public string FeenAcpaStr
  {
    get => this.FeenAcpa == DateTime.MinValue ? string.Empty : this.FeenAcpa.ToString("dd/MM/yyyy");
  }

  public short NumeAcpa { get; set; }

  public DateTime FepaPago { get; set; }

  public string FepaPagoStr
  {
    get => this.FepaPago == DateTime.MinValue ? string.Empty : this.FepaPago.ToString("dd/MM/yyyy");
  }

  public DateTime FeacPago { get; set; }

  public string FeacPagoStr
  {
    get => this.FeacPago == DateTime.MinValue ? string.Empty : this.FeacPago.ToString("dd/MM/yyyy");
  }

  public int CodiFapa { get; set; }

  public short CuotDefa { get; set; }

  public Decimal CapiBole { get; set; }

  public Decimal RecaBole { get; set; }

  public Decimal DecaBole { get; set; }

  public Decimal DereBole { get; set; }

  public Decimal InteBole { get; set; }

  public Decimal ApreBole { get; set; }

  public Decimal TotaBole { get; set; }

  public List<DetaBoleCtaCte> DetalleBoletos { get; set; } = new List<DetaBoleCtaCte>();

  public List<DetaPagoCtaCte> DetallePagos { get; set; } = new List<DetaPagoCtaCte>();
}
