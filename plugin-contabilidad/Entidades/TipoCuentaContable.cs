// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Entidades.TipoCuentaContable
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Entidades;

public class TipoCuentaContable : Entity
{
  public TipoCuentaContable() => this.DetaTicu = "";

  public string CodiTicu { get; set; }

  public string DetaTicu { get; set; }

  public bool ImpuTicu { get; set; }

  public string CodiUsua { get; set; }

  public override ID id => new ID("CodiTicu", (object) this.CodiTicu);
}
