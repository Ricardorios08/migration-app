// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DescuentosConcepto
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class DescuentosConcepto : Entity
{
  public DescuentosConcepto() => this.CodiConc = "";

  public int PeriInfo { get; set; }

  public string CodiConc { get; set; }

  public string DetaConc { get; set; }

  public Decimal DereDeco { get; set; }

  public Decimal DecaDeco { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "PeriInfo", (object) this.PeriInfo);
      id.Add((object) "CodiConc", (object) this.CodiConc);
      return id;
    }
  }
}
