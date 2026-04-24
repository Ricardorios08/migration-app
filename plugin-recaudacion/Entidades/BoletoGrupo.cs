// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.BoletoGrupo
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class BoletoGrupo : Entity
{
  public DateTime FeenAcpa { get; set; }

  public int NumeAcpa { get; set; }

  public string ActuAcpa { get; set; } = string.Empty;

  public int CodiEnre { get; set; }

  public string DetaEnre { get; set; } = string.Empty;

  public DateTime FealAcpa { get; set; }

  public DateTime FepaAcpa { get; set; }

  public int TocoAcpa { get; set; }

  public Decimal ImpoAcpa { get; set; }

  public string NoarAcpa { get; set; } = string.Empty;

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "FeenAcpa", (object) this.FeenAcpa);
      id.Add((object) "NumeAcpa", (object) this.NumeAcpa);
      return id;
    }
  }
}
