// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpDepartamento
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

public class ExpDepartamento : 
  Expert,
  EntityExpert<Departamento>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Departamento>,
  ISearchExpert
{
  public ExpDepartamento()
    : base(Modulo.Database)
  {
  }

  public Departamento CreateEntity() => new Departamento();

  public Departamento GetEntity(ID id)
  {
    return this.getEntity<Departamento>($"SELECT departamento.* FROM departamento WHERE CodiDepa={id.GetShort("CodiDepa").ToString()};", new System.Func<InfoGovReader, Departamento>(this.readEntity));
  }

  public Departamento readEntity(InfoGovReader dr)
  {
    Departamento enti = new Departamento();
    enti.CodiDepa = dr.readShort("CodiDepa");
    enti.DetaDepa = dr.readString("DetaDepa");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => this.hasPermissionFor(typeof (Departamento), ActionMode.Delete);

  public bool CanActivate(Departamento entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Departamento entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Departamento entity) => this.CanDelete(entity.id);

  public Departamento Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Departamento>("SELECT * FROM departamento " + filter.sqlWOL(), new System.Func<InfoGovReader, Departamento>(this.readEntity));
  }

  public bool SaveOnDB(Departamento entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(Departamento enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sql = $"INSERT INTO departamento(CodiDepa,DetaDepa) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiDepa),0)+1 FROM departamento;").ToString()}, '{enti.DetaDepa}');";
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE departamento SET DetaDepa='{enti.DetaDepa}', ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiDepa= {enti.CodiDepa.ToString()}";
        break;
      case EntityStatus.Deleted:
        sql = "DELETE FROM departamento WHERE CodiDepa= " + enti.CodiDepa.ToString();
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiDepa", "Código"),
      new Column("DetaDepa", "Detalle", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CodiDepa", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiDepa", "Código", FilterMode.Equal),
      new FilterField("DetaDepa", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT CodiDepa,DetaDepa FROM departamento " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Departamento getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public bool ExisteDepto(int CodiDepa)
  {
    return this.conn.executeBool("SELECT IF(COUNT(*)>=1,1,0) existe FROM infogov.departamento d WHERE d.CodiDepa = " + CodiDepa.ToString());
  }

  public string getDetaDepto(int CodiDepa)
  {
    return this.conn.executeString("SELECT DetaDepa FROM infogov.departamento d WHERE d.CodiDepa = " + CodiDepa.ToString(), "");
  }
}
