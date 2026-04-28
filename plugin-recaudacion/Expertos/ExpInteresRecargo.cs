// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpInteresRecargo
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

public class ExpInteresRecargo : Expert, ABMExpert
{
  public ExpInteresRecargo()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT *");
    stringBuilder.AppendLine("FROM interes");
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlWOL(wdotcomma: false));
    stringBuilder.AppendLine("ORDER BY CodiInte desc");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readInteresRecargo(dr));
    }
    dr.Close();
    return gridData;
  }

  private InteresRecargo readInteresRecargo(InfoGovReader dr)
  {
    InteresRecargo interesRecargo = new InteresRecargo();
    interesRecargo.CodiInte = dr.readInt("CodiInte");
    if (PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "SanCarlos" || PARAMS.Municipio == "Tunuyán" || PARAMS.Municipio == "Rivadavia")
      interesRecargo.FechInte = dr.readDateTime("FechInte");
    if (PARAMS.Municipio == "Guaymallén" || PARAMS.Municipio == "SantaRosa" || PARAMS.Municipio == "Malargüe")
      interesRecargo.FrecInte = dr.readString("FrecInte");
    interesRecargo.PorcInte = dr.readDecimal("PorcInte");
    interesRecargo.readAuditory(dr);
    return interesRecargo;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    InteresRecargo interesRecargo = (InteresRecargo) data;
    string sql = "";
    if (PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "SanCarlos" || PARAMS.Municipio == "Tunuyán" || PARAMS.Municipio == "Rivadavia")
    {
      interesRecargo.CodiInte = this.nextInt("CodiInte", "interes");
      sql = $"INSERT INTO interes(CodiInte, PorcInte, FechInte, AltaUsua)VALUES ({interesRecargo.CodiInte.ToString()}, {this.sqlDecimal(interesRecargo.PorcInte)}, {this.sqlDate(interesRecargo.FechInte)}, '{this.usuario}')";
    }
    else if (!(PARAMS.Municipio == "Guaymallén") && !(PARAMS.Municipio == "SantaRosa") && !(PARAMS.Municipio == "Malargüe"))
      ;
    return this.conn.executeNonQuery(sql);
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    InteresRecargo interesRecargo1 = (InteresRecargo) enti;
    InteresRecargo interesRecargo2 = (InteresRecargo) data;
    string sql = "";
    if (PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "SanCarlos" || PARAMS.Municipio == "Tunuyán" || PARAMS.Municipio == "Rivadavia")
      sql = $"UPDATE interes SET PorcInte={this.sqlDecimal(interesRecargo2.PorcInte)}, FechInte={this.sqlDate(interesRecargo2.FechInte, false)} WHERE CodiInte={interesRecargo1.CodiInte.ToString()}";
    else if (PARAMS.Municipio == "Guaymallén" || PARAMS.Municipio == "SantaRosa" || PARAMS.Municipio == "Malargüe")
      sql = $"UPDATE interes SET PorcInte = {this.sqlDecimal(interesRecargo2.PorcInte)}, FrecInte = '{interesRecargo2.FrecInte}' WHERE\tCodiInte = {interesRecargo1.CodiInte.ToString()}";
    return this.conn.executeNonQuery(sql);
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");
}
