// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpPagosVarios
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Reportes.PagosWeb;
using InfoGov.SQL;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpPagosVarios : Expert
{
  public ExpPagosVarios()
    : base(Modulo.Database)
  {
  }

  public List<DTO_PagosVarios> getRegistroPagosWeb(
    DateTime desde,
    DateTime hasta,
    int[] v_CodiSede)
  {
    string str = "";
    for (int index = 0; index < v_CodiSede.Length; ++index)
      str = str + v_CodiSede[index].ToString() + (index == v_CodiSede.Length - 1 ? "" : ",");
    List<DTO_PagosVarios> registroPagosWeb = new List<DTO_PagosVarios>();
    InfoGovReader nfoGovReader1 = this.conn.executeReader($"SELECT CodiSede,DetaSede FROM servdeva WHERE servdeva.PeriInfo = {PARAMS.Periodo} AND servdeva.CodiSede IN ({str});");
    if (nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
        registroPagosWeb.Add(new DTO_PagosVarios()
        {
          CodiSede = nfoGovReader1.readInt("CodiSede"),
          DetaSede = nfoGovReader1.readString("DetaSede"),
          detalle = new List<DTO_PagosWeb_Detalle>()
        });
    }
    nfoGovReader1.Close();
    InfoGovReader nfoGovReader2 = this.conn.executeReader($"SELECT dd.PeriBole, dd.NumeBole, dd.CodiSede, IF(b.TipoBole = 'Online', pw.CucuPewe, p.CucuPers) AS CucuPers,  IF(b.TipoBole = 'Online', pw.DetaPewe, p.DetaPers) AS DetaPers,  b.EstaBole, \tb.FealBole AS FechBole, b.TipoBole, b.TotaBole \tFROM devadeta dd  INNER JOIN boleto b ON b.PeriBole = dd.PeriBole AND b.NumeBole = dd.NumeBole \tAND b.CodiOfic = 3 AND b.FealBole BETWEEN {this.sqlDate(desde)} AND {this.sqlDate(hasta)}  LEFT JOIN personaweb pw ON pw.PeriInfo = b.PeriBole AND pw.NumeBole = b.NumeBole  LEFT JOIN infogov.persona p ON p.CucuPers = b.CucuPers  LEFT JOIN pagoonline po ON po.PeriBole = b.PeriBole AND po.NumeBole = b.NumeBole WHERE dd.CodiSede IN ({str})  ORDER BY dd.CodiSede, dd.NumeBole ASC; ");
    if (nfoGovReader2.HasRows)
    {
      while (nfoGovReader2.Read())
      {
        int num = nfoGovReader2.readInt("CodiSede");
        foreach (DTO_PagosVarios dtoPagosVarios in registroPagosWeb)
        {
          if (dtoPagosVarios.CodiSede == num)
            dtoPagosVarios.detalle.Add(new DTO_PagosWeb_Detalle()
            {
              PeriBole = nfoGovReader2.readInt("PeriBole"),
              NumeBole = nfoGovReader2.readInt("NumeBole"),
              CucuPers = nfoGovReader2.readString("CucuPers"),
              DetaPers = nfoGovReader2.readString("DetaPers"),
              EstaBole = nfoGovReader2.readString("EstaBole"),
              TipoBole = nfoGovReader2.readString("TipoBole"),
              FechBole = nfoGovReader2.readDateTime("FechBole"),
              TotaBole = nfoGovReader2.readDecimal("TotaBole")
            });
        }
      }
    }
    nfoGovReader2.Close();
    return registroPagosWeb;
  }
}
