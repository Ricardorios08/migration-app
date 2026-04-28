// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpUsuarioFacilidad
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

public class ExpUsuarioFacilidad : Expert, ABMExpert
{
  public ExpUsuarioFacilidad()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    string sql = "SELECT u.CodiUsua, u.CodiTifa, t.DetaTifa FROM infogov.usuariofaci u INNER JOIN recaudacion.tipofapa t ON u.CodiTifa = t.CodiTifa ORDER BY u.CodiUsua;";
    if (filter != null)
      sql = "SELECT u.CodiUsua, u.CodiTifa, t.DetaTifa FROM infogov.usuariofaci u INNER JOIN recaudacion.tipofapa t ON u.CodiTifa = t.CodiTifa" + filter.sqlWOL();
    InfoGovReader dr = this.conn.executeReader(sql);
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readUsuarioFacilidad(dr));
    }
    dr.Close();
    return gridData;
  }

  private UsuarioFacilidad readUsuarioFacilidad(InfoGovReader dr)
  {
    return new UsuarioFacilidad()
    {
      CodiUsua = dr.readString("CodiUsua"),
      CodiTifa = dr.readInt("CodiTifa"),
      DetaTifa = dr.readString("DetaTifa")
    };
  }

  public string puedeModificar(Entity enti) => "No implementado.";

  public string puedeAnular(Entity enti) => "No implementado.";

  public string puedeEliminar(Entity enti) => "No implementado.";

  public bool guardarNuevo(Entity data) => false;

  public bool guardarCambios(Entity enti, Entity data) => false;

  public bool anular(Entity enti, Entity data) => false;

  public bool eliminar(Entity enti) => false;
}
