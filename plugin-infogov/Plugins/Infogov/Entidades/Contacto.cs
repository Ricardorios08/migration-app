// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Contacto
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Contacto : Entity
{
  public int IdCont { get; set; }

  public long CucuPers { get; set; }

  public string DetaPers { get; set; } = string.Empty;

  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; } = string.Empty;

  public short CodiTico { get; set; }

  public string DetaTico { get; set; } = string.Empty;

  public string DetaCont { get; set; } = string.Empty;

  public string DetaOfic { get; set; } = string.Empty;

  public string ModiFehoStr
  {
    get => this.ModiFeho > DateTime.MinValue ? this.ModiFeho.ToShortDateString() : string.Empty;
  }

  public string Email { get; set; } = string.Empty;

  public override ID id => new ID("IdCont", (object) this.IdCont);
}
