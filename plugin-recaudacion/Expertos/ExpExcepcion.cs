// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpExcepcion
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

public class ExpExcepcion : 
  Expert,
  ABMExpert,
  EntityExpert<Excepcion>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Excepcion>,
  ISearchExpert
{
  public ExpExcepcion()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM recaudacion.excepcion" + (filter == null ? "" : filter.sqlWOL()));
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readExcepcion(dr));
    }
    dr.Close();
    return gridData;
  }

  private Excepcion readExcepcion(InfoGovReader dr)
  {
    return new Excepcion()
    {
      CodiExce = dr.readInt("CodiExce"),
      DetaExce = dr.readString("DetaExce"),
      PorcExce = dr.readDecimal("PorcExce"),
      TipoExce = dr.readString("TipoExce")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    Excepcion excepcion = (Excepcion) data;
    excepcion.CodiExce = this.nextInt("CodiExce", "excepcion");
    return this.conn.executeNonQuery($"INSERT INTO excepcion (CodiExce, DetaExce, PorcExce, TipoExce, AltaUsua) VALUES({excepcion.CodiExce.ToString()}, '{excepcion.DetaExce}', {this.sqlDecimal(excepcion.PorcExce)}, '{excepcion.TipoExce}', '{this.usuario}')");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    Excepcion excepcion1 = (Excepcion) enti;
    Excepcion excepcion2 = (Excepcion) data;
    return this.conn.executeNonQuery($"UPDATE excepcion SET DetaExce = '{excepcion2.DetaExce}', PorcExce = {this.sqlDecimal(excepcion2.PorcExce)}, TipoExce = '{excepcion2.TipoExce}', ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CodiExce ={excepcion1.CodiExce.ToString()}");
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public Excepcion CreateEntity() => new Excepcion();

  public Excepcion GetEntity(ID id)
  {
    return this.getEntity<Excepcion>($"SELECT *  FROM excepcion  WHERE CodiExce={id.GetInt("CodiExce").ToString()};", new System.Func<InfoGovReader, Excepcion>(this.readEntity));
  }

  public bool CanActivate(ID id) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(Excepcion entity) => true;

  public bool CanDeactivate(Excepcion entity) => true;

  public bool CanDelete(Excepcion entity) => true;

  public Excepcion Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Excepcion>("SELECT * FROM excepcion" + filter.sqlWOL(), new System.Func<InfoGovReader, Excepcion>(this.readEntity));
  }

  private Excepcion readEntity(InfoGovReader dr)
  {
    return new Excepcion()
    {
      CodiExce = (int) dr.readShort("CodiExce"),
      DetaExce = dr.readString("DetaExce"),
      PorcExce = dr.readDecimal("PorcExce"),
      TipoExce = dr.readString("TipoExce")
    };
  }

  public bool SaveOnDB(Excepcion entity) => throw new NotImplementedException();

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiExce", "Codigo"),
      new Column("DetaExce", "Detalle", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiExce", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiExce", "Codigo", FilterMode.Equal),
      new FilterField("DetaExce", "Detalle", FilterMode.Contains)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable(" SELECT * FROM excepcion" + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Excepcion getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
