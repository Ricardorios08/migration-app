// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpUbfixUsua
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

public class ExpUbfixUsua : Expert, ABMExpert
{
  public ExpUbfixUsua()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT ubfixusua.*, IFNULL(DetaPers,'Falta Cargar El Cuit') DetaPers, DetaUbfi");
    stringBuilder.AppendLine("FROM contpres.ubfixusua");
    stringBuilder.AppendLine("INNER JOIN infogov.usuario ON usuario.CodiUsua=ubfixusua.CodiUsua");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona ON persona.CucuPers=usuario.CucuPers AND persona.CucuPers!=0");
    stringBuilder.AppendLine("INNER JOIN contpres.ubicfisica ON ubicfisica.IdUbfi=ubfixusua.IdUbfi");
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlWOL());
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readUbfixUsua(dr));
    }
    dr.Close();
    return gridData;
  }

  private UbfixUsua readUbfixUsua(InfoGovReader dr)
  {
    UbfixUsua ubfixUsua = new UbfixUsua();
    ubfixUsua.IdUbfi = dr.readInt("IdUbfi");
    ubfixUsua.CodiUsua = dr.readString("CodiUsua");
    ubfixUsua.DetaUbfi = dr.readString("DetaUbfi");
    ubfixUsua.readAuditory(dr);
    return ubfixUsua;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "";

  public bool guardarNuevo(Entity data)
  {
    UbfixUsua ubfixUsua = (UbfixUsua) data;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("INSERT INTO contpres.ubfixusua");
    stringBuilder.AppendLine("(IdUbfi, CodiUsua, AltaUsua)");
    stringBuilder.AppendLine($"VALUES ({ubfixUsua.IdUbfi.ToString()}, '{ubfixUsua.CodiUsua}', '{this.usuario}')");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool guardarCambios(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti)
  {
    UbfixUsua ubfixUsua = (UbfixUsua) enti;
    return this.conn.executeNonQuery($"DELETE FROM contpres.ubfixusua WHERE IdUbfi='{ubfixUsua.IdUbfi.ToString()}' AND CodiUsua='{ubfixUsua.CodiUsua}'");
  }

  public int consultarubicxusua(int idubfi, string codiusua)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM contpres.ubfixusua WHERE IdUbfi={idubfi.ToString()} AND CodiUsua='{codiusua}';");
  }
}
