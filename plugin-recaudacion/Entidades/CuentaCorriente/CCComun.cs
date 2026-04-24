// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.CCComun
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class CCComun : Entity
{
  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; } = string.Empty;

  public long CucuPers { get; set; }

  public string DetaPers { get; set; } = string.Empty;

  public override ID id
  {
    get => new ID("CodiOfic", (object) this.CodiOfic, "CuenCtct", (object) this.CuenCtct);
  }
}
