// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Organismo
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Organismo : Entity
{
  public Organismo() => this.DetaOrga = this.JeraOrga = this.CredOrgaDeta = "";

  public int PeriInfo { get; set; }

  public int CodiOrga { get; set; }

  public string DetaOrga { get; set; }

  public string JeraOrga { get; set; }

  public int CredOrga { get; set; }

  public string CredOrgaDeta { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "PeriInfo", (object) this.PeriInfo);
      id.Add((object) "CodiOrga", (object) this.CodiOrga);
      return id;
    }
  }
}
