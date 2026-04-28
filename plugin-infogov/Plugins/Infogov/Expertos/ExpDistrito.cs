// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpDistrito
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

public class ExpDistrito : 
  Expert,
  EntityExpert<Distrito>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Distrito>,
  ISearchExpert
{
  public ExpDistrito()
    : base(Modulo.Database)
  {
  }

  public Distrito CreateEntity() => new Distrito();

  public Distrito GetEntity(ID id)
  {
    return this.getEntity<Distrito>("SELECT distrito.* FROM distrito WHERE CodiDist=" + id.GetInt("CodiDist").ToString(), new System.Func<InfoGovReader, Distrito>(this.readEntity));
  }

  private Distrito readEntity(InfoGovReader dr)
  {
    Distrito enti = new Distrito();
    enti.CodiDist = dr.readInt("CodiDist");
    enti.DetaDist = dr.readString("DetaDist");
    enti.CodiDepa = dr.readShort("CodiDepa");
    if (PARAMS.Municipio == "Maipú")
      enti.CP = dr.readShort("CP");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(Distrito entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Distrito entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Distrito entity) => this.CanDelete(entity.id);

  public Distrito Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Distrito>("SELECT * FROM infogov.distrito " + filter.sqlWOL(), new System.Func<InfoGovReader, Distrito>(this.readEntity));
  }

  public bool SaveOnDB(Distrito entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(Distrito enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sql = $"INSERT INTO distrito (CodiDist, CodiDepa, DetaDist, AltaUsua) VALUES({enti.CodiDist.ToString()},{enti.CodiDepa.ToString()}, '{enti.DetaDist}', '{this.usuario}')";
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE distrito SET \tCodiDepa = {enti.CodiDepa.ToString()},\tDetaDist = '{enti.DetaDist}',\tModiUsua = '{this.usuario}',\tModiFeho = NOW()\tWHERE CodiDist={enti.CodiDist.ToString()}";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiDist", "Código"),
      new Column("DetaDist", "Detalle", fill: true),
      new Column("DetaDepa", "Departamento")
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiDist", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiDist", "Código", FilterMode.Equal),
      new FilterField("DetaDist", "Detalle", FilterMode.Contains, true),
      new FilterField("DetaDepa", "Departamento", FilterMode.Contains)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT distrito.*, departamento.DetaDepa FROM distrito  INNER JOIN departamento ON departamento.CodiDepa = distrito.CodiDepa " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Distrito getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public int getUltimoCodigo()
  {
    return this.conn.executeInt("select IFNULL(max(CodiDist),0)+1 from distrito;");
  }

  public List<ComboBoxItem> getDistrito()
  {
    List<ComboBoxItem> distrito = new List<ComboBoxItem>();
    distrito.Add(new ComboBoxItem("Todos", (object) 0));
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT CodiDist, DetaDist FROM distrito;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ComboBoxItem comboBoxItem = new ComboBoxItem(nfoGovReader.readString("DetaDist"), (object) nfoGovReader.readInt("CodiDist"));
        distrito.Add(comboBoxItem);
      }
    }
    nfoGovReader?.Close();
    return distrito;
  }
}
