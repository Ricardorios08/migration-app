// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios.DerechoVarioMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Herencia;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;

public class DerechoVarioMP : IEntidadDerechoVario
{
  public Persona PersonaSeleccionada { get; set; }

  public string Detalle { get; set; } = string.Empty;

  public DateTime FechBole { get; set; }

  public string ExpeBole { get; set; } = string.Empty;

  public short PeriBole { get; set; }

  public int NumeBole { get; set; }

  public List<SevicioDerechoVarioSeleccionadoMP> SeviciosSeleccionados { get; set; } = new List<SevicioDerechoVarioSeleccionadoMP>();
}
