// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.CuentaContable
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class CuentaContable : Entity
{
  public CuentaContable()
  {
    this.CodiCuco = this.DetaCuco = this.CodiTicu = this.CodiReca = this.DebeCuco = this.HabeCuco = this.SaldCuco = this.DescCuco = "";
  }

  public int PeriInfo { get; set; }

  public string CodiCuco { get; set; }

  public string DetaCuco { get; set; }

  public bool ImpuCuco { get; set; }

  public string CodiTicu { get; set; }

  public string CodiReca { get; set; }

  public string DebeCuco { get; set; }

  public string HabeCuco { get; set; }

  public string SaldCuco { get; set; }

  public string DescCuco { get; set; }

  public string DetaCucoHabe { get; set; }

  public string DetaCucoDebe { get; set; }

  public string CucoLike { get; set; } = string.Empty;

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
