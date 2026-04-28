// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.MultasTransitoGuay.DTOMultasTransitoGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.MultasTransitoGuay;

public class DTOMultasTransitoGuay
{
  public string Acta { get; set; }

  public short PeriBole { get; set; }

  public int NumeBole { get; set; }

  public string TipoInfraccion { get; set; }

  public Decimal Importe { get; set; }

  public DateTime FepaPago { get; set; }
}
