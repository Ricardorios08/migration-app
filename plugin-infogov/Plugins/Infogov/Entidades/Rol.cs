// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Rol
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Rol : Entity
{
  public Rol()
  {
    this.DetaRol = "";
    this.permisos_rol = new List<PermisoVentana>();
    this.accesos_rol = new List<Ventana>();
  }

  public Rol(int cod, string deta)
  {
    this.CodiRol = cod;
    this.DetaRol = deta;
    this.permisos_rol = new List<PermisoVentana>();
    this.accesos_rol = new List<Ventana>();
  }

  public int CodiRol { get; set; }

  public string DetaRol { get; set; }

  public List<PermisoVentana> permisos_rol { get; set; }

  public List<Ventana> accesos_rol { get; set; }

  public override ID id => new ID("CodiRol", (object) this.CodiRol);
}
