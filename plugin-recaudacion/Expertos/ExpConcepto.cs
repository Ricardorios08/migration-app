// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpConcepto
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

public class ExpConcepto : 
  Expert,
  ABMExpert,
  EntityExpert<Concepto>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Concepto>,
  ISearchExpert
{
  public ExpConcepto()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM concepto" + (filter == null ? "" : filter.sqlWOL()));
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readConcepto(dr));
    }
    dr.Close();
    return gridData;
  }

  public Concepto readConcepto(InfoGovReader dr)
  {
    Concepto concepto = new Concepto();
    concepto.PeriInfo = dr.readInt("PeriInfo");
    concepto.CodiConc = dr.readString("CodiConc");
    concepto.VigeConc = dr.readInt("VigeConc") == 1;
    concepto.DetaConc = dr.readString("DetaConc");
    concepto.AforConc = dr.readInt("AforConc") == 1;
    concepto.DevcConc = dr.readString("DevcConc").Trim().ToUpper() == "SI";
    concepto.DevsConc = dr.readString("DevsConc").Trim().ToUpper() == "SI";
    concepto.IngrConc = dr.readString("IngrConc");
    concepto.ActiConc = dr.readString("ActiConc");
    concepto.PatrConc = dr.readString("PatrConc");
    concepto.TiafConc = dr.readShort("TiafConc");
    concepto.TipaConc = dr.readShort("TipaConc");
    if (PARAMS.Municipio != "Tunuyán" && PARAMS.Municipio != "SanMartín")
      concepto.AdicConc = dr.readShort("AdicConc");
    return concepto;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public bool CanActivate(ID id) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(Concepto entity) => true;

  public bool CanDeactivate(Concepto entity) => true;

  public bool CanDelete(Concepto entity) => true;

  public Concepto CreateEntity() => new Concepto();

  public Concepto GetEntity(ID id)
  {
    return this.getEntity<Concepto>($"SELECT * FROM recaudacion.concepto WHERE PeriInfo = {id.GetInt("PeriInfo").ToString()} AND CodiConc = '{id.GetString("CodiConc")}';", new System.Func<InfoGovReader, Concepto>(this.readConcepto));
  }

  public Concepto Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Concepto>("SELECT * FROM recaudacion.concepto " + (filter == null ? " WHERE 1=2" : filter.sqlWOL()), new System.Func<InfoGovReader, Concepto>(this.readConcepto));
  }

  public bool SaveOnDB(Concepto entity) => throw new NotImplementedException();

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("PeriInfo", "Periodo"),
      new Column("CodiConc", "Código"),
      new Column("DetaConc", "Det. Concepto", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "PeriInfo", (object) row.Cells[0].Value.ToString());
    gridId.Add((object) "CodiConc", (object) row.Cells[1].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiConc", "Código Concepto", FilterMode.Equal),
      new FilterField("DetaConc", "Det. Concepto", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT * FROM recaudacion.concepto" + (filter == null ? "where 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Concepto getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
