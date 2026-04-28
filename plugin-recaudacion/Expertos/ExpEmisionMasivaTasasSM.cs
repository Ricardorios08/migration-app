// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEmisionMasivaTasasSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoSM;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpEmisionMasivaTasasSM : Expert
{
  public ExpEmisionMasivaTasasSM()
    : base(Modulo.Database, true)
  {
  }

  public List<EmisionMasivaTasas> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<EmisionMasivaTasas> gridData = new List<EmisionMasivaTasas>();
    stringBuilder.AppendLine("SELECT liquidacion.*,MAX(OrdeLita) MaxOrdeLita, tipoliqu.DetaTili, tipoliqu.LeyeTili");
    stringBuilder.AppendLine("FROM liquidacion");
    stringBuilder.AppendLine("INNER JOIN (");
    stringBuilder.AppendLine("SELECT PeriLiqu,NumeLiqu,OrdeLita");
    stringBuilder.AppendLine("FROM liqutasa");
    stringBuilder.AppendLine("WHERE PeriLiqu IN (2026) AND OrdeLita > 0");
    stringBuilder.AppendLine("GROUP BY PeriLiqu,NumeLiqu,OrdeLita");
    stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
    stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '1' AND ActuLiqu = 'Si' ");
    stringBuilder.AppendLine("AND (liquidacion.PeriLiqu IN (2026))");
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

  private EmisionMasivaTasas readLiquidacion(InfoGovReader dr)
  {
    return new EmisionMasivaTasas()
    {
      PeriLiqu = dr.readInt("PeriLiqu"),
      CodiOfic = dr.readInt("CodiOfic"),
      CodiTili = dr.readInt("CodiTili"),
      NumeLiqu = dr.readInt("NumeLiqu"),
      DetaTili = dr.readString("DetaTili"),
      ActuLiqu = dr.readString("ActuLiqu"),
      LeyeTili = dr.readString("LeyeTili"),
      FealLiqu = dr.readDateTime("FealLiqu"),
      CantOrdeLita = dr.readInt("MaxOrdeLita")
    };
  }

  public int sugiereOrdenNew(EmisionMasivaTasas row)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT MAX(OrdeLita)");
    stringBuilder.AppendLine("FROM liqutasa");
    stringBuilder.AppendLine($"WHERE liqutasa.PeriLiqu = {row.PeriLiqu.ToString()} AND liqutasa.CodiTili = {row.CodiTili.ToString()} AND liqutasa.NumeLiqu = {row.NumeLiqu.ToString()}");
    stringBuilder.AppendLine("AND TipoLita = 'Aforo' AND FeacLita IS NOT NULL");
    return this.conn.executeInt(stringBuilder.ToString());
  }

  public List<DTOBoletoInmuSM> obtenerTasasSM(EmisionMasivaTasas emt, int desde, int hasta)
  {
    List<DTOBoletoInmuSM> dtoBoletoInmuSmList = new List<DTOBoletoInmuSM>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT liqutasa.*, p.DetaPers");
    stringBuilder.AppendLine(", i.NomeInmu,i.DptoInmu, i.DistInmu, i.SeccInmu, i.ManzInmu, i.ParcInmu, i.SubpInmu, i.DigiInmu");
    stringBuilder.AppendLine(", d1.CodiCalle CodiCallReal, d1.Calle CallLitaReal");
    stringBuilder.AppendLine(", d1.NumeCalle NucaLitaReal, d1.CodiBarrio CodiBarrReal, d1.Barrio BarrLitaReal");
    stringBuilder.AppendLine(", d1.Manzana ManzLitaReal, d1.Lote CasaLitaReal, d1.Monoblock MonoblockReal, d1.Dpto DptoReal, d1.Lote LoteLitaReal, d1.Ubicacion UbicLitaReal");
    stringBuilder.AppendLine(", d1.CodiLoca CodiLocaReal, d1.Localidad LocaLitaReal, d1.CodPostal CopoLitaReal");
    stringBuilder.AppendLine(", d2.CodiCalle CodiCallPostal, d2.Calle CallLitaPostal");
    stringBuilder.AppendLine(", d2.NumeCalle NucaLitaPostal, d2.CodiBarrio CodiBarrPostal, d2.Barrio BarrLitaPostal");
    stringBuilder.AppendLine(", d2.Manzana ManzLitaPostal, d2.Lote CasaLitaPostal, d2.Monoblock MonoblockPostal, d2.Dpto DptoPostal, d2.Lote LoteLitaPostal, d2.Ubicacion UbicLitaPostal");
    stringBuilder.AppendLine(", d2.CodiLoca CodiLocaPostal, d2.Localidad LocaLitaPostal, d2.CodPostal CopoLitaPostal");
    stringBuilder.AppendLine(", TotaBole, FeveBole");
    stringBuilder.AppendLine("FROM liqutasa");
    stringBuilder.AppendLine("LEFT JOIN boleto ON boleto.PeriBole = liqutasa.PeriBole AND boleto.NumeBole = liqutasa.NumeBole");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = liqutasa.CucuPers");
    stringBuilder.AppendLine("INNER JOIN inmueble i ON i.CodiInmu = liqutasa.CodiInmu");
    stringBuilder.AppendLine("LEFT JOIN domicilio d1 ON d1.CodiOfic = 1 AND d1.CodiCome = liqutasa.CodiInmu AND d1.Tipo = 'DOMICILIO REAL'");
    stringBuilder.AppendLine("LEFT JOIN domicilio d2 ON d2.CodiOfic = 1 AND d2.CodiCome = liqutasa.CodiInmu AND d2.Tipo = 'DOMICILIO POSTAL'");
    stringBuilder.AppendLine("WHERE TipoLita = 'Aforo'");
    stringBuilder.AppendLine("AND FeacLita IS NOT NULL");
    stringBuilder.AppendLine($"AND liqutasa.PeriLiqu = {emt.PeriLiqu.ToString()} AND liqutasa.CodiTili = 1 AND liqutasa.NumeLiqu = {emt.NumeLiqu.ToString()} AND liqutasa.OrdeLita >= {desde.ToString()} AND liqutasa.OrdeLita <= {hasta.ToString()}");
    stringBuilder.AppendLine("GROUP BY OrdeLita, TipoVenc DESC, BimeLiqu, PeriBole, NumeBole");
    stringBuilder.AppendLine("HAVING TotaLita<> 0;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOBoletoInmuSM dtoBoletoInmuSm1 = new DTOBoletoInmuSM()
        {
          PeriLiqu = nfoGovReader.readInt("PeriLiqu"),
          CodiTili = nfoGovReader.readShort("CodiTili"),
          NumeLiqu = nfoGovReader.readShort("NumeLiqu"),
          CodiInmu = nfoGovReader.readInt("CodiInmu")
        };
        dtoBoletoInmuSm1.CuenCtct = dtoBoletoInmuSm1.CodiInmu.ToString().PadLeft(8, '0');
        dtoBoletoInmuSm1.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        dtoBoletoInmuSm1.TipoVenc = dtoBoletoInmuSm1.BimeLiqu == 7 ? 2 : nfoGovReader.readInt("TipoVenc");
        dtoBoletoInmuSm1.OrdeLita = nfoGovReader.readInt("OrdeLita");
        dtoBoletoInmuSm1.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        dtoBoletoInmuSm1.PeriBole = nfoGovReader.readInt("PeriBole");
        dtoBoletoInmuSm1.NumeBole = nfoGovReader.readInt("NumeBole");
        dtoBoletoInmuSm1.FeveLita = nfoGovReader.readDateTime("FeveBole");
        dtoBoletoInmuSm1.TotaBole = nfoGovReader.readDecimal("TotaBole");
        dtoBoletoInmuSm1.CucuPers = nfoGovReader.readLong("CucuPers").ToString();
        dtoBoletoInmuSm1.DetaPers = nfoGovReader.readString("DetaPers");
        dtoBoletoInmuSm1.CallLita = nfoGovReader.readString("CallLitaPostal");
        dtoBoletoInmuSm1.NucaLita = nfoGovReader.readString("NucaLitaPostal");
        dtoBoletoInmuSm1.BarrLita = nfoGovReader.readString("BarrLitaPostal");
        dtoBoletoInmuSm1.ManzLita = nfoGovReader.readString("ManzLitaPostal");
        dtoBoletoInmuSm1.CasaLita = nfoGovReader.readString("CasaLitaPostal");
        dtoBoletoInmuSm1.MonoblockLita = nfoGovReader.readString("MonoblockPostal");
        dtoBoletoInmuSm1.DptoDomiLita = nfoGovReader.readString("DptoPostal");
        dtoBoletoInmuSm1.UbicLita = nfoGovReader.readString("UbicLitaPostal");
        dtoBoletoInmuSm1.LocaLita = nfoGovReader.readString("LocaLitaPostal");
        dtoBoletoInmuSm1.CopoLita = nfoGovReader.readInt("CopoLitaPostal");
        dtoBoletoInmuSm1.DomiLitaPostal = $"{dtoBoletoInmuSm1.CallLita} Nro: {dtoBoletoInmuSm1.NucaLita} - B*: {dtoBoletoInmuSm1.BarrLita} Casa: {dtoBoletoInmuSm1.CasaLita} Mz: {dtoBoletoInmuSm1.ManzLita} Dpto: {dtoBoletoInmuSm1.DptoDomiLita} Mbk: {dtoBoletoInmuSm1.MonoblockLita}";
        dtoBoletoInmuSm1.CallLitaReal = nfoGovReader.readString("CallLitaReal");
        dtoBoletoInmuSm1.NucaLitaReal = nfoGovReader.readString("NucaLitaReal");
        dtoBoletoInmuSm1.BarrLitaReal = nfoGovReader.readString("BarrLitaReal");
        dtoBoletoInmuSm1.ManzLitaReal = nfoGovReader.readString("ManzLitaReal");
        dtoBoletoInmuSm1.CasaLitaReal = nfoGovReader.readString("CasaLitaReal");
        dtoBoletoInmuSm1.MonoblockLitaReal = nfoGovReader.readString("MonoblockReal");
        dtoBoletoInmuSm1.DptoDomiLitaReal = nfoGovReader.readString("DptoReal");
        dtoBoletoInmuSm1.UbicLitaReal = nfoGovReader.readString("UbicLitaReal");
        dtoBoletoInmuSm1.LocaLitaReal = nfoGovReader.readString("LocaLitaReal");
        dtoBoletoInmuSm1.CopoLitaReal = nfoGovReader.readInt("CopoLitaReal");
        dtoBoletoInmuSm1.DomiLitaReal = $"{dtoBoletoInmuSm1.CallLitaReal} Nro: {dtoBoletoInmuSm1.NucaLitaReal} - B*: {dtoBoletoInmuSm1.BarrLitaReal} Casa: {dtoBoletoInmuSm1.CasaLitaReal} Mz: {dtoBoletoInmuSm1.ManzLitaReal} Dpto: {dtoBoletoInmuSm1.DptoDomiLitaReal} Mbk: {dtoBoletoInmuSm1.MonoblockLitaReal}";
        dtoBoletoInmuSm1.DptoLita = nfoGovReader.readShort("DptoInmu");
        dtoBoletoInmuSm1.DistLita = nfoGovReader.readShort("DistInmu");
        dtoBoletoInmuSm1.SeccLita = nfoGovReader.readShort("SeccInmu");
        dtoBoletoInmuSm1.MansLita = nfoGovReader.readShort("ManzInmu");
        dtoBoletoInmuSm1.ParcLita = nfoGovReader.readInt("ParcInmu");
        dtoBoletoInmuSm1.SubpLita = nfoGovReader.readInt("SubpInmu");
        dtoBoletoInmuSm1.DigiLita = nfoGovReader.readShort("DigiInmu");
        DTOBoletoInmuSM dtoBoletoInmuSm2 = dtoBoletoInmuSm1;
        string[] strArray = new string[13];
        short num = dtoBoletoInmuSm1.DptoLita;
        strArray[0] = num.ToString().PadLeft(2, '0');
        strArray[1] = " ";
        num = dtoBoletoInmuSm1.DistLita;
        strArray[2] = num.ToString().PadLeft(2, '0');
        strArray[3] = " ";
        num = dtoBoletoInmuSm1.SeccLita;
        strArray[4] = num.ToString().PadLeft(2, '0');
        strArray[5] = " ";
        num = dtoBoletoInmuSm1.MansLita;
        strArray[6] = num.ToString().PadLeft(4, '0');
        strArray[7] = " ";
        strArray[8] = dtoBoletoInmuSm1.ParcLita.ToString().PadLeft(6, '0');
        strArray[9] = " ";
        strArray[10] = dtoBoletoInmuSm1.SubpLita.ToString().PadLeft(4, '0');
        strArray[11] = " ";
        num = dtoBoletoInmuSm1.DigiLita;
        strArray[12] = num.ToString().PadLeft(2, '0');
        string str = string.Concat(strArray);
        dtoBoletoInmuSm2.NomeLita = str;
        dtoBoletoInmuSm1.DeudLita = nfoGovReader.readDecimal("DeudLita");
        dtoBoletoInmuSm1.BanelcoLink = "0101" + dtoBoletoInmuSm1.CodiInmu.ToString().PadLeft(6, '0');
        dtoBoletoInmuSm1.cupoaux.Add(new DTOBoletoInmuSM.CuponAuxInmuSM()
        {
          DeudLita = nfoGovReader.readDecimal("DeudLita"),
          ImpoLita = nfoGovReader.readDecimal("ImpoLita"),
          CrafLita = nfoGovReader.readDecimal("CrafLita"),
          ExenLita = nfoGovReader.readDecimal("ExenLita"),
          DescLita = nfoGovReader.readDecimal("DescLita"),
          GastLita = nfoGovReader.readDecimal("GastLita"),
          TotaLita = nfoGovReader.readDecimal("TotaLita"),
          FeveLita = nfoGovReader.readDateTime("FeveBole"),
          BimeLiqu = nfoGovReader.readInt("BimeLiqu"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          TipoVenc = nfoGovReader.readInt("TipoVenc"),
          TotaBole = nfoGovReader.readDecimal("TotaBole")
        });
        dtoBoletoInmuSmList.Add(dtoBoletoInmuSm1);
      }
    }
    nfoGovReader.Close();
    return dtoBoletoInmuSmList;
  }

  public DTOBoletoInmuSM.CuponInmuSM obtenerCuponSM(
    EmisionMasivaTasas emt,
    DTOBoletoInmuSM tasa,
    bool anual)
  {
    DTOBoletoInmuSM.CuponInmuSM cupon = new DTOBoletoInmuSM.CuponInmuSM();
    string sql;
    if (anual)
      sql = $"SELECT CAST(SUM(ImpoLtde) AS DECIMAL(11,2)) AS Basico , CAST(SUM(DecaLtde) + SUM(litadeta.DecadiaLtde) AS DECIMAL(11, 2)) AS Descuento , IFNULL(epagosqrinmu.EpagosQrText,'') EpagosQrText FROM litadeta LEFT JOIN epagosqrinmu ON epagosqrinmu.PeriLiqu = litadeta.PeriLiqu AND epagosqrinmu.NumeLiqu = litadeta.NumeLiqu AND epagosqrinmu.CodiInmu = litadeta.CodiInmu AND epagosqrinmu.BimeLiqu = 7 WHERE litadeta.PeriLiqu = {emt.PeriLiqu.ToString()} AND CodiTili = {emt.CodiTili.ToString()} AND litadeta.NumeLiqu = {emt.NumeLiqu.ToString()} AND litadeta.CodiInmu = {tasa.CodiInmu.ToString()} AND CodiConc = '13020100' AND TipoVenc = 2;";
    else
      sql = $"SELECT CAST(SUM(ImpoLtde) AS DECIMAL(11,2)) AS Basico, CAST(SUM(DecaLtde) AS DECIMAL(11,2)) AS Descuento, IFNULL(epagosqrinmu.EpagosQrText,'') EpagosQrText FROM litadeta LEFT JOIN epagosqrinmu ON epagosqrinmu.PeriLiqu = litadeta.PeriLiqu AND epagosqrinmu.NumeLiqu = litadeta.NumeLiqu AND epagosqrinmu.CodiInmu = litadeta.CodiInmu AND epagosqrinmu.BimeLiqu = litadeta.BimeLiqu WHERE CodiConc = '13020100' AND litadeta.PeriLiqu = {emt.PeriLiqu.ToString()} AND CodiTili = {emt.CodiTili.ToString()} AND litadeta.NumeLiqu = {emt.NumeLiqu.ToString()} AND litadeta.BimeLiqu = {tasa.BimeLiqu.ToString()} AND TipoVenc = {tasa.TipoVenc.ToString()} AND litadeta.CodiInmu = {tasa.CodiInmu.ToString()};";
    InfoGovReader nfoGovReader1 = this.conn.executeReader(sql);
    if (nfoGovReader1.HasRows)
    {
      nfoGovReader1.Read();
      cupon.CuenCtct = tasa.CuenCtct;
      cupon.Basico = nfoGovReader1.readDecimal("Basico");
      cupon.Descuento = nfoGovReader1.readDecimal("Descuento");
      cupon.EpagosQrText = nfoGovReader1.readString("EpagosQrText");
      foreach (DTOBoletoInmuSM.CuponAuxInmuSM cuponAuxInmuSm in tasa.cupoaux)
      {
        cupon.FeveLita = cuponAuxInmuSm.FeveLita;
        cupon.BimeLiqu = cuponAuxInmuSm.BimeLiqu;
        cupon.PeriBole = cuponAuxInmuSm.PeriBole;
        cupon.NumeBole = cuponAuxInmuSm.NumeBole;
        cupon.TipoVenc = cuponAuxInmuSm.TipoVenc;
        cupon.TotaBole = cuponAuxInmuSm.TotaBole;
      }
    }
    nfoGovReader1.Close();
    cupon.CodigoBarraCupon = this.GenerarCodigoBarraSM(tasa, cupon);
    InfoGovReader nfoGovReader2 = this.conn.executeReader($"SELECT SUM(if(CodiConc='13020100',CapiDebo,0)) Basico , SUM(if (CodiConc = '13030204',CapiDebo,0)) Interes , SUM(if (CodiConc = '13031300',CapiDebo,0)) Bombero , SUM(if (CodiConc = '13031400',CapiDebo,0)) GastosAdm , SUM(if (CodiConc = '13030205',CapiDebo,0)) Redondeo , SUM(if (CodiConc = '13020100',DecaDebo,0)) Descuento FROM detabole WHERE PeriBole = {tasa.PeriBole.ToString()} AND numebole = {tasa.NumeBole.ToString()};");
    if (nfoGovReader2.HasRows)
    {
      nfoGovReader2.Read();
      cupon.Interes = nfoGovReader2.readDecimal("Interes");
      cupon.Bombero = nfoGovReader2.readDecimal("Bombero");
      cupon.GastosAdm = nfoGovReader2.readDecimal("GastosAdm");
      cupon.Redondeo = nfoGovReader2.readDecimal("Redondeo");
    }
    nfoGovReader2.Close();
    return cupon;
  }

  public string GenerarCodigoBarraSM(DTOBoletoInmuSM tasa, DTOBoletoInmuSM.CuponInmuSM cupon)
  {
    string str1 = ((long) (cupon.TotaBole * 100M)).ToString().PadLeft(10, '0');
    string str2 = cupon.NumeBole.ToString().PadLeft(8, '0');
    string str3 = cupon.FeveLita.ToString("ddMMyy");
    string str4 = "01";
    string str5 = tasa.PeriBole.ToString().Substring(2, 2).PadLeft(3, '0');
    string cadena = $"79013{str4}{str2}{str3}{str5}{str1}";
    return cadena + this.CodigoVerificadorSanMartin(cadena);
  }

  public string CodigoVerificadorSanMartin(string cadena)
  {
    int[] numArray = new int[5]{ 11, 13, 17, 19, 23 };
    long num1 = 0;
    cadena = cadena.ToUpper();
    for (int index = cadena.Length - 1; index >= 0; --index)
    {
      long num2 = (long) (int.Parse(cadena[index].ToString()) * numArray[(cadena.Length - 1 - index) % 5]);
      num1 += num2;
    }
    switch (num1.ToString().Length)
    {
      case 1:
      case 2:
        return "0" + num1.ToString().Substring(0, 1);
      case 3:
        return Math.Abs(int.Parse(num1.ToString().Substring(0, 1)) - int.Parse(num1.ToString().Substring(1, 2))).ToString("00");
      case 4:
        return Math.Abs(int.Parse(num1.ToString().Substring(0, 2)) - int.Parse(num1.ToString().Substring(2, 2))).ToString("00");
      default:
        return string.Empty;
    }
  }

  public EmisionMasivaTasas getOrdenPorPadronSM(int padron)
  {
    StringBuilder stringBuilder = new StringBuilder();
    EmisionMasivaTasas ordenPorPadronSm = new EmisionMasivaTasas();
    stringBuilder.AppendLine("SELECT *");
    stringBuilder.AppendLine("FROM liqutasa");
    stringBuilder.AppendLine($"WHERE PeriLiqu = {PARAMS.Periodo.ToString()} AND CodiTili = 1");
    stringBuilder.AppendLine($"AND CodiInmu = {padron.ToString()} AND CodiConc = '13020100'");
    stringBuilder.AppendLine("AND TipoVenc = 1 AND ActuLita = 'Si'");
    stringBuilder.AppendLine("ORDER BY PeriLiqu, CodiTili, NumeLiqu DESC, CodiInmu, OrdeLita");
    stringBuilder.AppendLine("LIMIT 1;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ordenPorPadronSm.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
        ordenPorPadronSm.NumeLiqu = (int) nfoGovReader.readShort("NumeLiqu");
        ordenPorPadronSm.CantOrdeLita = nfoGovReader.readInt("OrdeLita");
        ordenPorPadronSm.CodiOfic = 1;
        ordenPorPadronSm.CodiTili = nfoGovReader.readInt("CodiTili");
        ordenPorPadronSm.NumeLiqu = nfoGovReader.readInt("NumeLiqu");
      }
    }
    nfoGovReader.Close();
    return ordenPorPadronSm;
  }

  public void ProcesarCalcularDeudasSM(List<DTOBoletoInmuSM> listaRepo)
  {
    foreach (DTOBoletoInmuSM dto in listaRepo)
      this.CalcularDeudasSM(dto);
  }

  public DTOBoletoInmuSM CalcularDeudasSM(DTOBoletoInmuSM dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.conn.executeNonQuery($"CALL `fnDeuda`('1', '{dto.CodiInmu.ToString()}', '2024-12-31');");
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT SUM(SaldCtct) SaldCtct, SUM(RecaCtct) RecaCtct FROM tmp_ctacteboleto WHERE CodiFapa = 0 AND FealCtct <= '2024-12-31';");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        dto.Deuda = nfoGovReader.readDecimal("SaldCtct");
        dto.Recargo = nfoGovReader.readDecimal("RecaCtct");
      }
    }
    nfoGovReader?.Close();
    return dto;
  }
}
