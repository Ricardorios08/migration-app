// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEnteReca
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

internal class ExpEnteReca : 
  Expert,
  EntityExpert<EnteRecaudador>,
  IEntityExpert,
  GridExpert,
  SearchExpert<EnteRecaudador>,
  ISearchExpert
{
  public ExpEnteReca()
    : base(Modulo.Database)
  {
  }

  public bool CanActivate(ID id) => throw new NotImplementedException();

  public bool CanActivate(EnteRecaudador entity) => throw new NotImplementedException();

  public bool CanDeactivate(ID id) => throw new NotImplementedException();

  public bool CanDeactivate(EnteRecaudador entity) => throw new NotImplementedException();

  public bool CanDelete(ID id) => throw new NotImplementedException();

  public bool CanDelete(EnteRecaudador entity) => throw new NotImplementedException();

  public EnteRecaudador CreateEntity() => throw new NotImplementedException();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT * FROM infogov.entereca " + (filter == null ? "where 1=2;" : filter.sqlWOL()));
  }

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public EnteRecaudador Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<EnteRecaudador>("SELECT * FROM infogov.entereca " + (filter == null ? " WHERE 1=2 " : filter.sqlWOL()), new System.Func<InfoGovReader, EnteRecaudador>(this.readEntity));
  }

  public EnteRecaudador GetEntity(ID id)
  {
    return this.getEntity<EnteRecaudador>("SELECT * FROM infogov.entereca WHERE CodiEnre = " + id.GetInt("CodiEnre").ToString(), new System.Func<InfoGovReader, EnteRecaudador>(this.readEntity));
  }

  public EnteRecaudador readEntity(InfoGovReader dr)
  {
    return new EnteRecaudador()
    {
      CodiEnre = dr.readInt("CodiEnre"),
      DetaEnre = dr.readString("DetaEnre"),
      NumeAcpa = dr.readInt("NumeAcpa")
    };
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiEnre", "CodiEnre", visible: false),
      new Column("DetaEnre", "Ente Recaudador", fill: true),
      new Column("NumeAcpa", "Grupo")
    };
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("DetaEnre", "Detalle Ente", FilterMode.Contains, true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiEnre", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public Filter getInitialGridFilter() => new Filter();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public List<Column> getSearchColumns() => this.getGridColumns();

  public EnteRecaudador getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public bool SaveOnDB(EnteRecaudador entity) => throw new NotImplementedException();
}
