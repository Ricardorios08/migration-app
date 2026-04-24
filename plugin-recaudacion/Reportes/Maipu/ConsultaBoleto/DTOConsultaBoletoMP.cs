// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Maipu.ConsultaBoleto.DTOConsultaBoletoMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Maipu.ConsultaBoleto;

public class DTOConsultaBoletoMP
{
  public int PeriBole { get; set; }

  public long NumeBole { get; set; }

  public short CodiOfic { get; set; }

  public string DetaOfic { get; set; } = string.Empty;

  public string CuenCtct { get; set; } = string.Empty;

  public long CucuPers { get; set; }

  public string DetaPers { get; set; } = string.Empty;

  public string DomiBole { get; set; } = string.Empty;

  public DateTime FealBole { get; set; }

  public DateTime FeveBole { get; set; }

  public short CodiEnre { get; set; }

  public string DetaEnre { get; set; } = string.Empty;

  public string TipoBole { get; set; } = string.Empty;

  public string EstaBole { get; set; } = string.Empty;

  public long CodiFapa { get; set; }

  public short CuotDefa { get; set; }

  public string ObseBole { get; set; } = string.Empty;

  public string ExpeBole { get; set; } = string.Empty;

  public Decimal CapiBole { get; set; }

  public Decimal RecaBole { get; set; }

  public Decimal DecaBole { get; set; }

  public Decimal DereBole { get; set; }

  public Decimal InteBole { get; set; }

  public Decimal ExenBole { get; set; }

  public Decimal CrafBole { get; set; }

  public Decimal ApreBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string CodiUsuaBole { get; set; } = string.Empty;

  public DateTime AltaFehoBole { get; set; }

  public DateTime FeenAcpa { get; set; }

  public short NumeAcpa { get; set; }

  public DateTime FeacPago { get; set; }

  public DateTime FealPago { get; set; }

  public DateTime FepaPago { get; set; }

  public string AltaUsuaPago { get; set; } = string.Empty;

  public List<DTOServiciosVariosMP> Servicios { get; set; } = new List<DTOServiciosVariosMP>();

  public List<DTODetaBoleMP> Detalles { get; set; } = new List<DTODetaBoleMP>();
}
