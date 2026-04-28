// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpTipoFacilidadPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpTipoFacilidadPago : 
  Expert,
  ABMExpert,
  GridExpert,
  EntityExpert<TipoFacilidadPago>,
  IEntityExpert,
  SearchExpert<TipoFacilidadPago>,
  ISearchExpert
{
  public ExpTipoFacilidadPago()
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
        gridData.Add((Entity) this.readTipoFacilidadPago(dr));
    }
    dr.Close();
    return gridData;
  }

  private TipoFacilidadPago readTipoFacilidadPago(InfoGovReader dr)
  {
    TipoFacilidadPago tipoFacilidadPago = new TipoFacilidadPago();
    tipoFacilidadPago.CodiTifa = dr.readShort("CodiTifa");
    tipoFacilidadPago.DetaTifa = dr.readString("DetaTifa");
    tipoFacilidadPago.readAuditory(dr);
    return tipoFacilidadPago;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public bool CanActivate(ID id) => true;

  public bool CanActivate(TipoFacilidadPago entity) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDeactivate(TipoFacilidadPago entity) => true;

  public bool CanDelete(ID id) => true;

  public bool CanDelete(TipoFacilidadPago entity) => true;

  public TipoFacilidadPago CreateEntity() => new TipoFacilidadPago();

  public TipoFacilidadPago Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<TipoFacilidadPago>($"SELECT * FROM tipofapa WHERE BajaFeho IS NULL {filter.sqlAnd(false)};", new System.Func<InfoGovReader, TipoFacilidadPago>(this.readEntity));
  }

  public TipoFacilidadPago GetEntity(ID id)
  {
    return this.getEntity<TipoFacilidadPago>($"SELECT * FROM tipofapa WHERE BajaFeho IS NULL AND CodiTifa={id.GetShort("CodiTifa")};", new System.Func<InfoGovReader, TipoFacilidadPago>(this.readEntity));
  }

  public bool SaveOnDB(TipoFacilidadPago entity) => false;

  public TipoFacilidadPago readEntity(InfoGovReader dr)
  {
    TipoFacilidadPago enti = new TipoFacilidadPago();
    enti.CodiTifa = dr.readShort("CodiTifa");
    enti.DetaTifa = dr.readString("DetaTifa");
    enti.TipoTifa = dr.readString("TipoTifa");
    enti.MecaTifa = dr.readString("MecaTifa");
    enti.InteTifa = dr.readDecimal("InteTifa");
    enti.MomiTifa = dr.readDecimal("MomiTifa");
    enti.DecaTifa = dr.readDecimal("DecaTifa");
    enti.DereTifa = dr.readDecimal("DereTifa");
    enti.CumiTifa = dr.readShort("CumiTifa");
    enti.CumaTifa = dr.readShort("CumaTifa");
    enti.ImmiTifa = dr.readDecimal("ImmiTifa");
    enti.ExtrTifa = dr.readString("ExtrTifa");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable($"SELECT * FROM tipofapa WHERE BajaFeho IS NULL {(filter == null ? "AND 1=2" : filter.sqlAnd(false))};");
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiTifa", "Código", width: 60),
      new Column("DetaTifa", "Detalle", fill: true),
      new Column("CumiTifa", "Min. Cuotas", width: 55),
      new Column("CumaTifa", "Max. Cuotas", width: 55),
      new Column("ImmiTifa", "$ Min.", width: 70, Formato: "C2")
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

  public TipoFacilidadPago getSearchEntity(DataGridViewRow row)
  {
    return this.GetEntity(this.getGridID(row));
  }

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();
}
