// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.CobranzaPorConcepto.DTOCobranzaPorConcepto
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.CobranzaPorConcepto;

public class DTOCobranzaPorConcepto
{
  public DateTime FechaEnvio { get; set; }

  public short NroGrupo { get; set; }

  public int Periodo { get; set; }

  public int NroBoleto { get; set; }

  public Decimal Capital { get; set; }

  public Decimal Recargo { get; set; }

  public Decimal DescRec { get; set; }

  public Decimal Interes { get; set; }

  public Decimal Total { get; set; }
}
