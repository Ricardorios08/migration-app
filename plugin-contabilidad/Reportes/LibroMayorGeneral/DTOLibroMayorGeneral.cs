// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral.DTOLibroMayorGeneral
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral;

public class DTOLibroMayorGeneral
{
  public DTOLibroMayorGeneral() => this.detalles = new List<DTOLibroMayorGeneralDeta>();

  public string CodiCuco { get; set; }

  public string DetaCuco { get; set; }

  public Decimal Deudor { get; set; }

  public Decimal Acreedor { get; set; }

  public List<DTOLibroMayorGeneralDeta> detalles { get; set; }
}
