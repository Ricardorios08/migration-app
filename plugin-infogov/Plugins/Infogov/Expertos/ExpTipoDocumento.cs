// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpTipoDocumento
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

public class ExpTipoDocumento : 
  Expert,
  EntityExpert<TipoDocumento>,
  IEntityExpert,
  GridExpert,
  SearchExpert<TipoDocumento>,
  ISearchExpert
{
  public ExpTipoDocumento()
    : base(Modulo.Database)
  {
  }

  public TipoDocumento CreateEntity() => new TipoDocumento();

  public TipoDocumento GetEntity(ID id)
  {
    return this.getEntity<TipoDocumento>($"SELECT * FROM tipodocu WHERE CodiTido={id.GetString("CodiTido")};", new System.Func<InfoGovReader, TipoDocumento>(this.readEntity));
  }

  private TipoDocumento readEntity(InfoGovReader dr)
  {
    TipoDocumento enti = new TipoDocumento();
    enti.CodiTido = dr.readShort("CodiTido");
    enti.DetaTido = dr.readString("DetaTido");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(TipoDocumento entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(TipoDocumento entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(TipoDocumento entity) => this.CanDelete(entity.id);

  public TipoDocumento Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<TipoDocumento>("SELECT * FROM tipodocu " + filter.sqlWOL(onlyActive), new System.Func<InfoGovReader, TipoDocumento>(this.readEntity));
  }

  public bool SaveOnDB(TipoDocumento entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(TipoDocumento enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sql = $"INSERT INTO tipodocu(CodiTido,DetaTido,DelaTido) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiTido),0)+1 FROM tipodocu;").ToString()},'{enti.DetaTido}','{enti.DelaTido}')";
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE tipodocu SET DetaTido='{enti.DetaTido}', DelaTido='{enti.DelaTido}', ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiTido={enti.CodiTido.ToString()}";
        break;
      case EntityStatus.Deleted:
        sql = "DELETE FROM tipodocu WHERE CodiTido=" + enti.CodiTido.ToString();
        break;
      case EntityStatus.Activated:
        sql = "UPDATE tipodocu SET BajaUsua='', BajaFeho=NULL WHERE CodiTido=" + enti.CodiTido.ToString();
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE tipoDocu SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CodiTido={enti.CodiTido.ToString()}";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiTido", "Código"),
      new Column("DetaTido", "Abreviatura"),
      new Column("DelaTido", "Detalle", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CodiTido", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiTido", "Código", FilterMode.StartsWith),
      new FilterField("DetaTido", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT CodiTido,DetaTido,DelaTido FROM tipodocu " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public TipoDocumento getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public List<TipoDocumento> getListTiposDocumento()
  {
    List<TipoDocumento> listTiposDocumento = new List<TipoDocumento>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM tipodocu;");
    if (dr != null && dr.HasRows)
    {
      while (dr.Read())
        listTiposDocumento.Add(this.readEntity(dr));
    }
    dr?.Close();
    return listTiposDocumento;
  }
}
