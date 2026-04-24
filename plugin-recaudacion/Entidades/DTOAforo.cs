// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DTOAforo
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class DTOAforo
{
  public Decimal Cantidad { get; set; }

  public int Codigo { get; set; }

  public string Detalle { get; set; } = string.Empty;

  public Decimal Valor { get; set; }

  public string UnidadMedida { get; set; } = string.Empty;

  public Decimal Total { get; set; }

  public int Periodo { get; set; }

  public string Concepto { get; set; } = string.Empty;

  public int TipoAforo { get; set; }
}
