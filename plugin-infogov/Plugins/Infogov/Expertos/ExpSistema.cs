// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpSistema
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpSistema : 
  Expert,
  EntityExpert<Sistema>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Sistema>,
  ISearchExpert
{
  public ExpSistema()
    : base("municipiov1")
  {
  }

  public bool CanActivate(ID id) => true;

  public bool CanActivate(Sistema entity) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDeactivate(Sistema entity) => true;

  public bool CanDelete(ID id) => true;

  public bool CanDelete(Sistema entity) => true;

  public Sistema CreateEntity() => new Sistema();

  public Sistema Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Sistema>("SELECT s.CodiSist, s.DetaSist FROM sistema s;", new System.Func<InfoGovReader, Sistema>(this.readEntity));
  }

  public Sistema readEntity(InfoGovReader dr)
  {
    return new Sistema()
    {
      CodiSist = dr.readInt("CodiSist"),
      DetaSist = dr.readString("DetaSist")
    };
  }

  public Sistema GetEntity(ID id)
  {
    return this.getEntity<Sistema>($"SELECT s.CodiSist, s.DetaSist FROM sistema s WHERE s.CodiSist = '{id.GetString("CodiSist")}';", new System.Func<InfoGovReader, Sistema>(this.readEntity));
  }

  public bool SaveOnDB(Sistema entity) => throw new NotImplementedException();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT s.CodiSist, s.DetaSist FROM sistema s" + (filter == null ? " WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiSist", "Cod. Sistema"),
      new Column("DetaSist", "Sistema", fill: true)
    };
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiSist", "Cod. Sistema", FilterMode.Contains),
      new FilterField("DetaSist", "Sistema", FilterMode.Contains)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiSist", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public Filter getInitialGridFilter() => new Filter();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public List<Column> getSearchColumns() => this.getGridColumns();

  public Sistema getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
