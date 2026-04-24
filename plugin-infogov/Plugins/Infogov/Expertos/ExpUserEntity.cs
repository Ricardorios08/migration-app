// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpUserEntity
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

public class ExpUserEntity : 
  Expert,
  EntityExpert<UserEntity>,
  IEntityExpert,
  GridExpert,
  SearchExpert<UserEntity>,
  ISearchExpert
{
  public ExpUserEntity()
    : base("infogov")
  {
  }

  public bool CanActivate(ID id) => true;

  public bool CanActivate(UserEntity entity) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDeactivate(UserEntity entity) => true;

  public bool CanDelete(ID id) => true;

  public bool CanDelete(UserEntity entity) => true;

  public UserEntity CreateEntity() => new UserEntity();

  public UserEntity Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<UserEntity>("SELECT u.CodiUsua, IFNULL(p.DetaPers,u.DetaUsua) DetaUsua FROM infogov.usuario u LEFT JOIN infogov.persona p ON p.CucuPers = u.CucuPers WHERE u.BajaFeho IS NULL;", new System.Func<InfoGovReader, UserEntity>(this.readEntity));
  }

  public UserEntity readEntity(InfoGovReader dr)
  {
    return new UserEntity()
    {
      CodiUsua = dr.readString("CodiUsua"),
      DetaUsua = dr.readString("DetaUsua")
    };
  }

  public UserEntity GetEntity(ID id)
  {
    return this.getEntity<UserEntity>($"SELECT u.CodiUsua, IFNULL(p.DetaPers,u.DetaUsua) DetaUsua FROM infogov.usuario u LEFT JOIN infogov.persona p ON p.CucuPers = u.CucuPers WHERE u.CodiUsua= '{id.GetString("CodiUsua")}';", new System.Func<InfoGovReader, UserEntity>(this.readEntity));
  }

  public bool SaveOnDB(UserEntity entity) => throw new NotImplementedException();

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiUsua", "Usuario"),
      new Column("DetaUsua", "Detalle", fill: true)
    };
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiUsua", "Cod. Usuario", FilterMode.Contains),
      new FilterField("DetaUsua", "Det. Usuario", FilterMode.Contains)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiUsua", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT u.CodiUsua, IFNULL(p.DetaPers,u.DetaUsua) DetaUsua FROM infogov.usuario u LEFT JOIN infogov.persona p ON p.CucuPers = u.CucuPers " + (filter == null ? " WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public UserEntity getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
