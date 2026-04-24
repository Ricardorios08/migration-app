// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.BoleApreCtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class BoleApreCtaCte
{
  public short PeriBole { get; set; }

  public int NumeBole { get; set; }

  public string Boleto { get; set; } = string.Empty;

  public int NumeApre { get; set; }

  public DateTime FealBoap { get; set; }

  public string EstaBoap { get; set; } = string.Empty;

  public Decimal CoadBoap { get; set; }

  public Decimal ApleBoap { get; set; }

  public Decimal DefiBoap { get; set; }

  public Decimal ReseBoap { get; set; }

  public Decimal HoreBoap { get; set; }

  public Decimal HoofBoap { get; set; }

  public Decimal MoreBoap { get; set; }

  public Decimal MoofBoap { get; set; }
}
