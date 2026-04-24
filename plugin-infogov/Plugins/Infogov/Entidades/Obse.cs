// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Obse
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Obse : Entity
{
  public int CodiObse { get; set; }

  public int CodiOfic { get; set; }

  public short NumeCoob { get; set; }

  public string ObseCoob { get; set; } = string.Empty;

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "CodiObse", (object) this.CodiObse);
      id.Add((object) "NumeCoob", (object) this.NumeCoob);
      return id;
    }
  }
}
