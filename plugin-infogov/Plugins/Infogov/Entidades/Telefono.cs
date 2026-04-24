// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Telefono
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Telefono : Entity
{
  public Telefono() => this.NumeTele = this.DetaTele = "";

  public long CucuPers { get; set; }

  public int CodiTele { get; set; }

  public string NumeTele { get; set; }

  public InfoGov.Plugins.Infogov.Entidades.TipoTelefono TipoTele { get; set; }

  public string DetaTele { get; set; }

  public string TipoTelefono
  {
    get => this.TipoTele.ToString();
    set => this.TipoTele = (InfoGov.Plugins.Infogov.Entidades.TipoTelefono) Enum.Parse(typeof (InfoGov.Plugins.Infogov.Entidades.TipoTelefono), value.ToString(), true);
  }

  public override ID id
  {
    get
    {
      ID id = new ID("CucuPers", (object) this.CucuPers);
      id.Add((object) "CodiTele", (object) this.CodiTele);
      return id;
    }
  }
}
