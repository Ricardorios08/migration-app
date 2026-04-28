// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.EnteRecaudador
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

internal class EnteRecaudador : Entity
{
  public int CodiEnre { get; set; }

  public string DetaEnre { get; set; } = string.Empty;

  public int NumeAcpa { get; set; }

  public override ID id => new ID("CodiEnre", (object) this.CodiEnre);
}
