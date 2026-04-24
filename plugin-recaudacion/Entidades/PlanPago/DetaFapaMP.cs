// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.PlanPago.DetaFapaMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.PlanPago;

public class DetaFapaMP
{
  public long CodiFapa { get; set; }

  public short CuotDefa { get; set; }

  public string EstaDefa { get; set; }

  public DateTime FeveDefa { get; set; }

  public DateTime FepaDefa { get; set; }

  public Decimal CapiDefa { get; set; }

  public Decimal DecaDefa { get; set; }

  public Decimal RecaDefa { get; set; }

  public Decimal DereDefa { get; set; }

  public Decimal ApreDefa { get; set; }

  public Decimal InteDefa { get; set; }

  public Decimal TotaDefa { get; set; }

  public short PeriBole { get; set; }

  public int NumeBole { get; set; }
}
