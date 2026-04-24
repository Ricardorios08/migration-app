// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.PagosWeb.DTO_PagosVarios
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.PagosWeb;

public class DTO_PagosVarios
{
  public int CodiSede { get; set; }

  public string DetaSede { get; set; }

  public List<DTO_PagosWeb_Detalle> detalle { get; set; }

  public DTO_PagosVarios() => this.detalle = new List<DTO_PagosWeb_Detalle>();
}
