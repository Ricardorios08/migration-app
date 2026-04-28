// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoPublicidadGuay.CuponPublicidad
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoPublicidadGuay;

public class CuponPublicidad
{
  public Decimal ImpoLipu { get; set; }

  public Decimal DescLipu { get; set; }

  public Decimal CEmision { get; set; }

  public Decimal DeudLipu { get; set; }

  public Decimal RecaBole { get; set; }

  public int NumeBole { get; set; }

  public int PeriBole { get; set; }

  public int BimeLiqu { get; set; }

  public string BimeLiquStr
  {
    get
    {
      int num = this.BimeLiqu;
      string str1 = num.ToString();
      num = this.PeriBole;
      string str2 = num.ToString();
      return $"{str1}/{str2}";
    }
  }

  public int TipoVenc { get; set; }

  public Decimal TotaBole { get; set; }

  public DateTime FeveLipu { get; set; }

  public string CodigoBarraCupon { get; set; }

  public Image EpagosQr { get; set; }

  public string TipoBole { get; set; }

  public string PeriodoStr
  {
    get
    {
      string str = "ANUAL ";
      if (this.TipoBole != null && this.TipoBole.ToUpper() != "ANUAL")
      {
        switch (this.BimeLiqu)
        {
          case 1:
            str = "PRIMER BIMESTRE ";
            break;
          case 2:
            str = "SEGUNDO BIMESTRE ";
            break;
          case 3:
            str = "TERCER BIMESTRE ";
            break;
          case 4:
            str = "CUARTO BIMESTRE ";
            break;
          case 5:
            str = "QUINTO BIMESTRE ";
            break;
          case 6:
            str = "SEXTO BIMESTRE ";
            break;
        }
      }
      return str + this.PeriBole.ToString();
    }
  }
}
