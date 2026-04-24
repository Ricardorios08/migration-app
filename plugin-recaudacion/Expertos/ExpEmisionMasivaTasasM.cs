// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEmisionMasivaTasasM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

internal class ExpEmisionMasivaTasasM : Expert
{
  public ExpEmisionMasivaTasasM()
    : base(Modulo.Database, true)
  {
  }

  public List<EmisionMasivaTasasM> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<EmisionMasivaTasasM> gridData = new List<EmisionMasivaTasasM>();
    stringBuilder.AppendLine("SELECT liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, DetaTili, liquidacion.NumeLiqu");
    stringBuilder.AppendLine(", ActuLiqu, LeyeTili, FealLiqu");
    stringBuilder.AppendLine(", MAX(OrdeLita) MaxOrdeLita");
    stringBuilder.AppendLine("FROM liquidacion");
    stringBuilder.AppendLine("INNER JOIN(SELECT PeriLiqu, NumeLiqu, OrdeLita");
    stringBuilder.AppendLine("FROM liqutasa");
    stringBuilder.AppendLine("WHERE PeriLiqu IN (2023) AND OrdeLita > 0");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, NumeLiqu, OrdeLita) t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
    stringBuilder.AppendLine("LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
    stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = 1 AND liquidacion.PeriLiqu >= 2023 AND ActuLiqu = 'Si'");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, CodiOfic, NumeLiqu");
    stringBuilder.AppendLine("ORDER BY PeriLiqu, liquidacion.CodiOfic, CodiTili, NumeLiqu");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add(this.readLiquidacion(dr));
    }
    dr.Close();
    return gridData;
  }

  private EmisionMasivaTasasM readLiquidacion(InfoGovReader dr)
  {
    return new EmisionMasivaTasasM()
    {
      PeriLiqu = dr.readInt("PeriLiqu"),
      CodiTili = dr.readInt("CodiTili"),
      NumeLiqu = dr.readInt("NumeLiqu"),
      DetaTili = dr.readString("DetaTili"),
      ActuLiqu = dr.readString("ActuLiqu"),
      LeyeTili = dr.readString("LeyeTili"),
      FealLiqu = dr.readDateTime("FealLiqu"),
      CantOrdeLita = dr.readInt("MaxOrdeLita")
    };
  }
}
