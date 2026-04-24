// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEmisionMasivaTasas
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.ar.com.epagos.api;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Reportes.PlanillaDistribucion;
using InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos;
using InfoGov.Plugins.Recaudacion.Reportes.Tasas;
using InfoGov.Resources;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.IO;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

internal class ExpEmisionMasivaTasas : Expert
{
  public ExpEmisionMasivaTasas()
    : base(Modulo.Database, true)
  {
  }

  public List<EmisionMasivaTasas> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<EmisionMasivaTasas> gridData = new List<EmisionMasivaTasas>();
    stringBuilder.AppendLine("SELECT liquidacion.*,MAX(OrdeLita) MaxOrdeLita,SUM(epa) EpaQR, tipoliqu.DetaTili, tipoliqu.LeyeTili");
    stringBuilder.AppendLine("FROM liquidacion");
    stringBuilder.AppendLine("INNER JOIN (");
    stringBuilder.AppendLine("SELECT PeriLiqu,NumeLiqu,OrdeLita,IF(EpagosQr IS NULL,1,0) epa");
    stringBuilder.AppendLine("FROM liqutasa");
    stringBuilder.AppendLine("WHERE PeriLiqu in (2026) AND OrdeLita  > 0");
    stringBuilder.AppendLine("GROUP BY PeriLiqu,NumeLiqu,OrdeLita");
    stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
    stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '1' AND ActuLiqu = 'Si' ");
    stringBuilder.AppendLine("AND liquidacion.PeriLiqu in ('2026')");
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
      CantOrdeLita = dr.readInt("MaxOrdeLita"),
      PendEpQr = dr.readInt("EpaQR")
    };
  }

  public string[] sugiereOrden(EmisionMasivaTasas row, int desde, int hasta, bool cambiarOrden = true)
  {
    string[] strArray = new string[2];
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT OrdeLita, sum(TotaLita) as TotaLita FROM liqutasa WHERE TipoLita = 'Aforo' AND FeacLita is not null AND liqutasa.PeriLiqu = {row.PeriLiqu.ToString()} AND liqutasa.CodiTili = {row.CodiTili.ToString()} AND liqutasa.NumeLiqu = {row.NumeLiqu.ToString()}{(desde > 0 ? $" AND liqutasa.OrdeLita >= '{desde.ToString()}'" : "")}{(hasta > 0 ? $" AND liqutasa.OrdeLita <= '{hasta.ToString()}'" : "")} GROUP BY CodiInmu HAVING TotaLita <> 0 AND OrdeLita > 0 ORDER BY OrdeLita");
    if (nfoGovReader.HasRows)
    {
      int num = 0;
      while (nfoGovReader.Read())
      {
        if (cambiarOrden)
        {
          if (num == 0)
            strArray[0] = nfoGovReader.readString("OrdeLita");
          strArray[1] = nfoGovReader.readString("OrdeLita");
          ++num;
        }
      }
    }
    nfoGovReader.Close();
    return strArray;
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

  public List<DTOTasasRepo> obtenerTasas(EmisionMasivaTasas emt, int desde, int hasta)
  {
    List<DTOTasasRepo> dtoTasasRepoList = new List<DTOTasasRepo>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT liqutasa.PeriLiqu, liqutasa.CodiTili, liqutasa.NumeLiqu, CodiInmu, CAST(TipoVenc AS INT) TipoVenc, OrdeLita, FeacLita, BimeLiqu, sum(TotaLita) as TotaLita, boleto.PeriBole, boleto.NumeBole,  boleto.FeveBole as FeveLita, cast(boleto.TotaBole as DOUBLE(16,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, liqutasa.DetaPers, CodiRyB, DetaRyB, truncate(AvalInmu,0) as AvalInmu, CallLita,  NucaLita, BarrLita, ManzLita, CasaLita, UbicLita, LocaLita, CopoLita, CallLitaReal, NucaLitaReal, BarrLitaReal, ManzLitaReal,  CasaLitaReal, UbicLitaReal, LocaLitaReal, CopoLitaReal, sum(if(CodiConc='13030202',TotaLita,0)) RecaBole, DptoLita, DistLita, SeccLita, MansLita, ParcLita, SubpLita, DigiLita,  sum(if(CodiConc='13020101',(DescLita + ExenLita),0)) as DescLita, sum(if(CodiConc='13031500',TotaLita,0)) as BombLita, DeudLita, Vinculo DireccionQr, EpagosQr, boleto.TipoBole , (SELECT IFNULL(group_concat(p.DetaPers), '') FROM relacion LEFT JOIN infogov.persona p ON p.CucuPers = relacion.CucuPers WHERE CodiOfic = 1 AND CuenCtct = liqutasa.CodiInmu AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL) AS Vinculo FROM liqutasa INNER JOIN boleto ON boleto.PeriBole = liqutasa.PeriBole AND boleto.NumeBole = liqutasa.NumeBole WHERE TipoLita = 'Aforo' AND FeacLita is not null AND liqutasa.PeriLiqu = {emt.PeriLiqu.ToString()} AND liqutasa.CodiTili = {emt.CodiTili.ToString()} AND liqutasa.NumeLiqu = {emt.NumeLiqu.ToString()} AND liqutasa.OrdeLita >= {desde.ToString()} AND liqutasa.OrdeLita <= {hasta.ToString()} GROUP BY OrdeLita, TipoVenc, BimeLiqu, PeriBole, NumeBole HAVING TotaLita <> 0  ORDER BY OrdeLita, PeriBole, TipoVenc DESC, BimeLiqu");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOTasasRepo dtoTasasRepo1 = new DTOTasasRepo();
        dtoTasasRepo1.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
        dtoTasasRepo1.CodiTili = nfoGovReader.readShort("CodiTili");
        dtoTasasRepo1.NumeLiqu = nfoGovReader.readShort("NumeLiqu");
        dtoTasasRepo1.CodiInmu = nfoGovReader.readInt("CodiInmu");
        dtoTasasRepo1.TipoVenc = nfoGovReader.readInt("TipoVenc");
        dtoTasasRepo1.OrdeLita = nfoGovReader.readInt("OrdeLita");
        dtoTasasRepo1.FeacLita = nfoGovReader.readDateTime("FeacLita");
        dtoTasasRepo1.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        dtoTasasRepo1.TotaLita = nfoGovReader.readDecimal("TotaLita");
        dtoTasasRepo1.PeriBole = nfoGovReader.readInt("PeriBole");
        dtoTasasRepo1.NumeBole = nfoGovReader.readInt("NumeBole");
        dtoTasasRepo1.TotaBole = nfoGovReader.readDecimal("TotaBole");
        dtoTasasRepo1.CodiUsua = nfoGovReader.readString("CodiUsua");
        dtoTasasRepo1.CucuPers = nfoGovReader.readLong("CucuPers").ToString();
        dtoTasasRepo1.DetaPers = nfoGovReader.readString("DetaPers");
        dtoTasasRepo1.CodiRyB = nfoGovReader.readInt("CodiRyB");
        dtoTasasRepo1.DetaRyB = nfoGovReader.readString("DetaRyB");
        dtoTasasRepo1.AvalInmu = nfoGovReader.readInt("AvalInmu");
        dtoTasasRepo1.CallLita = nfoGovReader.readString("CallLita");
        dtoTasasRepo1.NucaLita = nfoGovReader.readInt("NucaLita");
        dtoTasasRepo1.BarrLita = nfoGovReader.readString("BarrLita");
        dtoTasasRepo1.ManzLita = nfoGovReader.readString("ManzLita");
        dtoTasasRepo1.CasaLita = nfoGovReader.readString("CasaLita");
        dtoTasasRepo1.UbicLita = nfoGovReader.readString("UbicLita");
        dtoTasasRepo1.LocaLita = nfoGovReader.readString("LocaLita");
        dtoTasasRepo1.CopoLita = nfoGovReader.readString("CopoLita");
        dtoTasasRepo1.CallLitaReal = nfoGovReader.readString("CallLitaReal");
        dtoTasasRepo1.NucaLitaReal = nfoGovReader.readInt("NucaLitaReal");
        dtoTasasRepo1.BarrLitaReal = nfoGovReader.readString("BarrLitaReal");
        dtoTasasRepo1.ManzLitaReal = nfoGovReader.readString("ManzLitaReal");
        dtoTasasRepo1.CasaLitaReal = nfoGovReader.readString("CasaLitaReal");
        dtoTasasRepo1.UbicLitaReal = nfoGovReader.readString("UbicLitaReal");
        dtoTasasRepo1.LocaLitaReal = nfoGovReader.readString("LocaLitaReal");
        dtoTasasRepo1.CopoLitaReal = nfoGovReader.readString("CopoLitaReal");
        dtoTasasRepo1.DptoLita = nfoGovReader.readInt("DptoLita");
        dtoTasasRepo1.DistLita = nfoGovReader.readInt("DistLita");
        dtoTasasRepo1.SeccLita = nfoGovReader.readInt("SeccLita");
        dtoTasasRepo1.MansLita = nfoGovReader.readInt("MansLita");
        dtoTasasRepo1.ParcLita = nfoGovReader.readInt("ParcLita");
        dtoTasasRepo1.SubpLita = nfoGovReader.readInt("SubpLita");
        dtoTasasRepo1.DigiLita = nfoGovReader.readString("DigiLita");
        dtoTasasRepo1.Vinculo = nfoGovReader.readString("Vinculo");
        if (dtoTasasRepo1.Vinculo.Trim().Length != 0)
          dtoTasasRepo1.Vinculo = $" (Poseedor: {dtoTasasRepo1.Vinculo})";
        dtoTasasRepo1.DireccionQr = nfoGovReader.readString("DireccionQr");
        dtoTasasRepo1.DeudLita = nfoGovReader.readDecimal("DeudLita");
        DTOTasasRepo dtoTasasRepo2 = dtoTasasRepo1;
        string[] strArray = new string[13];
        int num = dtoTasasRepo1.DptoLita;
        strArray[0] = num.ToString().PadLeft(2, '0');
        strArray[1] = "-";
        num = dtoTasasRepo1.DistLita;
        strArray[2] = num.ToString().PadLeft(2, '0');
        strArray[3] = "-";
        num = dtoTasasRepo1.SeccLita;
        strArray[4] = num.ToString().PadLeft(2, '0');
        strArray[5] = "-";
        num = dtoTasasRepo1.MansLita;
        strArray[6] = num.ToString().PadLeft(4, '0');
        strArray[7] = "-";
        num = dtoTasasRepo1.ParcLita;
        strArray[8] = num.ToString().PadLeft(6, '0');
        strArray[9] = "-";
        num = dtoTasasRepo1.SubpLita;
        strArray[10] = num.ToString().PadLeft(4, '0');
        strArray[11] = "-";
        strArray[12] = dtoTasasRepo1.DigiLita;
        string str1 = string.Concat(strArray);
        dtoTasasRepo2.NomeLita = str1;
        DTOTasasRepo dtoTasasRepo3 = dtoTasasRepo1;
        num = dtoTasasRepo1.CodiInmu;
        string str2 = num.ToString().PadLeft(9, '0');
        num = dtoTasasRepo1.OrdeLita;
        string str3 = num.ToString().PadLeft(6, '0');
        string str4 = $"1{str2}{str3}";
        dtoTasasRepo3.Barrita = str4;
        DTOTasasRepo dtoTasasRepo4 = dtoTasasRepo1;
        num = dtoTasasRepo1.CodiInmu;
        string str5 = "1" + num.ToString().PadLeft(6, '0');
        dtoTasasRepo4.pagomisctas = str5;
        DTOTasasRepo dtoTasasRepo5 = dtoTasasRepo1;
        num = dtoTasasRepo1.CodiInmu;
        string str6 = "1" + num.ToString().PadLeft(12, '0');
        dtoTasasRepo5.redlink = str6;
        dtoTasasRepo1.cupaux.Add(new CuponAux()
        {
          DescLita = nfoGovReader.readDecimal("DescLita"),
          BombLita = nfoGovReader.readDecimal("BombLita"),
          DeudLita = nfoGovReader.readDecimal("DeudLita"),
          RecaBole = nfoGovReader.readDecimal("RecaBole"),
          FeveLita = nfoGovReader.readDateTime("FeveLita"),
          BimeLiqu = nfoGovReader.readInt("BimeLiqu"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          TipoVenc = nfoGovReader.readInt("TipoVenc"),
          TotaBole = nfoGovReader.readDecimal("TotaBole"),
          TipoBole = nfoGovReader.readString("TipoBole")
        });
        dtoTasasRepoList.Add(dtoTasasRepo1);
      }
    }
    nfoGovReader.Close();
    return dtoTasasRepoList;
  }

  public CuponTasa obtenerCupon(EmisionMasivaTasas emt, DTOTasasRepo tasa, bool anual)
  {
    CuponTasa cupon = new CuponTasa();
    string sql;
    if (anual)
      sql = $"SELECT cast(sum(TasaGral) as double(10,2)) as TasaGral,  cast(sum(InfUrbana) as double(10,2)) as InfUrbana, cast(sum(AlPublico) as double(10,2)) as AlPublico, cast(sum(SobrTasaAnt) as double(10,2)) as SobrTasaAnt, cast(sum(SobrSupClan) as double(10,2)) as SobrSupClan, cast(sum(ServAgua) as double(10,2)) as ServAgua, cast(sum(DescLita) as double(10,2)) as DescLita, cast(sum(CEmision) as double(10,2)) as CEmision, epagosqr.EpagosQr FROM ((SELECT sum(if(CodiSeca in (1,21,22,23),ImpoLtde,0)) TasaGral, sum(if(CodiSeca = 2,ImpoLtde,0)) as InfUrbana, sum(if(CodiSeca = 3,ImpoLtde,0)) as AlPublico, sum(if(CodiSeca = 15,ImpoLtde,0)) as SobrTasaAnt, SUM(IF(CodiSeca IN (30,31),ImpoLtde,0)) AS SobrSupClan, sum(if(CodiSeca = 4,ImpoLtde,0)) as ServAgua, sum(if(CodiSeca in(1),DecaLtde+ExenLtde,0)) DescLita, sum(if(CodiSeca = 999,ImpoLtde-DecaLtde,0)) as CEmision, litadeta.PeriLiqu, litadeta.NumeLiqu, litadeta.CodiInmu, litadeta.BimeLiqu FROM litadeta WHERE CodiConc = '13020101' AND PeriLiqu = {emt.PeriLiqu.ToString()} AND CodiTili = {emt.CodiTili.ToString()} AND NumeLiqu = {emt.NumeLiqu.ToString()} AND TipoVenc = 2 AND CodiInmu = '{tasa.CodiInmu.ToString()}') UNION (SELECT 0 AS TasaGral, 0 as InfUrbana, 0 as AlPublico, 0 as SobrTasaAnt, 0 AS SobrSupClan, 0 as ServAgua, sum(if(CodiSeca in(1),DecaLtde+ExenLtde,0)) as DescLita, 0 as CEmision, litadeta.PeriLiqu, litadeta.NumeLiqu, litadeta.CodiInmu, litadeta.BimeLiqu FROM litadeta WHERE CodiConc = '13020101' AND PeriLiqu = {emt.PeriLiqu.ToString()} AND CodiTili = {emt.CodiTili.ToString()} AND NumeLiqu = {emt.NumeLiqu.ToString()} AND TipoVenc = 1 AND BimeLiqu in (1,2) AND CodiInmu = '{tasa.CodiInmu.ToString()}')) as tmp_litadeta LEFT JOIN epagosqr ON epagosqr.PeriLiqu = tmp_litadeta.PeriLiqu AND epagosqr.NumeLiqu = tmp_litadeta.NumeLiqu AND epagosqr.CodiInmu = tmp_litadeta.CodiInmu AND epagosqr.BimeLiqu = 7;";
    else
      sql = $"SELECT CAST(sum(if(CodiSeca in (1,21,22,23),ImpoLtde,0)) AS DECIMAL(11,2)) as TasaGral, sum(if(CodiSeca = 2,ImpoLtde,0)) as InfUrbana, sum(if(CodiSeca = 3,ImpoLtde,0)) as AlPublico, sum(if(CodiSeca = 15,ImpoLtde,0)) as SobrTasaAnt, SUM(IF(CodiSeca IN (30,31),ImpoLtde,0)) AS SobrSupClan, sum(if(CodiSeca = 4,ImpoLtde,0)) as ServAgua, sum(if(CodiSeca = 999,ImpoLtde,0)) as CEmision, epagosqr.EpagosQr FROM litadeta LEFT JOIN epagosqr ON epagosqr.PeriLiqu = litadeta.PeriLiqu AND epagosqr.NumeLiqu = litadeta.NumeLiqu AND epagosqr.CodiInmu = litadeta.CodiInmu AND epagosqr.BimeLiqu = litadeta.BimeLiqu WHERE CodiConc = '13020101' AND litadeta.PeriLiqu = {emt.PeriLiqu.ToString()} AND CodiTili = {emt.CodiTili.ToString()} AND litadeta.NumeLiqu = {emt.NumeLiqu.ToString()} AND litadeta.BimeLiqu = {tasa.BimeLiqu.ToString()} AND TipoVenc = {tasa.TipoVenc.ToString()} AND litadeta.CodiInmu = {tasa.CodiInmu.ToString()}";
    InfoGovReader nfoGovReader = this.conn.executeReader(sql);
    if (nfoGovReader.HasRows)
    {
      nfoGovReader.Read();
      cupon.TasaGral = nfoGovReader.readDecimal("TasaGral");
      cupon.InfUrbana = nfoGovReader.readDecimal("InfUrbana");
      cupon.AlPublico = nfoGovReader.readDecimal("AlPublico");
      cupon.SobrTasaAnt = nfoGovReader.readDecimal("SobrTasaAnt");
      cupon.SobrSupClan = nfoGovReader.readDecimal("SobrSupClan");
      cupon.ServAgua = nfoGovReader.readDecimal("ServAgua");
      cupon.EpagosQr = nfoGovReader.readImage("EpagosQr");
      if (anual)
        cupon.DescLita = nfoGovReader.readDecimal("DescLita");
      cupon.CEmision = nfoGovReader.readDecimal("CEmision");
      foreach (CuponAux cuponAux in tasa.cupaux)
      {
        cupon.TipoBole = cuponAux.TipoBole;
        if (tasa.TipoVenc == 1)
        {
          switch (tasa.BimeLiqu)
          {
            case 1:
              cupon.DescLita = cuponAux.DescLita;
              cupon.BombLita = cuponAux.BombLita;
              cupon.RecaBole = cuponAux.RecaBole;
              cupon.FeveLita = cuponAux.FeveLita;
              cupon.BimeLiqu = cuponAux.BimeLiqu;
              cupon.PeriBole = cuponAux.PeriBole;
              cupon.NumeBole = cuponAux.NumeBole;
              cupon.TipoVenc = cuponAux.TipoVenc;
              cupon.TotaBole = cuponAux.TotaBole;
              break;
            case 2:
              cupon.DescLita = cuponAux.DescLita;
              cupon.BombLita = cuponAux.BombLita;
              cupon.RecaBole = cuponAux.RecaBole;
              cupon.FeveLita = cuponAux.FeveLita;
              cupon.BimeLiqu = cuponAux.BimeLiqu;
              cupon.PeriBole = cuponAux.PeriBole;
              cupon.NumeBole = cuponAux.NumeBole;
              cupon.TipoVenc = cuponAux.TipoVenc;
              cupon.TotaBole = cuponAux.TotaBole;
              break;
            case 3:
              cupon.DescLita = cuponAux.DescLita;
              cupon.BombLita = cuponAux.BombLita;
              cupon.RecaBole = cuponAux.RecaBole;
              cupon.FeveLita = cuponAux.FeveLita;
              cupon.BimeLiqu = cuponAux.BimeLiqu;
              cupon.PeriBole = cuponAux.PeriBole;
              cupon.NumeBole = cuponAux.NumeBole;
              cupon.TipoVenc = cuponAux.TipoVenc;
              cupon.TotaBole = cuponAux.TotaBole;
              break;
            case 4:
              cupon.DescLita = cuponAux.DescLita;
              cupon.BombLita = cuponAux.BombLita;
              cupon.RecaBole = cuponAux.RecaBole;
              cupon.FeveLita = cuponAux.FeveLita;
              cupon.BimeLiqu = cuponAux.BimeLiqu;
              cupon.PeriBole = cuponAux.PeriBole;
              cupon.NumeBole = cuponAux.NumeBole;
              cupon.TipoVenc = cuponAux.TipoVenc;
              cupon.TotaBole = cuponAux.TotaBole;
              break;
            case 5:
              cupon.DescLita = cuponAux.DescLita;
              cupon.BombLita = cuponAux.BombLita;
              cupon.RecaBole = cuponAux.RecaBole;
              cupon.FeveLita = cuponAux.FeveLita;
              cupon.BimeLiqu = cuponAux.BimeLiqu;
              cupon.PeriBole = cuponAux.PeriBole;
              cupon.NumeBole = cuponAux.NumeBole;
              cupon.TipoVenc = cuponAux.TipoVenc;
              cupon.TotaBole = cuponAux.TotaBole;
              break;
            case 6:
              cupon.DescLita = cuponAux.DescLita;
              cupon.BombLita = cuponAux.BombLita;
              cupon.RecaBole = cuponAux.RecaBole;
              cupon.FeveLita = cuponAux.FeveLita;
              cupon.BimeLiqu = cuponAux.BimeLiqu;
              cupon.PeriBole = cuponAux.PeriBole;
              cupon.NumeBole = cuponAux.NumeBole;
              cupon.TipoVenc = cuponAux.TipoVenc;
              cupon.TotaBole = cuponAux.TotaBole;
              break;
          }
        }
        else if (tasa.TipoVenc == 2)
        {
          cupon.BombLita = cuponAux.BombLita;
          cupon.RecaBole = cuponAux.RecaBole;
          cupon.FeveLita = cuponAux.FeveLita;
          cupon.BimeLiqu = cuponAux.BimeLiqu;
          cupon.PeriBole = cuponAux.PeriBole;
          cupon.NumeBole = cuponAux.NumeBole;
          cupon.TipoVenc = cuponAux.TipoVenc;
          cupon.TotaBole = cuponAux.TotaBole;
        }
      }
    }
    nfoGovReader.Close();
    cupon.CodigoBarraCupon = this.GenerarCodigoBarra(tasa, cupon);
    return cupon;
  }

  public List<DTOTasasRepo> obtenerTasasIndividualGUAY(
    EmisionMasivaTasas emt,
    int desde,
    int hasta)
  {
    List<DTOTasasRepo> dtoTasasRepoList = new List<DTOTasasRepo>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT liqutasa.PeriLiqu, liqutasa.CodiTili, liqutasa.NumeLiqu, CodiInmu, CAST(TipoVenc AS INT) TipoVenc, OrdeLita, FeacLita, BimeLiqu, sum(TotaLita) as TotaLita, boleto.PeriBole, boleto.NumeBole,  boleto.FeveBole as FeveLita, cast(boleto.TotaBole as DOUBLE(10,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, liqutasa.DetaPers, CodiRyB, DetaRyB, truncate(AvalInmu,0) as AvalInmu, CallLita,  NucaLita, BarrLita, ManzLita, CasaLita, UbicLita, LocaLita, CopoLita, CallLitaReal, NucaLitaReal, BarrLitaReal, ManzLitaReal,  CasaLitaReal, UbicLitaReal, LocaLitaReal, CopoLitaReal, sum(if(CodiConc='13030202',TotaLita,0)) RecaBole, DptoLita, DistLita, SeccLita, MansLita, ParcLita, SubpLita, DigiLita,  sum(if(CodiConc='13020101',(DescLita + ExenLita),0)) as DescLita, sum(if(CodiConc='13031500',TotaLita,0)) as BombLita, DeudLita, Vinculo DireccionQr, EpagosQr, boleto.TipoBole , (SELECT IFNULL(group_concat(p.DetaPers), '') FROM relacion LEFT JOIN infogov.persona p ON p.CucuPers = relacion.CucuPers WHERE CodiOfic = 1 AND CuenCtct = liqutasa.CodiInmu AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL) AS Vinculo FROM liqutasa INNER JOIN boleto ON boleto.PeriBole = liqutasa.PeriBole AND boleto.NumeBole = liqutasa.NumeBole WHERE TipoLita = 'Aforo' AND FeacLita is not null AND liqutasa.PeriLiqu = {emt.PeriLiqu.ToString()} AND liqutasa.CodiTili = {emt.CodiTili.ToString()} AND liqutasa.NumeLiqu = {emt.NumeLiqu.ToString()} AND liqutasa.OrdeLita >= {desde.ToString()} AND liqutasa.OrdeLita <= {hasta.ToString()} AND liqutasa.CodiInmu = {emt.CodiInmu.ToString()} GROUP BY OrdeLita, TipoVenc, BimeLiqu, PeriBole, NumeBole HAVING TotaLita <> 0 {(emt.NumeLiqu == 1 || emt.NumeLiqu == 2 ? "ORDER BY OrdeLita, PeriBole, TipoVenc DESC, BimeLiqu" : "ORDER BY OrdeLita, PeriBole, NumeBole;")}");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOTasasRepo dtoTasasRepo1 = new DTOTasasRepo();
        dtoTasasRepo1.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
        dtoTasasRepo1.CodiTili = nfoGovReader.readShort("CodiTili");
        dtoTasasRepo1.NumeLiqu = nfoGovReader.readShort("NumeLiqu");
        dtoTasasRepo1.CodiInmu = nfoGovReader.readInt("CodiInmu");
        dtoTasasRepo1.TipoVenc = nfoGovReader.readInt("TipoVenc");
        dtoTasasRepo1.OrdeLita = nfoGovReader.readInt("OrdeLita");
        dtoTasasRepo1.FeacLita = nfoGovReader.readDateTime("FeacLita");
        dtoTasasRepo1.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        dtoTasasRepo1.TotaLita = nfoGovReader.readDecimal("TotaLita");
        dtoTasasRepo1.PeriBole = nfoGovReader.readInt("PeriBole");
        dtoTasasRepo1.NumeBole = nfoGovReader.readInt("NumeBole");
        dtoTasasRepo1.TotaBole = nfoGovReader.readDecimal("TotaBole");
        dtoTasasRepo1.CodiUsua = nfoGovReader.readString("CodiUsua");
        dtoTasasRepo1.CucuPers = nfoGovReader.readLong("CucuPers").ToString();
        dtoTasasRepo1.DetaPers = nfoGovReader.readString("DetaPers");
        dtoTasasRepo1.CodiRyB = nfoGovReader.readInt("CodiRyB");
        dtoTasasRepo1.DetaRyB = nfoGovReader.readString("DetaRyB");
        dtoTasasRepo1.AvalInmu = nfoGovReader.readInt("AvalInmu");
        dtoTasasRepo1.CallLita = nfoGovReader.readString("CallLita");
        dtoTasasRepo1.NucaLita = nfoGovReader.readInt("NucaLita");
        dtoTasasRepo1.BarrLita = nfoGovReader.readString("BarrLita");
        dtoTasasRepo1.ManzLita = nfoGovReader.readString("ManzLita");
        dtoTasasRepo1.CasaLita = nfoGovReader.readString("CasaLita");
        dtoTasasRepo1.UbicLita = nfoGovReader.readString("UbicLita");
        dtoTasasRepo1.LocaLita = nfoGovReader.readString("LocaLita");
        dtoTasasRepo1.CopoLita = nfoGovReader.readString("CopoLita");
        dtoTasasRepo1.CallLitaReal = nfoGovReader.readString("CallLitaReal");
        dtoTasasRepo1.NucaLitaReal = nfoGovReader.readInt("NucaLitaReal");
        dtoTasasRepo1.BarrLitaReal = nfoGovReader.readString("BarrLitaReal");
        dtoTasasRepo1.ManzLitaReal = nfoGovReader.readString("ManzLitaReal");
        dtoTasasRepo1.CasaLitaReal = nfoGovReader.readString("CasaLitaReal");
        dtoTasasRepo1.UbicLitaReal = nfoGovReader.readString("UbicLitaReal");
        dtoTasasRepo1.LocaLitaReal = nfoGovReader.readString("LocaLitaReal");
        dtoTasasRepo1.CopoLitaReal = nfoGovReader.readString("CopoLitaReal");
        dtoTasasRepo1.DptoLita = nfoGovReader.readInt("DptoLita");
        dtoTasasRepo1.DistLita = nfoGovReader.readInt("DistLita");
        dtoTasasRepo1.SeccLita = nfoGovReader.readInt("SeccLita");
        dtoTasasRepo1.MansLita = nfoGovReader.readInt("MansLita");
        dtoTasasRepo1.ParcLita = nfoGovReader.readInt("ParcLita");
        dtoTasasRepo1.SubpLita = nfoGovReader.readInt("SubpLita");
        dtoTasasRepo1.DigiLita = nfoGovReader.readString("DigiLita");
        dtoTasasRepo1.Vinculo = nfoGovReader.readString("Vinculo");
        if (dtoTasasRepo1.Vinculo.Trim().Length != 0)
          dtoTasasRepo1.Vinculo = $" (Poseedor: {dtoTasasRepo1.Vinculo})";
        dtoTasasRepo1.DireccionQr = nfoGovReader.readString("DireccionQr");
        dtoTasasRepo1.DeudLita = nfoGovReader.readDecimal("DeudLita");
        DTOTasasRepo dtoTasasRepo2 = dtoTasasRepo1;
        string[] strArray = new string[13];
        int num = dtoTasasRepo1.DptoLita;
        strArray[0] = num.ToString().PadLeft(2, '0');
        strArray[1] = "-";
        num = dtoTasasRepo1.DistLita;
        strArray[2] = num.ToString().PadLeft(2, '0');
        strArray[3] = "-";
        num = dtoTasasRepo1.SeccLita;
        strArray[4] = num.ToString().PadLeft(2, '0');
        strArray[5] = "-";
        num = dtoTasasRepo1.MansLita;
        strArray[6] = num.ToString().PadLeft(4, '0');
        strArray[7] = "-";
        num = dtoTasasRepo1.ParcLita;
        strArray[8] = num.ToString().PadLeft(6, '0');
        strArray[9] = "-";
        num = dtoTasasRepo1.SubpLita;
        strArray[10] = num.ToString().PadLeft(4, '0');
        strArray[11] = "-";
        strArray[12] = dtoTasasRepo1.DigiLita;
        string str1 = string.Concat(strArray);
        dtoTasasRepo2.NomeLita = str1;
        DTOTasasRepo dtoTasasRepo3 = dtoTasasRepo1;
        num = dtoTasasRepo1.CodiInmu;
        string str2 = num.ToString().PadLeft(9, '0');
        num = dtoTasasRepo1.OrdeLita;
        string str3 = num.ToString().PadLeft(6, '0');
        string str4 = $"1{str2}{str3}";
        dtoTasasRepo3.Barrita = str4;
        DTOTasasRepo dtoTasasRepo4 = dtoTasasRepo1;
        num = dtoTasasRepo1.CodiInmu;
        string str5 = "1" + num.ToString().PadLeft(6, '0');
        dtoTasasRepo4.pagomisctas = str5;
        DTOTasasRepo dtoTasasRepo5 = dtoTasasRepo1;
        num = dtoTasasRepo1.CodiInmu;
        string str6 = "1" + num.ToString().PadLeft(12, '0');
        dtoTasasRepo5.redlink = str6;
        dtoTasasRepo1.cupaux.Add(new CuponAux()
        {
          DescLita = nfoGovReader.readDecimal("DescLita"),
          BombLita = nfoGovReader.readDecimal("BombLita"),
          DeudLita = nfoGovReader.readDecimal("DeudLita"),
          RecaBole = nfoGovReader.readDecimal("RecaBole"),
          FeveLita = nfoGovReader.readDateTime("FeveLita"),
          BimeLiqu = nfoGovReader.readInt("BimeLiqu"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          TipoVenc = nfoGovReader.readInt("TipoVenc"),
          TotaBole = nfoGovReader.readDecimal("TotaBole"),
          TipoBole = nfoGovReader.readString("TipoBole")
        });
        dtoTasasRepoList.Add(dtoTasasRepo1);
      }
    }
    nfoGovReader.Close();
    return dtoTasasRepoList;
  }

  public List<DTOTasasRepo> generarQrEpagos(List<DTOTasasRepo> lista, List<DTOTasasRepo> listaerror)
  {
    EPagos epagos = new EPagos();
    string respuesta = "";
    string token1 = "";
    int convenio = 3088;
    DatosCredenciales credenciales1 = new DatosCredenciales();
    credenciales1.id_organismo = 88;
    credenciales1.password = "b1c91b6f9f7ae4dcaad5b67f0e15ad3e";
    credenciales1.hash = "365ff042dd5b1d54b183e71926c92686";
    credenciales1.id_usuario = "996";
    foreach (DTOTasasRepo dtoTasasRepo in lista)
    {
      List<OperacionQR> operacionQrList = new List<OperacionQR>();
      foreach (CuponTasa cupone in dtoTasasRepo.cupones)
      {
        bool flag = false;
        int num1 = 34;
        DetallePago detallePago1 = new DetallePago();
        detallePago1.id_item = 1;
        DetallePago detallePago2 = detallePago1;
        string str1 = cupone.NumeBole.ToString();
        int num2 = cupone.PeriBole;
        string str2 = num2.ToString();
        string str3 = $"Pago de boleto {str1}-{str2}";
        detallePago2.desc_item = str3;
        detallePago1.monto_item = (float) cupone.TotaBole;
        detallePago1.cantidad_item = 1;
        List<DetallePago> detallePagoList = new List<DetallePago>();
        detallePagoList.Add(detallePago1);
        DatosPagadorPago datosPagadorPago = new DatosPagadorPago();
        datosPagadorPago.nombre_pagador = dtoTasasRepo.DetaPers;
        datosPagadorPago.apellido_pagador = "";
        datosPagadorPago.email_pagador = dtoTasasRepo.Email == null ? "mail@mail.com" : dtoTasasRepo.Email;
        datosPagadorPago.identificacion_pagador = new IdentificacionPagador()
        {
          tipo_doc_pagador = 1,
          numero_doc_pagador = dtoTasasRepo.CucuPers != "0" ? long.Parse(dtoTasasRepo.CucuPers.Substring(2, 8)) : 11111111L,
          cuit_doc_pagador = dtoTasasRepo.CucuPers != "0" ? long.Parse(dtoTasasRepo.CucuPers) : 20111111112L
        };
        datosPagadorPago.domicilio_pagador = new DomicilioPagador();
        datosPagadorPago.telefono_pagador = new TelefonoPagador();
        DatosOperacionPago operacion = new DatosOperacionPago();
        operacion.id_moneda_operacion = 1;
        operacion.detalle_operacion = detallePagoList.ToArray();
        operacion.pagador = datosPagadorPago;
        operacion.identificador_externo_2 = "";
        operacion.identificador_externo_3 = "";
        operacion.opc_pdf = flag;
        operacion.monto_operacion = (float) cupone.TotaBole;
        DatosOperacionPago datosOperacionPago = operacion;
        num2 = cupone.PeriBole;
        string str4 = num2.ToString().PadLeft(4, '0');
        num2 = cupone.NumeBole;
        string str5 = num2.ToString().PadLeft(8, '0');
        string str6 = str4 + str5;
        datosOperacionPago.numero_operacion = str6;
        operacion.opc_fecha_vencimiento = cupone.FeveLita;
        operacion.opc_devolver_qr = true;
        operacion.opc_devolver_qrSpecified = true;
        operacion.opc_generar_pdf = false;
        epagos.obtener_token("2.0", credenciales1, out respuesta, out token1);
        DatosCredencialesPago credenciales2 = new DatosCredencialesPago();
        credenciales2.id_organismo = credenciales1.id_organismo;
        credenciales2.token = token1;
        DatosPagoTarjeta datosPagoTarjeta = new DatosPagoTarjeta();
        List<DatosFormaPago> datosFormaPagoList = new List<DatosFormaPago>();
        datosFormaPagoList.Add(new DatosFormaPago()
        {
          id_fp = num1,
          monto_fp = (float) cupone.TotaBole,
          tarjeta = datosPagoTarjeta
        });
        int id_transaccion = 0;
        string token2 = "";
        int id_organismo = 0;
        string numero_operacion = "";
        try
        {
          epagos.solicitud_pago("2.0", TipoOperacion.op_pago, credenciales2, operacion, datosFormaPagoList.ToArray(), ref convenio, out respuesta, out id_transaccion, out token2, out id_organismo, out numero_operacion, out RespuestaFormaPago[] _);
        }
        catch
        {
          listaerror.Add(dtoTasasRepo);
        }
        operacionQrList.Add(new OperacionQR()
        {
          id_transaccion = id_transaccion,
          etiqueta = cupone.PeriodoStr
        });
      }
      epagos.obtener_token("2.0", credenciales1, out respuesta, out token1);
      byte[] qr;
      epagos.generar_qr_vinculado("2.0", new DatosCredencialesPago()
      {
        id_organismo = credenciales1.id_organismo,
        token = token1
      }, operacionQrList.ToArray(), out respuesta, out qr);
      if (qr != null)
        dtoTasasRepo.EpagoQr = ImagesManager.getInstance().Base64ToImage(qr);
    }
    return lista;
  }

  public List<DTOTasasRepo> generarQrEpagosPython(
    List<DTOTasasRepo> lista,
    List<DTOTasasRepo> listaerror)
  {
    EPagos epagos = new EPagos();
    string respuesta = "";
    string token1 = "";
    int convenio = 3088;
    DatosCredenciales credenciales1 = new DatosCredenciales();
    credenciales1.id_organismo = 88;
    credenciales1.password = "b1c91b6f9f7ae4dcaad5b67f0e15ad3e";
    credenciales1.hash = "365ff042dd5b1d54b183e71926c92686";
    credenciales1.id_usuario = "996";
    foreach (DTOTasasRepo dtoTasasRepo in lista)
    {
      List<OperacionQR> operacionQrList = new List<OperacionQR>();
      foreach (CuponTasa cupone in dtoTasasRepo.cupones)
      {
        bool flag = false;
        int num1 = 34;
        IdentificacionPagador identificacionPagador = new IdentificacionPagador();
        identificacionPagador.tipo_doc_pagador = 1;
        identificacionPagador.numero_doc_pagador = dtoTasasRepo.CucuPers != "0" ? long.Parse(dtoTasasRepo.CucuPers.Substring(2, 8)) : 11111111L;
        identificacionPagador.cuit_doc_pagador = dtoTasasRepo.CucuPers != "0" ? long.Parse(dtoTasasRepo.CucuPers) : 11111111111L;
        DatosPagadorPago datosPagadorPago = new DatosPagadorPago();
        datosPagadorPago.nombre_pagador = dtoTasasRepo.DetaPers;
        datosPagadorPago.apellido_pagador = "";
        datosPagadorPago.email_pagador = dtoTasasRepo.Email == null ? "mail@mail.com" : dtoTasasRepo.Email;
        datosPagadorPago.identificacion_pagador = identificacionPagador;
        datosPagadorPago.domicilio_pagador = new DomicilioPagador();
        datosPagadorPago.telefono_pagador = new TelefonoPagador();
        DetallePago detallePago1 = new DetallePago();
        detallePago1.id_item = 1;
        DetallePago detallePago2 = detallePago1;
        int num2 = cupone.NumeBole;
        string str1 = num2.ToString();
        num2 = cupone.PeriBole;
        string str2 = num2.ToString();
        string str3 = $"Pago de boleto {str1}-{str2}";
        detallePago2.desc_item = str3;
        detallePago1.monto_item = (float) cupone.TotaBole;
        detallePago1.cantidad_item = 1;
        List<DetallePago> detallePagoList = new List<DetallePago>();
        detallePagoList.Add(detallePago1);
        DatosOperacionPago operacion = new DatosOperacionPago();
        DatosOperacionPago datosOperacionPago = operacion;
        num2 = cupone.PeriBole;
        string str4 = num2.ToString().PadLeft(4, '0');
        num2 = cupone.NumeBole;
        string str5 = num2.ToString().PadLeft(8, '0');
        string str6 = str4 + str5;
        datosOperacionPago.numero_operacion = str6;
        operacion.identificador_externo_2 = "";
        operacion.identificador_externo_3 = "";
        operacion.id_moneda_operacion = 1;
        operacion.detalle_operacion = detallePagoList.ToArray();
        operacion.pagador = datosPagadorPago;
        operacion.opc_pdf = flag;
        operacion.monto_operacion = (float) cupone.TotaBole;
        operacion.opc_fecha_vencimiento = cupone.FeveLita;
        operacion.opc_devolver_qr = true;
        operacion.opc_devolver_qrSpecified = true;
        operacion.opc_generar_pdf = false;
        epagos.obtener_token("2.0", credenciales1, out respuesta, out token1);
        DatosCredencialesPago credenciales2 = new DatosCredencialesPago();
        credenciales2.id_organismo = credenciales1.id_organismo;
        credenciales2.token = token1;
        DatosPagoTarjeta datosPagoTarjeta = new DatosPagoTarjeta();
        List<DatosFormaPago> datosFormaPagoList = new List<DatosFormaPago>();
        datosFormaPagoList.Add(new DatosFormaPago()
        {
          id_fp = num1,
          monto_fp = (float) cupone.TotaBole,
          tarjeta = datosPagoTarjeta
        });
        int id_transaccion = 0;
        string token2 = "";
        int id_organismo = 0;
        string numero_operacion = "";
        try
        {
          epagos.solicitud_pago("2.0", TipoOperacion.op_pago, credenciales2, operacion, datosFormaPagoList.ToArray(), ref convenio, out respuesta, out id_transaccion, out token2, out id_organismo, out numero_operacion, out RespuestaFormaPago[] _);
        }
        catch
        {
          listaerror.Add(dtoTasasRepo);
        }
        operacionQrList.Add(new OperacionQR()
        {
          id_transaccion = id_transaccion,
          etiqueta = cupone.PeriodoStr
        });
      }
      epagos.obtener_token("2.0", credenciales1, out respuesta, out token1);
      byte[] qr;
      epagos.generar_qr_vinculado("2.0", new DatosCredencialesPago()
      {
        id_organismo = credenciales1.id_organismo,
        token = token1
      }, operacionQrList.ToArray(), out respuesta, out qr);
      if (qr != null)
        dtoTasasRepo.EpagoQr = ImagesManager.getInstance().Base64ToImage(qr);
    }
    return lista;
  }

  public bool ProcesarActualizarQrEpagos(List<List<DTOTasasRepo>> ListaPartida)
  {
    foreach (List<DTOTasasRepo> lista in ListaPartida)
      this.ActualizarEmisionQrEpagos(lista);
    return true;
  }

  public bool ActualizarEmisionQrEpagos(List<DTOTasasRepo> lista)
  {
    foreach (DTOTasasRepo dtoTasasRepo in lista)
    {
      if (dtoTasasRepo.EpagoQr != null)
        this.conn.executeNonQuery($"UPDATE liqutasa SET EpagosQr='{ImagesManager.getInstance().ImageToBase64(dtoTasasRepo.EpagoQr, ImageFormat.Jpeg)}' WHERE PeriLiqu = {dtoTasasRepo.PeriLiqu.ToString()} AND CodiTili = {dtoTasasRepo.CodiTili.ToString()} AND NumeLiqu = {dtoTasasRepo.NumeLiqu.ToString()} AND CodiInmu = {dtoTasasRepo.CodiInmu.ToString()};");
    }
    return true;
  }

  public List<List<DTOTasasRepo>> ProcesarQrEpagosLotes(List<List<DTOTasasRepo>> ListaPartida)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<List<DTOTasasRepo>> dtoTasasRepoListList = new List<List<DTOTasasRepo>>();
    foreach (List<DTOTasasRepo> lista in ListaPartida)
    {
      try
      {
        this.GenerarQrEpagosLotes(lista);
      }
      catch (Exception ex)
      {
        stringBuilder.AppendLine(ex.Message);
        dtoTasasRepoListList.Add(lista);
      }
    }
    using (StreamWriter streamWriter = new StreamWriter("Fallos_Proceso.txt", false, Encoding.UTF8))
    {
      streamWriter.Write(stringBuilder.ToString());
      streamWriter.Close();
    }
    return ListaPartida;
  }

  public List<DTOTasasRepo> GenerarQrEpagosLotes(List<DTOTasasRepo> lista)
  {
    EPagos epagos = new EPagos();
    string respuesta = "";
    string token = "";
    int num1 = 3088;
    DatosCredenciales credenciales1 = new DatosCredenciales();
    credenciales1.id_organismo = 88;
    credenciales1.id_usuario = "13218";
    credenciales1.password = "534a2037824f7bddc472a3b6ee10fd85";
    credenciales1.hash = "ccbc82a3f5838c34561f58ec6f98cdaa";
    List<TipoLote> tipoLoteList = new List<TipoLote>();
    List<LoteEpagos> loteEpagosList = new List<LoteEpagos>();
    Dictionary<DTOTasasRepo, List<LoteEpagos>> dictionary = new Dictionary<DTOTasasRepo, List<LoteEpagos>>();
    foreach (DTOTasasRepo key in lista)
    {
      dictionary.Add(key, new List<LoteEpagos>());
      foreach (CuponTasa cupone in key.cupones)
      {
        bool flag = false;
        int num2 = 34;
        DetallePago detallePago1 = new DetallePago();
        detallePago1.id_item = 1;
        DetallePago detallePago2 = detallePago1;
        string str1 = cupone.NumeBole.ToString();
        int num3 = cupone.PeriBole;
        string str2 = num3.ToString();
        string str3 = $"Pago de boleto {str1}-{str2}";
        detallePago2.desc_item = str3;
        detallePago1.monto_item = (float) cupone.TotaBole;
        detallePago1.cantidad_item = 1;
        List<DetallePago> detallePagoList = new List<DetallePago>()
        {
          detallePago1
        };
        DatosPagadorPago datosPagadorPago = new DatosPagadorPago();
        datosPagadorPago.nombre_pagador = key.DetaPers;
        datosPagadorPago.apellido_pagador = "";
        datosPagadorPago.email_pagador = key.Email == null ? "mail@mail.com" : key.Email;
        datosPagadorPago.identificacion_pagador = new IdentificacionPagador()
        {
          tipo_doc_pagador = 1,
          numero_doc_pagador = key.CucuPers != "0" ? long.Parse(key.CucuPers.Substring(2, 8)) : 11111111L,
          cuit_doc_pagador = key.CucuPers != "0" ? long.Parse(key.CucuPers) : 20111111112L
        };
        datosPagadorPago.domicilio_pagador = new DomicilioPagador();
        datosPagadorPago.telefono_pagador = new TelefonoPagador();
        DatosOperacionPago datosOperacionPago1 = new DatosOperacionPago();
        datosOperacionPago1.id_moneda_operacion = 1;
        datosOperacionPago1.detalle_operacion = detallePagoList.ToArray();
        datosOperacionPago1.pagador = datosPagadorPago;
        datosOperacionPago1.identificador_externo_2 = "";
        datosOperacionPago1.identificador_externo_3 = "";
        datosOperacionPago1.opc_pdf = flag;
        datosOperacionPago1.monto_operacion = (float) cupone.TotaBole;
        DatosOperacionPago datosOperacionPago2 = datosOperacionPago1;
        num3 = cupone.PeriBole;
        string str4 = num3.ToString().PadLeft(4, '0');
        num3 = cupone.NumeBole;
        string str5 = num3.ToString().PadLeft(8, '0');
        string str6 = str4 + str5;
        datosOperacionPago2.numero_operacion = str6;
        datosOperacionPago1.opc_fecha_vencimiento = cupone.FeveLita;
        datosOperacionPago1.opc_devolver_qr = true;
        datosOperacionPago1.opc_devolver_qrSpecified = true;
        datosOperacionPago1.opc_generar_pdf = false;
        DatosPagoTarjeta datosPagoTarjeta = new DatosPagoTarjeta();
        List<DatosFormaPago> datosFormaPagoList = new List<DatosFormaPago>()
        {
          new DatosFormaPago()
          {
            id_fp = num2,
            monto_fp = (float) cupone.TotaBole,
            tarjeta = datosPagoTarjeta
          }
        };
        TipoLote tipoLote = new TipoLote();
        LoteEpagos loteEpagos1 = new LoteEpagos();
        loteEpagos1.CodiInmu = key.CodiInmu;
        loteEpagos1.Periodo = cupone.PeriodoStr;
        loteEpagos1.fp = tipoLote.fp = datosFormaPagoList.ToArray();
        loteEpagos1.operacion = tipoLote.operacion = datosOperacionPago1;
        LoteEpagos loteEpagos2 = loteEpagos1;
        tipoLote.convenio = num3 = num1;
        int num4 = num3;
        loteEpagos2.convenio = num4;
        tipoLoteList.Add(tipoLote);
        loteEpagosList.Add(loteEpagos1);
        dictionary[key].Add(loteEpagos1);
      }
    }
    epagos.obtener_token("2.0", credenciales1, out respuesta, out token);
    DatosCredencialesPago credenciales2 = new DatosCredencialesPago();
    credenciales2.id_organismo = credenciales1.id_organismo;
    credenciales2.token = token;
    int id_organismo = 0;
    RespuestaLote[] lote1;
    epagos.solicitud_pago_lote("2.0", TipoOperacion.op_pago, credenciales2, tipoLoteList.ToArray(), out respuesta, out token, out id_organismo, out lote1);
    for (int index = 0; index < lote1.Length; ++index)
      loteEpagosList[index].id_transaccion = lote1[index].id_transaccion;
    foreach (DTOTasasRepo key in dictionary.Keys)
    {
      List<OperacionQR> operacionQrList = new List<OperacionQR>();
      foreach (LoteEpagos loteEpagos in dictionary[key])
        operacionQrList.Add(new OperacionQR()
        {
          id_transaccion = loteEpagos.id_transaccion,
          etiqueta = loteEpagos.Periodo
        });
      epagos.obtener_token("2.0", credenciales1, out respuesta, out token);
      byte[] qr;
      epagos.generar_qr_vinculado("2.0", new DatosCredencialesPago()
      {
        id_organismo = credenciales1.id_organismo,
        token = token
      }, operacionQrList.ToArray(), out respuesta, out qr);
      if (qr != null)
        key.EpagoQr = ImagesManager.getInstance().Base64ToImage(qr);
    }
    return lista;
  }

  public string GenerarCodigoBarra(DTOTasasRepo tasa, CuponTasa cupon)
  {
    DateTime dateTime1 = new DateTime();
    dateTime1 = tasa.PeriLiqu != 2025 || tasa.NumeLiqu != (short) 16 /*0x10*/ || cupon.BimeLiqu != 3 ? cupon.FeveLita : new DateTime(2025, 6, 18);
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
    num2 = tasa.CodiInmu;
    strArray[4] = num2.ToString().PadLeft(13, '0');
    strArray[5] = "11171";
    strArray[6] = str;
    num2 = cupon.PeriBole;
    strArray[7] = num2.ToString().Substring(2, 2);
    strArray[8] = num1.ToString().PadLeft(3, '0');
    string barra = string.Concat(strArray);
    return barra + this.CodigoVerificadorMARIO(barra);
  }

  public string CodigoVerificador(string barra)
  {
    int[] numArray = new int[5]{ 11, 13, 17, 19, 23 };
    int num1 = 0;
    int num2 = 0;
    int index1 = 0;
    for (int index2 = barra.Length - 1; index2 >= 0; --index2)
    {
      int num3 = int.Parse(barra[index2].ToString()) * numArray[index1];
      num1 += num3;
      num2 += num1;
      if (index1 < 4)
        ++index1;
      else
        index1 = 0;
    }
    int num4 = 0;
    for (int startIndex = 0; startIndex < num2.ToString().Length; ++startIndex)
      num4 += int.Parse(num2.ToString().Substring(startIndex, 1));
    return num4.ToString().PadLeft(3, '0');
  }

  public string CodigoVerificadorMARIO(string barra)
  {
    long num = 0;
    int[] numArray = new int[5]{ 11, 13, 17, 19, 23 };
    for (int index = barra.Length - 1; index >= 0; --index)
      num += (long) (int.Parse(barra[index].ToString()) * numArray[(50 - index) % 5]);
    return Math.Abs(num - num / 100L * 100L - num / 100L).ToString().PadLeft(3, '0');
  }

  public List<DTOTasasRepo> CuentasConMail()
  {
    List<DTOTasasRepo> dtoTasasRepoList = new List<DTOTasasRepo>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM adhesionweb WHERE CodiOfic=1 AND CuenCtct != '' AND CuenCtct IS NOT NULL;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        dtoTasasRepoList.Add(new DTOTasasRepo()
        {
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          Email = nfoGovReader.readString("EmailAdwe")
        });
    }
    nfoGovReader.Close();
    return dtoTasasRepoList;
  }

  public List<MailBole> CuentasParaEnviarMail()
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<MailBole> mailBoleList = new List<MailBole>();
    stringBuilder.AppendLine("SELECT CodiAdwe, CodiOfic, CuenCtct, GROUP_CONCAT(EmailAdwe) EmailAdwe");
    stringBuilder.AppendLine("FROM adhesionweb");
    stringBuilder.AppendLine("WHERE CodiOfic=1 AND CuenCtct!='' AND FechEnvi IS NULL");
    stringBuilder.AppendLine("GROUP BY CodiOfic, CuenCtct");
    stringBuilder.AppendLine("ORDER BY CodiOfic, CuenCtct;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        mailBoleList.Add(new MailBole()
        {
          CodiAdwe = nfoGovReader.readInt("CodiAdwe"),
          CodiOfic = (short) 1,
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          Email = nfoGovReader.readString("EmailAdwe")
        });
    }
    nfoGovReader.Close();
    return mailBoleList;
  }

  public bool ActualizarFechaEnvio(MailBole cuen)
  {
    return this.conn.executeNonQuery($"UPDATE adhesionweb SET FechEnvi=NOW() WHERE CodiOfic = {cuen.CodiOfic.ToString()} AND CuenCtct = '{cuen.CuenCtct}';");
  }

  public List<DTOTasasRepo> obtenerTasasParaCorreo(EmisionMasivaTasas emt, int desde, int hasta)
  {
    List<DTOTasasRepo> dtoTasasRepoList = new List<DTOTasasRepo>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT liqutasa.CodiInmu, CAST(TipoVenc AS INT) TipoVenc, OrdeLita, FeacLita, BimeLiqu, sum(TotaLita) as TotaLita, boleto.PeriBole, boleto.NumeBole,  boleto.FeveBole as FeveLita, cast(boleto.TotaBole as DOUBLE(10,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, liqutasa.DetaPers, CodiRyB, DetaRyB, truncate(AvalInmu,0) as AvalInmu, CallLita,  NucaLita, BarrLita, ManzLita, CasaLita, UbicLita, LocaLita, CopoLita, CallLitaReal, NucaLitaReal, BarrLitaReal, ManzLitaReal,  CasaLitaReal, UbicLitaReal, LocaLitaReal, CopoLitaReal, sum(if(CodiConc='13030202',TotaLita,0)) RecaBole, ifnull(p.DetaPers,'') as Vinculo, DptoLita, DistLita, SeccLita, MansLita, ParcLita, SubpLita, DigiLita,  sum(if(CodiConc='13020101',(DescLita + ExenLita),0)) as DescLita, sum(if(CodiConc='13031500',TotaLita,0)) as BombLita, DeudLita, Vinculo DireccionQr, EpagosQr, boleto.TipoBole FROM liqutasa INNER JOIN boleto ON boleto.PeriBole = liqutasa.PeriBole AND boleto.NumeBole = liqutasa.NumeBole LEFT JOIN relacion ON relacion.CodiOfic = 1 AND relacion.CuenCtct = liqutasa.CodiInmu AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL LEFT JOIN infogov.persona p ON p.CucuPers = relacion.CucuPers INNER JOIN adhesionweb ON adhesionweb.CodiOfic = 1 AND adhesionweb.CuenCtct = liqutasa.CodiInmu WHERE TipoLita = 'Aforo' AND FeacLita is not null AND liqutasa.PeriLiqu = {emt.PeriLiqu.ToString()} AND liqutasa.CodiTili = {emt.CodiTili.ToString()} AND liqutasa.NumeLiqu = {emt.NumeLiqu.ToString()} AND liqutasa.OrdeLita >= {desde.ToString()} AND liqutasa.OrdeLita <= {hasta.ToString()} AND adhesionweb.CuenCtct IS NOT NULL AND adhesionweb.CuenCtct != '' GROUP BY OrdeLita, TipoVenc, BimeLiqu, PeriBole, NumeBole HAVING TotaLita <> 0 {(emt.NumeLiqu == 1 ? "ORDER BY OrdeLita, PeriBole, TipoVenc DESC, BimeLiqu" : "ORDER BY OrdeLita, PeriBole, NumeBole;")}");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOTasasRepo dtoTasasRepo = new DTOTasasRepo();
        dtoTasasRepo.CodiInmu = nfoGovReader.readInt("CodiInmu");
        dtoTasasRepo.TipoVenc = nfoGovReader.readInt("TipoVenc");
        dtoTasasRepo.OrdeLita = nfoGovReader.readInt("OrdeLita");
        dtoTasasRepo.FeacLita = nfoGovReader.readDateTime("FeacLita");
        dtoTasasRepo.BimeLiqu = nfoGovReader.readInt("BimeLiqu");
        dtoTasasRepo.TotaLita = nfoGovReader.readDecimal("TotaLita");
        dtoTasasRepo.PeriBole = nfoGovReader.readInt("PeriBole");
        dtoTasasRepo.NumeBole = nfoGovReader.readInt("NumeBole");
        dtoTasasRepo.TotaBole = nfoGovReader.readDecimal("TotaBole");
        dtoTasasRepo.CodiUsua = nfoGovReader.readString("CodiUsua");
        dtoTasasRepo.CucuPers = nfoGovReader.readLong("CucuPers").ToString();
        dtoTasasRepo.DetaPers = nfoGovReader.readString("DetaPers");
        dtoTasasRepo.CodiRyB = nfoGovReader.readInt("CodiRyB");
        dtoTasasRepo.DetaRyB = nfoGovReader.readString("DetaRyB");
        dtoTasasRepo.AvalInmu = nfoGovReader.readInt("AvalInmu");
        dtoTasasRepo.CallLita = nfoGovReader.readString("CallLita");
        dtoTasasRepo.NucaLita = nfoGovReader.readInt("NucaLita");
        dtoTasasRepo.BarrLita = nfoGovReader.readString("BarrLita");
        dtoTasasRepo.ManzLita = nfoGovReader.readString("ManzLita");
        dtoTasasRepo.CasaLita = nfoGovReader.readString("CasaLita");
        dtoTasasRepo.UbicLita = nfoGovReader.readString("UbicLita");
        dtoTasasRepo.LocaLita = nfoGovReader.readString("LocaLita");
        dtoTasasRepo.CopoLita = nfoGovReader.readString("CopoLita");
        dtoTasasRepo.CallLitaReal = nfoGovReader.readString("CallLitaReal");
        dtoTasasRepo.NucaLitaReal = nfoGovReader.readInt("NucaLitaReal");
        dtoTasasRepo.BarrLitaReal = nfoGovReader.readString("BarrLitaReal");
        dtoTasasRepo.ManzLitaReal = nfoGovReader.readString("ManzLitaReal");
        dtoTasasRepo.CasaLitaReal = nfoGovReader.readString("CasaLitaReal");
        dtoTasasRepo.UbicLitaReal = nfoGovReader.readString("UbicLitaReal");
        dtoTasasRepo.LocaLitaReal = nfoGovReader.readString("LocaLitaReal");
        dtoTasasRepo.CopoLitaReal = nfoGovReader.readString("CopoLitaReal");
        dtoTasasRepo.DptoLita = nfoGovReader.readInt("DptoLita");
        dtoTasasRepo.DistLita = nfoGovReader.readInt("DistLita");
        dtoTasasRepo.SeccLita = nfoGovReader.readInt("SeccLita");
        dtoTasasRepo.MansLita = nfoGovReader.readInt("MansLita");
        dtoTasasRepo.ParcLita = nfoGovReader.readInt("ParcLita");
        dtoTasasRepo.SubpLita = nfoGovReader.readInt("SubpLita");
        dtoTasasRepo.DigiLita = nfoGovReader.readString("DigiLita");
        dtoTasasRepo.Vinculo = nfoGovReader.readString("Vinculo");
        if (dtoTasasRepo.Vinculo.Trim().Length != 0)
          dtoTasasRepo.Vinculo = $" (Poseedor: {dtoTasasRepo.Vinculo})";
        dtoTasasRepo.DireccionQr = nfoGovReader.readString("DireccionQr");
        dtoTasasRepo.NomeLita = $"{dtoTasasRepo.DptoLita.ToString().PadLeft(2, '0')}-{dtoTasasRepo.DistLita.ToString().PadLeft(2, '0')}-{dtoTasasRepo.SeccLita.ToString().PadLeft(2, '0')}-{dtoTasasRepo.MansLita.ToString().PadLeft(4, '0')}-{dtoTasasRepo.ParcLita.ToString().PadLeft(6, '0')}-{dtoTasasRepo.SubpLita.ToString().PadLeft(4, '0')}-{dtoTasasRepo.DigiLita}";
        dtoTasasRepo.Barrita = $"1{dtoTasasRepo.CodiInmu.ToString().PadLeft(9, '0')}{dtoTasasRepo.OrdeLita.ToString().PadLeft(6, '0')}";
        dtoTasasRepo.pagomisctas = "1" + dtoTasasRepo.CodiInmu.ToString().PadLeft(6, '0');
        dtoTasasRepo.redlink = "1" + dtoTasasRepo.CodiInmu.ToString().PadLeft(12, '0');
        dtoTasasRepo.cupaux.Add(new CuponAux()
        {
          DescLita = nfoGovReader.readDecimal("DescLita"),
          BombLita = nfoGovReader.readDecimal("BombLita"),
          DeudLita = nfoGovReader.readDecimal("DeudLita"),
          RecaBole = nfoGovReader.readDecimal("RecaBole"),
          FeveLita = nfoGovReader.readDateTime("FeveLita"),
          BimeLiqu = nfoGovReader.readInt("BimeLiqu"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          TipoVenc = nfoGovReader.readInt("TipoVenc"),
          TotaBole = nfoGovReader.readDecimal("TotaBole"),
          TipoBole = nfoGovReader.readString("TipoBole")
        });
        dtoTasasRepoList.Add(dtoTasasRepo);
      }
    }
    nfoGovReader.Close();
    return dtoTasasRepoList;
  }

  public List<DTOPlanillaDistribucionBoletos> getPlanillaDistribucion(
    EmisionMasivaTasas emt,
    int desde,
    int hasta)
  {
    List<DTOPlanillaDistribucionBoletos> planillaDistribucion = new List<DTOPlanillaDistribucionBoletos>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT PeriLiqu, CodiInmu, CAST(TipoVenc AS INT) TipoVenc, OrdeLita, FeacLita, BimeLiqu, sum(TotaLita) as TotaLita, boleto.PeriBole, boleto.NumeBole,  boleto.FeveBole as FeveLita, cast(boleto.TotaBole as DOUBLE(10,2)) as TotaBole, boleto.CodiUsua, boleto.CucuPers, liqutasa.DetaPers, CodiRyB, DetaRyB, truncate(AvalInmu,0) as AvalInmu, CallLita,  CONCAT(CallLita,' ',IF(NucaLita=0,'',NucaLita),' ',BarrLita,' ',ManzLita,' ',CasaLita,' ',UbicLita) Domicilio,  NucaLita, BarrLita, ManzLita, CasaLita, UbicLita, LocaLita, CopoLita, CallLitaReal, NucaLitaReal, BarrLitaReal, ManzLitaReal,  CasaLitaReal, UbicLitaReal, LocaLitaReal, CopoLitaReal, sum(if(CodiConc='13030202',TotaLita,0)) RecaBole, ifnull(p.DetaPers,'') as Vinculo, DptoLita, DistLita, SeccLita, MansLita, ParcLita, SubpLita, DigiLita,  sum(if(CodiConc='13020101',(DescLita + ExenLita),0)) as DescLita, sum(if(CodiConc='13031500',TotaLita,0)) as BombLita, DeudLita, Vinculo DireccionQr FROM liqutasa INNER JOIN boleto ON boleto.PeriBole = liqutasa.PeriBole AND boleto.NumeBole = liqutasa.NumeBole LEFT JOIN relacion ON relacion.CodiOfic = 1 AND relacion.CuenCtct = liqutasa.CodiInmu AND relacion.TipoRela = 'Poseedor' AND relacion.FebaRela IS NULL LEFT JOIN infogov.persona p ON p.CucuPers = relacion.CucuPers WHERE TipoLita = 'Aforo' AND FeacLita is not null AND liqutasa.PeriLiqu = {emt.PeriLiqu.ToString()} AND liqutasa.CodiTili = {emt.CodiTili.ToString()} AND liqutasa.NumeLiqu = {emt.NumeLiqu.ToString()} AND liqutasa.OrdeLita >= {desde.ToString()} AND liqutasa.OrdeLita <= {hasta.ToString()} GROUP BY CodiInmu HAVING TotaLita <> 0 ORDER BY OrdeLita, PeriBole, NumeBole;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOPlanillaDistribucionBoletos distribucionBoletos = new DTOPlanillaDistribucionBoletos();
        distribucionBoletos.CodiInmu = nfoGovReader.readInt("CodiInmu");
        distribucionBoletos.Titular = nfoGovReader.readString("DetaPers");
        distribucionBoletos.DomicilioPostal = nfoGovReader.readString("Domicilio").TrimStart();
        distribucionBoletos.Distrito = nfoGovReader.readString("LocaLita");
        distribucionBoletos.OrdeLita = nfoGovReader.readInt("OrdeLita");
        distribucionBoletos.Periodo = nfoGovReader.readInt("PeriLiqu");
        switch (nfoGovReader.readShort("BimeLiqu"))
        {
          case 1:
          case 2:
            distribucionBoletos.Bimestre = "Anual,1,2";
            break;
          case 3:
          case 4:
            distribucionBoletos.Bimestre = "3,4";
            break;
          case 5:
          case 6:
            distribucionBoletos.Bimestre = "5,6";
            break;
        }
        planillaDistribucion.Add(distribucionBoletos);
      }
    }
    nfoGovReader.Close();
    return planillaDistribucion;
  }

  public void ProcesarCalcularDeudas(List<DTOTasasRepo> listaRepo)
  {
    foreach (DTOTasasRepo dto in listaRepo)
      this.CalcularDeudas(dto);
  }

  public DTOTasasRepo CalcularDeudas(DTOTasasRepo dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.conn.executeNonQuery($"CALL `fnDeuda`('1', '{dto.CodiInmu.ToString()}', '2025-12-31');");
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT SUM(SaldCtct) SaldCtct, SUM(RecaCtct) RecaCtct FROM tmp_ctacteboleto WHERE CodiFapa = 0 AND FealCtct <= '2025-12-31';");
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

  public int ConsultarPendEpagoQr(EmisionMasivaTasas emt)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("DROP TEMPORARY TABLE IF EXISTS tmp_liqutasa;");
    stringBuilder.AppendLine("CREATE TEMPORARY TABLE tmp_liqutasa");
    stringBuilder.AppendLine("SELECT CodiInmu, NumeLiqu, EpagosQr");
    stringBuilder.AppendLine("FROM liqutasa");
    stringBuilder.AppendLine($"WHERE PeriLiqu= {emt.PeriLiqu.ToString()} AND NumeLiqu= {emt.NumeLiqu.ToString()} AND CodITili = {emt.CodiTili.ToString()}");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, CodiTili, NumeLiqu, OrdeLita;");
    stringBuilder.AppendLine("SELECT COUNT(*) FROM tmp_liqutasa WHERE EpagosQr IS NULL;");
    return this.conn.executeInt(stringBuilder.ToString());
  }

  public List<DTOTasasRepo> ObtenerTasaparaEpagosQr(EmisionMasivaTasas emt, int desde, int hasta)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<DTOTasasRepo> dtoTasasRepoList = new List<DTOTasasRepo>();
    Dictionary<int, DTOTasasRepo> dictionary = new Dictionary<int, DTOTasasRepo>();
    stringBuilder.AppendLine("SELECT liqutasa.PeriLiqu, liqutasa.CodiTili, liqutasa.NumeLiqu");
    stringBuilder.AppendLine(", liqutasa.CodiInmu, liqutasa.CucuPers, DetaPers, BimeLiqu, boleto.NumeBole, boleto.PeriBole, boleto.TipoBole");
    stringBuilder.AppendLine(", TotaBole, FeveBole");
    stringBuilder.AppendLine("FROM liqutasa");
    stringBuilder.AppendLine("INNER JOIN boleto ON boleto.PeriBole = liqutasa.PeriBole AND boleto.NumeBole = liqutasa.NumeBole");
    stringBuilder.AppendLine($"WHERE liqutasa.PeriLiqu = {emt.PeriLiqu.ToString()} AND liqutasa.CodiTili = {emt.CodiTili.ToString()} AND liqutasa.NumeLiqu = {emt.NumeLiqu.ToString()} AND TipoLita = 'Aforo' ");
    stringBuilder.AppendLine("AND OrdeLita > 0 AND EpagosQr IS NULL ");
    stringBuilder.AppendLine($"AND OrdeLita BETWEEN {desde.ToString()} AND {hasta.ToString()}");
    stringBuilder.AppendLine("GROUP BY PeriLiqu, liqutasa.CodiTili, liqutasa.NumeLiqu, PeriBole, numebole;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOTasasRepo dtoTasasRepo = new DTOTasasRepo();
        dtoTasasRepo.CodiInmu = nfoGovReader.readInt("CodiInmu");
        if (!dictionary.ContainsKey(dtoTasasRepo.CodiInmu))
        {
          dtoTasasRepo.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
          dtoTasasRepo.CodiTili = nfoGovReader.readShort("CodiTili");
          dtoTasasRepo.NumeLiqu = nfoGovReader.readShort("NumeLiqu");
          dtoTasasRepo.CucuPers = nfoGovReader.readString("CucuPers");
          dtoTasasRepo.DetaPers = nfoGovReader.readString("DetaPers");
          dictionary.Add(dtoTasasRepo.CodiInmu, dtoTasasRepo);
        }
        dictionary[dtoTasasRepo.CodiInmu].cupones.Add(new CuponTasa()
        {
          BimeLiqu = nfoGovReader.readInt("BimeLiqu"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          PeriBole = nfoGovReader.readInt("PeriBole"),
          TipoBole = nfoGovReader.readString("TipoBole"),
          TotaBole = nfoGovReader.readDecimal("TotaBole"),
          FeveLita = nfoGovReader.readDateTime("FeveBole")
        });
      }
    }
    nfoGovReader.Close();
    return new List<DTOTasasRepo>((IEnumerable<DTOTasasRepo>) dictionary.Values);
  }

  public void ProcesarAgregarFiduciario(List<DTOTasasRepo> listaRepo)
  {
    foreach (DTOTasasRepo dto in listaRepo)
      this.AgregarFiduciario(dto);
  }

  public DTOTasasRepo AgregarFiduciario(DTOTasasRepo dto)
  {
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT nro_padron, CUIT, denominacion, tipo_relacion_persona  FROM vpadrones_persona WHERE nro_padron = '{dto.CodiInmu.ToString()}' AND tipo_relacion_persona = 'Fiduciario' AND Estado = 'Activo' LIMIT 1;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        dto.Fiduciario = nfoGovReader.readString("denominacion");
        if (dto.Vinculo.Trim().Length == 0 && dto.Fiduciario.Trim().Length != 0)
        {
          dto.Vinculo = $" (Fiduciario: {dto.Fiduciario})";
          dto.Fiduciario = "";
        }
        else if (dto.Fiduciario.Trim().Length != 0)
          dto.Fiduciario = $" (Fiduciario: {dto.Fiduciario})";
      }
    }
    nfoGovReader?.Close();
    return dto;
  }

  public bool GuardarMail(string ofic, string cuenta, string email)
  {
    string sql = "";
    if (this.conn.executeInt($"SELECT CodiAdwe FROM adhesionweb WHERE CodiOfic={int.Parse(ofic).ToString()} AND CuenCtct='{cuenta}' AND EmailAdwe='{email}';") == 0)
      sql = $"SET @nro=(SELECT MAX(CodiAdwe)+1 FROM adhesionweb); INSERT INTO adhesionweb(CodiAdwe, CodiOfic, CuenCtct, EmailAdwe, AltaUsua)\tVALUES (@nro, {int.Parse(ofic).ToString()}, '{cuenta}','{email}', '{this.usuario}')";
    return this.conn.executeNonQuery(sql);
  }

  public string ConsultarEmailporCuenta(int ofic, string cuenta)
  {
    return this.conn.executeString($"SELECT GROUP_CONCAT(EmailAdwe) Email FROM adhesionweb WHERE CodiOfic!=0 AND CodiOfic={ofic.ToString()} AND CuenCtct='{cuenta}';");
  }

  public string ConsultarInfoporEmail(string email)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT GROUP_CONCAT(Ofic,' ',Cuentas) Info");
    stringBuilder.AppendLine("FROM (");
    stringBuilder.AppendLine("SELECt CASE CodiOfic WHEN 1 THEN 'Inmueble:' when 2 then 'Comercio:' when 5 then 'Transito:' when 6 then 'Publicidad:' when 7 then 'Antena:' END Ofic");
    stringBuilder.AppendLine(", GROUP_CONCAT(CuenCtct) Cuentas");
    stringBuilder.AppendLine("FROM adhesionweb");
    stringBuilder.AppendLine($"WHERE EmailAdwe='{email}'");
    stringBuilder.AppendLine("GROUP BY CodiOfic");
    stringBuilder.AppendLine("ORDER BY CodiOfic, CuenCtct) tmpinf");
    return this.conn.executeString(stringBuilder.ToString());
  }

  public void RegistrarEnvioMail(string email, string cuentas)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SET @nro:=(SELECT IFNULL(MAX(IdEnvio)+1,1) FROM registroenvios);");
    stringBuilder.AppendLine("INSERT INTO registroenvios");
    stringBuilder.AppendLine("(IdEnvio, EmailAdwe, Cuentas, FechEnvio, AltaUsua)");
    stringBuilder.AppendLine($"VALUES (@nro, '{email}', '{cuentas}', NOW(), '{this.usuario}');");
    this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public List<DTORegistroEnvioCorreos> getRegistroEnvioCorreos(
    DateTime desde,
    DateTime hasta,
    bool indimasi)
  {
    List<DTORegistroEnvioCorreos> registroEnvioCorreos1 = new List<DTORegistroEnvioCorreos>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT CuenCtct,  Email EmailAdwe, FechEnvio FROM registroenvios WHERE DATE(FechEnvio) BETWEEN {this.sqlDate(desde)} AND {this.sqlDate(hasta)};");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTORegistroEnvioCorreos registroEnvioCorreos2 = new DTORegistroEnvioCorreos();
        registroEnvioCorreos2.Email = nfoGovReader.readString("EmailAdwe");
        if (indimasi)
        {
          registroEnvioCorreos2.Cuentas = nfoGovReader.readString("Cuentas");
          registroEnvioCorreos2.FechaEnvio = nfoGovReader.readDateTime("FechEnvio");
        }
        else
        {
          registroEnvioCorreos2.Cuentas = nfoGovReader.readString("CuenCtct");
          registroEnvioCorreos2.FechaEnvio = nfoGovReader.readDateTime("FechEnvio");
        }
        registroEnvioCorreos1.Add(registroEnvioCorreos2);
      }
    }
    nfoGovReader.Close();
    return registroEnvioCorreos1;
  }

  public string getEpagosQr(List<DTOTasasRepo> listaRepo)
  {
    List<CuponTasa> cuponTasaList = new List<CuponTasa>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM epagosqr\tWHERE PeriLiqu = {listaRepo[0].PeriLiqu.ToString()} AND NumeLiqu = {listaRepo[0].NumeLiqu.ToString()};");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        new CuponTasa().BimeLiqu = (int) nfoGovReader.readShort("BimeLiqu");
    }
    nfoGovReader.Close();
    foreach (DTOTasasRepo dtoTasasRepo in listaRepo)
    {
      foreach (CuponTasa cupone in dtoTasasRepo.cupones)
        ;
    }
    return "";
  }

  public MailMasivoGuaymallen getParametrosEnvio(int Ofic)
  {
    MailMasivoGuaymallen parametrosEnvio = new MailMasivoGuaymallen();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT *");
    stringBuilder.AppendLine("FROM liquidacion l");
    stringBuilder.AppendLine($"WHERE l.PeriLiqu = {PARAMS.Periodo.ToString()} AND CodiOfic = {Ofic.ToString()}");
    stringBuilder.AppendLine("ORDER BY NumeLiqu DESC");
    stringBuilder.AppendLine("LIMIT 1;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      nfoGovReader.Read();
      parametrosEnvio.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
      parametrosEnvio.CodiOfic = nfoGovReader.readShort("CodiOfic");
      parametrosEnvio.CodiTili = nfoGovReader.readShort("CodiTili");
      parametrosEnvio.BimeLiqu = nfoGovReader.readShort("BimeLiqu");
    }
    nfoGovReader.Close();
    return parametrosEnvio;
  }

  public List<MailMasivoGuaymallen> CuentasParaEnviarMail(MailMasivoGuaymallen mail)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<MailMasivoGuaymallen> masivoGuaymallenList = new List<MailMasivoGuaymallen>();
    stringBuilder.AppendLine("SELECT c.*");
    stringBuilder.AppendLine("FROM adhesionweb c");
    stringBuilder.AppendLine("LEFT JOIN registroenvios r ON r.CodiOfic = c.CodiOfic AND r.CuenCtct = c.CuenCtct");
    stringBuilder.AppendLine($"AND r.PeriLiqu = {mail.PeriLiqu.ToString()} AND r.BimeLiqu = {mail.BimeLiqu.ToString()} AND r.CodiTili = {mail.CodiTili.ToString()}");
    stringBuilder.AppendLine($"WHERE c.CodiOfic = {mail.CodiOfic.ToString()} AND r.IdEnvio IS NULL;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        masivoGuaymallenList.Add(new MailMasivoGuaymallen()
        {
          PeriLiqu = mail.PeriLiqu,
          BimeLiqu = mail.BimeLiqu,
          CodiTili = mail.CodiTili,
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          Email = nfoGovReader.readString("EmailAdwe")
        });
    }
    nfoGovReader.Close();
    return masivoGuaymallenList;
  }

  public bool RegistrarEnvio(MailMasivoGuaymallen mail)
  {
    StringBuilder stringBuilder = new StringBuilder();
    int num = this.nextInt("IdEnvio", "registroenvios");
    stringBuilder.AppendLine("INSERT INTO registroenvios");
    stringBuilder.AppendLine("(IdEnvio, PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiOfic, CuenCtct, Email, FechEnvio, AltaUsua)");
    stringBuilder.AppendLine($"VALUES({num.ToString()}, {mail.PeriLiqu.ToString()}, {mail.BimeLiqu.ToString()}, {mail.CodiTili.ToString()}, 0, {mail.CodiOfic.ToString()}, '{mail.CuenCtct}', '{mail.Email}', NOW(), '{this.usuario}');");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public EmisionMasivaTasas getOrdenPorPadron(int padron)
  {
    StringBuilder stringBuilder = new StringBuilder();
    EmisionMasivaTasas ordenPorPadron = new EmisionMasivaTasas();
    stringBuilder.AppendLine("SELECT *");
    stringBuilder.AppendLine("FROM liqutasa");
    stringBuilder.AppendLine($"WHERE PeriLiqu = {PARAMS.Periodo.ToString()} AND CodiTili = 1");
    stringBuilder.AppendLine($"AND CodiInmu = {padron.ToString()} AND CodiConc = '13020101'");
    stringBuilder.AppendLine("AND TipoVenc = 1 AND ActuLita = 'Si'");
    stringBuilder.AppendLine("ORDER BY PeriLiqu, CodiTili, NumeLiqu DESC, CodiInmu, OrdeLita");
    stringBuilder.AppendLine("LIMIT 1;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ordenPorPadron.PeriLiqu = nfoGovReader.readInt("PeriLiqu");
        ordenPorPadron.NumeLiqu = (int) nfoGovReader.readShort("NumeLiqu");
        ordenPorPadron.CantOrdeLita = nfoGovReader.readInt("OrdeLita");
        ordenPorPadron.CodiOfic = 1;
        ordenPorPadron.CodiInmu = padron;
        ordenPorPadron.CodiTili = nfoGovReader.readInt("CodiTili");
        ordenPorPadron.NumeLiqu = nfoGovReader.readInt("NumeLiqu");
      }
    }
    nfoGovReader.Close();
    return ordenPorPadron;
  }
}
