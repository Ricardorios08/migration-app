// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.FaciPagoCtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class FaciPagoCtaCte : Entity
{
  public int CodiFapa { get; set; }

  public short CodiTifa { get; set; }

  public string DetaTifa { get; set; } = string.Empty;

  public DateTime FealFapa { get; set; }

  public string EstaFapa { get; set; } = string.Empty;

  public Decimal CapiFapa { get; set; }

  public Decimal DecaFapa { get; set; }

  public Decimal RecaFapa { get; set; }

  public Decimal DereFapa { get; set; }

  public Decimal ApreFapa { get; set; }

  public Decimal InteFapa { get; set; }

  public Decimal TotaFapa { get; set; }

  public List<DetaFapaCtaCte> Detalles { get; set; } = new List<DetaFapaCtaCte>();

  public override ID id => new ID("CodiFapa", (object) this.CodiFapa);
}
