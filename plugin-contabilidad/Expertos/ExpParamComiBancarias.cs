// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpParamComiBancarias
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpParamComiBancarias : Expert
{
  public ExpParamComiBancarias()
    : base(Modulo.Database)
  {
  }

  public List<ParamComiBancarias> formLoad()
  {
    List<ParamComiBancarias> paramComiBancariasList = new List<ParamComiBancarias>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT pc.*, DetaPart, DetaOrga");
    stringBuilder.AppendLine(", CASE MesPaco WHEN 1 THEN 'Enero' WHEN 2 THEN 'Febrero' WHEN 3 THEN 'Marzo' WHEN 4 THEN 'Abril' WHEN 5 THEN 'Mayo' WHEN 6 THEN 'Junio' WHEN 7 THEN 'Julio' WHEN 8 THEN 'Agosto' WHEN 9 THEN 'Septiembre' WHEN 10 THEN 'Octubre' WHEN 11 THEN 'Noviembre' WHEN 12 THEN 'Diciembre' END Mes");
    stringBuilder.AppendLine("FROM paracomi pc");
    stringBuilder.AppendLine("INNER JOIN partida p ON p.PeriInfo = pc.PeriInfo AND p.CodiPart = pc.CodiPart");
    stringBuilder.AppendLine("INNER JOIN infogov.organigrama o ON o.PeriInfo = pc.PeriInfo AND o.CodiOrga = pc.CodiOrga");
    stringBuilder.AppendLine($"WHERE pc.PeriInfo = {PARAMS.Periodo}");
    stringBuilder.AppendLine("ORDER BY MesPaco");
    stringBuilder.AppendLine(";");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        paramComiBancariasList.Add(this.readFormLoad(dr));
    }
    dr.Close();
    return paramComiBancariasList;
  }

  private ParamComiBancarias readFormLoad(InfoGovReader dr)
  {
    return new ParamComiBancarias()
    {
      MesPaco = dr.readInt("MesPaco"),
      ExorImpu = dr.readString("ExorImpu"),
      CodiPart = dr.readString("CodiPart"),
      CodiOrga = dr.readString("CodiOrga"),
      DetaPart = dr.readString("DetaPart"),
      DetaOrga = dr.readString("DetaOrga"),
      Mes = dr.readString("Mes")
    };
  }

  public Decimal getSaldoPrev(ParamComiBancarias pcb, DateTime FechaHasta)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT Sum(PrevImpu-DefiImpu) SaldoPrev");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo}");
    stringBuilder.AppendLine($"AND CodiPart = '{pcb.CodiPart}' AND CodiOrga = '{pcb.CodiOrga}'");
    stringBuilder.AppendLine($"AND ExorImpu = '{pcb.ExorImpu}' AND (PrevImpu != 0 OR DefiImpu != 0)");
    stringBuilder.AppendLine("AND FechImpu <= " + this.sqlDate(FechaHasta, false));
    stringBuilder.AppendLine(";");
    return this.conn.executeDecimal(stringBuilder.ToString());
  }

  public TipoMoviBanco getTipoMoviBanco(int iCodiTimbComTes)
  {
    TipoMoviBanco tipoMoviBanco1 = (TipoMoviBanco) null;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"SELECT * FROM tipomovibanco tmb WHERE tmb.PeriInfo = {PARAMS.Periodo.ToString()} AND tmb.CodiTimb = {iCodiTimbComTes.ToString()};");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows && dr.Read())
    {
      TipoMoviBanco tipoMoviBanco2 = new TipoMoviBanco();
      tipoMoviBanco1 = this.readTipoMoviBanco(dr);
    }
    dr.Close();
    return tipoMoviBanco1;
  }

  private TipoMoviBanco readTipoMoviBanco(InfoGovReader dr)
  {
    return new TipoMoviBanco()
    {
      Coditimb = dr.readShort("Coditimb"),
      DetaTimb = dr.readString("DetaTimb"),
      DecreTimb = dr.readShort("DecreTimb"),
      CodiCuco = dr.readString("CodiCuco"),
      PermCucoTimb = dr.readShort("PermCucoTimb"),
      HabiFechRecaTimb = dr.readShort("HabiFechRecaTimb")
    };
  }

  public List<MoviBanco> getMoviBanco(
    int iCodiTimbComTes,
    int MesPaco,
    DateTime fechaDesde,
    DateTime FechaHasta,
    bool recaudadores = false)
  {
    List<MoviBanco> moviBanco = new List<MoviBanco>();
    StringBuilder stringBuilder = new StringBuilder();
    if (recaudadores)
    {
      stringBuilder.AppendLine("SELECT mb.CodiBanc, bco.DetaBanc, mb.CodiTimb, tmb.DetaTimb, NumeMoba, FechMoba, DebeMoba, HabeMoba, ComiMoba, IvaMoba, DetaMoba");
      stringBuilder.AppendLine("FROM movibanco mb");
      stringBuilder.AppendLine($"LEFT JOIN banco bco ON mb.CodiBanc = bco.CodiBanc AND bco.PeriInfo = {PARAMS.Periodo}");
      stringBuilder.AppendLine($"LEFT JOIN tipomovibanco tmb ON  mb.CodiTimb = tmb.CodiTimb AND tmb.PeriInfo = {PARAMS.Periodo}");
      stringBuilder.AppendLine("WHERE mb.PeriInfo = " + PARAMS.Periodo.ToString());
      stringBuilder.AppendLine("AND (mb.ComiMoba != 0 OR mb.IvaMoba != 0)");
      stringBuilder.AppendLine($"AND Month(FechMoba) = {MesPaco}");
      stringBuilder.AppendLine($"AND FechMoba BETWEEN {this.sqlDate(fechaDesde, false)} AND {this.sqlDate(FechaHasta, false)}");
      stringBuilder.AppendLine(";");
    }
    else
    {
      stringBuilder.AppendLine("SELECT mb.CodiBanc, bco.DetaBanc, mb.CodiTimb, tmb.DetaTimb, NumeMoba, FechMoba, DebeMoba, HabeMoba, DetaMoba");
      stringBuilder.AppendLine("FROM movibanco mb");
      stringBuilder.AppendLine($"LEFT JOIN banco bco ON mb.CodiBanc = bco.CodiBanc AND bco.PeriInfo = {PARAMS.Periodo}");
      stringBuilder.AppendLine($"LEFT JOIN tipomovibanco tmb ON  mb.CodiTimb = tmb.CodiTimb AND tmb.PeriInfo = {PARAMS.Periodo}");
      stringBuilder.AppendLine($"WHERE mb.PeriInfo = {PARAMS.Periodo}");
      stringBuilder.AppendLine($"AND mb.CodiTimb = {iCodiTimbComTes}");
      stringBuilder.AppendLine($"AND Month(FechMoba) = {MesPaco}");
      stringBuilder.AppendLine($"AND FechMoba BETWEEN {this.sqlDate(fechaDesde, false)} AND {this.sqlDate(FechaHasta, false)}");
      stringBuilder.AppendLine(";");
    }
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        moviBanco.Add(this.readGetMoviBanco(dr, recaudadores));
    }
    dr.Close();
    return moviBanco;
  }

  private MoviBanco readGetMoviBanco(InfoGovReader dr, bool recaudadores)
  {
    MoviBanco moviBanco = new MoviBanco();
    moviBanco.CodiBanc = dr.readInt("CodiBanc");
    moviBanco.DetaBanc = dr.readString("DetaBanc");
    moviBanco.CodiTimb = dr.readShort("CodiTimb");
    moviBanco.DetaTimb = dr.readString("DetaTimb");
    moviBanco.NumeMoba = dr.readInt("NumeMoba");
    moviBanco.FechMoba = dr.readDateTime("FechMoba");
    moviBanco.DebeMoba = dr.readDecimal("DebeMoba");
    moviBanco.HabeMoba = dr.readDecimal("HabeMoba");
    moviBanco.DetaMoba = dr.readString("DetaMoba");
    if (recaudadores)
    {
      moviBanco.ComiMoba = dr.readDecimal("ComiMoba");
      moviBanco.IvaMoba = dr.readDecimal("IvaMoba");
    }
    return moviBanco;
  }

  public bool ImputarComisionesBcriasTesoreria(
    ParamComiBancarias pcb,
    DateTime FechaDesde,
    DateTime FechaHasta,
    string sPagaImpu,
    string CodiCuco)
  {
    StringBuilder stringBuilder = new StringBuilder();
    Decimal num = Convert.ToDecimal(sPagaImpu.Replace("$", ""));
    string str = $"comisiones automáticas Tesorería - desde {FechaDesde.ToShortDateString()} hasta {FechaHasta.ToShortDateString()}";
    stringBuilder.AppendLine("SELECT @idimpumin:= Min(IdImpu)");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo}");
    stringBuilder.AppendLine($"AND CodiPart = '{pcb.CodiPart}' AND CodiOrga = '{pcb.CodiOrga}'");
    stringBuilder.AppendLine($"AND ExorImpu = '{pcb.ExorImpu}' AND PrevImpu != 0");
    stringBuilder.AppendLine(";");
    stringBuilder.AppendLine($"SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = {PARAMS.Periodo} LIMIT 1;");
    stringBuilder.AppendLine($"SELECT @ajusimpu:=Max(i.AjusImpu)+1 FROM imputacion i WHERE i.PeriInfo = {PARAMS.Periodo} LIMIT 1;");
    stringBuilder.AppendLine($"SET @desde={this.sqlDate(FechaDesde, false)}, @hasta={this.sqlDate(FechaHasta, false)};");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu, {this.sqlDecimal(num)} DefiImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, ExorImpu AS ExpeImpu, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu, {this.sqlDecimal(num)} DeveImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    stringBuilder.AppendLine("INSERT INTO devengado (PeriInfo, IdImpu, CodiCuco)");
    stringBuilder.AppendLine($"VALUES ({PARAMS.Periodo}, @idimpu, '{CodiCuco}');");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu, {this.sqlDecimal(num)} LiquImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu, {this.sqlDecimal(num)} MapaImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, PagaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu, {this.sqlDecimal(num)} PagaImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool ImputarComisionesEntesRecaudadores(
    ParamComiBancarias pcb,
    DateTime FechaDesde,
    DateTime FechaHasta,
    string sPagaImpu,
    string CodiCuco,
    int iCodiTimbComER_bcoDebito,
    int iCodiTimbComER_bcoCredito)
  {
    StringBuilder stringBuilder = new StringBuilder();
    Decimal num = Convert.ToDecimal(sPagaImpu.Replace("$", ""));
    string str = $"comisiones automáticas Recaudadores - desde {FechaDesde.ToShortDateString()} hasta {FechaHasta.ToShortDateString()}";
    stringBuilder.AppendLine("SELECT @idimpumin:= Min(IdImpu)");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo}");
    stringBuilder.AppendLine($"AND CodiPart = '{pcb.CodiPart}' AND CodiOrga = '{pcb.CodiOrga}'");
    stringBuilder.AppendLine($"AND ExorImpu = '{pcb.ExorImpu}' AND PrevImpu != 0");
    stringBuilder.AppendLine(";");
    stringBuilder.AppendLine($"SELECT @idimpu:=Max(i.IdImpu)+1 FROM imputacion i WHERE i.PeriInfo = {PARAMS.Periodo.ToString()} LIMIT 1;");
    stringBuilder.AppendLine($"SELECT @ajusimpu:=Max(i.AjusImpu)+1 FROM imputacion i WHERE i.PeriInfo = {PARAMS.Periodo.ToString()} LIMIT 1;");
    stringBuilder.AppendLine($"SET @desde={this.sqlDate(FechaDesde, false)}, @hasta={this.sqlDate(FechaHasta, false)};");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, CantImpu, ImunImpu, DefiImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu,{this.sqlDecimal(num)} DefiImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($" WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, CantImpu, ImunImpu, DeveImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, ExorImpu AS ExpeImpu, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu, {this.sqlDecimal(num)} DeveImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    stringBuilder.AppendLine("INSERT INTO devengado (PeriInfo, IdImpu, CodiCuco)");
    stringBuilder.AppendLine($" VALUES ({PARAMS.Periodo}, @idimpu, '{CodiCuco}');");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, CantImpu, ImunImpu, LiquImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu, {this.sqlDecimal(num)} LiquImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, MapaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu, {this.sqlDecimal(num)} MapaImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    stringBuilder.AppendLine("INSERT INTO imputacion (PeriInfo, IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, FechImpu, ExorImpu, ExpeImpu, NumeLiqu, NumeOrpa, CantImpu, ImunImpu, PagaImpu, DetaImpu, CucuPers, AjusImpu, CodiNope, Item, Altern, CodiOrco, CodiRece, NumeFact, FefaDeve, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idimpu:=@idimpu+1 IdImpu, CodiPart, CodiOrga, CodiUnga, CodiInsu, CodiFifu, @hasta, ExorImpu, ExorImpu AS ExpeImpu, NumeLiqu, NumeOrpa, 1 CantImpu, {this.sqlDecimal(num)} ImunImpu, {this.sqlDecimal(num)} PagaImpu, '{str}', Replace('{PARAMS.CuitMunicipio}','-','') CucuPers, @ajusimpu, CodiNope, Item, Altern, CodiOrco, CodiRece, 's/f000000000000' AS NumeFact, FefaDeve, '{this.usuario}'");
    stringBuilder.AppendLine("FROM imputacion");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND IdImpu = @idimpumin;");
    stringBuilder.AppendLine($"SET @idmoba=(SELECT Max(IdMoba)+1 FROM movibanco mb WHERE mb.PeriInfo = {PARAMS.Periodo});");
    stringBuilder.AppendLine("INSERT INTO movibanco (PeriInfo, IdMoba, CodiBanc, CodiTimb, NumeMoba, FechMoba, FeinMoba, FecoMoba, FehocoMoba, DebeMoba, HabeMoba, ComiMoba, IvaMoba, CodiEnre, CodiCuco, DetaMoba, AltaUsua)");
    stringBuilder.AppendLine($"SELECT PeriInfo, @idmoba:=@idmoba+1 IdMoba, CodiBanc, {iCodiTimbComER_bcoCredito} CodiTimb, 1 NumeMoba, @hasta FechMoba, @hasta FeinMoba, @hasta FecoMoba, Now() FehocoMoba, 0 DebeMoba, SUM(ComiMoba+IvaMoba) HabeMoba, 0 ComiMoba, 0 IvaMoba, 0 CodiEnre, '{CodiCuco}', '{str}' DetaMoba, '{this.usuario}' AltaUsua");
    stringBuilder.AppendLine("FROM movibanco mb");
    stringBuilder.AppendLine($"WHERE PeriInfo = {PARAMS.Periodo} AND FechMoba BETWEEN @desde AND @hasta AND (mb.ComiMoba != 0 OR mb.IvaMoba != 0)");
    stringBuilder.AppendLine("GROUP BY CodiBanc;");
    stringBuilder.AppendLine("INSERT INTO movibanco (PeriInfo, IdMoba, CodiBanc, CodiTimb, NumeMoba, FechMoba, FeinMoba, FecoMoba, FehocoMoba, DebeMoba, HabeMoba, ComiMoba, IvaMoba, CodiEnre, CodiCuco, DetaMoba, AltaUsua)");
    stringBuilder.AppendLine($"SELECT mb.PeriInfo, @idmoba:=@idmoba+1 IdMoba, CodiBanc, {iCodiTimbComER_bcoDebito} CodiTimb, @idmoba NumeMoba, FechMoba, FeinMoba, FechMoba FecoMoba, Now() FehocoMoba, SUM(ComiMoba+IvaMoba) DebeMoba, 0 HabeMoba, 0 ComiMoba, 0 IvaMoba, 0 CodiEnre, p.CajaPaco, '{str}' DetaMoba, '{this.usuario}' AltaUsua");
    stringBuilder.AppendLine("FROM movibanco mb");
    stringBuilder.AppendLine("INNER JOIN paraconta p ON p.PeriInfo = mb.PeriInfo");
    stringBuilder.AppendLine($"WHERE mb.PeriInfo = {PARAMS.Periodo} AND FechMoba BETWEEN @desde AND @hasta AND (mb.ComiMoba != 0 OR mb.IvaMoba != 0)");
    stringBuilder.AppendLine("GROUP BY mb.IdMoba;");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }
}
