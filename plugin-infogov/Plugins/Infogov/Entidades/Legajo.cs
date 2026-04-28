// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Legajo
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Legajo : Entity
{
  public Legajo() => this.DetaPers = "";

  public int NumeLega { get; set; }

  public string DetaPers { get; set; }

  public long CucuPers { get; set; }

  public bool InsaLega { get; set; }

  public bool CebcLega { get; set; }

  public bool CeafLega { get; set; }

  public bool DiscLega { get; set; }

  public DateTime FeinLega { get; set; }

  public short AnreLega { get; set; }

  public short AnrnLega { get; set; }

  public string OficLega { get; set; }

  public string NutaLega { get; set; }

  public string CodiClas { get; set; }

  public string CodiClsu { get; set; }

  public int CodiFunc { get; set; }

  public short CodiRepa { get; set; }

  public short CodiArea { get; set; }

  public short CodiConv { get; set; }

  public string ResoLega { get; set; }

  public short CodiRepr { get; set; }

  public short CodiEstu { get; set; }

  public short EstaEstu { get; set; }

  public string TituLega { get; set; }

  public string ExtiLega { get; set; }

  public string FuncLega { get; set; }

  public string FuqcLega { get; set; }

  public bool ConcLega { get; set; }

  public bool SemuLega { get; set; }

  public short CodiLupa { get; set; }

  public short CodiAgru { get; set; }

  public short CodiCarg { get; set; }

  public Decimal HsasLega { get; set; }

  public Decimal HsdiLega { get; set; }

  public short CodiHora { get; set; }

  public override ID id => new ID("NumeLega", (object) this.NumeLega);
}
