// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.InteresRecargo
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class InteresRecargo : Entity
{
  public int CodiInte { get; set; }

  public Decimal PorcInte { get; set; }

  public DateTime FechInte { get; set; }

  public string FrecInte { get; set; }

  public override ID id => new ID("CodiInte", (object) this.CodiInte);
}
