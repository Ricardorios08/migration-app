// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Sistema
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Sistema : Entity
{
  public Sistema()
  {
    this.DetaSist = "";
    this.ventanas = new List<Ventana>();
  }

  public int CodiSist { get; set; }

  public string DetaSist { get; set; }

  public List<Ventana> ventanas { get; set; }

  public override ID id => new ID("CodiSist", (object) this.CodiSist);
}
