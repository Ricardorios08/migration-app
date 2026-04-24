// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpBoletoCajaMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Reportes.Maipu;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpBoletoCajaMP : Expert
{
  private ExpImpresionTicket expImpTicket;
  internal DTOAcrePagoMP caja;

  public ExpBoletoCajaMP()
    : base(Modulo.Database)
  {
    this.expImpTicket = new ExpImpresionTicket();
    this.caja = new DTOAcrePagoMP();
  }

  public void ObtenerResumenCierreCaja(
    List<ResumenCajaMP> resumen,
    DateTime FeenAcpa,
    short NumeAcpa)
  {
    resumen.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT DetaRecu, CantRecu, ImpoRecu FROM cierrecajadeta WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} ORDER BY MoviCica;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        resumen.Add(new ResumenCajaMP()
        {
          DetaRecu = nfoGovReader.readString("DetaRecu"),
          CantRecu = nfoGovReader.readShort("CantRecu"),
          ImpoRecu = nfoGovReader.readDecimal("ImpoRecu")
        });
    }
    nfoGovReader?.Close();
  }

  public void ObtenerBoletosPagados(
    List<ResumenBoletosPagadosMP> boletos,
    DateTime FeenAcpa,
    short NumeAcpa)
  {
    boletos.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT p.PeriBole, p.NumeBole, p.CucuPers, IFNULL(pers.DetaPers, 'Sin Descripción') DetaPers, p.CodiOfic, IFNULL(of.DetaOfic, 'Sin Oficina') DetaOfic, p.CuenCtct, GROUP_CONCAT(DISTINCT tp.DetaTipa) DetaTipa, p.TotaPago ");
    stringBuilder.AppendLine("FROM pago p ");
    stringBuilder.AppendLine("INNER JOIN boleto b ON b.PeriBole = p.PeriBole AND b.NumeBole = p.NumeBole");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona pers ON pers.CucuPers = p.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN oficina of ON of.CodiOfic = p.CodiOfic ");
    stringBuilder.AppendLine("INNER JOIN formpago fp ON fp.PeriFopa = p.PeriFopa AND fp.NumeFopa = p.NumeFopa");
    stringBuilder.AppendLine("INNER JOIN tipopago tp ON tp.CodiTipa = fp.CodiTipa");
    stringBuilder.AppendLine($"WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa}");
    stringBuilder.AppendLine("GROUP BY p.PeriBole, p.NumeBole");
    stringBuilder.AppendLine("ORDER BY p.PeriBole, p.NumeBole;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        boletos.Add(new ResumenBoletosPagadosMP()
        {
          PeriBole = nfoGovReader.readShort("PeriBole"),
          NumeBole = nfoGovReader.readLong("NumeBole"),
          CucuPers = nfoGovReader.readLong("CucuPers"),
          DetaPers = nfoGovReader.readString("DetaPers"),
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          DetaOfic = nfoGovReader.readString("DetaOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          DetaTipa = nfoGovReader.readString("DetaTipa"),
          TotaPago = nfoGovReader.readDecimal("TotaPago")
        });
    }
    nfoGovReader?.Close();
  }

  public void ObtenerTiposPagoUtilizados(
    List<ResumenTiposPagoMP> tiposPagos,
    DateTime FeenAcpa,
    short NumeAcpa)
  {
    tiposPagos.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("DROP TEMPORARY TABLE IF EXISTS tmp_tipos;");
    stringBuilder.AppendLine("CREATE TEMPORARY TABLE tmp_tipos");
    stringBuilder.AppendLine("SELECT fp.NuchFopa, GROUP_CONCAT(DISTINCT CONCAT(p.PeriBole, '/', p.NumeBole)) Boletos, fp.ImpoFopa, tp.DetaTipa, tp.TipoTipa, fp.CodiTipa");
    stringBuilder.AppendLine("FROM pago p");
    stringBuilder.AppendLine("INNER JOIN formpago fp ON fp.PeriFopa = p.PeriFopa AND fp.NumeFopa = p.NumeFopa");
    stringBuilder.AppendLine("INNER JOIN tipopago tp ON tp.CodiTipa = fp.CodiTipa AND tp.TipoTipa = 1");
    stringBuilder.AppendLine($"WHERE p.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa}");
    stringBuilder.AppendLine("GROUP BY fp.PeriFopa, fp.NumeFopa, fp.CodiTipa");
    stringBuilder.AppendLine("ORDER BY tp.TipoTipa, fp.CodiTipa;");
    stringBuilder.AppendLine("INSERT INTO tmp_tipos");
    stringBuilder.AppendLine("SELECT fp.NuchFopa, GROUP_CONCAT(DISTINCT CONCAT(p.PeriBole, '/', p.NumeBole)) Boletos, fp.ImpoFopa, tp.DetaTipa, tp.TipoTipa, fp.CodiTipa");
    stringBuilder.AppendLine("FROM pago p");
    stringBuilder.AppendLine("INNER JOIN formpago fp ON fp.PeriFopa = p.PeriFopa AND fp.NumeFopa = p.NumeFopa");
    stringBuilder.AppendLine("INNER JOIN tipopago tp ON tp.CodiTipa = fp.CodiTipa AND tp.TipoTipa = 2");
    stringBuilder.AppendLine($"WHERE p.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa}");
    stringBuilder.AppendLine("GROUP BY fp.PeriFopa, fp.NumeFopa, fp.CodiTipa");
    stringBuilder.AppendLine("ORDER BY tp.TipoTipa, fp.CodiTipa;");
    stringBuilder.AppendLine("SELECT * FROM tmp_tipos;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        tiposPagos.Add(new ResumenTiposPagoMP()
        {
          Boletos = nfoGovReader.readString("Boletos"),
          CodiTipa = nfoGovReader.readShort("CodiTipa"),
          DetaTipa = nfoGovReader.readString("DetaTipa"),
          NuchFopa = nfoGovReader.readString("NuchFopa"),
          ImpoFopa = nfoGovReader.readDecimal("ImpoFopa"),
          TipoTipa = nfoGovReader.readShort("TipoTipa")
        });
    }
    nfoGovReader?.Close();
  }

  private void ObtenerBoletosAnulados(
    List<ResumenBoletosAnuladosMP> boletosAnulados,
    DateTime FeenAcpa,
    short NumeAcpa)
  {
    boletosAnulados.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT b.PeriBole, b.NumeBole, b.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle') DetaPers, b.CodiOfic, b.CuenCtct, IFNULL(o.DetaOfic, 'Sin Detalle') DetaOfic, b.TotaBole, ba.MoanBole, ba.AltaUsua UsuaAnul, ba.AltaFeho FechAnul");
    stringBuilder.AppendLine("FROM boleanul ba");
    stringBuilder.AppendLine("INNER JOIN boleto b ON b.PeriBole = ba.PeriBole AND b.NumeBole = ba.NumeBole");
    stringBuilder.AppendLine("LEFT JOIN oficina o ON o.CodiOfic = b.CodiOfic");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = b.CucuPers");
    stringBuilder.AppendLine($"WHERE ba.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND ba.NumeAcpa = {NumeAcpa}");
    stringBuilder.AppendLine("ORDER BY ba.AltaFeho;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        boletosAnulados.Add(new ResumenBoletosAnuladosMP()
        {
          PeriBole = nfoGovReader.readShort("PeriBole"),
          NumeBole = (long) nfoGovReader.readInt("NumeBole"),
          CucuPers = nfoGovReader.readLong("CucuPers"),
          DetaPers = nfoGovReader.readString("DetaPers"),
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          DetaOfic = nfoGovReader.readString("DetaOfic"),
          TotaBole = nfoGovReader.readDecimal("TotaBole"),
          MoanBole = nfoGovReader.readString("MoanBole"),
          UsuaAnul = nfoGovReader.readString("UsuaAnul"),
          FechAnul = nfoGovReader.readDateTime("FechAnul")
        });
    }
    nfoGovReader?.Close();
  }

  public void ObtenerPagosCaja(
    List<ResumenBoletoPagoMP> boletos,
    DateTime FeenAcpa,
    short NumeAcpa)
  {
    boletos.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT p.PeriBole, p.NumeBole, IFNULL(of.DetaOfic, 'Sin Oficina') DetaOfic, p.CuenCtct, p.TotaPago FROM pago p LEFT JOIN oficina of ON of.CodiOfic = p.CodiOfic WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        boletos.Add(new ResumenBoletoPagoMP()
        {
          PeriBole = nfoGovReader.readShort("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          DetaOfic = nfoGovReader.readString("DetaOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          TotaPago = nfoGovReader.readDecimal("TotaPago")
        });
    }
    nfoGovReader?.Close();
  }

  public void ObtenerFormasPagoUtilizadas(
    List<ResumenFormaPagoMP> fopas,
    DateTime FeenAcpa,
    short NumeAcpa)
  {
    fopas.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT tp.DetaTipa DetaFopa, SUM(fp.ImpoFopa) TotaFopa");
    stringBuilder.AppendLine("FROM (");
    stringBuilder.AppendLine("SELECT DISTINCT fp.PeriFopa, fp.NumeFopa, fp.CodiTipa, fp.ImpoFopa");
    stringBuilder.AppendLine("FROM pago p");
    stringBuilder.AppendLine("INNER JOIN formpago fp ON fp.PeriFopa = p.PeriFopa AND fp.NumeFopa = p.NumeFopa");
    stringBuilder.AppendLine($"WHERE p.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND p.NumeAcpa = {NumeAcpa}");
    stringBuilder.AppendLine(") fp");
    stringBuilder.AppendLine("INNER JOIN tipopago tp ON tp.CodiTipa = fp.CodiTipa");
    stringBuilder.AppendLine("GROUP BY fp.CodiTipa;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        fopas.Add(new ResumenFormaPagoMP()
        {
          DetaFopa = nfoGovReader.readString("DetaFopa"),
          TotaFopa = nfoGovReader.readDecimal("TotaFopa")
        });
    }
    nfoGovReader?.Close();
  }

  public bool CajaDiariaAbierta(DateTime FeenAcpa, short CodiEnre)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM acrepago WHERE VeriAcpa = 0 AND FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND CodiEnre = {CodiEnre} AND AltaUsua = {this.sqlString(this.usuario)};") > 0;
  }

  public bool CajaDiariaSinVerificar(DateTime FeenAcpa, short NumeAcpa)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM acrepago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND VeriAcpa = 0;") > 0;
  }

  public string CajaVerificada(DateTime fecha)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM acrepago WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {this.caja.NumeAcpa} AND VeriAcpa = 1;") > 0 ? "La caja ya se encuentra CERRADA. No se pueden ingresar más boletos. Verificar..." : string.Empty;
  }

  public bool CerrarCajaDiaria(DTOAcrePagoMP caja, List<ResumenCajaMP> detalles)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"UPDATE acrepago SET VeriAcpa = 1, ModiUsua = {this.sqlString(this.usuario)}, ModiFeho = NOW() WHERE FeenAcpa = {this.sqlDate(caja.FeenAcpa, false)} AND NumeAcpa = {caja.NumeAcpa};");
    stringBuilder.AppendLine("INSERT INTO cierrecaja (FeenAcpa, NumeAcpa, ImcaCierre, IminCierre, ImcoCierre, DifeCierre, AltaUsua)");
    stringBuilder.AppendLine($"VALUES ({this.sqlDate(caja.FeenAcpa, false)}, {caja.NumeAcpa}, {this.sqlDecimal(caja.ImcaCierre)}, {this.sqlDecimal(caja.MoinAcpa)}, {this.sqlDecimal(caja.ImcoCierre)}, {this.sqlDecimal(caja.DifeCierre)}, {this.sqlString(this.usuario)});");
    foreach (ResumenCajaMP detalle in detalles)
    {
      stringBuilder.AppendLine("INSERT INTO cierrecajadeta (FeenAcpa, NumeAcpa, MoviCica, DetaRecu, CantRecu, ImpoRecu)");
      stringBuilder.AppendLine($"VALUES ({this.sqlDate(caja.FeenAcpa, false)}, {caja.NumeAcpa}, {detalles.IndexOf(detalle) + 1}, {this.sqlString(detalle.DetaRecu)}, {detalle.CantRecu}, {this.sqlDecimal(detalle.ImpoRecu)});");
    }
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public string GrupoActualizado(DateTime fecha)
  {
    string str = this.conn.executeString($"SELECT ActuAcpa FROM acrepago WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {this.caja.NumeAcpa} LIMIT 1;");
    if (string.IsNullOrWhiteSpace(str))
      return "Caja incorrecta.";
    return str == "Si" ? $"No se puede ingresar el boleto para el día: {fecha.ToShortDateString()} n° de grupo: {this.caja.NumeAcpa}. El grupo ya fue ACTUALIZADO" : string.Empty;
  }

  public string VerificarBoleto(int peribole, int numebole)
  {
    string sql = $"SELECT EstaBole FROM boleto WHERE PeriBole = {peribole} AND NumeBole = {numebole};";
    string empty = string.Empty;
    string str = this.conn.executeString(sql);
    if (string.IsNullOrWhiteSpace(str))
      return "El NÚMERO de boleto no existe, verifique...";
    switch (str.ToLower())
    {
      case "pagado":
        return "El boleto se encuenta pagado, verifique...";
      case "actualizado":
        return "El boleto se encuenta pagado y actualizado en la cuenta corriente, verifique...";
      case "anulado":
        return "El boleto se encuenta anulado, verifique...";
      default:
        return string.Empty;
    }
  }

  public string VerificarPago(int peribole, int numebole)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE PeriBole = {peribole} AND NumeBole = {numebole};") > 0 ? "El boleto se encuenta ingresado y pagado, verifique..." : string.Empty;
  }

  public string Pagado(int peribole, int numebole)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT CONCAT(detapago.PeriBole, '-', detapago.NumeBole) FROM detabole");
    stringBuilder.AppendLine("LEFT JOIN detapago ON detapago.CodiOfic = detabole.CodiOfic");
    stringBuilder.AppendLine("AND detapago.CuenCtct = detabole.CuenCtct");
    stringBuilder.AppendLine("AND detapago.PeriCtct = detabole.PeriCtct");
    stringBuilder.AppendLine("AND detapago.BimeCtct = detabole.BimeCtct");
    stringBuilder.AppendLine("AND detapago.NumeCtct = detabole.NumeCtct");
    stringBuilder.AppendLine("AND detapago.MoviCtct = detabole.MoviCtct");
    stringBuilder.AppendLine("AND detapago.CodiFapa = detabole.Codifapa");
    stringBuilder.AppendLine("AND detapago.CuotDefa = detabole.CuotDefa");
    stringBuilder.AppendLine("AND detapago.ActuDepa = 'No'");
    stringBuilder.AppendLine($"WHERE detabole.PeriBole = {peribole} AND detabole.NumeBole = {numebole} AND detabole.CuenCtct <> '' AND detapago.FeenAcpa IS NOT NULL LIMIT 1;");
    string str = this.conn.executeString(stringBuilder.ToString());
    return !string.IsNullOrWhiteSpace(str) ? $"El boleto contiene movimientos que fueron PAGADOS con el BOLETO {str}. NO se agregó el boleto." : string.Empty;
  }

  public BoletoCajaMP ObtenerBoletoCaja(int PeriBole, int NumeBole)
  {
    BoletoCajaMP boletoCajaMp = new BoletoCajaMP();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT boleto.*, IFNULL(infogov.persona.DetaPers, '---') DetaPers, IFNULL(of.DetaOfic, 'Sin Oficina') DetaOfic FROM boleto LEFT JOIN infogov.persona ON boleto.CucuPers = infogov.persona.CucuPers LEFT JOIN oficina of ON of.CodiOfic = boleto.CodiOfic WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        boletoCajaMp.PeriBole = nfoGovReader.readInt(nameof (PeriBole));
        boletoCajaMp.NumeBole = nfoGovReader.readInt(nameof (NumeBole));
        boletoCajaMp.CodiOfic = nfoGovReader.readInt("CodiOfic");
        boletoCajaMp.DetaOfic = nfoGovReader.readString("DetaOfic");
        boletoCajaMp.CodiFapa = nfoGovReader.readInt("CodiFapa");
        boletoCajaMp.CuotDefa = nfoGovReader.readInt("CuotDefa");
        boletoCajaMp.FeveBole = nfoGovReader.readDateTime("FeveBole");
        boletoCajaMp.CuenCtct = nfoGovReader.readString("CuenCtct");
        boletoCajaMp.CucuPers = nfoGovReader.readLong("CucuPers");
        boletoCajaMp.DetaPers = nfoGovReader.readString("DetaPers");
        boletoCajaMp.TipoBole = nfoGovReader.readString("TipoBole");
        boletoCajaMp.EstaBole = nfoGovReader.readString("EstaBole");
        boletoCajaMp.CapiBole = nfoGovReader.readDecimal("CapiBole");
        boletoCajaMp.CrafBole = nfoGovReader.readDecimal("CrafBole");
        boletoCajaMp.DecaBole = nfoGovReader.readDecimal("DecaBole");
        boletoCajaMp.RecaBole = nfoGovReader.readDecimal("RecaBole");
        boletoCajaMp.DereBole = nfoGovReader.readDecimal("DereBole");
        boletoCajaMp.InteBole = nfoGovReader.readDecimal("InteBole");
        boletoCajaMp.ExenBole = nfoGovReader.readDecimal("ExenBole");
        boletoCajaMp.ApreBole = nfoGovReader.readDecimal("ApreBole");
        boletoCajaMp.TotaBole = nfoGovReader.readDecimal("TotaBole");
        boletoCajaMp.CodiUsua = nfoGovReader.readString("CodiUsua");
      }
    }
    nfoGovReader?.Close();
    return boletoCajaMp;
  }

  private List<DetalleBoletoMP> ObtenerDetallesBoleto(BoletoCajaMP bole)
  {
    List<DetalleBoletoMP> detalleBoletoMpList = new List<DetalleBoletoMP>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT detabole.*, concepto.TipaConc FROM detabole");
    stringBuilder.AppendLine($"INNER JOIN concepto ON concepto.PeriInfo = {bole.PeriBole} AND concepto.CodiConc = detabole.CodiConc");
    stringBuilder.AppendLine($"WHERE PeriBole = {bole.PeriBole} AND NumeBole = {bole.NumeBole}");
    stringBuilder.AppendLine("ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        detalleBoletoMpList.Add(new DetalleBoletoMP()
        {
          ApreDebo = nfoGovReader.readDecimal("ApreDebo"),
          BimeCtct = nfoGovReader.readInt("BimeCtct"),
          CapiDebo = nfoGovReader.readDecimal("CapiDebo"),
          CodiConc = nfoGovReader.readString("CodiConc"),
          CodiFapa = nfoGovReader.readInt("CodiFapa"),
          CodiOfic = nfoGovReader.readInt("CodiOfic"),
          CodiTili = nfoGovReader.readInt("CodiTili"),
          CodiTimo = nfoGovReader.readInt("CodiTimo"),
          CrafDebo = nfoGovReader.readDecimal("CrafDebo"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          CuotDefa = nfoGovReader.readInt("CuotDefa"),
          DecaDebo = nfoGovReader.readDecimal("DecaDebo"),
          DereDebo = nfoGovReader.readDecimal("DereDebo"),
          ExenDebo = nfoGovReader.readDecimal("ExenDebo"),
          InteDebo = nfoGovReader.readDecimal("InteDebo"),
          MoviCtct = nfoGovReader.readInt("MoviCtct"),
          MoviDebo = nfoGovReader.readInt("MoviDebo"),
          NumeApre = nfoGovReader.readInt("NumeApre"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          NumeCtct = nfoGovReader.readInt("NumeCtct"),
          NumeLiqu = nfoGovReader.readInt("NumeLiqu"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          PeriCtct = nfoGovReader.readInt("PeriCtct"),
          PeriInfo = nfoGovReader.readInt("PeriInfo"),
          RecaDebo = nfoGovReader.readDecimal("RecaDebo"),
          TipoCtct = nfoGovReader.readString("TipoCtct"),
          TotaDebo = nfoGovReader.readDecimal("TotaDebo"),
          TipaConc = nfoGovReader.readInt("TipaConc")
        });
    }
    nfoGovReader?.Close();
    return detalleBoletoMpList;
  }

  private List<ComposicionDetalleMP> ObtenerComposicion(DetalleBoletoMP dtb)
  {
    List<ComposicionDetalleMP> composicionDetalleMpList = new List<ComposicionDetalleMP>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT * FROM boledeta");
    stringBuilder.AppendLine($"WHERE PeriBole = {dtb.PeriBole}");
    stringBuilder.AppendLine($"AND NumeBole = {dtb.NumeBole}");
    stringBuilder.AppendLine($"AND PeriCtct = {dtb.PeriCtct}");
    stringBuilder.AppendLine($"AND BimeCtct = {dtb.BimeCtct}");
    stringBuilder.AppendLine($"AND NumeCtct = {dtb.NumeCtct}");
    stringBuilder.AppendLine($"AND MoviCtct = {dtb.MoviCtct}");
    stringBuilder.AppendLine($"AND MoviDebo = {dtb.MoviDebo}");
    stringBuilder.AppendLine("ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        composicionDetalleMpList.Add(new ComposicionDetalleMP()
        {
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          PeriCtct = nfoGovReader.readInt("PeriCtct"),
          BimeCtct = nfoGovReader.readInt("BimeCtct"),
          NumeCtct = nfoGovReader.readInt("NumeCtct"),
          MoviCtct = nfoGovReader.readInt("MoviCtct"),
          MoviDebo = nfoGovReader.readInt("MoviDebo"),
          PeriOrde = nfoGovReader.readInt("PeriOrde"),
          CodiCtde = nfoGovReader.readLong("CodiCtde"),
          NumeCtde = nfoGovReader.readInt("NumeCtde"),
          MoviCtde = nfoGovReader.readInt("MoviCtde"),
          CodiOfic = nfoGovReader.readInt("CodiOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          ImpoBode = nfoGovReader.readDecimal("ImpoBode"),
          DecaBode = nfoGovReader.readDecimal("DecaBode"),
          TotaBode = nfoGovReader.readDecimal("TotaBode")
        });
    }
    nfoGovReader?.Close();
    return composicionDetalleMpList;
  }

  public void EnteRecaUsua(List<EnteRecaMP> entes)
  {
    entes.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT u.CodiEnre, e.DetaEnre, e.NumeAcpa FROM infogov.usuario u INNER JOIN infogov.entereca e ON e.CodiEnre = u.CodiEnre WHERE u.CodiUsua = {this.sqlString(this.usuario)} and u.BajaFeho IS NULL;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        entes.Add(new EnteRecaMP()
        {
          CodiEnre = nfoGovReader.readInt("CodiEnre"),
          DetaEnre = nfoGovReader.readString("DetaEnre"),
          NumeAcpa = nfoGovReader.readInt("NumeAcpa")
        });
    }
    nfoGovReader?.Close();
  }

  public void BuscarCajasActivas(List<DTOAcrePagoMP> cajas)
  {
    cajas.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT au.CodiUsua, au.FeenAcpa, au.NumeAcpa, ap.CodiEnre, e.DetaEnre, ap.MoinAcpa");
    stringBuilder.AppendLine("FROM acreusua au");
    stringBuilder.AppendLine("INNER JOIN acrepago ap ON ap.FeenAcpa = au.FeenAcpa AND ap.NumeAcpa = au.NumeAcpa AND ap.VeriAcpa = 0");
    stringBuilder.AppendLine("INNER JOIN infogov.entereca e ON e.CodiEnre = ap.CodiEnre");
    stringBuilder.AppendLine($"WHERE au.CodiUsua = {this.sqlString(this.usuario)} ORDER BY ap.FeenAcpa DESC;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        cajas.Add(new DTOAcrePagoMP()
        {
          UsuaAcpa = nfoGovReader.readString("CodiUsua"),
          FeenAcpa = nfoGovReader.readDateTime("FeenAcpa"),
          NumeAcpa = nfoGovReader.readShort("NumeAcpa"),
          CodiEnre = nfoGovReader.readShort("CodiEnre"),
          DetaEnre = nfoGovReader.readString("DetaEnre"),
          MoinAcpa = nfoGovReader.readDecimal("MoinAcpa")
        });
    }
    nfoGovReader?.Close();
  }

  public void BuscarCajasReporte(List<DTOAcrePagoMP> cajas, DateTime FeenAcpa)
  {
    cajas.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT au.FeenAcpa, au.NumeAcpa, au.CodiUsua UsuaAcpa, ap.CodiEnre, e.DetaEnre, ap.MoinAcpa, ap.VeriAcpa");
    stringBuilder.AppendLine("FROM acreusua au");
    stringBuilder.AppendLine("INNER JOIN acrepago ap ON ap.FeenAcpa = au.FeenAcpa AND ap.NumeAcpa = au.NumeAcpa AND ap.VeriAcpa = 1");
    stringBuilder.AppendLine("INNER JOIN infogov.entereca e ON e.CodiEnre = ap.CodiEnre");
    stringBuilder.AppendLine("WHERE au.FeenAcpa = " + this.sqlDate(FeenAcpa, false));
    if (!this.hasPermissionFor("VerTodasCajas"))
      stringBuilder.AppendLine("AND au.CodiUsua = " + this.sqlString(this.usuario));
    stringBuilder.AppendLine("ORDER BY au.FeenAcpa DESC, au.NumeAcpa;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        cajas.Add(new DTOAcrePagoMP()
        {
          FeenAcpa = nfoGovReader.readDateTime(nameof (FeenAcpa)),
          NumeAcpa = nfoGovReader.readShort("NumeAcpa"),
          UsuaAcpa = nfoGovReader.readString("UsuaAcpa"),
          CodiEnre = nfoGovReader.readShort("CodiEnre"),
          DetaEnre = nfoGovReader.readString("DetaEnre"),
          MoinAcpa = nfoGovReader.readDecimal("MoinAcpa"),
          VeriAcpa = nfoGovReader.readBool("VeriAcpa")
        });
    }
    nfoGovReader?.Close();
  }

  public bool CrearNuevaCaja(DTOAcrePagoMP dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT IFNULL(MAX(NumeAcpa),0) + 1");
    stringBuilder.AppendLine("FROM acrepago");
    stringBuilder.AppendLine($"WHERE FeenAcpa = {this.sqlDate(dto.FeenAcpa, false)} AND NumeAcpa < 100;");
    short num = this.conn.executeShort(stringBuilder.ToString());
    if (num == (short) 0)
      return false;
    stringBuilder.Clear();
    stringBuilder.AppendLine("INSERT INTO acreusua (CodiUsua, FeenAcpa, NumeAcpa)");
    stringBuilder.AppendLine($"VALUES ({this.sqlString(this.usuario)}, {this.sqlDate(dto.FeenAcpa, false)}, {num});");
    stringBuilder.AppendLine("INSERT INTO acrepago (FeenAcpa, NumeAcpa, ActuAcpa, CodiEnre, FealAcpa, FepaAcpa, TocoAcpa, ImpoAcpa, ObseAcpa, MoinAcpa, CodiUsua, AltaUsua)");
    stringBuilder.AppendLine($"VALUES ({this.sqlDate(dto.FeenAcpa, false)}, {num}, 'No', {dto.CodiEnre}, DATE(NOW()), {this.sqlDate(dto.FeenAcpa, false)}, 0, 0, 'Caja Diaria', {this.sqlDecimal(dto.MoinAcpa)}, {this.sqlString(this.usuario)}, {this.sqlString(this.usuario)});");
    if (!this.conn.executeNonQuery(stringBuilder.ToString()))
      return false;
    dto.UsuaAcpa = this.usuario;
    dto.NumeAcpa = num;
    return true;
  }

  public List<FormaPagoMP> ObtenerFormasPago(ExpBoletoCajaMP.TipoBusquedaFormasPago busqueda = ExpBoletoCajaMP.TipoBusquedaFormasPago.TodasActivas)
  {
    List<FormaPagoMP> formaPagoMpList = new List<FormaPagoMP>();
    string str = string.Empty;
    switch (busqueda)
    {
      case ExpBoletoCajaMP.TipoBusquedaFormasPago.TodasActivas:
        str = "SELECT tp.CodiTipa, tp.DetaTipa, tp.TipoTipa, tp.CodiCuco FROM tipopago tp WHERE tp.BajaFeho IS NULL;";
        break;
      case ExpBoletoCajaMP.TipoBusquedaFormasPago.SinEfectivo:
        str = "SELECT tp.CodiTipa, tp.DetaTipa, tp.TipoTipa, tp.CodiCuco FROM tipopago tp WHERE tp.BajaFeho IS NULL AND tp.TipoTipa <> 0;";
        break;
    }
    InfoGovReader nfoGovReader = this.conn.executeReader(str.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        formaPagoMpList.Add(new FormaPagoMP()
        {
          CodiTipa = nfoGovReader.readInt("CodiTipa"),
          DetaTipa = nfoGovReader.readString("DetaTipa"),
          TipoTipa = nfoGovReader.readInt("TipoTipa")
        });
    }
    nfoGovReader?.Close();
    return formaPagoMpList;
  }

  private string ValidarCuentaContable(DetalleBoletoMP dtb)
  {
    if (string.IsNullOrWhiteSpace(this.conn.executeString($"SELECT concepto.IngrConc FROM recaudacion.concepto WHERE PeriInfo = {dtb.PeriBole} AND CodiConc = {this.sqlString(dtb.CodiConc)} LIMIT 1;")))
      return $"El concepto: {dtb.CodiConc} No tiene asociado ninguna cuenta contable de ingresos. No se ingresa el boleto.";
    if (!string.IsNullOrWhiteSpace(dtb.CuenCtct))
    {
      if (dtb.CodiTimo == 0)
        return $"El concepto: {dtb.CodiConc} No tiene asociado ningún tipo de movimiento de aforo. No se ingresa el boleto.";
      if (dtb.TipaConc == 0)
        return $"El concepto: {dtb.CodiConc} No tiene asociado ningún tipo de movimiento de pago. No se ingresa el boleto.";
    }
    return string.Empty;
  }

  public string IngresarPago(
    DateTime fecha,
    List<BoletoCajaMP> boletos,
    List<FormaPagoMP> formasPago)
  {
    string empty = string.Empty;
    string str1 = this.expImpTicket.ImpresionTicketStrResult();
    if (!string.IsNullOrWhiteSpace(str1))
      return str1;
    string str2 = this.CajaVerificada(fecha);
    if (!string.IsNullOrWhiteSpace(str2))
      return str2;
    string str3 = this.GrupoActualizado(fecha);
    if (!string.IsNullOrWhiteSpace(str3))
      return str3;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"UPDATE acrepago SET TocoAcpa = TocoAcpa + {boletos.Count}, ImpoAcpa = ImpoAcpa + {this.sqlDecimal(boletos.Sum<BoletoCajaMP>((Func<BoletoCajaMP, Decimal>) (x => x.TotaBole)))} WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {this.caja.NumeAcpa};");
    int num = this.conn.executeInt("SELECT IF(MAX(fp.NumeFopa) > 0, MAX(fp.NumeFopa) + 1, 1) FROM formpago fp WHERE fp.PeriFopa = YEAR(NOW());");
    foreach (FormaPagoMP formaPagoMp in formasPago)
      stringBuilder.AppendLine($"INSERT INTO formpago (PeriFopa,NumeFopa,MoviFopa, CodiTipa,NuchFopa,ImpoFopa) VALUES (YEAR(NOW()),{num},{formasPago.IndexOf(formaPagoMp) + 1}, {formaPagoMp.CodiTipa}, {this.sqlString(formaPagoMp.NuchFopa)},{this.sqlDecimal(formaPagoMp.ImpoFopa)});");
    foreach (BoletoCajaMP boleto in boletos)
    {
      string str4 = this.VerificarBoleto(boleto.PeriBole, boleto.NumeBole);
      if (!string.IsNullOrWhiteSpace(str4))
        return str4;
      string str5 = this.VerificarPago(boleto.PeriBole, boleto.NumeBole);
      if (!string.IsNullOrWhiteSpace(str5))
        return str5;
      string str6 = this.Pagado(boleto.PeriBole, boleto.NumeBole);
      if (!string.IsNullOrWhiteSpace(str6))
        return str6;
      stringBuilder.AppendLine($"INSERT INTO pagoinfo3(PeriBole,NumeBole) VALUES({boleto.PeriBole}, {boleto.NumeBole});");
      stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriFopa, NumeFopa, CodiOfic, CuenCtct, CucuPers, ActuPago, TipoPago, FealPago, FepaPago, CodiFapa, CuotDefa, CapiPago, DecaPago, RecaPago, DerePago, IntePago, ExenPago, CrafPago, AprePago, TotaPago, AltaUsua)");
      stringBuilder.AppendLine($" VALUES ({this.sqlDate(fecha, false)},{this.caja.NumeAcpa},{boleto.PeriBole},{boleto.NumeBole},YEAR(NOW()),{num},{boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.CucuPers},'No',{this.sqlString(boleto.TipoBole)},DATE(NOW()),{this.sqlDate(fecha, false)},{boleto.CodiFapa},{boleto.CuotDefa},{this.sqlDecimal(boleto.CapiBole)},{this.sqlDecimal(boleto.DecaBole)},{this.sqlDecimal(boleto.RecaBole)},{this.sqlDecimal(boleto.DereBole)},{this.sqlDecimal(boleto.InteBole)},{this.sqlDecimal(boleto.ExenBole)},{this.sqlDecimal(boleto.CrafBole)},{this.sqlDecimal(boleto.ApreBole)},{this.sqlDecimal(boleto.TotaBole)},{this.sqlString(this.usuario)});");
      if (fecha.Date > boleto.FeveBole.Date)
        stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.PeriBole},{boleto.NumeBole},'No',DATE(NOW()),{this.sqlDate(boleto.FeveBole, false)},{this.sqlDecimal(boleto.TotaBole)});");
      stringBuilder.AppendLine($" UPDATE boleapre SET EstaBoap = 'Pagado', FeenAcpa = {this.sqlDate(fecha, false)}, FeacBoap = NULL WHERE PeriBole = {boleto.PeriBole} AND NumeBole = {boleto.NumeBole} AND EstaBoap IN ('Generado','Emitido');");
      stringBuilder.AppendLine($"UPDATE boleto SET EstaBole = 'Pagado' WHERE PeriBole = {boleto.PeriBole} AND NumeBole = {boleto.NumeBole};");
      foreach (DetalleBoletoMP dtb in this.ObtenerDetallesBoleto(boleto))
      {
        string str7 = this.ValidarCuentaContable(dtb);
        if (!string.IsNullOrWhiteSpace(str7))
          return str7;
        stringBuilder.AppendLine("INSERT INTO detapago (FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiTili, NumeLiqu, ActuDepa, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDepa, DecaDepa, RecaDepa, DereDepa, InteDepa, ExenDepa, CrafDepa, ApreDepa, TotaDepa) ");
        stringBuilder.AppendLine($" VALUES ({this.sqlDate(fecha, false)},{this.caja.NumeAcpa},{dtb.PeriBole},{dtb.NumeBole},{dtb.PeriCtct},{dtb.BimeCtct},{dtb.NumeCtct},");
        stringBuilder.AppendLine($"{dtb.MoviCtct},{dtb.MoviDebo},{dtb.CodiTili},{dtb.NumeLiqu},'No',{dtb.CodiOfic},{this.sqlString(dtb.CuenCtct)},{this.sqlString(dtb.TipoCtct)},{dtb.CodiFapa},{dtb.CuotDefa},{dtb.NumeApre},{dtb.TipaConc},{dtb.PeriInfo},{this.sqlString(dtb.CodiConc)},{this.sqlDecimal(dtb.CapiDebo)},{this.sqlDecimal(dtb.DecaDebo)},{this.sqlDecimal(dtb.RecaDebo)},{this.sqlDecimal(dtb.DereDebo)},{this.sqlDecimal(dtb.InteDebo)},{this.sqlDecimal(dtb.ExenDebo)},{this.sqlDecimal(dtb.CrafDebo)},{this.sqlDecimal(dtb.ApreDebo)},{this.sqlDecimal(dtb.TotaDebo)});");
        if (boleto.TipoBole == "Pago Anticipado")
          stringBuilder.AppendLine($" UPDATE pagoanti SET EstaPaan = 'Pagado' WHERE CodiOfic = {dtb.CodiOfic} AND CuenCtct = {this.sqlString(dtb.CuenCtct)} AND PeriBole = {dtb.PeriBole} AND NumeBole = {dtb.NumeBole} AND PeriLiqu = {dtb.PeriCtct} AND BimeLiqu = {dtb.BimeCtct};");
        foreach (ComposicionDetalleMP composicionDetalleMp in this.ObtenerComposicion(dtb))
        {
          stringBuilder.AppendLine($" INSERT INTO pagodeta (FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiOfic, CuenCtct, ImpoPade, Decapade, TotaPade) VALUES ({this.sqlDate(fecha, false)},{this.caja.NumeAcpa},{composicionDetalleMp.PeriBole},{composicionDetalleMp.NumeBole},{composicionDetalleMp.PeriCtct},{composicionDetalleMp.BimeCtct},{composicionDetalleMp.NumeCtct},");
          stringBuilder.AppendLine($" {composicionDetalleMp.MoviCtct},{composicionDetalleMp.MoviDebo},{composicionDetalleMp.PeriOrde},{composicionDetalleMp.CodiCtde},{composicionDetalleMp.NumeCtde},{composicionDetalleMp.MoviCtde},{composicionDetalleMp.CodiOfic},{this.sqlString(composicionDetalleMp.CuenCtct)},{this.sqlDecimal(composicionDetalleMp.ImpoBode)},{this.sqlDecimal(composicionDetalleMp.DecaBode)},{this.sqlDecimal(composicionDetalleMp.TotaBode)});");
        }
      }
    }
    if (!this.conn.executeNonQuery(stringBuilder.ToString()))
      return "No se pudo ingresar el pago";
    this.expImpTicket.FeenAcpa = fecha;
    if (this.expImpTicket.tickeadoraActiva == "True")
    {
      foreach (BoletoCajaMP boleto in boletos)
        this.expImpTicket.ImprimirTicketMP(boleto);
    }
    return string.Empty;
  }

  public DTORepCajaDiariaMP ObtenerDatosRepCajaDiaria(DateTime FeenAcpa, short NumeAcpa)
  {
    DTORepCajaDiariaMP dtoRepCajaDiariaMp = new DTORepCajaDiariaMP();
    this.ObtenerFormasPagoUtilizadas(dtoRepCajaDiariaMp.detallesFopas, FeenAcpa, NumeAcpa);
    this.ObtenerResumenCierreCaja(dtoRepCajaDiariaMp.detallesResumen, FeenAcpa, NumeAcpa);
    this.ObtenerBoletosPagados(dtoRepCajaDiariaMp.detallesBoletos, FeenAcpa, NumeAcpa);
    this.ObtenerTiposPagoUtilizados(dtoRepCajaDiariaMp.detallesTiposPagosUtilizados, FeenAcpa, NumeAcpa);
    this.ObtenerBoletosAnulados(dtoRepCajaDiariaMp.detallesBoletosAnulados, FeenAcpa, NumeAcpa);
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT ap.FeenAcpa, ap.NumeAcpa, ap.CodiEnre, IFNULL(er.DetaEnre, 'Sin Detalle') DetaEnre, ap.TocoAcpa, ap.ImpoAcpa, IF(ap.VeriAcpa IS TRUE, 'Verificada', 'Sin Verificar') Verificada, IF(ap.ActuAcpa = 'Si', 'Actualizada', 'Sin Actualizar') Actualizada, ap.MoinAcpa, ap.AltaUsua UsuaCrea, ap.AltaFeho FechaCrea, cc.ImcaCierre, cc.IminCierre, cc.ImcoCierre, cc.DifeCierre, cc.AltaUsua UsuaCierre, cc.AltaFeho FechaCierre");
    stringBuilder.AppendLine("FROM acrepago ap");
    stringBuilder.AppendLine("INNER JOIN cierrecaja cc ON cc.FeenAcpa = ap.FeenAcpa AND cc.NumeAcpa = ap.NumeAcpa");
    stringBuilder.AppendLine("LEFT JOIN infogov.entereca er ON er.CodiEnre = ap.CodiEnre");
    stringBuilder.AppendLine($"WHERE ap.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND ap.NumeAcpa = {NumeAcpa};");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        dtoRepCajaDiariaMp.FeenAcpa = nfoGovReader.readDateTime(nameof (FeenAcpa));
        dtoRepCajaDiariaMp.NumeAcpa = nfoGovReader.readShort(nameof (NumeAcpa));
        dtoRepCajaDiariaMp.CodiEnre = nfoGovReader.readShort("CodiEnre");
        dtoRepCajaDiariaMp.DetaEnre = nfoGovReader.readString("DetaEnre");
        dtoRepCajaDiariaMp.TocoAcpa = nfoGovReader.readInt("TocoAcpa");
        dtoRepCajaDiariaMp.ImpoAcpa = nfoGovReader.readDecimal("ImpoAcpa");
        dtoRepCajaDiariaMp.MoinAcpa = nfoGovReader.readDecimal("MoinAcpa");
        dtoRepCajaDiariaMp.Verificada = nfoGovReader.readString("Verificada");
        dtoRepCajaDiariaMp.Actualizada = nfoGovReader.readString("Actualizada");
        dtoRepCajaDiariaMp.UsuaCrea = nfoGovReader.readString("UsuaCrea");
        dtoRepCajaDiariaMp.FechaAlta = nfoGovReader.readDateTime("FechaCrea");
        dtoRepCajaDiariaMp.ImcaCierre = nfoGovReader.readDecimal("ImcaCierre");
        dtoRepCajaDiariaMp.IminCierre = nfoGovReader.readDecimal("IminCierre");
        dtoRepCajaDiariaMp.ImcoCierre = nfoGovReader.readDecimal("ImcoCierre");
        dtoRepCajaDiariaMp.DifeCierre = nfoGovReader.readDecimal("DifeCierre");
        dtoRepCajaDiariaMp.UsuaCierre = nfoGovReader.readString("UsuaCierre");
        dtoRepCajaDiariaMp.FechaCierre = nfoGovReader.readDateTime("FechaCierre");
      }
    }
    nfoGovReader?.Close();
    return dtoRepCajaDiariaMp;
  }

  public enum TipoBusquedaFormasPago
  {
    TodasActivas,
    SinEfectivo,
  }
}
