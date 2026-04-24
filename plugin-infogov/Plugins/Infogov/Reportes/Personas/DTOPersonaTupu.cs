// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Reportes.Personas.DTOPersonaTupu
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Infogov.Reportes.Personas;

public class DTOPersonaTupu
{
  public DTOPersonaTupu() => this.retenciones = new List<DTORetencionesPersonaTupu>();

  public long CucuPers { get; set; }

  public string DetaPers { get; set; } = string.Empty;

  public string JuriPers { get; set; } = string.Empty;

  public string SexoPers { get; set; } = string.Empty;

  public string TelePers { get; set; } = string.Empty;

  public string CeluPers { get; set; } = string.Empty;

  public string MailPers { get; set; } = string.Empty;

  public int CodiTido { get; set; }

  public string DetaTido { get; set; } = string.Empty;

  public int NudoPers { get; set; }

  public DateTime FenaPers { get; set; }

  public string FenaPersStr
  {
    get => this.FenaPers == DateTime.MinValue ? "---" : this.FenaPers.ToShortDateString();
  }

  public int CodiEsci { get; set; }

  public string DetaEsci { get; set; } = string.Empty;

  public int CodiPofi { get; set; }

  public string DetaPofi { get; set; } = string.Empty;

  public int CocrPers { get; set; }

  public string DecrPers { get; set; } = string.Empty;

  public int NurePers { get; set; }

  public int CobrPers { get; set; }

  public string DebrPers { get; set; } = string.Empty;

  public string MarePers { get; set; } = string.Empty;

  public string CarePers { get; set; } = string.Empty;

  public string UbrePers { get; set; } = string.Empty;

  public int ColrPers { get; set; }

  public string DelrPers { get; set; } = string.Empty;

  public string CoprPers { get; set; } = string.Empty;

  public string ObsePers { get; set; } = string.Empty;

  public bool EsProveedor { get; set; }

  public bool EsLocador { get; set; }

  public List<DTORetencionesPersonaTupu> retenciones { get; set; }
}
