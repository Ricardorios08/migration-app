// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpIngresoCaja
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpIngresoCaja : Expert
{
  public ExpIngresoCaja()
    : base(Modulo.Database)
  {
  }

  public List<DTOIngresoCaja> ObtenerDetallesIngreso(DateTime FeenAcpa, int NumeAcpa)
  {
    List<DTOIngresoCaja> dtoIngresoCajaList = new List<DTOIngresoCaja>();
    List<MoviCaja> movis = new List<MoviCaja>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT CONCAT(p.CodiUsua,p.AltaUsua) CodiUsua, IFNULL(c.CodiConc,'---') CodiConc, IFNULL(c.DetaConc,'SIN CONCEPTO') DetaConc, SUM(dp.TotaDepa) ImpoIngr, IF(c.IngrConc IS NULL OR c.IngrConc = '', '---', c.IngrConc) IngrConc");
    stringBuilder.AppendLine("FROM pago p");
    stringBuilder.AppendLine("INNER JOIN detapago dp ON dp.PeriBole = p.PeriBole AND dp.NumeBole = p.NumeBole");
    stringBuilder.AppendLine("LEFT JOIN concepto c ON c.PeriInfo = dp.PeriInfo AND c.CodiConc = dp.CodiConc");
    stringBuilder.AppendLine($"WHERE p.FeenAcpa = {this.sqlDate(FeenAcpa, false)} AND p.NumeAcpa = {NumeAcpa}");
    stringBuilder.AppendLine("GROUP BY p.CodiUsua, p.AltaUsua, c.CodiConc;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
      {
        if (!dtoIngresoCajaList.Exists((Predicate<DTOIngresoCaja>) (x => x.CodiUsua == dr.readString("CodiUsua"))))
          dtoIngresoCajaList.Add(new DTOIngresoCaja()
          {
            CodiUsua = dr.readString("CodiUsua")
          });
        movis.Add(new MoviCaja()
        {
          CodiUsua = dr.readString("CodiUsua"),
          CodiConc = dr.readString("CodiConc"),
          DetaConc = dr.readString("DetaConc"),
          ImpoIngr = dr.readDecimal("ImpoIngr"),
          IngrConc = dr.readString("IngrConc")
        });
      }
    }
    if (dr != null)
      dr.Close();
    dtoIngresoCajaList.ForEach((Action<DTOIngresoCaja>) (x => x.Movimientos = movis.Where<MoviCaja>((Func<MoviCaja, bool>) (d => d.CodiUsua == x.CodiUsua)).ToList<MoviCaja>()));
    return dtoIngresoCajaList;
  }
}
