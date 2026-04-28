// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM.DTOBoletoCemenSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM;

public class DTOBoletoCemenSM
{
  public DTOBoletoCemenSM()
  {
    this.cupones = new List<DTOBoletoCemenSM.CuponCemenSM>();
    this.cupoaux = new List<DTOBoletoCemenSM.CuponAuxCemenSM>();
    this.difuntos = new List<DTOBoletoCemenSM.DTODifuntos>();
  }

  public int PeriLiqu { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public int BimeLiqu { get; set; }

  public DateTime FeveLice { get; set; }

  public string CuenCtct { get; set; }

  public int CodiDifu { get; set; }

  public int TipoVenc { get; set; }

  public int OrdeLice { get; set; }

  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string CucuPers { get; set; }

  public string DetaPers { get; set; }

  public Decimal DeudLice { get; set; }

  public string DomiLicePostal { get; set; }

  public string CallLice { get; set; }

  public string NucaLice { get; set; }

  public string BarrLice { get; set; }

  public string ManzLice { get; set; }

  public string CasaLice { get; set; }

  public string DptoLice { get; set; }

  public string MonoblockLice { get; set; }

  public string UbicLice { get; set; }

  public string LocaLice { get; set; }

  public string CopoLice { get; set; }

  public string BanelcoLink { get; set; }

  public Decimal Deuda { get; set; }

  public Decimal Recargo { get; set; }

  public string DeudaStr => this.Deuda > 0M ? "SU CUENTA POSEE DEUDA." : "";

  public string DetaCeme { get; set; }

  public string DetaTise { get; set; }

  public string DetaClas { get; set; }

  public string NumeDifu { get; set; }

  public string SectDifu { get; set; }

  public string CuadDifu { get; set; }

  public string FilaDifu { get; set; }

  public DateTime FereDifu { get; set; }

  public DateTime FemaDifu { get; set; }

  public List<DTOBoletoCemenSM.CuponCemenSM> cupones { get; set; }

  public List<DTOBoletoCemenSM.CuponAuxCemenSM> cupoaux { get; set; }

  public List<DTOBoletoCemenSM.DTODifuntos> difuntos { get; set; }

  public string CuitInvalidoStr
  {
    get
    {
      string cuitInvalidoStr;
      if (!this.CucuPers.StartsWith("99"))
        cuitInvalidoStr = "";
      else
        cuitInvalidoStr = $"ATENCIÓN!: Su cuenta posee un CUIL FICTICIO, por{Environment.NewLine}favor acérquese a la Secretaría de Hacienda - Dirección{Environment.NewLine}de Recursos Municipales para regularizar su situación.";
      return cuitInvalidoStr;
    }
  }

  public class CuponCemenSM
  {
    public string CuenCtct { get; set; }

    public int NumeBole { get; set; }

    public int PeriBole { get; set; }

    public int BimeLiqu { get; set; }

    public DateTime FeveLice { get; set; }

    public string FeveLiceStr => "Vencimiento " + this.FeveLice.ToString("dd/MM/yyyy");

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

    public Decimal GastLice { get; set; }

    public string TipoBole { get; set; }

    public short CodiTili { get; set; }

    public string PeriodoStr
    {
      get
      {
        string str = "";
        switch (this.CodiTili)
        {
          case 1:
            str = "Mantenimiento ";
            break;
          case 2:
            str = "Renovación ";
            break;
        }
        return str + this.PeriBole.ToString();
      }
    }
  }

  public class CuponAuxCemenSM
  {
    public Decimal DeudLice { get; set; }

    public Decimal ImpoLice { get; set; }

    public Decimal CrafLice { get; set; }

    public Decimal ExenLice { get; set; }

    public Decimal DescLice { get; set; }

    public Decimal GastLice { get; set; }

    public Decimal TotaLice { get; set; }

    public DateTime FeveLice { get; set; }

    public int BimeLiqu { get; set; }

    public int PeriBole { get; set; }

    public int NumeBole { get; set; }

    public int TipoVenc { get; set; }

    public string TipoBole { get; set; }

    public Decimal TotaBole { get; set; }

    public short CodiTili { get; set; }
  }

  public class DTODifuntos
  {
    public string DetaDifu { get; set; }

    public DateTime FefaDifu { get; set; }
  }
}
