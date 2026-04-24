// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.DTODetallesCuentaReporteMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Catastro.Entidades;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Herencia;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class DTODetallesCuentaReporteMP : IReporte
{
  public List<Relacion> Relaciones { get; set; } = new List<Relacion>();

  public List<DomInmuebleMP> Domicilios { get; set; } = new List<DomInmuebleMP>();

  public List<Obse> Observaciones { get; set; } = new List<Obse>();
}
