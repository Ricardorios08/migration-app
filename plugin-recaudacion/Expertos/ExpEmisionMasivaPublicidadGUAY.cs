// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEmisionMasivaPublicidadGUAY
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

public class ExpEmisionMasivaPublicidadGUAY : Expert
{
  public ExpEmisionMasivaPublicidadGUAY()
    : base(Modulo.Database)
  {
  }

  public List<EmisionMasivaComercios> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<EmisionMasivaComercios> gridData = new List<EmisionMasivaComercios>();
    stringBuilder.AppendLine("SELECT liquidacion.*, MAX(OrdeLipu) MaxOrdeLico, tipoliqu.DetaTili");
    stringBuilder.AppendLine("FROM liquidacion");
    stringBuilder.AppendLine("INNER JOIN(");
    stringBuilder.AppendLine("SELECT PeriLiqu, NumeLiqu, OrdeLipu");
    stringBuilder.AppendLine("FROM liqupubl");
    stringBuilder.AppendLine("WHERE PeriLiqu in (2024) AND OrdeLipu > 0");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, NumeLiqu, OrdeLipu");
    stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
    stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '6' AND ActuLiqu = 'Si' AND(liquidacion.PeriLiqu in ('2024'))");
    stringBuilder.AppendLine("GROUP BY liquidacion.PeriLiqu, liquidacion.NumeLiqu;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add(this.readLiquidacion(dr));
    }
    dr.Close();
    return gridData;
  }

  private EmisionMasivaComercios readLiquidacion(InfoGovReader dr)
  {
    return new EmisionMasivaComercios()
    {
      PeriLiqu = dr.readInt("PeriLiqu"),
      CodiOfic = dr.readInt("CodiOfic"),
      CodiTili = dr.readInt("CodiTili"),
      NumeLiqu = dr.readInt("NumeLiqu"),
      DetaTili = dr.readString("DetaTili"),
      ActuLiqu = dr.readString("ActuLiqu"),
      LeyeTili = dr.readString("LeyeTili"),
      FealLiqu = dr.readDateTime("FealLiqu"),
      CantOrdeLico = dr.readInt("MaxOrdeLico")
    };
  }
}
