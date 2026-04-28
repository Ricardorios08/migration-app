// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral.DTOLibroMayorGeneralDeta
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral;

public class DTOLibroMayorGeneralDeta
{
  public int PeriInfo { get; set; }

  public DateTime FechAsie { get; set; }

  public int CodiAsie { get; set; }

  public int CodiTias { get; set; }

  public string DetaAsie { get; set; }

  public Decimal DebeMoas { get; set; }

  public Decimal HabeMoas { get; set; }

  public Decimal Deudor { get; set; }

  public Decimal Acreedor { get; set; }
}
