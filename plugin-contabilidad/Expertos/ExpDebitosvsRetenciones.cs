// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpDebitosvsRetenciones
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Reportes.DebitosVsRetenciones;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpDebitosvsRetenciones : Expert
{
  public ExpDebitosvsRetenciones()
    : base(Modulo.Database)
  {
  }

  public List<DTODebitosvsRetenciones> getDebitosvsRetenciones(
    int PeriInfo,
    string CodiCuco,
    bool Todos,
    bool Diferencia,
    bool Iguales)
  {
    List<DTODebitosvsRetenciones> debitosvsRetenciones = new List<DTODebitosvsRetenciones>();
    StringBuilder stringBuilder = new StringBuilder();
    int totalWidth = int.Parse(PARAMS.Parameters.GetString("CantDigCuco"));
    stringBuilder.AppendLine($"SET @peri={PeriInfo.ToString()}, @cuco='{CodiCuco.PadRight(totalWidth, '0')}';");
    stringBuilder.AppendLine("DROP TEMPORARY TABLE IF EXISTS tmovi;");
    stringBuilder.AppendLine("CREATE TEMPORARY TABLE `tmovi` (");
    stringBuilder.AppendLine("`expe` VARCHAR(15) NOT NULL DEFAULT '',");
    stringBuilder.AppendLine("`impodebi` DECIMAL(32,2) DEFAULT NULL DEFAULT '0',");
    stringBuilder.AppendLine("`nro_debi` VARCHAR(250) NOT NULL DEFAULT '',");
    stringBuilder.AppendLine("`impopres` DECIMAL(32,2) DEFAULT NULL DEFAULT '0',");
    stringBuilder.AppendLine("`nro_op` VARCHAR(250) NOT NULL DEFAULT ''");
    stringBuilder.AppendLine(");");
    stringBuilder.AppendLine("INSERT INTO tmovi (expe, impodebi, nro_debi)");
    stringBuilder.AppendLine("SELECT o.ExpeImpu, SUM(impoimpu), GROUP_CONCAT(DISTINCT o.NumeOrpa)");
    stringBuilder.AppendLine("FROM liquidadeta lqd");
    stringBuilder.AppendLine("INNER JOIN ordenpago o ON o.PeriInfo = lqd.PeriInfo AND o.ExpeImpu = lqd.ExpeImpu AND o.NumeLiqu = lqd.NumeLiqu AND o.FeanOrpa IS NULL");
    stringBuilder.AppendLine("WHERE lqd.PeriInfo = @peri AND lqd.CodiCuco = @cuco");
    stringBuilder.AppendLine("GROUP BY o.ExpeImpu;");
    stringBuilder.AppendLine("INSERT INTO tmovi (expe, impopres, nro_op)");
    stringBuilder.AppendLine("SELECT o.ExpeImpu, SUM(impoline), GROUP_CONCAT(DISTINCT o.NumeOrpa)");
    stringBuilder.AppendLine("FROM liquidaneto lqn");
    stringBuilder.AppendLine("INNER JOIN ordenpago o ON o.PeriInfo = lqn.PeriInfo AND o.ExpeImpu = lqn.ExpeImpu AND o.NumeLiqu = lqn.NumeLiqu AND o.FeanOrpa IS NULL");
    stringBuilder.AppendLine("WHERE lqn.periinfo = @peri AND lqn.codicuco = @cuco");
    stringBuilder.AppendLine("GROUP BY o.ExpeImpu;");
    stringBuilder.AppendLine("SELECT expe");
    stringBuilder.AppendLine(", SUM(impodebi) impodebi, GROUP_CONCAT(DISTINCT nro_debi) nro_debi");
    stringBuilder.AppendLine(", SUM(impopres) impopres, GROUP_CONCAT(DISTINCT nro_op) nro_op");
    stringBuilder.AppendLine(", SUM(impodebi-impopres) diferencia");
    stringBuilder.AppendLine("FROM tmovi");
    stringBuilder.AppendLine("GROUP BY expe");
    if (Todos)
      stringBuilder.AppendLine(";");
    else if (Diferencia)
      stringBuilder.AppendLine("HAVING diferencia != 0;");
    else if (Iguales)
      stringBuilder.AppendLine("HAVING diferencia = 0;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        debitosvsRetenciones.Add(new DTODebitosvsRetenciones()
        {
          Expediente = nfoGovReader.readString("expe"),
          ImpuDebi = nfoGovReader.readDecimal("impodebi"),
          NroDebi = nfoGovReader.readString("nro_debi"),
          ImpuPres = nfoGovReader.readDecimal("impopres"),
          NroOp = nfoGovReader.readString("nro_op"),
          Diferencia = nfoGovReader.readDecimal("diferencia")
        });
    }
    nfoGovReader?.Close();
    stringBuilder.Clear();
    return debitosvsRetenciones;
  }

  internal List<ComboBoxItem> getPeriodos()
  {
    List<ComboBoxItem> periodos = new List<ComboBoxItem>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT DISTINCT(PeriInfo) FROM ordenpago ORDER BY PeriInfo DESC");
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
}
