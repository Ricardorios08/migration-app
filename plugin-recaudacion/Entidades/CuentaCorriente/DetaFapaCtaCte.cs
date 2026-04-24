// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.DetaFapaCtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class DetaFapaCtaCte
{
  public int CodiFapa { get; set; }

  public short CuotDefa { get; set; }

  public string EstaDefa { get; set; } = string.Empty;

  public DateTime FeveDefa { get; set; }

  public DateTime FepaDefa { get; set; }

  public string FepaDefaStr
  {
    get => this.FepaDefa == DateTime.MinValue ? "- - -" : this.FepaDefa.ToString("dd/MM/yyyy");
  }

  public Decimal CapiDefa { get; set; }

  public Decimal DecaDefa { get; set; }

  public Decimal RecaDefa { get; set; }

  public Decimal DereDefa { get; set; }

  public Decimal ApreDefa { get; set; }

  public Decimal InteDefa { get; set; }

  public Decimal RemoDefa { get; set; }

  public Decimal TotaDefa { get; set; }
}
