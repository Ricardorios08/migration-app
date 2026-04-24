// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto.DTOEmiBole
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto;

public class DTOEmiBole : IBoleto
{
  public TipoEB Tipo { get; set; }

  public CtaCte DatosCuenta { get; set; } = new CtaCte();

  public bool EsPagoACuenta { get; set; } = false;

  public Decimal ImpoPagoCuenta { get; set; } = 0M;

  public List<IReporteBoleto> DeudaSeleccionada { get; set; } = new List<IReporteBoleto>();

  public IDatosBoleto DatosBoleto { get; set; }

  public string Titulo { get; set; } = string.Empty;

  public string NewNumeBole { get; set; } = string.Empty;
}
