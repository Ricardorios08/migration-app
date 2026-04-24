// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpOrgaxUsua
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpOrgaxUsua : Expert, ABMExpert
{
  public ExpOrgaxUsua()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT orgaxusua.*, IFNULL(DetaPers,'Falta Cargar El Cuit') DetaPers, DetaOrga");
    stringBuilder.AppendLine("FROM contpres.orgaxusua");
    stringBuilder.AppendLine("INNER JOIN infogov.usuario ON usuario.CodiUsua = orgaxusua.CodiUsua");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers AND persona.CucuPers != 0");
    stringBuilder.AppendLine("INNER JOIN infogov.organigrama ON organigrama.PeriInfo = orgaxusua.PeriInfo AND organigrama.CodiOrga = orgaxusua.CodiOrga");
    stringBuilder.AppendLine("WHERE orgaxusua.PeriInfo = " + PARAMS.Periodo.ToString());
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlAnd(false));
    stringBuilder.AppendLine("ORDER BY orgaxusua.CodiOrga, orgaxusua.CodiUsua;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readOrgaxUsua(dr));
    }
    dr.Close();
    return gridData;
  }

  private OrgaxUsua readOrgaxUsua(InfoGovReader dr)
  {
    OrgaxUsua orgaxUsua = new OrgaxUsua();
    orgaxUsua.PeriInfo = dr.readInt("PeriInfo");
    orgaxUsua.CodiUsua = dr.readString("CodiUsua");
    orgaxUsua.CodiOrga = dr.readString("CodiOrga");
    orgaxUsua.DetaOrga = dr.readString("DetaOrga");
    orgaxUsua.readAuditory(dr);
    return orgaxUsua;
  }

  public string puedeModificar(Entity enti) => "No Implementado.";

  public string puedeAnular(Entity enti) => "No Implementado.";

  public string puedeEliminar(Entity enti) => "";

  public bool guardarNuevo(Entity data)
  {
    OrgaxUsua enti = (OrgaxUsua) data;
    StringBuilder sql = new StringBuilder();
    sql.AppendLine("INSERT IGNORE INTO contpres.orgaxusua");
    sql.AppendLine("(PeriInfo, CodiOrga, CodiUsua, AltaUsua)");
    sql.AppendLine("VALUES");
    if (enti.PermJera)
    {
      if (PARAMS.Periodo >= 2024)
      {
        string str = this.conn.executeString($"SELECT fnBuscarJeraOrga({PARAMS.Periodo}, {this.sqlString(enti.CodiOrga)});");
        if (!string.IsNullOrEmpty(str))
          ((IEnumerable<string>) str.Split(',')).ToList<string>().ForEach((Action<string>) (CodiOrga => sql.AppendLine($"({PARAMS.Periodo}, {this.sqlString(CodiOrga)}, {this.sqlString(enti.CodiUsua)}, {this.sqlString(this.usuario)}),")));
      }
      else
      {
        InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM infogov.organigrama o WHERE o.PeriInfo = {PARAMS.Periodo} AND o.CodiOrga LIKE '{enti.CodiOrga.Replace('0', '%')}';");
        if (nfoGovReader.HasRows)
        {
          while (nfoGovReader.Read())
            sql.AppendLine($"({PARAMS.Periodo}, {this.sqlString(nfoGovReader.readString("CodiOrga"))}, {this.sqlString(enti.CodiUsua)}, {this.sqlString(this.usuario)}),");
        }
        nfoGovReader.Close();
      }
    }
    sql.AppendLine($"({PARAMS.Periodo}, {this.sqlString(enti.CodiOrga)}, {this.sqlString(enti.CodiUsua)}, {this.sqlString(this.usuario)});");
    return this.conn.executeNonQuery(sql.ToString());
  }

  public bool guardarCambios(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti)
  {
    OrgaxUsua orgaxUsua = (OrgaxUsua) enti;
    return this.conn.executeNonQuery($"DELETE FROM contpres.orgaxusua WHERE PeriInfo={orgaxUsua.PeriInfo.ToString()} AND CodiOrga='{orgaxUsua.CodiOrga}' AND CodiUsua='{orgaxUsua.CodiUsua}'");
  }

  public int consultarorgaxusua(string codiorga, string codiusua)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM contpres.orgaxusua WHERE CodiOrga='{codiorga}' AND CodiUsua='{codiusua}';");
  }

  internal int organigramasPorAfectar(string organigrama)
  {
    int num = 0;
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT COUNT(o.codiorga) as cantidad FROM infogov.organigrama o WHERE o.CodiOrga LIKE '{organigrama}%' AND PeriInfo = {PARAMS.Periodo.ToString()};");
    if (nfoGovReader.HasRows)
    {
      nfoGovReader.Read();
      num = nfoGovReader.readInt("cantidad");
    }
    nfoGovReader.Close();
    return num;
  }

  internal List<string> organismosPorInsertar(string organigrama)
  {
    List<string> stringList = new List<string>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT o.CodiOrga FROM infogov.organigrama o WHERE o.CodiOrga LIKE '{organigrama}%' AND periinfo = {PARAMS.Periodo.ToString()};");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        stringList.Add(nfoGovReader.readString("CodiOrga"));
    }
    nfoGovReader.Close();
    return stringList;
  }

  private string rellenar(string organigrama)
  {
    int num = PARAMS.Parameters.GetString("MaskCodiOrga").Split(new string[1]
    {
      "\\."
    }, StringSplitOptions.RemoveEmptyEntries)[0].Length - organigrama.Length;
    for (int index = 0; index < num; ++index)
      organigrama += "0";
    return organigrama;
  }
}
