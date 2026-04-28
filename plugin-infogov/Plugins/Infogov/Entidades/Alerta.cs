// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Alerta
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Alerta : Entity
{
  public int Id { get; set; }

  public short CodiOfic { get; set; }

  public string DetaOfic { get; set; } = string.Empty;

  public string CuenCtct { get; set; } = string.Empty;

  public string DetaAler { get; set; } = string.Empty;

  public string AltaFehoStr
  {
    get
    {
      return this.AltaFeho == DateTime.MinValue ? string.Empty : this.AltaFeho.ToString("dd/MM/yyyy HH:mm:ss");
    }
  }

  public string ModiFehoStr
  {
    get
    {
      return this.ModiFeho == DateTime.MinValue ? string.Empty : this.ModiFeho.ToString("dd/MM/yyyy HH:mm:ss");
    }
  }

  public string BajaFehoStr
  {
    get
    {
      return this.BajaFeho == DateTime.MinValue ? string.Empty : this.BajaFeho.ToString("dd/MM/yyyy HH:mm:ss");
    }
  }

  public override ID id => new ID("Id", (object) this.Id);
}
