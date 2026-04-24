// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DTOServInmu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class DTOServInmu
{
  public int OBJETO { get; set; }

  public string CONSERVA { get; set; } = string.Empty;

  public string LIMPIEZA { get; set; } = string.Empty;

  public string PAVIMENTO { get; set; } = string.Empty;

  public string PRESTA { get; set; } = string.Empty;

  public string ESQUINA { get; set; } = string.Empty;

  public string VIVIENDA { get; set; } = string.Empty;

  public DateTime FEC_INICIO { get; set; }
}
