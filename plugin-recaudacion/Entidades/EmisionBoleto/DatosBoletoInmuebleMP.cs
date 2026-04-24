// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.EmisionBoleto.DatosBoletoInmuebleMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.EmisionBoleto;

public class DatosBoletoInmuebleMP
{
  public int CodiInmu { get; set; }

  public string NomeInmu { get; set; } = string.Empty;

  public string PadrInmu { get; set; } = string.Empty;

  public Decimal MeedInmu { get; set; }

  public Decimal MecuInmu { get; set; }

  public Decimal MebaInmu { get; set; }

  public string DetaClin { get; set; } = string.Empty;

  public string DetaTiin { get; set; } = string.Empty;

  public string DetaCate { get; set; } = string.Empty;
}
