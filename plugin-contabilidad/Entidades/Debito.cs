// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Entidades.Debito
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Entidades;

public class Debito : Entity
{
  public Debito()
  {
    this.Exorimpu = this.ExpeImpu = this.CodiCuco = this.NumeFact = this.CodiOrga = this.DetaDebi = "";
    this.DetaCuco = this.DetaProv = "";
  }

  public int PeriInfo { get; set; }

  public short NumeDebi { get; set; }

  public DateTime FechDebi { get; set; }

  public string Exorimpu { get; set; }

  public string ExpeImpu { get; set; }

  public string CodiCuco { get; set; }

  public string DetaCuco { get; set; }

  public long CucuPers { get; set; }

  public string DetaProv { get; set; }

  public Decimal ImpoDebi { get; set; }

  public string NumeFact { get; set; }

  public string CodiOrga { get; set; }

  public string DetaDebi { get; set; }

  public DateTime FeanDebi { get; set; }

  public bool AjrpDebi { get; set; }

  public int PaesDebi { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "PeriInfo", (object) this.PeriInfo);
      id.Add((object) "NumeDebi", (object) this.NumeDebi);
      return id;
    }
  }
}
