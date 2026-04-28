// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpExcepciones
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

public class ExpExcepciones : Expert, ABMExpert
{
  public ExpExcepciones()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT CodiInmu, p.DetaPers, inmueble.CodiExce, FfexInmu, ExexInmu, MoexInmu, IFNULL(DetaExce,'') DetaExce");
    stringBuilder.AppendLine("FROM inmueble");
    stringBuilder.AppendLine("LEFT JOIN excepcion ON excepcion.CodiExce = inmueble.CodiExce");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = inmueble.CucuPers");
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlWOL());
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readExcepciones(dr));
    }
    dr.Close();
    return gridData;
  }

  private Excepciones readExcepciones(InfoGovReader dr)
  {
    return new Excepciones()
    {
      CodiInmu = dr.readInt("CodiInmu"),
      DetaPers = dr.readString("DetaPers"),
      CodiExce = dr.readShort("CodiExce"),
      DetaExce = dr.readString("DetaExce"),
      FfexInmu = dr.readDateTime("FfexInmu"),
      ExexInmu = dr.readString("ExexInmu"),
      MoexInmu = dr.readString("MoexInmu")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data)
  {
    Excepciones excepciones1 = (Excepciones) enti;
    Excepciones excepciones2 = (Excepciones) data;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("UPDATE inmueble");
    stringBuilder.AppendLine("SET");
    stringBuilder.AppendLine($"CodiExce={excepciones2.CodiExce.ToString()},");
    stringBuilder.AppendLine($"FfexInmu={this.sqlDate(excepciones2.FfexInmu, false)},");
    stringBuilder.AppendLine($"ExexInmu='{excepciones2.ExexInmu}',");
    stringBuilder.AppendLine($"MoexInmu='{excepciones2.MoexInmu}'");
    stringBuilder.AppendLine($"WHERE CodiInmu={excepciones1.CodiInmu.ToString()};");
    stringBuilder.AppendLine("INSERT INTO aud_recaudacion.exeninmu (CodiInmu, CodiExce, FfexInmu, ExexInmu, MoexInmu, AltaUsua)");
    stringBuilder.AppendLine($"VALUES ({excepciones1.CodiInmu}, {excepciones2.CodiExce}, {this.sqlDate(excepciones2.FfexInmu, false)}, {this.sqlString(excepciones2.ExexInmu)}, {this.sqlString(excepciones2.MoexInmu)}, {this.sqlString(this.usuario)});");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public List<Excepciones> BuscarHistorial(int CodiInmu)
  {
    List<Excepciones> excepcionesList1 = new List<Excepciones>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM aud_recaudacion.exeninmu WHERE CodiInmu = {CodiInmu} ORDER BY IdExen DESC;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        List<Excepciones> excepcionesList2 = excepcionesList1;
        Excepciones excepciones = new Excepciones();
        excepciones.CodiInmu = nfoGovReader.readInt(nameof (CodiInmu));
        excepciones.CodiExce = nfoGovReader.readShort("CodiExce");
        excepciones.FfexInmu = nfoGovReader.readDateTime("FfexInmu");
        excepciones.ExexInmu = nfoGovReader.readString("ExexInmu");
        excepciones.MoexInmu = nfoGovReader.readString("MoexInmu");
        excepciones.AltaUsua = nfoGovReader.readString("AltaUsua");
        excepciones.AltaFeho = nfoGovReader.readDateTime("AltaFeho");
        excepcionesList2.Add(excepciones);
      }
    }
    nfoGovReader.Close();
    return excepcionesList1;
  }
}
