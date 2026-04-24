// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Tasas.DTOTasasRepo
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Tasas;

public class DTOTasasRepo
{
  public DTOTasasRepo()
  {
    this.cupaux = new List<CuponAux>();
    this.cupones = new List<CuponTasa>();
  }

  public int PeriLiqu { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public string CuenCtct { get; set; }

  public int CodiInmu { get; set; }

  public int TipoVenc { get; set; }

  public int OrdeLita { get; set; }

  public DateTime FeacLita { get; set; }

  public int BimeLiqu { get; set; }

  public Decimal TotaLita { get; set; }

  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string CodiUsua { get; set; }

  public string CucuPers { get; set; }

  public string DetaPers { get; set; }

  public int CodiRyB { get; set; }

  public string DetaRyB { get; set; }

  public int AvalInmu { get; set; }

  public string CallLita { get; set; }

  public int NucaLita { get; set; }

  public string BarrLita { get; set; }

  public string ManzLita { get; set; }

  public string CasaLita { get; set; }

  public string UbicLita { get; set; }

  public string LocaLita { get; set; }

  public string CopoLita { get; set; }

  public string CallLitaReal { get; set; }

  public int NucaLitaReal { get; set; }

  public string BarrLitaReal { get; set; }

  public string ManzLitaReal { get; set; }

  public string CasaLitaReal { get; set; }

  public string UbicLitaReal { get; set; }

  public string LocaLitaReal { get; set; }

  public string CopoLitaReal { get; set; }

  public string Vinculo { get; set; }

  public string Fiduciario { get; set; }

  public int DptoLita { get; set; }

  public int DistLita { get; set; }

  public int SeccLita { get; set; }

  public int MansLita { get; set; }

  public int ParcLita { get; set; }

  public int SubpLita { get; set; }

  public string DigiLita { get; set; }

  public Decimal DeudLita { get; set; }

  public string NomeLita { get; set; }

  public string Barrita { get; set; }

  public string pagomisctas { get; set; }

  public string redlink { get; set; }

  public List<CuponTasa> cupones { get; set; }

  public List<CuponAux> cupaux { get; set; }

  public string DireccionQr { get; set; }

  public string Email { get; set; }

  public Image EpagoQr { get; set; }

  public byte EpagoQr11 { get; set; }

  public string EpagosQrVinc { get; set; }

  public Decimal Deuda { get; set; }

  public Decimal Recargo { get; set; }

  public Decimal Apremi { get; set; }

  public Decimal TotalFaci { get; set; }

  public string MsjError { get; set; }

  public string DeudaStr
  {
    get
    {
      string deudaStr;
      if (!(this.Deuda > 0M))
        deudaStr = "";
      else
        deudaStr = $"Según nuestros registros, esta cuenta registra deuda{Environment.NewLine}Existen convenientes planes de pago.{Environment.NewLine}Evite cobro por vía judicial!!!";
      return deudaStr;
    }
  }

  public string MensajeError { get; set; }
}
