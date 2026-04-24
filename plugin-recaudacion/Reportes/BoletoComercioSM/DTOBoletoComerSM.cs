// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioSM.DTOBoletoComerSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioSM;

public class DTOBoletoComerSM
{
  public DTOBoletoComerSM()
  {
    this.cupones = new List<DTOBoletoComerSM.CuponComerSM>();
    this.cupoaux = new List<DTOBoletoComerSM.CuponAuxComerSM>();
  }

  public int PeriLiqu { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public int BimeLiqu { get; set; }

  public DateTime FeveLico { get; set; }

  public string CuenCtct { get; set; }

  public int CodiCome { get; set; }

  public int TipoVenc { get; set; }

  public int OrdeLico { get; set; }

  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string CucuPers { get; set; }

  public string DetaPers { get; set; }

  public Decimal DeudLico { get; set; }

  public string DomiLicoPostal { get; set; }

  public string CallLico { get; set; }

  public string NucaLico { get; set; }

  public string BarrLico { get; set; }

  public string ManzLico { get; set; }

  public string CasaLico { get; set; }

  public string DptoLico { get; set; }

  public string MonoblockLico { get; set; }

  public string UbicLico { get; set; }

  public string LocaLico { get; set; }

  public string CopoLico { get; set; }

  public string DomiLicoReal { get; set; }

  public string CallLicoReal { get; set; }

  public string NucaLicoReal { get; set; }

  public string BarrLicoReal { get; set; }

  public string ManzLicoReal { get; set; }

  public string CasaLicoReal { get; set; }

  public string DptoLicoReal { get; set; }

  public string MonoblockLicoReal { get; set; }

  public string UbicLicoReal { get; set; }

  public string LocaLicoReal { get; set; }

  public string CopoLicoReal { get; set; }

  public string BanelcoLink { get; set; }

  public Decimal Deuda { get; set; }

  public Decimal Recargo { get; set; }

  public string DeudaStr => this.Deuda > 0M ? "SU COMERCIO POSEE DEUDA." : "";

  public List<DTOBoletoComerSM.CuponComerSM> cupones { get; set; }

  public List<DTOBoletoComerSM.CuponAuxComerSM> cupoaux { get; set; }

  public string CuitInvalidoStr
  {
    get
    {
      string cuitInvalidoStr;
      if (!this.CucuPers.StartsWith("99"))
        cuitInvalidoStr = "";
      else
        cuitInvalidoStr = $"ATENCIÓN!: Su comercio posee un CUIL FICTICIO, por{Environment.NewLine}favor acérquese a la Secretaría de Hacienda - Dirección{Environment.NewLine}de Recursos Municipales para regularizar su situación.";
      return cuitInvalidoStr;
    }
  }

  public class CuponComerSM
  {
    public string CuenCtct { get; set; }

    public int NumeBole { get; set; }

    public int PeriBole { get; set; }

    public int BimeLiqu { get; set; }

    public DateTime FeveLico { get; set; }

    public string FeveLicoStr => "Vencimiento " + this.FeveLico.ToString("dd/MM/yyyy");

    public string CodigoBarraCupon { get; set; }

    public string EpagosQrText { get; set; }

    public Decimal Basico { get; set; }

    public Decimal Interes { get; set; }

    public Decimal Descuento { get; set; }

    public Decimal Bombero { get; set; }

    public Decimal GastosAdm { get; set; }

    public Decimal Redondeo { get; set; }

    public Decimal TotaBole { get; set; }

    public int TipoVenc { get; set; }

    public Decimal GastLico { get; set; }

    public string TipoBole { get; set; }

    public string PeriodoStr
    {
      get
      {
        string str = "Anual ";
        if (this.TipoVenc == 1)
        {
          switch (this.BimeLiqu)
          {
            case 1:
              str = "Bimestre 1de ";
              break;
            case 2:
              str = "Bimestre 2de ";
              break;
            case 3:
              str = "Bimestre 3de ";
              break;
            case 4:
              str = "Bimestre 4de ";
              break;
            case 5:
              str = "Bimestre 5de ";
              break;
            case 6:
              str = "Bimestre 6de ";
              break;
          }
        }
        return str + this.PeriBole.ToString();
      }
    }
  }

  public class CuponAuxComerSM
  {
    public Decimal DeudLico { get; set; }

    public Decimal ImpoLico { get; set; }

    public Decimal CrafLico { get; set; }

    public Decimal ExenLico { get; set; }

    public Decimal DescLico { get; set; }

    public Decimal GastLico { get; set; }

    public Decimal TotaLico { get; set; }

    public DateTime FeveLico { get; set; }

    public int BimeLiqu { get; set; }

    public int PeriBole { get; set; }

    public int NumeBole { get; set; }

    public int TipoVenc { get; set; }

    public string TipoBole { get; set; }

    public Decimal TotaBole { get; set; }
  }
}
