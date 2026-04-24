// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class DebitoAutomatico : Entity
{
  public DebitoAutomatico() => this.Cbu = "";

  public short CodiOfic { get; set; }

  public string CodiOficStr
  {
    get
    {
      string codiOficStr = "";
      switch (this.CodiOfic)
      {
        case 1:
          codiOficStr = "INMUEBLE";
          break;
        case 2:
          codiOficStr = "COMERCIO";
          break;
        case 3:
          codiOficStr = "DEUDORES VARIOS";
          break;
        case 4:
          codiOficStr = "CEMENTERIO";
          break;
        case 5:
          codiOficStr = "TRANSITO";
          break;
      }
      return codiOficStr;
    }
  }

  public string CuenCtct { get; set; }

  public int CodiBanc { get; set; }

  public short NumeSucu { get; set; }

  public short TipoCuenta { get; set; }

  public long NumeCuenta { get; set; }

  public string Cbu { get; set; }

  public DateTime FechaSolic { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "CodiOfic", (object) this.CodiOfic);
      id.Add((object) "CuenCtct", (object) this.CuenCtct);
      return id;
    }
  }
}
