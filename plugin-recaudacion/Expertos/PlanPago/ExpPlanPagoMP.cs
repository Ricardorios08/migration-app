// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.PlanPago.ExpPlanPagoMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Entidades.PlanPago;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto.Maipu;
using InfoGov.Plugins.Recaudacion.Reportes.Maipu.ReimpresionPP;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.PlanPago;

public class ExpPlanPagoMP : Expert, IExpertoPlanPago
{
  private readonly ExpConfiguracion _config;
  private readonly ExpEBMaipu _expEB;

  public ExpPlanPagoMP()
    : base(Modulo.Database)
  {
    this._config = new ExpConfiguracion(true);
    this._expEB = new ExpEBMaipu();
  }

  public string GenerarPlanPago(IPlanPago plan)
  {
    if (!(plan is DTOFaciPagoMP dtoFaciPagoMp))
      return "Error en datos.";
    if (dtoFaciPagoMp.DeudaSeleccionada == null || dtoFaciPagoMp.DeudaSeleccionada.Count == 0)
      return "No hay deuda seleccionada.";
    if (dtoFaciPagoMp.DetallesFacilidad == null || dtoFaciPagoMp.DetallesFacilidad.Count == 0)
      return "No hay facilidad seleccionada.";
    if (dtoFaciPagoMp.CacuFapa <= (short) 0)
      return "La cantidad de cuotas debe ser mayor a cero.";
    if ((int) dtoFaciPagoMp.CacuFapa != dtoFaciPagoMp.DetallesFacilidad.Count)
      return "La cantidad de cuotas no coincide con el detalle de la facilidad.";
    DateTime dateTime = Misc.Now();
    int num1 = this.conn.executeInt($"SELECT `fnNumeBoleFaci`({dateTime.Year}, {dtoFaciPagoMp.CacuFapa});");
    if (num1 <= 0)
      return "Error al generar el número de boleto.";
    long num2 = this.conn.executeLong("SELECT `fnNumeFaci`();");
    if (num2 <= 0L)
      return "Error al generar el código de facilidad.";
    StringBuilder stringBuilder = new StringBuilder();
    List<string> values1 = new List<string>();
    List<string> values2 = new List<string>();
    List<string> values3 = new List<string>();
    List<string> values4 = new List<string>();
    List<string> values5 = new List<string>();
    Dictionary<(short, int, short, short, long, short), short> dictionary = new Dictionary<(short, int, short, short, long, short), short>();
    Decimal num3 = dtoFaciPagoMp.DeudaSeleccionada.Where<CCMaipu>((Func<CCMaipu, bool>) (d => d != null)).SelectMany<CCMaipu, DetaCCMaipu>((Func<CCMaipu, IEnumerable<DetaCCMaipu>>) (d => (IEnumerable<DetaCCMaipu>) d.Detalles ?? Enumerable.Empty<DetaCCMaipu>())).Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (d => d.SaldCtct));
    Decimal num4 = 0M;
    Decimal num5 = 0M;
    List<ExpPlanPagoMP.DeudaTrabajo> list = dtoFaciPagoMp.DeudaSeleccionada.Where<CCMaipu>((Func<CCMaipu, bool>) (d => d != null)).SelectMany<CCMaipu, DetaCCMaipu>((Func<CCMaipu, IEnumerable<DetaCCMaipu>>) (d => (IEnumerable<DetaCCMaipu>) d.Detalles ?? Enumerable.Empty<DetaCCMaipu>())).Select<DetaCCMaipu, ExpPlanPagoMP.DeudaTrabajo>((Func<DetaCCMaipu, ExpPlanPagoMP.DeudaTrabajo>) (d => new ExpPlanPagoMP.DeudaTrabajo()
    {
      Deuda = d,
      Saldo = d.Tipo == TipoResumenMP.Comun ? d.SaldCtct : d.SaldCtct
    })).ToList<ExpPlanPagoMP.DeudaTrabajo>();
    stringBuilder.AppendLine("INSERT INTO facipago (CodiFapa, CucuPers, CodiTifa, CacuFapa, CaapFapa, FealFapa, CodiOfic, CuenCtct, EstaFapa, TainFapa, CapiFapa, DecaFapa, RecaFapa, DereFapa, ApreFapa, InteFapa, SeyaFapa, TotaFapa, CodiTifp, CufiFapa, FirmFapa, AltaUsua)");
    stringBuilder.AppendLine($"VALUES ({num2}, {dtoFaciPagoMp.Cuenta.CucuPers}, {dtoFaciPagoMp.CodiTifa}, {dtoFaciPagoMp.CacuFapa}, {dtoFaciPagoMp.CaapFapa}, DATE(NOW()), {dtoFaciPagoMp.Cuenta.CodiOfic}, {this.sqlString(dtoFaciPagoMp.Cuenta.CuenCtct)}, 'Activa', {this.sqlDecimal(dtoFaciPagoMp.TainFapa)}, {this.sqlDecimal(dtoFaciPagoMp.CapiFapa)}, {this.sqlDecimal(dtoFaciPagoMp.DecaFapa)}, {this.sqlDecimal(dtoFaciPagoMp.RecaFapa)}, {this.sqlDecimal(dtoFaciPagoMp.DereFapa)}, {this.sqlDecimal(dtoFaciPagoMp.ApreFapa)}, {this.sqlDecimal(dtoFaciPagoMp.InteFapa)}, 0, {this.sqlDecimal(dtoFaciPagoMp.TotaFapa)}, {dtoFaciPagoMp.CodiTifp}, {dtoFaciPagoMp.CufiFapa}, {this.sqlString(dtoFaciPagoMp.FirmFapa)}, {this.sqlString(this.usuario)});");
    foreach (DetaFapaMP detaFapaMp in dtoFaciPagoMp.DetallesFacilidad)
    {
      detaFapaMp.PeriBole = (short) dateTime.Year;
      detaFapaMp.NumeBole = num1;
      values1.Add($"({num2}, {detaFapaMp.CuotDefa}, {this.sqlDate(detaFapaMp.FeveDefa, false)}, {this.sqlDecimal(detaFapaMp.CapiDefa)}, {this.sqlDecimal(detaFapaMp.DecaDefa)}, {this.sqlDecimal(detaFapaMp.RecaDefa)}, {this.sqlDecimal(detaFapaMp.DereDefa)}, {this.sqlDecimal(detaFapaMp.ApreDefa)}, {this.sqlDecimal(detaFapaMp.InteDefa)}, {this.sqlDecimal(detaFapaMp.TotaDefa)})");
      values2.Add($"({detaFapaMp.PeriBole}, {detaFapaMp.NumeBole}, {dtoFaciPagoMp.Cuenta.CodiOfic}, {this.sqlString(dtoFaciPagoMp.Cuenta.CuenCtct)}, {dtoFaciPagoMp.Cuenta.CucuPers}, DATE(NOW()), {this.sqlDate(detaFapaMp.FeveDefa, false)}, 'Emitido', {num2}, {detaFapaMp.CuotDefa}, '', {this.sqlDecimal(detaFapaMp.CapiDefa)}, {this.sqlDecimal(detaFapaMp.RecaDefa)}, {this.sqlDecimal(detaFapaMp.DecaDefa)}, {this.sqlDecimal(detaFapaMp.DereDefa)}, {this.sqlDecimal(detaFapaMp.InteDefa)}, 0, 0, {this.sqlDecimal(detaFapaMp.ApreDefa)}, {this.sqlDecimal(detaFapaMp.TotaDefa)}, {this.sqlString(this.usuario)})");
      Decimal num6 = detaFapaMp.CapiDefa;
      bool flag1 = true;
      for (int index = 0; index < list.Count; ++index)
      {
        ExpPlanPagoMP.DeudaTrabajo deudaTrabajo = list[index];
        DetaCCMaipu deuda = deudaTrabajo.Deuda;
        if (num6 > 0M)
        {
          Decimal num7 = 0M;
          Decimal num8 = 0M;
          Decimal num9 = 0M;
          Decimal num10 = 0M;
          Decimal num11 = 0M;
          Decimal num12 = 0M;
          if (flag1)
          {
            num7 = detaFapaMp.DecaDefa;
            num8 = detaFapaMp.RecaDefa;
            num9 = detaFapaMp.DereDefa;
            num10 = detaFapaMp.InteDefa;
            num11 = 0M;
            num12 = num8 + num10 + num11 - num7 - num9;
            flag1 = false;
          }
          Decimal saldo = deudaTrabajo.Saldo;
          bool flag2 = false;
          int num13 = 0;
          Decimal num14;
          if (num6 - saldo >= 0M)
          {
            num14 = saldo;
            num6 -= num14;
            flag2 = true;
            num13 = (int) detaFapaMp.CuotDefa;
          }
          else
          {
            num14 = num6;
            num6 = 0M;
          }
          num5 += num14;
          num4 += num14;
          Decimal num15 = num12 + num14;
          values5.Add($"({num2}, {detaFapaMp.CuotDefa}, {dtoFaciPagoMp.Cuenta.CodiOfic}, {this.sqlString(dtoFaciPagoMp.Cuenta.CuenCtct)}, {deuda.PeriCtct}, {deuda.BimeCtct}, {deuda.NumeCtct}, {deuda.MoviCtct}, {this.sqlString(deuda.CodiConc)}, {this.sqlDecimal(num14)}, {this.sqlDecimal(num14)})");
          (short, int, short, short, long, short) key = (detaFapaMp.PeriBole, detaFapaMp.NumeBole, deuda.PeriCtct, deuda.BimeCtct, deuda.NumeCtct, deuda.MoviCtct);
          short num16;
          if (!dictionary.TryGetValue(key, out num16))
            num16 = (short) 1;
          else
            ++num16;
          dictionary[key] = num16;
          values4.Add($"({detaFapaMp.PeriBole}, {detaFapaMp.NumeBole}, {deuda.PeriCtct}, {deuda.BimeCtct}, {deuda.NumeCtct}, {deuda.MoviCtct}, {num16}, {dtoFaciPagoMp.Cuenta.CodiOfic}, {this.sqlString(dtoFaciPagoMp.Cuenta.CuenCtct)}, {num2}, {detaFapaMp.CuotDefa}, {deuda.NumeApre}, {deuda.CodiTimo}, {deuda.PeriInfo}, {this.sqlString(deuda.CodiConc)}, {this.sqlString(deuda.ExpeCtct)}, '', {this.sqlDecimal(num14)}, {this.sqlDecimal(num7)}, {this.sqlDecimal(num8)}, {this.sqlDecimal(num9)}, {this.sqlDecimal(num10)}, 0, 0, {this.sqlDecimal(num11)}, {this.sqlDecimal(num15)})");
          values3.Add($"SELECT {dtoFaciPagoMp.Cuenta.CodiOfic} AS CodiOfic, {this.sqlString(dtoFaciPagoMp.Cuenta.CuenCtct)} AS CuenCtct, {deuda.PeriCtct} AS PeriCtct, {deuda.BimeCtct} AS BimeCtct, {deuda.NumeCtct} AS NumeCtct, {deuda.MoviCtct} AS MoviCtct, {num2} AS CodiFapa, {num13} AS CuotDefa");
          if (flag2)
          {
            list.RemoveAt(index);
            --index;
          }
          else
            deudaTrabajo.Saldo -= num14;
        }
        else
          break;
      }
      ++num1;
    }
    if (num4 != num5)
      return $"Error en la asignación del capital. Capital deuda total: {num4}, Capital cuota total: {num5}.";
    if (num5 != dtoFaciPagoMp.CapiFapa)
      return $"Error en la asignación del capital de las cuotas. Capital cuota total: {num5}, Capital del plan: {dtoFaciPagoMp.CapiFapa}.";
    if (num4 != num3)
      return "Error en asignacion de deuda seleccionada.";
    if (num4 != dtoFaciPagoMp.CapiFapa)
      return $"Error en la asignación del capital del plan con el capital de la deuda. Capital deuda total: {num4}, Capital del plan: {dtoFaciPagoMp.CapiFapa}.";
    if (values1.Count > 0)
    {
      stringBuilder.AppendLine("INSERT INTO detafapa (CodiFapa, CuotDefa, FeveDefa, CapiDefa, DecaDefa, RecaDefa, DereDefa, ApreDefa, InteDefa, TotaDefa)");
      stringBuilder.AppendLine("VALUES");
      stringBuilder.AppendLine(string.Join("," + Environment.NewLine, (IEnumerable<string>) values1));
      stringBuilder.AppendLine(";");
    }
    if (values2.Count > 0)
    {
      stringBuilder.AppendLine("INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, EstaBole, CodiFapa, CuotDefa, ObseBole, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, CrafBole, ApreBole, TotaBole, CodiUsua)");
      stringBuilder.AppendLine("VALUES");
      stringBuilder.AppendLine(string.Join("," + Environment.NewLine, (IEnumerable<string>) values2));
      stringBuilder.AppendLine(";");
    }
    if (values4.Count > 0)
    {
      stringBuilder.AppendLine("INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, ExpeCtct, ObseDebo, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, ApreDebo, TotaDebo)");
      stringBuilder.AppendLine("VALUES");
      stringBuilder.AppendLine(string.Join("," + Environment.NewLine, (IEnumerable<string>) values4));
      stringBuilder.AppendLine(";");
    }
    if (values5.Count > 0)
    {
      stringBuilder.AppendLine("INSERT INTO facictacte (CodiFapa, CuotDefa, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiConc, CapiFacc, SaldFacc)");
      stringBuilder.AppendLine("VALUES");
      stringBuilder.AppendLine(string.Join("," + Environment.NewLine, (IEnumerable<string>) values5));
      stringBuilder.AppendLine(";");
    }
    if (values3.Count > 0)
    {
      stringBuilder.AppendLine("UPDATE ctacte c");
      stringBuilder.AppendLine("INNER JOIN (");
      stringBuilder.AppendLine(string.Join(" UNION ALL " + Environment.NewLine, (IEnumerable<string>) values3));
      stringBuilder.AppendLine(") x");
      stringBuilder.AppendLine("ON c.CodiOfic = x.CodiOfic AND c.CuenCtct = x.CuenCtct AND c.PeriCtct = x.PeriCtct AND c.BimeCtct = x.BimeCtct AND c.NumeCtct = x.NumeCtct AND c.MoviCtct = x.MoviCtct");
      stringBuilder.AppendLine("SET c.CodiFapa = x.CodiFapa, c.CuotDefa = x.CuotDefa;");
    }
    if (!this.conn.executeNonQuery(stringBuilder.ToString()))
      return "No se pudo generar el plan, verificar datos.";
    dtoFaciPagoMp.FealFapa = dateTime;
    dtoFaciPagoMp.CodiFapa = num2;
    return string.Empty;
  }

  public string ImprimirPlanPago(IPlanPago plan)
  {
    if (!(plan is DTOFaciPagoMP dtoFaciPagoMp))
      return "Error en datos.";
    if (dtoFaciPagoMp.DeudaSeleccionada == null || dtoFaciPagoMp.DeudaSeleccionada.Count == 0)
      return "No hay deuda seleccionada.";
    if (dtoFaciPagoMp.DetallesFacilidad == null || dtoFaciPagoMp.DetallesFacilidad.Count == 0)
      return "No hay facilidad seleccionada.";
    DTOImpresionPlanPago datos = new DTOImpresionPlanPago();
    datos.Tipo = TipoEB.ImprimirPlanPago;
    datos.Plan = plan;
    string str = string.Empty;
    try
    {
      foreach (string html in new RepEBMP().ArmarReportesPlanPago(datos).Where<string>((Func<string, bool>) (d => !string.IsNullOrWhiteSpace(d))))
        Print.ImprimirHTML(html, dtoFaciPagoMp.Impresora);
    }
    catch (Exception ex)
    {
      str = ex.Message;
    }
    return str;
  }

  public string ReimprimirPlanPago(
    long CodiFapa,
    short CuotDesde = 0,
    short CuotHasta = 0,
    string Impresora = "")
  {
    if (string.IsNullOrEmpty(Impresora))
    {
      if (!this._config.ImpresoraActiva(this._config.config.ImprBole))
        return "La impresora se encuentra inactiva.";
      Impresora = this._config.config.ImprBole;
    }
    else if (!this._config.ImpresoraActiva(Impresora))
      return "La impresora se encuentra inactiva.";
    DTOFaciPagoMP dtoFaciPagoMp = new DTOFaciPagoMP();
    List<DetaFapaMP> detaFapaMpList = new List<DetaFapaMP>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT df.*, fp.CacuFapa, fp.CodiOfic, fp.CuenCtct, of.DetaOfic, tf.ExtrTifa, b.PeriBole, b.NumeBole");
    stringBuilder.AppendLine("FROM detafapa df");
    stringBuilder.AppendLine("INNER JOIN facipago fp ON fp.CodiFapa = df.CodiFapa");
    stringBuilder.AppendLine("INNER JOIN tipofapa tf ON tf.CodiTifa = fp.CodiTifa");
    stringBuilder.AppendLine("INNER JOIN oficina of ON of.CodiOfic = fp.CodiOfic");
    stringBuilder.AppendLine("INNER JOIN boleto b ON b.CodiFapa = df.CodiFapa AND b.CuotDefa = df.CuotDefa");
    stringBuilder.AppendLine($"WHERE df.EstaDefa = 'Emitida' AND df.CodiFapa = {CodiFapa} AND df.CuotDefa BETWEEN {CuotDesde} AND {CuotHasta}");
    stringBuilder.AppendLine("ORDER BY df.CuotDefa;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        detaFapaMpList.Add(new DetaFapaMP()
        {
          CodiFapa = nfoGovReader.readLong(nameof (CodiFapa)),
          CuotDefa = nfoGovReader.readShort("CuotDefa"),
          FeveDefa = nfoGovReader.readDateTime("FeveDefa"),
          TotaDefa = nfoGovReader.readDecimal("TotaDefa"),
          PeriBole = nfoGovReader.readShort("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole")
        });
        dtoFaciPagoMp.Cuenta.CodiOfic = nfoGovReader.readShort("CodiOfic");
        dtoFaciPagoMp.Cuenta.DetaOfic = nfoGovReader.readString("DetaOfic");
        dtoFaciPagoMp.Cuenta.CuenCtct = nfoGovReader.readString("CuenCtct");
        dtoFaciPagoMp.CodiFapa = nfoGovReader.readLong(nameof (CodiFapa));
        dtoFaciPagoMp.CacuFapa = nfoGovReader.readShort("CacuFapa");
        dtoFaciPagoMp.ExtrTifa = nfoGovReader.readString("ExtrTifa");
      }
    }
    nfoGovReader?.Close();
    if (detaFapaMpList.Count == 0)
      return "No se encontraron cuotas para el plan seleccionado.";
    new ExpCuentaCorriente().BuscarDatosCuenta(dtoFaciPagoMp.Cuenta);
    if (!dtoFaciPagoMp.Cuenta.Existe)
      return "No se encontraron datos de la cuenta corriente asociada al plan de pago.";
    dtoFaciPagoMp.DetallesFacilidad.AddRange((IEnumerable<DetaFapaMP>) detaFapaMpList);
    DTOImpresionPlanPago datos = new DTOImpresionPlanPago();
    datos.Tipo = TipoEB.ReimprimirPlanPago;
    datos.Plan = (IPlanPago) dtoFaciPagoMp;
    datos.Desde = detaFapaMpList.Min<DetaFapaMP, short>((Func<DetaFapaMP, short>) (c => c.CuotDefa));
    datos.Hasta = detaFapaMpList.Max<DetaFapaMP, short>((Func<DetaFapaMP, short>) (c => c.CuotDefa));
    string str = string.Empty;
    try
    {
      Print.ImprimirHTML(new RepEBMP().ReimprimirPlanPago(datos), Impresora);
    }
    catch (Exception ex)
    {
      str = ex.Message;
    }
    return str;
  }

  public void ObtenerTiposFirmantes(List<TipoFirmanteMP> tipos)
  {
    tipos.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT CodiTifp, DetaTifp FROM tipofirmFapa WHERE BajaFeho IS NULL;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        tipos.Add(new TipoFirmanteMP()
        {
          CodiTifp = nfoGovReader.readShort("CodiTifp"),
          DetaTifp = nfoGovReader.readString("DetaTifp")
        });
    }
    nfoGovReader?.Close();
  }

  public void BuscarResumenCuotasPlan(long CodiFapa, List<CuotaFapa> lista)
  {
    lista.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT CONCAT(df.CuotDefa,'/',fp.CacuFapa) CuotDefaStr, df.EstaDefa, df.FeveDefa, df.FepaDefa, df.TotaDefa FROM detafapa df INNER JOIN facipago fp ON fp.CodiFapa = df.CodiFapa WHERE df.CodiFapa = {CodiFapa} ORDER BY df.CuotDefa;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        lista.Add(new CuotaFapa()
        {
          CuotDefaStr = nfoGovReader.readString("CuotDefaStr"),
          EstaDefa = nfoGovReader.readString("EstaDefa"),
          FeveDefa = nfoGovReader.readDateTime("FeveDefa"),
          FepaDefa = nfoGovReader.readDateTime("FepaDefa"),
          TotaDefa = nfoGovReader.readDecimal("TotaDefa")
        });
    }
    nfoGovReader?.Close();
  }

  private sealed class DeudaTrabajo
  {
    public DetaCCMaipu Deuda { get; set; }

    public Decimal Saldo { get; set; }
  }
}
