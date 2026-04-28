// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpDomicilioGIS
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Core;
using InfoGov.SQL;
using System.Data;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpDomicilioGIS : Expert
{
  public ExpDomicilioGIS()
    : base("catastro_guaymallen")
  {
  }

  public InfoGovReader procesarSQL(string sql) => this.conn.executeReader(sql);

  public DataTable crearDT(string sql) => this.conn.createDataTable(sql);

  public int exeucteInt(string sql) => this.conn.executeInt(sql);
}
