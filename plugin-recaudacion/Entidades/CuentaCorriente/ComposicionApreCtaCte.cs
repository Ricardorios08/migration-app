// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.ComposicionApreCtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class ComposicionApreCtaCte
{
  public string NumeCausa { get; set; } = string.Empty;

  public string Objeto { get; set; } = string.Empty;

  public string CodImp { get; set; } = string.Empty;

  public string DetaImp { get; set; } = string.Empty;

  public string Periodo { get; set; } = string.Empty;

  public string Cuota { get; set; } = string.Empty;

  public Decimal Capital { get; set; }

  public Decimal Interes { get; set; }

  public string FecProc { get; set; } = string.Empty;

  public string Operador { get; set; } = string.Empty;

  public bool EsFacilidad { get; set; }
}
