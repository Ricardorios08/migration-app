// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.Beneficiario
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

internal class Beneficiario : Entity
{
  public string NumeLega { get; set; }

  public string CucuLega { get; set; }

  public string NoapLega { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "CucuLega", (object) this.CucuLega);
      return id;
    }
  }
}
