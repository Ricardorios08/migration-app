// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCome
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class CuentaCome : Entity
{
  public int CodiCome { get; set; }

  public long CucuPers { get; set; }

  public string DetaPers { get; set; } = string.Empty;

  public string RazoCome { get; set; } = string.Empty;

  public string DireCome { get; set; } = string.Empty;

  public override ID id => new ID("CodiCome", (object) this.CodiCome);
}
