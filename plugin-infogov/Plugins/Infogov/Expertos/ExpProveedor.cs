// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpProveedor
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

public class ExpProveedor : 
  Expert,
  EntityExpert<Proveedor>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Proveedor>,
  ISearchExpert
{
  public ExpPersona expPersona = new ExpPersona();
  public ExpPersonaMaipu expPersonaMaipu = new ExpPersonaMaipu();

  public ExpProveedor()
    : base("contpres")
  {
  }

  public Proveedor CreateEntity() => new Proveedor();

  public Proveedor GetEntity(ID id)
  {
    Proveedor entity = this.getEntity<Proveedor>($"SELECT p.* FROM proveedor p  WHERE p.CucuPers = {id.GetString("CucuPers")};", new System.Func<InfoGovReader, Proveedor>(this.readEntity));
    if (entity != null)
      entity.persona = this.getPersona(entity.CucuPers);
    return entity;
  }

  public Proveedor readEntity(InfoGovReader dr)
  {
    Proveedor enti = new Proveedor();
    enti.CucuPers = dr.readLong("CucuPers");
    enti.DetaProv = dr.readString("DetaProv");
    enti.FantProv = dr.readString("FantProv");
    enti.CodiBapr = dr.readShort("CodiBapr");
    enti.CccaProv = dr.readShort("CccaProv");
    enti.CubaProv = dr.readString("CubaProv");
    enti.PainProv = dr.readLong("PainProv");
    enti.LocaProv = dr.readShort("LocaProv");
    enti.FedcProv = dr.readDateTime("FedcProv");
    enti.FehcProv = dr.readDateTime("FehcProv");
    enti.TotcProv = dr.readDecimal("TotcProv");
    enti.FactProv = dr.readString("FactProv");
    enti.FeviProv = dr.readDateTime("FeviProv");
    enti.ExpeProv = dr.readString("ExpeProv");
    enti.CedeProv = dr.readBool("CedeProv");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => id.GetString("CucuPers").Length > 0;

  public bool CanDeactivate(ID id) => id.GetString("CucuPers").Length > 0;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(Proveedor entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Proveedor entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Proveedor entity) => this.CanDelete(entity.id);

  public Proveedor Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Proveedor>("SELECT p.* FROM proveedor p " + filter.sqlWOL(), new System.Func<InfoGovReader, Proveedor>(this.readEntity));
  }

  public bool SaveOnDB(Proveedor entity)
  {
    string str1 = "";
    entity.persona.status = EntityStatus.New;
    entity.persona.CucuPers = entity.CucuPers;
    entity.persona.DetaPers = entity.DetaProv;
    string str2;
    if (!this.expPersona.existepersona(entity.persona.CucuPers))
    {
      str2 = str1 + this.expPersonaMaipu.getSQL(entity.persona);
    }
    else
    {
      entity.persona.status = EntityStatus.Modified;
      str2 = str1 + this.expPersonaMaipu.getSQL(entity.persona);
    }
    return this.conn.executeNonQuery(str2 + this.getSQL(entity));
  }

  public string getSQL(Proveedor enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        string[] strArray1 = new string[31 /*0x1F*/];
        strArray1[0] = "INSERT INTO proveedor (CucuPers, DetaProv, FantProv, CodiBapr, CccaProv, CubaProv, PainProv, LocaProv, FedcProv, FehcProv, TotcProv, FactProv, FeviProv, ExpeProv, CedeProv, AltaUsua) VALUES (";
        long num1 = enti.CucuPers;
        strArray1[1] = num1.ToString();
        strArray1[2] = ", '";
        strArray1[3] = enti.DetaProv;
        strArray1[4] = "', '";
        strArray1[5] = enti.FantProv;
        strArray1[6] = "', ";
        strArray1[7] = enti.CodiBapr.ToString();
        strArray1[8] = ", ";
        strArray1[9] = enti.CccaProv.ToString();
        strArray1[10] = ", '";
        strArray1[11] = enti.CubaProv;
        strArray1[12] = "', ";
        num1 = enti.PainProv;
        strArray1[13] = num1.ToString();
        strArray1[14] = ", ";
        strArray1[15] = enti.LocaProv.ToString();
        strArray1[16 /*0x10*/] = ", ";
        strArray1[17] = this.sqlDate(enti.FedcProv, false);
        strArray1[18] = ", ";
        strArray1[19] = this.sqlDate(enti.FehcProv, false);
        strArray1[20] = ", ";
        strArray1[21] = this.sqlDecimal(enti.TotcProv);
        strArray1[22] = ", 's/f', ";
        strArray1[23] = this.sqlDate(enti.FeviProv, false);
        strArray1[24] = ", '";
        strArray1[25] = enti.ExpeProv;
        strArray1[26] = "', ";
        strArray1[27] = enti.CedeProv.ToString();
        strArray1[28] = ", '";
        strArray1[29] = this.usuario;
        strArray1[30] = "');";
        sql = string.Concat(strArray1);
        break;
      case EntityStatus.Modified:
        string[] strArray2 = new string[33];
        strArray2[0] = "UPDATE proveedor SET DetaProv='";
        strArray2[1] = enti.DetaProv;
        strArray2[2] = "', FantProv='";
        strArray2[3] = enti.FantProv;
        strArray2[4] = "', CodiBapr=";
        short num2 = enti.CodiBapr;
        strArray2[5] = num2.ToString();
        strArray2[6] = ", CccaProv='";
        num2 = enti.CccaProv;
        strArray2[7] = num2.ToString();
        strArray2[8] = "', CubaProv='";
        strArray2[9] = enti.CubaProv;
        strArray2[10] = "', PainProv=";
        strArray2[11] = enti.PainProv.ToString();
        strArray2[12] = ", LocaProv=";
        num2 = enti.LocaProv;
        strArray2[13] = num2.ToString();
        strArray2[14] = ", FedcProv=";
        strArray2[15] = this.sqlDate(enti.FedcProv, false);
        strArray2[16 /*0x10*/] = ", FehcProv=";
        strArray2[17] = this.sqlDate(enti.FehcProv, false);
        strArray2[18] = ", TotcProv=";
        strArray2[19] = this.sqlDecimal(enti.TotcProv);
        strArray2[20] = ", FactProv='";
        strArray2[21] = enti.FactProv;
        strArray2[22] = "', FeviProv=";
        strArray2[23] = this.sqlDate(enti.FeviProv, false);
        strArray2[24] = ", ExpeProv='";
        strArray2[25] = enti.ExpeProv;
        strArray2[26] = "', CedeProv=";
        strArray2[27] = enti.CedeProv.ToString();
        strArray2[28] = ", ModiUsua='";
        strArray2[29] = this.usuario;
        strArray2[30] = "', ModiFeho=NOW() WHERE CucuPers=";
        strArray2[31 /*0x1F*/] = enti.CucuPers.ToString();
        strArray2[32 /*0x20*/] = ";";
        sql = string.Concat(strArray2);
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    List<Column> gridColumns = new List<Column>();
    gridColumns.Add(new Column("CucuPers", "CUIL/CUIT"));
    gridColumns.Add(new Column("DetaProv", "Proveedor", fill: true));
    gridColumns.Add(new Column("FactProv", "Tipo Factura", width: 100));
    if (PARAMS.Municipio == Municipio.Alvear.ToString())
    {
      gridColumns.Add(new Column("dofiprov", "Domicilio Fiscal", width: 300));
      gridColumns.Add(new Column("Telepers", "Tel. Fijo", width: 130));
      gridColumns.Add(new Column("CeluPers", "Tel. Celular", width: 130));
      gridColumns.Add(new Column("MailPers", "Email", width: 180));
    }
    return gridColumns;
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CucuPers", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("p.CucuPers", "CUIL/CUIT", FilterMode.StartsWith),
      new FilterField("DetaProv", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter()
  {
    Filter initialGridFilter = new Filter();
    if (PARAMS.Municipio == Municipio.Alvear.ToString())
      initialGridFilter.Restrictions.Add(new FilterItem("CucuPers", "CUIL/CUIT", FilterMode.Limit, "100000"));
    else
      initialGridFilter.Restrictions.Add(new FilterItem("CucuPers", "CUIL/CUIT", FilterMode.Limit, "100"));
    return initialGridFilter;
  }

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT p.* ,pers.* FROM proveedor p INNER JOIN infogov.persona pers ON p.CucuPers = pers.CucuPers " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Proveedor getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  internal Persona getPersona(long CucuPers)
  {
    Persona persona = new Persona();
    InfoGovReader dr = this.conn.executeReader($"SELECT p.* FROM infogov.persona p  WHERE p.CucuPers = {CucuPers.ToString()};");
    if (dr != null && dr.HasRows)
    {
      while (dr.Read())
        persona = this.expPersona.readEntity(dr);
    }
    dr?.Close();
    return persona;
  }

  internal bool existeProveedor(long CucuPers)
  {
    return this.conn.executeBool("SELECT IF(COUNT(*)>0,1,0) FROM contpres.proveedor WHERE CucuPers = " + CucuPers.ToString());
  }
}
