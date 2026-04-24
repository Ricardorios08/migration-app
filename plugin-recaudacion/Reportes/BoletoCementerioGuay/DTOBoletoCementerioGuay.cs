// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioGuay.DTOBoletoCementerioGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioGuay;

public class DTOBoletoCementerioGuay
{
  public DTOBoletoCementerioGuay()
  {
    this.cupaux = new List<CuponCementerioAux>();
    this.cupones = new List<CuponCementerio>();
    this.subrubros = new List<DTOSubRubrosCeme>();
  }

  public int PeriLiqu { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public string CuenCtct { get; set; }

  public int CodiCome { get; set; }

  public string RazoCome { get; set; }

  public int TipoVenc { get; set; }

  public int OrdeLico { get; set; }

  public DateTime FeacLico { get; set; }

  public int BimeLiqu { get; set; }

  public Decimal TotaLico { get; set; }

  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string CodiUsua { get; set; }

  public string CucuPers { get; set; }

  public string DetaPers { get; set; }

  public string CallLico { get; set; }

  public int NucaLico { get; set; }

  public string BarrLico { get; set; }

  public string ManzLico { get; set; }

  public string CasaLico { get; set; }

  public string UbicLico { get; set; }

  public string LocaLico { get; set; }

  public string CopoLico { get; set; }

  public string CallLicoReal { get; set; }

  public string NucaLicoReal { get; set; }

  public string BarrLicoReal { get; set; }

  public string ManzLicoReal { get; set; }

  public string CasaLicoReal { get; set; }

  public string UbicLicoReal { get; set; }

  public string LocaLicoReal { get; set; }

  public string CopoLicoReal { get; set; }

  public string Vinculo { get; set; }

  public Decimal DeudLico { get; set; }

  public string DeudLicoStr
  {
    get
    {
      string deudLicoStr;
      if (!(this.DeudLico > 0M))
        deudLicoStr = "";
      else
        deudLicoStr = $"Según nuestros registros esta cuenta registra deuda.{Environment.NewLine}Existen convenientes planes de pago.{Environment.NewLine}Evite cobro por vía judicial!!!";
      return deudLicoStr;
    }
  }

  public string NomeLico { get; set; }

  public string Barrita { get; set; }

  public string pagomisctas { get; set; }

  public string redlink { get; set; }

  public List<CuponCementerio> cupones { get; set; }

  public List<CuponCementerioAux> cupaux { get; set; }

  public List<DTOSubRubrosCeme> subrubros { get; set; }

  public string DireccionQr { get; set; }

  public string Email { get; set; }

  public Image EpagoQr { get; set; }

  public byte EpagoQr11 { get; set; }

  public string EpagosQrVinc { get; set; }

  public string MsjError { get; set; }

  public string MensajeError { get; set; }
}
