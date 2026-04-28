// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.OrgaxUsua
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class OrgaxUsua : Entity
{
  public OrgaxUsua() => this.CodiOrga = this.DetaOrga = this.CodiUsua = "";

  public int PeriInfo { get; set; }

  public string CodiOrga { get; set; }

  public string DetaOrga { get; set; }

  public string CodiUsua { get; set; }

  public bool PermJera { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "PeriInfo", (object) this.PeriInfo);
      id.Add((object) "CodiOrga", (object) this.CodiOrga);
      id.Add((object) "CodiUsua", (object) this.CodiUsua);
      return id;
    }
  }
}
