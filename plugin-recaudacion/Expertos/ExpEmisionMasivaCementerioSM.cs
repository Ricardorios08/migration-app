// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEmisionMasivaCementerioSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpEmisionMasivaCementerioSM : Expert
{
  public ExpEmisionMasivaCementerioSM()
    : base(Modulo.Database, true)
  {
  }

  public List<EmisionMasivaComercioSM> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<EmisionMasivaComercioSM> gridData = new List<EmisionMasivaComercioSM>();
    stringBuilder.AppendLine("SELECT liquidacion.*, MAX(OrdeLice) MaxOrdeLico, tipoliqu.DetaTili, tipoliqu.LeyeTili");
    stringBuilder.AppendLine("FROM liquidacion");
    stringBuilder.AppendLine("INNER JOIN (");
    stringBuilder.AppendLine("SELECT PeriLiqu, CodiTili, NumeLiqu, OrdeLice");
    stringBuilder.AppendLine("FROM liquceme");
    stringBuilder.AppendLine("WHERE PeriLiqu = 2026 AND OrdeLice > 0");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, CodiTili, NumeLiqu, OrdeLice");
    stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.CodiTili = liquidacion.CodiTili AND t.NumeLiqu = liquidacion.NumeLiqu");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
    stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '4' AND ActuLiqu = 'Si'");
    stringBuilder.AppendLine("AND (liquidacion.PeriLiqu = 2026)");
    stringBuilder.AppendLine("GROUP BY liquidacion.PeriLiqu, liquidacion.CodiTili, liquidacion.NumeLiqu;");
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
    stringBuilder.AppendLine("SELECT MAX(OrdeLice)");
    stringBuilder.AppendLine("FROM liquceme");
    stringBuilder.AppendLine($"WHERE PeriLiqu = {row.PeriLiqu.ToString()} AND CodiTili = {row.CodiTili.ToString()} AND NumeLiqu = {row.NumeLiqu.ToString()}");
    stringBuilder.AppendLine("AND TipoLice = 'Aforo' AND FeacLice IS NOT NULL");
    return this.conn.executeInt(stringBuilder.ToString());
  }

  public List<DTOBoletoCemenSM> obtenerCuentasCemenSM(
    EmisionMasivaComercioSM emt,
    int desde,
    int hasta)
  {
    List<DTOBoletoCemenSM> dtoBoletoCemenSmList = new List<DTOBoletoCemenSM>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT liquceme.*, p.DetaPers");
    stringBuilder.AppendLine(", d1.CodiCalle CodiCallPostal, d1.Calle CallLicePostal");
    stringBuilder.AppendLine(", d1.NumeCalle NucaLicePostal, d1.CodiBarrio CodiBarrPostal, d1.Barrio BarrLicePostal");
    stringBuilder.AppendLine(", d1.Manzana ManzLicePostal, d1.Lote CasaLicePostal, d1.Dpto DptoPostal, d1.Monoblock MonoblockPostal, d1.Ubicacion UbicLicePostal");
    stringBuilder.AppendLine(", d1.CodiLoca CodiLocaPostal, d1.Localidad LocaLicePostal, d1.CodPostal CopoLicePostal");
    stringBuilder.AppendLine(", TotaBole, d1.Tipo, p.DecrPers, p.NurePers, p.DebrPers, p.MarePers, p.CarePers");
    stringBuilder.AppendLine(", p.DelrPers, p.CoprPers");
    stringBuilder.AppendLine("FROM liquceme");
    stringBuilder.AppendLine("LEFT JOIN boleto ON boleto.PeriBole = liquceme.PeriBole AND boleto.NumeBole = liquceme.NumeBole");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = liquceme.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN domicilio d1 ON d1.CodiOfic = 4 AND d1.CodiCome = liquceme.CodiDifu AND d1.Tipo = 'DOMICILIO POSTAL'");
    stringBuilder.AppendLine("WHERE TipoLice = 'Aforo'");
    stringBuilder.AppendLine("AND FeacLice IS NOT NULL");
    stringBuilder.AppendLine($"AND liquceme.PeriLiqu = {emt.PeriLiqu.ToString()} AND liquceme.CodiTili = {emt.CodiTili.ToString()} AND liquceme.NumeLiqu = {emt.NumeLiqu.ToString()} AND liquceme.OrdeLice >= {desde.ToString()} AND liquceme.OrdeLice <= {hasta.ToString()}");
    stringBuilder.AppendLine("GROUP BY OrdeLice, TipoVenc DESC, BimeLiqu, PeriBole, NumeBole");
    stringBuilder.AppendLine("HAVING TotaLice<> 0;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOBoletoCemenSM dtoBoletoCemenSm1 = new DTOBoletoCemenSM();
        dtoBoletoCemenSm1.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
        dtoBoletoCemenSm1.CodiTili = nfoGovReader.readShort("CodiTili");
        dtoBoletoCemenSm1.NumeLiqu = nfoGovReader.readShort("NumeLiqu");
        dtoBoletoCemenSm1.CodiDifu = nfoGovReader.readInt("CodiDifu");
        DTOBoletoCemenSM dtoBoletoCemenSm2 = dtoBoletoCemenSm1;
        int num = dtoBoletoCemenSm1.CodiDifu;
        string str1 = num.ToString().PadLeft(8, '0');
        dtoBoletoCemenSm2.CuenCtct = str1;
        dtoBoletoCemenSm1.TipoVenc = nfoGovReader.readInt("TipoVenc");
        dtoBoletoCemenSm1.OrdeLice = nfoGovReader.readInt("OrdeLice");
        dtoBoletoCemenSm1.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        dtoBoletoCemenSm1.PeriBole = nfoGovReader.readInt("PeriBole");
        dtoBoletoCemenSm1.NumeBole = nfoGovReader.readInt("NumeBole");
        dtoBoletoCemenSm1.FeveLice = nfoGovReader.readDateTime("FeveLice");
        dtoBoletoCemenSm1.TotaBole = nfoGovReader.readDecimal("TotaBole");
        dtoBoletoCemenSm1.CucuPers = nfoGovReader.readLong("CucuPers").ToString();
        dtoBoletoCemenSm1.DetaPers = nfoGovReader.readString("DetaPers");
        if (string.IsNullOrEmpty(nfoGovReader.readString("Tipo")))
        {
          dtoBoletoCemenSm1.CallLice = nfoGovReader.readString("DecrPers");
          DTOBoletoCemenSM dtoBoletoCemenSm3 = dtoBoletoCemenSm1;
          num = nfoGovReader.readInt("NurePers");
          string str2 = num.ToString();
          dtoBoletoCemenSm3.NucaLice = str2;
          dtoBoletoCemenSm1.BarrLice = nfoGovReader.readString("DebrPers");
          dtoBoletoCemenSm1.ManzLice = nfoGovReader.readString("MarePers");
          dtoBoletoCemenSm1.CasaLice = nfoGovReader.readString("CarePers");
          dtoBoletoCemenSm1.LocaLice = nfoGovReader.readString("DelrPers");
          dtoBoletoCemenSm1.CopoLice = nfoGovReader.readString("CoprPers");
          dtoBoletoCemenSm1.DomiLicePostal = $"{dtoBoletoCemenSm1.CallLice} Nro: {dtoBoletoCemenSm1.NucaLice} - B*: {dtoBoletoCemenSm1.BarrLice} Casa: {dtoBoletoCemenSm1.CasaLice} Mz: {dtoBoletoCemenSm1.ManzLice}";
        }
        else
        {
          dtoBoletoCemenSm1.CallLice = nfoGovReader.readString("CallLicePostal");
          dtoBoletoCemenSm1.NucaLice = nfoGovReader.readString("NucaLicePostal");
          dtoBoletoCemenSm1.BarrLice = nfoGovReader.readString("BarrLicePostal");
          dtoBoletoCemenSm1.ManzLice = nfoGovReader.readString("ManzLicePostal");
          dtoBoletoCemenSm1.CasaLice = nfoGovReader.readString("CasaLicePostal");
          dtoBoletoCemenSm1.DptoLice = nfoGovReader.readString("DptoPostal");
          dtoBoletoCemenSm1.MonoblockLice = nfoGovReader.readString("MonoblockPostal");
          dtoBoletoCemenSm1.UbicLice = nfoGovReader.readString("UbicLicePostal");
          dtoBoletoCemenSm1.LocaLice = nfoGovReader.readString("LocaLicePostal");
          DTOBoletoCemenSM dtoBoletoCemenSm4 = dtoBoletoCemenSm1;
          num = nfoGovReader.readInt("CopoLicePostal");
          string str3 = num.ToString();
          dtoBoletoCemenSm4.CopoLice = str3;
          dtoBoletoCemenSm1.DomiLicePostal = $"{dtoBoletoCemenSm1.CallLice} Nro: {dtoBoletoCemenSm1.NucaLice} - B*: {dtoBoletoCemenSm1.BarrLice} Casa: {dtoBoletoCemenSm1.CasaLice} Mz: {dtoBoletoCemenSm1.ManzLice} Dpto: {dtoBoletoCemenSm1.DptoLice} Mbk: {dtoBoletoCemenSm1.MonoblockLice}";
        }
        dtoBoletoCemenSm1.DeudLice = nfoGovReader.readDecimal("DeudLice");
        DTOBoletoCemenSM dtoBoletoCemenSm5 = dtoBoletoCemenSm1;
        num = dtoBoletoCemenSm1.CodiDifu;
        string str4 = "0750" + num.ToString().PadLeft(6, '0');
        dtoBoletoCemenSm5.BanelcoLink = str4;
        dtoBoletoCemenSm1.cupoaux.Add(new DTOBoletoCemenSM.CuponAuxCemenSM()
        {
          DeudLice = nfoGovReader.readDecimal("DeudLice"),
          ImpoLice = nfoGovReader.readDecimal("ImpoLice"),
          CrafLice = nfoGovReader.readDecimal("CrafLice"),
          ExenLice = nfoGovReader.readDecimal("ExenLice"),
          DescLice = nfoGovReader.readDecimal("DescLice"),
          GastLice = nfoGovReader.readDecimal("GastLice"),
          TotaLice = nfoGovReader.readDecimal("TotaLice"),
          FeveLice = nfoGovReader.readDateTime("FeveLice"),
          BimeLiqu = nfoGovReader.readInt("BimeLiqu"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          TipoVenc = nfoGovReader.readInt("TipoVenc"),
          TotaBole = nfoGovReader.readDecimal("TotaBole"),
          CodiTili = dtoBoletoCemenSm1.CodiTili
        });
        dtoBoletoCemenSmList.Add(dtoBoletoCemenSm1);
      }
    }
    nfoGovReader.Close();
    return dtoBoletoCemenSmList;
  }

  public DTOBoletoCemenSM.CuponCemenSM obtenerCuponSM(
    EmisionMasivaComercioSM emt,
    DTOBoletoCemenSM difu,
    bool anual)
  {
    DTOBoletoCemenSM.CuponCemenSM cupon = new DTOBoletoCemenSM.CuponCemenSM();
    string sql1;
    if (anual)
      sql1 = $"SELECT CAST(SUM(ImpoLcde) AS DECIMAL(11,2)) AS Basico , CAST(SUM(DecaLcde) AS DECIMAL(11, 2)) AS Descuento FROM licedeta WHERE CodiConc = '13020301' AND licedeta.PeriLiqu =  {emt.PeriLiqu.ToString()}  AND CodiTili = {emt.CodiTili.ToString()} AND licedeta.NumeLiqu = {difu.NumeLiqu.ToString()} AND TipoVenc = {difu.TipoVenc.ToString()} AND licedeta.CodiDifu =  {difu.CodiDifu.ToString()};";
    else if (emt.CodiTili == 1)
      sql1 = $"SELECT CAST(SUM(ImpoLcde) AS DECIMAL(11,2)) AS Basico , CAST(SUM(DecaLcde) AS DECIMAL(11,2)) AS Descuento , IFNULL(epagosqrceme.EpagosQrText, '') EpagosQrText FROM licedeta LEFT JOIN epagosqrceme ON epagosqrceme.PeriLiqu = licedeta.PeriLiqu AND epagosqrceme.NumeLiqu = licedeta.NumeLiqu AND epagosqrceme.CodiTili = licedeta.CodiTili AND epagosqrceme.CodiDifu = licedeta.CodiDifu WHERE CodiConc = '13020301' AND licedeta.PeriLiqu =  {emt.PeriLiqu.ToString()}  AND licedeta.CodiTili = {emt.CodiTili.ToString()} AND licedeta.NumeLiqu = {difu.NumeLiqu.ToString()} AND licedeta.BimeLiqu =  {difu.BimeLiqu.ToString()} AND TipoVenc = {difu.TipoVenc.ToString()} AND licedeta.CodiDifu =  {difu.CodiDifu.ToString()};";
    else
      sql1 = $"SELECT CAST(SUM(ImpoLcde) AS DECIMAL(11,2)) AS Basico , CAST(SUM(DecaLcde) AS DECIMAL(11,2)) AS Descuento , IFNULL(epagosqrceme.EpagosQrText, '') EpagosQrText FROM licedeta LEFT JOIN epagosqrceme ON epagosqrceme.PeriLiqu = licedeta.PeriLiqu AND epagosqrceme.NumeLiqu = licedeta.NumeLiqu AND epagosqrceme.CodiTili = licedeta.CodiTili AND epagosqrceme.CodiDifu = licedeta.CodiDifu WHERE CodiConc = '13020303' AND licedeta.PeriLiqu =  {emt.PeriLiqu.ToString()}  AND licedeta.CodiTili = {emt.CodiTili.ToString()} AND licedeta.NumeLiqu = {difu.NumeLiqu.ToString()} AND licedeta.BimeLiqu =  {difu.BimeLiqu.ToString()} AND TipoVenc = {difu.TipoVenc.ToString()} AND licedeta.CodiDifu =  {difu.CodiDifu.ToString()};";
    InfoGovReader nfoGovReader1 = this.conn.executeReader(sql1);
    if (nfoGovReader1.HasRows)
    {
      nfoGovReader1.Read();
      cupon.CuenCtct = difu.CuenCtct;
      cupon.Basico = nfoGovReader1.readDecimal("Basico");
      cupon.Descuento = nfoGovReader1.readDecimal("Descuento");
      cupon.EpagosQrText = nfoGovReader1.readString("EpagosQrText");
      cupon.FeveLice = difu.cupoaux[0].FeveLice;
      cupon.BimeLiqu = difu.cupoaux[0].BimeLiqu;
      cupon.PeriBole = difu.cupoaux[0].PeriBole;
      cupon.NumeBole = difu.cupoaux[0].NumeBole;
      cupon.TipoVenc = difu.cupoaux[0].TipoVenc;
      cupon.TotaBole = difu.cupoaux[0].TotaBole;
      cupon.CodiTili = difu.cupoaux[0].CodiTili;
      foreach (DTOBoletoCemenSM.CuponAuxCemenSM cuponAuxCemenSm in difu.cupoaux)
      {
        if (difu.TipoVenc == 1)
        {
          switch (difu.BimeLiqu)
          {
            case 1:
              cupon.FeveLice = cuponAuxCemenSm.FeveLice;
              cupon.BimeLiqu = cuponAuxCemenSm.BimeLiqu;
              cupon.PeriBole = cuponAuxCemenSm.PeriBole;
              cupon.NumeBole = cuponAuxCemenSm.NumeBole;
              cupon.TipoVenc = cuponAuxCemenSm.TipoVenc;
              cupon.TotaBole = cuponAuxCemenSm.TotaBole;
              break;
            case 2:
              cupon.FeveLice = cuponAuxCemenSm.FeveLice;
              cupon.BimeLiqu = cuponAuxCemenSm.BimeLiqu;
              cupon.PeriBole = cuponAuxCemenSm.PeriBole;
              cupon.NumeBole = cuponAuxCemenSm.NumeBole;
              cupon.TipoVenc = cuponAuxCemenSm.TipoVenc;
              cupon.TotaBole = cuponAuxCemenSm.TotaBole;
              break;
            case 3:
              cupon.FeveLice = cuponAuxCemenSm.FeveLice;
              cupon.BimeLiqu = cuponAuxCemenSm.BimeLiqu;
              cupon.PeriBole = cuponAuxCemenSm.PeriBole;
              cupon.NumeBole = cuponAuxCemenSm.NumeBole;
              cupon.TipoVenc = cuponAuxCemenSm.TipoVenc;
              cupon.TotaBole = cuponAuxCemenSm.TotaBole;
              break;
            case 4:
              cupon.FeveLice = cuponAuxCemenSm.FeveLice;
              cupon.BimeLiqu = cuponAuxCemenSm.BimeLiqu;
              cupon.PeriBole = cuponAuxCemenSm.PeriBole;
              cupon.NumeBole = cuponAuxCemenSm.NumeBole;
              cupon.TipoVenc = cuponAuxCemenSm.TipoVenc;
              cupon.TotaBole = cuponAuxCemenSm.TotaBole;
              break;
            case 5:
              cupon.FeveLice = cuponAuxCemenSm.FeveLice;
              cupon.BimeLiqu = cuponAuxCemenSm.BimeLiqu;
              cupon.PeriBole = cuponAuxCemenSm.PeriBole;
              cupon.NumeBole = cuponAuxCemenSm.NumeBole;
              cupon.TipoVenc = cuponAuxCemenSm.TipoVenc;
              cupon.TotaBole = cuponAuxCemenSm.TotaBole;
              break;
            case 6:
              cupon.FeveLice = cuponAuxCemenSm.FeveLice;
              cupon.BimeLiqu = cuponAuxCemenSm.BimeLiqu;
              cupon.PeriBole = cuponAuxCemenSm.PeriBole;
              cupon.NumeBole = cuponAuxCemenSm.NumeBole;
              cupon.TipoVenc = cuponAuxCemenSm.TipoVenc;
              cupon.TotaBole = cuponAuxCemenSm.TotaBole;
              break;
          }
        }
        else if (difu.TipoVenc == 2)
        {
          cupon.FeveLice = cuponAuxCemenSm.FeveLice;
          cupon.BimeLiqu = cuponAuxCemenSm.BimeLiqu;
          cupon.PeriBole = cuponAuxCemenSm.PeriBole;
          cupon.NumeBole = cuponAuxCemenSm.NumeBole;
          cupon.TipoVenc = cuponAuxCemenSm.TipoVenc;
          cupon.TotaBole = cuponAuxCemenSm.TotaBole;
        }
      }
    }
    nfoGovReader1.Close();
    cupon.CodigoBarraCupon = this.GenerarCodigoBarraSM(difu, cupon);
    string sql2;
    if (emt.CodiTili == 1)
      sql2 = $"SELECT SUM(if(CodiConc='13020301',CapiDebo,0)) Basico , SUM(if (CodiConc = '13031300',CapiDebo,0)) Bombero , SUM(if (CodiConc = '13031400',CapiDebo,0)) GastosAdm , SUM(if (CodiConc = '13030205',CapiDebo,0)) Redondeo FROM detabole  WHERE PeriBole = {difu.PeriBole.ToString()} AND numebole = {difu.NumeBole.ToString()};";
    else
      sql2 = $"SELECT SUM(if(CodiConc='13020303',CapiDebo,0)) Basico , SUM(if (CodiConc = '13031300',CapiDebo,0)) Bombero , SUM(if (CodiConc = '13031400',CapiDebo,0)) GastosAdm , SUM(if (CodiConc = '13030205',CapiDebo,0)) Redondeo FROM detabole  WHERE PeriBole = {difu.PeriBole.ToString()} AND numebole = {difu.NumeBole.ToString()};";
    InfoGovReader nfoGovReader2 = this.conn.executeReader(sql2);
    if (nfoGovReader2.HasRows)
    {
      nfoGovReader2.Read();
      cupon.Bombero = nfoGovReader2.readDecimal("Bombero");
      cupon.GastosAdm = nfoGovReader2.readDecimal("GastosAdm");
      cupon.Redondeo = nfoGovReader2.readDecimal("Redondeo");
    }
    nfoGovReader2.Close();
    return cupon;
  }

  public string GenerarCodigoBarraSM(DTOBoletoCemenSM difu, DTOBoletoCemenSM.CuponCemenSM cupon)
  {
    string str1 = ((long) (cupon.TotaBole * 100M)).ToString().PadLeft(10, '0');
    string str2 = cupon.NumeBole.ToString().PadLeft(8, '0');
    string str3 = cupon.FeveLice.ToString("ddMMyy");
    string str4 = "04";
    string str5 = difu.PeriBole.ToString().Substring(2, 2).PadLeft(3, '0');
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

  public void ProcesarCalcularDeudasSM(List<DTOBoletoCemenSM> listaRepo)
  {
    foreach (DTOBoletoCemenSM dto in listaRepo)
      this.CalcularDeudasSM(dto);
  }

  public DTOBoletoCemenSM CalcularDeudasSM(DTOBoletoCemenSM dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.conn.executeNonQuery($"CALL `fnDeuda`('4', '{dto.CodiDifu.ToString()}', '2024-12-31');");
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

  public EmisionMasivaComercioSM getOrdenPorCemenSM(int comer)
  {
    StringBuilder stringBuilder = new StringBuilder();
    EmisionMasivaComercioSM ordenPorCemenSm = new EmisionMasivaComercioSM();
    stringBuilder.AppendLine("SELECT *");
    stringBuilder.AppendLine("FROM liquceme");
    stringBuilder.AppendLine($"WHERE PeriLiqu = {PARAMS.Periodo.ToString()} AND CodiTili = 1");
    stringBuilder.AppendLine($"AND CodiDifu = {comer.ToString()} AND CodiConc = '13020301'");
    stringBuilder.AppendLine("AND TipoVenc = 1 AND ActuLice = 'Si'");
    stringBuilder.AppendLine("ORDER BY PeriLiqu, CodiTili, NumeLiqu DESC, CodiDifu, OrdeLice");
    stringBuilder.AppendLine("LIMIT 1;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ordenPorCemenSm.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
        ordenPorCemenSm.NumeLiqu = (int) nfoGovReader.readShort("NumeLiqu");
        ordenPorCemenSm.CantOrdeLico = nfoGovReader.readInt("OrdeLice");
        ordenPorCemenSm.CodiOfic = 2;
        ordenPorCemenSm.CodiTili = nfoGovReader.readInt("CodiTili");
        ordenPorCemenSm.NumeLiqu = nfoGovReader.readInt("NumeLiqu");
      }
    }
    nfoGovReader.Close();
    return ordenPorCemenSm;
  }

  public void ProcesarDatosCementerioSM(List<DTOBoletoCemenSM> listacemen)
  {
    foreach (DTOBoletoCemenSM dto in listacemen)
      this.GetDatosCementerio(dto);
  }

  public DTOBoletoCemenSM GetDatosCementerio(DTOBoletoCemenSM dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT cementerio.DetaCeme, tiposepu.DetaTise, difunto.CodiClas, clasesepu.DetaClas, difunto.NumeDifu, difunto.SectDifu,");
    stringBuilder.AppendLine("difunto.CuadDifu, difunto.FilaDifu, difunto.FereDifu, difunto.FemaDifu");
    stringBuilder.AppendLine("FROM difunto");
    stringBuilder.AppendLine("INNER JOIN cementerio ON cementerio.CodiCeme = difunto.CodiCeme");
    stringBuilder.AppendLine("INNER JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise");
    stringBuilder.AppendLine("INNER JOIN clasesepu ON clasesepu.CodiClas = difunto.CodiClas");
    stringBuilder.AppendLine($"WHERE CodiDifu = {dto.CodiDifu.ToString()};");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        dto.DetaCeme = nfoGovReader.readString("DetaCeme");
        dto.DetaTise = nfoGovReader.readString("DetaTise");
        dto.DetaClas = nfoGovReader.readString("DetaClas");
        dto.NumeDifu = nfoGovReader.readString("NumeDifu");
        dto.SectDifu = nfoGovReader.readString("SectDifu");
        dto.CuadDifu = nfoGovReader.readString("CuadDifu");
        dto.FilaDifu = nfoGovReader.readString("FilaDifu");
        dto.FereDifu = nfoGovReader.readDateTime("FereDifu");
        dto.FemaDifu = nfoGovReader.readDateTime("FemaDifu");
      }
    }
    nfoGovReader?.Close();
    return dto;
  }

  public void ProcesarDatosDifuntosSM(List<DTOBoletoCemenSM> listacemen)
  {
    foreach (DTOBoletoCemenSM dto in listacemen)
      this.ObtenerDifuntosSM(dto);
  }

  public DTOBoletoCemenSM ObtenerDifuntosSM(DTOBoletoCemenSM dto)
  {
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT detadifu.DetaDedi, detadifu.FefaDedi FROM detadifu WHERE CodiDifu = {dto.CodiDifu.ToString()} AND detadifu.BajaFeho IS NULL LIMIT 7;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        dto.difuntos.Add(new DTOBoletoCemenSM.DTODifuntos()
        {
          DetaDifu = nfoGovReader.readString("DetaDedi"),
          FefaDifu = nfoGovReader.readDateTime("FefaDedi")
        });
    }
    nfoGovReader?.Close();
    return dto;
  }
}
