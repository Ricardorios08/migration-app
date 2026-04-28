// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpDatoContactoPers
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

public class ExpDatoContactoPers : Expert, ABMExpert
{
  public ExpDatoContactoPers()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT * FROM persona");
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlWhere(true));
    else
      stringBuilder.AppendLine("WHERE BajaFeho IS NULL");
    stringBuilder.AppendLine("ORDER BY DetaPers;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readDatoContactoPers(dr));
    }
    dr.Close();
    return gridData;
  }

  private DatoContactoPers readDatoContactoPers(InfoGovReader dr)
  {
    DatoContactoPers datoContactoPers = new DatoContactoPers();
    datoContactoPers.CucuPers = dr.readLong("CucuPers");
    datoContactoPers.DetaPers = dr.readString("DetaPers");
    datoContactoPers.TelePers = dr.readString("TelePers");
    datoContactoPers.CeluPers = dr.readString("CeluPers");
    datoContactoPers.MailPers = dr.readString("MailPers");
    datoContactoPers.NudoPers = dr.readInt("NudoPers");
    datoContactoPers.readAuditory(dr);
    return datoContactoPers;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "No implementado.";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data)
  {
    DatoContactoPers datoContactoPers1 = (DatoContactoPers) enti;
    DatoContactoPers datoContactoPers2 = (DatoContactoPers) data;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("UPDATE persona");
    stringBuilder.AppendLine($"SET TelePers={this.sqlString(datoContactoPers2.TelePers)}, CeluPers={this.sqlString(datoContactoPers2.CeluPers)}, MailPers={this.sqlString(datoContactoPers2.MailPers)}, ModiUsua={this.sqlString(this.usuario)}, ModiFeho=NOW()");
    stringBuilder.AppendLine($"WHERE CucuPers = {datoContactoPers1.CucuPers};");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");
}
