// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios.BoletoEmitidoDerechoVarioMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;

public class BoletoEmitidoDerechoVarioMP
{
  public DateTime FealBole { get; set; }

  public string FealBoleStr
  {
    get => this.FealBole == DateTime.MinValue ? "---" : this.FealBole.ToShortDateString();
  }

  public short PeriBole { get; set; }

  public int NumeBole { get; set; }

  public long CodiSede { get; set; }

  public string DetaSede { get; set; } = string.Empty;

  public Decimal CantDede { get; set; }

  public Decimal PrunDede { get; set; }

  public Decimal DescDede { get; set; }

  public Decimal TotaDede { get; set; }
}
