// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.ServiciosDerechosVarios
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class ServiciosDerechosVarios : Entity
{
  public ServiciosDerechosVarios() => this.DetaServiciosDerechosVarios = "";

  public int CodiServiciosDerechosVarios { get; set; }

  public string DetaServiciosDerechosVarios { get; set; }

  public override ID id
  {
    get => new ID("CodiServiciosDerechosVarios", (object) this.CodiServiciosDerechosVarios);
  }
}
