// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpIngresoRecaExterno
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Reportes.IngresoRecaExterno;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

internal class ExpIngresoRecaExterno : Expert
{
  public ExpIngresoRecaExterno()
    : base(Modulo.Database)
  {
  }

  public void DatosRepIngresosExternos(List<DTOIngresoRecaExterno> datos, DateTime FechaEnvio)
  {
    datos.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT ap.*, e.DetaEnre");
    stringBuilder.AppendLine("FROM recaudacion.acrepago ap");
    stringBuilder.AppendLine("INNER JOIN infogov.entereca e ON e.CodiEnre = ap.CodiEnre AND e.ReexEnre = 1");
    stringBuilder.AppendLine("WHERE ap.FeenAcpa = " + this.sqlDate(FechaEnvio, false));
    stringBuilder.AppendLine("ORDER BY ap.CodiEnre, ap.FepaAcpa;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        datos.Add(new DTOIngresoRecaExterno()
        {
          FeenAcpa = nfoGovReader.readDateTime("FeenAcpa"),
          NumeAcpa = nfoGovReader.readInt("NumeAcpa"),
          CodiEnre = nfoGovReader.readInt("CodiEnre"),
          DetaEnre = nfoGovReader.readString("DetaEnre"),
          FepaAcpa = nfoGovReader.readDateTime("FepaAcpa"),
          TocoAcpa = nfoGovReader.readInt("TocoAcpa"),
          ImpoAcpa = nfoGovReader.readDecimal("ImpoAcpa"),
          NoarAcpa = nfoGovReader.readString("NoarAcpa"),
          NumeArch = nfoGovReader.readInt("NumeArch")
        });
    }
    nfoGovReader.Close();
  }

  public bool ExisteRegistroRepo(DateTime FechaEnvio)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT COUNT(*)");
    stringBuilder.AppendLine("FROM recaudacion.acrepago ap");
    stringBuilder.AppendLine("INNER JOIN infogov.entereca e ON e.CodiEnre = ap.CodiEnre AND e.ReexEnre = 1");
    stringBuilder.AppendLine("WHERE ap.FeenAcpa = " + this.sqlDate(FechaEnvio, false));
    stringBuilder.AppendLine("ORDER BY ap.CodiEnre, ap.FepaAcpa;");
    return this.conn.executeInt(stringBuilder.ToString()) > 0;
  }
}
