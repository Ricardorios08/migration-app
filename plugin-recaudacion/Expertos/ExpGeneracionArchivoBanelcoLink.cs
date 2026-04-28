// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpGeneracionArchivoBanelcoLink
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Reportes.GeneracionArchivoBanelcoLink;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpGeneracionArchivoBanelcoLink : Expert
{
  public ExpGeneracionArchivoBanelcoLink()
    : base(Modulo.Database)
  {
  }

  public List<DTOGeneracionArchivoBanelcoLink> getArchivoBanelcoSM(DateTime desde, DateTime hasta)
  {
    List<DTOGeneracionArchivoBanelcoLink> archivoBanelcoSm = new List<DTOGeneracionArchivoBanelcoLink>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT boleto.PeriBole, boleto.NumeBole, TotaBole, LPAD(IF(detabole.codifapa=0,boleto.CodiOfic,5),2,'0') as CodiOfic,");
    stringBuilder.AppendLine("CAST(IF(detabole.CodiFapa = 0, LPAD(detabole.CuenCtct, 6, '0'), LPAD(detabole.CodiFapa, 6, '0')) AS CHAR) AS CuenCtct,");
    stringBuilder.AppendLine("detabole.CuenCtct as CuenCtctBarra, cast(rpad(concat(boleto.PeriBole, boleto.NumeBole), 20, ' ') as char) as NumeBoleStr, FeveBole, CAST(REPLACE(LPAD(TotaBole, 15, '0'), '.', '') as char) as TotaBoleStr, detabole.CodiConc, concepto.DetaConc, detabole.CodiFapa, detabole.BimeCtct CuotDefa, 0 CacuFapa,");
    stringBuilder.AppendLine("boleto.DecaBole, IF(boleto.CodiTili > 0 AND boleto.NumeLiqu > 0, cast(replace(lpad(TotaBole + DecaBole + ExenBole, 12, '0'), '.', '') as char), cast(replace(lpad(TotaBole, 12, '0'), '.', '') as char)) as TotaBoleSeguStr,");
    stringBuilder.AppendLine("IF(detabole.CodiFapa = 0, (SELECT SUM(DebeCtct) - SUM(CredCtct) as saldo FROM ctacte");
    stringBuilder.AppendLine("WHERE ctacte.CodiOfic = detabole.CodiOfic AND ctacte.CuenCtct = detabole.CuenCtct AND ctacte.PeriCtct = detabole.PeriCtct AND ctacte.BimeCtct = detabole.BimeCtct AND ctacte.NumeCtct = detabole.NumeCtct),1) as Saldo");
    stringBuilder.AppendLine("FROM boleto");
    stringBuilder.AppendLine("INNER JOIN detabole ON detabole.PeriBole = boleto.PeriBole AND detabole.NumeBole = boleto.NumeBole");
    stringBuilder.AppendLine("INNER JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc");
    stringBuilder.AppendLine($"WHERE boleto.CodiUsua != 'web' AND boleto.FeveBole BETWEEN {this.sqlDate(desde, false)} AND {this.sqlDate(hasta, false)}");
    stringBuilder.AppendLine("AND boleto.EstaBole = 'Emitido' AND detabole.CuenCtct<> '' AND boleto.CodiTili != 0 AND boleto.NumeLiqu != 0");
    stringBuilder.AppendLine("GROUP BY boleto.PeriBole, boleto.NumeBole");
    stringBuilder.AppendLine("HAVING Saldo > 0");
    stringBuilder.AppendLine("ORDER BY boleto.PeriBole, boleto.NumeBole;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOGeneracionArchivoBanelcoLink cupon = new DTOGeneracionArchivoBanelcoLink();
        cupon.NumeBole = nfoGovReader.readInt("NumeBole");
        cupon.FeveBole = nfoGovReader.readDateTime("FeveBole");
        cupon.Oficina = nfoGovReader.readString("CodiOfic");
        cupon.PeriBole = nfoGovReader.readInt("PeriBole");
        DTOGeneracionArchivoBanelcoLink archivoBanelcoLink1 = cupon;
        string[] strArray = new string[5]
        {
          cupon.Oficina,
          "00",
          null,
          null,
          null
        };
        int num = cupon.PeriBole;
        strArray[2] = num.ToString();
        strArray[3] = nfoGovReader.readShort("CuotDefa").ToString().PadLeft(4, '0');
        num = cupon.NumeBole;
        strArray[4] = num.ToString().PadLeft(8, '0');
        string str1 = string.Concat(strArray);
        archivoBanelcoLink1.Factura = str1;
        if (cupon.Oficina == "01")
        {
          cupon.Cod_Concep = "0101";
          DTOGeneracionArchivoBanelcoLink archivoBanelcoLink2 = cupon;
          num = cupon.PeriBole;
          string str2 = $"TASAS POR SERVICIOS {num.ToString()} MES  {nfoGovReader.readShort("CuotDefa").ToString()}";
          archivoBanelcoLink2.Leyenda = str2;
          DTOGeneracionArchivoBanelcoLink archivoBanelcoLink3 = cupon;
          string str3 = nfoGovReader.readShort("CuotDefa").ToString();
          num = cupon.PeriBole;
          string str4 = num.ToString();
          string str5 = $"SERV.  {str3}/{str4}";
          archivoBanelcoLink3.LeyendaP = str5;
        }
        if (cupon.Oficina == "02")
        {
          cupon.Cod_Concep = "0426";
          DTOGeneracionArchivoBanelcoLink archivoBanelcoLink4 = cupon;
          num = cupon.PeriBole;
          string str6 = $"COMERCIO E INDUSTRIA {num.ToString()} BIM: {nfoGovReader.readShort("CuotDefa").ToString()}";
          archivoBanelcoLink4.Leyenda = str6;
          DTOGeneracionArchivoBanelcoLink archivoBanelcoLink5 = cupon;
          string str7 = nfoGovReader.readShort("CuotDefa").ToString();
          num = cupon.PeriBole;
          string str8 = num.ToString();
          string str9 = $"COMER. {str7}/{str8}";
          archivoBanelcoLink5.LeyendaP = str9;
        }
        cupon.Referencia = cupon.Cod_Concep + nfoGovReader.readString("CuenCtct");
        cupon.Venc1 = cupon.FeveBole.ToString("yyyyMMdd");
        cupon.Venc2 = cupon.FeveBole.AddDays(20.0).ToString("yyyyMMdd");
        cupon.Importe = nfoGovReader.readString("TotaBoleStr");
        cupon.TotaBole = nfoGovReader.readDecimal("TotaBole");
        cupon.CodBarra = this.GenerarCodigoBarraSM(cupon);
        if (cupon.Oficina == "01" || cupon.Oficina == "02")
          archivoBanelcoSm.Add(cupon);
      }
    }
    nfoGovReader?.Close();
    return archivoBanelcoSm;
  }

  public List<DTOGeneracionArchivoBanelcoLink> getArchivoLinkSM(DateTime desde, DateTime hasta)
  {
    List<DTOGeneracionArchivoBanelcoLink> archivoLinkSm = new List<DTOGeneracionArchivoBanelcoLink>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT detabole.BimeCtct, boleto.PeriBole, boleto.NumeBole, TotaBole, LPAD(IF(detabole.codifapa=0,boleto.CodiOfic,5),2,'0') as CodiOfic,");
    stringBuilder.AppendLine("CAST(IF(detabole.CodiFapa = 0, LPAD(detabole.CuenCtct, 6, '0'), LPAD(detabole.CodiFapa, 6, '0')) AS CHAR) AS CuenCtct,");
    stringBuilder.AppendLine("detabole.CuenCtct as CuenCtctBarra, cast(rpad(concat(boleto.PeriBole, boleto.NumeBole), 20, ' ') as char) as NumeBoleStr, FeveBole, cast(replace(lpad(TotaBole, 12, '0'), '.', '') as char) as TotaBoleStr, detabole.CodiConc, concepto.DetaConc, detabole.CodiFapa, detabole.BimeCtct CuotDefa, 0 CacuFapa,");
    stringBuilder.AppendLine("boleto.DecaBole, IF(boleto.CodiTili > 0 AND boleto.NumeLiqu > 0, cast(replace(lpad(TotaBole + DecaBole + ExenBole, 12, '0'), '.', '') as char), cast(replace(lpad(TotaBole, 12, '0'), '.', '') as char)) as TotaBoleSeguStr,");
    stringBuilder.AppendLine("IF(detabole.CodiFapa = 0, (SELECT SUM(DebeCtct) - SUM(CredCtct) as saldo FROM ctacte");
    stringBuilder.AppendLine("WHERE ctacte.CodiOfic = detabole.CodiOfic AND ctacte.CuenCtct = detabole.CuenCtct AND ctacte.PeriCtct = detabole.PeriCtct AND ctacte.BimeCtct = detabole.BimeCtct AND ctacte.NumeCtct = detabole.NumeCtct),1) as Saldo");
    stringBuilder.AppendLine("FROM boleto");
    stringBuilder.AppendLine("INNER JOIN detabole ON detabole.PeriBole = boleto.PeriBole AND detabole.NumeBole = boleto.NumeBole");
    stringBuilder.AppendLine("INNER JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc");
    stringBuilder.AppendLine($"WHERE boleto.CodiUsua != 'web' AND boleto.FeveBole BETWEEN {this.sqlDate(desde, false)} AND {this.sqlDate(hasta, false)}");
    stringBuilder.AppendLine("AND boleto.EstaBole = 'Emitido' AND detabole.CuenCtct<> '' AND boleto.CodiTili != 0 AND boleto.NumeLiqu != 0");
    stringBuilder.AppendLine("GROUP BY boleto.PeriBole, boleto.NumeBole");
    stringBuilder.AppendLine("HAVING Saldo > 0");
    stringBuilder.AppendLine("ORDER BY boleto.PeriBole, boleto.NumeBole;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOGeneracionArchivoBanelcoLink archivoBanelcoLink1 = new DTOGeneracionArchivoBanelcoLink();
        archivoBanelcoLink1.NumeBole = nfoGovReader.readInt("NumeBole");
        archivoBanelcoLink1.FeveBole = nfoGovReader.readDateTime("FeveBole");
        archivoBanelcoLink1.Oficina = nfoGovReader.readString("CodiOfic");
        archivoBanelcoLink1.BimeCtct = nfoGovReader.readShort("BimeCtct");
        archivoBanelcoLink1.PeriBole = nfoGovReader.readInt("PeriBole");
        int num;
        if (archivoBanelcoLink1.Oficina == "01")
        {
          archivoBanelcoLink1.Cod_Concep = "0101";
          DTOGeneracionArchivoBanelcoLink archivoBanelcoLink2 = archivoBanelcoLink1;
          string[] strArray = new string[5]
          {
            archivoBanelcoLink1.Cod_Concep,
            nfoGovReader.readString("CuenCtct").PadLeft(8, '0'),
            null,
            null,
            null
          };
          num = archivoBanelcoLink1.PeriBole;
          strArray[2] = num.ToString();
          strArray[3] = nfoGovReader.readShort("CuotDefa").ToString().PadLeft(2, '0');
          num = archivoBanelcoLink1.NumeBole;
          strArray[4] = num.ToString().PadLeft(12, '0');
          string str = string.Concat(strArray);
          archivoBanelcoLink2.Leyenda = str;
        }
        if (archivoBanelcoLink1.Oficina == "02")
        {
          archivoBanelcoLink1.Cod_Concep = "0426";
          DTOGeneracionArchivoBanelcoLink archivoBanelcoLink3 = archivoBanelcoLink1;
          string[] strArray = new string[5]
          {
            archivoBanelcoLink1.Cod_Concep,
            nfoGovReader.readString("CuenCtct").PadLeft(8, '0'),
            null,
            null,
            null
          };
          num = archivoBanelcoLink1.PeriBole;
          strArray[2] = num.ToString();
          strArray[3] = nfoGovReader.readShort("CuotDefa").ToString().PadLeft(2, '0');
          num = archivoBanelcoLink1.NumeBole;
          strArray[4] = num.ToString().PadLeft(12, '0');
          string str = string.Concat(strArray);
          archivoBanelcoLink3.Leyenda = str;
        }
        archivoBanelcoLink1.Referencia = archivoBanelcoLink1.Cod_Concep + nfoGovReader.readString("CuenCtct");
        archivoBanelcoLink1.Venc1 = archivoBanelcoLink1.FeveBole.ToString("yyMMdd");
        archivoBanelcoLink1.Venc2 = archivoBanelcoLink1.FeveBole.AddDays(15.0).ToString("yyMMdd");
        archivoBanelcoLink1.Importe = nfoGovReader.readString("TotaBoleStr");
        archivoBanelcoLink1.UltimoVenc = archivoBanelcoLink1.FeveBole.ToString("yyyyMMdd");
        archivoBanelcoLink1.TotaBole = nfoGovReader.readDecimal("TotaBole");
        if (archivoBanelcoLink1.Oficina == "01" || archivoBanelcoLink1.Oficina == "02")
          archivoLinkSm.Add(archivoBanelcoLink1);
      }
    }
    nfoGovReader?.Close();
    return archivoLinkSm;
  }

  public string GenerarCodigoBarraSM(DTOGeneracionArchivoBanelcoLink cupon)
  {
    string str1 = ((long) (cupon.TotaBole * 100M)).ToString().PadLeft(10, '0');
    string str2 = cupon.NumeBole.ToString().PadLeft(8, '0');
    string str3 = cupon.FeveBole.ToString("ddMMyy");
    string oficina = cupon.Oficina;
    string str4 = cupon.PeriBole.ToString().Substring(2, 2).PadLeft(3, '0');
    string cadena = $"79013{oficina}{str2}{str3}{str4}{str1}";
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

  public List<DTOGeneracionArchivoBanelcoLink> getArchivoLinkTupungato(
    DateTime desde,
    DateTime hasta)
  {
    List<DTOGeneracionArchivoBanelcoLink> archivoLinkTupungato = new List<DTOGeneracionArchivoBanelcoLink>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT boleto.TipoBole, detabole.BimeCtct, boleto.PeriBole, boleto.NumeBole, TotaBole, LPAD(IF(detabole.codifapa=0,boleto.CodiOfic,5),2,'0') as CodiOfic,");
    stringBuilder.AppendLine("CAST(IF(detabole.CodiFapa = 0, LPAD(detabole.CuenCtct, 6, '0'), LPAD(detabole.CodiFapa, 6, '0')) AS CHAR) AS CuenCtct,");
    stringBuilder.AppendLine("detabole.CuenCtct as CuenCtctBarra, CAST(CONCAT(boleto.PeriBole, LPAD(boleto.NumeBole,8,0)) AS CHAR) AS NumeBoleStr, FeveBole, cast(replace(lpad(TotaBole, 12, '0'), '.', '') as char) as TotaBoleStr, detabole.CodiConc, concepto.DetaConc, detabole.CodiFapa, detabole.BimeCtct CuotDefa, 0 CacuFapa,");
    stringBuilder.AppendLine("boleto.DecaBole, IF(boleto.CodiTili > 0 AND boleto.NumeLiqu > 0, cast(replace(lpad(TotaBole + DecaBole + ExenBole, 12, '0'), '.', '') as char), cast(replace(lpad(TotaBole, 12, '0'), '.', '') as char)) as TotaBoleSeguStr,");
    stringBuilder.AppendLine("IF(detabole.CodiFapa = 0, (SELECT SUM(DebeCtct) - SUM(CredCtct) as saldo FROM ctacte");
    stringBuilder.AppendLine("WHERE ctacte.CodiOfic = detabole.CodiOfic AND ctacte.CuenCtct = detabole.CuenCtct AND ctacte.PeriCtct = detabole.PeriCtct AND ctacte.BimeCtct = detabole.BimeCtct AND ctacte.NumeCtct = detabole.NumeCtct),1) as Saldo");
    stringBuilder.AppendLine("FROM boleto");
    stringBuilder.AppendLine("INNER JOIN detabole ON detabole.PeriBole = boleto.PeriBole AND detabole.NumeBole = boleto.NumeBole");
    stringBuilder.AppendLine("INNER JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc");
    stringBuilder.AppendLine($"WHERE boleto.CodiUsua != 'web' AND boleto.FeveBole BETWEEN {this.sqlDate(desde, false)} AND {this.sqlDate(hasta, false)}");
    stringBuilder.AppendLine("AND boleto.EstaBole = 'Emitido' AND detabole.CuenCtct<> '' AND boleto.CodiTili != 0 AND boleto.NumeLiqu != 0");
    stringBuilder.AppendLine("GROUP BY boleto.PeriBole, boleto.NumeBole");
    stringBuilder.AppendLine("HAVING Saldo > 0");
    stringBuilder.AppendLine("ORDER BY boleto.PeriBole, boleto.NumeBole;");
    InfoGovReader nfoGovReader1 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader1 != null && nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
      {
        DTOGeneracionArchivoBanelcoLink archivoBanelcoLink1 = new DTOGeneracionArchivoBanelcoLink();
        archivoBanelcoLink1.NumeBole = nfoGovReader1.readInt("NumeBole");
        DTOGeneracionArchivoBanelcoLink archivoBanelcoLink2 = archivoBanelcoLink1;
        InfoGovReader nfoGovReader2 = nfoGovReader1;
        DateTime dateTime1 = new DateTime();
        DateTime onError = dateTime1;
        DateTime dateTime2 = nfoGovReader2.readDateTime("FeveBole", onError);
        archivoBanelcoLink2.FeveBole = dateTime2;
        archivoBanelcoLink1.Oficina = nfoGovReader1.readString("CodiOfic");
        archivoBanelcoLink1.TipoBole = nfoGovReader1.readString("TipoBole");
        if (archivoBanelcoLink1.TipoBole == "Anual")
        {
          archivoBanelcoLink1.BimeCtct = (short) 90;
          archivoBanelcoLink1.CuotaAnual = "S";
        }
        else
        {
          archivoBanelcoLink1.BimeCtct = nfoGovReader1.readShort("BimeCtct");
          archivoBanelcoLink1.CuotaAnual = "N";
        }
        archivoBanelcoLink1.PeriBole = nfoGovReader1.readInt("PeriBole");
        if (archivoBanelcoLink1.Oficina == "01")
        {
          archivoBanelcoLink1.Cod_Concep = "0101";
          archivoBanelcoLink1.Referencia = "1" + nfoGovReader1.readString("CuenCtct").PadLeft(8, '0');
        }
        if (archivoBanelcoLink1.Oficina == "02")
        {
          archivoBanelcoLink1.Cod_Concep = "0102";
          archivoBanelcoLink1.Referencia = "2" + nfoGovReader1.readString("CuenCtct").PadLeft(8, '0');
        }
        archivoBanelcoLink1.Leyenda = nfoGovReader1.readString("NumeBoleStr");
        DTOGeneracionArchivoBanelcoLink archivoBanelcoLink3 = archivoBanelcoLink1;
        dateTime1 = archivoBanelcoLink1.FeveBole;
        string str1 = dateTime1.ToString("yyMMdd");
        archivoBanelcoLink3.Venc1 = str1;
        DTOGeneracionArchivoBanelcoLink archivoBanelcoLink4 = archivoBanelcoLink1;
        dateTime1 = archivoBanelcoLink1.FeveBole;
        string str2 = dateTime1.ToString("yyyyMMdd");
        archivoBanelcoLink4.UltimoVenc = str2;
        archivoBanelcoLink1.Importe = nfoGovReader1.readString("TotaBoleStr");
        archivoBanelcoLink1.TotaBole = nfoGovReader1.readDecimal("TotaBole");
        if (archivoBanelcoLink1.Oficina == "01" || archivoBanelcoLink1.Oficina == "02")
          archivoLinkTupungato.Add(archivoBanelcoLink1);
      }
    }
    nfoGovReader1?.Close();
    return archivoLinkTupungato;
  }
}
