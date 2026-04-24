// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpUbicacionFisica
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

public class ExpUbicacionFisica : 
  Expert,
  EntityExpert<UbicacionFisica>,
  IEntityExpert,
  GridExpert,
  SearchExpert<UbicacionFisica>,
  ISearchExpert
{
  public ExpUbicacionFisica()
    : base(Modulo.Database)
  {
  }

  public bool CanActivate(ID id) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(UbicacionFisica entity) => true;

  public bool CanDeactivate(UbicacionFisica entity) => true;

  public bool CanDelete(UbicacionFisica entity) => true;

  public UbicacionFisica CreateEntity() => new UbicacionFisica();

  public UbicacionFisica Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<UbicacionFisica>("SELECT * FROM contpres.ubicfisica " + (filter == null ? " WHERE 1=2" : filter.sqlWOL()), new System.Func<InfoGovReader, UbicacionFisica>(this.readEntity));
  }

  public UbicacionFisica readEntity(InfoGovReader dr)
  {
    UbicacionFisica enti = new UbicacionFisica();
    enti.IdUbfi = dr.readInt("IdUbfi");
    enti.DetaUbfi = dr.readString("DetaUbfi");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public UbicacionFisica GetEntity(ID id)
  {
    return this.getEntity<UbicacionFisica>($"SELECT * FROM contpres.ubicfisica WHERE IdUbfi = {id.GetInt("IdUbfi").ToString()};", new System.Func<InfoGovReader, UbicacionFisica>(this.readEntity));
  }

  public bool SaveOnDB(UbicacionFisica entity) => throw new NotImplementedException();

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("IdUbfi", "Código de la Ubicación Física"),
      new Column("DetaUbfi", "Detalle de la Ubicación Física", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "IdUbfi", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("IdUbfi", "Código de la Ubicación Física", FilterMode.Equal),
      new FilterField("DetaUbfi", "Detalle de la Ubicación Física", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable(" select * from contpres.ubicfisica" + (filter == null ? "where 1=2;" : filter.sqlWOL(true)));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public UbicacionFisica getSearchEntity(DataGridViewRow row)
  {
    return this.GetEntity(this.getGridID(row));
  }

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
