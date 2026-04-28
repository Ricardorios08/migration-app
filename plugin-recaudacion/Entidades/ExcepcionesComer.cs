// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.ExcepcionesComer
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class ExcepcionesComer : Entity
{
  public ExcepcionesComer() => this.DetaExce = this.ExexCome = this.MoexCome = "";

  public int CodiCome { get; set; }

  public short CodiExce { get; set; }

  public string DetaExce { get; set; }

  public DateTime FfexCome { get; set; }

  public string ExexCome { get; set; }

  public string MoexCome { get; set; }

  public string FfexComeStr
  {
    get => this.FfexCome > DateTime.MinValue ? this.FfexCome.ToShortDateString() : string.Empty;
  }

  public override ID id => new ID("CodiCome", (object) this.CodiCome);
}
