// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpUnificacionCuit
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpUnificacionCuit : Expert
{
  public ExpUnificacionCuit()
    : base(Modulo.Database)
  {
  }

  public List<UnificacionCuit> getBuscarPersonasSM(string cuit, string detapers, string cuenta)
  {
    List<UnificacionCuit> buscarPersonasSm = new List<UnificacionCuit>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT p.CucuPers, p.DetaPers, ifnull(r.CuenCtct, '') CuenCtct, IFNULL(r.CodiOfic, 0) CodiOfic, IFNULL(r.TipoRela, '') TipoRela, r.FebaRela");
    stringBuilder.AppendLine("FROM infogov.persona p");
    stringBuilder.AppendLine("LEFT JOIN recaudacion.relacion r ON r.CucuPers = p.CucuPers");
    stringBuilder.AppendLine("WHERE p.CucuPers != 11111111111");
    if (cuit.Length > 0)
      stringBuilder.AppendLine($"AND p.CucuPers like '%{cuit}%'");
    if (detapers.Length > 0)
      stringBuilder.AppendLine($"AND p.DetaPers like '%{detapers}%'");
    if (cuenta.Length > 0)
      stringBuilder.AppendLine($"AND r.CuenCtct like '%{cuenta}%'");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        buscarPersonasSm.Add(new UnificacionCuit()
        {
          CucuPers = nfoGovReader.readLong("CucuPers"),
          DetaPers = nfoGovReader.readString("DetaPers"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          TipoRela = nfoGovReader.readString("TipoRela"),
          FebaRela = nfoGovReader.readDateTime("FebaRela")
        });
    }
    nfoGovReader?.Close();
    return buscarPersonasSm;
  }
}
