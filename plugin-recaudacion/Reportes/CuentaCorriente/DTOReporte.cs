// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.CuentaCorriente.DTOReporte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Herencia;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.CuentaCorriente;

public class DTOReporte
{
  public TipoReporte TipoReporte { get; set; }

  public List<IReporte> Movimientos { get; set; } = new List<IReporte>();

  public IReporte DetallesCuenta { get; set; }

  public CtaCte DatosCuenta { get; set; } = new CtaCte();
}
