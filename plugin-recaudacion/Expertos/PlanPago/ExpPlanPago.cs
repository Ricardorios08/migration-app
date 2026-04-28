// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.PlanPago.ExpPlanPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.PlanPago;

public class ExpPlanPago : 
  Expert,
  EntityExpert<InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago>,
  IEntityExpert,
  GridExpert,
  SearchExpert<InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago>,
  ISearchExpert
{
  public ExpPlanPago()
    : base(Modulo.Database)
  {
  }

  public bool CanActivate(ID id) => true;

  public bool CanActivate(InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago entity) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDeactivate(InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago entity) => true;

  public bool CanDelete(ID id) => true;

  public bool CanDelete(InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago entity) => true;

  public InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago CreateEntity() => new InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago();

  public InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago Find(
    Filter filter,
    bool onlyActive)
  {
    return this.findEntity<InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago>($"SELECT fp.*, o.DetaOfic, IFNULL(p.DetaPers, '---') DetaPers FROM facipago fp INNER JOIN oficina o ON o.CodiOfic = fp.CodiOfic LEFT JOIN infogov.persona p ON p.CucuPers = fp.CucuPers WHERE fp.EstaFapa = 'Activa' {filter.sqlAnd(false)} ORDER BY fp.CodiFapa DESC LIMIT 250;", new System.Func<InfoGovReader, InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago>(this.readEntity));
  }

  public InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago GetEntity(ID id)
  {
    return this.getEntity<InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago>($"SELECT fp.*, o.DetaOfic, IFNULL(p.DetaPers, '---') DetaPers FROM facipago fp INNER JOIN oficina o ON o.CodiOfic = fp.CodiOfic LEFT JOIN infogov.persona p ON p.CucuPers = fp.CucuPers WHERE fp.EstaFapa = 'Activa' AND fp.CodiFapa = {id.GetLong("CodiFapa")} ORDER BY fp.CodiFapa DESC LIMIT 250;", new System.Func<InfoGovReader, InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago>(this.readEntity));
  }

  public bool SaveOnDB(InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago entity) => false;

  public InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago readEntity(InfoGovReader dr)
  {
    InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago enti = new InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago();
    enti.CodiFapa = dr.readLong("CodiFapa");
    enti.CucuPers = dr.readLong("CucuPers");
    enti.DetaPers = dr.readString("DetaPers");
    enti.CacuFapa = dr.readShort("CacuFapa");
    enti.CodiOfic = dr.readShort("CodiOfic");
    enti.DetaOfic = dr.readString("DetaOfic");
    enti.CuenCtct = dr.readString("CuenCtct");
    enti.EstaFapa = dr.readString("EstaFapa");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable($"SELECT fp.*, o.DetaOfic, IFNULL(p.DetaPers, '---') DetaPers FROM facipago fp INNER JOIN oficina o ON o.CodiOfic = fp.CodiOfic LEFT JOIN infogov.persona p ON p.CucuPers = fp.CucuPers WHERE fp.EstaFapa = 'Activa' {(filter == null ? "AND 1=2" : filter.sqlAnd(false))} ORDER BY fp.CodiFapa DESC LIMIT 250;");
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiFapa", "N° Facilidad", width: 80 /*0x50*/),
      new Column("DetaOfic", "Oficina", width: 60),
      new Column("CuenCtct", "Cuenta", width: 80 /*0x50*/),
      new Column("DetaPers", "Titular", fill: true),
      new Column("CacuFapa", "Cuotas", width: 60),
      new Column("EstaFapa", "Estado", width: 80 /*0x50*/)
    };
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("fp.CodiFapa", "N° Facilidad", FilterMode.Equal),
      new FilterField("fp.CuenCtct", "Cuenta", FilterMode.Equal),
      new FilterField("fp.CucuPers", "Cuil", FilterMode.Contains),
      new FilterField("p.DetaPers", "Titular", FilterMode.Contains)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiFapa", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public List<Column> getSearchColumns() => this.getGridColumns();

  public InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago getSearchEntity(DataGridViewRow row)
  {
    return this.GetEntity(this.getGridID(row));
  }

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();
}
