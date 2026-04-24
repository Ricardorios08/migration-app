// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Expertos.ExpAsiento
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Lib.Contabilidad;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Expertos;

public class ExpAsiento : Expert, ABMExpert
{
  public ExpAsiento()
    : base(Modulo.Database)
  {
  }

  private Asiento readAsiento(InfoGovReader dr)
  {
    Asiento asiento = new Asiento()
    {
      CodiAsie = dr.readInt("CodiAsie"),
      DetaAsie = dr.readString("DetaAsie"),
      NoleAsie = dr.readString("NoleAsie"),
      MinuAsie = dr.readString("MinuAsie"),
      FechAsie = dr.readDateTime("FechAsie"),
      CodiTias = dr.readInt("CodiTias"),
      TotDebeMoas = dr.readDecimal("TotDebeMoas"),
      TotHabeMoas = dr.readDecimal("TotHabeMoas")
    };
    asiento.TotHabeMoasS = asiento.TotHabeMoas.ToString("C");
    asiento.TotDebeMoasS = asiento.TotDebeMoas.ToString("C");
    return asiento;
  }

  private void prueba() => new TestClass().TestMethod();

  public List<Asiento> getGridData()
  {
    List<Asiento> gridData = new List<Asiento>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT a.* ");
    stringBuilder.AppendLine(",SUM(ma.DebeMoas) TotDebeMoas");
    stringBuilder.AppendLine(",SUM(ma.HabeMoas) TotHabeMoas");
    stringBuilder.AppendLine("FROM asiento a");
    stringBuilder.AppendLine("INNER JOIN paraconta p ON p.PeriInfo = a.PeriInfo");
    stringBuilder.AppendLine("INNER JOIN moviasiento ma ON ma.PeriInfo = a.PeriInfo");
    stringBuilder.AppendLine("AND ma.CodiAsie = a.CodiAsie");
    stringBuilder.AppendLine($"WHERE a.PeriInfo = {PARAMS.Periodo}");
    stringBuilder.AppendLine("AND a.FechAsie <= p.FedePaco");
    stringBuilder.AppendLine("GROUP BY a.CodiAsie;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add(this.readAsiento(dr));
    }
    dr.Close();
    return gridData;
  }

  public List<Asiento> getGridData_frmRevertir()
  {
    List<Asiento> gridDataFrmRevertir = new List<Asiento>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT a.* ");
    stringBuilder.AppendLine(",SUM(ma.DebeMoas) TotDebeMoas");
    stringBuilder.AppendLine(",SUM(ma.HabeMoas) TotHabeMoas");
    stringBuilder.AppendLine("FROM asiento a");
    stringBuilder.AppendLine("INNER JOIN paraconta p ON p.PeriInfo = a.PeriInfo");
    stringBuilder.AppendLine("INNER JOIN moviasiento ma ON ma.PeriInfo = a.PeriInfo");
    stringBuilder.AppendLine("AND ma.CodiAsie = a.CodiAsie");
    stringBuilder.AppendLine($"WHERE a.PeriInfo = {PARAMS.Periodo}");
    stringBuilder.AppendLine("GROUP BY a.CodiAsie;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridDataFrmRevertir.Add(this.readAsiento(dr));
    }
    dr.Close();
    return gridDataFrmRevertir;
  }

  public string puedeModificar(Entity enti) => throw new NotImplementedException();

  public string puedeAnular(Entity enti) => throw new NotImplementedException();

  public string puedeEliminar(Entity enti) => throw new NotImplementedException();

  public bool guardarNuevo(Entity data) => throw new NotImplementedException();

  public bool guardarCambios(Entity enti, Entity data) => throw new NotImplementedException();

  public bool anular(Entity enti, Entity data) => throw new NotImplementedException();

  public bool eliminar(Entity enti) => throw new NotImplementedException();

  List<Entity> ABMExpert.getGridData(Filter filter) => throw new NotImplementedException();

  public int RevertirAsiento(DateTime fecha, int codiAsie)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SET @periinfo= " + PARAMS.Periodo.ToString());
    stringBuilder.AppendLine(" , @fechasie=" + this.sqlDate(fecha, false));
    stringBuilder.AppendLine(" , @revertir=" + codiAsie.ToString());
    stringBuilder.AppendLine(" , @codiasienuevo = 0");
    stringBuilder.AppendLine(" , @codimoas = 0;");
    stringBuilder.AppendLine("SELECT @periinfo, @codiasienuevo:=IFNULL(Max(CodiAsie),0)+1 ");
    stringBuilder.AppendLine("FROM asiento ");
    stringBuilder.AppendLine("WHERE PeriInfo = @periinfo;");
    stringBuilder.AppendLine("DROP TEMPORARY TABLE IF EXISTS tmovi;");
    stringBuilder.AppendLine("CREATE TEMPORARY TABLE tmovi");
    stringBuilder.AppendLine("SELECT a.PeriInfo, @codiasienuevo CodiAsie, CodiCuco");
    stringBuilder.AppendLine(", IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0) SaldDeud");
    stringBuilder.AppendLine(", IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0) SaldAcre");
    stringBuilder.AppendLine(", Sum(DebeMoas), Sum(HabeMoas)");
    stringBuilder.AppendLine("FROM asiento a");
    stringBuilder.AppendLine("INNER JOIN moviasiento mv ON mv.PeriInfo = a.PeriInfo AND mv.CodiAsie = a.CodiAsie");
    stringBuilder.AppendLine("WHERE a.PeriInfo = @periinfo");
    stringBuilder.AppendLine("AND a.CodiAsie = @revertir");
    stringBuilder.AppendLine("GROUP BY PeriInfo, CodiCuco");
    stringBuilder.AppendLine("HAVING SaldDeud <> 0");
    stringBuilder.AppendLine("OR SaldAcre <> 0;");
    stringBuilder.AppendLine("SELECT @coditias:=CodiTias");
    stringBuilder.AppendLine("FROM asiento a");
    stringBuilder.AppendLine("WHERE a.PeriInfo = @periinfo");
    stringBuilder.AppendLine("AND a.CodiAsie = @revertir;");
    stringBuilder.AppendLine("INSERT INTO asiento (PeriInfo,CodiAsie,FechAsie,CodiTias,DetaAsie,NoleAsie,MinuAsie,AltaUsua)");
    stringBuilder.AppendLine($"SELECT @periinfo, @codiasienuevo, @fechasie, @coditias, concat('Reversión asiento ',@revertir) , '', '', '{this.usuario}';");
    stringBuilder.AppendLine("INSERT INTO moviasiento (PeriInfo,CodiAsie,CodiMoas,CodiCuco,DebeMoas,HabeMoas)");
    stringBuilder.AppendLine("SELECT @periinfo, @codiasienuevo, @codimoas:=@codimoas+1, tmovi.codicuco, tmovi.SaldAcre, tmovi.SaldDeud");
    stringBuilder.AppendLine("FROM tmovi;");
    return this.conn.executeNonQuery(stringBuilder.ToString()) ? this.conn.executeInt("SELECT @codiasienuevo;") : 0;
  }

  public int getIdAsiento()
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT @codiasienuevo:=ifnull(Max(CodiAsie),0)+1 ");
    stringBuilder.AppendLine("FROM asiento WHERE PeriInfo =" + PARAMS.Periodo.ToString());
    return this.conn.executeInt(stringBuilder.ToString());
  }

  public bool ValidarFecha(DateTime fecha) => fecha > Misc.getFechaBalProv(PARAMS.Periodo);
}
