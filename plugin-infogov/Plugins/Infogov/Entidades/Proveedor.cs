// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Proveedor
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Proveedor : Entity
{
  public Proveedor()
  {
    this.DetaProv = this.FantProv = this.CubaProv = this.ExpeProv = this.FactProv = this.MailPers = "";
    this.persona = new Persona();
    this.FedcProv = DateTime.MinValue;
    this.FehcProv = DateTime.MinValue;
    this.FeviProv = DateTime.MinValue;
  }

  public DateTime FenaPers { get; set; }

  public bool SexoPers { get; set; }

  public long CucuPers { get; set; }

  public string DetaProv { get; set; }

  public string FantProv { get; set; }

  public short CodiBapr { get; set; }

  public short CccaProv { get; set; }

  public string CubaProv { get; set; }

  public long PainProv { get; set; }

  public short LocaProv { get; set; }

  public DateTime FedcProv { get; set; }

  public DateTime FehcProv { get; set; }

  public Decimal TotcProv { get; set; }

  public string FactProv { get; set; }

  public DateTime FeviProv { get; set; }

  public string ExpeProv { get; set; }

  public bool CedeProv { get; set; }

  public string MailPers { get; set; }

  public int NudoPers { get; set; }

  public int IdUspro { get; set; }

  public Persona persona { get; set; }

  public override ID id => new ID("CucuPers", (object) this.CucuPers);
}
