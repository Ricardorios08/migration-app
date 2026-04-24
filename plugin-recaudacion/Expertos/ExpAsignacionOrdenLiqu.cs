// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpAsignacionOrdenLiqu
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

public class ExpAsignacionOrdenLiqu : Expert, ABMExpert
{
  public ExpAsignacionOrdenLiqu()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT asigorden.*, persona.DetaPers FROM asigorden INNER JOIN infogov.persona ON persona.CucuPers = asigorden.CucuAgen" + (filter == null ? "" : filter.sqlWOL()));
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readAsignacionOrdenLiqu(dr));
    }
    dr.Close();
    return gridData;
  }

  private AsignacionOrdenLiqu readAsignacionOrdenLiqu(InfoGovReader dr)
  {
    AsignacionOrdenLiqu asignacionOrdenLiqu = new AsignacionOrdenLiqu();
    asignacionOrdenLiqu.IdAsig = dr.readInt("IdAsig");
    asignacionOrdenLiqu.PeriLiqu = dr.readInt("PeriLiqu");
    asignacionOrdenLiqu.NumeLiqu = dr.readShort("NumeLiqu");
    asignacionOrdenLiqu.OrdeDesde = dr.readInt("OrdeDesde");
    asignacionOrdenLiqu.OrdeHasta = dr.readInt("OrdeHasta");
    asignacionOrdenLiqu.CucuAgen = dr.readLong("CucuAgen");
    asignacionOrdenLiqu.DetaPers = dr.readString("DetaPers");
    asignacionOrdenLiqu.readAuditory(dr);
    return asignacionOrdenLiqu;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    AsignacionOrdenLiqu asignacionOrdenLiqu = (AsignacionOrdenLiqu) data;
    asignacionOrdenLiqu.IdAsig = (int) this.nextShort("IdAsig", "asigorden");
    return this.conn.executeNonQuery($"INSERT INTO asigorden (IdAsig, PeriLiqu, NumeLiqu, OrdeDesde, OrdeHasta, CucuAgen, AltaUsua) VALUES({asignacionOrdenLiqu.IdAsig.ToString()}, {asignacionOrdenLiqu.PeriLiqu.ToString()}, {asignacionOrdenLiqu.NumeLiqu.ToString()}, {asignacionOrdenLiqu.OrdeDesde.ToString()}, {asignacionOrdenLiqu.OrdeHasta.ToString()}, {asignacionOrdenLiqu.CucuAgen.ToString()}, '{this.usuario}');");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    AsignacionOrdenLiqu asignacionOrdenLiqu1 = (AsignacionOrdenLiqu) enti;
    AsignacionOrdenLiqu asignacionOrdenLiqu2 = (AsignacionOrdenLiqu) data;
    return this.conn.executeNonQuery($"UPDATE asigorden SET PeriLiqu = {asignacionOrdenLiqu2.PeriLiqu.ToString()}, NumeLiqu = {asignacionOrdenLiqu2.NumeLiqu.ToString()}, OrdeDesde = {asignacionOrdenLiqu2.OrdeDesde.ToString()}, OrdeHasta = {asignacionOrdenLiqu2.OrdeHasta.ToString()}, CucuAgen = {asignacionOrdenLiqu2.CucuAgen.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE IdAsig ={asignacionOrdenLiqu1.IdAsig.ToString()};");
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");
}
