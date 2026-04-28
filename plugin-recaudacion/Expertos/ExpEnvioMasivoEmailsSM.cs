// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpEnvioMasivoEmailsSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpEnvioMasivoEmailsSM : Expert
{
  public ExpEnvioMasivoEmailsSM()
    : base(Modulo.Database)
  {
  }

  public List<EmisionMailSM> GetEmisiones(int CodiOfic)
  {
    List<EmisionMailSM> emisiones = new List<EmisionMailSM>();
    StringBuilder stringBuilder = new StringBuilder();
    switch (CodiOfic)
    {
      case 1:
        stringBuilder.AppendLine("SELECT liquidacion.*,MAX(OrdeLita) MaxOrde, tipoliqu.DetaTili");
        stringBuilder.AppendLine("FROM liquidacion");
        stringBuilder.AppendLine("INNER JOIN(");
        stringBuilder.AppendLine("SELECT PeriLiqu, NumeLiqu, OrdeLita");
        stringBuilder.AppendLine("FROM liqutasa");
        stringBuilder.AppendLine($"WHERE PeriLiqu IN({PARAMS.Periodo.ToString()}) AND OrdeLita > 0");
        stringBuilder.AppendLine("GROUP BY PeriLiqu, NumeLiqu, OrdeLita");
        stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
        stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
        stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '1' AND ActuLiqu = 'Si'");
        stringBuilder.AppendLine($"AND(liquidacion.PeriLiqu IN({PARAMS.Periodo.ToString()}))");
        stringBuilder.AppendLine("GROUP BY liquidacion.PeriLiqu, liquidacion.NumeLiqu;");
        break;
      case 2:
        stringBuilder.AppendLine("SELECT liquidacion.*, MAX(OrdeLico) MaxOrde, tipoliqu.DetaTili");
        stringBuilder.AppendLine("FROM liquidacion");
        stringBuilder.AppendLine("INNER JOIN(");
        stringBuilder.AppendLine("SELECT PeriLiqu, NumeLiqu, OrdeLico");
        stringBuilder.AppendLine("FROM liqucome");
        stringBuilder.AppendLine($"WHERE PeriLiqu = {PARAMS.Periodo.ToString()} AND OrdeLico > 0");
        stringBuilder.AppendLine("GROUP BY PeriLiqu, NumeLiqu, OrdeLico");
        stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu");
        stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
        stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '2' AND ActuLiqu = 'Si'");
        stringBuilder.AppendLine($"AND(liquidacion.PeriLiqu = {PARAMS.Periodo.ToString()})");
        stringBuilder.AppendLine("GROUP BY liquidacion.PeriLiqu, liquidacion.NumeLiqu;");
        break;
      case 4:
        stringBuilder.AppendLine("SELECT liquidacion.*, MAX(OrdeLice) MaxOrde, tipoliqu.DetaTili");
        stringBuilder.AppendLine("FROM liquidacion");
        stringBuilder.AppendLine("INNER JOIN(");
        stringBuilder.AppendLine("SELECT PeriLiqu, NumeLiqu, OrdeLice, CodiTili");
        stringBuilder.AppendLine("FROM liquceme");
        stringBuilder.AppendLine($"WHERE PeriLiqu = {PARAMS.Periodo.ToString()} AND OrdeLice > 0");
        stringBuilder.AppendLine("GROUP BY PeriLiqu, NumeLiqu, OrdeLice, CodiTili");
        stringBuilder.AppendLine(") t ON t.PeriLiqu = liquidacion.PeriLiqu AND t.NumeLiqu = liquidacion.NumeLiqu AND t.CodiTili = liquidacion.CodiTili");
        stringBuilder.AppendLine("LEFT JOIN recaudacion.tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili");
        stringBuilder.AppendLine("WHERE liquidacion.CodiOfic = '4' AND ActuLiqu = 'Si'");
        stringBuilder.AppendLine($"AND(liquidacion.PeriLiqu = {PARAMS.Periodo.ToString()})");
        stringBuilder.AppendLine("GROUP BY liquidacion.PeriLiqu, liquidacion.NumeLiqu, liquidacion.CodiTili;");
        break;
    }
    if (stringBuilder.Length == 0)
      return emisiones;
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        emisiones.Add(new EmisionMailSM()
        {
          PeriLiqu = nfoGovReader.readInt("PeriLiqu"),
          CodiOfic = nfoGovReader.readShort(nameof (CodiOfic)),
          CodiTili = nfoGovReader.readShort("CodiTili"),
          NumeLiqu = nfoGovReader.readShort("NumeLiqu"),
          DetaTili = nfoGovReader.readString("DetaTili"),
          FealLiqu = nfoGovReader.readDateTime("FealLiqu"),
          MaxOrde = nfoGovReader.readInt("MaxOrde")
        });
    }
    nfoGovReader?.Close();
    return emisiones;
  }

  public List<MailMasivoTunuyan> CuentasParaEnviarMail(EmisionMailSM mail, int desde, int hasta)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<MailMasivoTunuyan> mailMasivoTunuyanList = new List<MailMasivoTunuyan>();
    switch (mail.CodiOfic)
    {
      case 1:
        stringBuilder.AppendLine("SELECT liqutasa.PeriLiqu, liqutasa.NumeLiqu, liqutasa.CodiTili");
        stringBuilder.AppendLine(", correo.CuenCtct, correo.CodiOfic, correo.Email");
        stringBuilder.AppendLine("FROM liqutasa");
        stringBuilder.AppendLine("INNER JOIN correo ON correo.CodiOfic = 1 AND correo.CuenCtct = liqutasa.CodiInmu");
        stringBuilder.AppendLine("LEFT JOIN registroenvios ON registroenvios.PeriLiqu = liqutasa.PeriLiqu");
        stringBuilder.AppendLine("AND registroenvios.NumeLiqu = liqutasa.NumeLiqu");
        stringBuilder.AppendLine("AND registroenvios.CodiTili = liqutasa.CodiTili");
        stringBuilder.AppendLine("AND registroenvios.CuenCtct = liqutasa.CodiInmu");
        stringBuilder.AppendLine($"WHERE liqutasa.PeriLiqu = {mail.PeriLiqu.ToString()} AND liqutasa.CodiTili = {mail.CodiTili.ToString()}");
        stringBuilder.AppendLine($"AND liqutasa.NumeLiqu = {mail.NumeLiqu.ToString()} AND registroenvios.IdEnvio IS NULL");
        stringBuilder.AppendLine($"AND liqutasa.OrdeLita BETWEEN {desde.ToString()} AND {hasta.ToString()}");
        stringBuilder.AppendLine("GROUP BY liqutasa.CodiInmu;");
        break;
      case 2:
        stringBuilder.AppendLine("SELECT liqucome.PeriLiqu, liqucome.NumeLiqu, liqucome.CodiTili");
        stringBuilder.AppendLine(", correo.CuenCtct, correo.CodiOfic, correo.Email");
        stringBuilder.AppendLine("FROM liqucome");
        stringBuilder.AppendLine("INNER JOIN correo ON correo.CodiOfic = 2 AND correo.CuenCtct = liqucome.CodiCome");
        stringBuilder.AppendLine("LEFT JOIN registroenvios ON registroenvios.PeriLiqu = liqucome.PeriLiqu");
        stringBuilder.AppendLine("AND registroenvios.NumeLiqu = liqucome.NumeLiqu");
        stringBuilder.AppendLine("AND registroenvios.CodiTili = liqucome.CodiTili");
        stringBuilder.AppendLine("AND registroenvios.CuenCtct = liqucome.CodiCome");
        stringBuilder.AppendLine($"WHERE liqucome.PeriLiqu = {mail.PeriLiqu.ToString()} AND liqucome.CodiTili = {mail.CodiTili.ToString()} AND liqucome.NumeLiqu = {mail.NumeLiqu.ToString()} AND registroenvios.IdEnvio IS NULL");
        stringBuilder.AppendLine($"AND liqucome.OrdeLico BETWEEN {desde.ToString()} AND {hasta.ToString()}");
        stringBuilder.AppendLine("GROUP BY liqucome.CodiCome");
        break;
      case 4:
        stringBuilder.AppendLine("SELECT liquceme.PeriLiqu, liquceme.NumeLiqu, liquceme.CodiTili");
        stringBuilder.AppendLine(", correo.CuenCtct, correo.CodiOfic, correo.Email");
        stringBuilder.AppendLine("FROM liquceme");
        stringBuilder.AppendLine("INNER JOIN correo ON correo.CodiOfic = 4 AND correo.CuenCtct = liquceme.CodiDifu");
        stringBuilder.AppendLine("LEFT JOIN registroenvios ON registroenvios.PeriLiqu = liquceme.PeriLiqu");
        stringBuilder.AppendLine("AND registroenvios.NumeLiqu = liquceme.NumeLiqu");
        stringBuilder.AppendLine("AND registroenvios.CodiTili = liquceme.CodiTili");
        stringBuilder.AppendLine("AND registroenvios.CuenCtct = liquceme.CodiDifu");
        stringBuilder.AppendLine($"WHERE liquceme.PeriLiqu = {mail.PeriLiqu.ToString()} AND liquceme.CodiTili = {mail.CodiTili.ToString()} AND liquceme.NumeLiqu = {mail.NumeLiqu.ToString()} AND registroenvios.IdEnvio IS NULL");
        stringBuilder.AppendLine($"AND liquceme.OrdeLice BETWEEN {desde.ToString()} AND {hasta.ToString()}");
        stringBuilder.AppendLine("GROUP BY liquceme.CodiDifu");
        break;
    }
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        mailMasivoTunuyanList.Add(new MailMasivoTunuyan()
        {
          PeriLiqu = mail.PeriLiqu,
          NumeLiqu = mail.NumeLiqu,
          CodiTili = mail.CodiTili,
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          Email = nfoGovReader.readString("Email")
        });
    }
    nfoGovReader.Close();
    return mailMasivoTunuyanList;
  }

  public List<MailMasivoTunuyan> CuentasParaEnviarMaiCorreo(
    EmisionMailSM mail,
    int desde,
    int hasta)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<MailMasivoTunuyan> mailMasivoTunuyanList = new List<MailMasivoTunuyan>();
    switch (mail.CodiOfic)
    {
      case 1:
        stringBuilder.AppendLine("SELECT liqutasa.PeriLiqu, liqutasa.NumeLiqu, liqutasa.CodiTili");
        stringBuilder.AppendLine(", correo.CuenCtct, correo.CodiOfic, correo.Email");
        stringBuilder.AppendLine("FROM liqutasa");
        stringBuilder.AppendLine("INNER JOIN correo ON correo.CodiOfic = 1 AND correo.CuenCtct = liqutasa.CodiInmu");
        stringBuilder.AppendLine("LEFT JOIN registroenvios ON registroenvios.PeriLiqu = liqutasa.PeriLiqu");
        stringBuilder.AppendLine("AND registroenvios.NumeLiqu = liqutasa.NumeLiqu");
        stringBuilder.AppendLine("AND registroenvios.CodiTili = liqutasa.CodiTili");
        stringBuilder.AppendLine("AND registroenvios.CuenCtct = liqutasa.CodiInmu");
        stringBuilder.AppendLine($"WHERE liqutasa.PeriLiqu = {mail.PeriLiqu.ToString()} AND liqutasa.CodiTili = {mail.CodiTili.ToString()}");
        stringBuilder.AppendLine($"AND liqutasa.NumeLiqu = {mail.NumeLiqu.ToString()} AND registroenvios.IdEnvio IS NULL");
        stringBuilder.AppendLine($"AND liqutasa.OrdeLita BETWEEN {desde.ToString()} AND {hasta.ToString()}");
        stringBuilder.AppendLine("GROUP BY liqutasa.CodiInmu;");
        break;
      case 2:
        stringBuilder.AppendLine("SELECT liqucome.PeriLiqu, liqucome.NumeLiqu, liqucome.CodiTili");
        stringBuilder.AppendLine(", correo.CuenCtct, correo.CodiOfic, correo.Email");
        stringBuilder.AppendLine("FROM liqucome");
        stringBuilder.AppendLine("INNER JOIN correo ON correo.CodiOfic = 2 AND correo.CuenCtct = liqucome.CodiCome");
        stringBuilder.AppendLine("LEFT JOIN registroenvios ON registroenvios.PeriLiqu = liqucome.PeriLiqu");
        stringBuilder.AppendLine("AND registroenvios.NumeLiqu = liqucome.NumeLiqu");
        stringBuilder.AppendLine("AND registroenvios.CodiTili = liqucome.CodiTili");
        stringBuilder.AppendLine("AND registroenvios.CuenCtct = liqucome.CodiCome");
        stringBuilder.AppendLine($"WHERE liqucome.PeriLiqu = {mail.PeriLiqu.ToString()} AND liqucome.CodiTili = {mail.CodiTili.ToString()} AND liqucome.NumeLiqu = {mail.NumeLiqu.ToString()} AND registroenvios.IdEnvio IS NULL");
        stringBuilder.AppendLine($"AND liqucome.OrdeLico BETWEEN {desde.ToString()} AND {hasta.ToString()}");
        stringBuilder.AppendLine("GROUP BY liqucome.CodiCome");
        break;
      case 4:
        stringBuilder.AppendLine("SELECT liquceme.PeriLiqu, liquceme.NumeLiqu, liquceme.CodiTili");
        stringBuilder.AppendLine(", correo.CuenCtct, correo.CodiOfic, correo.Email");
        stringBuilder.AppendLine("FROM liquceme");
        stringBuilder.AppendLine("INNER JOIN correo ON correo.CodiOfic = 4 AND correo.CuenCtct = liquceme.CodiDifu");
        stringBuilder.AppendLine("LEFT JOIN registroenvios ON registroenvios.PeriLiqu = liquceme.PeriLiqu");
        stringBuilder.AppendLine("AND registroenvios.NumeLiqu = liquceme.NumeLiqu");
        stringBuilder.AppendLine("AND registroenvios.CodiTili = liquceme.CodiTili");
        stringBuilder.AppendLine("AND registroenvios.CuenCtct = liquceme.CodiDifu");
        stringBuilder.AppendLine($"WHERE liquceme.PeriLiqu = {mail.PeriLiqu.ToString()} AND liquceme.CodiTili = {mail.CodiTili.ToString()} AND liquceme.NumeLiqu = {mail.NumeLiqu.ToString()} AND registroenvios.IdEnvio IS NULL");
        stringBuilder.AppendLine($"AND liquceme.OrdeLice BETWEEN {desde.ToString()} AND {hasta.ToString()}");
        stringBuilder.AppendLine("GROUP BY liquceme.CodiDifu");
        break;
    }
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        mailMasivoTunuyanList.Add(new MailMasivoTunuyan()
        {
          PeriLiqu = mail.PeriLiqu,
          NumeLiqu = mail.NumeLiqu,
          CodiTili = mail.CodiTili,
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
    stringBuilder.AppendLine("(IdEnvio, PeriLiqu, NumeLiqu, CodiTili, CodiOfic, CuenCtct, Email, FechEnvio, AltaUsua) VALUES");
    stringBuilder.AppendLine($"({num.ToString()}, {mail.PeriLiqu.ToString()}, {mail.NumeLiqu.ToString()}, {mail.CodiTili.ToString()}, {mail.CodiOfic.ToString()}, '{mail.CuenCtct}', '{mail.Email}', NOW(), '{this.usuario}');");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public int CantidadCorreosEnviadosxLiquidacion(
    int PeriLiqu,
    int NumeLiqu,
    short CodiTili,
    short CodiOfic)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM registroenvios WHERE PeriLiqu = {PeriLiqu.ToString()} AND NumeLiqu = {NumeLiqu.ToString()} AND CodiTili = {CodiTili.ToString()} AND CodiOfic = {CodiOfic.ToString()};");
  }

  public int CantidadCorreosxLiquidacion(
    int PeriLiqu,
    int NumeLiqu,
    short CodiTili,
    short CodiOfic)
  {
    string sql = "";
    switch (CodiOfic)
    {
      case 1:
        sql = $"SELECT COUNT(DISTINCT contacto.Email) FROM liqutasa INNER JOIN infogov.contacto ON contacto.CodiOfic = 1 AND contacto.CuenCtct = liqutasa.CodiInmu WHERE liqutasa.PeriLiqu = {PeriLiqu.ToString()} AND liqutasa.CodiTili = {CodiTili.ToString()} AND liqutasa.NumeLiqu = {NumeLiqu.ToString()};";
        break;
      case 2:
        sql = $"SELECT COUNT(DISTINCT contacto.Email) FROM liqucome INNER JOIN infogov.contacto ON contacto.CodiOfic = 2 AND contacto.CuenCtct = liqucome.CodiCome WHERE liqucome.PeriLiqu = {PeriLiqu.ToString()} AND liqucome.CodiTili = {CodiTili.ToString()} AND liqucome.NumeLiqu = {NumeLiqu.ToString()};";
        break;
      case 4:
        sql = $"SELECT COUNT(DISTINCT contacto.Email) FROM liquceme INNER JOIN infogov.contacto ON contacto.CodiOfic = 4 AND contacto.CuenCtct = liquceme.CodiDifu WHERE liquceme.PeriLiqu = {PeriLiqu.ToString()} AND liquceme.CodiTili = {CodiTili.ToString()} AND liquceme.NumeLiqu = {NumeLiqu.ToString()};";
        break;
    }
    return this.conn.executeInt(sql);
  }

  public int CantidadCorreosxLiquidacionCorreo(
    int PeriLiqu,
    int NumeLiqu,
    short CodiTili,
    short CodiOfic)
  {
    string sql = "";
    switch (CodiOfic)
    {
      case 1:
        sql = $"SELECT COUNT(DISTINCT correo.Email) FROM liqutasa INNER JOIN correo ON correo.CodiOfic = 1 AND correo.CuenCtct = liqutasa.CodiInmu WHERE liqutasa.PeriLiqu = {PeriLiqu.ToString()} AND liqutasa.CodiTili = {CodiTili.ToString()} AND liqutasa.NumeLiqu = {NumeLiqu.ToString()};";
        break;
      case 2:
        sql = $"SELECT COUNT(DISTINCT correo.Email) FROM liqucome INNER JOIN correo ON correo.CodiOfic = 2 AND correo.CuenCtct = liqucome.CodiCome WHERE liqucome.PeriLiqu = {PeriLiqu.ToString()} AND liqucome.CodiTili = {CodiTili.ToString()} AND liqucome.NumeLiqu = {NumeLiqu.ToString()};";
        break;
      case 4:
        sql = $"SELECT COUNT(DISTINCT correo.Email) FROM liquceme INNER JOIN correo ON correo.CodiOfic = 4 AND correo.CuenCtct = liquceme.CodiDifu WHERE liquceme.PeriLiqu = {PeriLiqu.ToString()} AND liquceme.CodiTili = {CodiTili.ToString()} AND liquceme.NumeLiqu = {NumeLiqu.ToString()};";
        break;
    }
    return this.conn.executeInt(sql);
  }
}
