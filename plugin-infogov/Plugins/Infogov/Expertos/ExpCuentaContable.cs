// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpCuentaContable
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpCuentaContable : 
  Expert,
  EntityExpert<CuentaContable>,
  IEntityExpert,
  GridExpert,
  SearchExpert<CuentaContable>,
  ISearchExpert
{
  public ExpCuentaContable()
    : base("infogov")
  {
  }

  public CuentaContable CreateEntity() => new CuentaContable();

  public CuentaContable GetEntity(ID id)
  {
    if (id.Count == 1)
      id.Add((object) "PeriInfo", (object) PARAMS.Periodo);
    return this.getEntity<CuentaContable>($"SELECT c.*, IFNULL(tc.DetaTicu,'') DetaTicu, contpres.fnCucoLike(c.CodiCuco) CucoLike FROM infogov.cuentacontable c  LEFT JOIN contpres.tipocuco tc ON c.CodiTicu = tc.CodiTicu  WHERE c.PeriInfo = {id.GetInt("PeriInfo").ToString()} AND c.CodiCuco = '{id.GetString("CodiCuco")}'", new System.Func<InfoGovReader, CuentaContable>(this.readEntity));
  }

  public CuentaContable readEntity(InfoGovReader dr)
  {
    CuentaContable enti = new CuentaContable();
    enti.PeriInfo = dr.readInt("PeriInfo");
    enti.CodiCuco = dr.readString("CodiCuco");
    enti.DetaCuco = dr.readString("DetaCuco");
    enti.ImpuCuco = dr.readBool("ImpuCuco");
    enti.CodiTicu = dr.readString("CodiTicu");
    enti.CodiReca = PARAMS.Municipio == "Maipú" ? dr.readString("CodiReca") : "";
    enti.DebeCuco = dr.readString("DebeCuco");
    enti.HabeCuco = dr.readString("HabeCuco");
    enti.SaldCuco = dr.readString("SaldCuco");
    enti.DescCuco = dr.readString("DescCuco");
    enti.CucoLike = dr.readString("CucoLike");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => this.hasPermissionFor(typeof (CuentaContable), ActionMode.Delete);

  public bool CanActivate(CuentaContable entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(CuentaContable entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(CuentaContable entity) => this.CanDelete(entity.id);

  public CuentaContable Find(Filter filter, bool onlyActive)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT c.PeriInfo, c.CodiCuco");
    stringBuilder.AppendLine(", c.DetaCuco, c.CodiTicu, c.CodiReca, c.DebeCuco, c.HabeCuco, c.SaldCuco, c.DescCuco, c.AltaUsua, c.AltaFeho, c.ModiUsua, c.ModiFeho, c.BajaUsua, c.BajaFeho, c.BajaMoti");
    stringBuilder.AppendLine(", c.ImpuCuco");
    stringBuilder.AppendLine(", IFNULL(tc.DetaTicu,'') DetaTicu");
    stringBuilder.AppendLine(", contpres.fnCucoLike(c.CodiCuco) CucoLike");
    stringBuilder.AppendLine("FROM infogov.cuentacontable c");
    stringBuilder.AppendLine("LEFT JOIN contpres.tipocuco tc ON c.CodiTicu = tc.CodiTicu");
    stringBuilder.AppendLine(filter.sqlWOL());
    return this.findEntity<CuentaContable>(stringBuilder.ToString(), new System.Func<InfoGovReader, CuentaContable>(this.readEntity));
  }

  public bool SaveOnDB(CuentaContable entity)
  {
    return this.conn.executeNonQuery("" + this.getSQL(entity));
  }

  public string getSQL(CuentaContable entity)
  {
    string sql = "";
    switch (entity.status)
    {
      default:
        return sql;
    }
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("PeriInfo", "Periodo", visible: false),
      new Column("CodiCuco", "Código"),
      new Column("DetaCuco", "Título", fill: true),
      new Column("ImpuCuco", "imputable", ColumnType.CheckBoxColumn),
      new Column("CodiTicu", "Tipo"),
      new Column("DetaTicu", "Tipo Cuenta Contable", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "PeriInfo", (object) row.Cells[0].Value.ToString());
    gridId.Add((object) "CodiCuco", (object) row.Cells[1].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiCuco", "Cuenta", FilterMode.StartsWith),
      new FilterField("DetaCuco", "Detalle", FilterMode.Contains, true),
      new FilterField("c.CodiTicu", "Tipo Cuenta (código)", FilterMode.StartsWith, useHaving: true),
      new FilterField("DetaTicu", "Tipo Cuenta (detalle)", FilterMode.Contains, useHaving: true)
    };
  }

  public Filter getInitialGridFilter()
  {
    return new Filter()
    {
      Restrictions = {
        new FilterItem("PeriInfo", "Periodo", FilterMode.Equal, PARAMS.Periodo.ToString())
      }
    };
  }

  public DataTable filterGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(" SELECT c.PeriInfo, c.CodiCuco");
    stringBuilder.AppendLine(", c.DetaCuco, c.CodiTicu, c.AltaUsua, c.AltaFeho, c.ModiUsua, c.ModiFeho, c.BajaUsua, c.BajaFeho, c.BajaMoti");
    stringBuilder.AppendLine(", c.ImpuCuco");
    stringBuilder.AppendLine(", IFNULL(tc.DetaTicu,'') DetaTicu");
    stringBuilder.AppendLine(", contpres.fnCucoLike(c.CodiCuco) CucoLike");
    stringBuilder.AppendLine(" FROM infogov.cuentacontable c");
    stringBuilder.AppendLine(" LEFT JOIN contpres.tipocuco tc ON c.CodiTicu = tc.CodiTicu");
    if (filter == null)
      stringBuilder.AppendLine("WHERE 1=2;");
    else
      stringBuilder.AppendLine(filter.sqlWOL());
    return this.conn.createDataTable(stringBuilder.ToString());
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public CuentaContable getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  internal List<TipoCuentaContable> getTiposCuenta()
  {
    List<TipoCuentaContable> tiposCuenta = new List<TipoCuentaContable>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM contpres.tipocuco;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        tiposCuenta.Add(new TipoCuentaContable()
        {
          CodiTicu = nfoGovReader.readString("CodiTicu"),
          DetaTicu = nfoGovReader.readString("DetaTicu")
        });
    }
    nfoGovReader?.Close();
    return tiposCuenta;
  }

  public int getCantCuentas(string cuco)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM cuentaconta WHERE CodiCuco LIKE '{cuco}%' AND PeriInfo = {PARAMS.Periodo.ToString()}");
  }
}
