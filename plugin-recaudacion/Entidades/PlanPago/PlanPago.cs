// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.PlanPago;

public class PlanPago : Entity
{
  public long CodiFapa { get; set; }

  public long CucuPers { get; set; }

  public string DetaPers { get; set; } = string.Empty;

  public short CacuFapa { get; set; }

  public short CodiOfic { get; set; }

  public string DetaOfic { get; set; } = string.Empty;

  public string CuenCtct { get; set; } = string.Empty;

  public string EstaFapa { get; set; } = string.Empty;

  public override ID id => new ID("CodiFapa", (object) this.CodiFapa);
}
