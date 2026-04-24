// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Entidades.MoviBanco
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Entidades;

public class MoviBanco : Entity
{
  public int CodiBanc { get; set; }

  public short CodiTimb { get; set; }

  public int NumeMoba { get; set; }

  public DateTime FechMoba { get; set; }

  public Decimal DebeMoba { get; set; }

  public Decimal HabeMoba { get; set; }

  public string DetaMoba { get; set; }

  public Decimal ComiMoba { get; set; }

  public Decimal IvaMoba { get; set; }

  public string DetaBanc { get; set; }

  public string DetaTimb { get; set; }

  public override ID id => new ID("CodiBanc", (object) this.CodiBanc);
}
