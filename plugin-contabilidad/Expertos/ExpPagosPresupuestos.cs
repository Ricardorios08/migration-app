// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpPagosPresupuestos
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.PagosPresupuestarios;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpPagosPresupuestos : Expert
{
  public ExpPagosPresupuestos()
    : base(Modulo.Database)
  {
  }

  public List<DTOPagosPresupuestarios> getPagosPresupuestarios(
    DateTime desde,
    DateTime hasta,
    string CodiCuco,
    bool check)
  {
    Dictionary<string, DTOPagosPresupuestarios> dictionary = new Dictionary<string, DTOPagosPresupuestarios>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("DROP TEMPORARY TABLE if EXISTS tmovi;");
    stringBuilder.AppendLine("CREATE TEMPORARY TABLE `tmovi` (");
    stringBuilder.AppendLine("`CodiCuco` varchar(11) NOT NULL DEFAULT '',");
    stringBuilder.AppendLine("`DetaCuco` varchar(200) NOT NULL DEFAULT '',");
    stringBuilder.AppendLine("`TotalDebe` DECIMAL(14,2) DEFAULT NULL,");
    stringBuilder.AppendLine("`TotalHaber` DECIMAL(14,2) DEFAULT NULL");
    stringBuilder.AppendLine(") ENGINE=INNODB;");
    stringBuilder.AppendLine("INSERT INTO tmovi");
    stringBuilder.AppendLine("SELECT CodiCuco, DetaCuco, sum(DebeCaja) TotalDebe, sum(HabeCaja) TotalHaber");
    stringBuilder.AppendLine("FROM subdpagoimpu s");
    stringBuilder.AppendLine("INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = s.PeriInfo AND cc.CodiCuco = s.DebeCuco");
    stringBuilder.AppendLine($"WHERE s.PeriInfo = {desde.Year}");
    stringBuilder.AppendLine($"AND s.FechCaja BETWEEN {this.sqlDate(desde, false)} AND {this.sqlDate(hasta, false)}");
    if (CodiCuco != "")
      stringBuilder.AppendLine("AND Codicuco = " + CodiCuco);
    stringBuilder.AppendLine("GROUP BY cc.CodiCuco;");
    stringBuilder.AppendLine("INSERT INTO tmovi");
    stringBuilder.AppendLine("SELECT CodiCuco, DetaCuco, sum(DebeCaja) TotalDebe, sum(HabeCaja) TotalHaber");
    stringBuilder.AppendLine("FROM subdpagoimpu s");
    stringBuilder.AppendLine("INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = s.PeriInfo AND cc.CodiCuco = s.HabeCuco");
    stringBuilder.AppendLine($"WHERE s.PeriInfo = {desde.Year}");
    stringBuilder.AppendLine($"AND s.FechCaja BETWEEN {this.sqlDate(desde, false)} AND {this.sqlDate(hasta, false)}");
    if (CodiCuco != "")
      stringBuilder.AppendLine("AND Codicuco = " + CodiCuco);
    stringBuilder.AppendLine("GROUP BY cc.CodiCuco;");
    stringBuilder.AppendLine("SELECT CodiCuco, DetaCuco, SUM(TotalDebe) TotalDebe, SUM(TotalHaber) TotalHaber");
    stringBuilder.AppendLine("FROM tmovi");
    stringBuilder.AppendLine("GROUP BY CodiCuco;");
    InfoGovReader nfoGovReader1 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader1 != null && nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
      {
        DTOPagosPresupuestarios pagosPresupuestarios = new DTOPagosPresupuestarios();
        pagosPresupuestarios.CodiCuco = nfoGovReader1.readString(nameof (CodiCuco));
        pagosPresupuestarios.DetaCuco = $"{nfoGovReader1.readString(nameof (CodiCuco))} - {nfoGovReader1.readString("DetaCuco")}";
        pagosPresupuestarios.TotalDebe = nfoGovReader1.readDecimal("TotalDebe");
        pagosPresupuestarios.TotalHaber = nfoGovReader1.readDecimal("TotalHaber");
        dictionary.Add(pagosPresupuestarios.CodiCuco, pagosPresupuestarios);
      }
    }
    nfoGovReader1?.Close();
    stringBuilder.Clear();
    stringBuilder.AppendLine("SELECT CodiCuco, ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba, FechCaja, DebeCaja, HabeCaja, DetaCuco");
    stringBuilder.AppendLine("FROM subdpagoimpu s");
    stringBuilder.AppendLine("INNER JOIN infogov.cuentacontable cc on cc.PeriInfo=s.PeriInfo and (cc.CodiCuco=s.DebeCuco OR cc.CodiCuco=s.HabeCuco)");
    stringBuilder.AppendLine($"WHERE s.PeriInfo = {desde.Year.ToString()} AND (s.DebeCuco = '{CodiCuco}' OR s.HabeCuco = '{CodiCuco}')");
    stringBuilder.AppendLine("AND (s.DebeCaja != 0 OR s.HabeCaja != 0)");
    stringBuilder.AppendLine($"AND FechCaja BETWEEN {this.sqlDate(desde, false)} AND {this.sqlDate(hasta, false)}");
    stringBuilder.AppendLine("ORDER BY FechCaja, ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba;");
    InfoGovReader nfoGovReader2 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader2 != null && nfoGovReader2.HasRows)
    {
      while (nfoGovReader2.Read())
      {
        DTOPagosPresupuestariosDeta presupuestariosDeta = new DTOPagosPresupuestariosDeta();
        string key = nfoGovReader2.readString(nameof (CodiCuco));
        presupuestariosDeta.ExpeImpu = nfoGovReader2.readString("ExpeImpu");
        presupuestariosDeta.NumeLiqu = nfoGovReader2.readInt("NumeLiqu");
        presupuestariosDeta.CucuPers = nfoGovReader2.readLong("CucuPers");
        presupuestariosDeta.CodiBanc = nfoGovReader2.readInt("CodiBanc");
        presupuestariosDeta.NumeMoba = nfoGovReader2.readInt("NumeMoba");
        presupuestariosDeta.FechCaja = nfoGovReader2.readDateTime("FechCaja");
        presupuestariosDeta.DebeCaja = nfoGovReader2.readDecimal("DebeCaja");
        presupuestariosDeta.HabeCaja = nfoGovReader2.readDecimal("HabeCaja");
        if (dictionary.ContainsKey(key))
          dictionary[key].detalles.Add(presupuestariosDeta);
      }
    }
    stringBuilder.Clear();
    nfoGovReader2?.Close();
    return new List<DTOPagosPresupuestarios>((IEnumerable<DTOPagosPresupuestarios>) dictionary.Values);
  }
}
