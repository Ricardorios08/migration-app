// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpObse
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpObse : Expert
{
  private string tabla;
  private string pk;

  public ExpObse()
    : base(Modulo.Database)
  {
  }

  public void ObtenerObservaciones(int CodiObse, int CodiOfic, List<Obse> obse)
  {
    obse.Clear();
    try
    {
      this.SetParametros(CodiOfic);
      InfoGovReader dr = this.conn.executeReader($"SELECT * FROM recaudacion.{this.tabla} WHERE {this.pk} = {CodiObse} AND BajaFeho IS NULL;");
      if (dr.HasRows)
      {
        while (dr.Read())
        {
          Obse obse1 = new Obse();
          obse1.CodiObse = dr.readInt(this.pk);
          obse1.CodiOfic = CodiOfic;
          obse1.NumeCoob = dr.readShort("NumeCoob");
          obse1.ObseCoob = dr.readString("ObseCoob");
          obse1.readAuditory(dr);
          obse.Add(obse1);
        }
      }
      dr.Close();
    }
    catch (Exception ex)
    {
      throw new Exception(ex.Message);
    }
  }

  public string GetSQL(Obse o)
  {
    StringBuilder stringBuilder = new StringBuilder();
    this.SetParametros(o.CodiOfic);
    switch (o.status)
    {
      case EntityStatus.New:
        stringBuilder.AppendLine($"SELECT IFNULL(MAX(NumeCoob),0)+1 INTO @NumeCoob FROM {this.tabla} WHERE {this.pk} = {o.CodiObse};");
        stringBuilder.AppendLine($"INSERT INTO {this.tabla} ({this.pk}, NumeCoob, ObseCoob, AltaUsua) VALUES ({o.CodiObse}, @NumeCoob, {this.sqlString(o.ObseCoob)}, {this.sqlString(this.usuario)});");
        break;
      case EntityStatus.Modified:
        stringBuilder.AppendLine("UPDATE " + this.tabla);
        stringBuilder.AppendLine($"SET ObseCoob = {this.sqlString(o.ObseCoob)}, ModiUsua = {this.sqlString(this.usuario)}, ModiFeho = NOW()");
        stringBuilder.AppendLine($"WHERE {this.pk} = {o.CodiObse} AND NumeCoob = {o.NumeCoob};");
        break;
      case EntityStatus.Deactivated:
        stringBuilder.AppendLine("UPDATE " + this.tabla);
        stringBuilder.AppendLine($"SET BajaUsua = {this.sqlString(this.usuario)}, BajaFeho = NOW()");
        stringBuilder.AppendLine($"WHERE {this.pk} = {o.CodiObse} AND NumeCoob = {o.NumeCoob};");
        break;
    }
    return stringBuilder.ToString();
  }

  private void SetParametros(int CodiOfic)
  {
    switch (CodiOfic)
    {
      case 1:
        this.tabla = "inmuobse";
        this.pk = "CodiInmu";
        break;
      case 2:
        this.tabla = "comeobse";
        this.pk = "CodiCome";
        break;
      case 4:
        this.tabla = "difuobse";
        this.pk = "CodiDifu";
        break;
      case 6:
        this.tabla = "publobse";
        this.pk = "CodiCome";
        break;
      case 7:
        this.tabla = "anteobse";
        this.pk = "CodiCome";
        break;
      default:
        this.tabla = this.pk = string.Empty;
        break;
    }
  }
}
