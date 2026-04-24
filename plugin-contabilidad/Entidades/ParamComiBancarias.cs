// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Entidades.ParamComiBancarias
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Entidades;

public class ParamComiBancarias : Entity
{
  public int MesPaco { get; set; }

  public string ExorImpu { get; set; }

  public string CodiPart { get; set; }

  public string CodiOrga { get; set; }

  public string DetaPart { get; set; }

  public string DetaOrga { get; set; }

  public string Mes { get; set; }

  public override ID id => new ID("CodiTias", (object) this.MesPaco);
}
