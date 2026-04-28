// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.CCMaipu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Herencia;
using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class CCMaipu : IReporte, IReporteBoleto
{
  public CCMaipu() => this.Detalles = new List<DetaCCMaipu>();

  public short CodiOfic { get; set; }

  public string DetaOfic { get; set; } = string.Empty;

  public string CuenCtct { get; set; } = string.Empty;

  public string Detalle { get; set; } = string.Empty;

  public Decimal Saldo { get; set; }

  public Decimal Recargo { get; set; }

  public Decimal Total { get; set; }

  public List<DetaCCMaipu> Detalles { get; set; }

  public TipoResumenMP Tipo { get; set; }

  public EstadoSeleccion EstadoSel { get; set; } = EstadoSeleccion.Ninguno;

  public bool Seleccionado { get; set; }

  public int DetallesSeleccionados { get; set; }
}
