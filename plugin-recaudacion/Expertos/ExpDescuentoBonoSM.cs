// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpDescuentoBonoSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpDescuentoBonoSM : Expert
{
  public ExpDescuentoBonoSM()
    : base(Modulo.Database)
  {
  }

  public List<int> ObtenerPeriodos()
  {
    List<int> intList = new List<int>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT PeriInfo FROM infogov.periodo;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        intList.Add(nfoGovReader.readInt("PeriInfo"));
    }
    nfoGovReader?.Close();
    return intList;
  }

  public string ObtenerDatosTxt(int Periodo, int Mes)
  {
    StringBuilder stringBuilder1 = new StringBuilder();
    StringBuilder stringBuilder2 = new StringBuilder();
    int daysInMonth = new Calendar[1]
    {
      (Calendar) new GregorianCalendar()
    }[0].GetDaysInMonth(Periodo, Mes);
    if (daysInMonth < 1 || daysInMonth > 31 /*0x1F*/)
      return string.Empty;
    stringBuilder2.AppendLine("SELECT CONCAT('43', LPAD(l.CUIT,11,' '), LPAD(l.DNI,8,' '), '687', LPAD(REPLACE(CONVERT(df.TotaDefa,CHAR),'.',''),8,' ')) Registro");
    stringBuilder2.AppendLine("FROM recaudacion.detafapa df");
    stringBuilder2.AppendLine("INNER JOIN recaudacion.facipago fp ON fp.CodiFapa = df.CodiFapa AND fp.DeboFapa = 1 AND fp.EstaFapa = 'Activa'");
    stringBuilder2.AppendLine("INNER JOIN recaudacion.legajosm l ON l.LEGAJORE = fp.LegaFapa");
    stringBuilder2.AppendLine($"WHERE df.EstaDefa = 'Emitida' AND FepaDefa IS NULL AND FeveDefa BETWEEN {this.sqlDate(new DateTime(Periodo, Mes, 1), false)} AND {this.sqlDate(new DateTime(Periodo, Mes, daysInMonth), false)}");
    stringBuilder2.AppendLine("ORDER BY df.CodiFapa, df.CuotDefa;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder2.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        stringBuilder1.AppendLine(nfoGovReader.readString("Registro"));
    }
    nfoGovReader?.Close();
    if (!string.IsNullOrEmpty(stringBuilder1.ToString()))
      this.conn.executeNonQuery($"INSERT INTO descbono (DetaDebo, AltaUsua) VALUES ({this.sqlString(stringBuilder1.ToString())}, {this.sqlString(this.usuario)});");
    return stringBuilder1.ToString();
  }
}
