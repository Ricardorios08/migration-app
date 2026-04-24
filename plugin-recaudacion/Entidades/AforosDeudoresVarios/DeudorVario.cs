// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios.DeudorVario
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Plugins.Infogov.Entidades;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios;

public class DeudorVario : Entity
{
  public short CodiOfic { get; set; } = 3;

  public string CodiDeva { get; set; } = string.Empty;

  public long CucuPers { get; set; }

  public string DetaPers { get; set; } = string.Empty;

  public Persona Persona { get; set; } = new Persona();

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "CodiDeva", (object) this.CodiDeva);
      return id;
    }
  }
}
