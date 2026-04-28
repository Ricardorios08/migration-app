// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpModificarFormaPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpModificarFormaPago : Expert, ABMExpert
{
  public ExpModificarFormaPago()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT pago.FeenAcpa, pago.NumeAcpa, PeriBole, NumeBole, CodiOfic, CuenCtct, TotaPago");
    stringBuilder.AppendLine(", formpago.PeriFopa, formpago.NumeFopa, formpago.MoviFopa, formpago.CodiTipa, formpago.ImpoFopa");
    stringBuilder.AppendLine(", DetaEnre");
    stringBuilder.AppendLine("FROM pago");
    stringBuilder.AppendLine("INNER JOIN formpago ON formpago.PeriFopa = pago.PeriFopa AND formpago.NumeFopa = pago.NumeFopa");
    stringBuilder.AppendLine("INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa");
    stringBuilder.AppendLine("INNER JOIN infogov.entereca ON entereca.CodiEnre = acrepago.CodiEnre");
    if (PARAMS.Municipio != "SanMartín")
      stringBuilder.AppendLine("WHERE pago.FeenAcpa > " + this.sqlDate(Misc.getFechaBalProv(PARAMS.Periodo), false));
    else
      stringBuilder.AppendLine("WHERE 1=1");
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlAnd(false).ToString());
    stringBuilder.AppendLine("ORDER BY pago.FeenAcpa DESC;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readModificarFormaPago(dr));
    }
    dr.Close();
    return gridData;
  }

  private ModificarFormaPago readModificarFormaPago(InfoGovReader dr)
  {
    return new ModificarFormaPago()
    {
      FeenAcpa = dr.readDateTime("FeenAcpa"),
      PeriBole = dr.readShort("PeriBole"),
      NumeBole = dr.readInt("NumeBole"),
      CodiOfic = dr.readShort("CodiOfic"),
      CuenCtct = dr.readString("CuenCtct"),
      TotaPago = dr.readDecimal("TotaPago"),
      PeriFopa = dr.readShort("PeriFopa"),
      NumeFopa = dr.readInt("NumeFopa"),
      MoviFopa = dr.readShort("MoviFopa"),
      CodiTipa = dr.readShort("CodiTipa"),
      ImpoFopa = dr.readDecimal("ImpoFopa"),
      DetaEnre = dr.readString("DetaEnre"),
      NumeAcpa = dr.readInt("NumeAcpa")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data)
  {
    ModificarFormaPago modificarFormaPago = (ModificarFormaPago) enti;
    return this.conn.executeNonQuery($"UPDATE formpago\tSET CodiTipa = {((ModificarFormaPago) data).CodiTipa.ToString()} WHERE PeriFopa = {modificarFormaPago.PeriFopa.ToString()} AND NumeFopa = {modificarFormaPago.NumeFopa.ToString()} AND MoviFopa = {modificarFormaPago.MoviFopa.ToString()}");
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public DataTable getTiposPagos()
  {
    return this.conn.createDataTable("SELECT t.CodiTipa, t.DetaTipa FROM tipopago t WHERE t.BajaFeho IS NULL;");
  }
}
