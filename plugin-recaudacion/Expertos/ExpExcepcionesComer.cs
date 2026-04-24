// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpExcepcionesComer
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

public class ExpExcepcionesComer : Expert, ABMExpert
{
  public ExpExcepcionesComer()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT CodiCome, comercio.CodiExce, FfexCome, ExexCome, MoexCome, IFNULL(DetaExce,'') DetaExce");
    stringBuilder.AppendLine("FROM comercio");
    stringBuilder.AppendLine("LEFT JOIN excepcion ON excepcion.CodiExce = comercio.CodiExce");
    if (filter != null)
      stringBuilder.AppendLine(filter.sqlWOL());
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readExcepcionesComer(dr));
    }
    dr.Close();
    return gridData;
  }

  private ExcepcionesComer readExcepcionesComer(InfoGovReader dr)
  {
    return new ExcepcionesComer()
    {
      CodiCome = dr.readInt("CodiCome"),
      CodiExce = dr.readShort("CodiExce"),
      DetaExce = dr.readString("DetaExce"),
      FfexCome = dr.readDateTime("FfexCome"),
      ExexCome = dr.readString("ExexCome"),
      MoexCome = dr.readString("MoexCome")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data)
  {
    ExcepcionesComer excepcionesComer1 = (ExcepcionesComer) enti;
    ExcepcionesComer excepcionesComer2 = (ExcepcionesComer) data;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("UPDATE comercio");
    stringBuilder.AppendLine("SET");
    stringBuilder.AppendLine($"CodiExce={excepcionesComer2.CodiExce.ToString()},");
    stringBuilder.AppendLine($"FfexCome={this.sqlDate(excepcionesComer2.FfexCome, false)},");
    stringBuilder.AppendLine($"ExexCome='{excepcionesComer2.ExexCome}',");
    stringBuilder.AppendLine($"MoexCome='{excepcionesComer2.MoexCome}'");
    stringBuilder.AppendLine($"WHERE CodiCome={excepcionesComer1.CodiCome.ToString()};");
    stringBuilder.AppendLine("INSERT INTO aud_recaudacion.exencome (CodiCome, CodiExce, FfexCome, ExexCome, MoexCome, AltaUsua)");
    stringBuilder.AppendLine($"VALUES ({excepcionesComer1.CodiCome}, {excepcionesComer2.CodiExce}, {this.sqlDate(excepcionesComer2.FfexCome, false)}, {this.sqlString(excepcionesComer2.ExexCome)}, {this.sqlString(excepcionesComer2.MoexCome)}, {this.sqlString(this.usuario)});");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public List<ExcepcionesComer> BuscarHistorial(int CodiCome)
  {
    List<ExcepcionesComer> excepcionesComerList1 = new List<ExcepcionesComer>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM aud_recaudacion.exencome WHERE CodiCome = {CodiCome} ORDER BY IdExen DESC;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        List<ExcepcionesComer> excepcionesComerList2 = excepcionesComerList1;
        ExcepcionesComer excepcionesComer = new ExcepcionesComer();
        excepcionesComer.CodiCome = nfoGovReader.readInt(nameof (CodiCome));
        excepcionesComer.CodiExce = nfoGovReader.readShort("CodiExce");
        excepcionesComer.FfexCome = nfoGovReader.readDateTime("FfexCome");
        excepcionesComer.ExexCome = nfoGovReader.readString("ExexCome");
        excepcionesComer.MoexCome = nfoGovReader.readString("MoexCome");
        excepcionesComer.AltaUsua = nfoGovReader.readString("AltaUsua");
        excepcionesComer.AltaFeho = nfoGovReader.readDateTime("AltaFeho");
        excepcionesComerList2.Add(excepcionesComer);
      }
    }
    nfoGovReader.Close();
    return excepcionesComerList1;
  }
}
