// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios.DerechoVarioPadreMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;

public class DerechoVarioPadreMP : Entity
{
  public short PeriDvpa { get; set; }

  public long CodiDvpa { get; set; }

  public string DetaDvpa { get; set; } = string.Empty;

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "PeriDvpa", (object) this.PeriDvpa);
      id.Add((object) "CodiDvpa", (object) this.CodiDvpa);
      return id;
    }
  }
}
