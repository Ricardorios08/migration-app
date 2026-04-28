// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.BoletoCajaMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class BoletoCajaMP
{
  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public int CodiOfic { get; set; }

  public string DetaOfic { get; set; } = string.Empty;

  public int CodiFapa { get; set; }

  public int CuotDefa { get; set; }

  public DateTime FeveBole { get; set; }

  public string CuenCtct { get; set; }

  public long CucuPers { get; set; }

  public string DetaPers { get; set; }

  public string TipoBole { get; set; }

  public string EstaBole { get; set; }

  public Decimal CapiBole { get; set; }

  public Decimal CrafBole { get; set; }

  public Decimal DecaBole { get; set; }

  public Decimal RecaBole { get; set; }

  public Decimal DereBole { get; set; }

  public Decimal InteBole { get; set; }

  public Decimal ExenBole { get; set; }

  public Decimal ApreBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string CodiUsua { get; set; }

  public int PeriFopa { get; set; }

  public int NumeFopa { get; set; }
}
