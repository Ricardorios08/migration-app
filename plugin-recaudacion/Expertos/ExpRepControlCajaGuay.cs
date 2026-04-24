// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpRepControlCajaGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpRepControlCajaGuay : Expert
{
  public ExpRepControlCajaGuay()
    : base(Modulo.Database)
  {
  }

  public List<DTOEnteReca> ObtenerEntes()
  {
    List<DTOEnteReca> dtoEnteRecaList = new List<DTOEnteReca>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM infogov.entereca WHERE NumeAcpa != 0;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        dtoEnteRecaList.Add(new DTOEnteReca()
        {
          CodiEnre = nfoGovReader.readInt("CodiEnre"),
          DetaEnre = nfoGovReader.readString("DetaEnre")
        });
    }
    nfoGovReader?.Close();
    return dtoEnteRecaList;
  }

  public List<DateTime> ObtenerFechasEnvio(int CodiEnre)
  {
    List<DateTime> dateTimeList = new List<DateTime>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT DISTINCT FeenAcpa FROM acrepago WHERE CodiEnre = {CodiEnre} AND FecoAcpa IS NOT NULL AND ContAcpa = 1 ORDER BY FeenAcpa DESC;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        dateTimeList.Add(nfoGovReader.readDateTime("FeenAcpa"));
    }
    nfoGovReader?.Close();
    return dateTimeList;
  }

  public DTOControlCajaGuay ObtenerDatos(int CodiEnre, DateTime FeenAcpa)
  {
    DTOControlCajaGuay dtoControlCajaGuay = new DTOControlCajaGuay();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT ap.FecoAcpa, ap.UscoAcpa, CONCAT(p.PeriBole,'/',p.NumeBole) NumeBole, GROUP_CONCAT(IFNULL(tp.DetaTipa,'')) DetaFopa, GROUP_CONCAT(fp.NuchFopa) NuchFopa, o.DetaOfic, p.CuenCtct, p.TotaPago, p.CodiUsua, p.ObsePago");
    stringBuilder.AppendLine("FROM acrepago ap");
    stringBuilder.AppendLine("INNER JOIN pago p ON p.FeenAcpa = ap.FeenAcpa AND p.NumeAcpa = ap.NumeAcpa");
    stringBuilder.AppendLine("LEFT JOIN formpago fp ON p.PeriFopa = fp.PeriFopa AND p.NumeFopa = fp.NumeFopa");
    stringBuilder.AppendLine("LEFT JOIN tipopago tp ON tp.CodiTipa = fp.CodiTipa");
    stringBuilder.AppendLine("INNER JOIN oficina o ON o.CodiOfic = p.CodiOfic");
    stringBuilder.AppendLine($"WHERE ap.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND ap.NumeAcpa = {CodiEnre}");
    stringBuilder.AppendLine("GROUP BY p.PeriBole, p.NumeBole");
    stringBuilder.AppendLine("ORDER BY p.FealPago;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        dtoControlCajaGuay.FecoAcpa = nfoGovReader.readDateTime("FecoAcpa");
        dtoControlCajaGuay.UscoAcpa = nfoGovReader.readString("UscoAcpa");
        dtoControlCajaGuay.Pagos.Add(new DTOPagos()
        {
          NumeBole = nfoGovReader.readString("NumeBole"),
          DetaFopa = nfoGovReader.readString("DetaFopa"),
          NuchFopa = nfoGovReader.readString("NuchFopa"),
          DetaOfic = nfoGovReader.readString("DetaOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          TotaPago = nfoGovReader.readDecimal("TotaPago"),
          CodiUsua = nfoGovReader.readString("CodiUsua"),
          ObsePago = nfoGovReader.readString("ObsePago")
        });
      }
    }
    nfoGovReader?.Close();
    return dtoControlCajaGuay;
  }
}
