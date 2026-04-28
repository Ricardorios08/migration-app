// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEmisionMasivaComercioSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioSM;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpEmisionMasivaComercioSM : Expert
{
  public ExpEmisionMasivaComercioSM()
    : base(Modulo.Database, true)
  {
  }

  public List<EmisionMasivaComercioSM> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<EmisionMasivaComercioSM> gridData = new List<EmisionMasivaComercioSM>();
    stringBuilder.AppendLine("SELECT liquidacion.*, MAX(OrdeLico) MaxOrdeLico, tipoliqu.DetaTili, tipoliqu.LeyeTili");
    stringBuilder.AppendLine("FROM liquidacion");
    stringBuilder.AppendLine("INNER JOIN (");
    stringBuilder.AppendLine("SELECT PeriLiqu, NumeLiqu, OrdeLico");
    stringBuilder.AppendLine("FROM liqucome");
    stringBuilder.AppendLine("WHERE PeriLiqu = 2026 AND OrdeLico > 0");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, NumeLiqu, OrdeLico");
    stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
    stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '2' AND ActuLiqu = 'Si'");
    stringBuilder.AppendLine("AND (liquidacion.PeriLiqu = 2026)");
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

  private EmisionMasivaComercioSM readLiquidacion(InfoGovReader dr)
  {
    return new EmisionMasivaComercioSM()
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

  public int sugiereOrdenNew(EmisionMasivaComercioSM row)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT MAX(OrdeLico)");
    stringBuilder.AppendLine("FROM liqucome");
    stringBuilder.AppendLine($"WHERE PeriLiqu = {row.PeriLiqu.ToString()} AND CodiTili = {row.CodiTili.ToString()} AND NumeLiqu = {row.NumeLiqu.ToString()}");
    stringBuilder.AppendLine("AND TipoLico = 'Aforo' AND FeacLico IS NOT NULL");
    return this.conn.executeInt(stringBuilder.ToString());
  }

  public List<DTOBoletoComerSM> obtenerComerciosSM(
    EmisionMasivaComercioSM emt,
    int desde,
    int hasta)
  {
    List<DTOBoletoComerSM> dtoBoletoComerSmList = new List<DTOBoletoComerSM>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT liqucome.*, p.DetaPers");
    stringBuilder.AppendLine(", d1.CodiCalle CodiCallPostal, d1.Calle CallLicoPostal");
    stringBuilder.AppendLine(", d1.NumeCalle NucaLicoPostal, d1.CodiBarrio CodiBarrPostal, d1.Barrio BarrLicoPostal");
    stringBuilder.AppendLine(", d1.Manzana ManzLicoPostal, d1.Lote CasaLicoPostal, d1.Dpto DptoPostal, d1.Monoblock MonoblockPostal, d1.Ubicacion UbicLicoPostal");
    stringBuilder.AppendLine(", d1.CodiLoca CodiLocaPostal, d1.Localidad LocaLicoPostal, d1.CodPostal CopoLicoPostal");
    stringBuilder.AppendLine(", d2.CodiCalle CodiCallReal, d2.Calle CallLicoReal");
    stringBuilder.AppendLine(", d2.NumeCalle NucaLicoReal, d2.CodiBarrio CodiBarrReal, d2.Barrio BarrLicoReal");
    stringBuilder.AppendLine(", d2.Manzana ManzLicoReal, d2.Lote CasaLicoReal, d2.Dpto DptoReal, d2.Monoblock MonoblockReal, d2.Ubicacion UbicLicoReal");
    stringBuilder.AppendLine(", d2.CodiLoca CodiLocaReal, d2.Localidad LocaLicoReal, d2.CodPostal CopoLicoReal, TotaBole, FeveBole");
    stringBuilder.AppendLine(", d1.Tipo, p.DecrPers, p.NurePers, p.DebrPers, p.MarePers, p.CarePers, p.DelrPers, p.CoprPers");
    stringBuilder.AppendLine("FROM liqucome");
    stringBuilder.AppendLine("LEFT JOIN boleto ON boleto.PeriBole = liqucome.PeriBole AND boleto.NumeBole = liqucome.NumeBole");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = liqucome.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN domicilio d1 ON d1.CodiOfic = 2 AND d1.CodiCome = liqucome.CodiCome AND d1.Tipo = 'DOMICILIO POSTAL'");
    stringBuilder.AppendLine("LEFT JOIN domicilio d2 ON d2.CodiOfic = 2 AND d2.CodiCome = liqucome.CodiCome AND d2.Tipo = 'DOMICILIO REAL'");
    stringBuilder.AppendLine("WHERE TipoLico = 'Aforo'");
    stringBuilder.AppendLine("AND FeacLico IS NOT NULL");
    stringBuilder.AppendLine($"AND liqucome.PeriLiqu = {emt.PeriLiqu.ToString()} AND liqucome.CodiTili = {emt.CodiTili.ToString()} AND liqucome.NumeLiqu = {emt.NumeLiqu.ToString()} AND liqucome.OrdeLico >= {desde.ToString()} AND liqucome.OrdeLico <= {hasta.ToString()}");
    stringBuilder.AppendLine("GROUP BY OrdeLico, TipoVenc DESC, BimeLiqu, PeriBole, NumeBole");
    stringBuilder.AppendLine("HAVING TotaLico<> 0;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOBoletoComerSM dtoBoletoComerSm = new DTOBoletoComerSM()
        {
          PeriLiqu = nfoGovReader.readInt("PeriLiqu"),
          CodiTili = nfoGovReader.readShort("CodiTili"),
          NumeLiqu = nfoGovReader.readShort("NumeLiqu"),
          CodiCome = nfoGovReader.readInt("CodiCome")
        };
        dtoBoletoComerSm.CuenCtct = dtoBoletoComerSm.CodiCome.ToString().PadLeft(8, '0');
        dtoBoletoComerSm.TipoVenc = nfoGovReader.readInt("TipoVenc");
        dtoBoletoComerSm.OrdeLico = nfoGovReader.readInt("OrdeLico");
        dtoBoletoComerSm.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        dtoBoletoComerSm.PeriBole = nfoGovReader.readInt("PeriBole");
        dtoBoletoComerSm.NumeBole = nfoGovReader.readInt("NumeBole");
        dtoBoletoComerSm.FeveLico = nfoGovReader.readDateTime("FeveBole");
        dtoBoletoComerSm.TotaBole = nfoGovReader.readDecimal("TotaBole");
        dtoBoletoComerSm.CucuPers = nfoGovReader.readLong("CucuPers").ToString();
        dtoBoletoComerSm.DetaPers = nfoGovReader.readString("DetaPers");
        if (string.IsNullOrEmpty(nfoGovReader.readString("Tipo")))
        {
          dtoBoletoComerSm.CallLico = nfoGovReader.readString("DecrPers");
          dtoBoletoComerSm.NucaLico = nfoGovReader.readInt("NurePers").ToString();
          dtoBoletoComerSm.BarrLico = nfoGovReader.readString("DebrPers");
          dtoBoletoComerSm.ManzLico = nfoGovReader.readString("MarePers");
          dtoBoletoComerSm.CasaLico = nfoGovReader.readString("CarePers");
          dtoBoletoComerSm.LocaLico = nfoGovReader.readString("DelrPers");
          dtoBoletoComerSm.CopoLico = nfoGovReader.readString("CoprPers");
          dtoBoletoComerSm.DomiLicoPostal = $"{dtoBoletoComerSm.CallLico} Nro: {dtoBoletoComerSm.NucaLico} - B*: {dtoBoletoComerSm.BarrLico} Casa: {dtoBoletoComerSm.CasaLico} Mz: {dtoBoletoComerSm.ManzLico}";
        }
        else
        {
          dtoBoletoComerSm.CallLico = nfoGovReader.readString("CallLicoPostal");
          dtoBoletoComerSm.NucaLico = nfoGovReader.readString("NucaLicoPostal");
          dtoBoletoComerSm.BarrLico = nfoGovReader.readString("BarrLicoPostal");
          dtoBoletoComerSm.ManzLico = nfoGovReader.readString("ManzLicoPostal");
          dtoBoletoComerSm.CasaLico = nfoGovReader.readString("CasaLicoPostal");
          dtoBoletoComerSm.DptoLico = nfoGovReader.readString("DptoPostal");
          dtoBoletoComerSm.MonoblockLico = nfoGovReader.readString("MonoblockPostal");
          dtoBoletoComerSm.UbicLico = nfoGovReader.readString("UbicLicoPostal");
          dtoBoletoComerSm.LocaLico = nfoGovReader.readString("LocaLicoPostal");
          dtoBoletoComerSm.CopoLico = nfoGovReader.readInt("CopoLicoPostal").ToString();
          dtoBoletoComerSm.DomiLicoPostal = $"{dtoBoletoComerSm.CallLico} Nro: {dtoBoletoComerSm.NucaLico} - B*: {dtoBoletoComerSm.BarrLico} Casa: {dtoBoletoComerSm.CasaLico} Mz: {dtoBoletoComerSm.ManzLico} Dpto: {dtoBoletoComerSm.DptoLico} Mbk: {dtoBoletoComerSm.MonoblockLico}";
        }
        dtoBoletoComerSm.CallLicoReal = nfoGovReader.readString("CallLicoReal");
        dtoBoletoComerSm.NucaLicoReal = nfoGovReader.readString("NucaLicoReal");
        dtoBoletoComerSm.BarrLicoReal = nfoGovReader.readString("BarrLicoReal");
        dtoBoletoComerSm.ManzLicoReal = nfoGovReader.readString("ManzLicoReal");
        dtoBoletoComerSm.CasaLicoReal = nfoGovReader.readString("CasaLicoReal");
        dtoBoletoComerSm.DptoLicoReal = nfoGovReader.readString("DptoReal");
        dtoBoletoComerSm.MonoblockLicoReal = nfoGovReader.readString("MonoblockReal");
        dtoBoletoComerSm.UbicLicoReal = nfoGovReader.readString("UbicLicoReal");
        dtoBoletoComerSm.LocaLicoReal = nfoGovReader.readString("LocaLicoReal");
        dtoBoletoComerSm.CopoLicoReal = nfoGovReader.readInt("CopoLicoReal").ToString();
        dtoBoletoComerSm.DomiLicoReal = $"{dtoBoletoComerSm.CallLicoReal} Nro: {dtoBoletoComerSm.NucaLicoReal} - B*: {dtoBoletoComerSm.BarrLicoReal} Casa: {dtoBoletoComerSm.CasaLicoReal} Mz: {dtoBoletoComerSm.ManzLicoReal} Dpto: {dtoBoletoComerSm.DptoLicoReal} Mbk: {dtoBoletoComerSm.MonoblockLicoReal}";
        dtoBoletoComerSm.DeudLico = nfoGovReader.readDecimal("DeudLico");
        dtoBoletoComerSm.BanelcoLink = "0426" + dtoBoletoComerSm.CodiCome.ToString().PadLeft(6, '0');
        dtoBoletoComerSm.cupoaux.Add(new DTOBoletoComerSM.CuponAuxComerSM()
        {
          DeudLico = nfoGovReader.readDecimal("DeudLico"),
          ImpoLico = nfoGovReader.readDecimal("ImpoLico"),
          CrafLico = nfoGovReader.readDecimal("CrafLico"),
          ExenLico = nfoGovReader.readDecimal("ExenLico"),
          DescLico = nfoGovReader.readDecimal("DescLico"),
          GastLico = nfoGovReader.readDecimal("GastLico"),
          TotaLico = nfoGovReader.readDecimal("TotaLico"),
          FeveLico = nfoGovReader.readDateTime("FeveBole"),
          BimeLiqu = nfoGovReader.readInt("BimeLiqu"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          TipoVenc = nfoGovReader.readInt("TipoVenc"),
          TotaBole = nfoGovReader.readDecimal("TotaBole")
        });
        dtoBoletoComerSmList.Add(dtoBoletoComerSm);
      }
    }
    nfoGovReader.Close();
    return dtoBoletoComerSmList;
  }

  public DTOBoletoComerSM.CuponComerSM obtenerCuponSM(
    EmisionMasivaComercioSM emt,
    DTOBoletoComerSM come,
    bool anual)
  {
    DTOBoletoComerSM.CuponComerSM cupon = new DTOBoletoComerSM.CuponComerSM();
    string sql;
    if (anual)
      sql = $"SELECT CAST(SUM(ImpoLcde) AS DECIMAL(11,2)) AS Basico , CAST(SUM(DecaLcde) + SUM(DecadiaLcde) AS DECIMAL(11, 2)) AS Descuento , IFNULL(epagosqrcome.EpagosQrText, '') EpagosQrText FROM licodeta LEFT JOIN epagosqrcome ON epagosqrcome.PeriLiqu = licodeta.PeriLiqu AND epagosqrcome.NumeLiqu = licodeta.NumeLiqu AND epagosqrcome.CodiCome = licodeta.CodiCome AND epagosqrcome.BimeLiqu = 7 WHERE CodiConc = '13020200' AND licodeta.PeriLiqu =  {emt.PeriLiqu.ToString()}  AND CodiTili = {emt.CodiTili.ToString()} AND licodeta.NumeLiqu = {come.NumeLiqu.ToString()} AND TipoVenc = {come.TipoVenc.ToString()} AND licodeta.CodiCome =  {come.CodiCome.ToString()};";
    else
      sql = $"SELECT CAST(SUM(ImpoLcde) AS DECIMAL(11,2)) AS Basico , CAST(SUM(DecaLcde) AS DECIMAL(11,2)) AS Descuento , IFNULL(epagosqrcome.EpagosQrText, '') EpagosQrText FROM licodeta LEFT JOIN epagosqrcome ON epagosqrcome.PeriLiqu = licodeta.PeriLiqu AND epagosqrcome.NumeLiqu = licodeta.NumeLiqu AND epagosqrcome.CodiCome = licodeta.CodiCome AND epagosqrcome.BimeLiqu = licodeta.BimeLiqu WHERE CodiConc = '13020200' AND licodeta.PeriLiqu =  {emt.PeriLiqu.ToString()}  AND CodiTili = {emt.CodiTili.ToString()} AND licodeta.NumeLiqu = {come.NumeLiqu.ToString()} AND licodeta.BimeLiqu =  {come.BimeLiqu.ToString()} AND TipoVenc = {come.TipoVenc.ToString()} AND licodeta.CodiCome =  {come.CodiCome.ToString()};";
    InfoGovReader nfoGovReader1 = this.conn.executeReader(sql);
    if (nfoGovReader1.HasRows)
    {
      nfoGovReader1.Read();
      cupon.CuenCtct = come.CuenCtct;
      cupon.Basico = nfoGovReader1.readDecimal("Basico");
      cupon.Descuento = nfoGovReader1.readDecimal("Descuento");
      cupon.EpagosQrText = nfoGovReader1.readString("EpagosQrText");
      cupon.FeveLico = come.cupoaux[0].FeveLico;
      cupon.BimeLiqu = come.cupoaux[0].BimeLiqu;
      cupon.PeriBole = come.cupoaux[0].PeriBole;
      cupon.NumeBole = come.cupoaux[0].NumeBole;
      cupon.TipoVenc = come.cupoaux[0].TipoVenc;
      cupon.TotaBole = come.cupoaux[0].TotaBole;
    }
    nfoGovReader1.Close();
    cupon.CodigoBarraCupon = this.GenerarCodigoBarraSM(come, cupon);
    InfoGovReader nfoGovReader2 = this.conn.executeReader($"SELECT SUM(if(CodiConc='13020200',CapiDebo,0)) Basico , SUM(if (CodiConc = '13030204',CapiDebo,0)) Interes , SUM(if (CodiConc = '13031300',CapiDebo,0)) Bombero , SUM(if (CodiConc = '13031400',CapiDebo,0)) GastosAdm , SUM(if (CodiConc = '13030205',CapiDebo,0)) Redondeo FROM detabole  WHERE PeriBole = {come.PeriBole.ToString()} AND numebole = {come.NumeBole.ToString()};");
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

  public string GenerarCodigoBarraSM(DTOBoletoComerSM come, DTOBoletoComerSM.CuponComerSM cupon)
  {
    string str1 = ((long) (cupon.TotaBole * 100M)).ToString().PadLeft(10, '0');
    string str2 = cupon.NumeBole.ToString().PadLeft(8, '0');
    string str3 = cupon.FeveLico.ToString("ddMMyy");
    string str4 = "04";
    string str5 = come.PeriBole.ToString().Substring(2, 2).PadLeft(3, '0');
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

  public void ProcesarCalcularDeudasSM(List<DTOBoletoComerSM> listaRepo)
  {
    foreach (DTOBoletoComerSM dto in listaRepo)
      this.CalcularDeudasSM(dto);
  }

  public DTOBoletoComerSM CalcularDeudasSM(DTOBoletoComerSM dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.conn.executeNonQuery($"CALL `fnDeuda`('2', '{dto.CodiCome.ToString()}', '2024-12-31');");
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

  public EmisionMasivaComercioSM getOrdenPorComerSM(int comer)
  {
    StringBuilder stringBuilder = new StringBuilder();
    EmisionMasivaComercioSM ordenPorComerSm = new EmisionMasivaComercioSM();
    stringBuilder.AppendLine("SELECT *");
    stringBuilder.AppendLine("FROM liqucome");
    stringBuilder.AppendLine($"WHERE PeriLiqu = {PARAMS.Periodo.ToString()} AND CodiTili = 1");
    stringBuilder.AppendLine($"AND CodiCome = {comer.ToString()} AND CodiConc = '13020200'");
    stringBuilder.AppendLine("AND TipoVenc = 1 AND ActuLico = 'Si'");
    stringBuilder.AppendLine("ORDER BY PeriLiqu, CodiTili, NumeLiqu DESC, CodiCome, OrdeLico");
    stringBuilder.AppendLine("LIMIT 1;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ordenPorComerSm.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
        ordenPorComerSm.NumeLiqu = (int) nfoGovReader.readShort("NumeLiqu");
        ordenPorComerSm.CantOrdeLico = nfoGovReader.readInt("OrdeLico");
        ordenPorComerSm.CodiOfic = 2;
        ordenPorComerSm.CodiTili = nfoGovReader.readInt("CodiTili");
        ordenPorComerSm.NumeLiqu = nfoGovReader.readInt("NumeLiqu");
      }
    }
    nfoGovReader.Close();
    return ordenPorComerSm;
  }
}
