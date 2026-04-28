// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.ApreCtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class ApreCtaCte
{
  public int NumeApre { get; set; }

  public int AutoApre { get; set; }

  public short CodiReca { get; set; }

  public string DetaReca { get; set; } = string.Empty;

  public short CodiOfju { get; set; }

  public string DetaOfju { get; set; } = string.Empty;

  public DateTime FealApre { get; set; }

  public string EstaApre { get; set; } = string.Empty;

  public Decimal CapiApre { get; set; }

  public Decimal RecaApre { get; set; }

  public Decimal TotaApre { get; set; }

  public List<InstApreCtaCte> Instancias { get; set; } = new List<InstApreCtaCte>();

  public List<BoleApreCtaCte> Boletos { get; set; } = new List<BoleApreCtaCte>();

  public List<ComposicionApreCtaCte> Composicion { get; set; } = new List<ComposicionApreCtaCte>();
}
