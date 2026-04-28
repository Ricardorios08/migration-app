// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.ParametrosGenerales
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class ParametrosGenerales : Entity
{
  public int CodiPage { get; set; }

  public int PeriOrde { get; set; }

  public int CodiInte { get; set; }

  public Decimal DerePage { get; set; }

  public Decimal DecaPage { get; set; }

  public string FosePage { get; set; } = string.Empty;

  public string DicaPage { get; set; } = string.Empty;

  public string DiprPage { get; set; } = string.Empty;

  public Decimal UntrPage { get; set; }

  public string LepaPage { get; set; } = string.Empty;

  public override ID id => new ID("CodiPage", (object) this.CodiPage);
}
