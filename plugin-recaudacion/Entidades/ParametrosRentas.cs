// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.ParametrosRentas
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class ParametrosRentas : Entity
{
  public ParametrosRentas()
  {
    this.CorePare = this.CoinPare = this.CoadPare = this.CoapPare = this.CoimPare = "";
  }

  public int PeriInfo { get; set; }

  public string CorePare { get; set; }

  public string DetaReca { get; set; }

  public string CoinPare { get; set; }

  public string DetaInte { get; set; }

  public string CoadPare { get; set; }

  public string DetaAdmi { get; set; }

  public string CoapPare { get; set; }

  public string DetaApre { get; set; }

  public string CoimPare { get; set; }

  public string DetaCoim { get; set; }

  public override ID id => new ID("PeriInfo", (object) this.PeriInfo);
}
