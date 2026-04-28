// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpDebitos
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpDebitos : Expert
{
  public ExpDebitos()
    : base(Modulo.Database)
  {
  }

  public List<Debito> getGridData()
  {
    List<Debito> gridData = new List<Debito>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT d.PeriInfo, d.NumeDebi, d.FechDebi, d.ExorImpu, d.ExpeImpu, d.CodiCuco, d.CucuPers");
    stringBuilder.AppendLine(", Left(d.NumeFact,3) TifaDeve, Mid(d.NumeFact,4,4) SufaDeve, Right(d.NumeFact,8) NufaDeve");
    stringBuilder.AppendLine(", DetaCuco, DetaProv, IFNULL(DetaOrga,'') DetaOrga");
    stringBuilder.AppendLine(", ImpoDebi- SUM(IF(ImpoImpu IS NULL,0,ImpoImpu)) ImpoDebi, d.NumeFact, d.CodiOrga, d.DetaDebi, d.FeanDebi, d.AjrpDebi, d.PaesDebi");
    stringBuilder.AppendLine("FROM debito d");
    stringBuilder.AppendLine("INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = d.PeriInfo AND cc.CodiCuco = d.CodiCuco");
    stringBuilder.AppendLine("INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN infogov.organigrama orga ON orga.PeriInfo = d.PeriInfo AND orga.CodiOrga = d.CodiOrga");
    stringBuilder.AppendLine("LEFT JOIN liquidadeta lqd USE INDEX (idxlide02) ON lqd.PeriInfo = d.PeriInfo AND lqd.NumeDebi = d.NumeDebi AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = lqd.PeriInfo AND l.ExpeImpu = lqd.ExpeImpu AND l.NumeLiqu = lqd.NumeLiqu) IS NULL AND FeanLide IS NULL");
    stringBuilder.AppendLine($"WHERE d.PeriInfo = {PARAMS.Periodo.ToString()} AND d.FeanDebi IS NULL");
    stringBuilder.AppendLine("AND PaesDebi = 0");
    stringBuilder.AppendLine("GROUP BY d.NumeDebi");
    stringBuilder.AppendLine("HAVING ImpoDebi > 0");
    stringBuilder.AppendLine("ORDER BY d.PeriInfo, d.NumeDebi;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add(this.readLista(dr));
    }
    dr.Close();
    return gridData;
  }

  private Debito readLista(InfoGovReader dr)
  {
    return new Debito()
    {
      PeriInfo = dr.readInt("PeriInfo"),
      NumeDebi = dr.readShort("NumeDebi"),
      FechDebi = dr.readDateTime("FechDebi"),
      Exorimpu = dr.readString("Exorimpu"),
      ExpeImpu = dr.readString("ExpeImpu"),
      CodiCuco = dr.readString("CodiCuco"),
      DetaCuco = dr.readString("DetaCuco"),
      CucuPers = dr.readLong("CucuPers"),
      DetaProv = dr.readString("DetaProv"),
      ImpoDebi = dr.readDecimal("ImpoDebi"),
      NumeFact = dr.readString("NumeFact"),
      CodiOrga = dr.readString("CodiOrga"),
      DetaDebi = dr.readString("DetaDebi"),
      FeanDebi = dr.readDateTime("FeanDebi"),
      AjrpDebi = dr.readBool("AjrpDebi"),
      PaesDebi = dr.readInt("PaesDebi")
    };
  }

  public bool pasarnuevoejercicio(int periviejo, Debito debi)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"SET @periviejo = {periviejo.ToString()}, @numedebiviejo = {debi.NumeDebi.ToString()};");
    stringBuilder.AppendLine("SET @numedebinuevo=(SELECT IFNULL(MAX(numedebi),0) FROM debito d WHERE periinfo = @periviejo+1);");
    stringBuilder.AppendLine("INSERT INTO debito (PeriInfo, NumeDebi, FechDebi, Exorimpu, ExpeImpu, CodiCuco, CucuPers, ImpoDebi, NumeFact, CodiOrga, DetaDebi, FeanDebi, AjrpDebi, AltaUsua)");
    stringBuilder.AppendLine("SELECT PeriInfo, Convert(@numedebinuevo:=@numedebinuevo+1, unsigned) NumeDebi, FechDebi, Exorimpu, ExpeImpu, CodiCuco, CucuPers");
    stringBuilder.AppendLine(", ImpoDebi, NumeFact, CodiOrga, DetaDebi, FeanDebi, AjrpDebi, AltaUsua");
    stringBuilder.AppendLine("FROM (");
    stringBuilder.AppendLine("SELECT @periviejo+1 PeriInfo");
    stringBuilder.AppendLine(", (SELECT IFNULL(MAX(fechdebi), CONVERT(CONCAT(@periviejo+1,'-01-01'), DATE)) FROM debito d WHERE periinfo = @periviejo+1) FechDebi");
    stringBuilder.AppendLine(", d.Exorimpu, d.ExpeImpu, d.CodiCuco, d.CucuPers");
    stringBuilder.AppendLine(", ImpoDebi- SUM(IF(ImpoImpu IS NULL,0,ImpoImpu)) ImpoDebi");
    stringBuilder.AppendLine($", d.NumeFact, d.CodiOrga, d.DetaDebi, d.FeanDebi, AjrpDebi, '{this.usuario}' AltaUsua");
    stringBuilder.AppendLine("FROM debito d");
    stringBuilder.AppendLine("LEFT JOIN liquidadeta lqd USE INDEX (idxlide02) ON lqd.PeriInfo = d.PeriInfo AND lqd.NumeDebi = d.NumeDebi AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = lqd.PeriInfo AND l.ExpeImpu = lqd.ExpeImpu AND l.NumeLiqu = lqd.NumeLiqu) IS NULL AND FeanLide IS NULL");
    stringBuilder.AppendLine("WHERE d.PeriInfo = @periviejo AND FeanDebi IS NULL AND d.NumeDebi = @numedebiviejo");
    stringBuilder.AppendLine("GROUP BY d.NumeDebi");
    stringBuilder.AppendLine(") AS tbl");
    stringBuilder.AppendLine("WHERE ImpoDebi != 0");
    stringBuilder.AppendLine("ORDER BY PeriInfo, NumeDebi;");
    stringBuilder.AppendLine("UPDATE debito SET PaesDebi=@numedebinuevo WHERE PeriInfo= @periviejo AND NumeDebi=@numedebiviejo;");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public int consultarparaconta(int peri)
  {
    return this.conn.executeInt("SELECT count(*) FROM paraconta WHERE PeriInfo = " + peri.ToString());
  }

  public int revisarDebito(int periodo, int numedebi)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"SELECT PaesDebi FROM debito WHERE PeriInfo = {periodo.ToString()} AND NumeDebi = {numedebi.ToString()} AND FeanDebi IS NULL;");
    return this.conn.executeInt(stringBuilder.ToString());
  }

  public int revisarDebitoPaes(int periodo, int paesdebi)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"SELECT NumeDebi FROM debito WHERE PeriInfo = {periodo.ToString()} AND NumeDebi = {paesdebi.ToString()} AND FeanDebi IS NULL;");
    return this.conn.executeInt(stringBuilder.ToString());
  }
}
