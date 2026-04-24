// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpPosicionFiscal
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

public class ExpPosicionFiscal : 
  Expert,
  EntityExpert<PosicionFiscal>,
  IEntityExpert,
  GridExpert,
  SearchExpert<PosicionFiscal>,
  ISearchExpert
{
  public ExpPosicionFiscal()
    : base(Modulo.Database)
  {
  }

  public PosicionFiscal CreateEntity() => new PosicionFiscal();

  public PosicionFiscal GetEntity(ID id)
  {
    return this.getEntity<PosicionFiscal>($"SELECT * FROM posifisc WHERE CodiPofi={id.GetInt("CodiPofi").ToString()};", new System.Func<InfoGovReader, PosicionFiscal>(this.readEntity));
  }

  private PosicionFiscal readEntity(InfoGovReader dr)
  {
    PosicionFiscal enti = new PosicionFiscal();
    enti.CodiPofi = dr.readInt("CodiPofi");
    enti.DetaPofi = dr.readString("DetaPofi");
    enti.DivaPofi = dr.readBool("DivaPofi");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(PosicionFiscal entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(PosicionFiscal entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(PosicionFiscal entity) => this.CanDelete(entity.id);

  public PosicionFiscal Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<PosicionFiscal>("SELECT * FROM posifisc " + filter.sqlWOL(onlyActive), new System.Func<InfoGovReader, PosicionFiscal>(this.readEntity));
  }

  public bool SaveOnDB(PosicionFiscal entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(PosicionFiscal enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sql = $"INSERT INTO a(CodiPofi,DetaPofi,DivaPofi) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiPofi),0)+1 FROM posifisc;").ToString()},'{enti.DetaPofi}',{enti.DivaPofi.ToString()});";
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE posifisc SET DetaPofi='{enti.DetaPofi}', DivaPofi={enti.DivaPofi.ToString()}, ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiPofi={enti.CodiPofi.ToString()}";
        break;
      case EntityStatus.Deleted:
        sql = "DELETE  FROM posifisc WHERE CodiPofi=" + enti.CodiPofi.ToString();
        break;
      case EntityStatus.Activated:
        sql = "UPDATE posifisc SET BajaUsua='', BajaFeho=NULL WHERE CodiPofi=" + enti.CodiPofi.ToString();
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE posifisc SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CodiPofi={enti.CodiPofi.ToString()}";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiPofi", "Código"),
      new Column("DetaPofi", "Detalle")
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CodiPofi", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiPofi", "Código", FilterMode.StartsWith),
      new FilterField("DetaPofi", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT CodiPofi,DetaPofi FROM posifisc " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public PosicionFiscal getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public List<PosicionFiscal> getListPosicionesFiscales()
  {
    List<PosicionFiscal> posicionesFiscales = new List<PosicionFiscal>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM posifisc;");
    if (dr != null && dr.HasRows)
    {
      while (dr.Read())
        posicionesFiscales.Add(this.readEntity(dr));
    }
    dr?.Close();
    return posicionesFiscales;
  }
}
