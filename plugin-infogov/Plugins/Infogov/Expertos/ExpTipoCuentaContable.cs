// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpTipoCuentaContable
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

public class ExpTipoCuentaContable : 
  Expert,
  EntityExpert<TipoCuentaContable>,
  IEntityExpert,
  GridExpert,
  SearchExpert<TipoCuentaContable>,
  ISearchExpert
{
  private int CodiUnfi = PARAMS.CodiUnfi;
  private int CodiPerm = (int) PARAMS.PermisoCodiUnfi;
  private int PeriInfo = PARAMS.Periodo;

  public ExpTipoCuentaContable()
    : base("contpres")
  {
  }

  public TipoCuentaContable CreateEntity() => new TipoCuentaContable();

  public TipoCuentaContable GetEntity(ID id)
  {
    return this.getEntity<TipoCuentaContable>($"SELECT * FROM contpres.tipocuco WHERE CodiTicu = '{id.GetString("CodiTicu")}';", new System.Func<InfoGovReader, TipoCuentaContable>(this.readEntity));
  }

  public TipoCuentaContable readEntity(InfoGovReader dr)
  {
    TipoCuentaContable enti = new TipoCuentaContable();
    enti.CodiTicu = dr.readString("CodiTicu");
    enti.DetaTicu = dr.readString("DetaTicu");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(TipoCuentaContable entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(TipoCuentaContable entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(TipoCuentaContable entity) => this.CanDelete(entity.id);

  public TipoCuentaContable Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<TipoCuentaContable>("SELECT * FROM contpres.tipocuco " + filter.sqlWOL(), new System.Func<InfoGovReader, TipoCuentaContable>(this.readEntity));
  }

  public bool SaveOnDB(TipoCuentaContable entity)
  {
    return this.conn.executeNonQuery("" + this.getSQL(entity));
  }

  public string getSQL(TipoCuentaContable entity)
  {
    string sql = "";
    switch (entity.status)
    {
      case EntityStatus.New:
        sql = "";
        break;
      case EntityStatus.Modified:
        sql = "";
        break;
      case EntityStatus.Deleted:
        sql = "";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiTicu", "Cód. Tipo"),
      new Column("DetaTicu", "Det. Tipo", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiTicu", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiTicu", "Cód. Tipo", FilterMode.StartsWith),
      new FilterField("DetaTicu", "Det. Tipo", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT tipocuco.* FROM contpres.tipocuco " + (filter == null ? " WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public TipoCuentaContable getSearchEntity(DataGridViewRow row)
  {
    return this.GetEntity(this.getGridID(row));
  }

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
