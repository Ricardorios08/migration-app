// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpDescuentosConcepto
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

public class ExpDescuentosConcepto : Expert, ABMExpert
{
  public ExpDescuentosConcepto()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT descconc.*, concepto.DetaConc\tFROM descconc\tLEFT JOIN concepto ON concepto.PeriInfo=descconc.PeriInfo AND concepto.CodiConc=descconc.CodiConc" + (filter == null ? "" : filter.sqlWOL()));
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readDescuentosConcepto(dr));
    }
    dr.Close();
    return gridData;
  }

  private DescuentosConcepto readDescuentosConcepto(InfoGovReader dr)
  {
    DescuentosConcepto descuentosConcepto = new DescuentosConcepto();
    descuentosConcepto.PeriInfo = dr.readInt("PeriInfo");
    descuentosConcepto.CodiConc = dr.readString("CodiConc");
    descuentosConcepto.DetaConc = dr.readString("DetaConc");
    descuentosConcepto.DereDeco = dr.readDecimal("DereDeco");
    descuentosConcepto.DecaDeco = dr.readDecimal("DecaDeco");
    descuentosConcepto.readAuditory(dr);
    return descuentosConcepto;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    DescuentosConcepto descuentosConcepto = (DescuentosConcepto) data;
    return this.conn.executeNonQuery($"INSERT INTO descconc (PeriInfo, CodiConc, DereDeco, DecaDeco, AltaUsua) VALUES({descuentosConcepto.PeriInfo.ToString()}, '{descuentosConcepto.CodiConc}', {this.sqlDecimal(descuentosConcepto.DereDeco)}, {this.sqlDecimal(descuentosConcepto.DecaDeco)}, '{this.usuario}')");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    DescuentosConcepto descuentosConcepto1 = (DescuentosConcepto) enti;
    DescuentosConcepto descuentosConcepto2 = (DescuentosConcepto) data;
    return this.conn.executeNonQuery($"UPDATE descconc SET DereDeco = {this.sqlDecimal(descuentosConcepto2.DereDeco)}, DecaDeco = {this.sqlDecimal(descuentosConcepto2.DecaDeco)}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE PeriInfo = {descuentosConcepto1.PeriInfo.ToString()} AND CodiConc='{descuentosConcepto1.CodiConc}'");
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public bool consultardescconcepto(int PeriInfo, string CodiConc)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM descconc WHERE PeriInfo = {PeriInfo.ToString()} AND CodiConc = '{CodiConc}'") > 0;
  }
}
