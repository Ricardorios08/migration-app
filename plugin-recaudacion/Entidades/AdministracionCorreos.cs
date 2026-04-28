// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.AdministracionCorreos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class AdministracionCorreos : Entity
{
  public AdministracionCorreos() => this.Email = "";

  public int IdCorreo { get; set; }

  public short CodiOfic { get; set; }

  public string Cuenta { get; set; }

  public string Email { get; set; }

  public string CodiOficStr
  {
    get
    {
      string codiOficStr = "";
      switch (this.CodiOfic)
      {
        case 1:
          codiOficStr = "Inmueble";
          break;
        case 2:
          codiOficStr = "Comercio";
          break;
        case 4:
          codiOficStr = "Cementerio";
          break;
      }
      return codiOficStr;
    }
  }

  public override ID id => new ID("IdCorreo", (object) this.IdCorreo);
}
