// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEmisionMasivaComerciosGUAY
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioGuay;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpEmisionMasivaComerciosGUAY : Expert
{
  public ExpEmisionMasivaComerciosGUAY()
    : base(Modulo.Database, true)
  {
  }

  public List<EmisionMasivaComercios> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<EmisionMasivaComercios> gridData = new List<EmisionMasivaComercios>();
    stringBuilder.AppendLine("SELECT liquidacion.*, MAX(OrdeLico) MaxOrdeLico, tipoliqu.DetaTili, tipoliqu.LeyeTili");
    stringBuilder.AppendLine("FROM liquidacion");
    stringBuilder.AppendLine("INNER JOIN(");
    stringBuilder.AppendLine("SELECT PeriLiqu, NumeLiqu, OrdeLico");
    stringBuilder.AppendLine("FROM liqucome");
    stringBuilder.AppendLine("WHERE PeriLiqu in (2026) AND OrdeLico > 0");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, NumeLiqu, OrdeLico");
    stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
    stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '2' AND ActuLiqu = 'Si' AND liquidacion.PeriLiqu in (2026)");
    stringBuilder.AppendLine("GROUP BY liquidacion.PeriLiqu, liquidacion.NumeLiqu;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add(this.readLiquidacion(dr));
    }
    dr.Close();
    return gridData;
  }

  private EmisionMasivaComercios readLiquidacion(InfoGovReader dr)
  {
    return new EmisionMasivaComercios()
    {
      PeriLiqu = dr.readInt("PeriLiqu"),
      CodiOfic = dr.readInt("CodiOfic"),
      CodiTili = dr.readInt("CodiTili"),
      NumeLiqu = dr.readInt("NumeLiqu"),
      DetaTili = dr.readString("DetaTili"),
      ActuLiqu = dr.readString("ActuLiqu"),
      LeyeTili = dr.readString("LeyeTili"),
      FealLiqu = dr.readDateTime("FealLiqu"),
      CantOrdeLico = dr.readInt("MaxOrdeLico")
    };
  }

  public int sugiereOrdenNew(EmisionMasivaComercios row)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT MAX(OrdeLico)");
    stringBuilder.AppendLine("FROM liqucome");
    stringBuilder.AppendLine($"WHERE liqucome.PeriLiqu = {row.PeriLiqu.ToString()} AND liqucome.CodiTili = {row.CodiTili.ToString()} AND liqucome.NumeLiqu = {row.NumeLiqu.ToString()}");
    stringBuilder.AppendLine("AND TipoLico = 'Aforo' AND FeacLico IS NOT NULL");
    return this.conn.executeInt(stringBuilder.ToString());
  }

  public List<DTOBoletoComercioGuay> obtenerLiquComercios(
    EmisionMasivaComercios emt,
    int desde,
    int hasta)
  {
    List<DTOBoletoComercioGuay> boletoComercioGuayList = new List<DTOBoletoComercioGuay>();
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.AppendLine("SELECT liqucome.CodiCome, liqucome.TipoVenc, OrdeLico, liqucome.FeacLico, liqucome.BimeLiqu, SUM(TotaLico) AS TotaLico, boleto.PeriBole, boleto.NumeBole, SUM(if (liqucome.CodiConc = '13030202',TotaLico,0)) RecaBole,");
    stringBuilder1.AppendLine("boleto.FeveBole AS FeveLico, CAST(boleto.TotaBole AS DOUBLE(16, 2)) AS TotaBole, boleto.CodiUsua, boleto.CucuPers, p1.DetaPers, IFNULL(p2.DetaPers, '') AS Vinculo, RazoCome, DeudLico, CAST((IFNULL(ImpoLico, 0) - IFNULL(TotaLcde, 0)) AS DOUBLE(12, 2)) AS ImpoLico, CAST(ExenLico + DescLico AS DOUBLE(12, 2)) AS DescLico, IFNULL(licodeta.TotaLcde, 0) AS CEmision,");
    stringBuilder1.AppendLine("CallLico AS DetaCall, NucaLico, BarrLico AS DetaBarr, ManzLico, CasaLico, UbicLico, LocaLico AS DetaLoca, CopoLico, IFNULL(domicilio.calle, '') AS CallLicoReal, IFNULL(domicilio.NumeCalle, '0') AS NucaLicoReal, IFNULL(domicilio.barrio, '') AS BarrLicoReal, IFNULL(domicilio.Manzana, '') AS ManzLicoReal, IFNULL(domicilio.Casa, '') AS CasaLicoReal, CONCAT(IFNULL(domicilio.Monoblock, ''), IF(IFNULL(domicilio.Dpto, '') <> '', ' - ', ''), IFNULL(domicilio.Dpto, ''), IF(IFNULL(domicilio.Planta, '') <> '', ' - ', ''), IFNULL(domicilio.Planta, ''), IF(IFNULL(domicilio.NroLocal, '') <> '', ' - ', ''), IFNULL(domicilio.NroLocal, '')) AS UbicLicoReal, IFNULL(domicilio.Localidad, '') AS LocaLicoReal, IFNULL(domicilio.CodPostal, '0') AS CopoLicoReal,");
    stringBuilder1.AppendLine("( SELECT CAST(GROUP_CONCAT(DISTINCT if (lq2.TipoVenc = 1,lq2.BimeLiqu,'anual')");
    stringBuilder1.AppendLine("ORDER BY lq2.TipoVenc, lq2.BimeLiqu ASC SEPARATOR ', ') AS CHAR)");
    stringBuilder1.AppendLine("FROM liqucome AS lq2");
    stringBuilder1.AppendLine("WHERE lq2.TipoLico = liqucome.TipoLico AND FeacLico IS NOT NULL AND lq2.PeriLiqu = liqucome.PeriLiqu AND lq2.CodiTili = liqucome.CodiTili AND lq2.NumeLiqu = liqucome.NumeLiqu AND lq2.OrdeLico = liqucome.OrdeLico) AS Bimestres, liqucome.Vinculo DireccionQr, boleto.TipoBole");
    stringBuilder1.AppendLine("FROM liqucome");
    stringBuilder1.AppendLine("INNER JOIN boleto ON boleto.CodiOfic = 2 AND boleto.CuenCtct = liqucome.CodiCome AND boleto.PeriBole = liqucome.PeriBole AND boleto.NumeBole = liqucome.NumeBole");
    stringBuilder1.AppendLine("LEFT JOIN licodeta ON licodeta.PeriLiqu = liqucome.PeriLiqu AND licodeta.CodiTili = liqucome.CodiTili AND licodeta.NumeLiqu = liqucome.NumeLiqu AND licodeta.BimeLiqu = liqucome.BimeLiqu AND licodeta.CodiConc = '13020201' AND licodeta.CodiCome = liqucome.CodiCome AND licodeta.TipoVenc = liqucome.TipoVenc AND licodeta.CodiSubr = 999");
    stringBuilder1.AppendLine("LEFT JOIN comercio ON comercio.CodiCome = boleto.CuenCtct");
    stringBuilder1.AppendLine("LEFT JOIN infogov.persona AS p1 ON p1.CucuPers = liqucome.CucuPers");
    stringBuilder1.AppendLine("LEFT JOIN relacion ON relacion.CodiOfic = 2 AND relacion.CuenCtct = comercio.CodiCome AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL");
    stringBuilder1.AppendLine("LEFT JOIN infogov.persona AS p2 ON p2.CucuPers = relacion.CucuPers");
    stringBuilder1.AppendLine("LEFT JOIN domicilio ON domicilio.CodiCome = liqucome.CodiCome AND domicilio.CodiOfic = 2 AND domicilio.Tipo = 'COMERCIAL'");
    StringBuilder stringBuilder2 = stringBuilder1;
    int num1 = emt.PeriLiqu;
    string str1 = num1.ToString();
    num1 = emt.CodiTili;
    string str2 = num1.ToString();
    string str3 = $"WHERE TipoLico = 'Aforo' AND FeacLico IS NOT NULL AND liqucome.PeriLiqu = {str1} AND liqucome.CodiTili = {str2}";
    stringBuilder2.AppendLine(str3);
    stringBuilder1.AppendLine($"AND liqucome.NumeLiqu = {emt.NumeLiqu.ToString()} AND liqucome.OrdeLico BETWEEN {desde.ToString()} AND {hasta.ToString()}");
    stringBuilder1.AppendLine("GROUP BY OrdeLico, TipoVenc, BimeLiqu, liqucome.PeriBole, liqucome.NumeBole");
    stringBuilder1.AppendLine("HAVING TotaLico<> 0");
    stringBuilder1.AppendLine("ORDER BY OrdeLico, PeriBole, TipoVenc DESC, BimeLiqu");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder1.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOBoletoComercioGuay boletoComercioGuay1 = new DTOBoletoComercioGuay();
        boletoComercioGuay1.PeriLiqu = emt.PeriLiqu;
        boletoComercioGuay1.CodiTili = (short) emt.CodiTili;
        boletoComercioGuay1.NumeLiqu = (short) emt.NumeLiqu;
        boletoComercioGuay1.CodiCome = nfoGovReader.readInt("CodiCome");
        boletoComercioGuay1.RazoCome = nfoGovReader.readString("RazoCome");
        boletoComercioGuay1.TipoVenc = nfoGovReader.readInt("TipoVenc");
        boletoComercioGuay1.OrdeLico = nfoGovReader.readInt("OrdeLico");
        boletoComercioGuay1.FeacLico = nfoGovReader.readDateTime("FeacLico");
        boletoComercioGuay1.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        boletoComercioGuay1.TotaLico = nfoGovReader.readDecimal("TotaLico");
        boletoComercioGuay1.PeriBole = nfoGovReader.readInt("PeriBole");
        boletoComercioGuay1.NumeBole = nfoGovReader.readInt("NumeBole");
        boletoComercioGuay1.TotaBole = nfoGovReader.readDecimal("TotaBole");
        boletoComercioGuay1.CodiUsua = nfoGovReader.readString("CodiUsua");
        boletoComercioGuay1.CucuPers = nfoGovReader.readLong("CucuPers").ToString();
        boletoComercioGuay1.DetaPers = nfoGovReader.readString("DetaPers");
        boletoComercioGuay1.CallLico = nfoGovReader.readString("DetaCall");
        boletoComercioGuay1.NucaLico = nfoGovReader.readInt("NucaLico");
        boletoComercioGuay1.BarrLico = nfoGovReader.readString("DetaBarr");
        boletoComercioGuay1.ManzLico = nfoGovReader.readString("ManzLico");
        boletoComercioGuay1.CasaLico = nfoGovReader.readString("CasaLico");
        boletoComercioGuay1.UbicLico = nfoGovReader.readString("UbicLico");
        boletoComercioGuay1.LocaLico = nfoGovReader.readString("DetaLoca");
        boletoComercioGuay1.CopoLico = nfoGovReader.readString("CopoLico");
        boletoComercioGuay1.CallLicoReal = nfoGovReader.readString("CallLicoReal");
        boletoComercioGuay1.NucaLicoReal = nfoGovReader.readString("NucaLicoReal");
        boletoComercioGuay1.BarrLicoReal = nfoGovReader.readString("BarrLicoReal");
        boletoComercioGuay1.ManzLicoReal = nfoGovReader.readString("ManzLicoReal");
        boletoComercioGuay1.CasaLicoReal = nfoGovReader.readString("CasaLicoReal");
        boletoComercioGuay1.UbicLicoReal = nfoGovReader.readString("UbicLicoReal");
        boletoComercioGuay1.LocaLicoReal = nfoGovReader.readString("LocaLicoReal");
        boletoComercioGuay1.CopoLicoReal = nfoGovReader.readString("CopoLicoReal");
        boletoComercioGuay1.Vinculo = nfoGovReader.readString("Vinculo");
        if (boletoComercioGuay1.Vinculo.Trim().Length != 0)
          boletoComercioGuay1.Vinculo = $" (Poseedor: {boletoComercioGuay1.Vinculo})";
        boletoComercioGuay1.DireccionQr = nfoGovReader.readString("DireccionQr");
        boletoComercioGuay1.DeudLico = nfoGovReader.readDecimal("DeudLico");
        DTOBoletoComercioGuay boletoComercioGuay2 = boletoComercioGuay1;
        int num2 = boletoComercioGuay1.CodiCome;
        string str4 = num2.ToString().PadLeft(9, '0');
        num2 = boletoComercioGuay1.OrdeLico;
        string str5 = num2.ToString().PadLeft(6, '0');
        string str6 = $"2{str4}{str5}";
        boletoComercioGuay2.Barrita = str6;
        DTOBoletoComercioGuay boletoComercioGuay3 = boletoComercioGuay1;
        num2 = boletoComercioGuay1.CodiCome;
        string str7 = "2" + num2.ToString().PadLeft(6, '0');
        boletoComercioGuay3.pagomisctas = str7;
        DTOBoletoComercioGuay boletoComercioGuay4 = boletoComercioGuay1;
        num2 = boletoComercioGuay1.CodiCome;
        string str8 = "2" + num2.ToString().PadLeft(12, '0');
        boletoComercioGuay4.redlink = str8;
        boletoComercioGuay1.cupaux.Add(new CuponComercioAux()
        {
          DescLico = nfoGovReader.readDecimal("DescLico"),
          DeudLico = nfoGovReader.readDecimal("DeudLico"),
          RecaBole = nfoGovReader.readDecimal("RecaBole"),
          FeveLico = nfoGovReader.readDateTime("FeveLico"),
          BimeLiqu = nfoGovReader.readInt("BimeLiqu"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          TipoVenc = nfoGovReader.readInt("TipoVenc"),
          TotaBole = nfoGovReader.readDecimal("TotaBole"),
          TipoBole = nfoGovReader.readString("TipoBole")
        });
        boletoComercioGuayList.Add(boletoComercioGuay1);
      }
    }
    nfoGovReader.Close();
    return boletoComercioGuayList;
  }

  public CuponComercio obtenerCupon(
    EmisionMasivaComercios emt,
    DTOBoletoComercioGuay comer,
    bool anual)
  {
    CuponComercio cupon = new CuponComercio();
    string sql;
    if (anual)
      sql = $"SELECT CAST(sum(if(CodiSubr <> 999,ImpoLcde,0)) AS DOUBLE(16,2)) as ImpoLico, CAST(sum(if(CodiSubr <> 999,DecaLcde+ExceLcde,0)) AS DOUBLE(16,2)) as DescLico, CAST(sum(if(CodiSubr = 999,ImpoLcde-DecaLcde,0)) AS DOUBLE(16,2)) as CEmision , epagoscomerqr.EpagosQr FROM licodeta LEFT JOIN epagoscomerqr ON epagoscomerqr.PeriLiqu = licodeta.PeriLiqu AND epagoscomerqr.NumeLiqu = licodeta.NumeLiqu AND epagoscomerqr.CodiCome = licodeta.CodiCome AND epagoscomerqr.BimeLiqu = 7 WHERE licodeta.PeriLiqu = {emt.PeriLiqu.ToString()} AND licodeta.CodiTili = {emt.CodiTili.ToString()} AND licodeta.NumeLiqu = {emt.NumeLiqu.ToString()} AND TipoVenc = 2 AND licodeta.CodiCome = {comer.CodiCome.ToString()}";
    else
      sql = $"SELECT CAST(sum(if (CodiSubr<> 999,ImpoLcde,0)) AS DOUBLE(16,2)) as ImpoLico, CAST(sum(if (CodiSubr<> 999,DecaLcde + ExceLcde,0)) AS DOUBLE(16,2)) as DescLico, CAST(sum(if (CodiSubr = 999,ImpoLcde - DecaLcde,0)) AS DOUBLE(16,2)) as CEmision , epagoscomerqr.EpagosQr FROM licodeta LEFT JOIN epagoscomerqr ON epagoscomerqr.PeriLiqu = licodeta.PeriLiqu AND epagoscomerqr.NumeLiqu = licodeta.NumeLiqu AND epagoscomerqr.CodiCome = licodeta.CodiCome AND epagoscomerqr.BimeLiqu = licodeta.BimeLiqu WHERE licodeta.PeriLiqu = {emt.PeriLiqu.ToString()} AND licodeta.NumeLiqu = {emt.NumeLiqu.ToString()} AND licodeta.CodiCome = {comer.CodiCome.ToString()} AND TipoVenc = 1 AND licodeta.BimeLiqu ={comer.BimeLiqu.ToString()};";
    InfoGovReader nfoGovReader = this.conn.executeReader(sql);
    if (nfoGovReader.HasRows)
    {
      nfoGovReader.Read();
      cupon.ImpoLico = nfoGovReader.readDecimal("ImpoLico");
      cupon.CEmision = nfoGovReader.readDecimal("CEmision");
      cupon.EpagosQr = nfoGovReader.readImage("EpagosQr");
      if (anual)
        cupon.DescLico = nfoGovReader.readDecimal("DescLico");
      foreach (CuponComercioAux cuponComercioAux in comer.cupaux)
      {
        cupon.TipoBole = cuponComercioAux.TipoBole;
        if (comer.TipoVenc == 1)
        {
          switch (comer.BimeLiqu)
          {
            case 1:
              cupon.FeveLico = cuponComercioAux.FeveLico;
              cupon.DeudLico = cuponComercioAux.DeudLico;
              cupon.RecaBole = cuponComercioAux.RecaBole;
              cupon.BimeLiqu = cuponComercioAux.BimeLiqu;
              cupon.PeriBole = cuponComercioAux.PeriBole;
              cupon.NumeBole = cuponComercioAux.NumeBole;
              cupon.TipoVenc = cuponComercioAux.TipoVenc;
              cupon.TotaBole = cuponComercioAux.TotaBole;
              break;
            case 2:
              cupon.FeveLico = cuponComercioAux.FeveLico;
              cupon.DeudLico = cuponComercioAux.DeudLico;
              cupon.RecaBole = cuponComercioAux.RecaBole;
              cupon.BimeLiqu = cuponComercioAux.BimeLiqu;
              cupon.PeriBole = cuponComercioAux.PeriBole;
              cupon.NumeBole = cuponComercioAux.NumeBole;
              cupon.TipoVenc = cuponComercioAux.TipoVenc;
              cupon.TotaBole = cuponComercioAux.TotaBole;
              break;
            case 3:
              cupon.FeveLico = cuponComercioAux.FeveLico;
              cupon.DeudLico = cuponComercioAux.DeudLico;
              cupon.RecaBole = cuponComercioAux.RecaBole;
              cupon.BimeLiqu = cuponComercioAux.BimeLiqu;
              cupon.PeriBole = cuponComercioAux.PeriBole;
              cupon.NumeBole = cuponComercioAux.NumeBole;
              cupon.TipoVenc = cuponComercioAux.TipoVenc;
              cupon.TotaBole = cuponComercioAux.TotaBole;
              break;
            case 4:
              cupon.FeveLico = cuponComercioAux.FeveLico;
              cupon.DeudLico = cuponComercioAux.DeudLico;
              cupon.RecaBole = cuponComercioAux.RecaBole;
              cupon.BimeLiqu = cuponComercioAux.BimeLiqu;
              cupon.PeriBole = cuponComercioAux.PeriBole;
              cupon.NumeBole = cuponComercioAux.NumeBole;
              cupon.TipoVenc = cuponComercioAux.TipoVenc;
              cupon.TotaBole = cuponComercioAux.TotaBole;
              break;
            case 5:
              cupon.FeveLico = cuponComercioAux.FeveLico;
              cupon.DeudLico = cuponComercioAux.DeudLico;
              cupon.RecaBole = cuponComercioAux.RecaBole;
              cupon.BimeLiqu = cuponComercioAux.BimeLiqu;
              cupon.PeriBole = cuponComercioAux.PeriBole;
              cupon.NumeBole = cuponComercioAux.NumeBole;
              cupon.TipoVenc = cuponComercioAux.TipoVenc;
              cupon.TotaBole = cuponComercioAux.TotaBole;
              break;
            case 6:
              cupon.FeveLico = cuponComercioAux.FeveLico;
              cupon.DeudLico = cuponComercioAux.DeudLico;
              cupon.RecaBole = cuponComercioAux.RecaBole;
              cupon.BimeLiqu = cuponComercioAux.BimeLiqu;
              cupon.PeriBole = cuponComercioAux.PeriBole;
              cupon.NumeBole = cuponComercioAux.NumeBole;
              cupon.TipoVenc = cuponComercioAux.TipoVenc;
              cupon.TotaBole = cuponComercioAux.TotaBole;
              break;
          }
        }
        else if (comer.TipoVenc == 2)
        {
          cupon.RecaBole = cuponComercioAux.RecaBole;
          cupon.DeudLico = cuponComercioAux.DeudLico;
          cupon.FeveLico = cuponComercioAux.FeveLico;
          cupon.BimeLiqu = cuponComercioAux.BimeLiqu;
          cupon.PeriBole = cuponComercioAux.PeriBole;
          cupon.NumeBole = cuponComercioAux.NumeBole;
          cupon.TipoVenc = cuponComercioAux.TipoVenc;
          cupon.TotaBole = cuponComercioAux.TotaBole;
        }
      }
    }
    nfoGovReader.Close();
    cupon.CodigoBarraCupon = this.GenerarCodigoBarra(comer, cupon);
    if (cupon.CodigoBarraCupon.Length > 54)
      cupon.CodigoBarraCupon = "";
    return cupon;
  }

  public string GenerarCodigoBarra(DTOBoletoComercioGuay comer, CuponComercio cupon)
  {
    DateTime dateTime1 = new DateTime();
    dateTime1 = comer.PeriLiqu != 2025 || comer.NumeLiqu != (short) 10 || comer.BimeLiqu != 3 ? cupon.FeveLico : new DateTime(2025, 6, 18);
    DateTime dateTime2 = new DateTime(cupon.PeriBole, 1, 1);
    double num1 = cupon.TipoVenc == 2 ? 90.0 : (dateTime1.AddDays(1.0) - dateTime2).TotalDays;
    string str = ((long) (cupon.TotaBole * 100M)).ToString().PadLeft(10, '0');
    string[] strArray = new string[9];
    strArray[0] = "568";
    int num2 = cupon.PeriBole;
    strArray[1] = num2.ToString();
    num2 = cupon.NumeBole;
    strArray[2] = num2.ToString().PadLeft(9, '0');
    num2 = cupon.BimeLiqu;
    strArray[3] = num2.ToString().PadLeft(2, '0');
    num2 = comer.CodiCome;
    strArray[4] = num2.ToString().PadLeft(13, '0');
    strArray[5] = "11172";
    strArray[6] = str;
    num2 = cupon.PeriBole;
    strArray[7] = num2.ToString().Substring(2, 2);
    strArray[8] = num1.ToString().PadLeft(3, '0');
    string barra = string.Concat(strArray);
    return barra + this.CodigoVerificadorMARIO(barra);
  }

  public string CodigoVerificadorMARIO(string barra)
  {
    long num = 0;
    int[] numArray = new int[5]{ 11, 13, 17, 19, 23 };
    for (int index = barra.Length - 1; index >= 0; --index)
      num += (long) (int.Parse(barra[index].ToString()) * numArray[(barra.Length - 1 - index) % 5]);
    return Math.Abs(num - num / 100L * 100L - num / 100L).ToString().PadLeft(3, '0');
  }

  public void ProcesarObtenerSubrubos(List<DTOBoletoComercioGuay> listaRepo)
  {
    foreach (DTOBoletoComercioGuay comer in listaRepo)
      this.obtenerSubrubros(comer);
  }

  public void obtenerSubrubros(DTOBoletoComercioGuay comer)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT licodeta.CodiRubr, licodeta.CodiSubr, IFNULL(DetaSubr, '') DetaSubr, IFNULL(servcome.CateSeco, '') CateSeco");
    stringBuilder.AppendLine(", IFNULL(servcome.CantSeco, '') CantSeco, CAST(licodeta.TotaLcde AS DOUBLE(10, 2)) AS TotaLico");
    stringBuilder.AppendLine("FROM licodeta");
    stringBuilder.AppendLine($"LEFT JOIN subrubro ON subrubro.CodiRamo = licodeta.CodiRamo AND subrubro.CodiRubr = licodeta.CodiRubr AND subrubro.PeriOrde = {comer.PeriLiqu.ToString()} AND subrubro.CodiSubr = licodeta.CodiSubr");
    stringBuilder.AppendLine("LEFT JOIN servcome ON servcome.CodiCome = licodeta.CodiCome AND servcome.CodiRamo = licodeta.CodiRamo AND servcome.CodiRubr = licodeta.CodiRubr AND servcome.CodiSubr = licodeta.CodiSubr AND servcome.PrioSeco = licodeta.NumeLcde");
    stringBuilder.AppendLine($"WHERE licodeta.CodiSubr<>999 AND PeriLiqu = {comer.PeriLiqu.ToString()} AND CodiTili = {comer.CodiTili.ToString()} AND NumeLiqu = {comer.NumeLiqu.ToString()} AND BimeLiqu = {comer.BimeLiqu.ToString()} AND CodiConc = '13020201' AND licodeta.TipoVenc = {comer.TipoVenc.ToString()} AND licodeta.CodiCome = {comer.CodiCome.ToString()}");
    stringBuilder.AppendLine("ORDER BY TotaLico DESC");
    stringBuilder.AppendLine("LIMIT 3");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        comer.subrubros.Add(new DTOSubRubros()
        {
          CodiRubr = nfoGovReader.readString("CodiRubr"),
          CodiSubr = nfoGovReader.readInt("CodiSubr").ToString(),
          DetaSubr = nfoGovReader.readString("DetaSubr"),
          CateSeco = nfoGovReader.readShort("CateSeco").ToString(),
          CantSeco = nfoGovReader.readDecimal("CantSeco").ToString(),
          TotaLcde = nfoGovReader.readDecimal("TotaLico").ToString("N2")
        });
    }
    nfoGovReader?.Close();
  }

  public void ProcesarCalcularDeudas(List<DTOBoletoComercioGuay> listaRepo)
  {
    foreach (DTOBoletoComercioGuay dto in listaRepo)
      this.CalcularDeudas(dto);
  }

  public DTOBoletoComercioGuay CalcularDeudas(DTOBoletoComercioGuay dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.conn.executeNonQuery($"CALL `fnDeuda`('2', '{dto.CodiCome.ToString()}', '2025-12-31');");
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT SUM(SaldCtct) SaldCtct, SUM(RecaCtct) RecaCtct FROM tmp_ctacteboleto WHERE CodiFapa = 0 AND FealCtct <= '2025-12-31';");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        dto.DeudLico = nfoGovReader.readDecimal("SaldCtct");
    }
    nfoGovReader?.Close();
    return dto;
  }

  public EmisionMasivaComercios getOrdenPorComer(int comer)
  {
    StringBuilder stringBuilder = new StringBuilder();
    EmisionMasivaComercios ordenPorComer = new EmisionMasivaComercios();
    stringBuilder.AppendLine("SELECT *");
    stringBuilder.AppendLine("FROM liqucome");
    stringBuilder.AppendLine($"WHERE PeriLiqu = {PARAMS.Periodo.ToString()} AND CodiTili = 1");
    stringBuilder.AppendLine($"AND CodiCome = {comer.ToString()} AND CodiConc = '13020201'");
    stringBuilder.AppendLine("AND TipoVenc = 1 AND ActuLico = 'Si'");
    stringBuilder.AppendLine("ORDER BY PeriLiqu, CodiTili, NumeLiqu DESC, CodiCome, OrdeLico");
    stringBuilder.AppendLine("LIMIT 1;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ordenPorComer.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
        ordenPorComer.NumeLiqu = (int) nfoGovReader.readShort("NumeLiqu");
        ordenPorComer.CantOrdeLico = nfoGovReader.readInt("OrdeLico");
        ordenPorComer.CodiOfic = 2;
        ordenPorComer.CodiTili = nfoGovReader.readInt("CodiTili");
        ordenPorComer.NumeLiqu = nfoGovReader.readInt("NumeLiqu");
      }
    }
    nfoGovReader.Close();
    return ordenPorComer;
  }
}
