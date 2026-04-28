// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.PermisoVentana
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class PermisoVentana : Entity
{
  public PermisoVentana() => this.WnamMenu = this.CodiPerm = this.DetaPerm = "";

  public int CodiRol { get; set; }

  public string WnamMenu { get; set; }

  public string CodiPerm { get; set; }

  public bool PermPerm { get; set; }

  public string DetaPerm { get; set; }

  public override string ToString() => this.DetaPerm;

  public override ID id => new ID();
}
