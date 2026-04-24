// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpMultasTransitoGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Reportes.MultasTransitoGuay;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpMultasTransitoGuay : Expert
{
  public ExpMultasTransitoGuay()
    : base(Modulo.Database)
  {
  }

  public List<DTOMultasTransitoGuay> getMultasTransitoGuay(DateTime desde, DateTime hasta)
  {
    List<DTOMultasTransitoGuay> multasTransitoGuay = new List<DTOMultasTransitoGuay>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT concat(boletran.NumeActa, '-', boletran.PeriActa, '-', 'I') Acta, pago.PeriBole, pago.NumeBole,");
    stringBuilder.AppendLine("DetaSede TipoInfraccion, pago.TotaPago Importe, pago.FepaPago");
    stringBuilder.AppendLine("FROM pago");
    stringBuilder.AppendLine("INNER JOIN boletran ON boletran.PeriBole = pago.PeriBole");
    stringBuilder.AppendLine("AND boletran.NumeBole = pago.NumeBole");
    stringBuilder.AppendLine("INNER JOIN servdeva ON servdeva.PeriOrde = boletran.PeriOrde");
    stringBuilder.AppendLine("AND servdeva.CodiSede = boletran.CodiSede");
    stringBuilder.AppendLine($"WHERE pago.FepaPago >= {this.sqlDate(desde, false)} AND pago.FepaPago <= {this.sqlDate(hasta, false)}");
    stringBuilder.AppendLine("AND pago.CodiOfic = 9;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        multasTransitoGuay.Add(new DTOMultasTransitoGuay()
        {
          Acta = nfoGovReader.readString("Acta"),
          PeriBole = nfoGovReader.readShort("PeriBole"),
          NumeBole = nfoGovReader.readInt("NumeBole"),
          TipoInfraccion = nfoGovReader.readString("TipoInfraccion"),
          Importe = nfoGovReader.readDecimal("Importe"),
          FepaPago = nfoGovReader.readDateTime("FepaPago")
        });
    }
    nfoGovReader?.Close();
    return multasTransitoGuay;
  }
}
