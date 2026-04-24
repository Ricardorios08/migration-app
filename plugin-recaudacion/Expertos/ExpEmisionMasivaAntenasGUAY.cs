// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEmisionMasivaAntenasGUAY
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoAntenaGuay;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpEmisionMasivaAntenasGUAY : Expert
{
  public ExpEmisionMasivaAntenasGUAY()
    : base(Modulo.Database, true)
  {
  }

  public List<EmisionMasivaComercios> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<EmisionMasivaComercios> gridData = new List<EmisionMasivaComercios>();
    stringBuilder.AppendLine("SELECT liquidacion.*, MAX(OrdeLian) MaxOrdeLico, tipoliqu.DetaTili, tipoliqu.LeyeTili");
    stringBuilder.AppendLine("FROM liquidacion");
    stringBuilder.AppendLine("INNER JOIN(");
    stringBuilder.AppendLine("SELECT PeriLiqu, NumeLiqu, OrdeLian");
    stringBuilder.AppendLine("FROM liquante");
    stringBuilder.AppendLine("WHERE PeriLiqu in (2026) AND OrdeLian > 0");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, NumeLiqu, OrdeLian");
    stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
    stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '7' AND ActuLiqu = 'Si' AND (liquidacion.PeriLiqu in ('2026'))");
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

  public List<DTOBoletoAntenaGuay> obtenerLiquAntenas(
    EmisionMasivaComercios emt,
    int desde,
    int hasta)
  {
    List<DTOBoletoAntenaGuay> boletoAntenaGuayList = new List<DTOBoletoAntenaGuay>();
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.AppendLine("SELECT liquante.CodiCome, liquante.TipoVenc, OrdeLian, liquante.FeacLian, liquante.BimeLiqu, SUM(TotaLian) AS TotaLian, boleto.PeriBole, boleto.NumeBole, SUM(if (liquante.CodiConc = '13030202',TotaLian,0)) RecaBole,");
    stringBuilder1.AppendLine("boleto.FeveBole AS FeveLian, CAST(boleto.TotaBole AS DOUBLE(10, 2)) AS TotaBole, boleto.CodiUsua, boleto.CucuPers, p1.DetaPers, IFNULL(p2.DetaPers, '') AS Vinculo, RazoCome, DeudLian, CAST((IFNULL(ImpoLian, 0) - IFNULL(TotaLade, 0)) AS DOUBLE(10, 2)) AS ImpoLian, CAST(ExenLian + DescLian AS DOUBLE(10, 2)) AS DescLian, IFNULL(liandeta.TotaLade, 0) AS CEmision,");
    stringBuilder1.AppendLine("CallLian AS DetaCall, NucaLian, BarrLian AS DetaBarr, ManzLian, CasaLian, UbicLian, LocaLian AS DetaLoca, CopoLian, IFNULL(domicilio.calle, '') AS CallLianReal, IFNULL(domicilio.NumeCalle, '0') AS NucaLianReal, IFNULL(domicilio.barrio, '') AS BarrLianReal, IFNULL(domicilio.Manzana, '') AS ManzLianReal, IFNULL(domicilio.Casa, '') AS CasaLianReal, CONCAT(IFNULL(domicilio.Monoblock, ''), IF(IFNULL(domicilio.Dpto, '') <> '', ' - ', ''), IFNULL(domicilio.Dpto, ''), IF(IFNULL(domicilio.Planta, '') <> '', ' - ', ''), IFNULL(domicilio.Planta, ''), IF(IFNULL(domicilio.NroLocal, '') <> '', ' - ', ''), IFNULL(domicilio.NroLocal, '')) AS UbicLianReal, IFNULL(domicilio.Localidad, '') AS LocaLianReal, IFNULL(domicilio.CodPostal, '0') AS CopoLianReal,");
    stringBuilder1.AppendLine("( SELECT CAST(GROUP_CONCAT(DISTINCT if (lq2.TipoVenc = 1,lq2.BimeLiqu,'anual')");
    stringBuilder1.AppendLine("ORDER BY lq2.TipoVenc, lq2.BimeLiqu ASC SEPARATOR ', ') AS CHAR)");
    stringBuilder1.AppendLine("FROM liquante AS lq2");
    stringBuilder1.AppendLine("WHERE lq2.TipoLian = liquante.TipoLian AND FeacLian IS NOT NULL AND lq2.PeriLiqu = liquante.PeriLiqu AND lq2.CodiTili = liquante.CodiTili AND lq2.NumeLiqu = liquante.NumeLiqu AND lq2.OrdeLian = liquante.OrdeLian) AS Bimestres, liquante.Vinculo DireccionQr, boleto.TipoBole");
    stringBuilder1.AppendLine("FROM liquante");
    stringBuilder1.AppendLine("INNER JOIN boleto ON boleto.CodiOfic = 7 AND boleto.CuenCtct = liquante.CodiCome AND boleto.PeriBole = liquante.PeriBole AND boleto.NumeBole = liquante.NumeBole");
    stringBuilder1.AppendLine("LEFT JOIN liandeta ON liandeta.PeriLiqu = liquante.PeriLiqu AND liandeta.CodiTili = liquante.CodiTili AND liandeta.NumeLiqu = liquante.NumeLiqu AND liandeta.BimeLiqu = liquante.BimeLiqu AND liandeta.CodiConc = '13020601' AND liandeta.CodiCome = liquante.CodiCome AND liandeta.TipoVenc = liquante.TipoVenc AND liandeta.CodiSubr = 999");
    stringBuilder1.AppendLine("LEFT JOIN antena ON antena.CodiCome = boleto.CuenCtct");
    stringBuilder1.AppendLine("LEFT JOIN infogov.persona AS p1 ON p1.CucuPers = liquante.CucuPers");
    stringBuilder1.AppendLine("LEFT JOIN relacion ON relacion.CodiOfic = 7 AND relacion.CuenCtct = antena.CodiCome AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL");
    stringBuilder1.AppendLine("LEFT JOIN infogov.persona AS p2 ON p2.CucuPers = relacion.CucuPers");
    stringBuilder1.AppendLine("LEFT JOIN domicilio ON domicilio.CodiCome = liquante.CodiCome AND domicilio.CodiOfic = 7 AND domicilio.Tipo = 'COMERCIAL'");
    StringBuilder stringBuilder2 = stringBuilder1;
    int num1 = emt.PeriLiqu;
    string str1 = num1.ToString();
    num1 = emt.CodiTili;
    string str2 = num1.ToString();
    string str3 = $"WHERE TipoLian = 'Aforo' AND FeacLian IS NOT NULL AND liquante.PeriLiqu = {str1} AND liquante.CodiTili = {str2}";
    stringBuilder2.AppendLine(str3);
    stringBuilder1.AppendLine($"AND liquante.NumeLiqu = {emt.NumeLiqu.ToString()} AND liquante.OrdeLian BETWEEN {desde.ToString()} AND {hasta.ToString()}");
    stringBuilder1.AppendLine("GROUP BY OrdeLian, TipoVenc, BimeLiqu, liquante.PeriBole, liquante.NumeBole");
    stringBuilder1.AppendLine("HAVING TotaLian<> 0");
    stringBuilder1.AppendLine("ORDER BY OrdeLian, PeriBole, TipoVenc DESC, BimeLiqu");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder1.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOBoletoAntenaGuay boletoAntenaGuay1 = new DTOBoletoAntenaGuay();
        boletoAntenaGuay1.PeriLiqu = emt.PeriLiqu;
        boletoAntenaGuay1.CodiTili = (short) emt.CodiTili;
        boletoAntenaGuay1.NumeLiqu = (short) emt.NumeLiqu;
        boletoAntenaGuay1.CodiCome = nfoGovReader.readInt("CodiCome");
        boletoAntenaGuay1.RazoCome = nfoGovReader.readString("RazoCome");
        boletoAntenaGuay1.TipoVenc = nfoGovReader.readInt("TipoVenc");
        boletoAntenaGuay1.OrdeLian = nfoGovReader.readInt("OrdeLian");
        boletoAntenaGuay1.FeacLian = nfoGovReader.readDateTime("FeacLian");
        boletoAntenaGuay1.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        boletoAntenaGuay1.TotaLian = nfoGovReader.readDecimal("TotaLian");
        boletoAntenaGuay1.PeriBole = nfoGovReader.readInt("PeriBole");
        boletoAntenaGuay1.NumeBole = nfoGovReader.readInt("NumeBole");
        boletoAntenaGuay1.TotaBole = nfoGovReader.readDecimal("TotaBole");
        boletoAntenaGuay1.CodiUsua = nfoGovReader.readString("CodiUsua");
        boletoAntenaGuay1.CucuPers = nfoGovReader.readLong("CucuPers").ToString();
        boletoAntenaGuay1.DetaPers = nfoGovReader.readString("DetaPers");
        boletoAntenaGuay1.CallLian = nfoGovReader.readString("DetaCall");
        boletoAntenaGuay1.NucaLian = nfoGovReader.readInt("NucaLian");
        boletoAntenaGuay1.BarrLian = nfoGovReader.readString("DetaBarr");
        boletoAntenaGuay1.ManzLian = nfoGovReader.readString("ManzLian");
        boletoAntenaGuay1.CasaLian = nfoGovReader.readString("CasaLian");
        boletoAntenaGuay1.UbicLian = nfoGovReader.readString("UbicLian");
        boletoAntenaGuay1.LocaLian = nfoGovReader.readString("DetaLoca");
        boletoAntenaGuay1.CopoLian = nfoGovReader.readString("CopoLian");
        boletoAntenaGuay1.CallLianReal = nfoGovReader.readString("CallLianReal");
        boletoAntenaGuay1.NucaLianReal = nfoGovReader.readString("NucaLianReal");
        boletoAntenaGuay1.BarrLianReal = nfoGovReader.readString("BarrLianReal");
        boletoAntenaGuay1.ManzLianReal = nfoGovReader.readString("ManzLianReal");
        boletoAntenaGuay1.CasaLianReal = nfoGovReader.readString("CasaLianReal");
        boletoAntenaGuay1.UbicLianReal = nfoGovReader.readString("UbicLianReal");
        boletoAntenaGuay1.LocaLianReal = nfoGovReader.readString("LocaLianReal");
        boletoAntenaGuay1.CopoLianReal = nfoGovReader.readString("CopoLianReal");
        boletoAntenaGuay1.DireccionQr = nfoGovReader.readString("DireccionQr");
        boletoAntenaGuay1.DeudLian = nfoGovReader.readDecimal("DeudLian");
        DTOBoletoAntenaGuay boletoAntenaGuay2 = boletoAntenaGuay1;
        int num2 = boletoAntenaGuay1.CodiCome;
        string str4 = num2.ToString().PadLeft(9, '0');
        num2 = boletoAntenaGuay1.OrdeLian;
        string str5 = num2.ToString().PadLeft(6, '0');
        string str6 = $"7{str4}{str5}";
        boletoAntenaGuay2.Barrita = str6;
        DTOBoletoAntenaGuay boletoAntenaGuay3 = boletoAntenaGuay1;
        num2 = boletoAntenaGuay1.CodiCome;
        string str7 = "7" + num2.ToString().PadLeft(6, '0');
        boletoAntenaGuay3.pagomisctas = str7;
        DTOBoletoAntenaGuay boletoAntenaGuay4 = boletoAntenaGuay1;
        num2 = boletoAntenaGuay1.CodiCome;
        string str8 = "7" + num2.ToString().PadLeft(12, '0');
        boletoAntenaGuay4.redlink = str8;
        boletoAntenaGuay1.cupaux.Add(new CuponAntenaAux()
        {
          DescLian = nfoGovReader.readDecimal("DescLian"),
          DeudLian = nfoGovReader.readDecimal("DeudLian"),
          RecaBole = nfoGovReader.readDecimal("RecaBole"),
          FeveLian = nfoGovReader.readDateTime("FeveLian"),
          BimeLiqu = nfoGovReader.readInt("BimeLiqu"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          TipoVenc = nfoGovReader.readInt("TipoVenc"),
          TotaBole = nfoGovReader.readDecimal("TotaBole"),
          TipoBole = nfoGovReader.readString("TipoBole")
        });
        boletoAntenaGuayList.Add(boletoAntenaGuay1);
      }
    }
    nfoGovReader.Close();
    return boletoAntenaGuayList;
  }

  public CuponAntena obtenerCupon(
    EmisionMasivaComercios emt,
    DTOBoletoAntenaGuay comer,
    bool anual)
  {
    CuponAntena cupon = new CuponAntena();
    string sql;
    if (anual)
      sql = $"SELECT CAST(sum(if(CodiSubr <> 999,ImpoLade,0)) AS DOUBLE(10,2)) as ImpoLian, CAST(sum(if(CodiSubr <> 999,DecaLade+ExceLade,0)) AS DOUBLE(10,2)) as DescLian, CAST(sum(if(CodiSubr = 999,ImpoLade-DecaLade,0)) AS DOUBLE(10,2)) as CEmision , epagosanteqr.EpagosQr FROM liandeta LEFT JOIN epagosanteqr ON epagosanteqr.PeriLiqu = liandeta.PeriLiqu AND epagosanteqr.NumeLiqu = liandeta.NumeLiqu AND epagosanteqr.CodiCome = liandeta.CodiCome AND epagosanteqr.BimeLiqu = 7 WHERE liandeta.PeriLiqu = {emt.PeriLiqu.ToString()} AND liandeta.CodiTili = {emt.CodiTili.ToString()} AND liandeta.NumeLiqu = {emt.NumeLiqu.ToString()} AND TipoVenc = 2 AND liandeta.CodiCome = {comer.CodiCome.ToString()}";
    else
      sql = $"SELECT CAST(sum(if (CodiSubr<> 999,ImpoLade,0)) AS DOUBLE(10,2)) as ImpoLian, CAST(sum(if (CodiSubr<> 999,DecaLade + ExceLade,0)) AS DOUBLE(10,2)) as DescLian, CAST(sum(if (CodiSubr = 999,ImpoLade - DecaLade,0)) AS DOUBLE(10,2)) as CEmision , epagosanteqr.EpagosQr FROM liandeta LEFT JOIN epagosanteqr ON epagosanteqr.PeriLiqu = liandeta.PeriLiqu AND epagosanteqr.NumeLiqu = liandeta.NumeLiqu AND epagosanteqr.CodiCome = liandeta.CodiCome AND epagosanteqr.BimeLiqu = liandeta.BimeLiqu WHERE liandeta.PeriLiqu = {emt.PeriLiqu.ToString()} AND liandeta.NumeLiqu = {emt.NumeLiqu.ToString()} AND liandeta.CodiCome = {comer.CodiCome.ToString()} AND TipoVenc = 1 AND liandeta.BimeLiqu ={comer.BimeLiqu.ToString()};";
    InfoGovReader nfoGovReader = this.conn.executeReader(sql);
    if (nfoGovReader.HasRows)
    {
      nfoGovReader.Read();
      cupon.ImpoLian = nfoGovReader.readDecimal("ImpoLian");
      cupon.CEmision = nfoGovReader.readDecimal("CEmision");
      cupon.EpagosQr = nfoGovReader.readImage("EpagosQr");
      if (anual)
        cupon.DescLian = nfoGovReader.readDecimal("DescLian");
      foreach (CuponAntenaAux cuponAntenaAux in comer.cupaux)
      {
        cupon.TipoBole = cuponAntenaAux.TipoBole;
        if (comer.TipoVenc == 1)
        {
          switch (comer.BimeLiqu)
          {
            case 1:
              cupon.FeveLian = cuponAntenaAux.FeveLian;
              cupon.DeudLian = cuponAntenaAux.DeudLian;
              cupon.RecaBole = cuponAntenaAux.RecaBole;
              cupon.BimeLiqu = cuponAntenaAux.BimeLiqu;
              cupon.PeriBole = cuponAntenaAux.PeriBole;
              cupon.NumeBole = cuponAntenaAux.NumeBole;
              cupon.TipoVenc = cuponAntenaAux.TipoVenc;
              cupon.TotaBole = cuponAntenaAux.TotaBole;
              break;
            case 2:
              cupon.FeveLian = cuponAntenaAux.FeveLian;
              cupon.DeudLian = cuponAntenaAux.DeudLian;
              cupon.RecaBole = cuponAntenaAux.RecaBole;
              cupon.BimeLiqu = cuponAntenaAux.BimeLiqu;
              cupon.PeriBole = cuponAntenaAux.PeriBole;
              cupon.NumeBole = cuponAntenaAux.NumeBole;
              cupon.TipoVenc = cuponAntenaAux.TipoVenc;
              cupon.TotaBole = cuponAntenaAux.TotaBole;
              break;
            case 3:
              cupon.FeveLian = cuponAntenaAux.FeveLian;
              cupon.DeudLian = cuponAntenaAux.DeudLian;
              cupon.RecaBole = cuponAntenaAux.RecaBole;
              cupon.BimeLiqu = cuponAntenaAux.BimeLiqu;
              cupon.PeriBole = cuponAntenaAux.PeriBole;
              cupon.NumeBole = cuponAntenaAux.NumeBole;
              cupon.TipoVenc = cuponAntenaAux.TipoVenc;
              cupon.TotaBole = cuponAntenaAux.TotaBole;
              break;
            case 4:
              cupon.FeveLian = cuponAntenaAux.FeveLian;
              cupon.DeudLian = cuponAntenaAux.DeudLian;
              cupon.RecaBole = cuponAntenaAux.RecaBole;
              cupon.BimeLiqu = cuponAntenaAux.BimeLiqu;
              cupon.PeriBole = cuponAntenaAux.PeriBole;
              cupon.NumeBole = cuponAntenaAux.NumeBole;
              cupon.TipoVenc = cuponAntenaAux.TipoVenc;
              cupon.TotaBole = cuponAntenaAux.TotaBole;
              break;
            case 5:
              cupon.FeveLian = cuponAntenaAux.FeveLian;
              cupon.DeudLian = cuponAntenaAux.DeudLian;
              cupon.RecaBole = cuponAntenaAux.RecaBole;
              cupon.BimeLiqu = cuponAntenaAux.BimeLiqu;
              cupon.PeriBole = cuponAntenaAux.PeriBole;
              cupon.NumeBole = cuponAntenaAux.NumeBole;
              cupon.TipoVenc = cuponAntenaAux.TipoVenc;
              cupon.TotaBole = cuponAntenaAux.TotaBole;
              break;
            case 6:
              cupon.FeveLian = cuponAntenaAux.FeveLian;
              cupon.DeudLian = cuponAntenaAux.DeudLian;
              cupon.RecaBole = cuponAntenaAux.RecaBole;
              cupon.BimeLiqu = cuponAntenaAux.BimeLiqu;
              cupon.PeriBole = cuponAntenaAux.PeriBole;
              cupon.NumeBole = cuponAntenaAux.NumeBole;
              cupon.TipoVenc = cuponAntenaAux.TipoVenc;
              cupon.TotaBole = cuponAntenaAux.TotaBole;
              break;
          }
        }
        else if (comer.TipoVenc == 2)
        {
          cupon.RecaBole = cuponAntenaAux.RecaBole;
          cupon.DeudLian = cuponAntenaAux.DeudLian;
          cupon.FeveLian = cuponAntenaAux.FeveLian;
          cupon.BimeLiqu = cuponAntenaAux.BimeLiqu;
          cupon.PeriBole = cuponAntenaAux.PeriBole;
          cupon.NumeBole = cuponAntenaAux.NumeBole;
          cupon.TipoVenc = cuponAntenaAux.TipoVenc;
          cupon.TotaBole = cuponAntenaAux.TotaBole;
        }
      }
    }
    nfoGovReader.Close();
    cupon.CodigoBarraCupon = this.GenerarCodigoBarra(comer, cupon);
    return cupon;
  }

  public string GenerarCodigoBarra(DTOBoletoAntenaGuay comer, CuponAntena cupon)
  {
    DateTime dateTime1 = new DateTime();
    dateTime1 = comer.PeriLiqu != 2025 || comer.NumeLiqu != (short) 2 || cupon.BimeLiqu != 3 ? cupon.FeveLian : new DateTime(2025, 6, 18);
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
    strArray[5] = "11177";
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
      num += (long) (int.Parse(barra[index].ToString()) * numArray[(50 - index) % 5]);
    return Math.Abs(num - num / 100L * 100L - num / 100L).ToString().PadLeft(3, '0');
  }

  public void ProcesarCalcularDeudas(List<DTOBoletoAntenaGuay> listaRepo)
  {
    foreach (DTOBoletoAntenaGuay dto in listaRepo)
      this.CalcularDeudas(dto);
  }

  public DTOBoletoAntenaGuay CalcularDeudas(DTOBoletoAntenaGuay dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.conn.executeNonQuery($"CALL `fnDeuda`('7', '{dto.CodiCome.ToString()}', '2025-12-31');");
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT SUM(SaldCtct) SaldCtct, SUM(RecaCtct) RecaCtct FROM tmp_ctacteboleto WHERE CodiFapa = 0 AND FealCtct <= '2025-12-31';");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        dto.DeudLian = nfoGovReader.readDecimal("SaldCtct");
    }
    nfoGovReader?.Close();
    return dto;
  }

  public EmisionMasivaComercios getOrdenPorAntena(int comer)
  {
    StringBuilder stringBuilder = new StringBuilder();
    EmisionMasivaComercios ordenPorAntena = new EmisionMasivaComercios();
    stringBuilder.AppendLine("SELECT *");
    stringBuilder.AppendLine("FROM liquante");
    stringBuilder.AppendLine($"WHERE PeriLiqu = {PARAMS.Periodo.ToString()} AND CodiTili = 1");
    stringBuilder.AppendLine($"AND CodiCome = {comer.ToString()} AND CodiConc = '13020601'");
    stringBuilder.AppendLine("AND TipoVenc = 1 AND ActuLian = 'Si'");
    stringBuilder.AppendLine("ORDER BY PeriLiqu, CodiTili, NumeLiqu DESC, CodiCome, OrdeLian");
    stringBuilder.AppendLine("LIMIT 1;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ordenPorAntena.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
        ordenPorAntena.NumeLiqu = (int) nfoGovReader.readShort("NumeLiqu");
        ordenPorAntena.CantOrdeLico = nfoGovReader.readInt("OrdeLian");
        ordenPorAntena.CodiOfic = 4;
        ordenPorAntena.CodiTili = nfoGovReader.readInt("CodiTili");
        ordenPorAntena.NumeLiqu = nfoGovReader.readInt("NumeLiqu");
      }
    }
    nfoGovReader.Close();
    return ordenPorAntena;
  }
}
