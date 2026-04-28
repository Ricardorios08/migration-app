// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpCalle
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

public class ExpCalle : 
  Expert,
  EntityExpert<Calle>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Calle>,
  ISearchExpert
{
  public ExpCalle()
    : base(Modulo.Database)
  {
  }

  public Calle CreateEntity() => new Calle();

  public Calle GetEntity(ID id)
  {
    return this.getEntity<Calle>(!(PARAMS.Municipio == "Rivadavia") && !(PARAMS.Municipio == "SanMartín") ? $"SELECT calle.* FROM calle WHERE CodiCall={id.GetInt("CodiCall").ToString()};" : $"SELECT calle.*, barrio.DetaBarr, localidad.DetaLoca FROM calle LEFT JOIN infogov.barrio ON barrio.CodiBarr = calle.CodiBarr LEFT JOIN infogov.localidad ON localidad.CodiLoca = calle.CodiLoca WHERE CodiCall={id.GetInt("CodiCall").ToString()};", new System.Func<InfoGovReader, Calle>(this.readEntity));
  }

  private Calle readEntity(InfoGovReader dr)
  {
    Calle enti = new Calle();
    enti.CodiCall = dr.readInt("CodiCall");
    enti.DetaCall = dr.readString("DetaCall");
    enti.CodiBarr = dr.readInt("CodiBarr");
    enti.CodiLoca = dr.readInt("CodiLoca");
    if (PARAMS.Municipio == "Rivadavia" || PARAMS.Municipio == "SanMartín")
    {
      enti.DetaBarr = dr.readString("DetaBarr");
      enti.DetaLoca = dr.readString("DetaLoca");
    }
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => this.hasPermissionFor(typeof (Calle), ActionMode.Delete);

  public bool CanActivate(Calle entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Calle entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Calle entity) => this.CanDelete(entity.id);

  public Calle Find(Filter filter, bool onlyActive)
  {
    string sql;
    switch (PARAMS.Municipio)
    {
      case "Rivadavia":
        sql = "SELECT calle.*, barrio.DetaBarr, localidad.DetaLoca FROM infogov.calle LEFT JOIN infogov.barrio ON barrio.CodiBarr = calle.CodiBarr LEFT JOIN infogov.localidad ON localidad.CodiLoca = calle.CodiLoca" + filter.sqlWhere(onlyActive);
        break;
      case "SanMartín":
        sql = "SELECT calle.*, barrio.DetaBarr, localidad.DetaLoca FROM infogov.calle LEFT JOIN infogov.barrio ON barrio.CodiBarr = calle.CodiBarr LEFT JOIN infogov.localidad ON localidad.CodiLoca = calle.CodiLoca" + filter.sqlWhere(onlyActive, "calle");
        break;
      default:
        sql = "SELECT * FROM calle " + filter.sqlWOL(onlyActive);
        break;
    }
    return this.findEntity<Calle>(sql, new System.Func<InfoGovReader, Calle>(this.readEntity));
  }

  public bool SaveOnDB(Calle entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(Calle enti)
  {
    string sql = "";
    if (PARAMS.Municipio != "SantaRosa" && PARAMS.Municipio != "Tupungato" && PARAMS.Municipio != "Malargüe" && PARAMS.Municipio != "SanMartín")
    {
      switch (enti.status)
      {
        case EntityStatus.New:
          sql = $"INSERT INTO calle(CodiCall,DetaCall,CodiDepa, AltaUsua) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiCall),0)+1 FROM calle;").ToString()}, '{enti.DetaCall}',{enti.CodiDepa.ToString()},'{this.usuario}');";
          break;
        case EntityStatus.Modified:
          string[] strArray1 = new string[8];
          strArray1[0] = "UPDATE calle SET DetaCall='";
          strArray1[1] = enti.DetaCall;
          strArray1[2] = "', CodiDepa=";
          int num1 = enti.CodiDepa;
          strArray1[3] = num1.ToString();
          strArray1[4] = ", ModiUsua='";
          strArray1[5] = this.usuario;
          strArray1[6] = "', ModiFeho=NOW() WHERE CodiCall= ";
          num1 = enti.CodiCall;
          strArray1[7] = num1.ToString();
          sql = string.Concat(strArray1);
          break;
        case EntityStatus.Deleted:
          sql = "DELETE FROM calle WHERE CodiCall= " + enti.CodiCall.ToString();
          break;
        case EntityStatus.Activated:
          sql = "UPDATE calle SET BajaUsua='', BajaFeho=NULL WHERE CodiCall=" + enti.CodiCall.ToString();
          break;
        case EntityStatus.Deactivated:
          sql = $"UPDATE calle SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CodiCall={enti.CodiCall.ToString()}";
          break;
      }
    }
    else if (PARAMS.Municipio == "SanMartín")
    {
      switch (enti.status)
      {
        case EntityStatus.New:
          sql = $"INSERT INTO calle(CodiCall,DetaCall,CodiLoca,AltaUsua) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiCall),0)+1 FROM calle;").ToString()}, '{enti.DetaCall}',{enti.CodiLoca.ToString()},'{this.usuario}');";
          break;
        case EntityStatus.Modified:
          string[] strArray2 = new string[8];
          strArray2[0] = "UPDATE calle SET DetaCall='";
          strArray2[1] = enti.DetaCall;
          strArray2[2] = "', CodiLoca=";
          int num2 = enti.CodiLoca;
          strArray2[3] = num2.ToString();
          strArray2[4] = ", ModiUsua='";
          strArray2[5] = this.usuario;
          strArray2[6] = "', ModiFeho=NOW() WHERE CodiCall= ";
          num2 = enti.CodiCall;
          strArray2[7] = num2.ToString();
          sql = string.Concat(strArray2);
          break;
        case EntityStatus.Deleted:
          sql = "DELETE FROM calle WHERE CodiCall= " + enti.CodiCall.ToString();
          break;
        case EntityStatus.Activated:
          sql = "UPDATE calle SET BajaUsua='', BajaFeho=NULL WHERE CodiCall=" + enti.CodiCall.ToString();
          break;
        case EntityStatus.Deactivated:
          sql = $"UPDATE calle SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CodiCall={enti.CodiCall.ToString()}";
          break;
      }
    }
    else
    {
      switch (enti.status)
      {
        case EntityStatus.New:
          sql = $"INSERT INTO calle(CodiCall,DetaCall,AltaUsua) VALUES({this.conn.executeInt("SELECT IFNULL(MAX(CodiCall),0)+1 FROM calle;").ToString()}, '{enti.DetaCall}','{this.usuario}');";
          break;
        case EntityStatus.Modified:
          sql = $"UPDATE calle SET DetaCall='{enti.DetaCall}', ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiCall= {enti.CodiCall.ToString()}";
          break;
        case EntityStatus.Deleted:
          sql = "DELETE FROM calle WHERE CodiCall= " + enti.CodiCall.ToString();
          break;
        case EntityStatus.Activated:
          sql = "UPDATE calle SET BajaUsua='', BajaFeho=NULL WHERE CodiCall=" + enti.CodiCall.ToString();
          break;
        case EntityStatus.Deactivated:
          sql = $"UPDATE calle SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CodiCall={enti.CodiCall.ToString()}";
          break;
      }
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    List<Column> gridColumns = new List<Column>();
    gridColumns.Add(new Column("CodiCall", "Código"));
    gridColumns.Add(new Column("DetaCall", "Detalle", fill: true));
    if (PARAMS.Municipio == "Rivadavia" || PARAMS.Municipio == "SanMartín")
    {
      gridColumns.Add(new Column("DetaBarr", "Barrio", fill: true));
      gridColumns.Add(new Column("DetaLoca", "Localidad", fill: true));
    }
    return gridColumns;
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CodiCall", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiCall", "Código", FilterMode.StartsWith),
      new FilterField("DetaCall", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable(!(PARAMS.Municipio == "Rivadavia") && !(PARAMS.Municipio == "SanMartín") ? "SELECT * FROM infogov.calle " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL(true)) : "SELECT calle.*, barrio.DetaBarr, localidad.DetaLoca FROM infogov.calle LEFT JOIN infogov.barrio ON barrio.CodiBarr = calle.CodiBarr LEFT JOIN infogov.localidad ON localidad.CodiLoca = calle.CodiLoca WHERE calle.BajaFeho IS NULL" + (filter == null ? "WHERE 1=2;" : filter.sqlAnd(false)));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Calle getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public DataTable getByDetalle(string DetaCalle)
  {
    return this.conn.createDataTable($"SELECT *  FROM calle WHERE DetaCall LIKE '%{DetaCalle}%';");
  }

  public int getUltimoCodigo()
  {
    return this.conn.executeInt("select IFNULL(max(CodiCall),0)+1 from calle;");
  }
}
