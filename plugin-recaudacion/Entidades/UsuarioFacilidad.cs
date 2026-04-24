// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.UsuarioFacilidad
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class UsuarioFacilidad : Entity
{
  public string CodiUsua { get; set; }

  public int CodiTifa { get; set; }

  public string DetaTifa { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "CodiUsua", (object) this.CodiUsua);
      id.Add((object) "CodiTifa", (object) this.CodiTifa);
      return id;
    }
  }
}
