// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpParametrosRentas
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpParametrosRentas : Expert, ABMExpert
{
  public ExpParametrosRentas()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT pararenta.PeriInfo, pararenta.CorePare, concepto.DetaConc, pararenta.CoinPare, conceptointeres.DetaConc as DeinConc,");
    stringBuilder.AppendLine("pararenta.CoadPare, conceptocomiadmi.DetaConc as DeadConc, pararenta.CoapPare, conceptoapremio.DetaConc as DeapConc,");
    stringBuilder.AppendLine("pararenta.CoimPare, impuestoapremio.DetaConc AS DeimConc");
    stringBuilder.AppendLine("FROM pararenta");
    stringBuilder.AppendLine("LEFT JOIN concepto ON concepto.PeriInfo = pararenta.PeriInfo AND concepto.CodiConc = pararenta.CorePare");
    stringBuilder.AppendLine("LEFT JOIN concepto as conceptointeres ON conceptointeres.PeriInfo = pararenta.PeriInfo AND conceptointeres.CodiConc = pararenta.CoinPare");
    stringBuilder.AppendLine("LEFT JOIN concepto as conceptocomiadmi ON conceptocomiadmi.PeriInfo = pararenta.PeriInfo AND conceptocomiadmi.CodiConc = pararenta.CoadPare");
    stringBuilder.AppendLine("LEFT JOIN concepto as conceptoapremio ON conceptoapremio.PeriInfo = pararenta.PeriInfo AND conceptoapremio.CodiConc = pararenta.CoapPare");
    stringBuilder.AppendLine("LEFT JOIN concepto as impuestoapremio ON impuestoapremio.PeriInfo = pararenta.PeriInfo AND impuestoapremio.CodiConc = pararenta.CoimPare");
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlWOL(wdotcomma: false));
    stringBuilder.AppendLine("ORDER BY pararenta.PeriInfo");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readParametrosRentas(dr));
    }
    dr.Close();
    return gridData;
  }

  private ParametrosRentas readParametrosRentas(InfoGovReader dr)
  {
    return new ParametrosRentas()
    {
      PeriInfo = dr.readInt("PeriInfo"),
      CorePare = dr.readString("CorePare"),
      DetaReca = dr.readString("DetaConc"),
      CoinPare = dr.readString("CoinPare"),
      DetaInte = dr.readString("DeinConc"),
      CoadPare = dr.readString("CoadPare"),
      DetaAdmi = dr.readString("DeadConc"),
      CoapPare = dr.readString("CoapPare"),
      DetaApre = dr.readString("DeapConc"),
      CoimPare = dr.readString("CoimPare"),
      DetaCoim = dr.readString("DeimConc")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");
}
