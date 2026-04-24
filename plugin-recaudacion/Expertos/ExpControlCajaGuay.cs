// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpControlCajaGuay
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

public class ExpControlCajaGuay : Expert
{
  private UsuarioOperador uo;

  public ExpControlCajaGuay()
    : base(Modulo.Database)
  {
    this.uo = this.ObtenerUsuarioOperador();
  }

  private UsuarioOperador ObtenerUsuarioOperador()
  {
    UsuarioOperador usuarioOperador = new UsuarioOperador();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT u.CodiUsua,er.* FROM infogov.usuario u INNER JOIN infogov.entereca er ON er.CodiEnre = u.CodiEnre WHERE u.CodiUsua = {this.sqlString(this.usuario)} AND u.CodiEnre > 0 LIMIT 1;");
    try
    {
      if (!nfoGovReader.HasRows)
        throw new Exception("El usuario no tiene ente recaudador asociado.");
      if (nfoGovReader.Read())
      {
        usuarioOperador.CodiUsua = nfoGovReader.readString("CodiUsua");
        usuarioOperador.CodiEnre = nfoGovReader.readInt("CodiEnre");
        usuarioOperador.DetaEnre = nfoGovReader.readString("DetaEnre");
        usuarioOperador.NumeAcpa = nfoGovReader.readInt("NumeAcpa");
      }
      if (usuarioOperador.NumeAcpa == 0)
        throw new Exception("El ente recaudador no tiene asociado ningún número de grupo.");
    }
    catch (Exception ex)
    {
      throw new Exception(ex.Message);
    }
    finally
    {
      nfoGovReader.Close();
    }
    return usuarioOperador;
  }

  public string ObtenerEntidadRecaudadora() => this.uo != null ? this.uo.DetaEnre : string.Empty;

  public string ObtenerGrupo() => this.uo != null ? this.uo.NumeAcpa.ToString() : string.Empty;

  public List<DateTime> ObtenerFechasEnvio()
  {
    List<DateTime> dateTimeList = new List<DateTime>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT DISTINCT FeenAcpa");
    stringBuilder.AppendLine("FROM acrepago");
    stringBuilder.AppendLine($"WHERE CodiEnre={this.uo.CodiEnre} AND NumeAcpa={this.uo.NumeAcpa} AND ActuAcpa = 'No' AND ContAcpa = 0 AND TocoAcpa > 0 AND BajaFeho IS NULL");
    stringBuilder.AppendLine("ORDER BY FeenAcpa DESC;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        dateTimeList.Add(nfoGovReader.readDateTime("FeenAcpa"));
    }
    nfoGovReader?.Close();
    return dateTimeList;
  }

  public List<ControlCajaGuay> ObtenerPagosRealizados(DateTime FeenAcpa)
  {
    List<ControlCajaGuay> controlCajaGuayList = new List<ControlCajaGuay>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT ap.FeenAcpa, ap.NumeAcpa, p.PeriBole, p.NumeBole, GROUP_CONCAT(IFNULL(tp.DetaTipa,'')) DetaFopa, GROUP_CONCAT(fp.NuchFopa) NuchFopa, o.DetaOfic, p.CuenCtct, IF(p.CodiFapa > 0, CONCAT(p.CodiFapa,'/',p.CuotDefa), '---') FaciPago, p.TotaPago, p.CodiUsua, p.ObsePago, p.ContPago, p.PeriFopa, p.NumeFopa");
    stringBuilder.AppendLine("FROM pago p");
    stringBuilder.AppendLine("INNER JOIN acrepago ap ON ap.FeenAcpa = p.FeenAcpa AND ap.NumeAcpa = p.NumeAcpa");
    stringBuilder.AppendLine("LEFT JOIN formpago fp ON fp.PeriFopa = p.PeriFopa AND fp.NumeFopa = p.NumeFopa");
    stringBuilder.AppendLine("LEFT JOIN tipopago tp ON tp.CodiTipa = fp.CodiTipa");
    stringBuilder.AppendLine("INNER JOIN oficina o ON o.CodiOfic = p.CodiOfic");
    stringBuilder.AppendLine($"WHERE ap.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND ap.NumeAcpa = {this.uo.NumeAcpa} AND ap.CodiEnre = {this.uo.CodiEnre} AND ap.ContAcpa = 0");
    stringBuilder.AppendLine("GROUP BY p.PeriBole, p.NumeBole");
    stringBuilder.AppendLine("ORDER BY p.FealPago;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        controlCajaGuayList.Add(new ControlCajaGuay()
        {
          FeenAcpa = nfoGovReader.readDateTime(nameof (FeenAcpa)),
          NumeAcpa = nfoGovReader.readInt("NumeAcpa"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          PeriFopa = nfoGovReader.readInt("PeriFopa"),
          NumeFopa = nfoGovReader.readInt("NumeFopa"),
          DetaFopa = nfoGovReader.readString("DetaFopa"),
          NuchFopa = nfoGovReader.readString("NuchFopa"),
          DetaOfic = nfoGovReader.readString("DetaOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          FaciPago = nfoGovReader.readString("FaciPago"),
          TotaPago = nfoGovReader.readDecimal("TotaPago"),
          CodiUsua = nfoGovReader.readString("CodiUsua"),
          ObsePago = nfoGovReader.readString("ObsePago"),
          ContPago = nfoGovReader.readBool("ContPago")
        });
    }
    nfoGovReader?.Close();
    return controlCajaGuayList;
  }

  public bool CajaCreada(DateTime FeenAcpa, int NumeAcpa)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM acrepago WHERE FeenAcpa={this.sqlDate(FeenAcpa, false)} AND NumeAcpa={NumeAcpa};") > 0;
  }

  public bool CajaControlada(DateTime FeenAcpa, int NumeAcpa)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM acrepago WHERE FeenAcpa={this.sqlDate(FeenAcpa, false)} AND NumeAcpa={NumeAcpa} AND ContAcpa=1;") > 0;
  }

  public int CantPagos(DateTime FeenAcpa, int NumeAcpa)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE FeenAcpa={this.sqlDate(FeenAcpa, false)} AND NumeAcpa={NumeAcpa};");
  }

  public bool PagosControlados(DateTime FeenAcpa, int NumeAcpa)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE FeenAcpa={this.sqlDate(FeenAcpa, false)} AND NumeAcpa={NumeAcpa} AND ContPago=1;") > 0;
  }

  public string EliminarPago(
    DateTime FeenAcpa,
    int NumeAcpa,
    int PeriBole,
    int NumeBole,
    int PeriFopa,
    int NumeFopa,
    Decimal TotaPago,
    string ObsePago,
    string NuchFopa)
  {
    string str = string.Empty;
    if (!this.CajaCreada(FeenAcpa, NumeAcpa))
      return "La caja no esta disponible. Verificar...";
    if (this.CajaControlada(FeenAcpa, NumeAcpa))
      return "La caja se encuentra CONTROLADA.";
    int num1 = this.conn.executeInt($"SELECT COUNT(*) FROM formpago WHERE PeriFopa = {PeriFopa} AND NumeFopa = {NumeFopa};");
    int num2 = this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE PeriFopa = {PeriFopa} AND NumeFopa = {NumeFopa};");
    if (num1 != 1)
      return "La cantidad de formas de pago utilizadas es mayor a 1.";
    if (num2 != 1)
      return "La cantidad de pagos en conjunto es mayor a 1.";
    if (this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};") != 1)
      return "El pago ingresado no existe..";
    if (this.conn.executeInt($"SELECT COUNT(*) FROM pago WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole} AND ContPago=1;") > 0)
      return "El pago se encuentra controlado.";
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"UPDATE acrepago SET TocoAcpa = TocoAcpa - 1, ImpoAcpa = ImpoAcpa - {this.sqlDecimal(TotaPago)} WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa};");
    stringBuilder.AppendLine($"DELETE FROM pago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"DELETE FROM detapago WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"DELETE FROM pagodeta WHERE FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND NumeAcpa = {NumeAcpa} AND PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"DELETE FROM recabole WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"UPDATE boleto SET EstaBole = 'Anulado Caja', FeanBole = DATE(NOW()), MoanBole = {this.sqlString(ObsePago)}, AnulUsua = {this.sqlString(this.usuario)} WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"UPDATE pagoanti SET EstaPaan = 'Anulado Caja' WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    stringBuilder.AppendLine($"UPDATE boleapre SET EstaBoap = 'Anulado Caja' WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole} AND EstaBoap = 'Pagado';");
    stringBuilder.AppendLine($"DELETE FROM formpago WHERE PeriFopa = {PeriFopa} AND NumeFopa = {NumeFopa};");
    stringBuilder.AppendLine("INSERT INTO aud_recaudacion.pagoanulado (FeenAcpa, NumeAcpa, PeriBole, NumeBole, TotaPago, NuchFopa, ObsePago, AltaUsua)");
    stringBuilder.AppendLine($"VALUES ({this.sqlDate(FeenAcpa, false)}, {NumeAcpa}, {PeriBole}, {NumeBole}, {this.sqlDecimal(TotaPago)}, {this.sqlString(NuchFopa)}, {this.sqlString(ObsePago)}, {this.sqlString(this.usuario)});");
    try
    {
      if (!this.conn.executeNonQuery(stringBuilder.ToString()))
        str = "No se pudo eliminar el pago.";
    }
    catch (Exception ex)
    {
      str = ex.Message;
    }
    return str;
  }

  public string ActualizarControlCaja(DateTime FeenAcpa, List<ControlCajaGuay> pagos)
  {
    string str = string.Empty;
    try
    {
      if (pagos.Count <= 0)
        return "No hay pagos seleccionados...";
      if (!this.CajaCreada(FeenAcpa, this.uo.NumeAcpa))
        return "La caja no existe. Verifique...";
      if (this.CajaControlada(FeenAcpa, this.uo.NumeAcpa))
        return "La caja ya se encuentra controlada. Actualizar la pantalla.";
      if (this.CantPagos(FeenAcpa, this.uo.NumeAcpa) != pagos.Count)
        return "La cantidad de pagos seleccionados no coincide con la cantidad de pagos ingresados. Verificar..";
      if (this.PagosControlados(FeenAcpa, this.uo.NumeAcpa))
        return "Hay pagos controlados para la fecha indicada.";
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.AppendLine("UPDATE acrepago");
      stringBuilder.AppendLine("SET ContAcpa=1, FecoAcpa=NOW(), UscoAcpa=" + this.sqlString(this.usuario));
      stringBuilder.AppendLine($"WHERE FeenAcpa={this.sqlDate(FeenAcpa, false)} AND NumeAcpa={this.uo.NumeAcpa};");
      foreach (ControlCajaGuay pago in pagos)
      {
        stringBuilder.AppendLine("UPDATE pago");
        stringBuilder.AppendLine($"SET ObsePago={this.sqlString(pago.ObsePago)}, ContPago=1");
        stringBuilder.AppendLine($"WHERE FeenAcpa={this.sqlDate(FeenAcpa, false)} AND NumeAcpa={this.uo.NumeAcpa} AND PeriBole={pago.PeriBole} AND NumeBole={pago.NumeBole};");
      }
      if (!this.conn.executeNonQuery(stringBuilder.ToString()))
        str = "No se llevo a acabo la actualización.. Verificar..";
    }
    catch (Exception ex)
    {
      str = ex.Message;
    }
    return str;
  }
}
