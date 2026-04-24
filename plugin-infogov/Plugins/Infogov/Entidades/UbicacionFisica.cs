// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.UbicacionFisica
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class UbicacionFisica : Entity
{
  public UbicacionFisica()
  {
    this.DetaUbfi = this.DetaPers = this.TeleUbfi = this.CeluUbfi = this.DireUbfi = "";
  }

  public int IdUbfi { get; set; }

  public string DetaUbfi { get; set; }

  public long CucuPers { get; set; }

  public string DetaPers { get; set; }

  public int CodiTiUbfi { get; set; }

  public string TeleUbfi { get; set; }

  public string CeluUbfi { get; set; }

  public string DireUbfi { get; set; }

  public override ID id => new ID("IdUbfi", (object) this.IdUbfi);
}
