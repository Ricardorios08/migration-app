// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpAforoComeSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpAforoComeSM : Expert
{
  public ExpAforoComeSM()
    : base(Modulo.Database)
  {
  }

  public List<AforoComeSM> ObtenerListadoAfco(string serviciosUtilizados)
  {
    List<AforoComeSM> aforoComeSmList = new List<AforoComeSM>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT sa.*, c.TiafConc FROM servafco sa");
    stringBuilder.AppendLine("INNER JOIN concepto c ON c.PeriInfo = sa.PeriOrde AND c.CodiConc = sa.CodiConc");
    stringBuilder.AppendLine($"WHERE sa.PeriOrde = {Misc.Now().Year} AND c.IngrConc != '' AND c.ActiConc != '' AND c.TiafConc != 0 AND c.TipaConc != 0");
    if (!string.IsNullOrEmpty(serviciosUtilizados))
      stringBuilder.AppendLine($"AND sa.CodiSeac NOT IN ({serviciosUtilizados})");
    stringBuilder.AppendLine("ORDER BY sa.CodiSeac;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        aforoComeSmList.Add(new AforoComeSM()
        {
          PeriOrde = nfoGovReader.readInt("PeriOrde"),
          CodiSeac = nfoGovReader.readInt("CodiSeac"),
          DetaSeac = nfoGovReader.readString("DetaSeac"),
          CodiConc = nfoGovReader.readString("CodiConc"),
          ValoSeac = nfoGovReader.readDecimal("ValoSeac"),
          UnmeSeac = nfoGovReader.readString("UnmeSeac"),
          ImprSeac = nfoGovReader.readBool("ImprSeac"),
          VariSeac = nfoGovReader.readBool("VariSeac"),
          TiafConc = nfoGovReader.readInt("TiafConc")
        });
    }
    nfoGovReader?.Close();
    return aforoComeSmList;
  }

  public List<DetaCuentaCome> ObtenerDetallesCuenta(int Cuenta, DateTime FechaVen)
  {
    List<DetaCuentaCome> detaCuentaComeList1 = new List<DetaCuentaCome>();
    StringBuilder stringBuilder = new StringBuilder();
    this.conn.executeNonQuery($"CALL fnDeuda('2', '{Cuenta}', {this.sqlDate(FechaVen, false)});");
    stringBuilder.AppendLine("SELECT tmp.*, IFNULL(tm.DetaTimo,'') DetaTimo");
    stringBuilder.AppendLine("FROM tmp_ctacteboleto tmp");
    stringBuilder.AppendLine("LEFT JOIN tipomovi tm ON tmp.CodiTimo = tm.CodiTimo;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        List<DetaCuentaCome> detaCuentaComeList2 = detaCuentaComeList1;
        DetaCuentaCome detaCuentaCome = new DetaCuentaCome();
        detaCuentaCome.Oficina = nfoGovReader.readShort("CodiOfic");
        detaCuentaCome.Cuenta = nfoGovReader.readString("CuenCtct");
        int num = nfoGovReader.readInt("BimeCtct");
        string str1 = num.ToString();
        num = nfoGovReader.readInt("PeriCtct");
        string str2 = num.ToString();
        detaCuentaCome.Periodo = $"{str1}/{str2}";
        num = nfoGovReader.readInt("NumeBole");
        string str3 = num.ToString();
        num = nfoGovReader.readInt("PeriBole");
        string str4 = num.ToString();
        detaCuentaCome.Boleto = $"{str3}-{str4}";
        detaCuentaCome.FechaEmision = nfoGovReader.readDateTime("FealCtct");
        detaCuentaCome.FechaVencimiento = nfoGovReader.readDateTime("FeveCtct");
        detaCuentaCome.Concepto = nfoGovReader.readString("CodiConc");
        detaCuentaCome.Facilidad = nfoGovReader.readInt("CodiFapa");
        detaCuentaCome.Apremio = nfoGovReader.readInt("NumeApre");
        detaCuentaCome.ExpeComp = nfoGovReader.readString("ExpeCtct");
        detaCuentaCome.TipoMovi = nfoGovReader.readString("DetaTimo");
        detaCuentaCome.Debito = nfoGovReader.readDecimal("DebeCtct");
        detaCuentaCome.Recargo = nfoGovReader.readDecimal("RecaCtct");
        detaCuentaCome.Saldo = nfoGovReader.readDecimal("SaldCtct");
        detaCuentaComeList2.Add(detaCuentaCome);
      }
    }
    nfoGovReader?.Close();
    return detaCuentaComeList1;
  }

  public Decimal ImporteUT(DateTime fecha)
  {
    return this.conn.executeDecimal($"SELECT IFNULL(ValorUt,1) FROM UT WHERE {this.sqlDate(fecha, false)} >= FechDesde AND {this.sqlDate(fecha, false)} <= IFNULL(FechHasta,'2999-12-31') LIMIT 1;");
  }

  public bool CargarAforo(DTOCargaAforo carga)
  {
    StringBuilder sql = new StringBuilder();
    List<DTOAforo> aforosCtacte = new List<DTOAforo>();
    carga.aforos.ForEach((Action<DTOAforo>) (x =>
    {
      if (!aforosCtacte.Exists((Predicate<DTOAforo>) (a => a.Periodo == x.Periodo && a.Concepto == x.Concepto)))
        aforosCtacte.Add(new DTOAforo()
        {
          Cantidad = x.Cantidad,
          Codigo = x.Codigo,
          Detalle = x.Detalle,
          Valor = x.Valor,
          UnidadMedida = x.UnidadMedida,
          Total = x.Total,
          Periodo = x.Periodo,
          Concepto = x.Concepto,
          TipoAforo = x.TipoAforo
        });
      else
        aforosCtacte.Find((Predicate<DTOAforo>) (a => a.Periodo == x.Periodo && a.Concepto == x.Concepto)).Total += x.Total;
    }));
    aforosCtacte.ForEach((Action<DTOAforo>) (x =>
    {
      long NumeCtct = this.conn.executeLong($"SELECT `fnNuevoNumeCtct`({carga.Periodo});");
      sql.AppendLine("INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua)");
      sql.AppendLine($"VALUES (2, {this.sqlString(carga.CodiCome.ToString())}, {carga.Periodo}, {carga.Bimestre}, {NumeCtct}, 1, 0, 0, 0, 0, 'Aforos Varios', NOW(), {this.sqlDate(carga.FeveAforo, false)}, NULL, 0, {x.Periodo}, {this.sqlString(x.Concepto)}, 0, 0, 0, {x.TipoAforo}, {this.sqlString(carga.ExpeAforo)}, '', {this.sqlString(carga.DetaAforo)}, {this.sqlDecimal(x.Total)}, 0, {this.sqlString(this.usuario)});");
      carga.aforos.Where<DTOAforo>((Func<DTOAforo, bool>) (w => w.Periodo == x.Periodo && w.Concepto == x.Concepto)).ToList<DTOAforo>().ForEach((Action<DTOAforo>) (c =>
      {
        int num = this.conn.executeInt($"SELECT `fnNuevoNumeCtde`(2, '{carga.CodiCome}', YEAR(NOW()), MONTH(NOW()), {NumeCtct}, 1, {c.Periodo}, {c.Codigo});");
        sql.AppendLine("INSERT INTO ctactedeta (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, PeriOrde, CodiCtde, NumeCtde, MoviCtde, FealCtde, CodiTimo, DebeCtde, CredCtde)");
        sql.AppendLine($"VALUES (2, {this.sqlString(carga.CodiCome.ToString())}, {carga.Periodo}, {carga.Bimestre}, {NumeCtct}, 1, {c.Periodo}, {c.Codigo}, {num}, 1, NOW(), {c.TipoAforo}, {this.sqlDecimal(c.Total)}, 0);");
      }));
    }));
    return this.conn.executeNonQuery(sql.ToString());
  }
}
