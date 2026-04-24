// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpServiciosDerechosVarios
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpServiciosDerechosVarios : Expert, ABMExpert
{
  public ExpServiciosDerechosVarios()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("...");
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readServiciosDerechosVarios(dr));
    }
    dr.Close();
    return gridData;
  }

  private ServiciosDerechosVarios readServiciosDerechosVarios(InfoGovReader dr)
  {
    ServiciosDerechosVarios serviciosDerechosVarios = new ServiciosDerechosVarios();
    serviciosDerechosVarios.CodiServiciosDerechosVarios = dr.readInt("CodiServiciosDerechosVarios");
    serviciosDerechosVarios.DetaServiciosDerechosVarios = dr.readString("DetaServiciosDerechosVarios");
    serviciosDerechosVarios.readAuditory(dr);
    return serviciosDerechosVarios;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");
}
