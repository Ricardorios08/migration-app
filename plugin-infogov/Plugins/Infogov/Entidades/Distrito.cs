// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Distrito
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Distrito : Entity
{
  internal Distrito() => this.DetaDist = this.CodiPost = "";

  public int CodiDist { get; set; }

  public string DetaDist { get; set; }

  public short CodiDepa { get; set; }

  public string CodiPost { get; set; }

  public short CP { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "CodiDist", (object) this.CodiDist);
      id.Add((object) "CodiDepa", (object) this.CodiDepa);
      return id;
    }
  }
}
