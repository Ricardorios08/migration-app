// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.DetaPagoCtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class DetaPagoCtaCte
{
  public short PeriCtct { get; set; }

  public int BimeCtct { get; set; }

  public string CodiConc { get; set; } = string.Empty;

  public string DetaConc { get; set; } = string.Empty;

  public Decimal CapiDepa { get; set; }

  public Decimal DecaDepa { get; set; }

  public Decimal RecaDepa { get; set; }

  public Decimal DereDepa { get; set; }

  public Decimal InteDepa { get; set; }

  public Decimal ApreDepa { get; set; }

  public Decimal TotaDepa { get; set; }
}
