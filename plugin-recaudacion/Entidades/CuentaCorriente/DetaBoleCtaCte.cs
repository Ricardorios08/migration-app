// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.DetaBoleCtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class DetaBoleCtaCte
{
  public short Codigo { get; set; }

  public string Detalle { get; set; } = string.Empty;

  public Decimal Importe { get; set; }

  public Decimal Descuento { get; set; }

  public Decimal Exencion { get; set; }

  public Decimal Total { get; set; }
}
