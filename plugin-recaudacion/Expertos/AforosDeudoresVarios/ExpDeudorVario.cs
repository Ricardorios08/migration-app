// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.AforosDeudoresVarios.ExpDeudorVario
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.AforosDeudoresVarios;

public class ExpDeudorVario : 
  Expert,
  GridExpert,
  EntityExpert<DeudorVario>,
  IEntityExpert,
  SearchExpert<DeudorVario>,
  ISearchExpert
{
  private ExpPersona expPers = new ExpPersona();

  public ExpDeudorVario()
    : base(Modulo.Database)
  {
  }

  public bool ExisteDeudorVario(DeudorVario deudor)
  {
    return this.conn.executeShort($"SELECT COUNT(*) FROM relacion WHERE CucuPers = {deudor.CucuPers} AND CodiOfic = 3 AND CuenCtct = {this.sqlString(deudor.CodiDeva)};") > (short) 0 | this.conn.executeShort($"SELECT COUNT(*) FROM deudvari WHERE CodiDeva = {this.sqlString(deudor.CodiDeva)};") > (short) 0;
  }

  public bool GuardarNuevoDeudorVario(DeudorVario deudor)
  {
    if (deudor == null || deudor.Persona == null)
      return false;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("INSERT INTO deudvari (CodiDeva, CucuPers, AltaUsua)");
    stringBuilder.AppendLine($"VALUES ({this.sqlString(deudor.CodiDeva)}, {deudor.CucuPers}, {this.sqlString(this.usuario)});");
    stringBuilder.AppendLine("INSERT INTO relacion (CucuPers, CodiOfic, CuenCtct, NumeRela, TipoRela, FealRela, PorcRela, CodiUsua)");
    stringBuilder.AppendLine($"VALUES({deudor.CucuPers}, 3, {this.sqlString(deudor.CodiDeva)}, 1, 'Titular', DATE(NOW()), 100, {this.sqlString(this.usuario)});");
    if (deudor.Persona.status == EntityStatus.New)
      stringBuilder.AppendLine(this.expPers.getSQL(deudor.Persona));
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool CanActivate(ID id) => true;

  public bool CanActivate(DeudorVario entity) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDeactivate(DeudorVario entity) => true;

  public bool CanDelete(ID id) => true;

  public bool CanDelete(DeudorVario entity) => true;

  public DeudorVario CreateEntity() => new DeudorVario();

  public DeudorVario Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<DeudorVario>($"SELECT dv.*, p.DetaPers FROM deudvari dv INNER JOIN infogov.persona p ON p.CucuPers = dv.CucuPers {filter.sqlWOL(wdotcomma: false)};", new System.Func<InfoGovReader, DeudorVario>(this.readEntity));
  }

  public DeudorVario GetEntity(ID id)
  {
    return this.getEntity<DeudorVario>($"SELECT dv.*, p.DetaPers FROM deudvari dv INNER JOIN infogov.persona p ON p.CucuPers = dv.CucuPers WHERE CodiDeva ={id.GetString("CodiDeva")};", new System.Func<InfoGovReader, DeudorVario>(this.readEntity));
  }

  public bool SaveOnDB(DeudorVario entity) => false;

  public DeudorVario readEntity(InfoGovReader dr)
  {
    DeudorVario enti = new DeudorVario();
    enti.CodiDeva = dr.readString("CodiDeva");
    enti.CucuPers = dr.readLong("CucuPers");
    enti.DetaPers = dr.readString("DetaPers");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable($"SELECT dv.*, p.DetaPers FROM deudvari dv INNER JOIN infogov.persona p ON p.CucuPers = dv.CucuPers {(filter == null ? "WHERE 1=2" : filter.sqlWOL(wdotcomma: false))};");
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiDeva", "Cuenta", width: 60),
      new Column("CucuPers", "Cuil", width: 60),
      new Column("DetaPers", "Nombre", fill: true)
    };
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiDeva", "Cuenta", FilterMode.Contains),
      new FilterField("CucuPers", "CUIL", FilterMode.Equal),
      new FilterField("DetaPers", "Nombre", FilterMode.Contains)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiDeva", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public List<Column> getSearchColumns() => this.getGridColumns();

  public DeudorVario getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();
}
