// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.AsignacionOrdenLiqu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class AsignacionOrdenLiqu : Entity
{
  public AsignacionOrdenLiqu() => this.DetaPers = "";

  public int IdAsig { get; set; }

  public int PeriLiqu { get; set; }

  public short NumeLiqu { get; set; }

  public int OrdeDesde { get; set; }

  public int OrdeHasta { get; set; }

  public long CucuAgen { get; set; }

  public string DetaPers { get; set; }

  public override ID id => new ID("IdAsig", (object) this.IdAsig);
}
