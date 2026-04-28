// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.Concepto
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class Concepto : Entity
{
  public Concepto() => this.CodiConc = "";

  public int PeriInfo { get; set; }

  public string CodiConc { get; set; }

  public bool VigeConc { get; set; }

  public string DetaConc { get; set; }

  public bool AforConc { get; set; }

  public bool DevcConc { get; set; }

  public bool DevsConc { get; set; }

  public string IngrConc { get; set; }

  public string ActiConc { get; set; }

  public string PatrConc { get; set; }

  public short TiafConc { get; set; }

  public short TipaConc { get; set; }

  public short AdicConc { get; set; }

  public string ConcViej { get; set; }

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
