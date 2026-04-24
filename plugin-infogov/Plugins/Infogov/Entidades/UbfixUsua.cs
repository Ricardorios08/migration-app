// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.UbfixUsua
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class UbfixUsua : Entity
{
  public UbfixUsua() => this.DetaUbfi = this.CodiUsua = "";

  public int IdUbfi { get; set; }

  public string DetaUbfi { get; set; }

  public string CodiUsua { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "IdUbfi", (object) this.IdUbfi);
      id.Add((object) "CodiUsua", (object) this.CodiUsua);
      return id;
    }
  }
}
