// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Persona
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Persona : Entity
{
  public Persona()
  {
    this.DetaPers = this.MailPers = "";
    this.Telefonos = new List<Telefono>();
    this.DecaPers = this.PisoPers = this.LotePers = this.DptoPers = this.DebaPers = this.ManzPers = this.CasaPers = this.DeloPers = this.DedePers = this.DediPers = this.CopoPers = this.DeprPers = "";
    this.MarePers = this.CarePers = this.UbrePers = this.CoprPers = this.DetaTido = "";
    this.TelePers = this.CeluPers = this.FaxsPers = this.DecrPers = this.DebrPers = this.DelrPers = this.CuitPers = this.NaciPers = "";
    this.DetaTido = this.DetaProv = "";
  }

  public long CucuPers { get; set; }

  public string DetaPers { get; set; }

  public string MailPers { get; set; }

  public bool JuriPers { get; set; }

  public bool FallPers { get; set; } = false;

  public bool SexoPers { get; set; }

  public short CodiTido { get; set; }

  public int NudoPers { get; set; }

  public DateTime FenaPers { get; set; }

  public short CodiPofi { get; set; }

  public List<Telefono> Telefonos { get; set; }

  public string DetaTido { get; set; }

  public int CodiCall { get; set; }

  public string DecaPers { get; set; }

  public int NumePers { get; set; }

  public string PisoPers { get; set; }

  public string LotePers { get; set; }

  public string DptoPers { get; set; }

  public int CodiBarr { get; set; }

  public string DebaPers { get; set; }

  public string ManzPers { get; set; }

  public string CasaPers { get; set; }

  public int CodiLoca { get; set; }

  public string DeloPers { get; set; }

  public int CodiDepa { get; set; }

  public string DedePers { get; set; }

  public int CodiDist { get; set; }

  public string DediPers { get; set; }

  public string CopoPers { get; set; }

  public int CodiProv { get; set; }

  public string DetaProv { get; set; }

  public string DeprPers { get; set; }

  public bool CcokPers { get; set; }

  public string TelePers { get; set; }

  public string CeluPers { get; set; }

  public string FaxsPers { get; set; }

  public short CodiEsci { get; set; }

  public int CocrPers { get; set; }

  public string DecrPers { get; set; }

  public int NurePers { get; set; }

  public short CobrPers { get; set; }

  public string DebrPers { get; set; }

  public string MarePers { get; set; }

  public string CarePers { get; set; }

  public string UbrePers { get; set; }

  public short ColrPers { get; set; }

  public string DelrPers { get; set; }

  public string CoprPers { get; set; }

  public string CuitPers { get; set; }

  public string NaciPers { get; set; }

  public DateTime FefaPers { get; set; }

  public short CodiCond { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "CucuPers", (object) this.CucuPers);
      return id;
    }
  }
}
