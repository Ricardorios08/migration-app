// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpBarrio
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

public class ExpBarrio : 
  Expert,
  EntityExpert<Barrio>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Barrio>,
  ISearchExpert
{
  public ExpBarrio()
    : base(Modulo.Database)
  {
  }

  public Barrio CreateEntity() => new Barrio();

  public Barrio GetEntity(ID id)
  {
    return this.getEntity<Barrio>($"SELECT * FROM barrio WHERE CodiBarr={id.GetString("CodiBarr")};", new System.Func<InfoGovReader, Barrio>(this.readEntity));
  }

  private Barrio readEntity(InfoGovReader dr)
  {
    Barrio enti = new Barrio();
    enti.CodiBarr = dr.readInt("CodiBarr");
    enti.DetaBarr = dr.readString("DetaBarr");
    enti.CodiLoca = dr.readInt("CodiLoca");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => this.hasPermissionFor(typeof (Barrio), ActionMode.Delete);

  public bool CanActivate(Barrio entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Barrio entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Barrio entity) => this.CanDelete(entity.id);

  public Barrio Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Barrio>("SELECT * FROM barrio " + filter.sqlWOL(onlyActive), new System.Func<InfoGovReader, Barrio>(this.readEntity));
  }

  public bool SaveOnDB(Barrio entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(Barrio enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sql = $"INSERT INTO barrio(CodiBarr,DetaBarr,CodiLoca,AltaUsua) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiBarr),0)+1 FROM barrio;").ToString()}, '{enti.DetaBarr}', {enti.CodiLoca.ToString()},'{this.usuario}')";
        break;
      case EntityStatus.Modified:
        string[] strArray = new string[8];
        strArray[0] = "UPDATE barrio SET DetaBarr='";
        strArray[1] = enti.DetaBarr;
        strArray[2] = "', CodiLoca=";
        int num = enti.CodiLoca;
        strArray[3] = num.ToString();
        strArray[4] = ", ModiUsua='";
        strArray[5] = this.usuario;
        strArray[6] = "', ModiFeho=NOW() WHERE CodiBarr=";
        num = enti.CodiBarr;
        strArray[7] = num.ToString();
        sql = string.Concat(strArray);
        break;
      case EntityStatus.Deleted:
        sql = "DELETE FROM barrio WHERE CodiBarr = " + enti.CodiBarr.ToString();
        break;
      case EntityStatus.Activated:
        sql = "UPDATE barrio SET BajaUsua='', BajaFeho=NULL WHERE CodiBarr= " + enti.CodiBarr.ToString();
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE barrio SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CodiBarr= {enti.CodiBarr.ToString()}";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiBarr", "Código"),
      new Column("DetaBarr", "Detalle", fill: true),
      new Column("DetaLoca", "Localidad", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CodiBarr", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiBarr", "Código", FilterMode.StartsWith),
      new FilterField("DetaBarr", "Detalle", FilterMode.Contains, true),
      new FilterField("DetaLoca", "Localidad", FilterMode.Contains)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT CodiBarr,DetaBarr,DetaLoca FROM barrio LEFT JOIN localidad ON localidad.CodiLoca = barrio.CodiLoca " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Barrio getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public int getUltimoCodigo()
  {
    return this.conn.executeInt("select IFNULL(max(CodiBarr),0)+1 from barrio;");
  }
}
