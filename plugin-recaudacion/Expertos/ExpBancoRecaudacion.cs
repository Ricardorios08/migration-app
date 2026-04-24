// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpBancoRecaudacion
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

public class ExpBancoRecaudacion : 
  Expert,
  EntityExpert<BancoRecaudacion>,
  IEntityExpert,
  GridExpert,
  SearchExpert<BancoRecaudacion>,
  ISearchExpert,
  ABMExpert
{
  public ExpBancoRecaudacion()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("...");
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readBancoRecaudacion(dr));
    }
    dr.Close();
    return gridData;
  }

  private BancoRecaudacion readBancoRecaudacion(InfoGovReader dr)
  {
    BancoRecaudacion bancoRecaudacion = new BancoRecaudacion();
    bancoRecaudacion.CodiBanc = dr.readInt("CodiBanc");
    bancoRecaudacion.DetaBanc = dr.readString("DetaBanc");
    bancoRecaudacion.readAuditory(dr);
    return bancoRecaudacion;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public BancoRecaudacion CreateEntity() => new BancoRecaudacion();

  public BancoRecaudacion GetEntity(ID id)
  {
    return this.getEntity<BancoRecaudacion>($"SELECT * FROM bancoreca WHERE CodiBanc = {id.GetInt("CodiBanc").ToString()};", new System.Func<InfoGovReader, BancoRecaudacion>(this.readBancoRecaudacion));
  }

  public bool CanActivate(ID id) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(BancoRecaudacion entity) => true;

  public bool CanDeactivate(BancoRecaudacion entity) => true;

  public bool CanDelete(BancoRecaudacion entity) => true;

  public BancoRecaudacion Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<BancoRecaudacion>("SELECT * FROM recaudacion.bancoreca " + (filter == null ? " WHERE 1=2" : filter.sqlWOL()), new System.Func<InfoGovReader, BancoRecaudacion>(this.readBancoRecaudacion));
  }

  public bool SaveOnDB(BancoRecaudacion entity) => throw new NotImplementedException();

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiBanc", "CodiBanc"),
      new Column("DetaBanc", "Det. Banco", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiBanc", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiBanc", "Código", FilterMode.Equal),
      new FilterField("DetaBanc", "Det. Banco", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT * FROM recaudacion.bancoreca" + (filter == null ? "where 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public BancoRecaudacion getSearchEntity(DataGridViewRow row)
  {
    return this.GetEntity(this.getGridID(row));
  }

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
