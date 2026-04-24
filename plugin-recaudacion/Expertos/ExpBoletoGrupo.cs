// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpBoletoGrupo
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

internal class ExpBoletoGrupo : Expert
{
  private BoletoCaja boleto;
  private string tickeadoraActiva;
  private ExpImpresionTicket expImpTicket;

  public ExpBoletoGrupo()
    : base(Modulo.Database)
  {
    this.tickeadoraActiva = PARAMS.Parameters.GetString("TickeadoraActiva");
    this.boleto = new BoletoCaja();
    this.expImpTicket = new ExpImpresionTicket();
  }

  public List<BoletoGrupo> ObtenerAcrePagos()
  {
    List<BoletoGrupo> boletoGrupoList = new List<BoletoGrupo>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT ap.*, er.DetaEnre FROM acrepago ap INNER JOIN infogov.entereca er ON ap.CodiEnre=er.CodiEnre WHERE ap.ActuAcpa = 'No' AND ap.FeacAcpa IS NULL ORDER BY ap.FeenAcpa ASC, ap.NumeAcpa DESC;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        boletoGrupoList.Add(new BoletoGrupo()
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
    return boletoGrupoList;
  }

  public List<FormaPago> ObtenerFormasPago()
  {
    List<FormaPago> formaPagoList = new List<FormaPago>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT tp.CodiTipa, tp.DetaTipa");
    stringBuilder.AppendLine("FROM tipopago tp");
    stringBuilder.AppendLine("WHERE tp.BajaFeho is null;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        formaPagoList.Add(new FormaPago()
        {
          CodiTipa = nfoGovReader.readInt("CodiTipa"),
          DetaTipa = nfoGovReader.readString("DetaTipa")
        });
    }
    nfoGovReader.Close();
    return formaPagoList;
  }

  public List<FormaPago> ObtenerFormasPagoUsadas(int PeriFopa, int NumeFopa)
  {
    List<FormaPago> formaPagoList = new List<FormaPago>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT fp.CodiTipa, tp.DetaTipa, fp.NuchFopa, fp.ImpoFopa FROM formpago fp");
    stringBuilder.AppendLine("INNER JOIN tipopago tp ON tp.CodiTipa=fp.CodiTipa");
    stringBuilder.AppendLine($"WHERE fp.PeriFopa = {PeriFopa} AND fp.NumeFopa = {NumeFopa}");
    stringBuilder.AppendLine("ORDER BY fp.CodiTipa;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        formaPagoList.Add(new FormaPago()
        {
          CodiTipa = nfoGovReader.readInt("CodiTipa"),
          DetaTipa = nfoGovReader.readString("DetaTipa"),
          NuchFopa = nfoGovReader.readLong("NuchFopa"),
          ImpoFopa = nfoGovReader.readDecimal("ImpoFopa")
        });
    }
    nfoGovReader.Close();
    return formaPagoList;
  }

  public List<BoletoCaja> BuscarBoletosIngresados(DateTime fechaEnvio, int grupo)
  {
    List<BoletoCaja> boletoCajaList = new List<BoletoCaja>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(" SELECT b.*, pers.DetaPers, p.PeriFopa, p.NumeFopa FROM boleto b ");
    stringBuilder.AppendLine(" INNER JOIN pago p ON p.PeriBole=b.PeriBole AND p.NumeBole=b.NumeBole ");
    stringBuilder.AppendLine(" LEFT JOIN infogov.persona pers ON pers.CucuPers=b.CucuPers ");
    stringBuilder.AppendLine($" WHERE p.FeenAcpa = {this.sqlDate(fechaEnvio)} AND p.NumeAcpa = {grupo}; ");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        BoletoCaja boletoCaja = new BoletoCaja();
        boletoCaja.PeriBole = nfoGovReader.readInt("PeriBole");
        boletoCaja.NumeBole = nfoGovReader.readInt("NumeBole");
        boletoCaja.CodiOfic = nfoGovReader.readInt("CodiOfic");
        boletoCaja.CuenCtct = nfoGovReader.readString("CuenCtct");
        boletoCaja.TipoBole = nfoGovReader.readString("TipoBole");
        boletoCaja.CapiBole = nfoGovReader.readDecimal("CapiBole");
        boletoCaja.DecaBole = nfoGovReader.readDecimal("DecaBole");
        boletoCaja.RecaBole = nfoGovReader.readDecimal("RecaBole");
        boletoCaja.DereBole = nfoGovReader.readDecimal("DereBole");
        boletoCaja.InteBole = nfoGovReader.readDecimal("InteBole");
        boletoCaja.ExenBole = nfoGovReader.readDecimal("ExenBole");
        boletoCaja.ApreBole = nfoGovReader.readDecimal("ApreBole");
        boletoCaja.TotaBole = nfoGovReader.readDecimal("TotaBole");
        boletoCaja.CrafBole = nfoGovReader.readDecimal("CrafBole");
        boletoCaja.DetaPers = nfoGovReader.readString("DetaPers");
        boletoCaja.PeriFopa = nfoGovReader.readInt("PeriFopa");
        boletoCaja.NumeFopa = nfoGovReader.readInt("NumeFopa");
        if (PARAMS.Municipio == "Alvear")
          boletoCaja.AdicBole = nfoGovReader.readDecimal("AdicBole");
        boletoCajaList.Add(boletoCaja);
      }
    }
    nfoGovReader.Close();
    return boletoCajaList;
  }

  public void GrupoActualizado(DateTime fecha, int NumeAcpa)
  {
    if (this.conn.executeInt($"SELECT COUNT(*) FROM acrepago WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {NumeAcpa} AND ActuAcpa = 'Si';") > 0)
      throw new Exception($"No se puede ingresar el boleto para el día: {fecha.ToShortDateString()} número de grupo: {NumeAcpa}. El grupo ya fue actualizado");
  }

  public void VerificarBoleto(int peribole, int numebole)
  {
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM boleto WHERE PeriBole = {peribole} AND NumeBole = {numebole};");
    try
    {
      if (!nfoGovReader.HasRows)
        throw new Exception("El NUMERO de boleto no existe, verifique...");
      if (!nfoGovReader.Read())
        throw new Exception("Problemas al leer datos del boleto...");
      switch (nfoGovReader.readString("EstaBole").ToLower())
      {
        case "pagado":
          throw new Exception("El boleto se encuenta pagado, verifique...");
        case "actualizado":
          throw new Exception("El boleto se encuenta pagado y actualizado en la cuenta corriente, verifique...");
        case "anulado":
          throw new Exception("El boleto se encuenta anulado, verifique...");
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
  }

  public void VerificarPago(DateTime fecha, int NumeAcpa, int peribole, int numebole)
  {
    if (this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {peribole} AND NumeBole = {numebole};") > 0)
      throw new Exception("El boleto se encuenta ingresado y pagado, verifique...");
  }

  public void Pagado(int peribole, int numebole)
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
    stringBuilder.AppendLine($"WHERE detabole.PeriBole = {peribole}");
    stringBuilder.AppendLine($"AND detabole.NumeBole = {numebole}");
    stringBuilder.AppendLine("AND detabole.CuenCtct <> ''");
    stringBuilder.AppendLine("AND detapago.FeenAcpa IS NOT NULL LIMIT 1;");
    string str = this.conn.executeString(stringBuilder.ToString());
    if (!string.IsNullOrEmpty(str))
      throw new Exception($"El boleto contiene movimientos que fueron pagados con el boleto {str}. No se agregó el boleto.");
  }

  public BoletoCaja ObtenerBoleto(int PeriBole, int NumeBole)
  {
    BoletoCaja boletoCaja = new BoletoCaja();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT boleto.*, infogov.persona.DetaPers FROM boleto LEFT JOIN infogov.persona ON boleto.CucuPers = infogov.persona.CucuPers WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    try
    {
      if (nfoGovReader.HasRows)
      {
        while (nfoGovReader.Read())
        {
          boletoCaja.PeriBole = nfoGovReader.readInt(nameof (PeriBole));
          boletoCaja.NumeBole = nfoGovReader.readInt(nameof (NumeBole));
          boletoCaja.CodiOfic = nfoGovReader.readInt("CodiOfic");
          boletoCaja.CuenCtct = nfoGovReader.readString("CuenCtct");
          boletoCaja.CucuPers = nfoGovReader.readLong("CucuPers");
          boletoCaja.FeveBole = nfoGovReader.readDateTime("FeveBole");
          boletoCaja.TipoBole = nfoGovReader.readString("TipoBole");
          boletoCaja.EstaBole = nfoGovReader.readString("EstaBole");
          boletoCaja.CodiFapa = nfoGovReader.readInt("CodiFapa");
          boletoCaja.CuotDefa = nfoGovReader.readInt("CuotDefa");
          boletoCaja.CapiBole = nfoGovReader.readDecimal("CapiBole");
          boletoCaja.RecaBole = nfoGovReader.readDecimal("RecaBole");
          boletoCaja.DecaBole = nfoGovReader.readDecimal("DecaBole");
          boletoCaja.DereBole = nfoGovReader.readDecimal("DereBole");
          boletoCaja.InteBole = nfoGovReader.readDecimal("InteBole");
          boletoCaja.ExenBole = nfoGovReader.readDecimal("ExenBole");
          boletoCaja.CrafBole = nfoGovReader.readDecimal("CrafBole");
          boletoCaja.ApreBole = nfoGovReader.readDecimal("ApreBole");
          boletoCaja.TotaBole = nfoGovReader.readDecimal("TotaBole");
          boletoCaja.CodiUsua = nfoGovReader.readString("CodiUsua");
          boletoCaja.DetaPers = nfoGovReader.readString("DetaPers");
          if (PARAMS.Municipio == "Alvear")
            boletoCaja.AdicBole = nfoGovReader.readDecimal("AdicBole");
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
    return boletoCaja;
  }

  private List<DetalleBoleto> ObtenerDetallesBoleto(BoletoCaja bole)
  {
    List<DetalleBoleto> detalleBoletoList = new List<DetalleBoleto>();
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
      if (!nfoGovReader.HasRows)
        throw new Exception("No existe el detalle del boleto. NO SE CREO EL PAGO. verifique...");
      while (nfoGovReader.Read())
        detalleBoletoList.Add(new DetalleBoleto()
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
    catch (Exception ex)
    {
      throw new Exception(ex.Message);
    }
    finally
    {
      nfoGovReader.Close();
    }
    return detalleBoletoList;
  }

  private List<ComposicionDetalle> ObtenerComposicionDetalle(DetalleBoleto dtb)
  {
    List<ComposicionDetalle> composicionDetalleList = new List<ComposicionDetalle>();
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
        composicionDetalleList.Add(new ComposicionDetalle()
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
    return composicionDetalleList;
  }

  private void ValidarCuentaContable(DetalleBoleto dtb)
  {
    if (string.IsNullOrEmpty(this.conn.executeString($"SELECT IngrConc FROM concepto WHERE PeriInfo = {dtb.PeriBole} AND CodiConc = {this.sqlString(dtb.CodiConc)} LIMIT 1;")))
      throw new Exception($"El concepto: {dtb.CodiConc} No tiene asociado ninguna cuenta contable de ingresos. No se ingresa el boleto.");
    if (string.IsNullOrEmpty(dtb.CuenCtct))
      return;
    if (dtb.CodiTimo == 0)
      throw new Exception($"El concepto: {dtb.CodiConc} No tiene asociado ningún tipo de movimiento de aforo. No se ingresa el boleto.");
    if (dtb.TipaConc == 0)
      throw new Exception($"El concepto: {dtb.CodiConc} No tiene asociado ningún tipo de movimiento de pago. No se ingresa el boleto.");
  }

  public bool IngresarBoleto(
    DateTime FeenAcpa,
    int NumeAcpa,
    int PeriBole,
    int Numebole,
    int CodiTipa,
    int NuchFopa,
    DateTime FechPago)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.expImpTicket.ImpresionTicket();
    this.boleto = this.ObtenerBoleto(PeriBole, Numebole);
    List<DetalleBoleto> detalleBoletoList = this.ObtenerDetallesBoleto(this.boleto);
    stringBuilder.AppendLine($"UPDATE acrepago SET TocoAcpa = TocoAcpa + 1, ImpoAcpa = ImpoAcpa + {this.sqlDecimal(this.boleto.TotaBole)} WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
    int num = this.conn.executeInt($"SELECT IF(MAX(fp.NumeFopa) > 0, MAX(fp.NumeFopa) + 1, 1) FROM formpago fp WHERE fp.PeriFopa = {PARAMS.Periodo};");
    stringBuilder.AppendLine($"INSERT INTO formpago (PeriFopa,NumeFopa,MoviFopa,CodiTipa,NuchFopa,ImpoFopa) VALUES ({PARAMS.Periodo},{num},1,{CodiTipa},{NuchFopa},{this.sqlDecimal(this.boleto.TotaBole)});");
    stringBuilder.AppendLine($"INSERT INTO pagoinfo3(PeriBole,NumeBole,IngrGrupo) VALUES({PeriBole},{Numebole},true);");
    switch (PARAMS.Municipio)
    {
      case "Alvear":
        stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriFopa,NumeFopa,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,AdicPago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua)");
        stringBuilder.AppendLine($" VALUES ({this.sqlDate(FeenAcpa, false)},{NumeAcpa},{this.boleto.PeriBole},{this.boleto.NumeBole},{PARAMS.Periodo},{num},{this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.CucuPers},'No',{this.sqlString(this.boleto.TipoBole)},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(FechPago, false)},{this.boleto.CodiFapa},{this.boleto.CuotDefa},{this.sqlDecimal(this.boleto.CapiBole)},{this.sqlDecimal(this.boleto.DecaBole)},{this.sqlDecimal(this.boleto.RecaBole)},{this.sqlDecimal(this.boleto.DereBole)},{this.sqlDecimal(this.boleto.AdicBole)},{this.sqlDecimal(this.boleto.InteBole)},{this.sqlDecimal(this.boleto.ExenBole)},{this.sqlDecimal(this.boleto.CrafBole)},{this.sqlDecimal(this.boleto.ApreBole)},{this.sqlDecimal(this.boleto.TotaBole)},{this.sqlString(this.usuario)});");
        if (FechPago.Date > this.boleto.FeveBole.Date)
        {
          stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.PeriBole},{this.boleto.NumeBole},'No',{this.sqlDate(DateTime.Now, false)},{this.sqlDate(this.boleto.FeveBole, false)},{this.sqlDecimal(this.boleto.TotaBole)});");
          break;
        }
        break;
      case "Lavalle":
        stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriFopa,NumeFopa,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua)");
        stringBuilder.AppendLine($" VALUES ({this.sqlDate(FeenAcpa, false)},{NumeAcpa},{this.boleto.PeriBole},{this.boleto.NumeBole},{PARAMS.Periodo},{num},{this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.CucuPers},'No',{this.sqlString(this.boleto.TipoBole)},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(FechPago, false)},{this.boleto.CodiFapa},{this.boleto.CuotDefa},{this.sqlDecimal(this.boleto.CapiBole)},{this.sqlDecimal(this.boleto.DecaBole)},{this.sqlDecimal(this.boleto.RecaBole)},{this.sqlDecimal(this.boleto.DereBole)},{this.sqlDecimal(this.boleto.InteBole)},{this.sqlDecimal(this.boleto.ExenBole)},{this.sqlDecimal(this.boleto.CrafBole)},{this.sqlDecimal(this.boleto.ApreBole)},{this.sqlDecimal(this.boleto.TotaBole)},{this.sqlString(this.usuario)});");
        if (FechPago.Month > this.boleto.FeveBole.Month)
        {
          stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.PeriBole},{this.boleto.NumeBole},'No',{this.sqlDate(DateTime.Now, false)},{this.sqlDate(this.boleto.FeveBole, false)},{this.sqlDecimal(this.boleto.TotaBole)});");
          break;
        }
        break;
      case "LaPaz":
      case "SanCarlos":
        stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriFopa,NumeFopa,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua)");
        stringBuilder.AppendLine($" VALUES ({this.sqlDate(FeenAcpa, false)},{NumeAcpa},{this.boleto.PeriBole},{this.boleto.NumeBole},{PARAMS.Periodo},{num},{this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.CucuPers},'No',{this.sqlString(this.boleto.TipoBole)},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(FechPago, false)},{this.boleto.CodiFapa},{this.boleto.CuotDefa},{this.sqlDecimal(this.boleto.CapiBole)},{this.sqlDecimal(this.boleto.DecaBole)},{this.sqlDecimal(this.boleto.RecaBole)},{this.sqlDecimal(this.boleto.DereBole)},{this.sqlDecimal(this.boleto.InteBole)},{this.sqlDecimal(this.boleto.ExenBole)},{this.sqlDecimal(this.boleto.CrafBole)},{this.sqlDecimal(this.boleto.ApreBole)},{this.sqlDecimal(this.boleto.TotaBole)},{this.sqlString(this.usuario)});");
        if (FechPago.Date > this.boleto.FeveBole.Date)
        {
          stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.PeriBole},{this.boleto.NumeBole},'No',{this.sqlDate(DateTime.Now, false)},{this.sqlDate(this.boleto.FeveBole, false)},{this.sqlDecimal(this.boleto.TotaBole)});");
          break;
        }
        break;
      case "SanMartín":
        stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriFopa,NumeFopa,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,AltaUsua)");
        stringBuilder.AppendLine($" VALUES ({this.sqlDate(FeenAcpa, false)},{NumeAcpa},{this.boleto.PeriBole},{this.boleto.NumeBole},{PARAMS.Periodo},{num},{this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.CucuPers},'No',{this.sqlString(this.boleto.TipoBole)},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(FechPago, false)},{this.boleto.CodiFapa},{this.boleto.CuotDefa},{this.sqlDecimal(this.boleto.CapiBole)},{this.sqlDecimal(this.boleto.DecaBole)},{this.sqlDecimal(this.boleto.RecaBole)},{this.sqlDecimal(this.boleto.DereBole)},{this.sqlDecimal(this.boleto.InteBole)},{this.sqlDecimal(this.boleto.ExenBole)},{this.sqlDecimal(this.boleto.CrafBole)},{this.sqlDecimal(this.boleto.ApreBole)},{this.sqlDecimal(this.boleto.TotaBole)},{this.sqlString(this.usuario)});");
        if (FechPago.Date > this.boleto.FeveBole.Date)
        {
          stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({this.boleto.CodiOfic},{this.sqlString(this.boleto.CuenCtct)},{this.boleto.PeriBole},{this.boleto.NumeBole},'No',{this.sqlDate(DateTime.Now, false)},{this.sqlDate(this.boleto.FeveBole, false)},{this.sqlDecimal(this.boleto.TotaBole)});");
          break;
        }
        break;
      default:
        throw new Exception("Error en switch insert Pago seleccion municipio");
    }
    if (this.conn.executeBool($" SELECT IF(NumeApre IS NOT NULL, TRUE, FALSE) FROM boleapre WHERE PeriBole = {this.boleto.PeriBole} AND NumeBole = {this.boleto.NumeBole} AND EstaBoap IN ('Generado','Emitido') LIMIT 1;"))
      stringBuilder.AppendLine($" UPDATE boleapre SET EstaBoap = 'Pagado', FeenAcpa = {this.sqlDate(FeenAcpa, false)}, FeacBoap = NULL WHERE PeriBole = {this.boleto.PeriBole} AND NumeBole = {this.boleto.NumeBole} AND EstaBoap IN ('Generado','Emitido');");
    stringBuilder.AppendLine($"UPDATE boleto SET EstaBole = 'Pagado' WHERE PeriBole = {this.boleto.PeriBole} AND NumeBole = {this.boleto.NumeBole};");
    foreach (DetalleBoleto dtb in detalleBoletoList)
    {
      this.ValidarCuentaContable(dtb);
      stringBuilder.AppendLine("INSERT INTO detapago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,CodiTili,NumeLiqu,ActuDepa,CodiOfic,CuenCtct,TipoCtct,CodiFapa,CuotDefa,NumeApre,CodiTimo,PeriInfo,CodiConc,CapiDepa,DecaDepa,RecaDepa,DereDepa,InteDepa,ExenDepa,CrafDepa,ApreDepa,TotaDepa) ");
      stringBuilder.AppendLine($" VALUES ({this.sqlDate(FeenAcpa, false)},{NumeAcpa},{dtb.PeriBole},{dtb.NumeBole},{dtb.PeriCtct},{dtb.BimeCtct},{dtb.NumeCtct},");
      stringBuilder.AppendLine($"{dtb.MoviCtct},{dtb.MoviDebo},{dtb.CodiTili},{dtb.NumeLiqu},'No',{dtb.CodiOfic},{this.sqlString(dtb.CuenCtct)},{this.sqlString(dtb.TipoCtct)},{dtb.CodiFapa},{dtb.CuotDefa},{dtb.NumeApre},{dtb.TipaConc},{dtb.PeriInfo},{this.sqlString(dtb.CodiConc)},{this.sqlDecimal(dtb.CapiDebo)},{this.sqlDecimal(dtb.DecaDebo)},{this.sqlDecimal(dtb.RecaDebo)},{this.sqlDecimal(dtb.DereDebo)},{this.sqlDecimal(dtb.InteDebo)},{this.sqlDecimal(dtb.ExenDebo)},{this.sqlDecimal(dtb.CrafDebo)},{this.sqlDecimal(dtb.ApreDebo)},{this.sqlDecimal(dtb.TotaDebo)});");
      if (this.boleto.TipoBole == "Pago Anticipado")
        stringBuilder.AppendLine($" UPDATE pagoanti SET EstaPaan = 'Pagado' WHERE CodiOfic = {dtb.CodiOfic} AND CuenCtct = {this.sqlString(dtb.CuenCtct)} AND PeriBole = {dtb.PeriBole} AND NumeBole = {dtb.NumeBole} AND PeriLiqu = {dtb.PeriCtct} AND BimeLiqu = {dtb.BimeCtct};");
      foreach (ComposicionDetalle composicionDetalle in this.ObtenerComposicionDetalle(dtb))
      {
        stringBuilder.AppendLine($" INSERT INTO pagodeta (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,PeriOrde,CodiCtde,NumeCtde,MoviCtde,CodiOfic,CuenCtct,ImpoPade,Decapade,TotaPade) VALUES ({this.sqlDate(FeenAcpa, false)},{NumeAcpa},{composicionDetalle.PeriBole},{composicionDetalle.NumeBole},{composicionDetalle.PeriCtct},{composicionDetalle.BimeCtct},{composicionDetalle.NumeCtct},");
        stringBuilder.AppendLine($" {composicionDetalle.MoviCtct},{composicionDetalle.MoviDebo},{composicionDetalle.PeriOrde},{composicionDetalle.CodiCtde},{composicionDetalle.NumeCtde},{composicionDetalle.MoviCtde},{composicionDetalle.CodiOfic},{this.sqlString(composicionDetalle.CuenCtct)},{this.sqlDecimal(composicionDetalle.ImpoBode)},{this.sqlDecimal(composicionDetalle.DecaBode)},{this.sqlDecimal(composicionDetalle.TotaBode)});");
      }
    }
    if (!this.conn.executeNonQuery(stringBuilder.ToString()))
      throw new Exception("No se pudo ingresar el pago.");
    this.expImpTicket.FeenAcpa = FeenAcpa;
    if (this.tickeadoraActiva == "True")
      this.expImpTicket.ImprimirTicket(this.boleto);
    return true;
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

  public List<BoletoAsociado> ObtenerPagosBoletos(int PeriFopa, int NumeFopa, int NumeBole)
  {
    List<BoletoAsociado> boletoAsociadoList = new List<BoletoAsociado>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT CONCAT(p.PeriBole, '-', p.NumeBole) AS NumeBole, p.TotaPago AS TotaBole FROM pago p WHERE p.PeriFopa={PeriFopa} AND p.NumeFopa={NumeFopa} AND p.NumeBole!={NumeBole};");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        BoletoAsociado boletoAsociado = new BoletoAsociado()
        {
          NumeBole = nfoGovReader.readString(nameof (NumeBole)),
          TotaBole = nfoGovReader.readDecimal("TotaBole")
        };
        boletoAsociadoList.Add(boletoAsociado);
      }
    }
    nfoGovReader.Close();
    return boletoAsociadoList;
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
    List<FormaPago> Fopas = null)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"UPDATE acrepago SET TocoAcpa = TocoAcpa - 1, ImpoAcpa = ImpoAcpa - {this.sqlDecimal(TotaBole)} WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
    stringBuilder.AppendLine($"DELETE FROM pago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"DELETE FROM detapago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"DELETE FROM pagodeta WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"DELETE FROM recabole WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"UPDATE boleto SET EstaBole = 'Anulado Caja', FeanBole = {this.sqlDate(DateTime.Now, false)}, MoanBole = {this.sqlString(MoanBole)}, AnulUsua = {this.sqlString(this.usuario)} WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"UPDATE pagoanti SET EstaPaan = 'Anulado Caja' WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"UPDATE boleapre SET EstaBoap = 'Anulado Caja' WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole} AND EstaBoap = 'Pagado';");
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
        int num = this.conn.executeInt($"SELECT IF(MAX(fp.NumeFopa) > 0, MAX(fp.NumeFopa) + 1, 1) FROM formpago fp WHERE fp.PeriFopa = {PARAMS.Periodo};");
        foreach (FormaPago fopa in Fopas)
          stringBuilder.AppendLine($"INSERT INTO formpago (PeriFopa,NumeFopa,MoviFopa, CodiTipa,NuchFopa,ImpoFopa) VALUES ({PARAMS.Periodo},{num},{Fopas.IndexOf(fopa) + 1}, {fopa.CodiTipa},{fopa.NuchFopa},{this.sqlDecimal(fopa.ImpoFopa)});");
        stringBuilder.AppendLine($"UPDATE pago SET PeriFopa={PARAMS.Periodo}, NumeFopa={num} WHERE PeriFopa={PeriFopa} AND NumeFopa={NumeFopa};");
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
      stringList.Add("El Grupo y la Fecha de Envío ya \nestan siendo utilizadas.");
    return stringList;
  }

  public bool GrupoPredefinido(int NumeAcpa, int CodiEnre)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM infogov.entereca WHERE NumeAcpa = {NumeAcpa} AND CodiEnre = {CodiEnre};") > 0;
  }

  public bool CrearGrupo(DateTime FeenAcpa, int NumeAcpa, int CodiEnre, DateTime FepaAcpa)
  {
    string sql;
    if (PARAMS.Municipio != "Alvear")
      sql = $"INSERT INTO acrepago(FeenAcpa,NumeAcpa,ActuAcpa,CodiEnre,FealAcpa,FepaAcpa,CodiUsua) VALUES({this.sqlDate(FeenAcpa, false)},{NumeAcpa},'No',{CodiEnre},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(FepaAcpa, false)},{this.sqlString(this.usuario)});";
    else
      sql = $"INSERT INTO acrepago(FeenAcpa,NumeAcpa,ActuAcpa,CodiEnre,FealAcpa,FepaAcpa,VeriAcpa,CodiUsua) VALUES({this.sqlDate(FeenAcpa, false)},{NumeAcpa},'No',{CodiEnre},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(FepaAcpa, false)},1,{this.sqlString(this.usuario)});";
    return this.conn.executeNonQuery(sql);
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
    List<BoletoCaja> boletoCajaList = this.BuscarBoletosIngresados(FeenAcpa, NumeAcpa);
    stringBuilder.AppendLine($"SET @sUsuario := {this.sqlString(this.usuario)};");
    stringBuilder.AppendLine($"DELETE FROM acrepago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
    if (boletoCajaList.Count > 0)
    {
      stringBuilder.AppendLine($"DELETE p, f FROM pago p LEFT JOIN formpago f ON f.PeriFopa=p.PeriFopa AND f.NumeFopa=p.NumeFopa WHERE p.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND p.NumeAcpa = {NumeAcpa};");
      stringBuilder.AppendLine($"DELETE FROM detapago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
      stringBuilder.AppendLine($"DELETE FROM pagodeta WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
      foreach (BoletoCaja boletoCaja in boletoCajaList)
      {
        stringBuilder.AppendLine($"DELETE FROM recabole WHERE PeriBole = {boletoCaja.PeriBole} AND NumeBole = {boletoCaja.NumeBole};");
        stringBuilder.AppendLine($"UPDATE boleto SET EstaBole = 'Anulado Caja', FeanBole = {this.sqlDate(DateTime.Now, false)}, MoanBole = 'Baja Grupo', AnulUsua = {this.sqlString(this.usuario)} WHERE PeriBole = {boletoCaja.PeriBole} AND NumeBole = {boletoCaja.NumeBole};");
        stringBuilder.AppendLine($"UPDATE pagoanti SET EstaPaan = 'Anulado Caja' WHERE PeriBole = {boletoCaja.PeriBole} AND NumeBole = {boletoCaja.NumeBole};");
        stringBuilder.AppendLine($"UPDATE boleapre SET EstaBoap = 'Anulado Caja' WHERE PeriBole = {boletoCaja.PeriBole} AND NumeBole = {boletoCaja.NumeBole} AND EstaBoap = 'Pagado';");
      }
    }
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }
}
