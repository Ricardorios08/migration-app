// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpCodigoPostal
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

public class ExpCodigoPostal : 
  Expert,
  EntityExpert<CodigoPostal>,
  IEntityExpert,
  GridExpert,
  SearchExpert<CodigoPostal>,
  ISearchExpert
{
  public ExpCodigoPostal()
    : base(Modulo.Database)
  {
  }

  public CodigoPostal CreateEntity() => new CodigoPostal();

  public CodigoPostal GetEntity(ID id)
  {
    return this.getEntity<CodigoPostal>($"SELECT * FROM codigopostal WHERE CodiCopo={id.GetString("CodiCopo")};", new System.Func<InfoGovReader, CodigoPostal>(this.readEntity));
  }

  private CodigoPostal readEntity(InfoGovReader dr)
  {
    CodigoPostal enti = new CodigoPostal();
    enti.CodiCopo = dr.readInt("CodiCopo");
    enti.DetaCopo = dr.readString("DetaCopo");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => id.GetInt("CodiCopo") > 0;

  public bool CanDeactivate(ID id) => id.GetInt("CodiCopo") > 0;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(CodigoPostal entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(CodigoPostal entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(CodigoPostal entity) => this.CanDeactivate(entity.id);

  public CodigoPostal Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<CodigoPostal>("SELECT * FROM codigopostal " + filter.sqlWOL(onlyActive), new System.Func<InfoGovReader, CodigoPostal>(this.readEntity));
  }

  public bool SaveOnDB(CodigoPostal entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(CodigoPostal enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sql = $"INSERT INTO codigopostal(CodiCopo,DetaCopo) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiCopo),0)+1 FROM codigopostal;").ToString()}, '{enti.DetaCopo}')";
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE codigopostal SET DetaCopo='{enti.DetaCopo}', ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiCopo={enti.CodiCopo.ToString()}";
        break;
      case EntityStatus.Deleted:
        sql = "DELETE FROM codigopostal WHERE CodiCopo=" + enti.CodiCopo.ToString();
        break;
      case EntityStatus.Activated:
        sql = "UPDATE codigopostal SET BajaUsua='', BajaFeho=NULL WHERE CodiCopo=" + enti.CodiCopo.ToString();
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE codigopostal SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CodiCopo={enti.CodiCopo.ToString()}";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiCopo", "Código"),
      new Column("DetaCopo", "Detalle", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CodiCopo", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiCopo", "Código", FilterMode.StartsWith),
      new FilterField("DetaCopo", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT CodiCopo,DetaCopo FROM codigopostal " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public CodigoPostal getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public bool existeCopo(string copo)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM codigopostal WHERE CodiCopo='{copo}';") > 0;
  }
}
