// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpBoletoCajaRV
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

internal class ExpBoletoCajaRV : Expert
{
  internal UsuarioOperador uo;
  private bool tickeadoraActiva;
  private ExpImpresionTicket expImpTicket;

  public ExpBoletoCajaRV()
    : base(Modulo.Database)
  {
    this.tickeadoraActiva = PARAMS.Parameters.GetString("TickeadoraActiva") == "True";
    this.expImpTicket = new ExpImpresionTicket();
    this.uo = new UsuarioOperador();
  }

  internal int ObtenerCodiEnreUsua()
  {
    return this.conn.executeInt($"SELECT IFNULL(CodiEnre,0) FROM infogov.usuario WHERE CodiUsua = {this.sqlString(this.usuario)} AND BajaFeho IS NULL;");
  }

  internal List<EnteReca> ObtenerEnteRecas()
  {
    List<EnteReca> enteRecaList = new List<EnteReca>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM infogov.entereca WHERE CodiEnre > 0 AND NumeAcpa > 0 AND CodiEnre NOT IN (SELECT DISTINCT CodiEnre FROM infogov.usuario WHERE CodiEnre != (SELECT CodiEnre FROM infogov.usuario WHERE CodiUsua = {this.sqlString(this.usuario)} LIMIT 1)) ORDER BY CodiEnre;");
    try
    {
      if (!nfoGovReader.HasRows)
        throw new Exception("No hay ENTES RECAUDADORES disponibles para usar. Verificar..");
      while (nfoGovReader.Read())
        enteRecaList.Add(new EnteReca()
        {
          CodiEnre = nfoGovReader.readInt("CodiEnre"),
          DetaEnre = nfoGovReader.readString("DetaEnre"),
          NumeAcpa = nfoGovReader.readInt("NumeAcpa")
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
    return enteRecaList;
  }

  public List<FormaPago> getFormasPago()
  {
    List<FormaPago> formasPago = new List<FormaPago>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT tp.CodiTipa, tp.DetaTipa, tp.TipoTipa, tp.CodiCuco");
    stringBuilder.AppendLine("FROM tipopago tp");
    stringBuilder.AppendLine("WHERE tp.BajaFeho IS NULL;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        formasPago.Add(new FormaPago()
        {
          CodiTipa = nfoGovReader.readInt("CodiTipa"),
          DetaTipa = nfoGovReader.readString("DetaTipa"),
          TipoTipa = nfoGovReader.readInt("TipoTipa"),
          CodiCuco = nfoGovReader.readString("CodiCuco")
        });
    }
    nfoGovReader.Close();
    return formasPago;
  }

  public BoletoCaja getBoletoCaja(int PeriBole, int NumeBole)
  {
    BoletoCaja boletoCaja = new BoletoCaja();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT boleto.*, infogov.persona.DetaPers FROM boleto LEFT JOIN infogov.persona ON boleto.CucuPers = infogov.persona.CucuPers WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole}");
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
        boletoCaja.CodiFapa = nfoGovReader.readInt("CodiFapa");
        boletoCaja.CuotDefa = nfoGovReader.readInt("CuotDefa");
        boletoCaja.TipoBole = nfoGovReader.readString("TipoBole");
        boletoCaja.EstaBole = nfoGovReader.readString("EstaBole");
        boletoCaja.CapiBole = nfoGovReader.readDecimal("CapiBole");
        boletoCaja.DecaBole = nfoGovReader.readDecimal("DecaBole");
        boletoCaja.RecaBole = nfoGovReader.readDecimal("RecaBole");
        boletoCaja.DereBole = nfoGovReader.readDecimal("DereBole");
        boletoCaja.InteBole = nfoGovReader.readDecimal("InteBole");
        boletoCaja.ExenBole = nfoGovReader.readDecimal("ExenBole");
        boletoCaja.ApreBole = nfoGovReader.readDecimal("ApreBole");
        boletoCaja.TotaBole = nfoGovReader.readDecimal("TotaBole");
        boletoCaja.CodiUsua = nfoGovReader.readString("CodiUsua");
        boletoCaja.CrafBole = nfoGovReader.readDecimal("CrafBole");
        boletoCaja.DetaPers = nfoGovReader.readString("DetaPers");
      }
    }
    nfoGovReader.Close();
    return boletoCaja;
  }

  public void verificarBoleto(int peribole, int numebole)
  {
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM boleto WHERE PeriBole = {peribole} AND NumeBole = {numebole} ORDER BY PeriBole, NumeBole");
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

  public void verificarPago(int peribole, int numebole)
  {
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM pago WHERE PeriBole = {peribole} AND NumeBole = {numebole} ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole");
    if (nfoGovReader.HasRows)
      throw new Exception("El boleto se encuenta ingresado y pagado, verifique...");
    nfoGovReader.Close();
  }

  public void grupoActualizado(DateTime fecha)
  {
    string str = this.conn.executeString($"SELECT ActuAcpa FROM acrepago WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {this.uo.NumeAcpa} LIMIT 1;");
    if (!string.IsNullOrEmpty(str) && str.Length > 0 && str == "Si")
      throw new Exception($"No se puede ingresar el boleto para el dia: {fecha.ToShortDateString()} numero de grupo: {this.uo.NumeAcpa}. El grupo ya fue actualizado");
  }

  public void pagado(int peribole, int numebole)
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
      throw new Exception($"El boleto contiene movimientos que fueron pagados con el boleto {str}. No se agrego el boleto.");
  }

  private int cantAcrePago(DateTime fecha)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM acrepago WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {this.uo.NumeAcpa};");
  }

  private List<DetalleBoleto> getDetalleBoleto(BoletoCaja bole)
  {
    List<DetalleBoleto> detalleBoleto = new List<DetalleBoleto>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT detabole.*, concepto.TipaConc FROM detabole ");
    stringBuilder.AppendLine($" INNER JOIN concepto ON concepto.PeriInfo = {bole.PeriBole}");
    stringBuilder.AppendLine(" AND concepto.CodiConc = detabole.CodiConc");
    stringBuilder.AppendLine($" WHERE PeriBole = {bole.PeriBole}");
    stringBuilder.AppendLine($" AND NumeBole = {bole.NumeBole}");
    stringBuilder.AppendLine(" ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    try
    {
      if (!nfoGovReader.HasRows)
        throw new Exception("No existe el detalle del boleto. NO SE CREO EL PAGO. verifique...");
      while (nfoGovReader.Read())
        detalleBoleto.Add(new DetalleBoleto()
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
    catch (Exception ex)
    {
      throw new Exception(ex.Message);
    }
    finally
    {
      nfoGovReader.Close();
    }
    return detalleBoleto;
  }

  private void validarCuentaContable(DetalleBoleto dtb)
  {
    if (string.IsNullOrEmpty(this.conn.executeString($"SELECT concepto.IngrConc FROM recaudacion.concepto WHERE PeriInfo = {dtb.PeriBole} AND CodiConc = {this.sqlString(dtb.CodiConc)} LIMIT 1;")))
      throw new Exception($"El concepto: {dtb.CodiConc} No tiene asociado ninguna cuenta contable de ingresos. No se ingresa el boleto.");
    if (string.IsNullOrEmpty(dtb.CuenCtct))
      return;
    if (dtb.CodiTimo == 0)
      throw new Exception($"El concepto: {dtb.CodiConc} No tiene asociado ningún tipo de movimiento de aforo. No se ingresa el boleto.");
    if (dtb.TipaConc == 0)
      throw new Exception($"El concepto: {dtb.CodiConc} No tiene asociado ningún tipo de movimiento de pago. No se ingresa el boleto.");
  }

  private List<ComposicionDetalle> getComposicion(DetalleBoleto dtb)
  {
    List<ComposicionDetalle> composicion = new List<ComposicionDetalle>();
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
        composicion.Add(new ComposicionDetalle()
        {
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          PeriCtct = nfoGovReader.readInt("PeriCtct"),
          BimeCtct = nfoGovReader.readInt("BimeCtct"),
          NumeCtct = nfoGovReader.readInt("NumeCtct"),
          MoviCtct = nfoGovReader.readInt("MoviCtct"),
          MoviDebo = nfoGovReader.readInt("MoviDebo"),
          PeriOrde = nfoGovReader.readInt("PeriOrde"),
          CodiCtdeRV = nfoGovReader.readLong("CodiCtde"),
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
    return composicion;
  }

  public void ingresarPago(DateTime fecha, List<BoletoCaja> boletos, List<FormaPago> formasPago)
  {
    this.expImpTicket.ImpresionTicket();
    this.grupoActualizado(fecha);
    StringBuilder stringBuilder = new StringBuilder();
    if (this.cantAcrePago(fecha) == 0)
      stringBuilder.AppendLine($" INSERT INTO acrepago (FeenAcpa,NumeAcpa,ActuAcpa,CodiEnre,FealAcpa,FepaAcpa,TocoAcpa,ImpoAcpa,ObseAcpa,CodiUsua) VALUES ({this.sqlDate(fecha, false)},{this.uo.NumeAcpa} ,'No',{this.uo.CodiEnre},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(fecha, false)},{boletos.Count},{this.sqlDecimal(boletos.Sum<BoletoCaja>((Func<BoletoCaja, Decimal>) (x => x.TotaBole)))},'',{this.sqlString(this.usuario)});");
    else
      stringBuilder.AppendLine($"UPDATE acrepago SET TocoAcpa = TocoAcpa + {boletos.Count}, ImpoAcpa = ImpoAcpa + {this.sqlDecimal(boletos.Sum<BoletoCaja>((Func<BoletoCaja, Decimal>) (x => x.TotaBole)))} WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {this.uo.NumeAcpa};");
    int num = this.conn.executeInt($"SELECT IF(MAX(fp.NumeFopa) > 0, MAX(fp.NumeFopa) + 1, 1) FROM formpago fp WHERE fp.PeriFopa = {PARAMS.Periodo};");
    foreach (FormaPago formaPago in formasPago)
      stringBuilder.AppendLine($"INSERT INTO formpago (PeriFopa,NumeFopa,MoviFopa, CodiTipa,NuchFopa,ImpoFopa) VALUES ({PARAMS.Periodo},{num},{formasPago.IndexOf(formaPago) + 1}, {formaPago.CodiTipa},{formaPago.NuchFopa},{this.sqlDecimal(formaPago.ImpoFopa)});");
    foreach (BoletoCaja boleto in boletos)
    {
      this.verificarBoleto(boleto.PeriBole, boleto.NumeBole);
      this.verificarPago(boleto.PeriBole, boleto.NumeBole);
      this.pagado(boleto.PeriBole, boleto.NumeBole);
      stringBuilder.AppendLine($"INSERT INTO pagoinfo3 (PeriBole,NumeBole) VALUES({boleto.PeriBole}, {boleto.NumeBole});");
      stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriFopa,NumeFopa,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua)");
      stringBuilder.AppendLine($" VALUES ({this.sqlDate(fecha, false)},{this.uo.NumeAcpa},{boleto.PeriBole},{boleto.NumeBole},{PARAMS.Periodo},{num},{boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.CucuPers},'No',{this.sqlString(boleto.TipoBole)},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(fecha, false)},{boleto.CodiFapa},{boleto.CuotDefa},{this.sqlDecimal(boleto.CapiBole)},{this.sqlDecimal(boleto.DecaBole)},{this.sqlDecimal(boleto.RecaBole)},{this.sqlDecimal(boleto.DereBole)},{this.sqlDecimal(boleto.InteBole)},{this.sqlDecimal(boleto.ExenBole)},{this.sqlDecimal(boleto.CrafBole)},{this.sqlDecimal(boleto.ApreBole)},{this.sqlDecimal(boleto.TotaBole)},{this.sqlString(this.usuario)});");
      if (fecha.Date > boleto.FeveBole.Date)
        stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.PeriBole},{boleto.NumeBole},'No',{this.sqlDate(DateTime.Now, false)},{this.sqlDate(boleto.FeveBole, false)},{this.sqlDecimal(boleto.TotaBole)});");
      if (this.conn.executeBool($" SELECT IF(NumeApre IS NOT NULL, TRUE, FALSE) FROM boleapre WHERE PeriBole = {boleto.PeriBole} AND NumeBole = {boleto.NumeBole} AND EstaBoap IN ('Generado','Emitido') LIMIT 1;"))
        stringBuilder.AppendLine($" UPDATE boleapre SET EstaBoap = 'Pagado', FeenAcpa = {this.sqlDate(fecha, false)}, FeacBoap = NULL WHERE PeriBole = {boleto.PeriBole} AND NumeBole = {boleto.NumeBole} AND EstaBoap IN ('Generado','Emitido');");
      stringBuilder.AppendLine($"UPDATE boleto SET EstaBole = 'Pagado' WHERE PeriBole = {boleto.PeriBole} AND NumeBole = {boleto.NumeBole};");
      foreach (DetalleBoleto dtb in this.getDetalleBoleto(boleto))
      {
        this.validarCuentaContable(dtb);
        stringBuilder.AppendLine("INSERT INTO detapago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,CodiTili,NumeLiqu,ActuDepa,CodiOfic,CuenCtct,TipoCtct,CodiFapa,CuotDefa,NumeApre,CodiTimo,PeriInfo,CodiConc,CapiDepa,DecaDepa,RecaDepa,DereDepa,InteDepa,ExenDepa,CrafDepa,ApreDepa,TotaDepa) ");
        stringBuilder.AppendLine($" VALUES ({this.sqlDate(fecha, false)},{this.uo.NumeAcpa},{dtb.PeriBole},{dtb.NumeBole},{dtb.PeriCtct},{dtb.BimeCtct},{dtb.NumeCtct},");
        stringBuilder.AppendLine($"{dtb.MoviCtct},{dtb.MoviDebo},{dtb.CodiTili},{dtb.NumeLiqu},'No',{dtb.CodiOfic},{this.sqlString(dtb.CuenCtct)},{this.sqlString(dtb.TipoCtct)},{dtb.CodiFapa},{dtb.CuotDefa},{dtb.NumeApre},{dtb.TipaConc},{dtb.PeriInfo},{this.sqlString(dtb.CodiConc)},{this.sqlDecimal(dtb.CapiDebo)},{this.sqlDecimal(dtb.DecaDebo)},{this.sqlDecimal(dtb.RecaDebo)},{this.sqlDecimal(dtb.DereDebo)},{this.sqlDecimal(dtb.InteDebo)},{this.sqlDecimal(dtb.ExenDebo)},{this.sqlDecimal(dtb.CrafDebo)},{this.sqlDecimal(dtb.ApreDebo)},{this.sqlDecimal(dtb.TotaDebo)});");
        if (boleto.TipoBole == "Pago Anticipado")
          stringBuilder.AppendLine($" UPDATE pagoanti SET EstaPaan = 'Pagado' WHERE CodiOfic = {dtb.CodiOfic} AND CuenCtct = {this.sqlString(dtb.CuenCtct)} AND PeriBole = {dtb.PeriBole} AND NumeBole = {dtb.NumeBole} AND PeriLiqu = {dtb.PeriCtct} AND BimeLiqu = {dtb.BimeCtct};");
        foreach (ComposicionDetalle composicionDetalle in this.getComposicion(dtb))
        {
          stringBuilder.AppendLine($" INSERT INTO pagodeta (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,PeriOrde,CodiCtde,NumeCtde,MoviCtde,CodiOfic,CuenCtct,ImpoPade,Decapade,TotaPade) VALUES ({this.sqlDate(fecha, false)},{this.uo.NumeAcpa},{composicionDetalle.PeriBole},{composicionDetalle.NumeBole},{composicionDetalle.PeriCtct},{composicionDetalle.BimeCtct},{composicionDetalle.NumeCtct},");
          stringBuilder.AppendLine($" {composicionDetalle.MoviCtct},{composicionDetalle.MoviDebo},{composicionDetalle.PeriOrde},{composicionDetalle.CodiCtdeRV},{composicionDetalle.NumeCtde},{composicionDetalle.MoviCtde},{composicionDetalle.CodiOfic},{this.sqlString(composicionDetalle.CuenCtct)},{this.sqlDecimal(composicionDetalle.ImpoBode)},{this.sqlDecimal(composicionDetalle.DecaBode)},{this.sqlDecimal(composicionDetalle.TotaBode)});");
        }
      }
    }
    if (!this.conn.executeNonQuery(stringBuilder.ToString()))
      throw new Exception("No se pudo ingresar el pago");
    this.expImpTicket.FeenAcpa = fecha;
    if (!this.tickeadoraActiva)
      return;
    foreach (BoletoCaja boleto in boletos)
      this.expImpTicket.ImprimirTicket(boleto);
  }

  public int BuscarCodiInte() => this.conn.executeInt("SELECT CodiInte FROM paragene;");

  public string BuscarCodiConcInte(int CodiInte)
  {
    return this.conn.executeString($"SELECT CodiConc FROM servdeva WHERE PeriOrde = YEAR(NOW()) AND CodiSede = {CodiInte};");
  }

  public string ComprobarCodiDeva(string CodiDeva)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM deudvari WHERE CodiDeva = {this.sqlString(CodiDeva)};") == 0 ? "La cuenta no existe. Verificar..." : string.Empty;
  }

  public string ComprobarCucuPers(long CucuPers)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM infogov.persona WHERE CucuPers = {CucuPers};") == 0 ? "La persona no existe. Verificar..." : string.Empty;
  }

  public long BuscarCPDV(string CodiDeva)
  {
    return this.conn.executeLong($"SELECT CucuPers FROM deudvari WHERE CodiDeva = {this.sqlString(CodiDeva)};");
  }

  public string PagadoInternetRivadavia(
    long CucuPers,
    string CuenCtct,
    int PeriCtct,
    int DesdeBime,
    int HastaBime,
    int CodiSede)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT IFNULL(CONCAT(pago.PeriBole,'-',pago.NumeBole),'') FROM detapago");
    stringBuilder.AppendLine("INNER JOIN pago ON pago.FeenAcpa = detapago.FeenAcpa");
    stringBuilder.AppendLine("AND pago.NumeAcpa = detapago.NumeAcpa");
    stringBuilder.AppendLine("AND pago.PeriBole = detapago.PeriBole");
    stringBuilder.AppendLine("AND pago.NumeBole = detapago.NumeBole");
    stringBuilder.AppendLine("INNER JOIN devadeta ON devadeta.PeriBole = detapago.PeriBole");
    stringBuilder.AppendLine("AND devadeta.NumeBole = detapago.NumeBole");
    stringBuilder.AppendLine("AND devadeta.PeriCtct = detapago.PeriCtct");
    stringBuilder.AppendLine("AND devadeta.BimeCtct = detapago.BimeCtct");
    stringBuilder.AppendLine("AND devadeta.NumeCtct = detapago.NumeCtct");
    stringBuilder.AppendLine("AND devadeta.MoviCtct = detapago.MoviCtct");
    stringBuilder.AppendLine("WHERE detapago.CodiOfic = 3");
    stringBuilder.AppendLine("AND pago.CuenCtct = " + this.sqlString(CuenCtct));
    stringBuilder.AppendLine("AND detapago.CodiConc = '91012600'");
    stringBuilder.AppendLine($"AND pago.CucuPers = {CucuPers}");
    stringBuilder.AppendLine($"AND detapago.PeriCtct = {PeriCtct}");
    stringBuilder.AppendLine($"AND detapago.BimeCtct >= {DesdeBime}");
    stringBuilder.AppendLine($"AND detapago.BimeCtct <= {HastaBime}");
    stringBuilder.AppendLine($"AND devadeta.PeriOrde = {PeriCtct}");
    stringBuilder.AppendLine($"AND devadeta.CodiSede = {CodiSede};");
    string str = this.conn.executeString(stringBuilder.ToString());
    return !string.IsNullOrEmpty(str) ? "El boleto de internet ya se encuentra pagado con el boleto número: " + str : string.Empty;
  }

  public int NuevoNumeBole(int Periodo) => this.conn.executeInt($"SELECT fnNumeBole ({Periodo});");

  public string CrearNuevoBoleto(
    int PeriBole,
    int NumeBole,
    long CucuPers,
    string FeveBole,
    string DetaBoleInternet,
    int PeriDetaBole,
    string CodiConc,
    int CodiInte,
    string CodiBarra,
    bool Tipo2 = false,
    int CodiCort = 0)
  {
    StringBuilder stringBuilder = new StringBuilder();
    string str1 = string.Empty;
    try
    {
      string str2 = Tipo2 ? "''" : CodiBarra.Substring(4, 8);
      string str3 = Tipo2 ? $"'{CodiCort}'" : "''";
      Decimal num1 = Decimal.Parse($"{CodiBarra.Substring(26, 6)},{CodiBarra.Substring(32 /*0x20*/, 2)}");
      stringBuilder.AppendLine("INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, ExpeBole, ObseBole, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, CodiUsua)");
      stringBuilder.AppendLine($"VALUES ({PeriBole}, {NumeBole}, 3, {this.sqlString(str2)}, {CucuPers}, DATE(NOW()), '{FeveBole}', {this.uo.CodiEnre}, 'Ventanilla', 'Emitido', 0, 0, {str3}, {this.sqlString(DetaBoleInternet)}, {this.sqlDecimal(num1)}, 0, 0, 0, 0, 0, 0, {this.sqlDecimal(num1)}, {this.sqlString(this.usuario)});");
      Decimal num2;
      if (Tipo2)
        num2 = num1;
      else if (int.Parse(CodiBarra.Substring(20, 2)) >= 15)
      {
        Decimal num3 = (Decimal) (int.Parse(CodiBarra.Substring(24, 2)) - int.Parse(CodiBarra.Substring(22, 2)) + 1);
        num2 = num1 / num3;
      }
      else
      {
        if (!(CodiBarra.Substring(20, 2) == "00"))
          return "Detalle incorrecto para crearse.";
        num2 = num1;
      }
      if (Tipo2)
      {
        int num4 = 1;
        stringBuilder.AppendLine("INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo)");
        stringBuilder.AppendLine($"VALUES ({PeriBole}, {NumeBole}, {PeriDetaBole}, {int.Parse(CodiBarra.Substring(18, 2))}, {num4}, 1, 1, 3, '', 'Aforos Varios', 0, 0, 0, 0, {PeriBole}, {this.sqlString(CodiConc)}, {this.sqlDecimal(num2)}, 0, 0, 0, 0, 0, 0, {this.sqlDecimal(num2)});");
        stringBuilder.AppendLine("INSERT INTO devadeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiSede, CantDede, PrunDede, SubtDede, DescDede, TotaDede)");
        stringBuilder.AppendLine($"VALUES ({PeriBole}, {NumeBole}, {PeriDetaBole}, {int.Parse(CodiBarra.Substring(18, 2))}, {num4}, 1, YEAR(NOW()), {CodiInte}, 1, {this.sqlDecimal(num2)}, {this.sqlDecimal(num2)}, 0, {this.sqlDecimal(num2)});");
      }
      else if (int.Parse(CodiBarra.Substring(20, 2)) >= 15)
      {
        int num5 = 0;
        for (int index = int.Parse(CodiBarra.Substring(22, 2)); index <= int.Parse(CodiBarra.Substring(24, 2)); ++index)
        {
          ++num5;
          stringBuilder.AppendLine("INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo)");
          stringBuilder.AppendLine($"VALUES ({PeriBole}, {NumeBole}, {PeriDetaBole}, {index}, {num5}, 1, 1, 3, '', 'Aforos Varios', 0, 0, 0, 0, {PeriBole}, {this.sqlString(CodiConc)}, {this.sqlDecimal(num2)}, 0, 0, 0, 0, 0, 0, {this.sqlDecimal(num2)});");
          stringBuilder.AppendLine("INSERT INTO devadeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiSede, CantDede, PrunDede, SubtDede, DescDede, TotaDede)");
          stringBuilder.AppendLine($"VALUES ({PeriBole}, {NumeBole}, {PeriDetaBole}, {index}, {num5}, 1, YEAR(NOW()), {CodiInte}, 1, {this.sqlDecimal(num2)}, {this.sqlDecimal(num2)}, 0, {this.sqlDecimal(num2)});");
        }
      }
      else
      {
        if (!(CodiBarra.Substring(20, 2) == "00"))
          return "Crea Detalle Incorrecto.";
        int num6 = 1;
        stringBuilder.AppendLine("INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, ApreDebo, TotaDebo)");
        stringBuilder.AppendLine($"VALUES ({PeriBole}, {NumeBole}, {PeriDetaBole}, MONTH(NOW()), {num6}, 1, 1, 3, '', 'Aforos Varios', 0, 0, 0, 0, {PeriBole}, {this.sqlString(CodiConc)}, {this.sqlDecimal(num2)}, 0, 0, 0, 0, 0, 0, {this.sqlDecimal(num2)});");
        stringBuilder.AppendLine("INSERT INTO devadeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiSede, CantDede, PrunDede, SubtDede, DescDede, TotaDede)");
        stringBuilder.AppendLine($"VALUES ({PeriBole}, {NumeBole}, {PeriDetaBole}, MONTH(NOW()), {num6}, 1, YEAR(NOW()), {int.Parse(CodiBarra.Substring(22, 4))}, 1, {this.sqlDecimal(num2)}, {this.sqlDecimal(num2)}, 0, {this.sqlDecimal(num2)});");
      }
      if (!this.conn.executeNonQuery(stringBuilder.ToString()))
        str1 = "Error al crear boleto.";
    }
    catch (Exception ex)
    {
      str1 = ex.Message;
    }
    return str1;
  }

  public string BuscarCodiBoleCone(string codicort)
  {
    return this.conn.executeString($"SELECT codilarg FROM bolecone WHERE codicort = {this.sqlString(codicort)};");
  }

  public string ComprobarCodiSede(int CodiInte)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM servdeva WHERE PeriOrde = YEAR(NOW()) AND CodiSede = {CodiInte};") == 0 ? "El código del servicio de derechos varios no existe." : string.Empty;
  }

  public string BoletoPagadoCodigoCortoRivadavia(int CodiCort)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM boleto INNER JOIN pago ON pago.PeriBole = boleto.PeriBole AND pago.NumeBole = boleto.NumeBole WHERE boleto.CodiOfic = 3 AND boleto.CuenCtct = '' AND boleto.ExpeBole = '{CodiCort}';") > 0 ? "El boleto YA SE ENCUENTRA PAGADO." : string.Empty;
  }

  public string BuscarDetaSede(int CodiInte)
  {
    return this.conn.executeString($"SELECT DetaSede FROM servdeva WHERE PeriOrde = YEAR(NOW()) AND CodiSede = {CodiInte};", "SIN DETASEDE");
  }
}
