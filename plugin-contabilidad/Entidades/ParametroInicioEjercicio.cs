// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Entidades.ParametroInicioEjercicio
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Entidades;

public class ParametroInicioEjercicio : Entity
{
  public int PeriInfo { get; set; }

  public string CaerPaco { get; set; }

  public string CaerDeta { get; set; }

  public string ProvPaco { get; set; }

  public string ProvDeta { get; set; }

  public string DeexPaco { get; set; }

  public string DeexDeta { get; set; }

  public string ChsrPaco { get; set; }

  public string ChsrDeta { get; set; }

  public string CatePaco { get; set; }

  public string CateDeta { get; set; }

  public string CajaPaco { get; set; }

  public string CajaDeta { get; set; }

  public string CarePaco { get; set; }

  public string CareDeta { get; set; }

  public string PatrPaco { get; set; }

  public string PatrDeta { get; set; }

  public string ReejPaco { get; set; }

  public string PaexPaco { get; set; }

  public Decimal MiinPaco { get; set; }

  public string SacePaco { get; set; }

  public string DefaPaco { get; set; }

  public string CodiUsua { get; set; }

  public override ID id => new ID("PeriInfo", (object) this.PeriInfo);
}
