// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpFacixUsua
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpFacixUsua : Expert, ABMExpert
{
  public ExpFacixUsua()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT u.*, IFNULL(t.DetaTifa, '') DetaTifa");
    stringBuilder.AppendLine("FROM usuariofaci u");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.tipofapa t ON t.CodiTifa = u.CodiTifa");
    stringBuilder.AppendLine(filter != null ? filter.sqlWhere(false) : string.Empty);
    stringBuilder.AppendLine("ORDER BY u.CodiUsua, u.CodiTifa;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readFacixUsua(dr));
    }
    dr.Close();
    return gridData;
  }

  private FacixUsua readFacixUsua(InfoGovReader dr)
  {
    FacixUsua facixUsua = new FacixUsua();
    facixUsua.CodiUsua = dr.readString("CodiUsua");
    facixUsua.CodiTifa = dr.readInt("CodiTifa");
    facixUsua.DetaTifa = dr.readString("DetaTifa");
    facixUsua.readAuditory(dr);
    return facixUsua;
  }

  public string puedeModificar(Entity enti) => "No Implementado";

  public string puedeAnular(Entity enti) => string.Empty;

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    FacixUsua facixUsua = (FacixUsua) data;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("INSERT IGNORE INTO infogov.usuariofaci (CodiUsua, CodiTifa, AltaUsua)");
    if (facixUsua.TodasTifas)
      stringBuilder.AppendLine($"SELECT {this.sqlString(facixUsua.CodiUsua)} CodiUsua, CodiTifa, {this.sqlString(this.usuario)} AltaUsua FROM recaudacion.tipofapa WHERE BajaFeho IS NULL AND CodiTifa NOT IN (SELECT CodiTifa FROM infogov.usuariofaci WHERE CodiUsua = {this.sqlString(facixUsua.CodiUsua)});");
    else
      stringBuilder.AppendLine($"VALUES ({this.sqlString(facixUsua.CodiUsua)}, {facixUsua.CodiTifa}, {this.sqlString(this.usuario)});");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    return this.conn.executeNonQuery(new StringBuilder().ToString());
  }

  public bool anular(Entity enti, Entity data)
  {
    FacixUsua facixUsua1 = (FacixUsua) enti;
    FacixUsua facixUsua2 = (FacixUsua) data;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("DELETE FROM infogov.usuariofaci WHERE CodiUsua=" + this.sqlString(facixUsua1.CodiUsua));
    stringBuilder.AppendLine(facixUsua2.TodasTifas ? ";" : $"AND CodiTifa={facixUsua1.CodiTifa};");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool eliminar(Entity enti)
  {
    FacixUsua facixUsua = (FacixUsua) enti;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"DELETE FROM infogov.usuariofaci WHERE CodiUsua={this.sqlString(facixUsua.CodiUsua)} AND CodiTifa={facixUsua.CodiTifa};");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool ExistenFacilidades(string CodiUsua)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT COUNT(*) FROM recaudacion.tipofapa");
    stringBuilder.AppendLine($"WHERE CodiTifa NOT IN (SELECT CodiTifa FROM infogov.usuariofaci WHERE CodiUsua={this.sqlString(CodiUsua)})");
    stringBuilder.AppendLine("AND BajaFeho IS NULL;");
    return this.conn.executeInt(stringBuilder.ToString()) > 0;
  }
}
