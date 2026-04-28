// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpLocalidad
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

public class ExpLocalidad : 
  Expert,
  EntityExpert<Localidad>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Localidad>,
  ISearchExpert
{
  public ExpLocalidad()
    : base(Modulo.Database)
  {
  }

  public Localidad CreateEntity() => new Localidad();

  public Localidad GetEntity(ID id)
  {
    return this.getEntity<Localidad>($"SELECT * FROM localidad WHERE CodiLoca={id.GetString("CodiLoca")};", new System.Func<InfoGovReader, Localidad>(this.readEntity));
  }

  private Localidad readEntity(InfoGovReader dr)
  {
    Localidad enti = new Localidad();
    enti.CodiLoca = dr.readInt("CodiLoca");
    enti.DetaLoca = dr.readString("DetaLoca");
    enti.KiloLoca = dr.readInt("KiloLoca");
    enti.CodiPost = dr.readString("CodiPost");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => true;

  public bool CanActivate(Localidad entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Localidad entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Localidad entity) => this.CanDelete(entity.id);

  public Localidad Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Localidad>("SELECT * FROM localidad " + filter.sqlWOL(onlyActive), new System.Func<InfoGovReader, Localidad>(this.readEntity));
  }

  public bool SaveOnDB(Localidad entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(Localidad enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        int num = this.conn.executeInt("SELECT IFNULL(MAX(CodiLoca),0)+1 FROM localidad;");
        if (PARAMS.Municipio == "Malargüe" || PARAMS.Municipio == "SanMartín")
        {
          sql = $"INSERT INTO localidad(CodiLoca, DetaLoca, KiloLoca, CodiPost, AltaUsua) VALUES({num.ToString()}, '{enti.DetaLoca}', 0, '', '{this.usuario}');";
          break;
        }
        sql = $"INSERT INTO localidad(CodiLoca,DetaLoca,CodiDist,AltaUsua) VALUES({num.ToString()}, '{enti.DetaLoca}',{enti.CodiDist.ToString()},'{this.usuario}');";
        break;
      case EntityStatus.Modified:
        if (PARAMS.Municipio == "Malargüe" || PARAMS.Municipio == "SanMartín")
        {
          sql = $"UPDATE localidad SET DetaLoca='{enti.DetaLoca}', ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiLoca={enti.CodiLoca.ToString()}";
          break;
        }
        sql = $"UPDATE localidad SET DetaLoca='{enti.DetaLoca}', CodiDist={enti.CodiDist.ToString()}, ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiLoca={enti.CodiLoca.ToString()}";
        break;
      case EntityStatus.Deleted:
        sql = "DELETE FROM localidad WHERE CodiLoca=" + enti.CodiLoca.ToString();
        break;
      case EntityStatus.Activated:
        sql = "UPDATE localidad SET BajaUsua='', BajaFeho=NULL WHERE CodiLoca=" + enti.CodiLoca.ToString();
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE localidad SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CodiLoca={enti.CodiLoca.ToString()}";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiLoca", "Código"),
      new Column("DetaLoca", "Detalle", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CodiLoca", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiLoca", "Código", FilterMode.StartsWith),
      new FilterField("DetaLoca", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT CodiLoca,DetaLoca FROM localidad " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Localidad getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public int getUltimoCodigo()
  {
    return this.conn.executeInt("select IFNULL(max(CodiLoca),0)+1 from localidad;");
  }
}
