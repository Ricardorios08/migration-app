// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpLibroMayorGeneral
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpLibroMayorGeneral : Expert
{
  public ExpLibroMayorGeneral()
    : base(Modulo.Database)
  {
  }

  internal List<ComboBoxItem> getPeriodos()
  {
    List<ComboBoxItem> periodos = new List<ComboBoxItem>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT DISTINCT(PeriInfo) FROM asiento ORDER BY PeriInfo DESC");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        if (nfoGovReader.readInt("PeriInfo") != 0)
        {
          ComboBoxItem comboBoxItem = new ComboBoxItem(nfoGovReader.readInt("PeriInfo").ToString(), (object) nfoGovReader.readInt("PeriInfo"));
          periodos.Add(comboBoxItem);
        }
      }
    }
    nfoGovReader?.Close();
    return periodos;
  }

  internal List<ComboBoxItem> getTiposAsiento()
  {
    List<ComboBoxItem> tiposAsiento = new List<ComboBoxItem>();
    tiposAsiento.Add(new ComboBoxItem("Todos", (object) 0));
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT CodiTias, DetaTias FROM tipoasiento");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        if (nfoGovReader.readInt("CodiTias") != 0)
        {
          ComboBoxItem comboBoxItem = new ComboBoxItem($"{nfoGovReader.readInt("CodiTias").ToString()}-{nfoGovReader.readString("DetaTias")}", (object) nfoGovReader.readInt("CodiTias"));
          tiposAsiento.Add(comboBoxItem);
        }
      }
    }
    nfoGovReader?.Close();
    return tiposAsiento;
  }

  public List<DTOLibroMayorGeneral> getLibroMayorGeneral(
    int PeriInfo,
    DateTime desde,
    DateTime hasta,
    int CodiTias,
    string CodiCuco,
    bool todaslascuentas)
  {
    Dictionary<string, DTOLibroMayorGeneral> dictionary = new Dictionary<string, DTOLibroMayorGeneral>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"SET @desde={this.sqlDate(desde, false)}, @hasta={this.sqlDate(hasta, false)}");
    stringBuilder.AppendLine(", @sald=0.00");
    stringBuilder.AppendLine(", @cuco=''");
    if (CodiCuco == "")
      stringBuilder.AppendLine(", @lkcuco='%';");
    else
      stringBuilder.AppendLine($", @lkcuco='{CodiCuco}%';");
    stringBuilder.AppendLine("DROP TEMPORARY TABLE IF EXISTS tmovi;");
    stringBuilder.AppendLine("CREATE TEMPORARY TABLE `tmovi` (");
    stringBuilder.AppendLine("`PeriInfo` year(4) NOT NULL,");
    stringBuilder.AppendLine("`CodiCuco` char(12) NOT NULL DEFAULT '',");
    stringBuilder.AppendLine("`DetaCuco` varchar(100) NOT NULL DEFAULT '',");
    stringBuilder.AppendLine("`FechAsie` date DEFAULT NULL,");
    stringBuilder.AppendLine("`CodiAsie` smallint(4) unsigned NOT NULL DEFAULT '0',");
    stringBuilder.AppendLine("`CodiTias` tinyint(2) unsigned NOT NULL DEFAULT '0',");
    stringBuilder.AppendLine("`DetaAsie` varchar(150) NOT NULL DEFAULT '',");
    stringBuilder.AppendLine("`DebeMoas` decimal(13,2) NOT NULL DEFAULT '0.00',");
    stringBuilder.AppendLine("`HabeMoas` decimal(13,2) NOT NULL DEFAULT '0.00'");
    stringBuilder.AppendLine(") ENGINE=InnoDB;");
    stringBuilder.AppendLine("INSERT INTO tmovi (PeriInfo, CodiCuco, DetaCuco, DebeMoas, HabeMoas)");
    stringBuilder.AppendLine("SELECT cc.PeriInfo, cc.CodiCuco, DetaCuco, IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0) DebeMoas, IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0) HabeMoas");
    stringBuilder.AppendLine("FROM infogov.cuentacontable cc");
    stringBuilder.AppendLine("LEFT JOIN asiento a ON a.PeriInfo = cc.PeriInfo");
    stringBuilder.AppendLine("AND FechAsie < @desde");
    stringBuilder.AppendLine("LEFT JOIN moviasiento mv ON mv.PeriInfo = cc.PeriInfo AND mv.CodiCuco = cc.CodiCuco AND mv.CodiAsie = a.CodiAsie");
    stringBuilder.AppendLine("WHERE cc.PeriInfo = year(@desde) AND cc.ImpuCuco=1");
    stringBuilder.AppendLine("AND cc.CodiCuco LIKE @lkcuco");
    stringBuilder.AppendLine("GROUP BY cc.CodiCuco;");
    stringBuilder.AppendLine("INSERT INTO tmovi (PeriInfo, CodiCuco, DetaCuco, FechAsie, CodiAsie, CodiTias, DetaAsie, DebeMoas, HabeMoas)");
    stringBuilder.AppendLine("SELECT mv.PeriInfo, mv.CodiCuco, DetaCuco, FechAsie, mv.CodiAsie, CodiTias, DetaAsie, DebeMoas, HabeMoas");
    stringBuilder.AppendLine("FROM moviasiento mv");
    stringBuilder.AppendLine("INNER JOIN asiento a ON a.PeriInfo = mv.PeriInfo AND a.CodiAsie = mv.CodiAsie");
    stringBuilder.AppendLine("INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco");
    stringBuilder.AppendLine("WHERE mv.PeriInfo =  year(@desde) AND FechAsie BETWEEN @desde AND @hasta");
    stringBuilder.AppendLine("AND mv.CodiCuco LIKE @lkcuco");
    stringBuilder.AppendLine("ORDER BY mv.CodiCuco, mv.CodiAsie;");
    stringBuilder.AppendLine("SELECT ROUND(IF(@cuco!=CodiCuco,@sald:=0,@sald:=@sald),2) tmp1");
    stringBuilder.AppendLine(", @sald:=@sald+DebeMoas-HabeMoas tmp2");
    stringBuilder.AppendLine(", ROUND(IF(@sald>0,@sald,0),2) Deudor");
    stringBuilder.AppendLine(", IF(@sald<0, ROUND(@sald*-1,2),0) Acreedor");
    stringBuilder.AppendLine(", tmovi.CodiCuco, tmovi.DetaCuco");
    stringBuilder.AppendLine("FROM tmovi");
    stringBuilder.AppendLine("WHERE codiasie=0");
    stringBuilder.AppendLine("ORDER BY codicuco, codiasie;");
    InfoGovReader nfoGovReader1 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader1 != null && nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
      {
        DTOLibroMayorGeneral libroMayorGeneral = new DTOLibroMayorGeneral();
        libroMayorGeneral.CodiCuco = nfoGovReader1.readString(nameof (CodiCuco));
        libroMayorGeneral.DetaCuco = nfoGovReader1.readString("DetaCuco");
        libroMayorGeneral.Deudor = nfoGovReader1.readDecimal("Deudor");
        libroMayorGeneral.Acreedor = nfoGovReader1.readDecimal("Acreedor");
        dictionary.Add(libroMayorGeneral.CodiCuco, libroMayorGeneral);
      }
    }
    nfoGovReader1?.Close();
    stringBuilder.Clear();
    stringBuilder.AppendLine("SELECT ROUND(IF(@cuco!=CodiCuco,@sald:=0,@sald:=@sald),2) tmp1");
    stringBuilder.AppendLine(", @sald:=@sald+DebeMoas-HabeMoas tmp2");
    stringBuilder.AppendLine(", ROUND(IF(@sald>0,@sald,0),2) Deudor");
    stringBuilder.AppendLine(", ROUND(IF(@sald<0, @sald*-1,0),2) Acreedor");
    stringBuilder.AppendLine(", tmovi.*");
    stringBuilder.AppendLine(", @cuco:=CodiCuco tmp3");
    stringBuilder.AppendLine("FROM tmovi");
    if (CodiTias != 0)
      stringBuilder.AppendLine("WHERE CodiTias=" + CodiTias.ToString());
    stringBuilder.AppendLine("ORDER BY codicuco, codiasie;");
    InfoGovReader nfoGovReader2 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader2 != null && nfoGovReader2.HasRows)
    {
      while (nfoGovReader2.Read())
      {
        DTOLibroMayorGeneralDeta mayorGeneralDeta = new DTOLibroMayorGeneralDeta();
        string key = nfoGovReader2.readString(nameof (CodiCuco));
        mayorGeneralDeta.PeriInfo = nfoGovReader2.readInt(nameof (PeriInfo));
        mayorGeneralDeta.FechAsie = nfoGovReader2.readDateTime("FechAsie");
        mayorGeneralDeta.CodiAsie = nfoGovReader2.readInt("CodiAsie");
        mayorGeneralDeta.CodiTias = nfoGovReader2.readInt(nameof (CodiTias));
        mayorGeneralDeta.DetaAsie = nfoGovReader2.readString("DetaAsie");
        mayorGeneralDeta.DebeMoas = nfoGovReader2.readDecimal("DebeMoas");
        mayorGeneralDeta.HabeMoas = nfoGovReader2.readDecimal("HabeMoas");
        mayorGeneralDeta.Deudor = nfoGovReader2.readDecimal("Deudor");
        mayorGeneralDeta.Acreedor = nfoGovReader2.readDecimal("Acreedor");
        if (dictionary.ContainsKey(key))
          dictionary[key].detalles.Add(mayorGeneralDeta);
      }
    }
    stringBuilder.Clear();
    nfoGovReader2?.Close();
    if (todaslascuentas)
      return new List<DTOLibroMayorGeneral>((IEnumerable<DTOLibroMayorGeneral>) dictionary.Values);
    List<DTOLibroMayorGeneral> libroMayorGeneral1 = new List<DTOLibroMayorGeneral>();
    foreach (DTOLibroMayorGeneral libroMayorGeneral2 in dictionary.Values)
    {
      if (libroMayorGeneral2.detalles.Count > 1)
        libroMayorGeneral1.Add(libroMayorGeneral2);
    }
    return libroMayorGeneral1;
  }

  public DateTime consultarMinFecha(int periinfo)
  {
    return this.conn.executeDateTime("SELECT Min(FechAsie) MinFecha FROM asiento WHERE periinfo=" + periinfo.ToString());
  }

  public DateTime consultarMaxFecha(int periinfo)
  {
    return this.conn.executeDateTime("SELECT Max(FechAsie) MaxFecha FROM asiento WHERE periinfo=" + periinfo.ToString());
  }
}
