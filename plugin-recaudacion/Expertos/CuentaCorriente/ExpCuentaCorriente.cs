// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente.ExpCuentaCorriente
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;

public class ExpCuentaCorriente : Expert
{
  public ExpCuentaCorriente()
    : base(Modulo.Database)
  {
  }

  public void BuscarOficinas(List<OficinaCtacte> oficinas)
  {
    oficinas.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT CodiOfic, DetaOfic FROM oficina;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        oficinas.Add(new OficinaCtacte()
        {
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          DetaOfic = nfoGovReader.readString("DetaOfic")
        });
    }
    nfoGovReader?.Close();
  }

  public void BuscarDatosCuenta(CtaCte cuenta, bool SLPers = true, bool SLDomi = true)
  {
    StringBuilder stringBuilder = new StringBuilder();
    switch (cuenta.CodiOfic)
    {
      case 1:
        stringBuilder.AppendLine($"SELECT i.CucuPers, IF (p.CucuPers IS NULL, 'Sin Datos Persona', CONCAT(p.CucuPers, ' - {(SLPers ? "\n" : "")}', p.DetaPers)) DetaPers,");
        stringBuilder.AppendLine($"fnDomiCuenCtct(1, {this.sqlString(cuenta.CuenCtct)}, 1) DetaDomi, fnDomiCuenCtct(1, {this.sqlString(cuenta.CuenCtct)}, 2) DetaDomiPost");
        stringBuilder.AppendLine("FROM inmueble i");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = i.CucuPers");
        stringBuilder.AppendLine("LEFT JOIN domicilio d ON d.CodiCome = i.CodiInmu AND d.CodiOfic = 1 AND d.CodiTido = 1 AND d.NumeDomi = 1");
        stringBuilder.AppendLine("WHERE i.CodiInmu = " + cuenta.CuenCtct);
        stringBuilder.AppendLine("GROUP BY i.CodiInmu;");
        break;
      case 2:
        stringBuilder.AppendLine($"SELECT c.CucuPers, IF (p.CucuPers IS NULL, 'Sin Datos Persona', CONCAT(p.CucuPers, ' - {(SLPers ? "\n" : "")}', p.DetaPers)) DetaPers,");
        stringBuilder.AppendLine($"fnDomiCuenCtct(2, {this.sqlString(cuenta.CuenCtct)}, 1) DetaDomi, fnDomiCuenCtct(2, {this.sqlString(cuenta.CuenCtct)}, 2) DetaDomiPost");
        stringBuilder.AppendLine("FROM comercio c");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
        stringBuilder.AppendLine("LEFT JOIN domicilio d ON d.CodiCome = c.CodiCome AND d.CodiOfic = 2 AND d.CodiTido = 1 AND d.NumeDomi = 1");
        stringBuilder.AppendLine("WHERE c.CodiCome = " + cuenta.CuenCtct);
        stringBuilder.AppendLine("GROUP BY c.CodiCome;");
        break;
      case 3:
        stringBuilder.AppendLine($"SELECT dv.CucuPers, IF (p.CucuPers IS NULL, 'Sin Datos Persona', CONCAT(p.CucuPers, ' - {(SLPers ? "\n" : "")}', p.DetaPers)) DetaPers,");
        stringBuilder.AppendLine("IF(p.CucuPers IS NULL, 'Sin Datos Domicilio', CONCAT(p.DecrPers, ' N° ', p.NumePers, ' | Manz/Casa: ', p.ManzPers, ' | Piso: ', p.PisoPers, ' | Lote: ', p.LotePers, ' | Depto ', p.DptoPers)) DetaDomi, '' DetaDomiPost");
        stringBuilder.AppendLine("FROM deudvari dv");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = dv.CucuPers");
        stringBuilder.AppendLine("WHERE dv.CodiDeva = " + cuenta.CuenCtct);
        stringBuilder.AppendLine("GROUP BY dv.CodiDeva;");
        break;
      case 4:
        stringBuilder.AppendLine($"SELECT dif.CucuPers, IF (p.CucuPers IS NULL, 'Sin Datos Persona', CONCAT(p.CucuPers, ' - {(SLPers ? "\n" : "")}', p.DetaPers)) DetaPers,");
        stringBuilder.AppendLine($"fnDomiCuenCtct(4, {this.sqlString(cuenta.CuenCtct)}, 1) DetaDomi, fnDomiCuenCtct(4, {this.sqlString(cuenta.CuenCtct)}, 2) DetaDomiPost");
        stringBuilder.AppendLine("FROM difunto dif");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = dif.CucuPers");
        stringBuilder.AppendLine("LEFT JOIN domicilio d ON d.CodiCome = dif.CodiDifu AND d.CodiOfic = 3 AND d.CodiTido = 1 AND d.NumeDomi = 1");
        stringBuilder.AppendLine("WHERE dif.CodiDifu = " + cuenta.CuenCtct);
        stringBuilder.AppendLine("GROUP BY dif.CodiDifu;");
        break;
      case 5:
        stringBuilder.AppendLine($"SELECT t.CucuPers, IF (p.CucuPers IS NULL, 'Sin Datos Persona', CONCAT(p.CucuPers, ' - {(SLPers ? "\n" : "")}', p.DetaPers)) DetaPers,");
        stringBuilder.AppendLine("IF(p.CucuPers IS NULL, 'Sin Datos Domicilio', CONCAT(p.DecrPers, ' N° ', p.NumePers, ' | Manz/Casa: ', p.ManzPers, ' | Piso: ', p.PisoPers, ' | Lote: ', p.LotePers, ' | Depto ', p.DptoPers)) DetaDomi, '' DetaDomiPost");
        stringBuilder.AppendLine("FROM transito t");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = t.CucuPers");
        stringBuilder.AppendLine("WHERE t.CodiTran = " + cuenta.CuenCtct);
        stringBuilder.AppendLine("GROUP BY t.CodiTran;");
        break;
      case 6:
        stringBuilder.AppendLine($"SELECT c.CucuPers, IF (p.CucuPers IS NULL, 'Sin Datos Persona', CONCAT(p.CucuPers, ' - {(SLPers ? "\n" : "")}', p.DetaPers)) DetaPers,");
        stringBuilder.AppendLine($"fnDomiCuenCtct(6, {this.sqlString(cuenta.CuenCtct)}, 1) DetaDomi, fnDomiCuenCtct(6, {this.sqlString(cuenta.CuenCtct)}, 2) DetaDomiPost");
        stringBuilder.AppendLine("FROM publicidad c");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
        stringBuilder.AppendLine("LEFT JOIN domicilio d ON d.CodiCome = c.CodiCome AND d.CodiOfic = 6 AND d.CodiTido = 1 AND d.NumeDomi = 1");
        stringBuilder.AppendLine("WHERE c.CodiCome = " + cuenta.CuenCtct);
        stringBuilder.AppendLine("GROUP BY c.CodiCome;");
        break;
      case 7:
        stringBuilder.AppendLine($"SELECT c.CucuPers, IF (p.CucuPers IS NULL, 'Sin Datos Persona', CONCAT(p.CucuPers, ' - {(SLPers ? "\n" : "")}', p.DetaPers)) DetaPers,");
        stringBuilder.AppendLine($"fnDomiCuenCtct(7, {this.sqlString(cuenta.CuenCtct)}, 1) DetaDomi, fnDomiCuenCtct(7, {this.sqlString(cuenta.CuenCtct)}, 2) DetaDomiPost");
        stringBuilder.AppendLine("FROM antena c");
        stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = c.CucuPers");
        stringBuilder.AppendLine("LEFT JOIN domicilio d ON d.CodiCome = c.CodiCome AND d.CodiOfic = 7 AND d.CodiTido = 1 AND d.NumeDomi = 1");
        stringBuilder.AppendLine("WHERE c.CodiCome = " + cuenta.CuenCtct);
        stringBuilder.AppendLine("GROUP BY c.CodiCome;");
        break;
      case 99:
        stringBuilder.AppendLine($"SELECT p.CucuPers, CONCAT(p.CucuPers, ' - {(SLPers ? "\n" : "")}', p.DetaPers) DetaPers,");
        stringBuilder.AppendLine("CONCAT(p.DecrPers, ' N° ', p.NumePers, ' | Manz/Casa: ', p.ManzPers, ' | Piso: ', p.PisoPers, ' | Lote: ', p.LotePers, ' | Depto ', p.DptoPers) DetaDomi, '' DetaDomiPost");
        stringBuilder.AppendLine("FROM infogov.persona p");
        stringBuilder.AppendLine($"WHERE p.CucuPers = {cuenta.CuenCtct};");
        break;
    }
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        cuenta.CucuPers = nfoGovReader.readLong("CucuPers");
        cuenta.DetaPers = nfoGovReader.readString("DetaPers");
        cuenta.DetaDomi = nfoGovReader.readString("DetaDomi");
        cuenta.DetaDomiPost = nfoGovReader.readString("DetaDomiPost");
        cuenta.Existe = true;
      }
    }
    nfoGovReader?.Close();
  }

  public void BuscarDatosFacilidad(int CodiFapa, List<FaciPagoCtaCte> facilidades)
  {
    StringBuilder stringBuilder = new StringBuilder();
    bool flag = facilidades.Exists((Predicate<FaciPagoCtaCte>) (fac => fac.CodiFapa == CodiFapa));
    stringBuilder.AppendLine("SELECT fp.*, df.*, IFNULL(tf.DetaTifa,'Sin Detalle') DetaTifa");
    stringBuilder.AppendLine("FROM facipago fp");
    stringBuilder.AppendLine("INNER JOIN detafapa df ON df.CodiFapa = fp.CodiFapa");
    stringBuilder.AppendLine("LEFT JOIN tipofapa tf ON tf.CodiTifa = fp.CodiTifa");
    stringBuilder.AppendLine($"WHERE fp.CodiFapa = {CodiFapa}");
    stringBuilder.AppendLine("ORDER BY df.CuotDefa;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        if (!flag)
        {
          List<FaciPagoCtaCte> faciPagoCtaCteList = facilidades;
          FaciPagoCtaCte faciPagoCtaCte = new FaciPagoCtaCte();
          faciPagoCtaCte.CodiFapa = nfoGovReader.readInt(nameof (CodiFapa));
          faciPagoCtaCte.CodiTifa = nfoGovReader.readShort("CodiTifa");
          faciPagoCtaCte.DetaTifa = nfoGovReader.readString("DetaTifa");
          faciPagoCtaCte.FealFapa = nfoGovReader.readDateTime("FealFapa");
          faciPagoCtaCte.EstaFapa = nfoGovReader.readString("EstaFapa");
          faciPagoCtaCte.CapiFapa = nfoGovReader.readDecimal("CapiFapa");
          faciPagoCtaCte.DecaFapa = nfoGovReader.readDecimal("DecaFapa");
          faciPagoCtaCte.RecaFapa = nfoGovReader.readDecimal("RecaFapa");
          faciPagoCtaCte.DereFapa = nfoGovReader.readDecimal("DereFapa");
          faciPagoCtaCte.ApreFapa = nfoGovReader.readDecimal("ApreFapa");
          faciPagoCtaCte.InteFapa = nfoGovReader.readDecimal("InteFapa");
          faciPagoCtaCte.TotaFapa = nfoGovReader.readDecimal("TotaFapa");
          faciPagoCtaCte.AltaUsua = nfoGovReader.readString("AltaUsua");
          faciPagoCtaCteList.Add(faciPagoCtaCte);
          flag = true;
        }
        if (flag)
          facilidades.Find((Predicate<FaciPagoCtaCte>) (fac => fac.CodiFapa == CodiFapa)).Detalles.Add(new DetaFapaCtaCte()
          {
            CodiFapa = nfoGovReader.readInt(nameof (CodiFapa)),
            CuotDefa = nfoGovReader.readShort("CuotDefa"),
            EstaDefa = nfoGovReader.readString("EstaDefa"),
            FeveDefa = nfoGovReader.readDateTime("FeveDefa"),
            FepaDefa = nfoGovReader.readDateTime("FepaDefa"),
            CapiDefa = nfoGovReader.readDecimal("CapiDefa"),
            DecaDefa = nfoGovReader.readDecimal("DecaDefa"),
            RecaDefa = nfoGovReader.readDecimal("RecaDefa"),
            DereDefa = nfoGovReader.readDecimal("DereDefa"),
            ApreDefa = nfoGovReader.readDecimal("ApreDefa"),
            InteDefa = nfoGovReader.readDecimal("InteDefa"),
            RemoDefa = (Decimal) new Random().Next(0, 10),
            TotaDefa = nfoGovReader.readDecimal("TotaDefa")
          });
      }
    }
    nfoGovReader?.Close();
  }

  public void BuscarDatosApremio(int NumeApre, List<ApreCtaCte> apremios)
  {
    StringBuilder stringBuilder = new StringBuilder();
    bool flag = apremios.Exists((Predicate<ApreCtaCte>) (apre => apre.NumeApre == NumeApre));
    if (!flag)
    {
      stringBuilder.AppendLine("SELECT ap.*, IFNULL(reca.DetaReca, 'Sin Detalle') DetaReca, IFNULL(ofic.DetaOfju,'Sin Detalle') DetaOfju, IFNULL(est.DetaEsap,'Sin Detalle') DetaEsap");
      stringBuilder.AppendLine("FROM apremio ap");
      stringBuilder.AppendLine("LEFT JOIN recaudador reca ON reca.CodiReca = ap.CodiReca");
      stringBuilder.AppendLine("LEFT JOIN oficjust ofic ON ofic.CodiOfju = ap.CodiOfju");
      stringBuilder.AppendLine("LEFT JOIN estadoapremio est ON est.CodiEsap = ap.EstaApre");
      stringBuilder.AppendLine($"WHERE ap.NumeApre = {NumeApre};");
      InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
      if (nfoGovReader != null && nfoGovReader.HasRows)
      {
        while (nfoGovReader.Read())
        {
          apremios.Add(new ApreCtaCte()
          {
            NumeApre = nfoGovReader.readInt(nameof (NumeApre)),
            AutoApre = nfoGovReader.readInt("AutoApre"),
            CodiReca = nfoGovReader.readShort("CodiReca"),
            DetaReca = nfoGovReader.readString("DetaReca"),
            CodiOfju = nfoGovReader.readShort("CodiOfju"),
            DetaOfju = nfoGovReader.readString("DetaOfju"),
            FealApre = nfoGovReader.readDateTime("FealApre"),
            EstaApre = nfoGovReader.readString("DetaEsap"),
            CapiApre = nfoGovReader.readDecimal("CapiApre"),
            RecaApre = nfoGovReader.readDecimal("RecaApre"),
            TotaApre = nfoGovReader.readDecimal("TotaApre")
          });
          flag = true;
        }
      }
      nfoGovReader?.Close();
    }
    if (!flag)
      return;
    stringBuilder.Clear();
    stringBuilder.AppendLine("SELECT ia.NumeApre, ia.CodiInju, IFNULL(ij.DetaInju,'Sin Detalle') DetaInju, ia.FealInap");
    stringBuilder.AppendLine("FROM instapre ia");
    stringBuilder.AppendLine("LEFT JOIN instjudi ij ON ij.CodiInju = ia.CodiInju");
    stringBuilder.AppendLine($"WHERE ia.NumeApre = {NumeApre}");
    stringBuilder.AppendLine("ORDER BY ia.CodiInju DESC;");
    InfoGovReader nfoGovReader1 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader1 != null && nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
        apremios.Find((Predicate<ApreCtaCte>) (apre => apre.NumeApre == NumeApre)).Instancias.Add(new InstApreCtaCte()
        {
          NumeApre = nfoGovReader1.readInt(nameof (NumeApre)),
          CodiInju = nfoGovReader1.readShort("CodiInju"),
          DetaInju = nfoGovReader1.readString("DetaInju"),
          FealInap = nfoGovReader1.readDateTime("FealInap")
        });
    }
    nfoGovReader1?.Close();
    stringBuilder.Clear();
    stringBuilder.AppendLine("SELECT boap.*, CONCAT(boap.NumeBole,'/',boap.PeriBole) Boleto");
    stringBuilder.AppendLine("FROM boleapre boap");
    stringBuilder.AppendLine("INNER JOIN apremio ap ON ap.NumeApre = boap.NumeApre");
    stringBuilder.AppendLine($"WHERE boap.NumeApre = {NumeApre}");
    stringBuilder.AppendLine("ORDER BY boap.FealBoap DESC;");
    InfoGovReader nfoGovReader2 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader2 != null && nfoGovReader2.HasRows)
    {
      while (nfoGovReader2.Read())
        apremios.Find((Predicate<ApreCtaCte>) (apre => apre.NumeApre == NumeApre)).Boletos.Add(new BoleApreCtaCte()
        {
          PeriBole = nfoGovReader2.readShort("PeriBole"),
          NumeBole = nfoGovReader2.readInt("NumeBole"),
          Boleto = nfoGovReader2.readString("Boleto"),
          NumeApre = nfoGovReader2.readInt(nameof (NumeApre)),
          FealBoap = nfoGovReader2.readDateTime("FealBoap"),
          EstaBoap = nfoGovReader2.readString("EstaBoap"),
          CoadBoap = nfoGovReader2.readDecimal("CoadBoap"),
          ApleBoap = nfoGovReader2.readDecimal("ApleBoap"),
          DefiBoap = nfoGovReader2.readDecimal("DefiBoap"),
          ReseBoap = nfoGovReader2.readDecimal("ReseBoap"),
          HoreBoap = nfoGovReader2.readDecimal("HoreBoap"),
          HoofBoap = nfoGovReader2.readDecimal("HoofBoap"),
          MoreBoap = nfoGovReader2.readDecimal("MoreBoap"),
          MoofBoap = nfoGovReader2.readDecimal("MoofBoap")
        });
    }
    nfoGovReader2?.Close();
    stringBuilder.Clear();
    stringBuilder.AppendLine("SELECT dj.*, IFNULL(i.DESCRIPCION,'Sin Descripción') DESCRIPCION,");
    stringBuilder.AppendLine("IFNULL(CONVERT(REPLACE(IF(dj.CAPITAL IS NULL || dj.CAPITAL = '', '0', dj.CAPITAL), ',', '.'), DECIMAL(10,2)), 0.00) CAPITAL_DECIMAL,");
    stringBuilder.AppendLine("IFNULL(CONVERT(REPLACE(IF(dj.INTERES IS NULL || dj.INTERES = '', '0', dj.INTERES), ',', '.'), DECIMAL(10,2)), 0.00) INTERES_DECIMAL,");
    stringBuilder.AppendLine("IF (COD_IMP = '06', TRUE, FALSE) EsFacilidad");
    stringBuilder.AppendLine("FROM migracion.detalle_j dj");
    stringBuilder.AppendLine("LEFT JOIN migracion.impuesto i ON i.CODIGO = dj.COD_IMP");
    stringBuilder.AppendLine($"WHERE dj.NRO_CAUSA = '{NumeApre}';");
    InfoGovReader nfoGovReader3 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader3 != null && nfoGovReader3.HasRows)
    {
      while (nfoGovReader3.Read())
        apremios.Find((Predicate<ApreCtaCte>) (apre => apre.NumeApre == NumeApre)).Composicion.Add(new ComposicionApreCtaCte()
        {
          NumeCausa = nfoGovReader3.readString("NRO_CAUSA"),
          Objeto = nfoGovReader3.readString("OBJETO"),
          CodImp = nfoGovReader3.readString("COD_IMP"),
          DetaImp = nfoGovReader3.readString("DESCRIPCION"),
          Periodo = nfoGovReader3.readString("PERIODO"),
          Cuota = nfoGovReader3.readString("CUOTA"),
          Capital = nfoGovReader3.readDecimal("CAPITAL_DECIMAL"),
          Interes = nfoGovReader3.readDecimal("INTERES_DECIMAL"),
          FecProc = nfoGovReader3.readString("FECPROC"),
          Operador = nfoGovReader3.readString("OPERADOR"),
          EsFacilidad = nfoGovReader3.readBool("EsFacilidad")
        });
    }
    nfoGovReader3?.Close();
  }

  public void BuscarDatosBoleto(DTOCtaCte dto, List<DatoBoleCtaCte> boletos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    bool flag = boletos.Exists((Predicate<DatoBoleCtaCte>) (bole => (int) bole.PeriBole == (int) dto.PeriBole && bole.NumeBole == dto.NumeBole));
    if (!flag)
    {
      stringBuilder.AppendLine("SELECT b.*");
      stringBuilder.AppendLine("FROM boleto b");
      stringBuilder.AppendLine($"WHERE b.PeriBole = {dto.PeriBole} AND b.NumeBole = {dto.NumeBole};");
      InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
      if (nfoGovReader != null && nfoGovReader.HasRows)
      {
        while (nfoGovReader.Read())
        {
          if (!flag)
          {
            boletos.Add(new DatoBoleCtaCte()
            {
              PeriBole = nfoGovReader.readShort("PeriBole"),
              NumeBole = nfoGovReader.readInt("NumeBole"),
              CodiTili = nfoGovReader.readShort("CodiTili"),
              NumeLiqu = nfoGovReader.readInt("NumeLiqu"),
              TipoBole = nfoGovReader.readString("TipoBole"),
              EstaBole = nfoGovReader.readString("EstaBole"),
              FealBole = nfoGovReader.readDateTime("FealBole"),
              FeveBole = nfoGovReader.readDateTime("FeveBole"),
              CodiFapa = nfoGovReader.readInt("CodiFapa"),
              CuotDefa = nfoGovReader.readShort("CuotDefa"),
              CapiBole = nfoGovReader.readDecimal("CapiBole"),
              RecaBole = nfoGovReader.readDecimal("RecaBole"),
              DecaBole = nfoGovReader.readDecimal("DecaBole"),
              DereBole = nfoGovReader.readDecimal("DereBole"),
              InteBole = nfoGovReader.readDecimal("InteBole"),
              ApreBole = nfoGovReader.readDecimal("ApreBole"),
              TotaBole = nfoGovReader.readDecimal("TotaBole")
            });
            flag = true;
          }
        }
      }
      nfoGovReader?.Close();
    }
    DatoBoleCtaCte datoBoleCtaCte = boletos.Find((Predicate<DatoBoleCtaCte>) (bole => (int) bole.PeriBole == (int) dto.PeriBole && bole.NumeBole == dto.NumeBole));
    if (flag && datoBoleCtaCte != null)
    {
      stringBuilder.Clear();
      switch (dto.CodiOfic)
      {
        case 1:
          stringBuilder.AppendLine("SELECT lita.CodiSeca Codigo, IFNULL(sc.DetaSeca, 'Sin Detalle') Detalle, lita.ImpoLtde Importe, lita.DecaLtde Descuento, lita.ExenLtde Exencion, lita.TotaLtde Total, liq.OrdeLita OrdenLiquidacion");
          stringBuilder.AppendLine("FROM litadeta lita");
          stringBuilder.AppendLine("INNER JOIN liqutasa liq ON liq.PeriLiqu = lita.PeriLiqu AND liq.BimeLiqu = lita.BimeLiqu AND liq.CodiTili = lita.CodiTili AND liq.NumeLiqu = lita.NumeLiqu AND liq.CodiInmu = lita.CodiInmu AND liq.CodiConc = lita.CodiConc AND liq.TipoVenc = lita.TipoVenc");
          stringBuilder.AppendLine("LEFT JOIN servcata sc ON sc.PeriOrde = lita.PeriOrde AND sc.CodiSeca = lita.CodiSeca");
          stringBuilder.AppendLine($"WHERE lita.PeriLiqu = {dto.PeriCtct} AND lita.BimeLiqu = {dto.BimeCtct} AND lita.CodiTili = {datoBoleCtaCte.CodiTili} AND lita.NumeLiqu = {datoBoleCtaCte.NumeLiqu} AND lita.CodiInmu = {dto.CuenCtct} AND lita.TipoVenc = 1");
          stringBuilder.AppendLine("ORDER BY lita.PeriOrde, lita.CodiSeca;");
          break;
        case 2:
          stringBuilder.AppendLine("SELECT lico.CodiSubr Codigo, IFNULL(sr.DetaSubr,'Sin Detalle') Detalle, lico.ImpoLcde Importe, lico.ExenLcde Exencion, lico.DecaLcde Descuento, lico.TotaLcde Total, liq.OrdeLico OrdenLiquidacion");
          stringBuilder.AppendLine("FROM licodeta lico");
          stringBuilder.AppendLine("INNER JOIN liqucome liq ON liq.PeriLiqu = lico.PeriLiqu AND liq.BimeLiqu = lico.BimeLiqu AND liq.CodiTili = lico.CodiTili AND liq.NumeLiqu = lico.NumeLiqu AND liq.CodiCome = lico.CodiCome AND liq.CodiConc = lico.CodiConc AND liq.TipoVenc = lico.TipoVenc");
          stringBuilder.AppendLine("LEFT JOIN subrubro sr ON sr.CodiRamo = lico.CodiRamo AND sr.CodiRubr = lico.CodiRubr AND sr.PeriOrde = lico.PeriOrde AND sr.CodiSubr = lico.CodiSubr");
          stringBuilder.AppendLine($"WHERE lico.PeriLiqu = {dto.PeriCtct} AND lico.BimeLiqu = {dto.BimeCtct} AND lico.CodiTili = {datoBoleCtaCte.CodiTili} AND lico.NumeLiqu = {datoBoleCtaCte.NumeLiqu} AND lico.CodiCome = {dto.CuenCtct} AND lico.TipoVenc = 1");
          stringBuilder.AppendLine("ORDER BY lico.CodiRamo, lico.CodiRubr, lico.PeriOrde, lico.CodiSubr;");
          break;
        default:
          stringBuilder.AppendLine("SELECT cta.CodiCtde Codigo, IFNULL(sd.DetaSede,'Sin Detalle') Detalle, cta.DebeCtde Importe, 0 Descuento, 0 Exencion, cta.DebeCtde Total, 0 OrdenLiquidacion");
          stringBuilder.AppendLine("FROM ctactedeta cta");
          stringBuilder.AppendLine("LEFT JOIN servdeva sd ON sd.PeriOrde = cta.PeriOrde AND sd.CodiSede = cta.CodiCtde");
          stringBuilder.AppendLine($"WHERE cta.CodiOfic = {dto.CodiOfic} AND cta.CuenCtct = {this.sqlString(dto.CuenCtct)} AND cta.PeriCtct = {dto.PeriCtct} AND cta.BimeCtct = {dto.BimeCtct} AND cta.CodiTimo = 1");
          stringBuilder.AppendLine("ORDER BY cta.PeriOrde, cta.CodiCtde;");
          break;
      }
      InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
      if (nfoGovReader != null && nfoGovReader.HasRows)
      {
        int num = 0;
        while (nfoGovReader.Read())
        {
          num = (int) nfoGovReader.readShort("OrdenLiquidacion");
          datoBoleCtaCte.DetalleBoletos.Add(new DetaBoleCtaCte()
          {
            Codigo = nfoGovReader.readShort("Codigo"),
            Detalle = nfoGovReader.readString("Detalle"),
            Importe = nfoGovReader.readDecimal("Importe"),
            Descuento = nfoGovReader.readDecimal("Descuento"),
            Exencion = nfoGovReader.readDecimal("Exencion"),
            Total = nfoGovReader.readDecimal("Total")
          });
        }
        datoBoleCtaCte.OrdeLiqu = num;
      }
      nfoGovReader?.Close();
    }
    if (!flag || datoBoleCtaCte == null || !(datoBoleCtaCte.EstaBole == "Pagado") && !(datoBoleCtaCte.EstaBole == "Actualizado"))
      return;
    stringBuilder.Clear();
    stringBuilder.AppendLine("SELECT p.FepaPago, p.FeacPago, dp.*, IFNULL(c.DetaConc,'Sin Detalle') DetaConc");
    stringBuilder.AppendLine("FROM pago p");
    stringBuilder.AppendLine("INNER JOIN detapago dp ON dp.FeenAcpa = p.FeenAcpa AND dp.NumeAcpa = p.NumeAcpa AND dp.PeriBole = p.PeriBole AND dp.NumeBole = p.NumeBole");
    stringBuilder.AppendLine("INNER JOIN boleto b ON b.PeriBole = p.PeriBole AND b.NumeBole = p.NumeBole AND b.EstaBole IN ('Pagado','Actualizado')");
    stringBuilder.AppendLine("LEFT JOIN concepto c ON c.PeriInfo = dp.PeriInfo AND c.CodiConc = dp.CodiConc");
    stringBuilder.AppendLine($"WHERE p.PeriBole = {dto.PeriBole} AND p.NumeBole = {dto.NumeBole}");
    stringBuilder.AppendLine("ORDER BY dp.PeriCtct, dp.BimeCtct, dp.NumeCtct, dp.MoviCtct;");
    InfoGovReader nfoGovReader1 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader1 != null && nfoGovReader1.HasRows)
    {
      datoBoleCtaCte.FeenAcpa = nfoGovReader1.readDateTime("FeenAcpa");
      datoBoleCtaCte.NumeAcpa = nfoGovReader1.readShort("NumeAcpa");
      datoBoleCtaCte.FepaPago = nfoGovReader1.readDateTime("FepaPago");
      datoBoleCtaCte.FeacPago = nfoGovReader1.readDateTime("FeacPago");
      while (nfoGovReader1.Read())
        datoBoleCtaCte.DetallePagos.Add(new DetaPagoCtaCte()
        {
          PeriCtct = nfoGovReader1.readShort("PeriCtct"),
          BimeCtct = nfoGovReader1.readInt("BimeCtct"),
          CodiConc = nfoGovReader1.readString("CodiConc"),
          DetaConc = nfoGovReader1.readString("DetaConc"),
          CapiDepa = nfoGovReader1.readDecimal("CapiDepa"),
          DecaDepa = nfoGovReader1.readDecimal("DecaDepa"),
          RecaDepa = nfoGovReader1.readDecimal("RecaDepa"),
          DereDepa = nfoGovReader1.readDecimal("DereDepa"),
          InteDepa = nfoGovReader1.readDecimal("InteDepa"),
          ApreDepa = nfoGovReader1.readDecimal("ApreDepa"),
          TotaDepa = nfoGovReader1.readDecimal("TotaDepa")
        });
    }
    nfoGovReader1?.Close();
  }
}
