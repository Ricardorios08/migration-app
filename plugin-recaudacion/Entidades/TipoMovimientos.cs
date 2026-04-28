// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.TipoMovimientos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class TipoMovimientos : Entity
{
  public TipoMovimientos() => this.DetaTimo = "";

  public int CodiTimo { get; set; }

  public string DetaTimo { get; set; }

  public string AbreTimo { get; set; }

  public string DecrTimo { get; set; }

  public string FijoTimo { get; set; }

  public override ID id => new ID("CodiTimo", (object) this.CodiTimo);
}
