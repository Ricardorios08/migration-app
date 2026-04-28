// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente.ExpCCMaipu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;

public class ExpCCMaipu : Expert
{
  public ExpCCMaipu()
    : base(Modulo.Database)
  {
  }

  public void BuscarDeuda(List<CCMaipu> lista, CtaCte cuenta, ExpCCMaipu.DeudaPara deudaPara)
  {
    lista.Clear();
    List<CtaCte> lista1 = new List<CtaCte>();
    List<DetaCCMaipu> detaCcMaipuList = new List<DetaCCMaipu>();
    List<CongeladoDetaMP> congeladoDetaMpList = new List<CongeladoDetaMP>();
    StringBuilder stringBuilder = new StringBuilder();
    HashSet<(short, string, int)> congApremio = new HashSet<(short, string, int)>();
    HashSet<(short, string, long, short)> congFaci = new HashSet<(short, string, long, short)>();
    HashSet<(short, string, short, short, long, short)> congComun = new HashSet<(short, string, short, short, long, short)>();
    if (cuenta.CodiOfic != (short) 99)
      lista1.Add(cuenta);
    if (cuenta.ConCtasAsociadas)
      this.BuscarCuentasAsociadas(lista1, cuenta);
    if (lista1.Count > 50)
      return;
    foreach (CtaCte cuenta1 in lista1)
    {
      stringBuilder.Clear();
      if (cuenta1.SoloDeuda)
        stringBuilder.AppendLine(this.ObtenerDeuda(cuenta1));
      else
        stringBuilder.AppendLine(this.ObtenerMovimientosHistoricos(cuenta1));
      InfoGovReader nfoGovReader1 = this.conn.executeReader(stringBuilder.ToString());
      if (nfoGovReader1 != null && nfoGovReader1.HasRows)
      {
        while (nfoGovReader1.Read())
          detaCcMaipuList.Add(new DetaCCMaipu()
          {
            CodiOfic = nfoGovReader1.readShort("CodiOfic"),
            DetaOfic = nfoGovReader1.readString("DetaOfic"),
            CuenCtct = nfoGovReader1.readString("CuenCtct"),
            PeriBimestre = nfoGovReader1.readString("PeriBimestre"),
            PeriCtct = nfoGovReader1.readShort("PeriCtct"),
            BimeCtct = nfoGovReader1.readShort("BimeCtct"),
            NumeCtct = nfoGovReader1.readLong("NumeCtct"),
            MoviCtct = nfoGovReader1.readShort("MoviCtct"),
            BoleCtct = nfoGovReader1.readString("PeriNumeBole"),
            PeriBole = nfoGovReader1.readShort("PeriBole"),
            NumeBole = nfoGovReader1.readInt("NumeBole"),
            FealCtct = nfoGovReader1.readDateTime("FealCtct"),
            FeveCtct = nfoGovReader1.readDateTime("FeveCtct"),
            PeriInfo = nfoGovReader1.readShort("PeriInfo"),
            CodiConc = nfoGovReader1.readString("CodiConc"),
            DetaConc = nfoGovReader1.readString("DetaConc"),
            CodiFapa = nfoGovReader1.readInt("CodiFapa"),
            CuotDefa = nfoGovReader1.readShort("CuotDefa"),
            NumeApre = nfoGovReader1.readInt("NumeApre"),
            ExpeCtct = nfoGovReader1.readString("ExpeCtctCombinado"),
            DetaCtct = nfoGovReader1.readString("DetaCtct"),
            CodiTimo = nfoGovReader1.readShort("CodiTimo"),
            DetaTimo = nfoGovReader1.readString("DetaTimo"),
            DebeCtct = nfoGovReader1.readDecimal("DebeCtct"),
            CredCtct = nfoGovReader1.readDecimal("CredCtct"),
            SaldCtct = nfoGovReader1.readDecimal("SaldCtct"),
            RecaCtct = nfoGovReader1.readDecimal("RecaCtct"),
            CapiApre = nfoGovReader1.readDecimal("CapiApre"),
            RecaApre = nfoGovReader1.readDecimal("RecaApre"),
            ApreCtct = nfoGovReader1.readDecimal("ApreCtct"),
            TotaCtct = nfoGovReader1.readDecimal("SaldCtct") + nfoGovReader1.readDecimal("ApreCtct") + nfoGovReader1.readDecimal("RecaApre"),
            AltaUsua = nfoGovReader1.readString("AltaUsua"),
            DetaTifa = nfoGovReader1.readString("DetaTifa"),
            EsFacilidad = nfoGovReader1.readBool("EsFacilidad"),
            EstaDefa = nfoGovReader1.readString("EstaDefa"),
            AltaFehoApre = nfoGovReader1.readDateTime("AltaFehoApre"),
            AltaFehoFaci = nfoGovReader1.readDateTime("AltaFehoFaci")
          });
      }
      nfoGovReader1?.Close();
      stringBuilder.Clear();
      stringBuilder.AppendLine($"SELECT * FROM congelados_deta WHERE CodiOfic = {cuenta1.CodiOfic} AND CuenCtct = {this.sqlString(cuenta1.CuenCtct)};");
      InfoGovReader nfoGovReader2 = this.conn.executeReader(stringBuilder.ToString());
      if (nfoGovReader2.HasRows)
      {
        while (nfoGovReader2.Read())
          congeladoDetaMpList.Add(new CongeladoDetaMP()
          {
            CodiOfic = nfoGovReader2.readShort("CodiOfic"),
            CuenCtct = nfoGovReader2.readString("CuenCtct"),
            NumeCong = nfoGovReader2.readShort("NumeCong"),
            PeriCtct = nfoGovReader2.readShort("PeriCtct"),
            BimeCtct = nfoGovReader2.readShort("BimeCtct"),
            NumeCtct = nfoGovReader2.readLong("NumeCtct"),
            MoviCtct = nfoGovReader2.readShort("MoviCtct"),
            NumeApre = nfoGovReader2.readInt("NumeApre"),
            CodiFapa = nfoGovReader2.readLong("CodiFapa"),
            CuotDefa = nfoGovReader2.readShort("CuotDefa")
          });
      }
      nfoGovReader2?.Close();
    }
    if (cuenta.SoloDeuda)
    {
      foreach (CongeladoDetaMP congeladoDetaMp in congeladoDetaMpList)
      {
        if (congeladoDetaMp.NumeApre > 0)
          congApremio.Add((congeladoDetaMp.CodiOfic, congeladoDetaMp.CuenCtct, congeladoDetaMp.NumeApre));
        else if (congeladoDetaMp.CodiFapa > 0L)
          congFaci.Add((congeladoDetaMp.CodiOfic, congeladoDetaMp.CuenCtct, congeladoDetaMp.CodiFapa, congeladoDetaMp.CuotDefa));
        else
          congComun.Add((congeladoDetaMp.CodiOfic, congeladoDetaMp.CuenCtct, congeladoDetaMp.PeriCtct, congeladoDetaMp.BimeCtct, congeladoDetaMp.NumeCtct, congeladoDetaMp.MoviCtct));
      }
      detaCcMaipuList.ForEach((Action<DetaCCMaipu>) (deta =>
      {
        int num = deta.NumeApre <= 0 ? 0 : (deta.CodiFapa > 0 ? 1 : 0);
        deta.Tipo = num == 0 ? (deta.NumeApre <= 0 ? (deta.CodiFapa <= 0 ? TipoResumenMP.Comun : TipoResumenMP.Facilidad) : TipoResumenMP.Apremio) : (!(deta.AltaFehoApre >= deta.AltaFehoFaci) ? TipoResumenMP.Facilidad : TipoResumenMP.Apremio);
        bool flag = false;
        switch (deta.Tipo)
        {
          case TipoResumenMP.Comun:
            flag = congComun.Contains((deta.CodiOfic, deta.CuenCtct, deta.PeriCtct, deta.BimeCtct, deta.NumeCtct, deta.MoviCtct));
            break;
          case TipoResumenMP.Apremio:
            flag = congApremio.Contains((deta.CodiOfic, deta.CuenCtct, deta.NumeApre));
            break;
          case TipoResumenMP.Facilidad:
            flag = congFaci.Contains((deta.CodiOfic, deta.CuenCtct, (long) deta.CodiFapa, deta.CuotDefa));
            break;
        }
        if (flag)
        {
          if (deudaPara != ExpCCMaipu.DeudaPara.CuentaCorriente)
            return;
          deta.RecaCtct = 0M;
          deta.Congelado = true;
        }
        deta.TotaCtct += deta.RecaCtct;
        switch (deta.Tipo)
        {
          case TipoResumenMP.Comun:
            if (!lista.Exists((Predicate<CCMaipu>) (x => x.Tipo == TipoResumenMP.Comun && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic)))
              lista.Add(new CCMaipu()
              {
                CodiOfic = deta.CodiOfic,
                DetaOfic = deta.DetaOfic,
                CuenCtct = deta.CuenCtct,
                Detalle = "Saldo de Deuda Original",
                Tipo = TipoResumenMP.Comun
              });
            CCMaipu ccMaipu1 = lista.First<CCMaipu>((Func<CCMaipu, bool>) (x => x.Tipo == TipoResumenMP.Comun && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic));
            if (ccMaipu1 == null)
              break;
            ccMaipu1.Detalles.Add(deta);
            ccMaipu1.Saldo += deta.SaldCtct;
            ccMaipu1.Recargo += deta.RecaCtct;
            ccMaipu1.Total += deta.TotaCtct;
            break;
          case TipoResumenMP.Apremio:
            if (!lista.Exists((Predicate<CCMaipu>) (x => x.Tipo == TipoResumenMP.Apremio && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic)))
              lista.Add(new CCMaipu()
              {
                CodiOfic = deta.CodiOfic,
                DetaOfic = deta.DetaOfic,
                CuenCtct = deta.CuenCtct,
                Detalle = "Saldo de Apremio",
                Tipo = TipoResumenMP.Apremio
              });
            CCMaipu ccMaipu2 = lista.First<CCMaipu>((Func<CCMaipu, bool>) (x => x.Tipo == TipoResumenMP.Apremio && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic));
            if (ccMaipu2 == null)
              break;
            deta.DebeCtct = deta.SaldCtct + deta.RecaApre;
            ccMaipu2.Detalles.Add(deta);
            ccMaipu2.Saldo += deta.SaldCtct + deta.RecaApre;
            ccMaipu2.Recargo += deta.RecaCtct;
            ccMaipu2.Total += deta.TotaCtct;
            break;
          case TipoResumenMP.Facilidad:
            if (!lista.Exists((Predicate<CCMaipu>) (x => x.Tipo == TipoResumenMP.Facilidad && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic)))
              lista.Add(new CCMaipu()
              {
                CodiOfic = deta.CodiOfic,
                DetaOfic = deta.DetaOfic,
                CuenCtct = deta.CuenCtct,
                Detalle = "Saldo de Facilidad",
                Tipo = TipoResumenMP.Facilidad
              });
            CCMaipu ccMaipu3 = lista.First<CCMaipu>((Func<CCMaipu, bool>) (x => x.Tipo == TipoResumenMP.Facilidad && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic));
            if (ccMaipu3 == null)
              break;
            ccMaipu3.Detalles.Add(deta);
            ccMaipu3.Saldo += deta.SaldCtct;
            ccMaipu3.Recargo += deta.RecaCtct;
            ccMaipu3.Total += deta.TotaCtct;
            break;
          default:
            throw new Exception("Tipo de deuda no identificado.");
        }
      }));
    }
    else
      detaCcMaipuList.ForEach((Action<DetaCCMaipu>) (deta =>
      {
        if (deta.EsFacilidad)
        {
          deta.Tipo = TipoResumenMP.Facilidad;
          if (!lista.Exists((Predicate<CCMaipu>) (x => x.Tipo == TipoResumenMP.Facilidad && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic)))
            lista.Add(new CCMaipu()
            {
              CodiOfic = deta.CodiOfic,
              DetaOfic = deta.DetaOfic,
              CuenCtct = deta.CuenCtct,
              Detalle = "Saldo de Facilidad",
              Tipo = TipoResumenMP.Facilidad
            });
          CCMaipu ccMaipu = lista.First<CCMaipu>((Func<CCMaipu, bool>) (x => x.Tipo == TipoResumenMP.Facilidad && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic));
          if (ccMaipu == null)
            return;
          ccMaipu.Detalles.Add(deta);
          ccMaipu.Saldo += deta.SaldCtct;
          ccMaipu.Recargo += deta.RecaCtct;
          ccMaipu.Total += deta.TotaCtct;
        }
        else
        {
          deta.Tipo = TipoResumenMP.Historico;
          if (!lista.Exists((Predicate<CCMaipu>) (x => x.Tipo == TipoResumenMP.Historico && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic)))
            lista.Add(new CCMaipu()
            {
              CodiOfic = deta.CodiOfic,
              DetaOfic = deta.DetaOfic,
              CuenCtct = deta.CuenCtct,
              Detalle = "Saldo Historico",
              Tipo = TipoResumenMP.Historico
            });
          CCMaipu ccMaipu = lista.First<CCMaipu>((Func<CCMaipu, bool>) (x => x.Tipo == TipoResumenMP.Historico && x.CuenCtct == deta.CuenCtct && (int) x.CodiOfic == (int) deta.CodiOfic));
          if (ccMaipu != null)
          {
            ccMaipu.Detalles.Add(deta);
            ccMaipu.Saldo += deta.SaldCtct;
            ccMaipu.Recargo += deta.RecaCtct;
            ccMaipu.Total += deta.TotaCtct;
          }
        }
      }));
    CCMaipu ccMaipu4 = lista.FirstOrDefault<CCMaipu>((Func<CCMaipu, bool>) (x => x.Tipo == TipoResumenMP.Facilidad));
    if (ccMaipu4 == null)
      return;
    ccMaipu4.Detalles = ccMaipu4.Detalles.OrderBy<DetaCCMaipu, int>((Func<DetaCCMaipu, int>) (d => d.CodiFapa)).ThenBy<DetaCCMaipu, short>((Func<DetaCCMaipu, short>) (d => d.CuotDefa)).ToList<DetaCCMaipu>();
  }

  private string ObtenerDeuda(CtaCte cuenta)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.conn.executeNonQuery($"CALL `fnDeuda`('{cuenta.CodiOfic}', '{cuenta.CuenCtct}', {this.sqlDate(cuenta.FeveCtct, false)});");
    stringBuilder.AppendLine("SELECT tmp.*, CONCAT(tmp.PeriCtct,'/',LPAD(tmp.BimeCtct,2,'0')) PeriBimestre, CONCAT(tmp.PeriBole,'-',tmp.NumeBole) PeriNumeBole, IFNULL(c.DetaConc,'Sin Concepto') DetaConc, IFNULL(tm.DetaTimo,'Sin Tipo Mov.') DetaTimo");
    stringBuilder.AppendLine($", IF (tmp.NumeApre > 0, IF(tmp.CodiFapa > 0, CONCAT(tmp.ExpeCtct, IF(tmp.ExpeCtct IS NOT NULL AND tmp.ExpeCtct != '', ' - ',''),'N° Facilidad Apremiada: ',tmp.CodiFapa), CONCAT(tmp.ExpeCtct, IF(tmp.ExpeCtct IS NOT NULL AND tmp.ExpeCtct != '', ' - ',''),'DEUDA DE {cuenta.DetaOfic} APREMIADA')),tmp.ExpeCtct) ExpeCtctCombinado, IFNULL(df.EstaDefa, '---') EstaDefa, IFNULL(a.CapiApre, 0.00) CapiApre, IFNULL(a.RecaApre, 0.00) RecaApre, IFNULL(ofic.DetaOfic, 'SIN OFICINA') DetaOfic, a.AltaFeho AltaFehoApre, fp.AltaFeho AltaFehoFaci");
    stringBuilder.AppendLine(", 0 ApreCtct");
    stringBuilder.AppendLine(", '' DetaTifa, 0 EsFacilidad");
    stringBuilder.AppendLine("FROM tmp_ctacteboleto tmp");
    stringBuilder.AppendLine("LEFT JOIN concepto c ON c.PeriInfo = tmp.PeriInfo AND c.CodiConc = tmp.CodiConc");
    stringBuilder.AppendLine("LEFT JOIN tipomovi tm ON tm.CodiTimo = tmp.CodiTimo");
    stringBuilder.AppendLine("LEFT JOIN detafapa df ON df.CodiFapa = tmp.CodiFapa AND df.CuotDefa = tmp.CuotDefa");
    stringBuilder.AppendLine("LEFT JOIN apremio a ON a.NumeApre = tmp.NumeApre");
    stringBuilder.AppendLine("LEFT JOIN instapre ia ON ia.NumeApre = a.NumeApre AND ia.CodiInju = a.CodiInju");
    stringBuilder.AppendLine("LEFT JOIN oficina ofic ON ofic.CodiOfic = tmp.CodiOfic");
    stringBuilder.AppendLine("LEFT JOIN facipago fp ON fp.CodiFapa = tmp.CodiFapa");
    stringBuilder.AppendLine("GROUP BY tmp.CuenCtct, tmp.PeriCtct, tmp.NumeCtct, tmp.MoviCtct");
    stringBuilder.AppendLine("ORDER BY tmp.PeriCtct, tmp.BimeCtct, tmp.MoviCtct, tmp.NumeCtct;");
    return stringBuilder.ToString();
  }

  private string ObtenerMovimientosHistoricos(CtaCte cuenta)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("#MOVIMIENTOS HISTORICOS DE LA CTACTE");
    stringBuilder.AppendLine($"SET @CuenCtct := {this.sqlString(cuenta.CuenCtct)};");
    stringBuilder.AppendLine($"SET @FeveCtct := {this.sqlString(cuenta.FeveCtct.ToString("yyyy/MM/dd"))};");
    stringBuilder.AppendLine($"SET @CodiOfic := {cuenta.CodiOfic};");
    stringBuilder.AppendLine("DROP TEMPORARY TABLE IF EXISTS tmp_ctacte_saldos;");
    stringBuilder.AppendLine("CREATE TEMPORARY TABLE tmp_ctacte_saldos (");
    stringBuilder.AppendLine("`SaldCtct` decimal(10,2) NOT NULL default '0.00',");
    stringBuilder.AppendLine("`RecaCtct` decimal(10,2) NOT NULL default '0.00',");
    stringBuilder.AppendLine("`CodiOfic` tinyint(2) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`CuenCtct` char(11) NOT NULL default '',");
    stringBuilder.AppendLine("`PeriCtct` year(4) NOT NULL default '0000',");
    stringBuilder.AppendLine("`NumeCtct` int(10) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`MoviCtct` smallint(3) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`PeriBole` year(4) NOT NULL default '0000',");
    stringBuilder.AppendLine("`NumeBole` int(8) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`BimeCtct` smallint(3) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`FealCtct` date default NULL,");
    stringBuilder.AppendLine("`FeveCtct` date default NULL,");
    stringBuilder.AppendLine("`FeenAcpa` date default NULL,");
    stringBuilder.AppendLine("`NumeAcpa` smallint(4) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`PeriInfo` year(4) NOT NULL default '0000', ");
    stringBuilder.AppendLine("`CodiConc` char(8) NOT NULL default '', ");
    stringBuilder.AppendLine("`CodiFapa` int(8) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`CuotDefa` smallint(4) unsigned NOT NULL default '0', ");
    stringBuilder.AppendLine("`NumeApre` int(8) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`CodiTimo` tinyint(2) unsigned NOT NULL default '0', ");
    stringBuilder.AppendLine("`ExpeCtct` char(15) NOT NULL default '',");
    stringBuilder.AppendLine("`DetaCtct` CHAR(200) NOT NULL default '', ");
    stringBuilder.AppendLine("`SufaCtct` int(8) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`NufaCtct` int(8) unsigned NOT NULL default '0',");
    stringBuilder.AppendLine("`DebeCtct` decimal(10,2) NOT NULL default '0.00',");
    stringBuilder.AppendLine("`CredCtct` decimal(10,2) NOT NULL default '0.00', ");
    stringBuilder.AppendLine("`AltaUsua` char(15) NOT NULL default '',");
    stringBuilder.AppendLine("`ApdeCtct` bool NOT NULL default TRUE,");
    stringBuilder.AppendLine("`EsFacilidad` bool NOT NULL default FALSE, #REVISAR EN EL CODIGO CUANDO SEA FACILIDAD POR SI LOS BIMESTRES TRAEN UN CODIFAPA");
    stringBuilder.AppendLine("PRIMARY KEY  (`CodiOfic`,`CuenCtct`,`PeriCtct`,`BimeCtct`,`NumeCtct`,`MoviCtct`));");
    stringBuilder.AppendLine("# =====> CALCULO EL INTERES A TODOS LOS REGISTROS AUNQUE SEA 0 <====");
    stringBuilder.AppendLine("SELECT IFNULL(MAX(PorcInte),0) INTO @PorcInte FROM interes;");
    stringBuilder.AppendLine("INSERT INTO tmp_ctacte_saldos (SaldCtct,RecaCtct,CodiOfic,CuenCtct,PeriCtct,NumeCtct,MoviCtct, PeriBole,NumeBole,BimeCtct,FealCtct,FeveCtct,FeenAcpa,NumeAcpa,PeriInfo,CodiConc,CodiFapa,CuotDefa,NumeApre,CodiTimo,ExpeCtct,DetaCtct,SufaCtct,NufaCtct,DebeCtct,CredCtct,AltaUsua, ApdeCtct)");
    stringBuilder.AppendLine("SELECT (SUM(DebeCtct)-SUM(CredCtct)) AS SaldCtct,");
    stringBuilder.AppendLine("IF(FeveCtct >= '2014-07-01', fnCalculoIntNuevos(FeveCtct, @FeveCtct, SUM(DebeCtct)-SUM(CredCtct), @PorcInte), fnCalculoIntViejos(FeveCtct, @FeveCtct, SUM(DebeCtct)-SUM(CredCtct))) as RecaCtct,");
    stringBuilder.AppendLine("CodiOfic, CuenCtct, PeriCtct, NumeCtct, MoviCtct, PeriBole, NumeBole, BimeCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, DetaCtct, SufaCtct, NufaCtct, DebeCtct, CredCtct, AltaUsua, TRUE ApdeCtct");
    stringBuilder.AppendLine("FROM ctacte ");
    stringBuilder.AppendLine("WHERE CodiOfic = @CodiOfic AND CuenCtct = @CuenCtct");
    stringBuilder.AppendLine("GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct;");
    stringBuilder.AppendLine("# =====> CALCULO EL INTERES A TODOS LOS REGISTROS AUNQUE SEA 0 <====");
    stringBuilder.AppendLine("# =====> TRAIGO TODOS LOS REGISTROS DE LA CTACTE Y LE APLICO EL INTERES DE SALDO SOLO A LOS QUE CORRESPONDEN <====");
    stringBuilder.AppendLine("DROP TEMPORARY TABLE IF EXISTS tmp_ctacte_historica;");
    stringBuilder.AppendLine("CREATE TEMPORARY TABLE tmp_ctacte_historica");
    stringBuilder.AppendLine("SELECT 0 SaldCtct, 0 RecaCtct, h.*, FALSE ApdeCtct, FALSE EsFacilidad");
    stringBuilder.AppendLine("FROM recahisto.histoctacte h");
    stringBuilder.AppendLine("WHERE h.CodiOfic = @CodiOfic AND h.CuenCtct = @CuenCtct");
    stringBuilder.AppendLine("UNION ALL");
    stringBuilder.AppendLine("SELECT IF(ct.MoviCtct = 1, tmp.SaldCtct, 0) SaldCtct, IF(ct.MoviCtct = 1, tmp.RecaCtct, 0) RecaCtct, ct.*, tmp.ApdeCtct, tmp.Esfacilidad");
    stringBuilder.AppendLine("FROM ctacte ct");
    stringBuilder.AppendLine("INNER JOIN tmp_ctacte_saldos tmp ON tmp.CodiOfic = ct.CodiOfic AND tmp.CuenCtct = ct.CuenCtct AND tmp.PeriCtct = ct.PeriCtct AND tmp.BimeCtct = ct.BimeCtct AND tmp.NumeCtct = ct.NumeCtct");
    stringBuilder.AppendLine("ORDER BY PeriCtct, BimeCtct, NumeCtct, MoviCtct;");
    stringBuilder.AppendLine("# =====> TRAIGO TODOS LOS REGISTROS DE LA CTACTE Y LE APLICO EL INTERES DE SALDO SOLO A LOS QUE CORRESPONDEN <====");
    stringBuilder.AppendLine("# =====> BUSCO LAS FACILIDADES DE LA CUENTA <====");
    stringBuilder.AppendLine("INSERT INTO tmp_ctacte_historica (SaldCtct,RecaCtct,CodiOfic,CuenCtct,PeriCtct,NumeCtct,MoviCtct, PeriBole,NumeBole,BimeCtct,FealCtct,FeveCtct,FeenAcpa,NumeAcpa,PeriInfo,CodiConc,CodiFapa,CuotDefa,NumeApre,CodiTimo,ExpeCtct,DetaCtct,SufaCtct,NufaCtct,DebeCtct,CredCtct,AltaUsua, ApdeCtct, EsFacilidad)");
    stringBuilder.AppendLine("SELECT IF (fp.EstaFapa = 'Activa' AND df.EstaDefa = 'Emitida', df.TotaDefa, 0) SaldCtct, IF (fp.EstaFapa = 'Activa' AND df.EstaDefa = 'Emitida', IF (FeveDefa >= '2014-07-01', fnCalculoIntNuevos(FeveDefa, @FeveCtct, TotaDefa, @PorcInte),");
    stringBuilder.AppendLine("fnCalculoIntViejos(FeveDefa, @FeveCtct, TotaDefa)), 0) AS RecaCtct,");
    stringBuilder.AppendLine("fp.CodiOfic, fp.CuenCtct, YEAR(CURRENT_DATE) PeriCtct, fp.CodiFapa NumeCtct, df.CuotDefa MoviCtct, 0 PeriBole, 0 NumeBole, df.CuotDefa BimeCtct, fp.FealFapa FealCtct, df.FeveDefa FeveCtct, NULL FeenAcpa, 0 NumeAcpa, fp.PeriInfo, fp.CodiConc, fp.CodiFapa, df.CuotDefa, 0 NumeApre, 1 CodiTimo, CONCAT('Cuota: ',df.CuotDefa,'/',fp.CacuFapa) ExpeCtct, '' DetaCtct, 0 SufaCtct, 0 NufaCtct, IF (fp.EstaFapa = 'Activa' AND df.EstaDefa = 'Emitida', SUM(df.TotaDefa),0) DebeCtct, 0 CredCtct, fp.AltaUsua, TRUE ApdeCtct, TRUE EsFacilidad");
    stringBuilder.AppendLine("FROM facipago fp");
    stringBuilder.AppendLine("INNER JOIN detafapa df ON df.CodiFapa = fp.CodiFapa");
    stringBuilder.AppendLine("WHERE fp.CodiOfic = @CodiOfic AND fp.CuenCtct = @CuenCtct");
    stringBuilder.AppendLine("GROUP BY df.CodiFapa, df.CuotDefa");
    stringBuilder.AppendLine("ORDER BY df.CodiFapa, df.CuotDefa;");
    stringBuilder.AppendLine("# =====> BUSCO LAS FACILIDADES DE LA CUENTA <====");
    stringBuilder.AppendLine("#LE COLOCO UN INDICE PARA QUE FUNCIONE MEJOR");
    stringBuilder.AppendLine("ALTER TABLE tmp_ctacte_historica");
    stringBuilder.AppendLine("ADD INDEX idx_concepto (PeriInfo, CodiConc),");
    stringBuilder.AppendLine("ADD INDEX idx_tipomovi (CodiTimo),");
    stringBuilder.AppendLine("ADD INDEX idx_facilidad (CodiFapa);");
    stringBuilder.AppendLine("#TRAIGO LOS RESULTADOS");
    stringBuilder.AppendLine("SELECT tmp.*, CONCAT(tmp.PeriCtct,'/',LPAD(tmp.BimeCtct,2,'0')) PeriBimestre, CONCAT(tmp.PeriBole,'-',tmp.NumeBole) PeriNumeBole, IFNULL(c.DetaConc,'Sin Concepto') DetaConc, IFNULL(tm.DetaTimo,'Sin Tipo Mov.') DetaTimo, IFNULL(tf.DetaTifa, 'Sin Detalle Facilidad') DetaTifa, IFNULL(df.EstaDefa,'---') EstaDefa, IFNULL(a.CapiApre, 0.00) CapiApre, IFNULL(a.RecaApre, 0.00) RecaApre, IFNULL(ofic.DetaOfic, 'SIN OFICINA') DetaOfic");
    stringBuilder.AppendLine(", tmp.ExpeCtct ExpeCtctCombinado");
    stringBuilder.AppendLine(", a.AltaFeho AltaFehoApre, fp.AltaFeho AltaFehoFaci");
    stringBuilder.AppendLine(", 0 ApreCtct");
    stringBuilder.AppendLine("FROM tmp_ctacte_historica tmp");
    stringBuilder.AppendLine("LEFT JOIN concepto c ON c.PeriInfo = tmp.PeriInfo AND c.CodiConc = tmp.CodiConc");
    stringBuilder.AppendLine("LEFT JOIN tipomovi tm ON tm.CodiTimo = tmp.CodiTimo");
    stringBuilder.AppendLine("LEFT JOIN facipago fp ON fp.CodiFapa = tmp.CodiFapa");
    stringBuilder.AppendLine("LEFT JOIN tipofapa tf ON tf.CodiTifa = fp.CodiTifa");
    stringBuilder.AppendLine("LEFT JOIN detafapa df ON df.CodiFapa = tmp.CodiFapa AND df.CuotDefa = tmp.CuotDefa");
    stringBuilder.AppendLine("LEFT JOIN apremio a ON a.NumeApre = tmp.NumeApre");
    stringBuilder.AppendLine("LEFT JOIN oficina ofic ON ofic.CodiOfic = tmp.CodiOfic;");
    return stringBuilder.ToString();
  }

  public void BuscarCuentasAsociadas(List<CtaCte> lista, CtaCte cuenta)
  {
    StringBuilder stringBuilder = new StringBuilder();
    switch (cuenta.CodiOfic)
    {
      case 1:
        stringBuilder.AppendLine($"SET @CucuTitu := (SELECT CucuPers FROM inmueble WHERE CodiInmu = {cuenta.CuenCtct});");
        break;
      case 2:
        stringBuilder.AppendLine($"SET @CucuTitu := (SELECT CucuPers FROM comercio WHERE CodiCome = {cuenta.CuenCtct});");
        break;
      case 3:
        stringBuilder.AppendLine($"SET @CucuTitu := (SELECT CucuPers FROM deudvari WHERE CodiDeva = {cuenta.CuenCtct});");
        break;
      case 4:
        stringBuilder.AppendLine($"SET @CucuTitu := (SELECT CucuPers FROM difunto WHERE CodiDifu = {cuenta.CuenCtct});");
        break;
      case 5:
        stringBuilder.AppendLine($"SET @CucuTitu := (SELECT CucuPers FROM transito WHERE CodiTran = {cuenta.CuenCtct});");
        break;
      case 6:
        stringBuilder.AppendLine($"SET @CucuTitu := (SELECT CucuPers FROM publicidad WHERE CodiCome = {cuenta.CuenCtct});");
        break;
      case 7:
        stringBuilder.AppendLine($"SET @CucuTitu := (SELECT CucuPers FROM antena WHERE CodiCome = {cuenta.CuenCtct});");
        break;
      case 99:
        stringBuilder.AppendLine($"SET @CucuTitu := {cuenta.CuenCtct};");
        break;
      default:
        stringBuilder.AppendLine("SET @CucuTitu := 0;");
        break;
    }
    if (cuenta.CodiOfic == (short) 99)
      stringBuilder.AppendLine("SELECT CodiOfic, CuenCtct FROM relacion WHERE CucuPers = @CucuTitu AND FebaRela IS NULL AND BajaFeho IS NULL GROUP BY CodiOfic, CuenCtct;");
    else
      stringBuilder.AppendLine($"SELECT CodiOfic, CuenCtct FROM relacion WHERE CucuPers = @CucuTitu AND FebaRela IS NULL AND BajaFeho IS NULL AND CuenCtct != {this.sqlString(cuenta.CuenCtct)} GROUP BY CodiOfic, CuenCtct;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        lista.Add(new CtaCte()
        {
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          DetaOfic = cuenta.DetaOfic,
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          FeveCtct = cuenta.FeveCtct,
          SoloDeuda = cuenta.SoloDeuda,
          Existe = cuenta.Existe
        });
    }
    nfoGovReader?.Close();
  }

  public enum DeudaPara
  {
    CuentaCorriente,
    EmisionBoleto,
    PlanPago,
  }
}
