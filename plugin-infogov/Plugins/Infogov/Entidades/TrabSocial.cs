// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.TrabSocial
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class TrabSocial : Entity
{
  public TrabSocial() => this.CodiUsua = this.DetaPers = "";

  public string CodiUsua { get; set; }

  public long CucuPers { get; set; }

  public string DetaPers { get; set; }

  public new DateTime BajaFeho { get; set; }

  public string BajaFehoStr
  {
    get => this.BajaFeho == DateTime.MinValue ? "" : this.BajaFeho.ToString("dd-MM-yyyy");
  }

  public override ID id => new ID("CodiUsua", (object) this.CodiUsua);
}
