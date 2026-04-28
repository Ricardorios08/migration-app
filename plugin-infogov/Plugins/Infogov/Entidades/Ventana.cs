// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Ventana
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Ventana : Entity
{
  public Ventana()
  {
    this.WnamMenu = this.DetaMenu = "";
    this.permisosVentana = new List<PermisoVentana>();
    this.PermAcce = false;
  }

  public int CodiMenu { get; set; }

  public int CodiSist { get; set; }

  public int CodiRol { get; set; }

  public string WnamMenu { get; set; }

  public string DetaMenu { get; set; }

  public bool PermAcce { get; set; }

  public int CmsuMenu { get; set; }

  public List<PermisoVentana> permisosVentana { get; set; }

  public override ID id => new ID();
}
