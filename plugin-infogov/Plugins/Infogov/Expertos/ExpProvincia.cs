// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpProvincia
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

public class ExpProvincia : 
  Expert,
  EntityExpert<Provincia>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Provincia>,
  ISearchExpert
{
  public ExpProvincia()
    : base(Modulo.Database)
  {
  }

  public Provincia CreateEntity() => new Provincia();

  public Provincia GetEntity(ID id)
  {
    return this.getEntity<Provincia>($"SELECT provincia.* FROM provincia WHERE CodiProv={id.GetInt("CodiProv").ToString()};", new System.Func<InfoGovReader, Provincia>(this.readEntity));
  }

  private Provincia readEntity(InfoGovReader dr)
  {
    Provincia enti = new Provincia();
    enti.CodiProv = dr.readInt("CodiProv");
    enti.DetaProv = dr.readString("DetaProv");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(Provincia entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Provincia entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Provincia entity) => this.CanDelete(entity.id);

  public Provincia Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Provincia>("SELECT * FROM provincia " + filter.sqlWOL(onlyActive), new System.Func<InfoGovReader, Provincia>(this.readEntity));
  }

  public bool SaveOnDB(Provincia entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(Provincia enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sql = $"INSERT INTO provincia(CodiProv,DetaProv) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiProv),0)+1 FROM provincia;").ToString()}, '{enti.DetaProv}');";
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE provincia SET DetaProv='{enti.DetaProv}', WHERE CodiProv= {enti.CodiProv.ToString()}";
        break;
      case EntityStatus.Deleted:
        sql = "DELETE FROM provincia WHERE CodiProv= " + enti.CodiProv.ToString();
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiProv", "Código"),
      new Column("DetaProv", "Detalle", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CodiProv", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiProv", "Código", FilterMode.StartsWith),
      new FilterField("DetaProv", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT CodiProv,DetaProv FROM provincia " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Provincia getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
