// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.AforosDeudoresVarios.ExpAforoDVMG
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios;
using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.Herencia;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos.AforosDeudoresVarios;

public class ExpAforoDVMG : Expert, IExpAforoDV
{
  private readonly ExpConfiguracion _config;

  public ExpAforoDVMG()
    : base(Modulo.Database)
  {
    this._config = new ExpConfiguracion(true);
  }

  public string GenerarAforo(IAforoDeudorVario entidad)
  {
    List<ServicioAforoDVMGSeleccionado> serviciosSeleccionados = entidad is AforoDVMG aforoDvmg ? aforoDvmg.ServiciosSeleccionados : (List<ServicioAforoDVMGSeleccionado>) null;
    if (aforoDvmg == null || serviciosSeleccionados == null || serviciosSeleccionados.Count == 0)
      return "No se han seleccionado servicios para generar el aforo.";
    StringBuilder stringBuilder = new StringBuilder();
    List<string> values = new List<string>();
    int num = this.conn.executeInt("SELECT `fnNumeCtct`(YEAR(NOW()));");
    if (num <= 0)
      return "No se pudo obtener un número de ctacte válido.";
    foreach (ServicioAforoDVMGSeleccionado dvmgSeleccionado in serviciosSeleccionados)
      values.Add($"({aforoDvmg.CodiOfic}, {this.sqlString(aforoDvmg.CuenCtct)}, {aforoDvmg.Periodo}, {aforoDvmg.Bimestre}, {num}, 1, {dvmgSeleccionado.PeriOrde}, {dvmgSeleccionado.CodiSede}, 1, 1, 1, DATE(NOW()), {this.sqlDecimal(dvmgSeleccionado.SubtDede)}, 0)");
    if (values.Count <= 0)
      return "No se pudo generar el aforo en la ctacte.";
    stringBuilder.AppendLine("INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, TipoCtct, FealCtct, FeveCtct, PeriInfo, CodiConc, CodiTimo, ExpeCtct, DetaCtct, DebeCtct, CredCtct, CodiUsua)");
    stringBuilder.AppendLine("VALUES");
    stringBuilder.AppendLine($"({aforoDvmg.CodiOfic}, {this.sqlString(aforoDvmg.CuenCtct)}, {aforoDvmg.Periodo}, {aforoDvmg.Bimestre}, {num}, 1, 'Aforos Varios', DATE(NOW()), {this.sqlDate(aforoDvmg.FechaVencimiento, false)}, {serviciosSeleccionados.First<ServicioAforoDVMGSeleccionado>().PeriInfo}, {this.sqlString(serviciosSeleccionados.First<ServicioAforoDVMGSeleccionado>().CodiConc)}, 1, {this.sqlString(aforoDvmg.Expte)}, 'Aforo Deudores Varios', {this.sqlDecimal(serviciosSeleccionados.Sum<ServicioAforoDVMGSeleccionado>((Func<ServicioAforoDVMGSeleccionado, Decimal>) (s => s.SubtDede)))}, 0, {this.sqlString(this.usuario)});");
    stringBuilder.AppendLine("INSERT INTO ctactedeta (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiCtde, NumeCtde, MoviCtde, CodiTimo, FealCtde, DebeCtde, CredCtde)");
    stringBuilder.AppendLine("VALUES");
    stringBuilder.AppendLine(string.Join("," + Environment.NewLine, (IEnumerable<string>) values));
    stringBuilder.AppendLine(";");
    return this.conn.executeNonQuery(stringBuilder.ToString()) ? string.Empty : "Error al generar el aforo.";
  }

  public string ImprimirBoletoAforo(IAforoDeudorVario entidad) => string.Empty;

  public Decimal ObtenerValorUTActual()
  {
    return this.conn.executeDecimal("SELECT IFNULL(p.UntrPage,0) FROM (SELECT YEAR(NOW()) AS PeriOrde) x LEFT JOIN paragene p ON p.PeriOrde = x.PeriOrde;");
  }

  public Decimal ObtenerValorUVAActual()
  {
    return this.conn.executeDecimal("SELECT IFNULL(p.UvaPage,0) FROM (SELECT YEAR(NOW()) AS PeriOrde) x LEFT JOIN paragene p ON p.PeriOrde = x.PeriOrde;");
  }

  public void ObtenerServiciosDisponibles(List<ServicioAforoDVMG> servicios)
  {
    servicios.Clear();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT sd.PeriOrde, sd.CodiSede, sd.DetaSede, sd.PeriInfo, sd.CodiConc, IFNULL(c.DetaConc, 'Sin detalle') DetaConc, sd.VariSede, sd.ImpoSede");
    stringBuilder.AppendLine("FROM servdeva sd");
    stringBuilder.AppendLine("LEFT JOIN concepto c ON c.PeriInfo = sd.PeriInfo AND c.CodiConc = sd.CodiConc");
    stringBuilder.AppendLine("WHERE sd.PeriOrde = YEAR(NOW()) AND sd.CodiSede IN (38,39,40)");
    stringBuilder.AppendLine("ORDER BY sd.DetaSede;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        servicios.Add(new ServicioAforoDVMG()
        {
          PeriOrde = nfoGovReader.readShort("PeriOrde"),
          CodiSede = nfoGovReader.readLong("CodiSede"),
          DetaSede = nfoGovReader.readString("DetaSede"),
          PeriInfo = nfoGovReader.readShort("PeriInfo"),
          CodiConc = nfoGovReader.readString("CodiConc"),
          DetaConc = nfoGovReader.readString("DetaConc"),
          VariSede = nfoGovReader.readBool("VariSede"),
          ImpoSede = nfoGovReader.readDecimal("ImpoSede")
        });
    }
    nfoGovReader?.Close();
  }
}
