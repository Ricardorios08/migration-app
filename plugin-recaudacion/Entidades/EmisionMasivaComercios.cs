// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.EmisionMasivaComercios
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class EmisionMasivaComercios : Entity
{
  public int PeriLiqu { get; set; }

  public int CodiOfic { get; set; }

  public int CodiTili { get; set; }

  public int NumeLiqu { get; set; }

  public string DetaTili { get; set; }

  public string ActuLiqu { get; set; }

  public string LeyeTili { get; set; }

  public DateTime FealLiqu { get; set; }

  public int PendEpQr { get; set; }

  public int CantOrdeLico { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "PeriLiqu", (object) this.PeriLiqu);
      id.Add((object) "CodiOfic", (object) this.CodiOfic);
      id.Add((object) "CodiTili", (object) this.CodiTili);
      id.Add((object) "NumeLiqu", (object) this.NumeLiqu);
      return id;
    }
  }
}
