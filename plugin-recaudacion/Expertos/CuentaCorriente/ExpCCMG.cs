// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente.ExpCCMG
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;

public class ExpCCMG : Expert
{
  public ExpCCMG()
    : base(Modulo.Database)
  {
  }

  public void BuscarDeuda(List<CCMG> lista, CtaCte cuenta)
  {
    lista.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    if (cuenta.SoloDeuda)
      stringBuilder.AppendLine(this.ObtenerDeuda(cuenta));
    else
      stringBuilder.AppendLine(this.ObtenerMovimientosHistoricos(cuenta));
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        lista.Add(new CCMG()
        {
          PeriCtct = nfoGovReader.readShort("PeriCtct"),
          BimeCtct = nfoGovReader.readShort("BimeCtct"),
          BoleCtct = nfoGovReader.readString("PeriNumeBole"),
          CodiFapa = nfoGovReader.readInt("CodiFapa"),
          CuotDefa = nfoGovReader.readShort("CuotDefa"),
          NumeApre = nfoGovReader.readInt("NumeApre"),
          FealCtct = nfoGovReader.readDateTime("FealCtct"),
          FeveCtct = nfoGovReader.readDateTime("FeveCtct"),
          DetaConc = nfoGovReader.readString("DetaConc"),
          ExpeCtct = nfoGovReader.readString("ExpeCtct"),
          DetaTimo = nfoGovReader.readString("DetaTimo"),
          DebeCtct = nfoGovReader.readDecimal("DebeCtct"),
          RecaCtct = nfoGovReader.readDecimal("RecaCtct"),
          TotaCtct = nfoGovReader.readDecimal("RecaCtct") + nfoGovReader.readDecimal("SaldCtct")
        });
    }
    nfoGovReader?.Close();
  }

  private string ObtenerDeuda(CtaCte cuenta)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.conn.executeNonQuery($"CALL `fnDeuda`('{cuenta.CodiOfic}', '{cuenta.CuenCtct}', {this.sqlDate(cuenta.FeveCtct, false)});");
    stringBuilder.AppendLine("SELECT tmp.*, CONCAT(tmp.PeriBole,'-',tmp.NumeBole) PeriNumeBole, IFNULL(c.DetaConc,'Sin Concepto') DetaConc, IFNULL(tm.DetaTimo,'Sin Tipo Mov.') DetaTimo");
    stringBuilder.AppendLine("FROM tmp_ctacteboleto tmp");
    stringBuilder.AppendLine("LEFT JOIN concepto c ON c.PeriInfo = tmp.PeriInfo AND c.CodiConc = tmp.CodiConc");
    stringBuilder.AppendLine("LEFT JOIN tipomovi tm ON tm.CodiTimo = tmp.CodiTimo");
    stringBuilder.AppendLine("GROUP BY tmp.CuenCtct, tmp.PeriCtct, tmp.NumeCtct, tmp.MoviCtct");
    stringBuilder.AppendLine("ORDER BY tmp.PeriCtct, tmp.BimeCtct, tmp.MoviCtct, tmp.NumeCtct;");
    return stringBuilder.ToString();
  }

  private string ObtenerMovimientosHistoricos(CtaCte cta) => string.Empty;
}
