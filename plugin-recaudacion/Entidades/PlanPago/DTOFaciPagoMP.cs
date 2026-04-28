// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.PlanPago.DTOFaciPagoMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.PlanPago;

public class DTOFaciPagoMP : IPlanPago
{
  public CtaCte Cuenta { get; set; } = new CtaCte();

  public long CodiFapa { get; set; }

  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; } = string.Empty;

  public long CucuPers { get; set; }

  public short CodiTifa { get; set; }

  public DateTime FealFapa { get; set; }

  public short CacuFapa { get; set; }

  public short CaapFapa { get; set; }

  public Decimal TainFapa { get; set; }

  public Decimal DereTifa { get; set; }

  public Decimal CapiFapa { get; set; }

  public Decimal DecaFapa { get; set; }

  public Decimal RecaFapa { get; set; }

  public Decimal DereFapa { get; set; }

  public Decimal ApreFapa { get; set; }

  public Decimal InteFapa { get; set; }

  public Decimal TotaFapa { get; set; }

  public short CodiTifp { get; set; }

  public string DetaTifp { get; set; } = string.Empty;

  public long CufiFapa { get; set; }

  public string FirmFapa { get; set; } = string.Empty;

  public List<CCMaipu> DeudaSeleccionada { get; set; } = new List<CCMaipu>();

  public List<DetaFapaMP> DetallesFacilidad { get; set; } = new List<DetaFapaMP>();

  public string ExtrTifa { get; set; } = string.Empty;

  public bool ImprimirPPCompleto { get; set; }

  public string Impresora { get; set; } = string.Empty;
}
