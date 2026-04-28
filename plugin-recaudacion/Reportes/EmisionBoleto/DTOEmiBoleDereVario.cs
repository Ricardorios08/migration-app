// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto.DTOEmiBoleDereVario
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto;

public class DTOEmiBoleDereVario : IBoleto
{
  public TipoEB Tipo { get; set; }

  public Persona PersonaSeleccionada { get; set; }

  public List<IReporteBoleto> ServiciosSeleccionados { get; set; } = new List<IReporteBoleto>();

  public IDatosBoleto DatosBoleto { get; set; }

  public string Titulo { get; set; } = string.Empty;

  public DateTime FechBole { get; set; }

  public Decimal TotaBole { get; set; }

  public string Detalle { get; set; } = string.Empty;

  public string ExpeBole { get; set; } = string.Empty;

  public string PeriNumeBole { get; set; } = string.Empty;
}
