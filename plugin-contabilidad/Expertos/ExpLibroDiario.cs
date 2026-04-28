// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpLibroDiario
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpLibroDiario : Expert
{
  public ExpLibroDiario()
    : base(Modulo.Database)
  {
  }

  internal List<ComboBoxItem> getPeriodos()
  {
    List<ComboBoxItem> periodos = new List<ComboBoxItem>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT DISTINCT(PeriInfo) PeriInfo FROM asiento ORDER BY PeriInfo DESC;");
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
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT CodiTias, DetaTias FROM tipoasiento;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        if (nfoGovReader.readInt("CodiTias") != 0)
          tiposAsiento.Add(new ComboBoxItem($"{nfoGovReader.readInt("CodiTias").ToString()}-{nfoGovReader.readString("DetaTias")}", (object) nfoGovReader.readInt("CodiTias"))
          {
            Value = (object) nfoGovReader.readInt("CodiTias")
          });
      }
    }
    nfoGovReader?.Close();
    return tiposAsiento;
  }

  public Dictionary<int, string> getMaxAsiento(string periodo)
  {
    Dictionary<int, string> maxAsiento = new Dictionary<int, string>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"SELECT IFNULL(Max(CodiAsie), 1) AS CodiAsie, Cast(IFNULL(Max(FechAsie), '{periodo}-01-01') AS DATE) AS FechAsie FROM asiento WHERE PeriInfo = {periodo}");
    InfoGovReader nfoGovReader1 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
      {
        Dictionary<int, string> dictionary = maxAsiento;
        int key = nfoGovReader1.readInt("CodiAsie");
        InfoGovReader nfoGovReader2 = nfoGovReader1;
        DateTime dateTime = new DateTime();
        DateTime onError = dateTime;
        dateTime = nfoGovReader2.readDateTime("FechAsie", onError);
        string shortDateString = dateTime.ToShortDateString();
        dictionary.Add(key, shortDateString);
      }
    }
    nfoGovReader1.Close();
    return maxAsiento;
  }

  public List<List<Asiento>> getLibroDiario(
    string CodiCuco,
    string PeriInfo,
    DateTime FechDesde,
    DateTime FechHasta,
    int CodiTias,
    string CodiAsie)
  {
    List<List<Asiento>> libroDiario = new List<List<Asiento>>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT asiento.*, DetaTias, (DebeMoas = 0 and HabeMoas<> 0) Debe, moviasiento.CodiCuco, DetaCuco, Sum(DebeMoas) DebeMoas, Sum(HabeMoas) HabeMoas");
    stringBuilder.AppendLine("FROM ");
    if (CodiCuco != "")
    {
      stringBuilder.AppendLine("(");
      stringBuilder.AppendLine("SELECT a.*");
      stringBuilder.AppendLine("FROM asiento a");
      stringBuilder.AppendLine($"INNER JOIN moviasiento mv ON mv.PeriInfo = a.PeriInfo AND mv.CodiAsie = a.CodiAsie AND mv.CodiCuco LIKE '{CodiCuco}%'");
      stringBuilder.AppendLine("WHERE a.PeriInfo = " + PeriInfo);
      stringBuilder.AppendLine($"AND FechAsie BETWEEN {this.sqlDate(FechDesde, false)} AND {this.sqlDate(FechHasta, false)}");
      stringBuilder.AppendLine("GROUP BY a.CodiAsie");
      stringBuilder.AppendLine(") asiento");
    }
    else
      stringBuilder.AppendLine(" asiento");
    stringBuilder.AppendLine("INNER JOIN tipoasiento ON tipoasiento.CodiTias = asiento.CodiTias");
    stringBuilder.AppendLine("INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie");
    stringBuilder.AppendLine("INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = moviasiento.PeriInfo AND cc.CodiCuco = moviasiento.CodiCuco");
    stringBuilder.AppendLine("WHERE asiento.PeriInfo = " + PeriInfo);
    if (CodiAsie.Contains(","))
      stringBuilder.AppendLine("AND asiento.CodiAsie IN " + CodiAsie);
    else if (CodiAsie.Contains("AND"))
      stringBuilder.AppendLine("AND asiento.CodiAsie BETWEEN " + CodiAsie);
    else
      stringBuilder.AppendLine("AND asiento.CodiAsie = " + CodiAsie);
    stringBuilder.AppendLine($" AND FechAsie BETWEEN {this.sqlDate(FechDesde, false)} AND {this.sqlDate(FechHasta, false)}");
    if (CodiTias != 0)
      stringBuilder.AppendLine($"AND asiento.CodiTias = {CodiTias}");
    stringBuilder.AppendLine("GROUP BY asiento.CodiAsie, CodiCuco, DebeMoas > 0");
    stringBuilder.AppendLine("ORDER BY asiento.CodiAsie, Debe, CodiCuco");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    int num1 = 0;
    List<Asiento> asientoList = new List<Asiento>();
    if (dr.HasRows)
    {
      while (dr.Read())
      {
        int num2 = dr.readInt(nameof (CodiAsie));
        if (num1 == 0)
          num1 = num2;
        if (num2 == num1)
        {
          asientoList.Add(this.readLibroDiario(dr));
        }
        else
        {
          libroDiario.Add(asientoList);
          asientoList = new List<Asiento>();
          num1 = num2;
          asientoList.Add(this.readLibroDiario(dr));
        }
      }
      libroDiario.Add(asientoList);
    }
    dr.Close();
    return libroDiario;
  }

  private Asiento readLibroDiario(InfoGovReader dr)
  {
    return new Asiento()
    {
      PeriInfo = dr.readInt("PeriInfo"),
      CodiAsie = dr.readInt("CodiAsie"),
      FechAsie = dr.readDateTime("FechAsie"),
      DetaAsie = dr.readString("DetaAsie"),
      CodiTias = dr.readInt("CodiTias"),
      MinuAsie = dr.readString("MinuAsie"),
      DetaTias = dr.readString("DetaTias"),
      CodiCuco = dr.readString("CodiCuco"),
      DetaCuco = dr.readString("DetaCuco"),
      DebeMoas = dr.readDecimal("DebeMoas"),
      HabeMoas = dr.readDecimal("HabeMoas")
    };
  }

  public string fechaTxt(DateTime fecha) => this.sqlDate(fecha, false).Replace("-", "");
}
