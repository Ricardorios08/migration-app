// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.ServicioVario
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class ServicioVario : Entity
{
  public int PeriOrde { get; set; }

  public int CodiSede { get; set; }

  public int PeriInfo { get; set; }

  public string DetaSede { get; set; }

  public string CodiConc { get; set; }

  public Decimal ImpoSede { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "PeriOrde", (object) this.PeriOrde);
      id.Add((object) "CodiSede", (object) this.CodiSede);
      return id;
    }
  }
}
