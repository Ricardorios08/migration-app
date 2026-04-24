// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.Excepcion
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class Excepcion : Entity
{
  public Excepcion() => this.DetaExce = "";

  public int CodiExce { get; set; }

  public string DetaExce { get; set; }

  public Decimal PorcExce { get; set; }

  public string TipoExce { get; set; }

  public override ID id => new ID("CodiExce", (object) this.CodiExce);
}
