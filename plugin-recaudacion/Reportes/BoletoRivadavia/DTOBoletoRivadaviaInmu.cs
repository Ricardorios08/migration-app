// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoRivadavia.DTOBoletoRivadaviaInmu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoRivadavia;

public class DTOBoletoRivadaviaInmu
{
  public DTOBoletoRivadaviaInmu()
  {
    this.servicios = new List<DTOBoletoRivadaviaInmu.Servicio>();
    this.cupones = new List<DTOBoletoRivadaviaInmu.Cupon>();
  }

  public int PeriLiqu { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public string CuenCtct { get; set; }

  public int CodiInmu { get; set; }

  public int TipoVenc { get; set; }

  public int OrdeLita { get; set; }

  public List<DTOBoletoRivadaviaInmu.Servicio> servicios { get; set; }

  public List<DTOBoletoRivadaviaInmu.Cupon> cupones { get; set; }

  public class Servicio
  {
    public string detaserv { get; set; }

    public Decimal imposerv { get; set; }
  }

  public class Cupon
  {
    public Decimal TotaBole { get; set; }

    public DateTime FeveLita { get; set; }

    public string CodigoBarraCupon { get; set; }
  }
}
