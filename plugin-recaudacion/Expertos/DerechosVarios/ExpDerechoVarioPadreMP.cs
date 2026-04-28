// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.DerechosVarios.ExpDerechoVarioPadreMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.DerechosVarios;

public class ExpDerechoVarioPadreMP : 
  Expert,
  EntityExpert<DerechoVarioPadreMP>,
  IEntityExpert,
  GridExpert,
  SearchExpert<DerechoVarioPadreMP>,
  ISearchExpert
{
  public ExpDerechoVarioPadreMP()
    : base(Modulo.Database)
  {
  }

  public DerechoVarioPadreMP readDerechoVarioPadreMP(InfoGovReader dr)
  {
    return new DerechoVarioPadreMP()
    {
      PeriDvpa = dr.readShort("PeriDvpa"),
      CodiDvpa = dr.readLong("CodiDvpa"),
      DetaDvpa = dr.readString("DetaDvpa")
    };
  }

  public bool CanActivate(ID id) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(DerechoVarioPadreMP entity) => true;

  public bool CanDeactivate(DerechoVarioPadreMP entity) => true;

  public bool CanDelete(DerechoVarioPadreMP entity) => false;

  public DerechoVarioPadreMP CreateEntity() => new DerechoVarioPadreMP();

  public DerechoVarioPadreMP GetEntity(ID id)
  {
    return this.getEntity<DerechoVarioPadreMP>($"SELECT * FROM servdvpa WHERE  PeriDvpa = {id.GetInt("PeriDvpa")} AND CodiDvpa = {id.GetLong("CodiDvpa")};", new System.Func<InfoGovReader, DerechoVarioPadreMP>(this.readDerechoVarioPadreMP));
  }

  public DerechoVarioPadreMP Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<DerechoVarioPadreMP>($"SELECT * FROM servdvpa WHERE PeriDvpa = YEAR(NOW()) {(filter == null ? " AND 1=2 " : filter.sqlAnd(false))};", new System.Func<InfoGovReader, DerechoVarioPadreMP>(this.readDerechoVarioPadreMP));
  }

  public bool SaveOnDB(DerechoVarioPadreMP entity) => throw new NotImplementedException();

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("PeriDvpa", "Periodo", visible: false),
      new Column("CodiDvpa", "Código Padre"),
      new Column("DetaDvpa", "Detalle", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "PeriDvpa", (object) row.Cells[0].Value.ToString());
    gridId.Add((object) "CodiDvpa", (object) row.Cells[1].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiDvpa", "Código Padre", FilterMode.Equal),
      new FilterField("DetaDvpa", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable($"SELECT * FROM servdvpa WHERE PeriDvpa = YEAR(NOW()) {(filter == null ? " AND 1=2" : filter.sqlAnd(false))};");
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public DerechoVarioPadreMP getSearchEntity(DataGridViewRow row)
  {
    return this.GetEntity(this.getGridID(row));
  }

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
