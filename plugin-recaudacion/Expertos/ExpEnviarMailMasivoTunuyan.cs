// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEnviarMailMasivoTunuyan
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Reportes.RegistroCorreosWeb;
using InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpEnviarMailMasivoTunuyan : Expert
{
  public ExpEnviarMailMasivoTunuyan()
    : base(Modulo.Database)
  {
  }

  public MailMasivoTunuyan getParametrosEnvio(int Ofic)
  {
    MailMasivoTunuyan parametrosEnvio = new MailMasivoTunuyan();
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
      parametrosEnvio.NumeLiqu = nfoGovReader.readShort("NumeLiqu");
      parametrosEnvio.BimeLiqu = nfoGovReader.readShort("BimeLiqu");
    }
    nfoGovReader.Close();
    return parametrosEnvio;
  }

  public List<MailMasivoTunuyan> CuentasParaEnviarMail(MailMasivoTunuyan mail)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<MailMasivoTunuyan> mailMasivoTunuyanList = new List<MailMasivoTunuyan>();
    stringBuilder.AppendLine("SELECT c.*");
    stringBuilder.AppendLine("FROM correo c");
    stringBuilder.AppendLine("LEFT JOIN registroenvios r ON r.CodiOfic = c.CodiOfic AND r.CuenCtct = c.CuenCtct");
    stringBuilder.AppendLine($"AND r.PeriLiqu = {mail.PeriLiqu.ToString()} AND r.BimeLiqu = {mail.BimeLiqu.ToString()} AND r.CodiTili = {mail.CodiTili.ToString()} AND r.NumeLiqu = {mail.NumeLiqu.ToString()}");
    stringBuilder.AppendLine($"WHERE c.CodiOfic = {mail.CodiOfic.ToString()} AND r.IdEnvio IS NULL;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        mailMasivoTunuyanList.Add(new MailMasivoTunuyan()
        {
          PeriLiqu = mail.PeriLiqu,
          BimeLiqu = mail.BimeLiqu,
          CodiTili = mail.CodiTili,
          NumeLiqu = mail.NumeLiqu,
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          Email = nfoGovReader.readString("Email")
        });
    }
    nfoGovReader.Close();
    return mailMasivoTunuyanList;
  }

  public bool RegistrarEnvio(MailMasivoTunuyan mail)
  {
    StringBuilder stringBuilder = new StringBuilder();
    int num = this.nextInt("IdEnvio", "registroenvios");
    stringBuilder.AppendLine("INSERT INTO registroenvios");
    stringBuilder.AppendLine("(IdEnvio, PeriLiqu, BimeLiqu, CodiTili, NumeLiqu, CodiOfic, CuenCtct, Email, FechEnvio, AltaUsua)");
    stringBuilder.AppendLine($"VALUES({num.ToString()}, {mail.PeriLiqu.ToString()}, {mail.BimeLiqu.ToString()}, {mail.CodiTili.ToString()}, {mail.NumeLiqu.ToString()}, {mail.CodiOfic.ToString()}, '{mail.CuenCtct}', '{mail.Email}', NOW(), '{this.usuario}');");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public List<DTORegistroEnvioCorreos> getRegistroEnviosTunuyan(DateTime fdesde, DateTime fhasta)
  {
    List<DTORegistroEnvioCorreos> registroEnviosTunuyan = new List<DTORegistroEnvioCorreos>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT r.*,");
    stringBuilder.AppendLine("CASE");
    stringBuilder.AppendLine("WHEN CodiOfic = 1 THEN 'INMUEBLE'");
    stringBuilder.AppendLine("WHEN CodiOfic = 2 THEN 'COMERCIO'");
    stringBuilder.AppendLine("WHEN CodiOfic = 4 THEN 'CEMENTERIO'");
    stringBuilder.AppendLine("WHEN CodiOfic = 5 THEN 'TRANSITO'");
    stringBuilder.AppendLine("END ofi");
    stringBuilder.AppendLine("FROM registroenvios r");
    stringBuilder.AppendLine($"WHERE DATE(r.FechEnvio) BETWEEN {this.sqlDate(fdesde, false)} AND {this.sqlDate(fhasta, false)};");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTORegistroEnvioCorreos registroEnvioCorreos = new DTORegistroEnvioCorreos();
        registroEnvioCorreos.Periodo = nfoGovReader.readInt("PeriLiqu");
        if (PARAMS.Municipio == "Tunuyán")
          registroEnvioCorreos.Bimestre = nfoGovReader.readShort("BimeLiqu");
        registroEnvioCorreos.NroLiqu = nfoGovReader.readShort("NumeLiqu");
        registroEnvioCorreos.Cuentas = nfoGovReader.readString("CuenCtct");
        registroEnvioCorreos.Email = nfoGovReader.readString("Email");
        registroEnvioCorreos.FechaEnvio = nfoGovReader.readDateTime("FechEnvio");
        registroEnvioCorreos.Ofic = nfoGovReader.readString("ofi");
        registroEnviosTunuyan.Add(registroEnvioCorreos);
      }
    }
    nfoGovReader.Close();
    return registroEnviosTunuyan;
  }

  public List<DTORegistroCorreosWeb> getRegistoCorreosWeb(DateTime fdesde, DateTime fhasta)
  {
    List<DTORegistroCorreosWeb> registoCorreosWeb = new List<DTORegistroCorreosWeb>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT CodiOfic, CuenCtct, FealBole, ObseBole FROM boleto WHERE CodiOfic IN (1,2,4) AND TipoBole = 'Online' AND ObseBole !=  '' AND CodiUsua='web' AND FealBole BETWEEN {this.sqlDate(fdesde, false)} AND {this.sqlDate(fhasta, false)} GROUP BY CodiOfic, CuenCtct, ObseBole ORDER BY CodiOfic, CuenCtct;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        registoCorreosWeb.Add(new DTORegistroCorreosWeb()
        {
          Ofic = nfoGovReader.readShort("CodiOfic"),
          Cuenta = nfoGovReader.readString("CuenCtct"),
          Email = nfoGovReader.readString("ObseBole")
        });
    }
    nfoGovReader.Close();
    return registoCorreosWeb;
  }
}
