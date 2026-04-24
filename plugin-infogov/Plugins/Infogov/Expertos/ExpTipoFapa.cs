// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpTipoFapa
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

public class ExpTipoFapa : 
  Expert,
  EntityExpert<TipoFapa>,
  IEntityExpert,
  GridExpert,
  SearchExpert<TipoFapa>,
  ISearchExpert
{
  public ExpTipoFapa()
    : base(Modulo.Database)
  {
  }

  public bool CanActivate(ID id) => true;

  public bool CanActivate(TipoFapa entity) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDeactivate(TipoFapa entity) => true;

  public bool CanDelete(ID id) => true;

  public bool CanDelete(TipoFapa entity) => true;

  public TipoFapa CreateEntity() => new TipoFapa();

  public TipoFapa Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<TipoFapa>($"SELECT * FROM recaudacion.tipofapa {filter.sqlWhere(true)};", new System.Func<InfoGovReader, TipoFapa>(this.readEntity));
  }

  public TipoFapa GetEntity(ID id)
  {
    return this.getEntity<TipoFapa>($"SELECT * FROM recaudacion.tipofapa WHERE CodiTifa={id.GetInt("CodiTifa")};", new System.Func<InfoGovReader, TipoFapa>(this.readEntity));
  }

  public bool SaveOnDB(TipoFapa entity) => false;

  public TipoFapa readEntity(InfoGovReader dr)
  {
    TipoFapa enti = new TipoFapa();
    enti.CodiTifa = dr.readInt("CodiTifa");
    enti.DetaTifa = dr.readString("DetaTifa");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable($"SELECT * FROM recaudacion.tipofapa WHERE BajaFeho IS NULL {(filter == null ? "AND 1=2" : filter.sqlAnd(false))};");
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiTifa", "Código", width: 85),
      new Column("DetaTifa", "Detalle", fill: true)
    };
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiTifa", "Código", FilterMode.Equal),
      new FilterField("DetaTifa", "Detalle", FilterMode.Contains)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiTifa", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public List<Column> getSearchColumns() => this.getGridColumns();

  public TipoFapa getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();
}
