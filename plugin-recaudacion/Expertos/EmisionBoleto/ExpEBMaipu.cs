// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.EmisionBoleto.ExpEBMaipu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Utils;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Entidades.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Reportes.Maipu.ConsultaBoleto;
using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using ZXing;
using ZXing.Common;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.EmisionBoleto;

public class ExpEBMaipu : Expert
{
  private ExpCCMaipu expCC = new ExpCCMaipu();
  private DateTime hoy;

  public ExpEBMaipu()
    : base(Modulo.Database)
  {
    this.hoy = Misc.Now();
  }

  public DateTime CalcularFechaVencimiento(DateTime fechaBase, short diasHabiles)
  {
    List<DateTime> feriados = new List<DateTime>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM personal3.feriado WHERE FechFeri >=" + this.sqlDate(fechaBase, false));
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        feriados.Add(nfoGovReader.readDateTime("FechFeri"));
    }
    nfoGovReader?.Close();
    return DateHelper.CalcularFechaVencimiento(fechaBase, diasHabiles, feriados);
  }

  public IDatosBoleto ObtenerDatosBoleto(short CodiOfic, string CuenCtct)
  {
    EBMaipu ebMaipu = new EBMaipu();
    StringBuilder stringBuilder = new StringBuilder();
    switch (CodiOfic)
    {
      case 1:
        stringBuilder.AppendLine("SELECT i.CodiInmu, i.PadrInmu, i.MeedInmu, i.MecuInmu, i.MebaInmu, CONCAT(LPAD(DptoInmu, 2, '0'), '-', LPAD(DistInmu, 2, '0'), '-', LPAD(SeccInmu, 2, '0'), '-', LPAD(ManzInmu, 4, '0'), '-', LPAD(ParcInmu, 6, '0'), '-', LPAD(SubpInmu, 4, '0'), '-', DigiInmu) NomeInmu, IFNULL(ci.DetaClin,'SIN DETALLE') DetaClin, IFNULL(ti.DetaTiin,'SIN DETALLE') DetaTiin, IFNULL(cate.DetaCate,'SIN DETALLE') DetaCate");
        stringBuilder.AppendLine("FROM inmueble i");
        stringBuilder.AppendLine("LEFT JOIN claseinmueble ci ON ci.CodiClin = i.CodiClin");
        stringBuilder.AppendLine("LEFT JOIN tipoinmu ti ON ti.CodiTiin = i.CodiTiin");
        stringBuilder.AppendLine("LEFT JOIN cateinmu cate ON cate.CodiCate = i.CodiCate");
        stringBuilder.AppendLine("WHERE i.CodiInmu = " + CuenCtct);
        stringBuilder.AppendLine("GROUP BY i.CodiInmu;");
        break;
      case 2:
        stringBuilder.AppendLine("SELECT NOW();");
        break;
      case 3:
        stringBuilder.AppendLine("SELECT NOW();");
        break;
      case 4:
        stringBuilder.AppendLine("SELECT NOW();");
        break;
      case 5:
        stringBuilder.AppendLine("SELECT NOW();");
        break;
      case 6:
        stringBuilder.AppendLine("SELECT NOW();");
        break;
      case 7:
        stringBuilder.AppendLine("SELECT NOW();");
        break;
    }
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      switch (CodiOfic)
      {
        case 1:
          while (nfoGovReader.Read())
          {
            ebMaipu.DatosInmueble.CodiInmu = nfoGovReader.readInt("CodiInmu");
            ebMaipu.DatosInmueble.NomeInmu = nfoGovReader.readString("NomeInmu");
            ebMaipu.DatosInmueble.PadrInmu = nfoGovReader.readString("PadrInmu");
            ebMaipu.DatosInmueble.MeedInmu = nfoGovReader.readDecimal("MeedInmu");
            ebMaipu.DatosInmueble.MecuInmu = nfoGovReader.readDecimal("MecuInmu");
            ebMaipu.DatosInmueble.MebaInmu = nfoGovReader.readDecimal("MebaInmu");
            ebMaipu.DatosInmueble.DetaClin = nfoGovReader.readString("DetaClin");
            ebMaipu.DatosInmueble.DetaTiin = nfoGovReader.readString("DetaTiin");
            ebMaipu.DatosInmueble.DetaCate = nfoGovReader.readString("DetaCate");
          }
          break;
      }
    }
    nfoGovReader?.Close();
    return (IDatosBoleto) ebMaipu;
  }

  public bool EmisionBoletoHabilitado()
  {
    return this.conn.executeInt("SELECT COUNT(*) FROM parabole WHERE CodiPara = 'HabEmiBole' AND ParaPara = '1';") == 1;
  }

  public string ComprobarMovimientosDeuda(DTOEmiBole dto)
  {
    List<CCMaipu> lista = new List<CCMaipu>();
    CtaCte cuenta = dto.DatosCuenta.GenerarNuevaInstancia();
    this.expCC.BuscarDeuda(lista, cuenta, ExpCCMaipu.DeudaPara.EmisionBoleto);
    List<CCMaipu> list = dto.DeudaSeleccionada.Cast<CCMaipu>().ToList<CCMaipu>();
    if (list == null || list.Count == 0 || list.SelectMany<CCMaipu, DetaCCMaipu>((Func<CCMaipu, IEnumerable<DetaCCMaipu>>) (s => (IEnumerable<DetaCCMaipu>) s.Detalles ?? Enumerable.Empty<DetaCCMaipu>())).Count<DetaCCMaipu>() == 0)
      return "No se selecciono deuda. Verificar...";
    HashSet<DetaCCMaipu> detaCcMaipuSet = new HashSet<DetaCCMaipu>((IEqualityComparer<DetaCCMaipu>) new ExpEBMaipu.DetaComparer());
    foreach (CCMaipu ccMaipu in lista)
    {
      if (ccMaipu?.Detalles != null)
      {
        foreach (DetaCCMaipu detalle in ccMaipu.Detalles)
          detaCcMaipuSet.Add(detalle);
      }
    }
    foreach (CCMaipu ccMaipu in list)
    {
      if (ccMaipu?.Detalles != null && (ccMaipu == null || ccMaipu.Detalles.Count<DetaCCMaipu>() != 0))
      {
        foreach (DetaCCMaipu detalle in ccMaipu.Detalles)
        {
          if (!detaCcMaipuSet.Contains(detalle))
            return "Algunos movimientos seleccionados CAMBIARON SU ESTADO. Actualizar busqueda de deuda para comprobar.";
        }
      }
    }
    foreach (CCMaipu ccMaipu in list)
    {
      if (ccMaipu?.Detalles != null && (ccMaipu == null || ccMaipu.Detalles.Count<DetaCCMaipu>() != 0))
      {
        foreach (DetaCCMaipu detalle in ccMaipu.Detalles)
        {
          string str = this.conn.executeString($"SELECT IF(PeriBole IS NULL, '', CONCAT(PeriBole,'/',NumeBole)) FROM detapago FORCE INDEX (idxdetapago01) WHERE CodiOfic = {detalle.CodiOfic} AND CuenCtct = {this.sqlString(detalle.CuenCtct)} AND PeriCtct = {detalle.PeriCtct} AND BimeCtct = {detalle.BimeCtct} AND NumeCtct = {detalle.NumeCtct} AND ActuDepa = 'No';");
          if (!string.IsNullOrWhiteSpace(str))
            return $"El registro {detalle.PeriCtct}/{detalle.BimeCtct} ya tiene un pago registrado con el boleto {str}. Actualizar caja para ver cambios.";
        }
      }
    }
    return string.Empty;
  }

  public void GenerarNuevoBoleto(DTOEmiBole dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    int num1 = this.conn.executeInt($"SELECT `recaudacion`.`fnNumeBole`({this.hoy.Year})");
    List<CCMaipu> list1 = dto.DeudaSeleccionada.Cast<CCMaipu>().ToList<CCMaipu>();
    Decimal num2 = 0M;
    Decimal num3 = 0M;
    Decimal num4 = 0M;
    Decimal num5 = 0M;
    Decimal num6 = 0M;
    Decimal num7 = 0M;
    Decimal num8 = 0M;
    List<string> values = new List<string>();
    Dictionary<(short, int, short, short, long, short), short> dictionary = new Dictionary<(short, int, short, short, long, short), short>();
    List<DetaBoleMP> source = new List<DetaBoleMP>();
    CCMaipu ccMaipu1 = list1 != null ? list1.FirstOrDefault<CCMaipu>((Func<CCMaipu, bool>) (x => x.Tipo == TipoResumenMP.Facilidad)) : (CCMaipu) null;
    if (ccMaipu1?.Detalles != null && ccMaipu1.Detalles.Any<DetaCCMaipu>())
    {
      source = this.DetallesFacilidades(ccMaipu1.Detalles.Select<DetaCCMaipu, CuotasEB>((Func<DetaCCMaipu, CuotasEB>) (d => new CuotasEB()
      {
        CodiFapa = (long) d.CodiFapa,
        CuotDefa = d.CuotDefa
      })).ToList<CuotasEB>());
      HashSet<(long, short)> valueTupleSet = new HashSet<(long, short)>(source.Select<DetaBoleMP, (long, short)>((Func<DetaBoleMP, (long, short)>) (d => (d.CodiFapa, d.CuotDefa))));
      foreach (DetaCCMaipu detalle in ccMaipu1.Detalles)
      {
        if (!valueTupleSet.Contains(((long) detalle.CodiFapa, detalle.CuotDefa)))
          throw new Exception($"No se encontraron los detalles para la facilidad seleccionada. N° Facilidad: {detalle.CodiFapa}, Cuota: {detalle.CuotDefa}");
      }
    }
    foreach (CCMaipu ccMaipu2 in list1)
    {
      if (ccMaipu2.Tipo == TipoResumenMP.Comun)
      {
        foreach (DetaCCMaipu detalle in ccMaipu2.Detalles)
        {
          (short, int, short, short, long, short) key = ((short) this.hoy.Year, num1, detalle.PeriCtct, detalle.BimeCtct, detalle.NumeCtct, detalle.MoviCtct);
          short num9;
          if (!dictionary.TryGetValue(key, out num9))
            num9 = (short) 1;
          else
            ++num9;
          dictionary[key] = num9;
          Decimal num10 = detalle.SaldCtct - detalle.DescuentoCapital + detalle.RecaCtct + detalle.RecaApre - detalle.DescuentoRecargo;
          num2 += detalle.SaldCtct;
          num3 += detalle.RecaCtct + detalle.RecaApre;
          num4 += detalle.DescuentoCapital;
          num5 += detalle.DescuentoRecargo;
          num8 += num10;
          values.Add($"({this.hoy.Year}, {num1}, {detalle.PeriCtct}, {detalle.BimeCtct}, {detalle.NumeCtct}, {detalle.MoviCtct}, {num9}, {detalle.CodiOfic}, {this.sqlString(detalle.CuenCtct)}, 'Aforos Varios', {detalle.CodiFapa}, {detalle.CuotDefa}, {detalle.NumeApre}, {detalle.CodiTimo}, {detalle.PeriInfo}, {this.sqlString(detalle.CodiConc)}, {this.sqlString(detalle.ExpeCtct)}, {this.sqlString(detalle.DetaCtct)}, {this.sqlDecimal(detalle.SaldCtct)}, {this.sqlDecimal(detalle.DescuentoCapital)}, {this.sqlDecimal(detalle.RecaCtct + detalle.RecaApre)}, {this.sqlDecimal(detalle.DescuentoRecargo)}, 0, 0, 0, 0, {this.sqlDecimal(num10)})");
        }
      }
      else if (ccMaipu2.Tipo == TipoResumenMP.Apremio)
      {
        foreach (DetaCCMaipu detalle in ccMaipu2.Detalles)
        {
          (short, int, short, short, long, short) key = ((short) this.hoy.Year, num1, detalle.PeriCtct, detalle.BimeCtct, detalle.NumeCtct, detalle.MoviCtct);
          short num11;
          if (!dictionary.TryGetValue(key, out num11))
            num11 = (short) 1;
          else
            ++num11;
          dictionary[key] = num11;
          Decimal num12 = detalle.SaldCtct - detalle.DescuentoCapital + detalle.RecaCtct + detalle.RecaApre - detalle.DescuentoRecargo;
          num2 += detalle.SaldCtct;
          num3 += detalle.RecaCtct + detalle.RecaApre;
          num4 += detalle.DescuentoCapital;
          num5 += detalle.DescuentoRecargo;
          num7 += detalle.ApreCtct;
          num8 += num12 + detalle.ApreCtct;
          values.Add($"({this.hoy.Year}, {num1}, {detalle.PeriCtct}, {detalle.BimeCtct}, {detalle.NumeCtct}, {detalle.MoviCtct}, {num11}, {detalle.CodiOfic}, {this.sqlString(detalle.CuenCtct)}, 'Aforos Varios', {detalle.CodiFapa}, {detalle.CuotDefa}, {detalle.NumeApre}, {detalle.CodiTimo}, {detalle.PeriInfo}, {this.sqlString(detalle.CodiConc)}, {this.sqlString(detalle.ExpeCtct)}, {this.sqlString(detalle.DetaCtct)}, {this.sqlDecimal(detalle.SaldCtct)}, {this.sqlDecimal(detalle.DescuentoCapital)}, {this.sqlDecimal(detalle.RecaCtct + detalle.RecaApre)}, {this.sqlDecimal(detalle.DescuentoRecargo)}, 0, 0, 0, 0, {this.sqlDecimal(num12)})");
        }
      }
      else if (ccMaipu2.Tipo == TipoResumenMP.Facilidad)
      {
        foreach (DetaCCMaipu detalle1 in ccMaipu2.Detalles)
        {
          DetaCCMaipu detalle = detalle1;
          List<DetaBoleMP> list2 = source.Where<DetaBoleMP>((Func<DetaBoleMP, bool>) (d => d.CodiFapa == (long) detalle.CodiFapa && (int) d.CuotDefa == (int) detalle.CuotDefa)).ToList<DetaBoleMP>();
          if (list2 == null || list2.Count == 0)
            throw new Exception($"No se encontraron los detalles para la facilidad seleccionada. N° Facilidad: {detalle.CodiFapa}, Cuota: {detalle.CuotDefa}");
          num7 += detalle.ApreCtct;
          bool flag = true;
          foreach (DetaBoleMP detaBoleMp in list2)
          {
            (short, int, short, short, long, short) key = ((short) this.hoy.Year, num1, detaBoleMp.PeriCtct, detaBoleMp.BimeCtct, detaBoleMp.NumeCtct, detaBoleMp.MoviCtct);
            short num13;
            if (!dictionary.TryGetValue(key, out num13))
              num13 = (short) 1;
            else
              ++num13;
            dictionary[key] = num13;
            Decimal totaDebo = detaBoleMp.TotaDebo;
            Decimal recaDebo = detaBoleMp.RecaDebo;
            if (flag)
            {
              totaDebo += detalle.RecaCtct;
              recaDebo += detalle.RecaCtct;
              flag = false;
            }
            num2 += detaBoleMp.CapiDebo;
            num3 += recaDebo;
            num4 += detaBoleMp.DecaDebo;
            num5 += detaBoleMp.DereDebo;
            num6 += detaBoleMp.InteDebo;
            num8 += totaDebo;
            values.Add($"({this.hoy.Year}, {num1}, {detaBoleMp.PeriCtct}, {detaBoleMp.BimeCtct}, {detaBoleMp.NumeCtct}, {detaBoleMp.MoviCtct}, {num13}, {detaBoleMp.CodiOfic}, {this.sqlString(detaBoleMp.CuenCtct)}, 'Aforos Varios', {detaBoleMp.CodiFapa}, {detaBoleMp.CuotDefa}, {detaBoleMp.NumeApre}, {detaBoleMp.CodiTimo}, {detaBoleMp.PeriInfo}, {this.sqlString(detaBoleMp.CodiConc)}, {this.sqlString(detaBoleMp.ExpeCtct)}, {this.sqlString(detaBoleMp.ObseDebo)}, {this.sqlDecimal(detaBoleMp.CapiDebo)}, {this.sqlDecimal(detaBoleMp.DecaDebo)}, {this.sqlDecimal(recaDebo)}, {this.sqlDecimal(detaBoleMp.DereDebo)}, {this.sqlDecimal(detaBoleMp.InteDebo)}, 0, 0, 0, {this.sqlDecimal(totaDebo)})");
          }
        }
      }
    }
    if (values.Count > 0)
    {
      DateTime dateTime = dto.DatosCuenta.FeveCtctBole == DateTime.MinValue ? dto.DatosCuenta.FeveCtct : dto.DatosCuenta.FeveCtctBole;
      stringBuilder.AppendLine("INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, CodiFapa, CuotDefa, ObseBole, CapiBole, RecaBole, DecaBole, DereBole, InteBole, ExenBole, CrafBole, ApreBole, TotaBole, CodiUsua)");
      stringBuilder.AppendLine($"VALUES({this.hoy.Year}, {num1}, {dto.DatosCuenta.CodiOfic}, {this.sqlString(dto.DatosCuenta.CuenCtct)}, {dto.DatosCuenta.CucuPers}, {this.sqlDate(this.hoy, false)}, {this.sqlDate(dateTime, false)}, 1, 'Ventanilla', 'Emitido', 0, 0, '', {this.sqlDecimal(num2)}, {this.sqlDecimal(num3)}, {this.sqlDecimal(num4)}, {this.sqlDecimal(num5)}, {this.sqlDecimal(num6)}, 0, 0, {this.sqlDecimal(num7)}, {this.sqlDecimal(num8)}, {this.sqlString(this.usuario)});");
      stringBuilder.AppendLine("INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, CodiFapa, CuotDefa, NumeApre, CodiTimo, PeriInfo, CodiConc, ExpeCtct, ObseDebo, CapiDebo, DecaDebo, RecaDebo, DereDebo, InteDebo, ExenDebo, CrafDebo, ApreDebo, TotaDebo)");
      stringBuilder.AppendLine("VALUES");
      stringBuilder.AppendLine(string.Join("," + Environment.NewLine, (IEnumerable<string>) values));
      stringBuilder.AppendLine(";");
    }
    if (!this.conn.executeNonQuery(stringBuilder.ToString()))
      return;
    dto.NewNumeBole = $"{this.hoy.Year.ToString()}/{num1.ToString()}";
  }

  private List<DetaBoleMP> DetallesFacilidades(List<CuotasEB> cuotas)
  {
    List<DetaBoleMP> detaBoleMpList = new List<DetaBoleMP>();
    if (cuotas == null || cuotas.Count == 0)
      return detaBoleMpList;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT cc.PeriCtct, cc.BimeCtct, cc.NumeCtct, cc.MoviCtct, cc.CodiOfic, cc.CuenCtct, 'Aforos Varios' TipoCtct, df.CodiFapa, df.CuotDefa, cc.NumeApre, cc.CodiTimo, cc.PeriInfo, cc.CodiConc, cc.ExpeCtct, cc.DetaCtct, fcta.SaldFacc, df.DecaDefa, df.RecaDefa, df.DereDefa, df.InteDefa");
    stringBuilder.AppendLine("FROM detafapa df");
    stringBuilder.AppendLine("INNER JOIN facipago fp ON fp.CodiFapa = df.CodiFapa AND fp.EstaFapa = 'Activa'");
    stringBuilder.AppendLine("INNER JOIN facictacte fcta ON fcta.CodiFapa = fp.CodiFapa AND fcta.CuotDefa = df.CuotDefa AND fcta.SaldFacc > 0");
    stringBuilder.AppendLine("INNER JOIN ctacte cc ON cc.CodiOfic = fcta.CodiOfic AND cc.CuenCtct = fcta.CuenCtct AND cc.PeriCtct = fcta.PeriCtct AND cc.BimeCtct = fcta.BimeCtct AND cc.NumeCtct = fcta.NumeCtct AND cc.MoviCtct = fcta.MoviCtct");
    stringBuilder.AppendLine("WHERE df.EstaDefa = 'Emitida'");
    stringBuilder.AppendLine("AND (");
    for (int index = 0; index < cuotas.Count; ++index)
    {
      CuotasEB cuota = cuotas[index];
      if (index > 0)
        stringBuilder.AppendLine("OR");
      stringBuilder.AppendLine($"(df.CodiFapa = {cuota.CodiFapa} AND df.CuotDefa = {cuota.CuotDefa})");
    }
    stringBuilder.AppendLine(")");
    stringBuilder.AppendLine("ORDER BY df.CodiFapa, df.CuotDefa, cc.PeriCtct, cc.BimeCtct, cc.NumeCtct, cc.MoviCtct;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    HashSet<(long, short)> valueTupleSet = new HashSet<(long, short)>();
    Dictionary<(long, short), Decimal> dictionary = new Dictionary<(long, short), Decimal>();
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DetaBoleMP detaBoleMp = new DetaBoleMP()
        {
          PeriCtct = nfoGovReader.readShort("PeriCtct"),
          BimeCtct = nfoGovReader.readShort("BimeCtct"),
          NumeCtct = nfoGovReader.readLong("NumeCtct"),
          MoviCtct = nfoGovReader.readShort("MoviCtct"),
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          TipoCtct = nfoGovReader.readString("TipoCtct"),
          CodiFapa = nfoGovReader.readLong("CodiFapa"),
          CuotDefa = nfoGovReader.readShort("CuotDefa"),
          NumeApre = nfoGovReader.readLong("NumeApre"),
          CodiTimo = nfoGovReader.readShort("CodiTimo"),
          PeriInfo = nfoGovReader.readShort("PeriInfo"),
          CodiConc = nfoGovReader.readString("CodiConc"),
          ExpeCtct = nfoGovReader.readString("ExpeCtct"),
          ObseDebo = nfoGovReader.readString("DetaCtct"),
          CapiDebo = nfoGovReader.readDecimal("SaldFacc"),
          DecaDebo = nfoGovReader.readDecimal("DecaDefa"),
          RecaDebo = nfoGovReader.readDecimal("RecaDefa"),
          DereDebo = nfoGovReader.readDecimal("DereDefa"),
          InteDebo = nfoGovReader.readDecimal("InteDefa")
        };
        (long, short) key = (detaBoleMp.CodiFapa, detaBoleMp.CuotDefa);
        if (valueTupleSet.Contains(key))
        {
          detaBoleMp.RecaDebo = 0M;
          detaBoleMp.DereDebo = 0M;
          detaBoleMp.InteDebo = 0M;
        }
        else
          valueTupleSet.Add(key);
        Decimal decaDebo;
        if (!dictionary.TryGetValue(key, out decaDebo))
          decaDebo = detaBoleMp.DecaDebo;
        if (decaDebo > 0M && detaBoleMp.CapiDebo > 0M)
        {
          Decimal num = Math.Min(detaBoleMp.CapiDebo, decaDebo);
          detaBoleMp.DecaDebo = num;
          decaDebo -= num;
        }
        else
          detaBoleMp.DecaDebo = 0M;
        dictionary[key] = decaDebo;
        detaBoleMp.TotaDebo = detaBoleMp.CapiDebo - detaBoleMp.DecaDebo + detaBoleMp.RecaDebo - detaBoleMp.DereDebo + detaBoleMp.InteDebo;
        detaBoleMpList.Add(detaBoleMp);
      }
    }
    nfoGovReader?.Close();
    return detaBoleMpList;
  }

  public bool ExisteBoleto(int PeriBole, long NumeBole)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM boleto WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};") == 1;
  }

  public string GenerarReporteConsultaBoleto(int PeriBole, long NumeBole)
  {
    string empty = string.Empty;
    return new RepCBMP().ArmarHTMLConsultaBoleto(this.BuscarDatosBoleto(PeriBole, NumeBole));
  }

  private DTOConsultaBoletoMP BuscarDatosBoleto(int PeriBole, long NumeBole)
  {
    DTOConsultaBoletoMP consultaBoletoMp = new DTOConsultaBoletoMP();
    InfoGovReader nfoGovReader1 = this.conn.executeReader($"SELECT CodiOfic, TipoBole FROM boleto WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
    if (nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
      {
        consultaBoletoMp.CodiOfic = nfoGovReader1.readShort("CodiOfic");
        consultaBoletoMp.TipoBole = nfoGovReader1.readString("TipoBole");
      }
    }
    nfoGovReader1?.Close();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT b.PeriBole, b.NumeBole, b.CodiOfic, b.CuenCtct, IFNULL(o.DetaOfic,'---') DetaOfic, b.CucuPers, IFNULL(p.DetaPers, 'Sin Detalle') DetaPers, b.FealBole, b.FeveBole, b.CodiEnre, IFNULL(er.DetaEnre, '---') DetaEnre, b.TipoBole, b.EstaBole, b.CodiFapa, b.CuotDefa, b.ObseBole, b.ExpeBole, b.CapiBole, b.RecaBole, b.DecaBole, b.DereBole, b.InteBole, b.ExenBole, b.CrafBole, b.ApreBole, b.TotaBole, b.CodiUsua CodiUsuaBole, b.AltaFeho AltaFehoBole, pag.FeenAcpa, pag.NumeAcpa, pag.FeacPago, pag.FealPago, pag.FepaPago, IFNULL(pag.AltaUsua,'') AltaUsuaPago");
    if (consultaBoletoMp.TipoBole == "Online" && consultaBoletoMp.CodiOfic == (short) 3)
      stringBuilder.AppendLine(", IFNULL(pw.DirecPewe,'---') DomiBole");
    else if (consultaBoletoMp.CodiOfic == (short) 3 || consultaBoletoMp.CodiOfic == (short) 5)
      stringBuilder.AppendLine(", IF(p.CucuPers IS NULL, 'Sin Datos Domicilio', CONCAT(p.DecrPers, ' N° ', p.NumePers, ' | Manz/Casa: ', p.ManzPers, ' | Piso: ', p.PisoPers, ' | Lote: ', p.LotePers, ' | Depto ', p.DptoPers)) DomiBole");
    else
      stringBuilder.AppendLine(", `fnDomiCuenCtct`(b.CodiOfic, b.CuenCtct, '1') DomiBole");
    stringBuilder.AppendLine("FROM boleto b");
    stringBuilder.AppendLine("LEFT JOIN oficina o ON o.CodiOfic = b.CodiOfic");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = b.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN infogov.entereca er ON er.CodiEnre = b.CodiEnre");
    stringBuilder.AppendLine("LEFT JOIN pago pag ON pag.PeriBole = b.PeriBole AND pag.NumeBole = b.NumeBole");
    if (consultaBoletoMp.TipoBole == "Online" && consultaBoletoMp.CodiOfic == (short) 3)
      stringBuilder.AppendLine("LEFT JOIN personaweb pw ON pw.PeriInfo = b.PeriBole AND pw.NumeBole = b.NumeBole");
    stringBuilder.AppendLine($"WHERE b.PeriBole = {PeriBole} AND b.NumeBole = {NumeBole};");
    InfoGovReader nfoGovReader2 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader2.HasRows)
    {
      while (nfoGovReader2.Read())
      {
        consultaBoletoMp.PeriBole = (int) nfoGovReader2.readShort(nameof (PeriBole));
        consultaBoletoMp.NumeBole = nfoGovReader2.readLong(nameof (NumeBole));
        consultaBoletoMp.CodiOfic = nfoGovReader2.readShort("CodiOfic");
        consultaBoletoMp.DetaOfic = nfoGovReader2.readString("DetaOfic");
        consultaBoletoMp.CuenCtct = nfoGovReader2.readString("CuenCtct");
        consultaBoletoMp.CucuPers = nfoGovReader2.readLong("CucuPers");
        consultaBoletoMp.DetaPers = nfoGovReader2.readString("DetaPers");
        consultaBoletoMp.DomiBole = nfoGovReader2.readString("DomiBole");
        consultaBoletoMp.FealBole = nfoGovReader2.readDateTime("FealBole");
        consultaBoletoMp.FeveBole = nfoGovReader2.readDateTime("FeveBole");
        consultaBoletoMp.CodiEnre = nfoGovReader2.readShort("CodiEnre");
        consultaBoletoMp.DetaEnre = nfoGovReader2.readString("DetaEnre");
        consultaBoletoMp.TipoBole = nfoGovReader2.readString("TipoBole");
        consultaBoletoMp.EstaBole = nfoGovReader2.readString("EstaBole");
        consultaBoletoMp.CodiFapa = nfoGovReader2.readLong("CodiFapa");
        consultaBoletoMp.CuotDefa = nfoGovReader2.readShort("CuotDefa");
        consultaBoletoMp.ObseBole = nfoGovReader2.readString("ObseBole");
        consultaBoletoMp.ExpeBole = nfoGovReader2.readString("ExpeBole");
        consultaBoletoMp.CapiBole = nfoGovReader2.readDecimal("CapiBole");
        consultaBoletoMp.RecaBole = nfoGovReader2.readDecimal("RecaBole");
        consultaBoletoMp.DecaBole = nfoGovReader2.readDecimal("DecaBole");
        consultaBoletoMp.DereBole = nfoGovReader2.readDecimal("DereBole");
        consultaBoletoMp.InteBole = nfoGovReader2.readDecimal("InteBole");
        consultaBoletoMp.ExenBole = nfoGovReader2.readDecimal("ExenBole");
        consultaBoletoMp.CrafBole = nfoGovReader2.readDecimal("CrafBole");
        consultaBoletoMp.ApreBole = nfoGovReader2.readDecimal("ApreBole");
        consultaBoletoMp.TotaBole = nfoGovReader2.readDecimal("TotaBole");
        consultaBoletoMp.CodiUsuaBole = nfoGovReader2.readString("CodiUsuaBole");
        consultaBoletoMp.AltaFehoBole = nfoGovReader2.readDateTime("AltaFehoBole");
        consultaBoletoMp.FeenAcpa = nfoGovReader2.readDateTime("FeenAcpa");
        consultaBoletoMp.NumeAcpa = nfoGovReader2.readShort("NumeAcpa");
        consultaBoletoMp.FeacPago = nfoGovReader2.readDateTime("FeacPago");
        consultaBoletoMp.FealPago = nfoGovReader2.readDateTime("FealPago");
        consultaBoletoMp.FepaPago = nfoGovReader2.readDateTime("FepaPago");
        consultaBoletoMp.AltaUsuaPago = nfoGovReader2.readString("AltaUsuaPago");
      }
    }
    nfoGovReader2?.Close();
    stringBuilder.Clear();
    if (consultaBoletoMp.CodiOfic == (short) 3)
    {
      stringBuilder.AppendLine("SELECT dd.PeriBole, dd.NumeBole, dd.PeriOrde, dd.CodiSede, SUM(dd.CantDede) CantDede, SUM(dd.PrunDede) PrunDede, SUM(dd.SubtDede) SubtDede, SUM(dd.DescDede) DescDede, SUM(dd.TotaDede) TotaDede, IFNULL(sd.DetaSede, 'Sin Detalle') DetaSede");
      stringBuilder.AppendLine("FROM devadeta dd");
      stringBuilder.AppendLine("LEFT JOIN servdeva sd ON sd.PeriOrde = dd.PeriOrde AND sd.CodiSede = dd.CodiSede");
      stringBuilder.AppendLine($"WHERE dd.PeriBole = {PeriBole} AND dd.NumeBole = {NumeBole}");
      stringBuilder.AppendLine("GROUP BY dd.PeriOrde, dd.CodiSede");
      stringBuilder.AppendLine("ORDER BY dd.PeriOrde, dd.CodiSede;");
      InfoGovReader nfoGovReader3 = this.conn.executeReader(stringBuilder.ToString());
      if (nfoGovReader3.HasRows)
      {
        while (nfoGovReader3.Read())
          consultaBoletoMp.Servicios.Add(new DTOServiciosVariosMP()
          {
            PeriBole = nfoGovReader3.readShort(nameof (PeriBole)),
            NumeBole = nfoGovReader3.readInt(nameof (NumeBole)),
            PeriOrde = nfoGovReader3.readShort("PeriOrde"),
            CodiSede = (long) nfoGovReader3.readShort("CodiSede"),
            DetaSede = nfoGovReader3.readString("DetaSede"),
            CantDede = nfoGovReader3.readDecimal("CantDede"),
            PrunDede = nfoGovReader3.readDecimal("PrunDede"),
            SubtDede = nfoGovReader3.readDecimal("SubtDede"),
            DescDede = nfoGovReader3.readDecimal("DescDede"),
            TotaDede = nfoGovReader3.readDecimal("TotaDede")
          });
      }
      nfoGovReader3?.Close();
    }
    else
    {
      stringBuilder.AppendLine("SELECT db.PeriBole, db.NumeBole, db.PeriCtct, db.BimeCtct, db.PeriInfo, db.CodiConc, IFNULL(c.DetaConc, 'Sin Detalle Concepto') DetaConc, db.CodiFapa, db.CuotDefa, SUM(db.CapiDebo) CapiDebo, SUM(db.DecaDebo) DecaDebo, SUM(db.RecaDebo) RecaDebo, SUM(db.DereDebo) DereDebo, SUM(db.InteDebo) InteDebo, SUM(db.ApreDebo) ApreDebo, SUM(db.TotaDebo) TotaDebo");
      stringBuilder.AppendLine("FROM detabole db");
      stringBuilder.AppendLine("LEFT JOIN concepto c ON c.PeriInfo = db.PeriInfo AND c.CodiConc = db.CodiConc");
      stringBuilder.AppendLine($"WHERE db.PeriBole = {PeriBole} AND db.NumeBole = {NumeBole}");
      stringBuilder.AppendLine("GROUP BY db.PeriCtct, db.BimeCtct, db.CodiConc, db.CodiFapa, db.CuotDefa");
      stringBuilder.AppendLine("ORDER BY db.PeriCtct, db.BimeCtct;");
      InfoGovReader nfoGovReader4 = this.conn.executeReader(stringBuilder.ToString());
      if (nfoGovReader4.HasRows)
      {
        while (nfoGovReader4.Read())
          consultaBoletoMp.Detalles.Add(new DTODetaBoleMP()
          {
            PeriBole = nfoGovReader4.readShort(nameof (PeriBole)),
            NumeBole = nfoGovReader4.readInt(nameof (NumeBole)),
            PeriCtct = nfoGovReader4.readShort("PeriCtct"),
            BimeCtct = nfoGovReader4.readShort("BimeCtct"),
            CodiFapa = nfoGovReader4.readLong("CodiFapa"),
            CuotDefa = nfoGovReader4.readShort("CuotDefa"),
            PeriInfo = nfoGovReader4.readShort("PeriInfo"),
            CodiConc = nfoGovReader4.readString("CodiConc"),
            DetaConc = nfoGovReader4.readString("DetaConc"),
            CapiDebo = nfoGovReader4.readDecimal("CapiDebo"),
            DecaDebo = nfoGovReader4.readDecimal("DecaDebo"),
            RecaDebo = nfoGovReader4.readDecimal("RecaDebo"),
            DereDebo = nfoGovReader4.readDecimal("DereDebo"),
            InteDebo = nfoGovReader4.readDecimal("InteDebo"),
            ApreDebo = nfoGovReader4.readDecimal("ApreDebo"),
            TotaDebo = nfoGovReader4.readDecimal("TotaDebo")
          });
      }
      nfoGovReader4?.Close();
    }
    return consultaBoletoMp;
  }

  public Tuple<string, string> GenerarCodigosBarras(
    string boleto,
    DateTime fechaVencimiento,
    Decimal importe,
    ExpEBMaipu.TipoCodigoBarras tipo)
  {
    string str1 = "9";
    string str2 = boleto.PadLeft(13, '0');
    string str3 = fechaVencimiento.ToString("ddMMyy");
    string str4 = "564";
    string str5;
    if (tipo == ExpEBMaipu.TipoCodigoBarras.BoletoComun)
    {
      str5 = "002";
    }
    else
    {
      if (tipo != ExpEBMaipu.TipoCodigoBarras.PlanPago)
        throw new Exception("Tipo de código de barras no reconocido.");
      str5 = "117";
    }
    string codigo1 = str4 + str1 + str2 + str5 + str3;
    string str6 = this.FormatearImporte(importe);
    string str7 = fechaVencimiento.ToString("ddMMyy");
    string str8 = str6 + str7 + str6;
    string str9 = this.CalcularDigitoVerificador(codigo1 + str8);
    string codigo2 = str8 + str9;
    return Tuple.Create<string, string>(this.GenerarImagenCodigoBarras(codigo1), this.GenerarImagenCodigoBarras(codigo2));
  }

  private string FormatearImporte(Decimal importe)
  {
    return ((int) (importe * 100M)).ToString().PadLeft(9, '0');
  }

  private string CalcularDigitoVerificador(string codigo)
  {
    int[] numArray = new int[5]{ 11, 13, 17, 19, 23 };
    int index1 = 0;
    int index2 = 49;
    int num1 = 0;
    string str1 = codigo.PadLeft(50, '0');
    while (index2 >= 0)
    {
      int num2 = numArray[index1];
      char c = str1[index2];
      if (char.IsDigit(c))
      {
        int num3 = ((int) c - 48 /*0x30*/) * num2;
        num1 += num3;
      }
      --index2;
      index1 = (index1 + 1) % 5;
    }
    string str2 = num1.ToString().PadLeft(3, '0');
    int num4 = int.Parse(str2.Substring(0, 2));
    string str3 = Math.Abs(int.Parse(str2.Substring(2)) - num4).ToString();
    return str3.Length > 2 ? str3.Substring(str3.Length - 2) : str3.PadLeft(2, '0');
  }

  private string GenerarImagenCodigoBarras(string codigo)
  {
    try
    {
      BarcodeWriter barcodeWriter = new BarcodeWriter();
      ((BarcodeWriterGeneric) barcodeWriter).Format = (BarcodeFormat) 16 /*0x10*/;
      ((BarcodeWriterGeneric) barcodeWriter).Options = new EncodingOptions()
      {
        Width = 375,
        Height = 60,
        Margin = 7,
        PureBarcode = false
      };
      using (Bitmap bitmap = ((BarcodeWriter<Bitmap>) barcodeWriter).Write(codigo))
        return this.ConvertirImagenABase64(bitmap);
    }
    catch (Exception ex)
    {
      throw new Exception($"Error generando código de barras '{codigo}': {ex.Message}", ex);
    }
  }

  private string ConvertirImagenABase64(Bitmap bitmap)
  {
    using (MemoryStream memoryStream = new MemoryStream())
    {
      bitmap.Save((Stream) memoryStream, ImageFormat.Png);
      return "data:image/png;base64," + Convert.ToBase64String(memoryStream.ToArray());
    }
  }

  private class DetaComparer : IEqualityComparer<DetaCCMaipu>
  {
    public bool Equals(DetaCCMaipu x, DetaCCMaipu y)
    {
      if (x == y)
        return true;
      return x != null && y != null && (int) x.CodiOfic == (int) y.CodiOfic && x.CuenCtct == y.CuenCtct && (int) x.PeriCtct == (int) y.PeriCtct && (int) x.BimeCtct == (int) y.BimeCtct && (int) x.PeriBole == (int) y.PeriBole && x.NumeBole == y.NumeBole && x.CodiFapa == y.CodiFapa && (int) x.CuotDefa == (int) y.CuotDefa && x.NumeApre == y.NumeApre && x.DebeCtct == y.DebeCtct && x.SaldCtct == y.SaldCtct && x.ApreCtct == y.ApreCtct && x.TotaCtct == y.TotaCtct;
    }

    public int GetHashCode(DetaCCMaipu obj)
    {
      if (obj == null)
        return 0;
      int num1 = 17 * 23;
      short num2 = obj.CodiOfic;
      int hashCode1 = num2.GetHashCode();
      int num3 = ((num1 + hashCode1) * 23 + obj.CuenCtct.GetHashCode()) * 23;
      num2 = obj.PeriCtct;
      int hashCode2 = num2.GetHashCode();
      int num4 = (num3 + hashCode2) * 23;
      num2 = obj.BimeCtct;
      int hashCode3 = num2.GetHashCode();
      int num5 = (num4 + hashCode3) * 23;
      num2 = obj.PeriBole;
      int hashCode4 = num2.GetHashCode();
      int num6 = (((num5 + hashCode4) * 23 + obj.NumeBole.GetHashCode()) * 23 + obj.CodiFapa.GetHashCode()) * 23;
      num2 = obj.CuotDefa;
      int hashCode5 = num2.GetHashCode();
      return (((((num6 + hashCode5) * 23 + obj.NumeApre.GetHashCode()) * 23 + obj.DebeCtct.GetHashCode()) * 23 + obj.SaldCtct.GetHashCode()) * 23 + obj.ApreCtct.GetHashCode()) * 23 + obj.TotaCtct.GetHashCode();
    }
  }

  public enum TipoCodigoBarras
  {
    BoletoComun,
    PlanPago,
  }
}
