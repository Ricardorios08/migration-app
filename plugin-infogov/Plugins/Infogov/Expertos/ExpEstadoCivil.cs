// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpEstadoCivil
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

public class ExpEstadoCivil : 
  Expert,
  EntityExpert<EstadoCivil>,
  IEntityExpert,
  GridExpert,
  SearchExpert<EstadoCivil>,
  ISearchExpert
{
  public ExpEstadoCivil()
    : base(Modulo.Database)
  {
  }

  public EstadoCivil CreateEntity() => new EstadoCivil();

  public EstadoCivil GetEntity(ID id)
  {
    return this.getEntity<EstadoCivil>($"SELECT * FROM estacivi WHERE CodiEsci={id.GetString("CodiEsci")};", new System.Func<InfoGovReader, EstadoCivil>(this.readEntity));
  }

  private EstadoCivil readEntity(InfoGovReader dr)
  {
    EstadoCivil enti = new EstadoCivil();
    enti.CodiEsci = dr.readInt("CodiEsci");
    enti.DetaEsci = dr.readString("DetaEsci");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(EstadoCivil entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(EstadoCivil entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(EstadoCivil entity) => this.CanDeactivate(entity.id);

  public EstadoCivil Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<EstadoCivil>("SELECT * FROM estacivi" + filter.sqlWOL(onlyActive), new System.Func<InfoGovReader, EstadoCivil>(this.readEntity));
  }

  public bool SaveOnDB(EstadoCivil entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(EstadoCivil enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sql = $"INSERT INTO estacivi(CodiEsci,DetaEsci, AltaUsua) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiEsci),0)+1 FROM estacivi;").ToString()}, '{enti.DetaEsci}','{this.usuario}')";
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE estacivi SET DetaEsci='{enti.DetaEsci}', ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiEsci={enti.CodiEsci.ToString()}";
        break;
      case EntityStatus.Deleted:
        sql = "DELETE FROM estacivi WHERE CodiEsci=" + enti.CodiEsci.ToString();
        break;
      case EntityStatus.Activated:
        sql = "UPDATE estacivi SET BajaUsua='', BajaFeho=NULL WHERE CodiEsci=" + enti.CodiEsci.ToString();
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE estacivi SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CodiEsci={enti.CodiEsci.ToString()}";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiEsci", "Código"),
      new Column("DetaEsci", "Detalle", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CodiEsci", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiEsci", "Código", FilterMode.StartsWith),
      new FilterField("DetaEsci", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT CodiEsci,DetaEsci FROM estacivi " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public EstadoCivil getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public List<EstadoCivil> getListEstadosCiviles()
  {
    List<EstadoCivil> listEstadosCiviles = new List<EstadoCivil>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM estacivi;");
    if (dr != null && dr.HasRows)
    {
      while (dr.Read())
        listEstadosCiviles.Add(this.readEntity(dr));
    }
    dr?.Close();
    return listEstadosCiviles;
  }

  public int getUltimoCodigo()
  {
    return this.conn.executeInt("select IFNULL(max(CodiEsci),0)+1 from estacivi;");
  }
}
