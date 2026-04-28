// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpFeriado
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpFeriado : Expert, ABMExpert
{
  public ExpFeriado()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM personal3.feriado" + (filter == null ? "" : filter.sqlWOL()));
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readFeriado(dr));
    }
    dr.Close();
    return gridData;
  }

  private Feriado readFeriado(InfoGovReader dr)
  {
    Feriado feriado = new Feriado();
    feriado.CodiFeri = dr.readShort("CodiFeri");
    feriado.FechFeri = dr.readDateTime("FechFeri");
    feriado.DetaFeri = dr.readString("DetaFeri");
    feriado.readAuditory(dr);
    return feriado;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    Feriado feriado = (Feriado) data;
    feriado.CodiFeri = this.conn.executeShort("SELECT IFNULL(MAX(CodiFeri),0)+1 FROM personal3.feriado");
    return this.conn.executeNonQuery($"INSERT INTO personal3.feriado (CodiFeri, FechFeri, DetaFeri, AltaUsua) VALUES ({feriado.CodiFeri.ToString()}, {this.sqlDate(feriado.FechFeri)}, '{feriado.DetaFeri}', '{this.usuario}');");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    Feriado feriado1 = (Feriado) enti;
    Feriado feriado2 = (Feriado) data;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("UPDATE personal3.feriado");
    stringBuilder.AppendLine("SET");
    stringBuilder.AppendLine($"FechFeri={this.sqlDate(feriado2.FechFeri, false)},");
    stringBuilder.AppendLine($"DetaFeri='{feriado2.DetaFeri}',");
    stringBuilder.AppendLine($"ModiUsua='{this.usuario}',");
    stringBuilder.AppendLine("ModiFeho=NOW()");
    stringBuilder.AppendLine("WHERE CodiFeri=" + feriado1.CodiFeri.ToString());
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public bool ConsultarFeriado(DateTime dia)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM personal3.feriado WHERE FechFeri={this.sqlDate(dia, false)};") > 0;
  }
}
