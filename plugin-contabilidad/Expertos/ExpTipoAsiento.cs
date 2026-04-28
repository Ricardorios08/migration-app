// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpTipoAsiento
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

public class ExpTipoAsiento : Expert, ABMExpert
{
  public ExpTipoAsiento()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT * FROM tipoasiento");
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlWOL());
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readTipoAsiento(dr));
    }
    dr.Close();
    return gridData;
  }

  private TipoAsiento readTipoAsiento(InfoGovReader dr)
  {
    return new TipoAsiento()
    {
      CodiTias = dr.readInt("CodiTias"),
      DetaTias = dr.readString("DetaTias"),
      FijoTias = dr.readBool("FijoTias")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    TipoAsiento tipoAsiento = (TipoAsiento) data;
    StringBuilder stringBuilder = new StringBuilder();
    tipoAsiento.CodiTias = this.nextInt("CodiTias", "tipoasiento");
    stringBuilder.AppendLine("INSERT INTO tipoasiento");
    stringBuilder.AppendLine("(CodiTias, DetaTias)");
    stringBuilder.AppendLine($"VALUES ({tipoAsiento.CodiTias.ToString()}, '{tipoAsiento.DetaTias}')");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    TipoAsiento tipoAsiento = (TipoAsiento) enti;
    return this.conn.executeNonQuery($"UPDATE tipoasiento SET DetaTias='{((TipoAsiento) data).DetaTias}' WHERE CodiTias={tipoAsiento.CodiTias.ToString()}");
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public int consultartipoasiento(int coditias, string detatias)
  {
    return this.conn.executeInt($"SELECT * FROM contpres.tipoasiento WHERE CodiTias!= {coditias.ToString()} AND UCASE(DetaTias) ='{detatias.Trim().ToUpper()}'");
  }
}
