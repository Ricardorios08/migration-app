// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpBeneficiarios
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

internal class ExpBeneficiarios : Expert
{
  public ExpBeneficiarios()
    : base(Modulo.Database, true)
  {
  }

  public List<Beneficiario> getGridData()
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<Beneficiario> gridData = new List<Beneficiario>();
    stringBuilder.AppendLine("SELECT l.NumeLega, l.CucuLega, l.NoapLega");
    stringBuilder.AppendLine("FROM beneficiario b");
    stringBuilder.AppendLine("INNER JOIN personal3.legajo l ON l.CucuLega = b.CucuPers;");
    InfoGovReader dr = this.conn.executeReader(stringBuilder.ToString());
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add(this.readBeneficiario(dr));
    }
    dr.Close();
    return gridData;
  }

  private Beneficiario readBeneficiario(InfoGovReader dr)
  {
    return new Beneficiario()
    {
      NumeLega = dr.readInt("NumeLega").ToString(),
      CucuLega = dr.readLong("CucuLega").ToString(),
      NoapLega = dr.readString("NoapLega")
    };
  }

  public bool cargarBeneficiarios(string sqlInsert)
  {
    return this.conn.executeNonQuery($"DELETE FROM beneficiario WHERE CucuPers <> '';INSERT INTO beneficiario (CucuPers,AltaUsua) VALUES {sqlInsert}");
  }
}
