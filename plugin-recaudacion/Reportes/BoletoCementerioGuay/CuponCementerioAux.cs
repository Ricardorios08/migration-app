// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioGuay.CuponCementerioAux
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioGuay;

public class CuponCementerioAux
{
  public string PeriodoStr { get; set; }

  public Decimal DescLico { get; set; }

  public Decimal DeudLico { get; set; }

  public Decimal RecaBole { get; set; }

  public int NumeBole { get; set; }

  public int PeriBole { get; set; }

  public int BimeLiqu { get; set; }

  public int TipoVenc { get; set; }

  public Decimal TotaBole { get; set; }

  public DateTime FeveLico { get; set; }

  public string TipoBole { get; set; }
}
