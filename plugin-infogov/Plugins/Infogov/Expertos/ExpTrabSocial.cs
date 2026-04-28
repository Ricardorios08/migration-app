// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpTrabSocial
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpTrabSocial : Expert, ABMExpert
{
  public ExpTrabSocial()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT trabajadorsocial.*, IFNULL(persona.DetaPers,'') DetaPers FROM desasocial.trabajadorsocial LEFT JOIN infogov.persona ON persona.CucuPers=trabajadorsocial.CucuPers");
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readTrabSocial(dr));
    }
    dr.Close();
    return gridData;
  }

  private TrabSocial readTrabSocial(InfoGovReader dr)
  {
    return new TrabSocial()
    {
      CodiUsua = dr.readString("CodiUsua"),
      CucuPers = dr.readLong("CucuPers"),
      DetaPers = dr.readString("DetaPers"),
      BajaFeho = dr.readDateTime("BajaFeho")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    TrabSocial trabSocial = (TrabSocial) data;
    return this.conn.executeNonQuery($"INSERT INTO desasocial.trabajadorsocial (CodiUsua,CucuPers,AltaUsua) VALUES('{trabSocial.CodiUsua}',{trabSocial.CucuPers.ToString()},'{this.usuario}');");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    TrabSocial trabSocial = (TrabSocial) enti;
    return this.conn.executeNonQuery($"UPDATE trabajadorsocial t SET t.CucuPers = {((TrabSocial) data).CucuPers.ToString()} WHERE t.CodiUsua = '{trabSocial.CodiUsua}';");
  }

  public bool anular(Entity enti, Entity data)
  {
    return this.conn.executeNonQuery($"UPDATE desasocial.trabajadorsocial t SET  t.BajaFeho = NOW(), t.BajaUsua = '{this.usuario}' WHERE t.CodiUsua = '{((TrabSocial) enti).CodiUsua}';");
  }

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");
}
