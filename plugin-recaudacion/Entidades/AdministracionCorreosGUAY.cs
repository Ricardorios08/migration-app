// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.AdministracionCorreosGUAY
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class AdministracionCorreosGUAY : Entity
{
  public AdministracionCorreosGUAY() => this.DetaAdwe = "";

  public int CodiAdwe { get; set; }

  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; }

  public string DetaAdwe { get; set; }

  public string EmailAdwe { get; set; }

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
        case 6:
          codiOficStr = "PUBLICIDAD";
          break;
        case 7:
          codiOficStr = "ANTENA";
          break;
      }
      return codiOficStr;
    }
  }

  public override ID id => new ID("CodiAdwe", (object) this.CodiAdwe);
}
