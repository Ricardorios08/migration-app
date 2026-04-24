// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpParametrosGenerales
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpParametrosGenerales : Expert
{
  public ExpParametrosGenerales()
    : base(Modulo.Database)
  {
  }

  public List<ParametrosGenerales> ObtenerHistorial()
  {
    List<ParametrosGenerales> parametrosGeneralesList = new List<ParametrosGenerales>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT * FROM aud_recaudacion.paragene ORDER BY CodiPage DESC;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ParametrosGenerales parametrosGenerales = new ParametrosGenerales();
        parametrosGenerales.CodiPage = nfoGovReader.readInt("CodiPage");
        parametrosGenerales.PeriOrde = nfoGovReader.readInt("PeriOrde");
        parametrosGenerales.CodiInte = nfoGovReader.readInt("CodiInte");
        parametrosGenerales.DerePage = nfoGovReader.readDecimal("DerePage");
        parametrosGenerales.DecaPage = nfoGovReader.readDecimal("DecaPage");
        parametrosGenerales.FosePage = nfoGovReader.readString("FosePage");
        parametrosGenerales.DicaPage = nfoGovReader.readString("DicaPage");
        parametrosGenerales.DiprPage = nfoGovReader.readString("DiprPage");
        parametrosGenerales.UntrPage = nfoGovReader.readDecimal("UntrPage");
        parametrosGenerales.LepaPage = nfoGovReader.readString("LepaPage");
        parametrosGenerales.AltaUsua = nfoGovReader.readString("AltaUsua");
        parametrosGenerales.AltaFeho = nfoGovReader.readDateTime("AltaFeho");
        parametrosGeneralesList.Add(parametrosGenerales);
      }
    }
    nfoGovReader.Close();
    return parametrosGeneralesList;
  }

  public ParametrosGenerales BuscarUltimoPage()
  {
    ParametrosGenerales parametrosGenerales = new ParametrosGenerales();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM paragene ORDER BY CodiPage DESC LIMIT 1;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        parametrosGenerales.CodiPage = nfoGovReader.readInt("CodiPage");
        parametrosGenerales.PeriOrde = nfoGovReader.readInt("PeriOrde");
        parametrosGenerales.CodiInte = nfoGovReader.readInt("CodiInte");
        parametrosGenerales.DerePage = nfoGovReader.readDecimal("DerePage");
        parametrosGenerales.DecaPage = nfoGovReader.readDecimal("DecaPage");
        parametrosGenerales.FosePage = nfoGovReader.readString("FosePage");
        parametrosGenerales.DicaPage = nfoGovReader.readString("DicaPage");
        parametrosGenerales.DiprPage = nfoGovReader.readString("DiprPage");
        parametrosGenerales.UntrPage = nfoGovReader.readDecimal("UntrPage");
        parametrosGenerales.LepaPage = nfoGovReader.readString("LepaPage");
      }
    }
    nfoGovReader.Close();
    return parametrosGenerales;
  }

  public bool GuardarCambios(ParametrosGenerales page)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"SET @sUsuario={this.sqlString(this.usuario)};");
    stringBuilder.AppendLine("UPDATE paragene");
    stringBuilder.AppendLine($"SET DerePage={this.sqlDecimal(page.DerePage)}, DecaPage={this.sqlDecimal(page.DecaPage)}, FosePage={this.sqlString(page.FosePage)}, DicaPage={this.sqlString(page.DicaPage)}, DiprPage={this.sqlString(page.DiprPage)}, UntrPage={this.sqlDecimal(page.UntrPage)}, LepaPage={this.sqlString(page.LepaPage)}, AltaUsua={this.sqlString(this.usuario)}, AltaFeho=NOW()");
    stringBuilder.AppendLine($"WHERE CodiPage={page.CodiPage};");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }
}
