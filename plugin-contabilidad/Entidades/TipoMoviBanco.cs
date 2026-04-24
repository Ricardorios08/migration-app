// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Entidades.TipoMoviBanco
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Entidades;

public class TipoMoviBanco : Entity
{
  public short Coditimb { get; set; }

  public string DetaTimb { get; set; }

  public short DecreTimb { get; set; }

  public string CodiCuco { get; set; }

  public short PermCucoTimb { get; set; }

  public short HabiFechRecaTimb { get; set; }

  public override ID id => new ID("Coditimb", (object) this.Coditimb);
}
