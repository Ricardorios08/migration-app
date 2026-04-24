// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpBanco
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpBanco : 
  Expert,
  EntityExpert<Banco>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Banco>,
  ISearchExpert
{
  public ExpBanco()
    : base("contpres")
  {
  }

  public Banco CreateEntity() => new Banco();

  public Banco GetEntity(ID id)
  {
    return this.getEntity<Banco>($"SELECT * FROM banco WHERE PeriInfo={id.GetString("PeriInfo")} AND CodiBanc={id.GetString("CodiBanc")};", new System.Func<InfoGovReader, Banco>(this.readEntity));
  }

  private Banco readEntity(InfoGovReader dr)
  {
    Banco enti = new Banco();
    enti.PeriInfo = dr.readInt("PeriInfo");
    enti.CodiBanc = dr.readInt("CodiBanc");
    enti.DetaBanc = dr.readString("DetaBanc");
    enti.NumeBanc = dr.readString("NumeBanc");
    enti.CbuBanc = dr.readString("CbuBanc");
    enti.CodiCuco = dr.readString("CodiCuco");
    enti.FeanBanc = dr.readDateTime("FeanBanc", DateTime.MinValue);
    enti.UlchBanc = dr.readInt("UlchBanc");
    enti.EmauCheq = dr.readBool("EmauCheq");
    enti.ProcBanc = dr.readString("ProcBanc");
    enti.DescBanc = dr.readDecimal("DescBanc");
    enti.TxtBanc = dr.readInt("TxtBanc");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => this.hasPermissionFor(typeof (Banco), ActionMode.Delete);

  public bool CanActivate(Banco entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Banco entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Banco entity) => true;

  public bool CanEdit(Banco entity) => true;

  public Banco Find(Filter filter, bool onlyActive)
  {
    filter.Restrictions.Add(new FilterItem("PeriInfo", "Periodo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    return this.findEntity<Banco>("SELECT * FROM banco " + filter.sqlWOL(), new System.Func<InfoGovReader, Banco>(this.readEntity));
  }

  public bool SaveOnDB(Banco entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public string getSQL(Banco enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        string[] strArray1 = new string[21];
        strArray1[0] = "INSERT INTO banco(PeriInfo,CodiBanc,DetaBanc,NumeBanc,CodiCuco,UlchBanc,EmauCheq,ProcBanc,DescBanc,AltaUsua) VALUES(";
        int num1 = enti.PeriInfo;
        strArray1[1] = num1.ToString();
        strArray1[2] = ", ";
        num1 = enti.CodiBanc;
        strArray1[3] = num1.ToString();
        strArray1[4] = ", '";
        strArray1[5] = enti.DetaBanc;
        strArray1[6] = "', '";
        strArray1[7] = enti.NumeBanc;
        strArray1[8] = "', '";
        strArray1[9] = enti.CodiCuco;
        strArray1[10] = "', ";
        num1 = enti.UlchBanc;
        strArray1[11] = num1.ToString();
        strArray1[12] = ", ";
        strArray1[13] = this.sqlBool(enti.EmauCheq);
        strArray1[14] = ", '";
        strArray1[15] = enti.ProcBanc;
        strArray1[16 /*0x10*/] = "',";
        strArray1[17] = this.sqlDecimal(enti.DescBanc);
        strArray1[18] = ", '";
        strArray1[19] = this.usuario;
        strArray1[20] = "');";
        sql = string.Concat(strArray1);
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE banco SET DetaBanc='{enti.DetaBanc}', NumeBanc='{enti.NumeBanc}', CodiCuco='{enti.CodiCuco}', FeanBanc={this.sqlDate(enti.FeanBanc, false)}, UlchBanc={enti.UlchBanc.ToString()}, EmauCheq={this.sqlBool(enti.EmauCheq)}, ProcBanc='{enti.ProcBanc}', DescBanc={this.sqlDecimal(enti.DescBanc)}, ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE PeriInfo={enti.PeriInfo.ToString()} AND CodiBanc={enti.CodiBanc.ToString()};";
        break;
      case EntityStatus.Deleted:
        string[] strArray2 = new string[5]
        {
          "DELETE FROM banco WHERE PeriInfo=",
          null,
          null,
          null,
          null
        };
        int num2 = enti.PeriInfo;
        strArray2[1] = num2.ToString();
        strArray2[2] = " AND CodiBanc=";
        num2 = enti.CodiBanc;
        strArray2[3] = num2.ToString();
        strArray2[4] = ";";
        sql = string.Concat(strArray2);
        break;
      case EntityStatus.Activated:
        string[] strArray3 = new string[5]
        {
          "UPDATE banco SET BajaUsua='', BajaFeho=NULL WHERE PeriInfo=",
          null,
          null,
          null,
          null
        };
        int num3 = enti.PeriInfo;
        strArray3[1] = num3.ToString();
        strArray3[2] = " AND CodiBanc=";
        num3 = enti.CodiBanc;
        strArray3[3] = num3.ToString();
        strArray3[4] = ";";
        sql = string.Concat(strArray3);
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE banco SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE PeriInfo={enti.PeriInfo.ToString()} AND CodiBanc={enti.CodiBanc.ToString()};";
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("PeriInfo", "Periodo", visible: false),
      new Column("CodiBanc", "Código"),
      new Column("DetaBanc", "Detalle", fill: true),
      new Column("NumeBanc", "Numero", width: 100)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "PeriInfo", (object) row.Cells[0].Value.ToString());
    gridId.Add((object) "CodiBanc", (object) row.Cells[1].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiBanc", "Código", FilterMode.Equal),
      new FilterField("DetaBanc", "Detalle", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter()
  {
    return new Filter()
    {
      Restrictions = {
        new FilterItem("PeriInfo", "Periodo", FilterMode.Equal, PARAMS.Periodo.ToString())
      }
    };
  }

  public DataTable filterGridData(Filter filter)
  {
    if (filter == null)
      filter = new Filter();
    return this.conn.createDataTable("SELECT PeriInfo,CodiBanc,DetaBanc,NumeBanc FROM banco " + (filter == null ? "WHERE 1=2;" : $"{filter.sqlWOL(wdotcomma: false)}and PeriInfo = {PARAMS.Periodo.ToString()}"));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Banco getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);
}
