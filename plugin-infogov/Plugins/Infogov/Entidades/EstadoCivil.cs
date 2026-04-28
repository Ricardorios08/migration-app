// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.EstadoCivil
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class EstadoCivil : Entity
{
  internal EstadoCivil() => this.DetaEsci = "";

  public int CodiEsci { get; set; }

  public string DetaEsci { get; set; }

  public override ID id => new ID("CodiEsci", (object) this.CodiEsci);
}
