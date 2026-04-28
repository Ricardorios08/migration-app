// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoPublicidadGuay.DTOBoletoPublicidadGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoPublicidadGuay;

public class DTOBoletoPublicidadGuay
{
  public DTOBoletoPublicidadGuay()
  {
    this.cupaux = new List<CuponPublicidadAux>();
    this.cupones = new List<CuponPublicidad>();
  }

  public int PeriLiqu { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public string CuenCtct { get; set; }

  public int CodiCome { get; set; }

  public string RazoCome { get; set; }

  public int TipoVenc { get; set; }

  public int OrdeLipu { get; set; }

  public DateTime FeacLipu { get; set; }

  public int BimeLiqu { get; set; }

  public Decimal TotaLipu { get; set; }

  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string CodiUsua { get; set; }

  public string CucuPers { get; set; }

  public string DetaPers { get; set; }

  public string CallLipu { get; set; }

  public int NucaLipu { get; set; }

  public string BarrLipu { get; set; }

  public string ManzLipu { get; set; }

  public string CasaLipu { get; set; }

  public string UbicLipu { get; set; }

  public string LocaLipu { get; set; }

  public string CopoLipu { get; set; }

  public string CallLipuReal { get; set; }

  public string NucaLipuReal { get; set; }

  public string BarrLipuReal { get; set; }

  public string ManzLipuReal { get; set; }

  public string CasaLipuReal { get; set; }

  public string UbicLipuReal { get; set; }

  public string LocaLipuReal { get; set; }

  public string CopoLipuReal { get; set; }

  public string Vinculo { get; set; }

  public Decimal DeudLipu { get; set; }

  public string DeudLipuStr
  {
    get
    {
      string deudLipuStr;
      if (!(this.DeudLipu > 0M))
        deudLipuStr = "";
      else
        deudLipuStr = $"Según nuestros registros esta cuenta registra deuda.{Environment.NewLine}Existen convenientes planes de pago.{Environment.NewLine}Evite cobro por vía judicial!!!";
      return deudLipuStr;
    }
  }

  public string NomeLipu { get; set; }

  public string Barrita { get; set; }

  public string pagomisctas { get; set; }

  public string redlink { get; set; }

  public List<CuponPublicidad> cupones { get; set; }

  public List<CuponPublicidadAux> cupaux { get; set; }

  public string DireccionQr { get; set; }

  public string Email { get; set; }

  public Image EpagoQr { get; set; }

  public byte EpagoQr11 { get; set; }

  public string EpagosQrVinc { get; set; }

  public string MsjError { get; set; }

  public string MensajeError { get; set; }
}
