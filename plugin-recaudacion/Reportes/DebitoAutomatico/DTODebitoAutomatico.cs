// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.DebitoAutomatico.DTODebitoAutomatico
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.DebitoAutomatico;

public class DTODebitoAutomatico
{
  public string CuenCtct { get; set; }

  public string NumeBole { get; set; }

  public int CodiBanc { get; set; }

  public string NumeSucu { get; set; }

  public short TipoCuenta { get; set; }

  public string NumeCuenta { get; set; }

  public string Cbu { get; set; }

  public Decimal TotaBole { get; set; }

  public int Cobis { get; set; }

  public DateTime FeveBole { get; set; }
}
