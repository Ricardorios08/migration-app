// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpLegajo
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

public class ExpLegajo : 
  Expert,
  EntityExpert<Legajo>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Legajo>,
  ISearchExpert
{
  public ExpLegajo()
    : base("personal")
  {
  }

  public Legajo CreateEntity() => new Legajo();

  public Legajo GetEntity(ID id)
  {
    return this.getEntity<Legajo>($"SELECT l.NumeLega , DetaPers FROM personal.legajo l   INNER JOIN infogovpers.persona p ON p.CucuPers = l.CucuPers  WHERE l.NumeLega= {id.GetInt("NumeLega").ToString()} ORDER BY NumeLega;", new System.Func<InfoGovReader, Legajo>(this.readEntity));
  }

  private Legajo readEntity(InfoGovReader dr)
  {
    Legajo enti = new Legajo();
    enti.NumeLega = dr.readInt("NumeLega");
    enti.DetaPers = dr.readString("DetaPers");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(Legajo entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Legajo entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Legajo entity) => this.CanDelete(entity.id);

  public Legajo Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Legajo>("SELECT l.NumeLega , DetaPers FROM personal.legajo l  INNER JOIN infogovpers.persona p ON p.CucuPers = l.CucuPers " + filter.sqlWOL(), new System.Func<InfoGovReader, Legajo>(this.readEntity));
  }

  public bool SaveOnDB(Legajo entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(Legajo enti)
  {
    string sql = "";
    switch (enti.status)
    {
      default:
        return sql;
    }
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("NumeLega", "Legajo"),
      new Column("DetaPers", "Nombre y Apellido", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "NumeLega", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("NumeLega", "Legajo", FilterMode.Equal, true),
      new FilterField("DetaPers", "Nombre y Apellido", FilterMode.Contains)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT l.NumeLega, DetaPers FROM personal.legajo l  INNER JOIN infogovpers.persona p ON p.CucuPers = l.CucuPers " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Legajo getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
