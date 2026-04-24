// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.DerechosVarios.ExpDerechoVarioMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Utils;
using InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Expertos.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto.Maipu;
using InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Herencia;
using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.DerechosVarios;

public class ExpDerechoVarioMP : Expert, IExpertoDerechoVario
{
  private readonly ExpConfiguracion _config;

  public ExpDerechoVarioMP()
    : base(Modulo.Database)
  {
    this._config = new ExpConfiguracion(true);
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

  public string GenerarBoleto(IEntidadDerechoVario entidad)
  {
    if (!this._config.ImpresoraActiva(this._config.config.ImprBole))
      return "La impresora se encuentra inactiva.";
    List<SevicioDerechoVarioSeleccionadoMP> seviciosSeleccionados = entidad is DerechoVarioMP derechoVarioMp ? derechoVarioMp.SeviciosSeleccionados : (List<SevicioDerechoVarioSeleccionadoMP>) null;
    if (seviciosSeleccionados == null || seviciosSeleccionados.Count == 0)
      return "No se han seleccionado servicios para generar el boleto.";
    DateTime dateTime = Misc.Now();
    StringBuilder stringBuilder = new StringBuilder();
    Decimal num1 = 0M;
    Decimal num2 = 0M;
    int num3 = this.conn.executeInt($"SELECT `recaudacion`.`fnNumeBole`({dateTime.Year})");
    List<string> values1 = new List<string>();
    List<string> values2 = new List<string>();
    foreach (SevicioDerechoVarioSeleccionadoMP varioSeleccionadoMp in seviciosSeleccionados)
    {
      Decimal num4 = varioSeleccionadoMp.SubtDede - varioSeleccionadoMp.DescDede;
      num1 += num4;
      num2 += num4;
      values1.Add($"({dateTime.Year}, {num3}, {dateTime.Year}, {dateTime.Month}, {seviciosSeleccionados.IndexOf(varioSeleccionadoMp) + 1}, 1, 1, 3, '', 'Aforos Varios', {varioSeleccionadoMp.PeriInfo}, {this.sqlString(varioSeleccionadoMp.CodiConc)}, {this.sqlDecimal(num4)}, {this.sqlDecimal(num4)})");
      values2.Add($"({dateTime.Year}, {num3}, {dateTime.Year}, {dateTime.Month}, {seviciosSeleccionados.IndexOf(varioSeleccionadoMp) + 1}, 1, {varioSeleccionadoMp.PeriOrde}, {varioSeleccionadoMp.CodiSede}, {this.sqlDecimal(varioSeleccionadoMp.CantDede)}, {this.sqlDecimal(varioSeleccionadoMp.PrunDede)}, {this.sqlDecimal(varioSeleccionadoMp.SubtDede)}, {this.sqlDecimal(varioSeleccionadoMp.DescDede)}, {this.sqlDecimal(num4)})");
    }
    if (values1.Count > 0)
    {
      stringBuilder.AppendLine("INSERT INTO boleto (PeriBole, NumeBole, CodiOfic, CuenCtct, CucuPers, FealBole, FeveBole, CodiEnre, TipoBole, EstaBole, ObseBole, CapiBole, TotaBole, CodiUsua)");
      stringBuilder.AppendLine($"VALUES({dateTime.Year}, {num3}, 3, '', {derechoVarioMp.PersonaSeleccionada.CucuPers}, {this.sqlDate(dateTime, false)}, {this.sqlDate(derechoVarioMp.FechBole, false)}, 1, 'Ventanilla', 'Emitido', {this.sqlString(derechoVarioMp.Detalle)}, {this.sqlDecimal(num1)}, {this.sqlDecimal(num2)}, {this.sqlString(this.usuario)});");
      stringBuilder.AppendLine("INSERT INTO detabole (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, MoviDebo, CodiOfic, CuenCtct, TipoCtct, PeriInfo, CodiConc, CapiDebo, TotaDebo)");
      stringBuilder.AppendLine("VALUES");
      stringBuilder.AppendLine(string.Join("," + Environment.NewLine, (IEnumerable<string>) values1));
      stringBuilder.AppendLine(";");
      if (values2.Count > 0)
      {
        stringBuilder.AppendLine("INSERT INTO devadeta (PeriBole, NumeBole, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiSede, CantDede, PrunDede, SubtDede, DescDede, TotaDede)");
        stringBuilder.AppendLine("VALUES");
        stringBuilder.AppendLine(string.Join("," + Environment.NewLine, (IEnumerable<string>) values2));
        stringBuilder.AppendLine(";");
      }
    }
    if (!this.conn.executeNonQuery(stringBuilder.ToString()))
      return "Error al generar el boleto.";
    derechoVarioMp.PeriBole = (short) dateTime.Year;
    derechoVarioMp.NumeBole = num3;
    return string.Empty;
  }

  public string ImprimirBoleto(IEntidadDerechoVario entidad)
  {
    if (!this._config.ImpresoraActiva(this._config.config.ImprBole))
      return "La impresora se encuentra inactiva.";
    if (!(entidad is DerechoVarioMP derechoVarioMp))
      return "Entidad incorrecta.";
    DTOEmiBoleDereVario datos = new DTOEmiBoleDereVario()
    {
      PersonaSeleccionada = derechoVarioMp.PersonaSeleccionada,
      Titulo = "BOLETO DE DERECHOS VARIOS"
    };
    datos.DatosBoleto = new ExpEBMaipu().ObtenerDatosBoleto((short) 3, datos.PersonaSeleccionada.CucuPers.ToString());
    datos.ServiciosSeleccionados = derechoVarioMp.SeviciosSeleccionados.ConvertAll<IReporteBoleto>((Converter<SevicioDerechoVarioSeleccionadoMP, IReporteBoleto>) (x => (IReporteBoleto) x));
    datos.Tipo = TipoEB.ImprimirBoleDereVar;
    datos.FechBole = derechoVarioMp.FechBole;
    datos.TotaBole = derechoVarioMp.SeviciosSeleccionados.Sum<SevicioDerechoVarioSeleccionadoMP>((Func<SevicioDerechoVarioSeleccionadoMP, Decimal>) (s => s.SubtDede));
    datos.Detalle = derechoVarioMp.Detalle;
    datos.ExpeBole = derechoVarioMp.ExpeBole;
    datos.PeriNumeBole = $"{derechoVarioMp.PeriBole}/{derechoVarioMp.NumeBole}";
    string str = string.Empty;
    try
    {
      Print.ImprimirHTML(new RepEBMP().ArmarReporte((IBoleto) datos), this._config.config.ImprBole);
    }
    catch (Exception ex)
    {
      str = ex.Message;
    }
    return str;
  }

  public List<BoletoEmitidoDerechoVarioMP> ObtenerBoletosEmitidos(long CucuPers)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<BoletoEmitidoDerechoVarioMP> emitidoDerechoVarioMpList = new List<BoletoEmitidoDerechoVarioMP>();
    stringBuilder.AppendLine("SELECT b.FealBole, b.PeriBole, b.NumeBole, dd.CodiSede, IFNULL(sd.DetaSede, 'Sin Detalle Encontrado') DetaSede, dd.CantDede, dd.PrunDede, dd.DescDede, dd.TotaDede");
    stringBuilder.AppendLine("FROM boleto b");
    stringBuilder.AppendLine("INNER JOIN devadeta dd ON dd.PeriBole = b.PeriBole AND dd.NumeBole = b.NumeBole");
    stringBuilder.AppendLine("LEFT JOIN servdeva sd ON sd.PeriOrde = dd.PeriOrde AND sd.CodiSede = dd.CodiSede");
    stringBuilder.AppendLine($"WHERE b.CucuPers = {CucuPers}");
    stringBuilder.AppendLine("ORDER BY b.FealBole DESC;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        emitidoDerechoVarioMpList.Add(new BoletoEmitidoDerechoVarioMP()
        {
          FealBole = nfoGovReader.readDateTime("FealBole"),
          PeriBole = nfoGovReader.readShort("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          CodiSede = nfoGovReader.readLong("CodiSede"),
          DetaSede = nfoGovReader.readString("DetaSede"),
          CantDede = nfoGovReader.readDecimal("CantDede"),
          PrunDede = nfoGovReader.readDecimal("PrunDede"),
          DescDede = nfoGovReader.readDecimal("DescDede"),
          TotaDede = nfoGovReader.readDecimal("TotaDede")
        });
    }
    nfoGovReader.Close();
    return emitidoDerechoVarioMpList;
  }

  public void ObtenerServiciosDisponibles(List<ServicioDerechoVarioMP> servicios)
  {
    servicios.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT sd.PeriOrde, sd.CodiSede, sd.DetaSede, sd.CodiDvpa, IFNULL(spa.DetaDvpa,'---') DetaDvpa, sd.PeriInfo, sd.CodiConc, IFNULL(c.DetaConc, 'Sin detalle') DetaConc, sd.VariSede, sd.ImpoSede, sd.CodiTiva, tv.DetaTiva");
    stringBuilder.AppendLine("FROM servdeva sd");
    stringBuilder.AppendLine("LEFT JOIN concepto c ON c.PeriInfo = sd.PeriInfo AND c.CodiConc = sd.CodiConc");
    stringBuilder.AppendLine("INNER JOIN tipovalor tv ON tv.CodiTiva = sd.CodiTiva");
    stringBuilder.AppendLine("LEFT JOIN servdvpa spa ON spa.PeriDvpa = sd.PeriOrde AND spa.CodiDvpa = sd.CodiDvpa");
    stringBuilder.AppendLine("WHERE sd.PeriOrde = YEAR(NOW()) AND sd.CtctSede = '0' AND sd.TranSede = 0");
    stringBuilder.AppendLine("ORDER BY sd.DetaSede;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        servicios.Add(new ServicioDerechoVarioMP()
        {
          PeriOrde = nfoGovReader.readShort("PeriOrde"),
          CodiSede = nfoGovReader.readLong("CodiSede"),
          DetaSede = nfoGovReader.readString("DetaSede"),
          CodiDvpa = nfoGovReader.readLong("CodiDvpa"),
          DetaDvpa = nfoGovReader.readString("DetaDvpa"),
          PeriInfo = nfoGovReader.readShort("PeriInfo"),
          CodiConc = nfoGovReader.readString("CodiConc"),
          DetaConc = nfoGovReader.readString("DetaConc"),
          VariSede = nfoGovReader.readBool("VariSede"),
          ImpoSede = nfoGovReader.readDecimal("ImpoSede"),
          CodiTiva = nfoGovReader.readShort("CodiTiva"),
          DetaTiva = nfoGovReader.readString("DetaTiva")
        });
    }
    nfoGovReader?.Close();
  }

  public void ObtenerCodigosPadre(List<DerechoVarioPadreMP> codigos)
  {
    codigos.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM servdvpa WHERE PeriDvpa = YEAR(NOW());");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        codigos.Add(new DerechoVarioPadreMP()
        {
          PeriDvpa = nfoGovReader.readShort("PeriDvpa"),
          CodiDvpa = nfoGovReader.readLong("CodiDvpa"),
          DetaDvpa = nfoGovReader.readString("DetaDvpa")
        });
    }
    nfoGovReader?.Close();
  }

  public Decimal ObtenerValorUTActual()
  {
    return this.conn.executeDecimal("SELECT IFNULL(p.UntrPage,0) FROM (SELECT YEAR(NOW()) AS PeriOrde) x LEFT JOIN paragene p ON p.PeriOrde = x.PeriOrde;");
  }
}
