// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpOrganigrama
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpOrganigrama : 
  Expert,
  EntityExpert<Organigrama>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Organigrama>,
  ISearchExpert
{
  private int CodiUnfi = PARAMS.CodiUnfi;
  private int CodiPerm = (int) PARAMS.PermisoCodiUnfi;
  private int PeriInfo = PARAMS.Periodo;

  public ExpOrganigrama()
    : base("infogov")
  {
  }

  public Organigrama CreateEntity() => new Organigrama();

  public Organigrama GetEntity(ID id)
  {
    if (id.Count == 1)
      id.Add((object) "PeriInfo", (object) PARAMS.Periodo);
    return this.getEntity<Organigrama>($"SELECT o.*, fnArmarJeraOrga(o.PeriInfo,o.CodiOrga) JeraOrga, fnNiveOrga(o.PeriInfo,o.CodiOrga) NiveOrga FROM organigrama o WHERE o.PeriInfo ={id.GetInt("PeriInfo").ToString()} AND o.CodiOrga='{id.GetString("CodiOrga")}';", new System.Func<InfoGovReader, Organigrama>(this.readEntity));
  }

  private Organigrama readEntity(InfoGovReader dr)
  {
    Organigrama enti = new Organigrama();
    enti.PeriInfo = dr.readInt("PeriInfo");
    enti.CodiOrga = dr.readString("CodiOrga");
    enti.JeraOrga = dr.readString("JeraOrga");
    enti.NiveOrga = dr.readString("NiveOrga");
    enti.DetaOrga = dr.readString("DetaOrga");
    enti.CucuPers = dr.readLong("CucuPers");
    enti.CoesOrga = dr.readString("CoesOrga");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(Organigrama entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Organigrama entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Organigrama entity) => this.CanDelete(entity.id);

  public Organigrama Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Organigrama>("SELECT o.*, fnArmarJeraOrga(o.PeriInfo,o.CodiOrga) JeraOrga, fnNiveOrga(o.PeriInfo,o.CodiOrga) NiveOrga FROM infogov.organigrama o " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL(onlyActive)), new System.Func<InfoGovReader, Organigrama>(this.readEntity));
  }

  public bool SaveOnDB(Organigrama entity) => this.conn.executeNonQuery("" + this.getSQL(entity));

  public string getSQL(Organigrama entity)
  {
    string sql = "";
    switch (entity.status)
    {
      case EntityStatus.New:
        entity.PeriInfo = this.PeriInfo;
        sql = $"INSERT INTO infogov.organigrama (PeriInfo, CodiOrga, DetaOrga, TituOrga, CucuPers, CoesOrga, ReclOrga, AltaUsua) VALUES ({entity.PeriInfo.ToString()}, {entity.CodiOrga}, '{entity.DetaOrga}', {this.sqlBool(entity.TituOrga)}, {entity.CucuPers.ToString()},'{entity.CoesOrga}',{this.sqlBool(entity.ReclOrga)}, '{this.usuario}');";
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE infogov.organigrama SET DetaOrga='{entity.DetaOrga}', CucuPers={entity.CucuPers.ToString()}, CoesOrga={entity.CoesOrga}, ReclOrga={this.sqlBool(entity.ReclOrga)}, ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE PeriInfo={entity.PeriInfo.ToString()} AND CodiOrga='{entity.CodiOrga}';";
        break;
      case EntityStatus.Deleted:
        sql = $"DELETE FROM infogov.organigrama WHERE PeriInfo={entity.PeriInfo.ToString()} AND CodiOrga='{entity.CodiOrga}';";
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE infogov.organigrama SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE PeriInfo={entity.PeriInfo.ToString()} AND CodiOrga='{entity.CodiOrga}';";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("PeriInfo", "Periodo", visible: false),
      new Column("CodiOrga", "Cód. Oficina"),
      new Column("DetaOrga", "Det. Oficina", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "PeriInfo", (object) row.Cells[0].Value.ToString());
    gridId.Add((object) "CodiOrga", (object) row.Cells[1].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("o.CodiOrga", "Cód. Oficina", FilterMode.Equal),
      new FilterField("o.DetaOrga", "Det. Oficina", FilterMode.Contains)
    };
  }

  public Filter getInitialGridFilter()
  {
    return new Filter()
    {
      Restrictions = {
        new FilterItem("o.PeriInfo", "Periodo", FilterMode.Equal, this.PeriInfo.ToString()),
        new FilterItem("o.DetaOrga", "Responsable", FilterMode.Distinct, "")
      }
    };
  }

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT o.*, fnArmarJeraOrga(o.PeriInfo,o.CodiOrga) JeraOrga, fnNiveOrga(o.PeriInfo,o.CodiOrga) NiveOrga FROM infogov.organigrama o " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Organigrama getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  internal int getMaxCodiOrga()
  {
    return this.conn.executeInt($"SELECT IFNULL(MAX(CodiOrga),0) + 1 FROM infogov.organigrama WHERE PeriInfo = {this.PeriInfo.ToString()};");
  }

  public string getdetalleOrga(int codiorga, short periinfo)
  {
    return this.conn.executeString($"SELECT DetaOrga from infogov.organigrama where CodiOrga = {codiorga.ToString()} AND PeriInfo = {periinfo.ToString()};");
  }
}
