// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEmisionMasivaCementerioGUAY
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioGuay;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpEmisionMasivaCementerioGUAY : Expert
{
  public ExpEmisionMasivaCementerioGUAY()
    : base(Modulo.Database, true)
  {
  }

  public List<EmisionMasivaComercios> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<EmisionMasivaComercios> gridData = new List<EmisionMasivaComercios>();
    stringBuilder.AppendLine("SELECT liquidacion.*, MAX(OrdeLice) MaxOrdeLico, tipoliqu.DetaTili, tipoliqu.LeyeTili");
    stringBuilder.AppendLine("FROM liquidacion");
    stringBuilder.AppendLine("INNER JOIN(");
    stringBuilder.AppendLine("SELECT PeriLiqu, NumeLiqu, OrdeLice");
    stringBuilder.AppendLine("FROM liquceme");
    stringBuilder.AppendLine("WHERE PeriLiqu in (2024,2025) AND OrdeLice > 0");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, NumeLiqu, OrdeLice");
    stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
    stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '4' AND ActuLiqu = 'Si' AND (liquidacion.PeriLiqu in (2024,2025))");
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
    stringBuilder.AppendLine("SELECT MAX(OrdeLice)");
    stringBuilder.AppendLine("FROM liquceme");
    stringBuilder.AppendLine($"WHERE liquceme.PeriLiqu = {row.PeriLiqu.ToString()} AND liquceme.CodiTili = {row.CodiTili.ToString()} AND liquceme.NumeLiqu = {row.NumeLiqu.ToString()}");
    stringBuilder.AppendLine("AND TipoLice = 'Aforo' AND FeacLice IS NOT NULL;");
    return this.conn.executeInt(stringBuilder.ToString());
  }

  public List<DTOBoletoCementerioGuay> obtenerLiquCementerio(
    EmisionMasivaComercios emt,
    int desde,
    int hasta)
  {
    List<DTOBoletoCementerioGuay> boletoCementerioGuayList = new List<DTOBoletoCementerioGuay>();
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
        DTOBoletoCementerioGuay boletoCementerioGuay1 = new DTOBoletoCementerioGuay();
        boletoCementerioGuay1.PeriLiqu = emt.PeriLiqu;
        boletoCementerioGuay1.CodiTili = (short) emt.CodiTili;
        boletoCementerioGuay1.NumeLiqu = (short) emt.NumeLiqu;
        boletoCementerioGuay1.CodiCome = nfoGovReader.readInt("CodiCome");
        boletoCementerioGuay1.RazoCome = nfoGovReader.readString("RazoCome");
        boletoCementerioGuay1.TipoVenc = nfoGovReader.readInt("TipoVenc");
        boletoCementerioGuay1.OrdeLico = nfoGovReader.readInt("OrdeLico");
        boletoCementerioGuay1.FeacLico = nfoGovReader.readDateTime("FeacLico");
        boletoCementerioGuay1.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        boletoCementerioGuay1.TotaLico = nfoGovReader.readDecimal("TotaLico");
        boletoCementerioGuay1.PeriBole = nfoGovReader.readInt("PeriBole");
        boletoCementerioGuay1.NumeBole = nfoGovReader.readInt("NumeBole");
        boletoCementerioGuay1.TotaBole = nfoGovReader.readDecimal("TotaBole");
        boletoCementerioGuay1.CodiUsua = nfoGovReader.readString("CodiUsua");
        boletoCementerioGuay1.CucuPers = nfoGovReader.readLong("CucuPers").ToString();
        boletoCementerioGuay1.DetaPers = nfoGovReader.readString("DetaPers");
        boletoCementerioGuay1.CallLico = nfoGovReader.readString("DetaCall");
        boletoCementerioGuay1.NucaLico = nfoGovReader.readInt("NucaLico");
        boletoCementerioGuay1.BarrLico = nfoGovReader.readString("DetaBarr");
        boletoCementerioGuay1.ManzLico = nfoGovReader.readString("ManzLico");
        boletoCementerioGuay1.CasaLico = nfoGovReader.readString("CasaLico");
        boletoCementerioGuay1.UbicLico = nfoGovReader.readString("UbicLico");
        boletoCementerioGuay1.LocaLico = nfoGovReader.readString("DetaLoca");
        boletoCementerioGuay1.CopoLico = nfoGovReader.readString("CopoLico");
        boletoCementerioGuay1.CallLicoReal = nfoGovReader.readString("CallLicoReal");
        boletoCementerioGuay1.NucaLicoReal = nfoGovReader.readString("NucaLicoReal");
        boletoCementerioGuay1.BarrLicoReal = nfoGovReader.readString("BarrLicoReal");
        boletoCementerioGuay1.ManzLicoReal = nfoGovReader.readString("ManzLicoReal");
        boletoCementerioGuay1.CasaLicoReal = nfoGovReader.readString("CasaLicoReal");
        boletoCementerioGuay1.UbicLicoReal = nfoGovReader.readString("UbicLicoReal");
        boletoCementerioGuay1.LocaLicoReal = nfoGovReader.readString("LocaLicoReal");
        boletoCementerioGuay1.CopoLicoReal = nfoGovReader.readString("CopoLicoReal");
        boletoCementerioGuay1.Vinculo = nfoGovReader.readString("Vinculo");
        if (boletoCementerioGuay1.Vinculo.Trim().Length != 0)
          boletoCementerioGuay1.Vinculo = $" (Poseedor: {boletoCementerioGuay1.Vinculo})";
        boletoCementerioGuay1.DireccionQr = nfoGovReader.readString("DireccionQr");
        boletoCementerioGuay1.DeudLico = nfoGovReader.readDecimal("DeudLico");
        DTOBoletoCementerioGuay boletoCementerioGuay2 = boletoCementerioGuay1;
        int num2 = boletoCementerioGuay1.CodiCome;
        string str4 = num2.ToString().PadLeft(9, '0');
        num2 = boletoCementerioGuay1.OrdeLico;
        string str5 = num2.ToString().PadLeft(6, '0');
        string str6 = $"2{str4}{str5}";
        boletoCementerioGuay2.Barrita = str6;
        DTOBoletoCementerioGuay boletoCementerioGuay3 = boletoCementerioGuay1;
        num2 = boletoCementerioGuay1.CodiCome;
        string str7 = "2" + num2.ToString().PadLeft(6, '0');
        boletoCementerioGuay3.pagomisctas = str7;
        DTOBoletoCementerioGuay boletoCementerioGuay4 = boletoCementerioGuay1;
        num2 = boletoCementerioGuay1.CodiCome;
        string str8 = "2" + num2.ToString().PadLeft(12, '0');
        boletoCementerioGuay4.redlink = str8;
        boletoCementerioGuay1.cupaux.Add(new CuponCementerioAux()
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
        boletoCementerioGuayList.Add(boletoCementerioGuay1);
      }
    }
    nfoGovReader.Close();
    return boletoCementerioGuayList;
  }
}
