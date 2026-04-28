// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DetaCuentaCome
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class DetaCuentaCome
{
  public short Oficina { get; set; }

  public string Cuenta { get; set; } = string.Empty;

  public string Periodo { get; set; } = string.Empty;

  public string Boleto { get; set; } = string.Empty;

  public DateTime FechaEmision { get; set; }

  public string FechaEmisionStr
  {
    get
    {
      return this.FechaEmision > DateTime.MinValue ? this.FechaEmision.ToShortDateString() : string.Empty;
    }
  }

  public DateTime FechaVencimiento { get; set; }

  public string FechaVencimientoStr
  {
    get
    {
      return this.FechaVencimiento > DateTime.MinValue ? this.FechaVencimiento.ToShortDateString() : string.Empty;
    }
  }

  public string Concepto { get; set; } = string.Empty;

  public int Facilidad { get; set; }

  public int Apremio { get; set; }

  public string ExpeComp { get; set; } = string.Empty;

  public string TipoMovi { get; set; } = string.Empty;

  public Decimal Debito { get; set; }

  public Decimal Recargo { get; set; }

  public Decimal Saldo { get; set; }
}
