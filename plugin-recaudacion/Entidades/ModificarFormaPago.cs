// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.ModificarFormaPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class ModificarFormaPago : Entity
{
  public short PeriFopa { get; set; }

  public int NumeFopa { get; set; }

  public short MoviFopa { get; set; }

  public short CodiTipa { get; set; }

  public Decimal ImpoFopa { get; set; }

  public DateTime FeenAcpa { get; set; }

  public short PeriBole { get; set; }

  public int NumeBole { get; set; }

  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; }

  public Decimal TotaPago { get; set; }

  public string DetaEnre { get; set; }

  public int NumeAcpa { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID("PeriFopa", (object) this.PeriFopa);
      id.Add((object) "NumeFopa", (object) this.NumeFopa);
      id.Add((object) "MoviFopa", (object) this.MoviFopa);
      return id;
    }
  }
}
