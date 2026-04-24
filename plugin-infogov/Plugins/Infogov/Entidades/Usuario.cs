// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Usuario
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Usuario : Entity
{
  public Usuario()
  {
    this.CodiUsua = this.DetaUsua = this.ClavUsua = this.ObseUsua = this.CargUsua = this.CoenUsua = this.CosaUsua = this.SemaUsua = this.UsmaUsua = this.ComaUsua = this.CodiOrga = "";
    this.FeveUsua = DateTime.MinValue;
    this.roles = new List<Rol>();
  }

  public string CodiUsua { get; set; }

  public long CucuPers { get; set; }

  public string DetaUsua { get; set; }

  public string ClavUsua { get; set; }

  public DateTime FeveUsua { get; set; }

  public bool InhaUsua { get; set; }

  public int CodiEnre { get; set; }

  public string ObseUsua { get; set; }

  public string CodiOrga { get; set; }

  public int CodiUnfi { get; set; }

  public bool AcreUsua { get; set; }

  public string CargUsua { get; set; }

  public string CoenUsua { get; set; }

  public string CosaUsua { get; set; }

  public string SemaUsua { get; set; }

  public int PumaUsua { get; set; }

  public string UsmaUsua { get; set; }

  public string ComaUsua { get; set; }

  public bool UsslUsua { get; set; }

  public bool UtlsUsua { get; set; }

  public List<Rol> roles { get; set; }

  public override ID id => new ID("CodiUsua", (object) this.CodiUsua);
}
