// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpBoletoGrupoMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

internal class ExpBoletoGrupoMP : Expert
{
  private BoletoCajaMP boleto;
  private string tickeadoraActiva;
  private ExpImpresionTicket expImpTicket;

  public ExpBoletoGrupoMP()
    : base(Modulo.Database)
  {
    this.tickeadoraActiva = PARAMS.Parameters.GetString("TickeadoraActiva");
    this.boleto = new BoletoCajaMP();
    this.expImpTicket = new ExpImpresionTicket();
  }

  public List<BoletoGrupoMP> ObtenerAcrePagos()
  {
    List<BoletoGrupoMP> boletoGrupoMpList = new List<BoletoGrupoMP>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT ap.*, er.DetaEnre FROM acrepago ap INNER JOIN infogov.entereca er ON ap.CodiEnre=er.CodiEnre WHERE ap.ActuAcpa = 'No' AND ap.VeriAcpa = 0 AND ap.FeacAcpa IS NULL ORDER BY ap.FeenAcpa ASC, ap.NumeAcpa DESC;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        boletoGrupoMpList.Add(new BoletoGrupoMP()
        {
          FeenAcpa = nfoGovReader.readDateTime("FeenAcpa"),
          NumeAcpa = nfoGovReader.readInt("NumeAcpa"),
          ActuAcpa = nfoGovReader.readString("ActuAcpa"),
          CodiEnre = nfoGovReader.readInt("CodiEnre"),
          DetaEnre = nfoGovReader.readString("DetaEnre"),
          FealAcpa = nfoGovReader.readDateTime("FealAcpa"),
          FepaAcpa = nfoGovReader.readDateTime("FepaAcpa"),
          TocoAcpa = nfoGovReader.readInt("TocoAcpa"),
          ImpoAcpa = nfoGovReader.readDecimal("ImpoAcpa"),
          NoarAcpa = nfoGovReader.readString("NoarAcpa")
        });
    }
    nfoGovReader.Close();
    return boletoGrupoMpList;
  }

  public List<FormaPagoMP> ObtenerFormasPago()
  {
    List<FormaPagoMP> formaPagoMpList = new List<FormaPagoMP>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT tp.CodiTipa, tp.DetaTipa FROM tipopago tp WHERE tp.BajaFeho IS NULL;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        formaPagoMpList.Add(new FormaPagoMP()
        {
          CodiTipa = nfoGovReader.readInt("CodiTipa"),
          DetaTipa = nfoGovReader.readString("DetaTipa")
        });
    }
    nfoGovReader.Close();
    return formaPagoMpList;
  }

  public List<FormaPagoMP> ObtenerFormasPagoUsadas(int PeriFopa, int NumeFopa)
  {
    List<FormaPagoMP> formaPagoMpList = new List<FormaPagoMP>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT fp.CodiTipa, tp.DetaTipa, fp.NuchFopa, fp.ImpoFopa FROM formpago fp");
    stringBuilder.AppendLine("INNER JOIN tipopago tp ON tp.CodiTipa=fp.CodiTipa");
    stringBuilder.AppendLine($"WHERE fp.PeriFopa = {PeriFopa} AND fp.NumeFopa = {NumeFopa}");
    stringBuilder.AppendLine("ORDER BY fp.CodiTipa;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        formaPagoMpList.Add(new FormaPagoMP()
        {
          CodiTipa = nfoGovReader.readInt("CodiTipa"),
          DetaTipa = nfoGovReader.readString("DetaTipa"),
          NuchFopa = nfoGovReader.readString("NuchFopa"),
          ImpoFopa = nfoGovReader.readDecimal("ImpoFopa")
        });
    }
    nfoGovReader.Close();
    return formaPagoMpList;
  }

  public List<BoletoCajaMP> BuscarBoletosIngresados(DateTime fechaEnvio, int grupo)
  {
    List<BoletoCajaMP> boletoCajaMpList = new List<BoletoCajaMP>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(" SELECT b.*, pers.DetaPers, p.PeriFopa, p.NumeFopa FROM boleto b ");
    stringBuilder.AppendLine(" INNER JOIN pago p ON p.PeriBole=b.PeriBole AND p.NumeBole=b.NumeBole ");
    stringBuilder.AppendLine(" LEFT JOIN infogov.persona pers ON pers.CucuPers=b.CucuPers ");
    stringBuilder.AppendLine($" WHERE p.FeenAcpa = {this.sqlDate(fechaEnvio)} AND p.NumeAcpa = {grupo}; ");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        boletoCajaMpList.Add(new BoletoCajaMP()
        {
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          CodiOfic = nfoGovReader.readInt("CodiOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          TipoBole = nfoGovReader.readString("TipoBole"),
          CapiBole = nfoGovReader.readDecimal("CapiBole"),
          DecaBole = nfoGovReader.readDecimal("DecaBole"),
          RecaBole = nfoGovReader.readDecimal("RecaBole"),
          DereBole = nfoGovReader.readDecimal("DereBole"),
          InteBole = nfoGovReader.readDecimal("InteBole"),
          ExenBole = nfoGovReader.readDecimal("ExenBole"),
          ApreBole = nfoGovReader.readDecimal("ApreBole"),
          TotaBole = nfoGovReader.readDecimal("TotaBole"),
          CrafBole = nfoGovReader.readDecimal("CrafBole"),
          DetaPers = nfoGovReader.readString("DetaPers"),
          PeriFopa = nfoGovReader.readInt("PeriFopa"),
          NumeFopa = nfoGovReader.readInt("NumeFopa")
        });
    }
    nfoGovReader.Close();
    return boletoCajaMpList;
  }

  public string CajaVerificada(DateTime fecha, short NumeAcpa)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM acrepago WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {NumeAcpa} AND VeriAcpa = 1;") > 0 ? "La caja ya se encuentra CERRADA. No se pueden ingresar más boletos. Verificar..." : string.Empty;
  }

  public string GrupoActualizado(DateTime fecha, int NumeAcpa)
  {
    string str = this.conn.executeString($"SELECT ActuAcpa FROM acrepago WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {NumeAcpa} LIMIT 1;");
    if (string.IsNullOrWhiteSpace(str))
      return "Caja incorrecta.";
    return str == "Si" ? $"No se puede ingresar el boleto para el día: {fecha.ToShortDateString()} n° de grupo: {NumeAcpa}. El grupo ya fue ACTUALIZADO" : string.Empty;
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

  public BoletoCajaMP ObtenerBoleto(int PeriBole, int NumeBole)
  {
    BoletoCajaMP boletoCajaMp = new BoletoCajaMP();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT boleto.*, infogov.persona.DetaPers FROM boleto LEFT JOIN infogov.persona ON boleto.CucuPers = infogov.persona.CucuPers WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    try
    {
      if (nfoGovReader.HasRows)
      {
        while (nfoGovReader.Read())
        {
          boletoCajaMp.PeriBole = nfoGovReader.readInt(nameof (PeriBole));
          boletoCajaMp.NumeBole = nfoGovReader.readInt(nameof (NumeBole));
          boletoCajaMp.CodiOfic = nfoGovReader.readInt("CodiOfic");
          boletoCajaMp.CuenCtct = nfoGovReader.readString("CuenCtct");
          boletoCajaMp.CucuPers = nfoGovReader.readLong("CucuPers");
          boletoCajaMp.FeveBole = nfoGovReader.readDateTime("FeveBole");
          boletoCajaMp.TipoBole = nfoGovReader.readString("TipoBole");
          boletoCajaMp.EstaBole = nfoGovReader.readString("EstaBole");
          boletoCajaMp.CodiFapa = nfoGovReader.readInt("CodiFapa");
          boletoCajaMp.CuotDefa = nfoGovReader.readInt("CuotDefa");
          boletoCajaMp.CapiBole = nfoGovReader.readDecimal("CapiBole");
          boletoCajaMp.RecaBole = nfoGovReader.readDecimal("RecaBole");
          boletoCajaMp.DecaBole = nfoGovReader.readDecimal("DecaBole");
          boletoCajaMp.DereBole = nfoGovReader.readDecimal("DereBole");
          boletoCajaMp.InteBole = nfoGovReader.readDecimal("InteBole");
          boletoCajaMp.ExenBole = nfoGovReader.readDecimal("ExenBole");
          boletoCajaMp.CrafBole = nfoGovReader.readDecimal("CrafBole");
          boletoCajaMp.ApreBole = nfoGovReader.readDecimal("ApreBole");
          boletoCajaMp.TotaBole = nfoGovReader.readDecimal("TotaBole");
          boletoCajaMp.CodiUsua = nfoGovReader.readString("CodiUsua");
          boletoCajaMp.DetaPers = nfoGovReader.readString("DetaPers");
        }
      }
    }
    catch (Exception ex)
    {
    }
    finally
    {
      nfoGovReader.Close();
    }
    return boletoCajaMp;
  }

  private List<DetalleBoletoMP> ObtenerDetallesBoleto(BoletoCajaMP bole)
  {
    List<DetalleBoletoMP> detalleBoletoMpList = new List<DetalleBoletoMP>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT detabole.*, concepto.TipaConc FROM detabole ");
    stringBuilder.AppendLine($" INNER JOIN concepto ON concepto.PeriInfo = {bole.PeriBole} ");
    stringBuilder.AppendLine(" AND concepto.CodiConc = detabole.CodiConc");
    stringBuilder.AppendLine($" WHERE PeriBole = {bole.PeriBole} ");
    stringBuilder.AppendLine($" AND NumeBole = {bole.NumeBole} ");
    stringBuilder.AppendLine(" ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    try
    {
      if (nfoGovReader.HasRows)
      {
        while (nfoGovReader.Read())
          detalleBoletoMpList.Add(new DetalleBoletoMP()
          {
            PeriBole = nfoGovReader.readInt("PeriBole"),
            NumeBole = nfoGovReader.readInt("NumeBole"),
            PeriCtct = nfoGovReader.readInt("PeriCtct"),
            BimeCtct = nfoGovReader.readInt("BimeCtct"),
            NumeCtct = nfoGovReader.readInt("NumeCtct"),
            MoviCtct = nfoGovReader.readInt("MoviCtct"),
            MoviDebo = nfoGovReader.readInt("MoviDebo"),
            CodiTili = nfoGovReader.readInt("CodiTili"),
            NumeLiqu = nfoGovReader.readInt("NumeLiqu"),
            CodiOfic = nfoGovReader.readInt("CodiOfic"),
            CuenCtct = nfoGovReader.readString("CuenCtct"),
            TipoCtct = nfoGovReader.readString("TipoCtct"),
            CodiFapa = nfoGovReader.readInt("CodiFapa"),
            CuotDefa = nfoGovReader.readInt("CuotDefa"),
            NumeApre = nfoGovReader.readInt("NumeApre"),
            CodiTimo = nfoGovReader.readInt("CodiTimo"),
            PeriInfo = nfoGovReader.readInt("PeriInfo"),
            CodiConc = nfoGovReader.readString("CodiConc"),
            CapiDebo = nfoGovReader.readDecimal("CapiDebo"),
            DecaDebo = nfoGovReader.readDecimal("DecaDebo"),
            RecaDebo = nfoGovReader.readDecimal("RecaDebo"),
            DereDebo = nfoGovReader.readDecimal("DereDebo"),
            InteDebo = nfoGovReader.readDecimal("InteDebo"),
            ExenDebo = nfoGovReader.readDecimal("ExenDebo"),
            CrafDebo = nfoGovReader.readDecimal("CrafDebo"),
            ApreDebo = nfoGovReader.readDecimal("ApreDebo"),
            TotaDebo = nfoGovReader.readDecimal("TotaDebo"),
            TipaConc = nfoGovReader.readInt("TipaConc")
          });
      }
    }
    catch (Exception ex)
    {
      throw new Exception(ex.Message);
    }
    finally
    {
      nfoGovReader.Close();
    }
    return detalleBoletoMpList;
  }

  private List<ComposicionDetalleMP> ObtenerComposicionDetalleMP(DetalleBoletoMP dtb)
  {
    List<ComposicionDetalleMP> composicionDetalleMpList = new List<ComposicionDetalleMP>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(" SELECT * FROM boledeta ");
    stringBuilder.AppendLine($" WHERE PeriBole = {dtb.PeriBole} ");
    stringBuilder.AppendLine($" AND NumeBole = {dtb.NumeBole} ");
    stringBuilder.AppendLine($" AND PeriCtct = {dtb.PeriCtct} ");
    stringBuilder.AppendLine($" AND BimeCtct = {dtb.BimeCtct} ");
    stringBuilder.AppendLine($" AND NumeCtct = {dtb.NumeCtct} ");
    stringBuilder.AppendLine($" AND MoviCtct = {dtb.MoviCtct} ");
    stringBuilder.AppendLine($" AND MoviDebo = {dtb.MoviDebo} ");
    stringBuilder.AppendLine(" ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde;");
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
    nfoGovReader.Close();
    return composicionDetalleMpList;
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

  public string IngresarBoleto(
    DateTime FeenAcpa,
    int NumeAcpa,
    int PeriBole,
    int Numebole,
    int CodiTipa,
    string NuchFopa,
    DateTime FepaAcpa)
  {
    string empty = string.Empty;
    string str1 = this.expImpTicket.ImpresionTicketStrResult();
    if (!string.IsNullOrWhiteSpace(str1))
      return str1;
    string str2 = this.CajaVerificada(FeenAcpa, (short) NumeAcpa);
    if (!string.IsNullOrWhiteSpace(str2))
      return str2;
    string str3 = this.GrupoActualizado(FeenAcpa, NumeAcpa);
    if (!string.IsNullOrWhiteSpace(str3))
      return str3;
    this.boleto = this.ObtenerBoleto(PeriBole, Numebole);
    if (this.boleto == null || this.boleto.PeriBole == 0 || this.boleto.NumeBole == 0)
      return "No se encontró el boleto. Verifique...";
    List<DetalleBoletoMP> detalleBoletoMpList = this.ObtenerDetallesBoleto(this.boleto);
    if (detalleBoletoMpList == null || detalleBoletoMpList.Count == 0)
      return "No se encontró el detalle del boleto. Verifique...";
    string str4 = this.VerificarBoleto(this.boleto.PeriBole, this.boleto.NumeBole);
    if (!string.IsNullOrWhiteSpace(str4))
      return str4;
    string str5 = this.VerificarPago(this.boleto.PeriBole, this.boleto.NumeBole);
    if (!string.IsNullOrWhiteSpace(str5))
      return str5;
    string str6 = this.Pagado(this.boleto.PeriBole, this.boleto.NumeBole);
    if (!string.IsNullOrWhiteSpace(str6))
      return str6;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"UPDATE acrepago SET TocoAcpa = TocoAcpa + 1, ImpoAcpa = ImpoAcpa + {this.sqlDecimal(this.boleto.TotaBole)} WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
    int num = this.conn.executeInt("SELECT IF(MAX(fp.NumeFopa) > 0, MAX(fp.NumeFopa) + 1, 1) FROM formpago fp WHERE fp.PeriFopa = YEAR(NOW());");
    stringBuilder.AppendLine($"INSERT INTO formpago (PeriFopa,NumeFopa,MoviFopa,CodiTipa,NuchFopa,ImpoFopa) VALUES (YEAR(NOW()),{num},1,{CodiTipa},{this.sqlString(NuchFopa)},{this.sqlDecimal(this.boleto.TotaBole)});");
    stringBuilder.AppendLine($"INSERT INTO pagoinfo3(PeriBole,NumeBole,IngrGrupo) VALUES({PeriBole},{Numebole},true);");
    stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa, NumeAcpa, PeriBole, NumeBole, PeriFopa, NumeFopa, CodiOfic, CuenCtct, CucuPers, ActuPago, TipoPago, FealPago, FepaPago, CodiFapa, CuotDefa, CapiPago, DecaPago, RecaPago, DerePago, IntePago, ExenPago, CrafPago, AprePago, TotaPago, AltaUsua)");
    stringBuilder.AppendLine($" VALUES ({this.sqlDate(FeenAcpa, false)},{NumeAcpa},{this.boleto.PeriBole},{this.boleto.NumeBole},YEAR(NOW()),{num},{this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.CucuPers},'No',{this.sqlString(this.boleto.TipoBole)},DATE(NOW()),{this.sqlDate(FepaAcpa, false)},{this.boleto.CodiFapa},{this.boleto.CuotDefa},{this.sqlDecimal(this.boleto.CapiBole)},{this.sqlDecimal(this.boleto.DecaBole)},{this.sqlDecimal(this.boleto.RecaBole)},{this.sqlDecimal(this.boleto.DereBole)},{this.sqlDecimal(this.boleto.InteBole)},{this.sqlDecimal(this.boleto.ExenBole)},{this.sqlDecimal(this.boleto.CrafBole)},{this.sqlDecimal(this.boleto.ApreBole)},{this.sqlDecimal(this.boleto.TotaBole)},{this.sqlString(this.usuario)});");
    if (FeenAcpa.Date > this.boleto.FeveBole.Date)
      stringBuilder.AppendLine($"INSERT INTO recaboleto (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.PeriBole},{this.boleto.NumeBole},'No',DATE(NOW()),{this.sqlDate(this.boleto.FeveBole, false)},{this.sqlDecimal(this.boleto.TotaBole)});");
    stringBuilder.AppendLine($" UPDATE boleapre SET EstaBoap = 'Pagado', FeenAcpa = {this.sqlDate(FeenAcpa, false)}, FeacBoap = NULL WHERE PeriBole = {this.boleto.PeriBole} AND NumeBole = {this.boleto.NumeBole} AND EstaBoap IN ('Generado','Emitido');");
    stringBuilder.AppendLine($"UPDATE boleto SET EstaBole = 'Pagado' WHERE PeriBole = {this.boleto.PeriBole} AND NumeBole = {this.boleto.NumeBole};");
    foreach (DetalleBoletoMP dtb in detalleBoletoMpList)
    {
      string str7 = this.ValidarCuentaContable(dtb);
      if (!string.IsNullOrWhiteSpace(str7))
        return str7;
      stringBuilder.AppendLine("INSERT INTO detapago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,CodiTili,NumeLiqu,ActuDepa,CodiOfic,CuenCtct,TipoCtct,CodiFapa,CuotDefa,NumeApre,CodiTimo,PeriInfo,CodiConc,CapiDepa,DecaDepa,RecaDepa,DereDepa,InteDepa,ExenDepa,CrafDepa,ApreDepa,TotaDepa) ");
      stringBuilder.AppendLine($" VALUES ({this.sqlDate(FeenAcpa, false)},{NumeAcpa},{dtb.PeriBole},{dtb.NumeBole},{dtb.PeriCtct},{dtb.BimeCtct},{dtb.NumeCtct},");
      stringBuilder.AppendLine($"{dtb.MoviCtct},{dtb.MoviDebo},{dtb.CodiTili},{dtb.NumeLiqu},'No',{dtb.CodiOfic},{this.sqlString(dtb.CuenCtct)},{this.sqlString(dtb.TipoCtct)},{dtb.CodiFapa},{dtb.CuotDefa},{dtb.NumeApre},{dtb.TipaConc},{dtb.PeriInfo},{this.sqlString(dtb.CodiConc)},{this.sqlDecimal(dtb.CapiDebo)},{this.sqlDecimal(dtb.DecaDebo)},{this.sqlDecimal(dtb.RecaDebo)},{this.sqlDecimal(dtb.DereDebo)},{this.sqlDecimal(dtb.InteDebo)},{this.sqlDecimal(dtb.ExenDebo)},{this.sqlDecimal(dtb.CrafDebo)},{this.sqlDecimal(dtb.ApreDebo)},{this.sqlDecimal(dtb.TotaDebo)});");
      if (this.boleto.TipoBole == "Pago Anticipado")
        stringBuilder.AppendLine($" UPDATE pagoanti SET EstaPaan = 'Pagado' WHERE CodiOfic = {dtb.CodiOfic} AND CuenCtct = {this.sqlString(dtb.CuenCtct)} AND PeriBole = {dtb.PeriBole} AND NumeBole = {dtb.NumeBole} AND PeriLiqu = {dtb.PeriCtct} AND BimeLiqu = {dtb.BimeCtct};");
      foreach (ComposicionDetalleMP composicionDetalleMp in this.ObtenerComposicionDetalleMP(dtb))
      {
        stringBuilder.AppendLine($" INSERT INTO pagodeta (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,PeriOrde,CodiCtde,NumeCtde,MoviCtde,CodiOfic,CuenCtct,ImpoPade,Decapade,TotaPade) VALUES ({this.sqlDate(FeenAcpa, false)},{NumeAcpa},{composicionDetalleMp.PeriBole},{composicionDetalleMp.NumeBole},{composicionDetalleMp.PeriCtct},{composicionDetalleMp.BimeCtct},{composicionDetalleMp.NumeCtct},");
        stringBuilder.AppendLine($" {composicionDetalleMp.MoviCtct},{composicionDetalleMp.MoviDebo},{composicionDetalleMp.PeriOrde},{composicionDetalleMp.CodiCtde},{composicionDetalleMp.NumeCtde},{composicionDetalleMp.MoviCtde},{composicionDetalleMp.CodiOfic},{this.sqlString(composicionDetalleMp.CuenCtct)},{this.sqlDecimal(composicionDetalleMp.ImpoBode)},{this.sqlDecimal(composicionDetalleMp.DecaBode)},{this.sqlDecimal(composicionDetalleMp.TotaBode)});");
      }
    }
    if (!this.conn.executeNonQuery(stringBuilder.ToString()))
      return "No se pudo ingresar el pago";
    this.expImpTicket.FeenAcpa = FeenAcpa;
    if (this.tickeadoraActiva == "True")
      this.expImpTicket.ImprimirTicketMP(this.boleto);
    return string.Empty;
  }

  public bool ValidarExistenciaPago(DateTime FeenAcpa, int NumeAcpa, int PeriBole, int NumeBole)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE FeenAcpa = {this.sqlDate(FeenAcpa)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};") > 0;
  }

  public int ComprobarCombinacionPagos(int PeriFopa, int NumeFopa)
  {
    if (PeriFopa == 0 || NumeFopa == 0)
      return 0;
    int num1 = this.conn.executeInt($"SELECT COUNT(*) FROM formpago WHERE PeriFopa = {PeriFopa} AND NumeFopa = {NumeFopa};");
    int num2 = this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE PeriFopa = {PeriFopa} AND NumeFopa = {NumeFopa};");
    if (num2 == 1 && num1 == 1)
      return 1;
    if (num2 > 1 && num1 == 1)
      return 2;
    if (num2 == 1 && num1 > 1)
      return 3;
    return num2 > 1 && num1 > 1 ? 4 : 5;
  }

  public List<BoletoAsociadoMP> ObtenerPagosBoletos(int PeriFopa, int NumeFopa, int NumeBole)
  {
    List<BoletoAsociadoMP> boletoAsociadoMpList = new List<BoletoAsociadoMP>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT CONCAT(p.PeriBole, '-', p.NumeBole) AS NumeBole, p.TotaPago AS TotaBole FROM pago p WHERE p.PeriFopa={PeriFopa} AND p.NumeFopa={NumeFopa} AND p.NumeBole!={NumeBole};");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        BoletoAsociadoMP boletoAsociadoMp = new BoletoAsociadoMP()
        {
          NumeBole = nfoGovReader.readString(nameof (NumeBole)),
          TotaBole = nfoGovReader.readDecimal("TotaBole")
        };
        boletoAsociadoMpList.Add(boletoAsociadoMp);
      }
    }
    nfoGovReader.Close();
    return boletoAsociadoMpList;
  }

  public bool EliminarPago(
    DateTime FeenAcpa,
    int NumeAcpa,
    int PeriBole,
    int NumeBole,
    string MoanBole,
    Decimal TotaBole,
    int accion,
    int PeriFopa = 0,
    int NumeFopa = 0,
    List<FormaPagoMP> Fopas = null)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"UPDATE acrepago SET TocoAcpa = TocoAcpa - 1, ImpoAcpa = ImpoAcpa - {this.sqlDecimal(TotaBole)} WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
    stringBuilder.AppendLine($"DELETE FROM pago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"DELETE FROM detapago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"DELETE FROM pagodeta WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"DELETE FROM recabole WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"UPDATE boleto SET EstaBole = 'Anulado Caja', FeanBole = DATE(NOW()), MoanBole = {this.sqlString(MoanBole)}, AnulUsua = {this.sqlString(this.usuario)} WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"UPDATE pagoanti SET EstaPaan = 'Anulado Caja' WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"UPDATE boleapre SET EstaBoap = 'Anulado Caja' WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole} AND EstaBoap = 'Pagado';");
    stringBuilder.AppendLine($"INSERT INTO boleanul (FeenAcpa, NumeAcpa, PeriBole, NumeBole, MoanBole, AltaUsua) VALUES ({this.sqlDate(FeenAcpa, false)}, {NumeAcpa}, {PeriBole}, {NumeBole}, {this.sqlString(MoanBole)}, {this.sqlString(this.usuario)});");
    switch (accion)
    {
      case 1:
      case 3:
        stringBuilder.AppendLine($"DELETE FROM formpago WHERE PeriFopa = {PeriFopa} AND NumeFopa = {NumeFopa};");
        break;
      case 2:
        stringBuilder.AppendLine($"UPDATE formpago SET ImpoFopa = ImpoFopa - {this.sqlDecimal(TotaBole)} WHERE PeriFopa = {PeriFopa} AND NumeFopa = {NumeFopa};");
        break;
      case 4:
        stringBuilder.AppendLine($"DELETE FROM formpago WHERE PeriFopa = {PeriFopa} AND NumeFopa = {NumeFopa};");
        int num = this.conn.executeInt("SELECT IF(MAX(fp.NumeFopa) > 0, MAX(fp.NumeFopa) + 1, 1) FROM formpago fp WHERE fp.PeriFopa = YEAR(NOW());");
        foreach (FormaPagoMP fopa in Fopas)
          stringBuilder.AppendLine($"INSERT INTO formpago (PeriFopa,NumeFopa,MoviFopa, CodiTipa,NuchFopa,ImpoFopa) VALUES (YEAR(NOW()),{num},{Fopas.IndexOf(fopa) + 1}, {fopa.CodiTipa},{this.sqlString(fopa.NuchFopa)},{this.sqlDecimal(fopa.ImpoFopa)});");
        stringBuilder.AppendLine($"UPDATE pago SET PeriFopa=YEAR(NOW()), NumeFopa={num} WHERE PeriFopa={PeriFopa} AND NumeFopa={NumeFopa};");
        break;
    }
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public List<string> ValidarDatosGrupo(DateTime FeenAcpa, int NumeAcpa)
  {
    List<string> stringList = new List<string>();
    if (this.conn.executeInt($"SELECT COUNT(*) FROM infogov.entereca WHERE NumeAcpa = {NumeAcpa};") > 0)
      stringList.Add("El Grupo que intenta utiliar ya se \nencuentra asociado a un Ente Recaudador.");
    if (this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};") > 0)
      stringList.Add("El Grupo que intenta utilizar ya \nposee pagos ingresados.");
    if (this.conn.executeInt($"SELECT COUNT(*) FROM acrepago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};") > 0)
      stringList.Add("El Grupo y la Fecha de Envío ya \nestán siendo utilizadas.");
    return stringList;
  }

  public bool GrupoPredefinido(int NumeAcpa, int CodiEnre)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM infogov.entereca WHERE NumeAcpa = {NumeAcpa} AND CodiEnre = {CodiEnre};") > 0;
  }

  public bool CrearGrupo(DateTime FeenAcpa, int NumeAcpa, int CodiEnre, DateTime FepaAcpa)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("INSERT INTO acrepago (FeenAcpa, NumeAcpa, ActuAcpa, CodiEnre, FealAcpa, FepaAcpa, ObseAcpa, CodiUsua, AltaUsua)");
    stringBuilder.AppendLine($"VALUES({this.sqlDate(FeenAcpa, false)}, {NumeAcpa}, 'No', {CodiEnre}, DATE(NOW()), {this.sqlDate(FepaAcpa, false)}, 'CAJA DE GRUPO', {this.sqlString(this.usuario)}, {this.sqlString(this.usuario)});");
    stringBuilder.AppendLine($"INSERT INTO acreusua (CodiUsua, FeenAcpa, NumeAcpa) VALUES ({this.sqlString(this.usuario)}, {this.sqlDate(FeenAcpa, false)}, {NumeAcpa});");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool ActualizarGrupo(
    DateTime FeenAcpa,
    int NumeAcpa,
    int CodiEnre,
    DateTime FepaAcpa,
    int TocoAcpa,
    Decimal ImpoAcpa)
  {
    return this.conn.executeNonQuery($"UPDATE acrepago SET CodiEnre={CodiEnre}, FepaAcpa={this.sqlDate(FepaAcpa, false)}, TocoAcpa={TocoAcpa}, ImpoAcpa={this.sqlDecimal(ImpoAcpa)} WHERE FeenAcpa={this.sqlDate(FeenAcpa, false)} AND NumeAcpa={NumeAcpa}");
  }

  public bool EliminarGrupo(DateTime FeenAcpa, int NumeAcpa)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<BoletoCajaMP> boletoCajaMpList = this.BuscarBoletosIngresados(FeenAcpa, NumeAcpa);
    stringBuilder.AppendLine($"SET @sUsuario := {this.sqlString(this.usuario)};");
    stringBuilder.AppendLine($"DELETE FROM acrepago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
    stringBuilder.AppendLine($"DELETE FROM acreusua WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
    if (boletoCajaMpList.Count > 0)
    {
      stringBuilder.AppendLine($"DELETE p, f FROM pago p LEFT JOIN formpago f ON f.PeriFopa=p.PeriFopa AND f.NumeFopa=p.NumeFopa WHERE p.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND p.NumeAcpa = {NumeAcpa};");
      stringBuilder.AppendLine($"DELETE FROM detapago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
      stringBuilder.AppendLine($"DELETE FROM pagodeta WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
      foreach (BoletoCajaMP boletoCajaMp in boletoCajaMpList)
      {
        stringBuilder.AppendLine($"DELETE FROM recabole WHERE PeriBole = {boletoCajaMp.PeriBole} AND NumeBole = {boletoCajaMp.NumeBole};");
        stringBuilder.AppendLine($"UPDATE boleto SET EstaBole = 'Anulado Caja', FeanBole = DATE(NOW()), MoanBole = 'Baja Grupo', AnulUsua = {this.sqlString(this.usuario)} WHERE PeriBole = {boletoCajaMp.PeriBole} AND NumeBole = {boletoCajaMp.NumeBole};");
        stringBuilder.AppendLine($"UPDATE pagoanti SET EstaPaan = 'Anulado Caja' WHERE PeriBole = {boletoCajaMp.PeriBole} AND NumeBole = {boletoCajaMp.NumeBole};");
        stringBuilder.AppendLine($"UPDATE boleapre SET EstaBoap = 'Anulado Caja' WHERE PeriBole = {boletoCajaMp.PeriBole} AND NumeBole = {boletoCajaMp.NumeBole} AND EstaBoap = 'Pagado';");
        stringBuilder.AppendLine($"INSERT INTO boleanul (FeenAcpa, NumeAcpa, PeriBole, NumeBole, MoanBole, AltaUsua) VALUES ({this.sqlDate(FeenAcpa, false)}, {NumeAcpa}, {boletoCajaMp.PeriBole}, {boletoCajaMp.NumeBole}, 'Baja Grupo', {this.sqlString(this.usuario)});");
      }
    }
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }
}
