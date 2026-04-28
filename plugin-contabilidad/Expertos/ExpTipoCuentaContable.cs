// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpTipoCuentaContable
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpTipoCuentaContable : Expert, ABMExpert
{
  public ExpTipoCuentaContable()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT * FROM tipocuco");
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlWOL());
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readTipoCuentaContable(dr));
    }
    dr.Close();
    return gridData;
  }

  private TipoCuentaContable readTipoCuentaContable(InfoGovReader dr)
  {
    return new TipoCuentaContable()
    {
      CodiTicu = dr.readString("CodiTicu"),
      DetaTicu = dr.readString("DetaTicu"),
      ImpuTicu = dr.readBool("ImpuTicu"),
      CodiUsua = dr.readString("CodiUsua")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti)
  {
    return this.conn.executeNonQuery("DELETE FROM tipocuco WHERE CodiTicu=" + ((TipoCuentaContable) enti).CodiTicu);
  }
}
