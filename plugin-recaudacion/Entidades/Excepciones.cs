// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.Excepciones
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class Excepciones : Entity
{
  public Excepciones() => this.ExexInmu = this.MoexInmu = this.DetaPers = "";

  public int CodiInmu { get; set; }

  public string DetaPers { get; set; }

  public short CodiExce { get; set; }

  public string DetaExce { get; set; }

  public DateTime FfexInmu { get; set; }

  public string ExexInmu { get; set; }

  public string MoexInmu { get; set; }

  public string FfexInmuStr
  {
    get => this.FfexInmu > DateTime.MinValue ? this.FfexInmu.ToShortDateString() : string.Empty;
  }

  public override ID id => new ID("CodiInmu", (object) this.CodiInmu);
}
