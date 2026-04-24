// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpServicioVario
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

internal class ExpServicioVario : Expert
{
  public ExpServicioVario()
    : base(Modulo.Database)
  {
  }

  public List<ServicioVario> getServiciosVarios()
  {
    List<ServicioVario> serviciosVarios = new List<ServicioVario>();
    InfoGovReader dr = this.conn.executeReader($"SELECT PeriOrde,CodiSede,DetaSede,PeriInfo,CodiConc,ImpoSede FROM servdeva WHERE PeriInfo = {PARAMS.Periodo.ToString()} ORDER BY DetaSede ASC;");
    if (dr.HasRows)
    {
      while (dr.Read())
        serviciosVarios.Add(this.readServicioVario(dr));
    }
    dr.Close();
    return serviciosVarios;
  }

  private ServicioVario readServicioVario(InfoGovReader dr)
  {
    return new ServicioVario()
    {
      PeriOrde = dr.readInt("PeriOrde"),
      CodiSede = dr.readInt("CodiSede"),
      DetaSede = dr.readString("DetaSede"),
      PeriInfo = dr.readInt("PeriInfo"),
      CodiConc = dr.readString("CodiConc"),
      ImpoSede = dr.readDecimal("ImpoSede")
    };
  }
}
