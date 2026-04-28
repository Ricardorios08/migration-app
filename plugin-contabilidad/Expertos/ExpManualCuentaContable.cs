// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpManualCuentaContable
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpManualCuentaContable : Expert, ABMExpert
{
  public ExpManualCuentaContable()
    : base(Modulo.Database)
  {
  }

  public bool anular(Entity enti, Entity data) => throw new NotImplementedException();

  public bool eliminar(Entity enti) => throw new NotImplementedException();

  public List<Entity> getGridData(Filter filter)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<Entity> gridData = new List<Entity>();
    stringBuilder.AppendLine("SELECT cc.*, tc.DetaTicu ");
    stringBuilder.AppendLine(" FROM infogov.cuentacontable cc");
    stringBuilder.AppendLine(" INNER JOIN contpres.tipocuco tc ON cc.CodiTicu = tc.CodiTicu");
    stringBuilder.AppendLine(" WHERE cc.PeriInfo = " + PARAMS.Periodo.ToString());
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlAnd(false));
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readData(dr));
    }
    dr.Close();
    return gridData;
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    ManualCuentaContable manualCuentaContable1 = (ManualCuentaContable) enti;
    ManualCuentaContable manualCuentaContable2 = (ManualCuentaContable) data;
    return this.conn.executeNonQuery($"UPDATE infogov.cuentacontable SET DebeCuco = '{manualCuentaContable2.DebeCuco}', HabeCuco = '{manualCuentaContable2.HabeCuco}', SaldCuco = '{manualCuentaContable2.SaldCuco}',DescCuco = '{manualCuentaContable2.DescCuco}' WHERE periinfo = {PARAMS.Periodo.ToString()} AND codicuco = '{manualCuentaContable1.CodiCuco}';");
  }

  public bool guardarNuevo(Entity data) => throw new NotImplementedException();

  public string puedeAnular(Entity enti) => throw new NotImplementedException();

  public string puedeEliminar(Entity enti) => throw new NotImplementedException();

  public string puedeModificar(Entity enti) => "";

  private ManualCuentaContable readData(InfoGovReader dr)
  {
    return new ManualCuentaContable()
    {
      PeriInfo = dr.readInt("PeriInfo"),
      CodiCuco = dr.readString("CodiCuco"),
      DetaCuco = dr.readString("DetaCuco"),
      CodiTicu = dr.readString("CodiTicu"),
      DetaTicu = dr.readString("DetaTicu"),
      DebeCuco = dr.readString("DebeCuco"),
      HabeCuco = dr.readString("HabeCuco"),
      SaldCuco = dr.readString("SaldCuco"),
      DescCuco = dr.readString("DescCuco")
    };
  }
}
