// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Domicilio
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Domicilio : Entity
{
  public Domicilio()
  {
    this.Calle = "";
    this.NumeCalle = "";
    this.Telefono = "";
    this.Localidad = "";
    this.Ubicacion = "";
    this.Observacion = "";
    this.Provincia = "";
    this.Manzana = "";
    this.Barrio = "";
    this.Monoblock = "";
    this.Dpto = "";
    this.Planta = "";
    this.Piso = "";
    this.Casa = "";
    this.Nrolocal = "";
    this.Tipo = "";
    this.Ecalle = new InfoGov.Plugins.Infogov.Entidades.Calle();
    this.Eloca = new InfoGov.Plugins.Infogov.Entidades.Localidad();
    this.Ebarrio = new InfoGov.Plugins.Infogov.Entidades.Barrio();
    this.Etiqueta = "";
    this.Nomenclatura = this.DireccionQr = this.CodPostalStr = "";
  }

  public int CodiCome { get; set; }

  public short CodiOfic { get; set; }

  public int CodiCalle { get; set; }

  public string Calle { get; set; }

  public string NumeCalle { get; set; }

  public string Telefono { get; set; }

  public int CodPostal { get; set; }

  public string CodPostalStr { get; set; }

  public int CodiLoca { get; set; }

  public string Localidad { get; set; }

  public string Ubicacion { get; set; }

  public string Observacion { get; set; }

  public string Provincia { get; set; }

  public string Manzana { get; set; }

  public int CodiBarrio { get; set; }

  public string Barrio { get; set; }

  public string Monoblock { get; set; }

  public string Dpto { get; set; }

  public string Planta { get; set; }

  public string Piso { get; set; }

  public string Casa { get; set; }

  public string Nrolocal { get; set; }

  public string Tipo { get; set; }

  public InfoGov.Plugins.Infogov.Entidades.Calle Ecalle { get; set; }

  public InfoGov.Plugins.Infogov.Entidades.Localidad Eloca { get; set; }

  public InfoGov.Plugins.Infogov.Entidades.Barrio Ebarrio { get; set; }

  public string Etiqueta { get; set; }

  public string Nomenclatura { get; set; }

  public string DireccionQr { get; set; }

  public override ID id => new ID("CodiCome", (object) this.CodiCome);
}
