// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpCuentaCome
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpCuentaCome : 
  Expert,
  GridExpert,
  EntityExpert<CuentaCome>,
  IEntityExpert,
  SearchExpert<CuentaCome>,
  ISearchExpert
{
  public ExpCuentaCome()
    : base(Modulo.Database)
  {
  }

  public bool CanActivate(ID id) => true;

  public bool CanActivate(CuentaCome entity) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDeactivate(CuentaCome entity) => true;

  public bool CanDelete(ID id) => true;

  public bool CanDelete(CuentaCome entity) => true;

  public CuentaCome CreateEntity() => new CuentaCome();

  public CuentaCome Find(Filter filter, bool onlyActive)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT c.CodiCome, c.CucuPers, CONCAT(p.CucuPers, ' - ', p.DetaPers) DetaPers, RazoCome, CONCAT(IFNULL(ca.DetaCall,''), ' Nº ', CONVERT(c.NucaCome, INTEGER), ' - ', IFNULL(bar.DetaBarr, '')) DireCome");
    stringBuilder.AppendLine("FROM comercio c");
    stringBuilder.AppendLine("INNER JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN infogov.calle ca ON ca.CodiCall = c.CodiCall");
    stringBuilder.AppendLine("LEFT JOIN infogov.barrio bar ON bar.CodiBarr = c.CodiBarr");
    stringBuilder.AppendLine("WHERE c.FebaCome IS NULL AND c.BajaFeho IS NULL");
    stringBuilder.AppendLine(filter.sqlAnd(false) ?? "");
    return this.findEntity<CuentaCome>(stringBuilder.ToString(), new System.Func<InfoGovReader, CuentaCome>(this.readEntity));
  }

  public CuentaCome GetEntity(ID id)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT c.CodiCome, c.CucuPers, CONCAT(p.CucuPers, ' - ', p.DetaPers) DetaPers, RazoCome, CONCAT(IFNULL(ca.DetaCall,''), ' Nº ', CONVERT(c.NucaCome, INTEGER), ' - ', IFNULL(bar.DetaBarr, '')) DireCome");
    stringBuilder.AppendLine("FROM comercio c");
    stringBuilder.AppendLine("INNER JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN infogov.calle ca ON ca.CodiCall = c.CodiCall");
    stringBuilder.AppendLine("LEFT JOIN infogov.barrio bar ON bar.CodiBarr = c.CodiBarr");
    stringBuilder.AppendLine("WHERE c.FebaCome IS NULL AND c.BajaFeho IS NULL");
    stringBuilder.AppendLine($"AND c.CodiCome = {id.GetInt("CodiCome")};");
    return this.getEntity<CuentaCome>(stringBuilder.ToString(), new System.Func<InfoGovReader, CuentaCome>(this.readEntity));
  }

  public bool SaveOnDB(CuentaCome entity) => false;

  public CuentaCome readEntity(InfoGovReader dr)
  {
    CuentaCome enti = new CuentaCome();
    enti.CodiCome = dr.readInt("CodiCome");
    enti.CucuPers = dr.readLong("CucuPers");
    enti.DetaPers = dr.readString("DetaPers");
    enti.RazoCome = dr.readString("RazoCome");
    enti.DireCome = dr.readString("DireCome");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public DataTable filterGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT c.CodiCome, c.CucuPers, CONCAT(p.CucuPers, ' - ', p.DetaPers) DetaPers, RazoCome, CONCAT(IFNULL(ca.DetaCall,''), ' Nº ', CONVERT(c.NucaCome, INTEGER), ' - ', IFNULL(bar.DetaBarr, '')) DireCome");
    stringBuilder.AppendLine("FROM comercio c");
    stringBuilder.AppendLine("INNER JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN infogov.calle ca ON ca.CodiCall = c.CodiCall");
    stringBuilder.AppendLine("LEFT JOIN infogov.barrio bar ON bar.CodiBarr = c.CodiBarr");
    stringBuilder.AppendLine("WHERE c.FebaCome IS NULL AND c.BajaFeho IS NULL");
    if (filter == null)
      stringBuilder.AppendLine("AND 1=2");
    else
      stringBuilder.AppendLine(filter.sqlAnd(false) ?? "");
    return this.conn.createDataTable(stringBuilder.ToString());
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiCome", "Código"),
      new Column("DetaPers", "Titular", fill: true)
    };
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiCome", "Código", FilterMode.Equal),
      new FilterField("DetaPers", "Titular", FilterMode.Contains)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiCome", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public List<Column> getSearchColumns() => this.getGridColumns();

  public CuentaCome getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();
}
