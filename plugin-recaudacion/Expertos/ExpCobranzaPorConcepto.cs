// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpCobranzaPorConcepto
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Reportes.CobranzaPorConcepto;
using InfoGov.SQL;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpCobranzaPorConcepto : Expert
{
  public ExpCobranzaPorConcepto()
    : base(Modulo.Database)
  {
  }

  public List<DTOCobranzaPorConcepto> getCobranzaPorConcepto(
    DateTime desde,
    DateTime hasta,
    string CodiConc)
  {
    List<DTOCobranzaPorConcepto> cobranzaPorConcepto = new List<DTOCobranzaPorConcepto>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT FeenAcpa, NumeAcpa, PeriBole, NumeBole, CapiDepa, RecaDepa, DereDepa, InteDepa, TotaDepa FROM detapago WHERE FeenAcpa >= {this.sqlDate(desde, false)}  AND FeenAcpa <= {this.sqlDate(hasta, false)} AND CodiConc = '{CodiConc}';");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        cobranzaPorConcepto.Add(new DTOCobranzaPorConcepto()
        {
          FechaEnvio = nfoGovReader.readDateTime("FeenAcpa"),
          NroGrupo = nfoGovReader.readShort("NumeAcpa"),
          Periodo = nfoGovReader.readInt("PeriBole"),
          NroBoleto = nfoGovReader.readInt("NumeBole"),
          Capital = nfoGovReader.readDecimal("CapiDepa"),
          Recargo = nfoGovReader.readDecimal("RecaDepa"),
          DescRec = nfoGovReader.readDecimal("DereDepa"),
          Interes = nfoGovReader.readDecimal("InteDepa"),
          Total = nfoGovReader.readDecimal("TotaDepa")
        });
    }
    nfoGovReader?.Close();
    return cobranzaPorConcepto;
  }
}
