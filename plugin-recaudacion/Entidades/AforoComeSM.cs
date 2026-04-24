// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.AforoComeSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class AforoComeSM : Entity
{
  public int PeriOrde { get; set; }

  public int CodiSeac { get; set; }

  public string DetaSeac { get; set; } = string.Empty;

  public string CodiConc { get; set; } = string.Empty;

  public Decimal ValoSeac { get; set; }

  public string UnmeSeac { get; set; } = string.Empty;

  public bool ImprSeac { get; set; }

  public bool VariSeac { get; set; }

  public int TiafConc { get; set; }

  public override ID id
  {
    get => new ID("PeriOrde", (object) this.PeriOrde, "CodiSeac", (object) this.CodiSeac);
  }
}
