// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoSM.DTOBoletoInmuSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoSM;

public class DTOBoletoInmuSM
{
  public DTOBoletoInmuSM()
  {
    this.cupones = new List<DTOBoletoInmuSM.CuponInmuSM>();
    this.cupoaux = new List<DTOBoletoInmuSM.CuponAuxInmuSM>();
  }

  public int PeriLiqu { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public int BimeLiqu { get; set; }

  public DateTime FeveLita { get; set; }

  public string CuenCtct { get; set; }

  public int CodiInmu { get; set; }

  public int TipoVenc { get; set; }

  public int OrdeLita { get; set; }

  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string CucuPers { get; set; }

  public string DetaPers { get; set; }

  public Decimal DeudLita { get; set; }

  public string DomiLitaPostal { get; set; }

  public string CallLita { get; set; }

  public string NucaLita { get; set; }

  public string BarrLita { get; set; }

  public string ManzLita { get; set; }

  public string CasaLita { get; set; }

  public string DptoDomiLita { get; set; }

  public string MonoblockLita { get; set; }

  public string UbicLita { get; set; }

  public string LocaLita { get; set; }

  public int CopoLita { get; set; }

  public string DomiLitaReal { get; set; }

  public string CallLitaReal { get; set; }

  public string NucaLitaReal { get; set; }

  public string BarrLitaReal { get; set; }

  public string ManzLitaReal { get; set; }

  public string CasaLitaReal { get; set; }

  public string DptoDomiLitaReal { get; set; }

  public string MonoblockLitaReal { get; set; }

  public string UbicLitaReal { get; set; }

  public string LocaLitaReal { get; set; }

  public int CopoLitaReal { get; set; }

  public short DptoLita { get; set; }

  public short DistLita { get; set; }

  public short SeccLita { get; set; }

  public short MansLita { get; set; }

  public int ParcLita { get; set; }

  public int SubpLita { get; set; }

  public short DigiLita { get; set; }

  public string NomeLita { get; set; }

  public string BanelcoLink { get; set; }

  public Decimal Deuda { get; set; }

  public Decimal Recargo { get; set; }

  public string DeudaStr => this.Deuda > 0M ? "SU PROPIEDAD POSEE DEUDA." : "";

  public List<DTOBoletoInmuSM.CuponInmuSM> cupones { get; set; }

  public List<DTOBoletoInmuSM.CuponAuxInmuSM> cupoaux { get; set; }

  public string CuitInvalidoStr
  {
    get
    {
      string cuitInvalidoStr;
      if (!this.CucuPers.StartsWith("99"))
        cuitInvalidoStr = "";
      else
        cuitInvalidoStr = $"ATENCIÓN!: Su propiedad posee un CUIL FICTICIO, por{Environment.NewLine}favor acérquese a la Secretaría de Hacienda - Dirección{Environment.NewLine}de Recursos Municipales para regularizar su situación.";
      return cuitInvalidoStr;
    }
  }

  public class CuponInmuSM
  {
    public string CuenCtct { get; set; }

    public int NumeBole { get; set; }

    public int PeriBole { get; set; }

    public int BimeLiqu { get; set; }

    public DateTime FeveLita { get; set; }

    public string FeveLitaStr => "Vencimiento " + this.FeveLita.ToString("dd/MM/yyyy");

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

    public Decimal GastLita { get; set; }

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

  public class CuponAuxInmuSM
  {
    public Decimal DeudLita { get; set; }

    public Decimal ImpoLita { get; set; }

    public Decimal CrafLita { get; set; }

    public Decimal ExenLita { get; set; }

    public Decimal DescLita { get; set; }

    public Decimal GastLita { get; set; }

    public Decimal TotaLita { get; set; }

    public DateTime FeveLita { get; set; }

    public int BimeLiqu { get; set; }

    public int PeriBole { get; set; }

    public int NumeBole { get; set; }

    public int TipoVenc { get; set; }

    public string TipoBole { get; set; }

    public Decimal TotaBole { get; set; }
  }
}
