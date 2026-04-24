// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Calle
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Calle : Entity
{
  internal Calle() => this.DetaCall = this.DetaBarr = this.DetaLoca = "";

  public int CodiCall { get; set; }

  public string DetaCall { get; set; }

  public int CodiBarr { get; set; }

  public int CodiLoca { get; set; }

  public int CodiDepa { get; set; }

  public string DetaBarr { get; set; }

  public string DetaLoca { get; set; }

  public override ID id => new ID("CodiCall", (object) this.CodiCall);
}
