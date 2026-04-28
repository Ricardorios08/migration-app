// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.PagosWeb.DTO_PagosWeb_Detalle
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.PagosWeb;

public class DTO_PagosWeb_Detalle
{
  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public string CucuPers { get; set; }

  public string DetaPers { get; set; }

  public string EstaBole { get; set; }

  public DateTime FechBole { get; set; }

  public string TipoBole { get; set; }

  public Decimal TotaBole { get; set; }
}
