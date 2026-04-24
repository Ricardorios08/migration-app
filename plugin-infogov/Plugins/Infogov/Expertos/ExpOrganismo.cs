// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpOrganismo
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpOrganismo : 
  Expert,
  EntityExpert<Organismo>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Organismo>,
  ISearchExpert
{
  private int CodiUnfi = PARAMS.CodiUnfi;
  private int CodiPerm = (int) PARAMS.PermisoCodiUnfi;
  private int PeriInfo = PARAMS.Periodo;

  public ExpOrganismo()
    : base("infogov")
  {
  }

  public Organismo CreateEntity() => new Organismo();

  public Organismo GetEntity(ID id)
  {
    if (id.Count == 1)
      id.Add((object) "PeriInfo", (object) PARAMS.Periodo);
    string[] strArray = new string[5]
    {
      "SELECT o.*, (SELECT o1.DetaOrga FROM organismo o1 WHERE o1.PeriInfo = o.PeriInfo AND o1.CodiOrga = o.CredOrga) CredOrgaDeta FROM organismo o WHERE o.PeriInfo =",
      null,
      null,
      null,
      null
    };
    int num = id.GetInt("PeriInfo");
    strArray[1] = num.ToString();
    strArray[2] = " AND o.CodiOrga=";
    num = id.GetInt("CodiOrga");
    strArray[3] = num.ToString();
    strArray[4] = ";";
    return this.getEntity<Organismo>(string.Concat(strArray), new System.Func<InfoGovReader, Organismo>(this.readEntity));
  }

  private Organismo readEntity(InfoGovReader dr)
  {
    Organismo enti = new Organismo();
    enti.PeriInfo = dr.readInt("PeriInfo");
    enti.CodiOrga = dr.readInt("CodiOrga");
    enti.DetaOrga = dr.readString("DetaOrga");
    enti.JeraOrga = dr.readString("JeraOrga");
    enti.CredOrga = dr.readInt("CredOrga");
    enti.CredOrgaDeta = dr.readString("CredOrgaDeta");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(Organismo entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Organismo entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Organismo entity) => this.CanDelete(entity.id);

  public Organismo Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Organismo>("SELECT o.*, IF((SELECT orgacred.PeriInfo FROM infogov.organismo orgacred WHERE orgacred.PeriInfo = o.PeriInfo AND orgacred.CredOrga = o.CodiOrga GROUP BY o.CredOrga) IS NULL,'No','Si') EsOrgaCred, (SELECT o1.DetaOrga FROM infogov.organismo o1 WHERE o1.PeriInfo = o.PeriInfo AND o1.CodiOrga = o.CredOrga) CredOrgaDeta FROM infogov.organismo o " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL(onlyActive)), new System.Func<InfoGovReader, Organismo>(this.readEntity));
  }

  public bool SaveOnDB(Organismo entity) => this.conn.executeNonQuery("" + this.getSQL(entity));

  public string getSQL(Organismo entity)
  {
    string sql = "";
    switch (entity.status)
    {
      case EntityStatus.New:
        entity.PeriInfo = this.PeriInfo;
        entity.CodiOrga = this.conn.executeInt($"SELECT IFNULL(MAX(CodiOrga),0) +1 FROM organismo WHERE PeriInfo = {this.PeriInfo.ToString()};");
        string[] strArray1 = new string[13];
        strArray1[0] = "INSERT INTO organismo (PeriInfo, CodiOrga, DetaOrga, JeraOrga, CredOrga, AltaUsua) VALUES (";
        int num1 = entity.PeriInfo;
        strArray1[1] = num1.ToString();
        strArray1[2] = ", ";
        num1 = entity.CodiOrga;
        strArray1[3] = num1.ToString();
        strArray1[4] = ", '";
        strArray1[5] = entity.DetaOrga;
        strArray1[6] = "', '";
        strArray1[7] = entity.JeraOrga;
        strArray1[8] = "', ";
        num1 = entity.CredOrga;
        strArray1[9] = num1.ToString();
        strArray1[10] = ", '";
        strArray1[11] = this.usuario;
        strArray1[12] = "');";
        sql = string.Concat(strArray1);
        break;
      case EntityStatus.Modified:
        string[] strArray2 = new string[13];
        strArray2[0] = "UPDATE organismo SET DetaOrga='";
        strArray2[1] = entity.DetaOrga;
        strArray2[2] = "', JeraOrga='";
        strArray2[3] = entity.JeraOrga;
        strArray2[4] = "', CredOrga=";
        int num2 = entity.CredOrga;
        strArray2[5] = num2.ToString();
        strArray2[6] = ", ModiUsua='";
        strArray2[7] = this.usuario;
        strArray2[8] = "', ModiFeho=NOW() WHERE PeriInfo=";
        num2 = entity.PeriInfo;
        strArray2[9] = num2.ToString();
        strArray2[10] = " AND CodiOrga=";
        num2 = entity.CodiOrga;
        strArray2[11] = num2.ToString();
        strArray2[12] = ";";
        sql = string.Concat(strArray2);
        break;
      case EntityStatus.Deleted:
        string[] strArray3 = new string[5]
        {
          "DELETE FROM organismo WHERE PeriInfo=",
          null,
          null,
          null,
          null
        };
        int num3 = entity.PeriInfo;
        strArray3[1] = num3.ToString();
        strArray3[2] = " AND CodiOrga=";
        num3 = entity.CodiOrga;
        strArray3[3] = num3.ToString();
        strArray3[4] = ";";
        sql = string.Concat(strArray3);
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE organismo SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE PeriInfo={entity.PeriInfo.ToString()} AND CodiOrga={entity.CodiOrga.ToString()};";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("PeriInfo", "Periodo", visible: false),
      new Column("CodiOrga", "Cód. Oficina"),
      new Column("DetaOrga", "Det. Oficina", fill: true),
      new Column("EsOrgaCred", "Es Oficina Crédito"),
      new Column("CredOrga", "Oficina Crédito"),
      new Column("CredOrgaDeta", "Oficina Crédito", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "PeriInfo", (object) row.Cells[0].Value.ToString());
    gridId.Add((object) "CodiOrga", (object) row.Cells[1].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("o.CodiOrga", "Cód. Oficina", FilterMode.Equal),
      new FilterField("o.DetaOrga", "Det. Oficina", FilterMode.Contains),
      new FilterField("o.CredOrga", "Cód. Crédito", FilterMode.Equal),
      new FilterField("CredOrgaDeta", "Det. Crédito", FilterMode.Contains, useHaving: true)
    };
  }

  public Filter getInitialGridFilter()
  {
    return new Filter()
    {
      Restrictions = {
        new FilterItem("o.PeriInfo", "Periodo", FilterMode.Equal, this.PeriInfo.ToString()),
        new FilterItem("o.DetaOrga", "Responsable", FilterMode.Distinct, ""),
        new FilterItem("o.JeraOrga", "Jerarquia", FilterMode.OrderByASC, "o.JeraOrga")
      }
    };
  }

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT o.*, IF((SELECT orgacred.PeriInfo FROM organismo orgacred WHERE orgacred.PeriInfo = o.PeriInfo AND orgacred.CredOrga = o.CodiOrga GROUP BY o.CredOrga) IS NULL,'No','Si') EsOrgaCred, (SELECT o1.DetaOrga FROM infogov.organismo o1 WHERE o1.PeriInfo = o.PeriInfo AND o1.CodiOrga = o.CredOrga) CredOrgaDeta FROM organismo o " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Organismo getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  internal int getMaxCodiOrga()
  {
    return this.conn.executeInt($"SELECT IFNULL(MAX(CodiOrga),0) + 1 FROM infogov.organismo WHERE PeriInfo = {this.PeriInfo.ToString()};");
  }
}
