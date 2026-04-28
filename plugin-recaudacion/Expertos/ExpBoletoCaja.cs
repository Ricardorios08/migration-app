// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpBoletoCaja
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

internal class ExpBoletoCaja : Expert
{
  private UsuarioOperador uo;
  private string tickeadoraActiva;
  private ExpImpresionTicket expImpTicket;

  public ExpBoletoCaja()
    : base(Modulo.Database)
  {
    this.uo = this.getUserOperador();
    this.tickeadoraActiva = PARAMS.Parameters.GetString("TickeadoraActiva");
    this.expImpTicket = new ExpImpresionTicket();
  }

  private UsuarioOperador getUserOperador()
  {
    UsuarioOperador userOperador = new UsuarioOperador();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT u.CodiUsua,er.* FROM infogov.usuario u INNER JOIN infogov.entereca er ON er.CodiEnre = u.CodiEnre WHERE u.CodiUsua = {this.sqlString(this.usuario)} AND u.CodiEnre > 0 LIMIT 1;");
    try
    {
      if (!nfoGovReader.HasRows)
        throw new Exception("El usuario no tiene ningún ente recaudador asociado.");
      if (nfoGovReader.Read())
      {
        userOperador.CodiUsua = nfoGovReader.readString("CodiUsua");
        userOperador.CodiEnre = nfoGovReader.readInt("CodiEnre");
        userOperador.DetaEnre = nfoGovReader.readString("DetaEnre");
        userOperador.NumeAcpa = nfoGovReader.readInt("NumeAcpa");
      }
      if (userOperador.NumeAcpa == 0)
        throw new Exception("El ente recaudador no tiene asociado ningún numero de grupo.");
    }
    catch (Exception ex)
    {
      throw new Exception(ex.Message);
    }
    finally
    {
      nfoGovReader.Close();
    }
    return userOperador;
  }

  public string getEntidadRecaudadora() => this.uo != null ? this.uo.DetaEnre : string.Empty;

  public List<FormaPago> getFormasPago()
  {
    List<FormaPago> formasPago = new List<FormaPago>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT tp.CodiTipa, tp.DetaTipa, tp.TipoTipa, tp.CodiCuco");
    stringBuilder.AppendLine("FROM tipopago tp");
    stringBuilder.AppendLine("WHERE tp.BajaFeho is null;");
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
        if (PARAMS.Municipio == "Alvear")
          boletoCaja.AdicBole = nfoGovReader.readDecimal("AdicBole");
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
    return this.conn.executeInt($"SELECT count(*) FROM acrepago WHERE FeenAcpa = {this.sqlDate(fecha, false)} AND NumeAcpa = {this.uo.NumeAcpa};");
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
      stringBuilder.AppendLine($"INSERT INTO pagoinfo3(PeriBole,NumeBole) VALUES({boleto.PeriBole}, {boleto.NumeBole});");
      switch (PARAMS.Municipio)
      {
        case "Alvear":
          stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriFopa,NumeFopa,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,AdicPago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua)");
          stringBuilder.AppendLine($" VALUES ({this.sqlDate(fecha, false)},{this.uo.NumeAcpa},{boleto.PeriBole},{boleto.NumeBole},{PARAMS.Periodo},{num},{boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.CucuPers},'No',{this.sqlString(boleto.TipoBole)},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(fecha, false)},{boleto.CodiFapa},{boleto.CuotDefa},{this.sqlDecimal(boleto.CapiBole)},{this.sqlDecimal(boleto.DecaBole)},{this.sqlDecimal(boleto.RecaBole)},{this.sqlDecimal(boleto.DereBole)},{this.sqlDecimal(boleto.AdicBole)},{this.sqlDecimal(boleto.InteBole)},{this.sqlDecimal(boleto.ExenBole)},{this.sqlDecimal(boleto.CrafBole)},{this.sqlDecimal(boleto.ApreBole)},{this.sqlDecimal(boleto.TotaBole)},{this.sqlString(this.usuario)});");
          if (fecha.Date > boleto.FeveBole.Date)
          {
            stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.PeriBole},{boleto.NumeBole},'No',{this.sqlDate(DateTime.Now, false)},{this.sqlDate(boleto.FeveBole, false)},{this.sqlDecimal(boleto.TotaBole)});");
            break;
          }
          break;
        case "Lavalle":
          stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriFopa,NumeFopa,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua)");
          stringBuilder.AppendLine($" VALUES ({this.sqlDate(fecha, false)},{this.uo.NumeAcpa},{boleto.PeriBole},{boleto.NumeBole},{PARAMS.Periodo},{num},{boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.CucuPers},'No',{this.sqlString(boleto.TipoBole)},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(fecha, false)},{boleto.CodiFapa},{boleto.CuotDefa},{this.sqlDecimal(boleto.CapiBole)},{this.sqlDecimal(boleto.DecaBole)},{this.sqlDecimal(boleto.RecaBole)},{this.sqlDecimal(boleto.DereBole)},{this.sqlDecimal(boleto.InteBole)},{this.sqlDecimal(boleto.ExenBole)},{this.sqlDecimal(boleto.CrafBole)},{this.sqlDecimal(boleto.ApreBole)},{this.sqlDecimal(boleto.TotaBole)},{this.sqlString(this.usuario)});");
          if (fecha.Month > boleto.FeveBole.Month)
          {
            stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.PeriBole},{boleto.NumeBole},'No',{this.sqlDate(DateTime.Now, false)},{this.sqlDate(boleto.FeveBole, false)},{this.sqlDecimal(boleto.TotaBole)});");
            break;
          }
          break;
        case "LaPaz":
        case "SanCarlos":
          stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriFopa,NumeFopa,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua)");
          stringBuilder.AppendLine($" VALUES ({this.sqlDate(fecha, false)},{this.uo.NumeAcpa},{boleto.PeriBole},{boleto.NumeBole},{PARAMS.Periodo},{num},{boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.CucuPers},'No',{this.sqlString(boleto.TipoBole)},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(fecha, false)},{boleto.CodiFapa},{boleto.CuotDefa},{this.sqlDecimal(boleto.CapiBole)},{this.sqlDecimal(boleto.DecaBole)},{this.sqlDecimal(boleto.RecaBole)},{this.sqlDecimal(boleto.DereBole)},{this.sqlDecimal(boleto.InteBole)},{this.sqlDecimal(boleto.ExenBole)},{this.sqlDecimal(boleto.CrafBole)},{this.sqlDecimal(boleto.ApreBole)},{this.sqlDecimal(boleto.TotaBole)},{this.sqlString(this.usuario)});");
          if (fecha.Date > boleto.FeveBole.Date)
          {
            stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.PeriBole},{boleto.NumeBole},'No',{this.sqlDate(DateTime.Now, false)},{this.sqlDate(boleto.FeveBole, false)},{this.sqlDecimal(boleto.TotaBole)});");
            break;
          }
          break;
        case "SanMartín":
          stringBuilder.AppendLine("INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriFopa,NumeFopa,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,AltaUsua)");
          stringBuilder.AppendLine($" VALUES ({this.sqlDate(fecha, false)},{this.uo.NumeAcpa},{boleto.PeriBole},{boleto.NumeBole},{PARAMS.Periodo},{num},{boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.CucuPers},'No',{this.sqlString(boleto.TipoBole)},{this.sqlDate(DateTime.Now, false)},{this.sqlDate(fecha, false)},{boleto.CodiFapa},{boleto.CuotDefa},{this.sqlDecimal(boleto.CapiBole)},{this.sqlDecimal(boleto.DecaBole)},{this.sqlDecimal(boleto.RecaBole)},{this.sqlDecimal(boleto.DereBole)},{this.sqlDecimal(boleto.InteBole)},{this.sqlDecimal(boleto.ExenBole)},{this.sqlDecimal(boleto.CrafBole)},{this.sqlDecimal(boleto.ApreBole)},{this.sqlDecimal(boleto.TotaBole)},{this.sqlString(this.usuario)});");
          if (fecha.Date > boleto.FeveBole.Date)
          {
            stringBuilder.AppendLine($"INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) VALUES ({boleto.CodiOfic},{this.sqlString(boleto.CuenCtct)},{boleto.PeriBole},{boleto.NumeBole},'No',{this.sqlDate(DateTime.Now, false)},{this.sqlDate(boleto.FeveBole, false)},{this.sqlDecimal(boleto.TotaBole)});");
            break;
          }
          break;
        default:
          throw new Exception("Error en switch insert Pago seleccion municipio");
      }
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
          stringBuilder.AppendLine($" {composicionDetalle.MoviCtct},{composicionDetalle.MoviDebo},{composicionDetalle.PeriOrde},{composicionDetalle.CodiCtde},{composicionDetalle.NumeCtde},{composicionDetalle.MoviCtde},{composicionDetalle.CodiOfic},{this.sqlString(composicionDetalle.CuenCtct)},{this.sqlDecimal(composicionDetalle.ImpoBode)},{this.sqlDecimal(composicionDetalle.DecaBode)},{this.sqlDecimal(composicionDetalle.TotaBode)});");
        }
      }
    }
    if (!this.conn.executeNonQuery(stringBuilder.ToString()))
      throw new Exception("No se pudo ingresar el pago");
    this.expImpTicket.FeenAcpa = fecha;
    if (!(this.tickeadoraActiva == "True"))
      return;
    foreach (BoletoCaja boleto in boletos)
      this.expImpTicket.ImprimirTicket(boleto);
  }
}
