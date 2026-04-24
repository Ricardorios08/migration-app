// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpParametroCierreEjercicio
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

public class ExpParametroCierreEjercicio : Expert, ABMExpert
{
  public ExpParametroCierreEjercicio()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT paraconta.*, IFNULL(caercuco.DetaCuco,'') AS CaerDeta,");
    stringBuilder.AppendLine("IFNULL(provcuco.DetaCuco,'') AS ProvDeta,");
    stringBuilder.AppendLine("IFNULL(deexcuco.DetaCuco,'') AS DeexDeta,");
    stringBuilder.AppendLine("IFNULL(chsrcuco.DetaCuco,'') AS ChsrDeta,");
    stringBuilder.AppendLine("IFNULL(catecuco.DetaCuco,'') AS CateDeta,");
    stringBuilder.AppendLine("IFNULL(cajacuco.DetaCuco,'') AS CajaDeta,");
    stringBuilder.AppendLine("IFNULL(carecuco.DetaCuco,'') AS CareDeta,");
    stringBuilder.AppendLine("IFNULL(patrcuco.DetaCuco,'') AS PatrDeta,");
    stringBuilder.AppendLine("IFNULL(ccrppaco.DetaCuco,'') AS CcrpDeta,");
    stringBuilder.AppendLine("IFNULL(parppaco.DetaPart,'') AS ParpDeta");
    stringBuilder.AppendLine("FROM paraconta");
    stringBuilder.AppendLine("LEFT JOIN infogov.cuentacontable AS caercuco ON caercuco.PeriInfo = paraconta.PeriInfo AND caercuco.CodiCuco = paraconta.CaerPaco");
    stringBuilder.AppendLine("LEFT JOIN infogov.cuentacontable AS provcuco ON provcuco.PeriInfo = paraconta.PeriInfo AND provcuco.CodiCuco = paraconta.ProvPaco");
    stringBuilder.AppendLine("LEFT JOIN infogov.cuentacontable AS deexcuco ON deexcuco.PeriInfo = paraconta.PeriInfo AND deexcuco.CodiCuco = paraconta.DeexPaco");
    stringBuilder.AppendLine("LEFT JOIN infogov.cuentacontable AS chsrcuco ON chsrcuco.PeriInfo = paraconta.PeriInfo AND chsrcuco.CodiCuco = paraconta.ChsrPaco");
    stringBuilder.AppendLine("LEFT JOIN infogov.cuentacontable AS catecuco ON catecuco.PeriInfo = paraconta.PeriInfo AND catecuco.CodiCuco = paraconta.CatePaco");
    stringBuilder.AppendLine("LEFT JOIN infogov.cuentacontable AS cajacuco ON cajacuco.PeriInfo = paraconta.PeriInfo AND cajacuco.CodiCuco = paraconta.CajaPaco");
    stringBuilder.AppendLine("LEFT JOIN infogov.cuentacontable AS carecuco ON carecuco.PeriInfo = paraconta.PeriInfo AND carecuco.CodiCuco = paraconta.CarePaco");
    stringBuilder.AppendLine("LEFT JOIN infogov.cuentacontable AS patrcuco ON patrcuco.PeriInfo = paraconta.PeriInfo AND patrcuco.CodiCuco = paraconta.PatrPaco");
    stringBuilder.AppendLine("LEFT JOIN infogov.cuentacontable AS ccrppaco ON ccrppaco.PeriInfo = paraconta.PeriInfo AND ccrppaco.CodiCuco = paraconta.CcrpPaco");
    stringBuilder.AppendLine("LEFT JOIN contpres.partida AS parppaco ON parppaco.PeriInfo = paraconta.PeriInfo AND parppaco.CodiPart = paraconta.ParpPaco");
    stringBuilder.AppendLine("WHERE paraconta.PeriInfo = " + PARAMS.Periodo.ToString());
    stringBuilder.AppendLine("ORDER BY paraconta.PeriInfo DESC");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readParametroCierreEjercicio(dr));
    }
    dr.Close();
    return gridData;
  }

  private ParametroCierreEjercicio readParametroCierreEjercicio(InfoGovReader dr)
  {
    return new ParametroCierreEjercicio()
    {
      PeriInfo = dr.readInt("PeriInfo"),
      FedePaco = dr.readDateTime("FedePaco"),
      FemaxPaco = dr.readDateTime("FemaxPaco"),
      MiinPaco = dr.readDecimal("MiinPaco"),
      CaerPaco = dr.readString("CaerPaco"),
      CaerDeta = dr.readString("CaerDeta"),
      ProvPaco = dr.readString("ProvPaco"),
      ProvDeta = dr.readString("ProvDeta"),
      DeexPaco = dr.readString("DeexPaco"),
      DeexDeta = dr.readString("DeexDeta"),
      PaexPaco = dr.readString("PaexPaco"),
      ChsrPaco = dr.readString("ChsrPaco"),
      ChsrDeta = dr.readString("ChsrDeta"),
      CatePaco = dr.readString("CatePaco"),
      CateDeta = dr.readString("CateDeta"),
      CajaPaco = dr.readString("CajaPaco"),
      CajaDeta = dr.readString("CajaDeta"),
      CarePaco = dr.readString("CarePaco"),
      PatrPaco = dr.readString("PatrPaco"),
      ReejPaco = dr.readString("ReejPaco"),
      SacePaco = dr.readString("SacePaco"),
      DefaPaco = dr.readString("DefaPaco"),
      CodiUsua = dr.readString("AltaUsua")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data) => this.conn.executeNonQuery("...");

  public bool guardarCambios(Entity enti, Entity data)
  {
    ParametroCierreEjercicio parametroCierreEjercicio = (ParametroCierreEjercicio) enti;
    return this.conn.executeNonQuery($"UPDATE contpres.paraconta SET FemaxPaco = {this.sqlDate(((ParametroCierreEjercicio) data).FemaxPaco)} WHERE PeriInfo = {parametroCierreEjercicio.PeriInfo.ToString()};");
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");
}
