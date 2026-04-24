// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpTipoPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpTipoPago : Expert, ABMExpert
{
  public ExpTipoPago()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    string sql = "SELECT * FROM tipopago WHERE BajaFeho IS NULL;";
    if (filter != null)
      sql = "SELECT * FROM tipopago" + filter.sqlWOL(true);
    InfoGovReader dr = this.conn.executeReader(sql);
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readTipoPago(dr));
    }
    dr.Close();
    return gridData;
  }

  private TipoPago readTipoPago(InfoGovReader dr)
  {
    TipoPago tipoPago = new TipoPago();
    tipoPago.CodiTipa = dr.readInt("CodiTipa");
    tipoPago.DetaTipa = dr.readString("DetaTipa");
    tipoPago.TipoTipa = dr.readInt("TipoTipa");
    tipoPago.CodiCuco = dr.readString("CodiCuco");
    tipoPago.readAuditory(dr);
    return tipoPago;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    TipoPago tipoPago = (TipoPago) data;
    return this.conn.executeNonQuery($" INSERT INTO tipopago (CodiTipa, DetaTipa, TipoTipa, CodiCuco, AltaUsua) VALUES ({this.nextInt("CodiTipa", "tipopago")}, {this.sqlString(tipoPago.DetaTipa)}, {tipoPago.TipoTipa}, {this.sqlString(tipoPago.CodiCuco)}, {this.sqlString(this.usuario)});");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    TipoPago tipoPago1 = (TipoPago) enti;
    TipoPago tipoPago2 = (TipoPago) data;
    return this.conn.executeNonQuery($"UPDATE tipopago SET DetaTipa={this.sqlString(tipoPago2.DetaTipa)}, TipoTipa={tipoPago2.TipoTipa}, CodiCuco={this.sqlString(tipoPago2.CodiCuco)}, ModiUsua={this.sqlString(this.usuario)}, ModiFeho=NOW() WHERE CodiTipa = {tipoPago1.CodiTipa};");
  }

  public bool anular(Entity enti, Entity data)
  {
    TipoPago tipoPago1 = (TipoPago) enti;
    TipoPago tipoPago2 = (TipoPago) data;
    return this.conn.executeNonQuery($"UPDATE tipopago SET BajaUsua={this.sqlString(this.usuario)}, BajaFeho=NOW(), BajaMoti={this.sqlString(tipoPago2.BajaMoti)} WHERE CodiTipa = {tipoPago1.CodiTipa};");
  }

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");
}
