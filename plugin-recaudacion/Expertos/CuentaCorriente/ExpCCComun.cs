// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente.ExpCCComun
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;

public class ExpCCComun : 
  Expert,
  EntityExpert<CCComun>,
  IEntityExpert,
  GridExpert,
  SearchExpert<CCComun>,
  ISearchExpert
{
  private short CodiOficActual = 0;

  public ExpCCComun()
    : base(Modulo.Database)
  {
  }

  public CCComun readCCComun(InfoGovReader dr)
  {
    CCComun ccComun = new CCComun();
    ccComun.CodiOfic = dr.readShort("CodiOfic");
    switch (this.CodiOficActual)
    {
      case 1:
      case 2:
      case 4:
      case 6:
      case 7:
      case 99:
        ccComun.CuenCtct = dr.readLong("CuenCtct").ToString();
        break;
      case 3:
      case 5:
        ccComun.CuenCtct = dr.readString("CuenCtct");
        break;
    }
    ccComun.CucuPers = dr.readLong("CucuPers");
    ccComun.DetaPers = dr.readString("DetaPers");
    return ccComun;
  }

  private void EstablecerCodiOficActual(Filter filter)
  {
    if (filter == null || !filter.Items.Exists((Predicate<FilterItem>) (x => x.Field == "CodiOfic")))
      return;
    this.CodiOficActual = short.Parse(filter.Items.Find((Predicate<FilterItem>) (x => x.Field == "CodiOfic")).Value);
  }

  private void EstablecerClaveCuenta(Filter filter)
  {
    if (filter == null || !filter.Items.Exists((Predicate<FilterItem>) (x => x.Name == "Cuenta")))
      return;
    string field = string.Empty;
    switch (this.CodiOficActual)
    {
      case 1:
        field = "i.CodiInmu";
        break;
      case 2:
        field = "c.CodiCome";
        break;
      case 3:
        field = "r.CuenCtct";
        break;
      case 4:
        field = "d.CodiDifu";
        break;
      case 5:
        field = "t.CodiTran";
        break;
      case 6:
        field = "c.CodiCome";
        break;
      case 7:
        field = "c.CodiCome";
        break;
      case 99:
        field = "p.CucuPers";
        break;
    }
    filter.Items.Add(new FilterItem(field, "Cuenta", FilterMode.Equal, filter.Items.Find((Predicate<FilterItem>) (x => x.Name == "Cuenta")).Value));
    filter.Items.RemoveAt(filter.Items.IndexOf(filter.Items.Find((Predicate<FilterItem>) (x => x.Name == "Cuenta"))));
  }

  private Filter ClonarFiltro(Filter filter)
  {
    if (filter == null)
      return (Filter) null;
    Filter filter1 = new Filter();
    filter1.Items = filter.Items != null ? new List<FilterItem>((IEnumerable<FilterItem>) filter.Items) : new List<FilterItem>();
    filter1.Items.RemoveAll((Predicate<FilterItem>) (i => i.Field == "CodiOfic"));
    filter1.condExtra = filter.condExtra;
    return filter1;
  }

  private string GenerarSqlBusqueda(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.EstablecerCodiOficActual(filter);
    this.EstablecerClaveCuenta(filter);
    Filter filter1 = this.ClonarFiltro(filter);
    switch (this.CodiOficActual)
    {
      case 1:
        stringBuilder.AppendLine($"SELECT {this.CodiOficActual} CodiOfic, i.CodiInmu CuenCtct, i.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine(", fnDomiCuenCtct(1, i.CodiInmu, 1) Domicilio");
        stringBuilder.AppendLine("FROM inmueble i");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = i.CucuPers");
        if (filter != null && filter.Items.Exists((Predicate<FilterItem>) (x => x.Field.StartsWith("domic."))))
          stringBuilder.AppendLine($"INNER JOIN domicilio domic ON domic.CodiTido = 1 AND domic.CodiCome = i.CodiInmu AND domic.CodiOfic = {this.CodiOficActual}");
        stringBuilder.AppendLine((filter1 == null ? "WHERE 1=2" : filter1.sqlWOL(wdotcomma: false)) ?? "");
        stringBuilder.AppendLine("GROUP BY i.CodiInmu");
        break;
      case 2:
        stringBuilder.AppendLine($"SELECT {this.CodiOficActual} CodiOfic, c.CodiCome CuenCtct, c.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine(", fnDomiCuenCtct(2, c.CodiCome, 1) Domicilio");
        stringBuilder.AppendLine("FROM comercio c");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
        if (filter != null && filter.Items.Exists((Predicate<FilterItem>) (x => x.Field.StartsWith("domic."))))
          stringBuilder.AppendLine($"INNER JOIN domicilio domic ON domic.CodiTido = 1 AND domic.CodiCome = c.CodiCome AND domic.CodiOfic = {this.CodiOficActual}");
        stringBuilder.AppendLine((filter1 == null ? "WHERE 1=2" : filter1.sqlWOL(wdotcomma: false)) ?? "");
        stringBuilder.AppendLine("GROUP BY c.CodiCome");
        break;
      case 3:
        stringBuilder.AppendLine($"SELECT {this.CodiOficActual} CodiOfic, r.CuenCtct, r.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine(", IF(p.CucuPers IS NULL, 'Sin Datos Domicilio', CONCAT(p.DecrPers, ' N° ', p.NumePers, ' | Manz/Casa: ', p.ManzPers, ' | Piso: ', p.PisoPers, ' | Lote: ', p.LotePers, ' | Depto ', p.DptoPers)) Domicilio");
        stringBuilder.AppendLine("FROM relacion r");
        stringBuilder.AppendLine("INNER JOIN infogov.persona p ON p.CucuPers = r.CucuPers");
        if (filter1 != null && filter1.Items.Exists((Predicate<FilterItem>) (x => x.Field.StartsWith("domic."))))
        {
          stringBuilder.AppendLine($"INNER JOIN infogov.persona pDom ON pDom.CucuPers = r.CucuPers AND pDom.DecrPers LIKE '%{filter1.Items.First<FilterItem>((System.Func<FilterItem, bool>) (x => x.Field.Contains("domic."))).Value}%'");
          stringBuilder.AppendLine("WHERE r.CodiOfic = 3");
        }
        else
        {
          stringBuilder.AppendLine("WHERE r.CodiOfic = 3");
          stringBuilder.AppendLine((filter1 == null ? "AND 1=2" : filter1.sqlAnd(false)) ?? "");
        }
        stringBuilder.AppendLine("GROUP BY r.CuenCtct");
        break;
      case 4:
        stringBuilder.AppendLine($"SELECT {this.CodiOficActual} CodiOfic, d.CodiDifu CuenCtct, d.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine(", fnDomiCuenCtct(4, d.CodiDifu, 1) Domicilio");
        stringBuilder.AppendLine("FROM difunto d");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = d.CucuPers");
        if (filter != null && filter.Items.Exists((Predicate<FilterItem>) (x => x.Field.StartsWith("domic."))))
          stringBuilder.AppendLine($"INNER JOIN domicilio domic ON domic.CodiTido = 1 AND domic.CodiCome = d.CodiDifu AND domic.CodiOfic = {this.CodiOficActual}");
        stringBuilder.AppendLine((filter1 == null ? "WHERE 1=2" : filter1.sqlWOL(wdotcomma: false)) ?? "");
        stringBuilder.AppendLine("GROUP BY d.CodiDifu");
        break;
      case 5:
        stringBuilder.AppendLine($"SELECT {this.CodiOficActual} CodiOfic, t.CodiTran CuenCtct, t.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine(", IF(p.CucuPers IS NULL, 'Sin Datos Domicilio', CONCAT(p.DecrPers, ' N° ', p.NumePers, ' | Manz/Casa: ', p.ManzPers, ' | Piso: ', p.PisoPers, ' | Lote: ', p.LotePers, ' | Depto ', p.DptoPers)) Domicilio");
        stringBuilder.AppendLine("FROM transito t");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = t.CucuPers");
        if (filter1 != null && filter1.Items.Exists((Predicate<FilterItem>) (x => x.Field.StartsWith("domic."))))
          stringBuilder.AppendLine($"INNER JOIN infogov.persona pDom ON pDom.CucuPers = t.CucuPers AND pDom.DecrPers LIKE '%{filter1.Items.First<FilterItem>((System.Func<FilterItem, bool>) (x => x.Field.Contains("domic."))).Value}%'");
        else
          stringBuilder.AppendLine((filter1 == null ? "WHERE 1=2" : filter1.sqlWOL(wdotcomma: false)) ?? "");
        stringBuilder.AppendLine("GROUP BY t.CodiTran");
        break;
      case 6:
        stringBuilder.AppendLine($"SELECT {this.CodiOficActual} CodiOfic, c.CodiCome CuenCtct, c.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine(", fnDomiCuenCtct(6, c.CodiCome, 1) Domicilio");
        stringBuilder.AppendLine("FROM publicidad c");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
        if (filter != null && filter.Items.Exists((Predicate<FilterItem>) (x => x.Field.StartsWith("domic."))))
          stringBuilder.AppendLine($"INNER JOIN domicilio domic ON domic.CodiTido = 1 AND domic.CodiCome = c.CodiCome AND domic.CodiOfic = {this.CodiOficActual}");
        stringBuilder.AppendLine((filter1 == null ? "WHERE 1=2" : filter1.sqlWOL(wdotcomma: false)) ?? "");
        stringBuilder.AppendLine("GROUP BY c.CodiCome");
        break;
      case 7:
        stringBuilder.AppendLine($"SELECT {this.CodiOficActual} CodiOfic, c.CodiCome CuenCtct, c.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine(", fnDomiCuenCtct(7, c.CodiCome, 1) Domicilio");
        stringBuilder.AppendLine("FROM antena c");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
        if (filter != null && filter.Items.Exists((Predicate<FilterItem>) (x => x.Field.StartsWith("domic."))))
          stringBuilder.AppendLine($"INNER JOIN domicilio domic ON domic.CodiTido = 1 AND domic.CodiCome = c.CodiCome AND domic.CodiOfic = {this.CodiOficActual}");
        stringBuilder.AppendLine((filter1 == null ? "WHERE 1=2" : filter1.sqlWOL(wdotcomma: false)) ?? "");
        stringBuilder.AppendLine("GROUP BY c.CodiCome");
        break;
      case 99:
        stringBuilder.AppendLine($"SELECT {this.CodiOficActual} CodiOfic, p.CucuPers CuenCtct, p.CucuPers, p.DetaPers");
        stringBuilder.AppendLine(", CONCAT(p.DecrPers, ' N° ', p.NumePers, ' | Manz/Casa: ', p.ManzPers, ' | Piso: ', p.PisoPers, ' | Lote: ', p.LotePers, ' | Depto ', p.DptoPers) Domicilio");
        stringBuilder.AppendLine("FROM infogov.persona p");
        if (filter1 != null && filter1.Items.Exists((Predicate<FilterItem>) (x => x.Field.StartsWith("domic."))))
        {
          stringBuilder.AppendLine($"WHERE p.DecrPers LIKE '%{filter1.Items.First<FilterItem>((System.Func<FilterItem, bool>) (x => x.Field.StartsWith("domic."))).Value}%'");
          break;
        }
        stringBuilder.AppendLine((filter1 == null ? "WHERE 1=2" : filter1.sqlWOL(wdotcomma: false)) ?? "");
        break;
    }
    if (stringBuilder.Length > 0)
      stringBuilder.AppendLine("LIMIT 250;");
    return stringBuilder.ToString();
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(CCComun entity) => false;

  public bool CanDeactivate(CCComun entity) => false;

  public bool CanDelete(CCComun entity) => false;

  public CCComun CreateEntity() => new CCComun();

  public CCComun GetEntity(ID id)
  {
    StringBuilder stringBuilder = new StringBuilder();
    switch (id.GetShort("CodiOfic"))
    {
      case 1:
        stringBuilder.AppendLine($"SELECT {id.GetShort("CodiOfic")} CodiOfic, i.CodiInmu CuenCtct, i.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine("FROM inmueble i");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = i.CucuPers");
        stringBuilder.AppendLine("WHERE i.CodiInmu = " + id.GetString("CuenCtct"));
        stringBuilder.AppendLine("GROUP BY i.CodiInmu;");
        break;
      case 2:
        stringBuilder.AppendLine($"SELECT {id.GetShort("CodiOfic")} CodiOfic, c.CodiCome CuenCtct, c.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine("FROM comercio c");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
        stringBuilder.AppendLine("WHERE c.CodiCome = " + id.GetString("CuenCtct"));
        stringBuilder.AppendLine("GROUP BY c.CodiCome;");
        break;
      case 3:
        stringBuilder.AppendLine($"SELECT {id.GetShort("CodiOfic")} CodiOfic, r.CuenCtct, r.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine("FROM relacion r");
        stringBuilder.AppendLine("INNER JOIN infogov.persona p ON p.CucuPers = r.CucuPers");
        stringBuilder.AppendLine($"WHERE r.CodiOfic = {id.GetShort("CodiOfic")} AND r.CuenCtct = '{id.GetString("CuenCtct")}'");
        stringBuilder.AppendLine("GROUP BY r.CuenCtct;");
        break;
      case 4:
        stringBuilder.AppendLine($"SELECT {id.GetShort("CodiOfic")} CodiOfic, d.CodiDifu CuenCtct, d.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine("FROM difunto d");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = d.CucuPers");
        stringBuilder.AppendLine("WHERE d.CodiDifu = " + id.GetString("CuenCtct"));
        stringBuilder.AppendLine("GROUP BY d.CodiDifu;");
        break;
      case 5:
        stringBuilder.AppendLine($"SELECT {id.GetShort("CodiOfic")} CodiOfic, t.CodiTran CuenCtct, t.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine("FROM transito t");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = t.CucuPers");
        stringBuilder.AppendLine($"WHERE t.CodiTran = '{id.GetString("CuenCtct")}'");
        stringBuilder.AppendLine("GROUP BY t.CodiTran;");
        break;
      case 6:
        stringBuilder.AppendLine($"SELECT {id.GetShort("CodiOfic")} CodiOfic, c.CodiCome CuenCtct, c.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine("FROM publicidad c");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
        stringBuilder.AppendLine("WHERE c.CodiCome = " + id.GetString("CuenCtct"));
        stringBuilder.AppendLine("GROUP BY c.CodiCome;");
        break;
      case 7:
        stringBuilder.AppendLine($"SELECT {id.GetShort("CodiOfic")} CodiOfic, c.CodiCome CuenCtct, c.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle Persona') DetaPers");
        stringBuilder.AppendLine("FROM antena c");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
        stringBuilder.AppendLine("WHERE c.CodiCome = " + id.GetString("CuenCtct"));
        stringBuilder.AppendLine("GROUP BY c.CodiCome;");
        break;
      case 99:
        stringBuilder.AppendLine($"SELECT {id.GetShort("CodiOfic")} CodiOfic, {this.sqlString(id.GetString("CuenCtct"))} CuenCtct, p.CucuPers, p.DetaPers");
        stringBuilder.AppendLine("FROM infogov.persona p");
        stringBuilder.AppendLine($"WHERE p.CucuPers = {id.GetString("CuenCtct")};");
        break;
    }
    return this.getEntity<CCComun>(stringBuilder.ToString(), new System.Func<InfoGovReader, CCComun>(this.readCCComun));
  }

  public CCComun Find(Filter filter, bool onlyActive)
  {
    string empty = string.Empty;
    return this.findEntity<CCComun>(this.GenerarSqlBusqueda(filter), new System.Func<InfoGovReader, CCComun>(this.readCCComun));
  }

  public bool SaveOnDB(CCComun entity) => throw new NotImplementedException();

  public List<Column> getGridColumns()
  {
    List<Column> gridColumns = new List<Column>()
    {
      new Column("CodiOfic", "Oficina", visible: false),
      new Column("CuenCtct", "Cuenta"),
      new Column("CucuPers", "Cuil/Cuit")
    };
    if (PARAMS.MunicipioID == Municipio.Maipú)
    {
      gridColumns.Add(new Column("DetaPers", "Nombre Titular"));
      gridColumns.Add(new Column("Domicilio", "Domicilio", fill: true));
    }
    else
      gridColumns.Add(new Column("DetaPers", "Nombre Titular", fill: true));
    return gridColumns;
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiOfic", (object) short.Parse(row.Cells[0].Value.ToString()));
    gridId.Add((object) "CuenCtct", (object) row.Cells[1].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("Cuenta", "Cuenta", FilterMode.Equal),
      new FilterField("p.CucuPers", "CUIL Titular", FilterMode.Contains),
      new FilterField("p.DetaPers", "Nombre Titular", FilterMode.Contains, true),
      new FilterField("domic.Calle", "Calle", FilterMode.Contains),
      new FilterField("domic.Barrio", "Barrio", FilterMode.Contains),
      new FilterField("domic.Distrito", "Distrito", FilterMode.Contains)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    string empty = string.Empty;
    return this.conn.createDataTable(this.GenerarSqlBusqueda(filter));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public CCComun getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
