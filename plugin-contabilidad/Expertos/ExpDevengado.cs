// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpDevengado
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpDevengado : Expert
{
  public ExpDevengado()
    : base(Modulo.Database)
  {
  }

  public List<DTOSubDevengados> getDevengados(
    DateTime desde,
    DateTime hasta,
    bool check,
    bool soloAjuste)
  {
    Dictionary<string, DTOSubDevengados> dictionary = new Dictionary<string, DTOSubDevengados>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT cc.CodiCuco, cc.DetaCuco, SUM(DebeCaja) TotalDebe,SUM(HabeCaja) TotalHaber");
    stringBuilder.AppendLine("FROM cajadeve cd");
    stringBuilder.AppendLine("INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = cd.PeriInfo AND cc.CodiCuco = cd.CodiCuco");
    if (check)
      stringBuilder.AppendLine("AND (cc.CodiTicu like '6%' OR cc.CodiTicu like '8%')");
    stringBuilder.AppendLine($"WHERE FechCaja between  {this.sqlDate(desde, false)} AND  {this.sqlDate(hasta, false)}");
    if (soloAjuste)
      stringBuilder.AppendLine("AND cd.AjusImpu > 0");
    stringBuilder.AppendLine("GROUP BY cd.CodiCuco");
    stringBuilder.AppendLine("ORDER BY cd.CodiCuco, FechCaja;");
    InfoGovReader nfoGovReader1 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader1 != null && nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
      {
        DTOSubDevengados dtoSubDevengados = new DTOSubDevengados();
        dtoSubDevengados.CodiCuco = nfoGovReader1.readString("CodiCuco");
        dtoSubDevengados.DetaCuco = $"{nfoGovReader1.readString("CodiCuco")} - {nfoGovReader1.readString("DetaCuco")}";
        dtoSubDevengados.totaldebe = nfoGovReader1.readDecimal("TotalDebe");
        dtoSubDevengados.totalhaber = nfoGovReader1.readDecimal("TotalHaber");
        dictionary.Add(dtoSubDevengados.CodiCuco, dtoSubDevengados);
      }
    }
    nfoGovReader1?.Close();
    stringBuilder.Clear();
    stringBuilder.AppendLine("SELECT cd.CodiCuco, FechCaja, cd.ExpeImpu, cd.CodiPart, cd.CodiOrga, DebeCaja, HabeCaja");
    stringBuilder.AppendLine("FROM cajadeve cd");
    stringBuilder.AppendLine($"WHERE FechCaja between  {this.sqlDate(desde, false)} AND {this.sqlDate(hasta, false)}");
    if (soloAjuste)
      stringBuilder.AppendLine("AND cd.AjusImpu > 0");
    stringBuilder.AppendLine("ORDER BY cd.CodiCuco, FechCaja, ExpeImpu, cd.CodiPart, cd.CodiOrga;");
    InfoGovReader nfoGovReader2 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader2 != null && nfoGovReader2.HasRows)
    {
      while (nfoGovReader2.Read())
      {
        DTOSubDevengadosDeta subDevengadosDeta = new DTOSubDevengadosDeta();
        string key = nfoGovReader2.readString("CodiCuco");
        subDevengadosDeta.FechCaja = nfoGovReader2.readDateTime("FechCaja");
        subDevengadosDeta.ExpeImpu = nfoGovReader2.readString("ExpeImpu");
        subDevengadosDeta.CodiPart = nfoGovReader2.readString("CodiPart");
        subDevengadosDeta.CodiOrga = nfoGovReader2.readString("CodiOrga");
        subDevengadosDeta.DebeCaja = nfoGovReader2.readDecimal("DebeCaja");
        subDevengadosDeta.HabeCaja = nfoGovReader2.readDecimal("HabeCaja");
        if (dictionary.ContainsKey(key))
          dictionary[key].detalles.Add(subDevengadosDeta);
      }
    }
    stringBuilder.Clear();
    nfoGovReader2?.Close();
    return new List<DTOSubDevengados>((IEnumerable<DTOSubDevengados>) dictionary.Values);
  }
}
