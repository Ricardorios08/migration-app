// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Entidades.ManualCuentaContable
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Entidades;

public class ManualCuentaContable : Entity
{
  public int PeriInfo { get; set; }

  public string CodiCuco { get; set; }

  public string DetaCuco { get; set; }

  public string CodiTicu { get; set; }

  public string DetaTicu { get; set; }

  public string DebeCuco { get; set; }

  public string HabeCuco { get; set; }

  public string SaldCuco { get; set; }

  public string DescCuco { get; set; }

  public override ID id
  {
    get
    {
      ID id = new ID();
      id.Add((object) "PeriInfo", (object) this.PeriInfo);
      id.Add((object) "CodiCuco", (object) this.CodiCuco);
      return id;
    }
  }
}
