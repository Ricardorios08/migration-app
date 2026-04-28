// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios.AforoDVMG
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.Herencia;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios;

public class AforoDVMG : IAforoDeudorVario
{
  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; } = string.Empty;

  public DateTime FechaVencimiento { get; set; }

  public short Periodo { get; set; }

  public short Bimestre { get; set; }

  public string Expte { get; set; } = string.Empty;

  public string Detalle { get; set; } = string.Empty;

  public List<ServicioAforoDVMGSeleccionado> ServiciosSeleccionados { get; set; } = new List<ServicioAforoDVMGSeleccionado>();
}
