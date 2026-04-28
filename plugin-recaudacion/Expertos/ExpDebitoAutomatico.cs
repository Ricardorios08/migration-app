// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpDebitoAutomatico
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Reportes.DebitoAutomatico;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpDebitoAutomatico : Expert, ABMExpert
{
  public ExpDebitoAutomatico()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM debitoautomatico");
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readDebitoAutomatico(dr));
    }
    dr.Close();
    return gridData;
  }

  private InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico readDebitoAutomatico(
    InfoGovReader dr)
  {
    InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico debitoAutomatico = new InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico();
    debitoAutomatico.CodiOfic = dr.readShort("CodiOfic");
    debitoAutomatico.CuenCtct = dr.readString("CuenCtct");
    debitoAutomatico.CodiBanc = dr.readInt("CodiBanc");
    debitoAutomatico.NumeSucu = dr.readShort("NumeSucu");
    debitoAutomatico.TipoCuenta = dr.readShort("TipoCuenta");
    debitoAutomatico.NumeCuenta = dr.readLong("NumeCuenta");
    debitoAutomatico.Cbu = dr.readString("Cbu");
    debitoAutomatico.FechaSolic = dr.readDateTime("FechaSolic");
    debitoAutomatico.readAuditory(dr);
    return debitoAutomatico;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "";

  public bool guardarNuevo(Entity data)
  {
    InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico debitoAutomatico = (InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico) data;
    return this.conn.executeNonQuery($"INSERT INTO debitoautomatico(CodiOfic, CuenCtct, CodiBanc, NumeSucu, TipoCuenta, NumeCuenta, Cbu, FechaSolic, AltaUsua) VALUES ({debitoAutomatico.CodiOfic.ToString()}, '{debitoAutomatico.CuenCtct}', {debitoAutomatico.CodiBanc.ToString()}, {debitoAutomatico.NumeSucu.ToString()}, {debitoAutomatico.TipoCuenta.ToString()}, {debitoAutomatico.NumeCuenta.ToString()}, '{debitoAutomatico.Cbu}', {this.sqlDate(debitoAutomatico.FechaSolic)}, '{this.usuario}')");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico debitoAutomatico1 = (InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico) enti;
    InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico debitoAutomatico2 = (InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico) data;
    return this.conn.executeNonQuery($"UPDATE debitoautomatico\tSET CodiBanc={debitoAutomatico2.CodiBanc.ToString()}, NumeSucu={debitoAutomatico2.NumeSucu.ToString()}, TipoCuenta = {debitoAutomatico2.TipoCuenta.ToString()}, NumeCuenta = {debitoAutomatico2.NumeCuenta.ToString()}, Cbu ='{debitoAutomatico2.Cbu}', FechaSolic ={this.sqlDate(debitoAutomatico2.FechaSolic)}, ModiUsua ='{this.usuario}', ModiFeho =NOW() WHERE CodiOfic = {debitoAutomatico1.CodiOfic.ToString()} AND CuenCtct = '{debitoAutomatico1.CuenCtct}';");
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti)
  {
    InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico debitoAutomatico = (InfoGov.Plugins.Recaudacion.Entidades.DebitoAutomatico) enti;
    return this.conn.executeNonQuery($"DELETE FROM debitoautomatico WHERE CodiOfic={debitoAutomatico.CodiOfic.ToString()} AND CuenCtct='{debitoAutomatico.CuenCtct}';");
  }

  public bool existecuenta(short ofic, string cuenta)
  {
    bool flag = false;
    switch (ofic)
    {
      case 1:
        flag = this.conn.executeBool("SELECT IFNULL(COUNT(*),0) FROM inmueble WHERE CodiInmu < 50000 AND CodiInmu = " + cuenta);
        break;
      case 2:
        flag = this.conn.executeBool("SELECT IFNULL(COUNT(*),0) FROM comercio WHERE CodiCome = " + cuenta);
        break;
      case 3:
        flag = this.conn.executeBool($"SELECT IFNULL(COUNT(*),0) FROM deudvari WHERE CodiDeva = '{cuenta}';");
        break;
      case 4:
        flag = this.conn.executeBool($"SELECT IFNULL(COUNT(*),0) FROM difunto WHERE CodiDifu = '{cuenta}';");
        break;
      case 5:
        flag = this.conn.executeBool($"SELECT IFNULL(COUNT(*),0) FROM transito WHERE CodiTran = '{cuenta}';");
        break;
    }
    return flag;
  }

  public bool existecuentacargadas(short ofic, string cuenta)
  {
    return this.conn.executeBool($"SELECT IFNULL(COUNT(*),0) FROM debitoautomatico WHERE CodiOfic = {ofic.ToString()} AND CuenCtct='{cuenta}';");
  }

  public List<DTODebitoAutomatico> getDebitosAutomaticos(DateTime desde, DateTime hasta)
  {
    List<DTODebitoAutomatico> debitosAutomaticos = new List<DTODebitoAutomatico>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT boleto.PeriBole, boleto.NumeBole, TotaBole, IF(detabole.codifapa = 0, boleto.CodiOfic, 5) as CodiOfic,");
    stringBuilder.AppendLine("cast(rpad(IF(detabole.CodiFapa = 0, lpad(detabole.CuenCtct, 7, '0'), lpad(detabole.CodiFapa, 7, '0')), 18, ' ') as char) as CuenCtctStr,");
    stringBuilder.AppendLine("detabole.CuenCtct as CuenCtctBarra, cast(rpad(concat(boleto.PeriBole, boleto.NumeBole), 20, ' ') as char) as NumeBoleStr, FeveBole, cast(replace(lpad(TotaBole, 12, '0'), '.', '') as char) as TotaBoleStr, detabole.CodiConc, concepto.DetaConc, detabole.CodiFapa, detabole.BimeCtct CuotDefa, 0 CacuFapa,");
    stringBuilder.AppendLine("boleto.DecaBole, IF(boleto.CodiTili > 0 AND boleto.NumeLiqu > 0, cast(replace(lpad(TotaBole + DecaBole + ExenBole, 12, '0'), '.', '') as char), cast(replace(lpad(TotaBole, 12, '0'), '.', '') as char)) as TotaBoleSeguStr,");
    stringBuilder.AppendLine("IF(detabole.CodiFapa = 0, (SELECT SUM(DebeCtct) - SUM(CredCtct) as saldo FROM ctacte");
    stringBuilder.AppendLine("WHERE ctacte.CodiOfic = detabole.CodiOfic AND ctacte.CuenCtct = detabole.CuenCtct AND ctacte.PeriCtct = detabole.PeriCtct AND ctacte.BimeCtct = detabole.BimeCtct AND ctacte.NumeCtct = detabole.NumeCtct),1) as Saldo");
    stringBuilder.AppendLine(", debitoautomatico.*");
    stringBuilder.AppendLine("FROM boleto");
    stringBuilder.AppendLine("INNER JOIN detabole ON detabole.PeriBole = boleto.PeriBole AND detabole.NumeBole = boleto.NumeBole");
    stringBuilder.AppendLine("INNER JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc");
    stringBuilder.AppendLine("INNER JOIN debitoautomatico ON debitoautomatico.CodiOfic = boleto.CodiOfic AND debitoautomatico.CuenCtct = boleto.CuenCtct");
    stringBuilder.AppendLine($"WHERE boleto.FeveBole BETWEEN {this.sqlDate(desde, false)} AND {this.sqlDate(hasta, false)}");
    stringBuilder.AppendLine("AND boleto.EstaBole = 'Emitido' AND detabole.CuenCtct<> '' AND boleto.CodiTili > 0 AND boleto.NumeLiqu > 0");
    stringBuilder.AppendLine("GROUP BY boleto.PeriBole, boleto.NumeBole");
    stringBuilder.AppendLine("HAVING Saldo > 0");
    stringBuilder.AppendLine("ORDER BY boleto.PeriBole, boleto.NumeBole");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTODebitoAutomatico debitoAutomatico = new DTODebitoAutomatico();
        debitoAutomatico.CodiBanc = nfoGovReader.readInt("CodiBanc");
        debitoAutomatico.Cbu = nfoGovReader.readString("Cbu");
        if (debitoAutomatico.CodiBanc == 285)
        {
          debitoAutomatico.Cobis = 102097;
          debitoAutomatico.NumeSucu = nfoGovReader.readShort("NumeSucu").ToString();
          debitoAutomatico.NumeCuenta = nfoGovReader.readLong("NumeCuenta").ToString();
        }
        else
        {
          debitoAutomatico.Cobis = 102100;
          debitoAutomatico.NumeSucu = debitoAutomatico.Cbu.Substring(3, 4);
          debitoAutomatico.NumeCuenta = debitoAutomatico.Cbu.Substring(7, 14);
        }
        debitoAutomatico.TipoCuenta = nfoGovReader.readShort("TipoCuenta");
        debitoAutomatico.FeveBole = nfoGovReader.readDateTime("FeveBole");
        debitoAutomatico.TotaBole = nfoGovReader.readDecimal("TotaBole");
        debitoAutomatico.CuenCtct = nfoGovReader.readString("CuenCtct");
        debitoAutomatico.NumeBole = nfoGovReader.readLong("NumeBole").ToString();
        debitosAutomaticos.Add(debitoAutomatico);
      }
    }
    nfoGovReader?.Close();
    return debitosAutomaticos;
  }
}
