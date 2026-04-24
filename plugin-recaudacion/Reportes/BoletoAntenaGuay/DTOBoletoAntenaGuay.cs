// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoAntenaGuay.DTOBoletoAntenaGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoAntenaGuay;

public class DTOBoletoAntenaGuay
{
  public DTOBoletoAntenaGuay()
  {
    this.cupaux = new List<CuponAntenaAux>();
    this.cupones = new List<CuponAntena>();
  }

  public int PeriLiqu { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public string CuenCtct { get; set; }

  public int CodiCome { get; set; }

  public string RazoCome { get; set; }

  public int TipoVenc { get; set; }

  public int OrdeLian { get; set; }

  public DateTime FeacLian { get; set; }

  public int BimeLiqu { get; set; }

  public Decimal TotaLian { get; set; }

  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string CodiUsua { get; set; }

  public string CucuPers { get; set; }

  public string DetaPers { get; set; }

  public string CallLian { get; set; }

  public int NucaLian { get; set; }

  public string BarrLian { get; set; }

  public string ManzLian { get; set; }

  public string CasaLian { get; set; }

  public string UbicLian { get; set; }

  public string LocaLian { get; set; }

  public string CopoLian { get; set; }

  public string CallLianReal { get; set; }

  public string NucaLianReal { get; set; }

  public string BarrLianReal { get; set; }

  public string ManzLianReal { get; set; }

  public string CasaLianReal { get; set; }

  public string UbicLianReal { get; set; }

  public string LocaLianReal { get; set; }

  public string CopoLianReal { get; set; }

  public string Vinculo { get; set; }

  public Decimal DeudLian { get; set; }

  public string DeudLianStr
  {
    get
    {
      string deudLianStr;
      if (!(this.DeudLian > 0M))
        deudLianStr = "";
      else
        deudLianStr = $"Según nuestros registros esta cuenta registra deuda.{Environment.NewLine}Existen convenientes planes de pago.{Environment.NewLine}Evite cobro por vía judicial!!!";
      return deudLianStr;
    }
  }

  public string NomeLian { get; set; }

  public string Barrita { get; set; }

  public string pagomisctas { get; set; }

  public string redlink { get; set; }

  public List<CuponAntena> cupones { get; set; }

  public List<CuponAntenaAux> cupaux { get; set; }

  public string DireccionQr { get; set; }

  public string Email { get; set; }

  public Image EpagoQr { get; set; }

  public byte EpagoQr11 { get; set; }

  public string EpagosQrVinc { get; set; }

  public string MsjError { get; set; }

  public string MensajeError { get; set; }
}
