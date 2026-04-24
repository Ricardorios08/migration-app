// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpPersonaMaipu
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpPersonaMaipu : ExpPersona
{
  public override Persona readEntity(InfoGovReader dr)
  {
    Persona enti = new Persona()
    {
      CucuPers = dr.readLong("CucuPers"),
      CcokPers = dr.readBool("CcokPers"),
      DetaPers = dr.readString("DetaPers"),
      JuriPers = dr.readBool("JuriPers"),
      SexoPers = dr.readBool("SexoPers"),
      TelePers = dr.readString("TelePers"),
      CeluPers = dr.readString("CeluPers"),
      FaxsPers = dr.readString("FaxsPers"),
      MailPers = dr.readString("MailPers"),
      CodiTido = dr.readShort("CodiTido"),
      NudoPers = dr.readInt("NudoPers"),
      FenaPers = dr.readDateTime("FenaPers"),
      DecrPers = dr.readString("DecrPers")
    };
    enti.JuriPers = dr.readBool("JuriPers");
    enti.CodiProv = dr.readInt("CodiProv");
    enti.SexoPers = dr.readBool("SexoPers");
    enti.CodiTido = dr.readShort("CodiTido");
    enti.CodiCall = dr.readInt("CodiCall");
    enti.DecrPers = dr.readString("DecaPers");
    enti.NumePers = dr.readInt("NumePers");
    enti.PisoPers = dr.readString("PisoPers");
    enti.LotePers = dr.readString("LotePers");
    enti.DptoPers = dr.readString("DptoPers");
    enti.CodiBarr = dr.readInt("CodiBarr");
    enti.DebaPers = dr.readString("DebaPers");
    enti.MarePers = dr.readString("ManzPers");
    enti.CarePers = dr.readString("CasaPers");
    enti.CodiLoca = dr.readInt("CodiLoca");
    enti.DeloPers = dr.readString("DeloPers");
    enti.CodiDepa = dr.readInt("CodiDepa");
    enti.DedePers = dr.readString("DedePers");
    enti.CodiDist = dr.readInt("CodiDist");
    enti.DediPers = dr.readString("DediPers");
    enti.CopoPers = dr.readString("CopoPers");
    enti.DeprPers = dr.readString("DeprPers");
    enti.NurePers = dr.readInt("NumePers");
    enti.UbrePers = dr.readString("UbrePers");
    enti.DelrPers = dr.readString("DelrPers");
    enti.CodiEsci = dr.readShort("CodiEsci");
    enti.CodiPofi = dr.readShort("CodiPofi");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public override string getSQL(Persona enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sql = $"INSERT IGNORE INTO infogov.persona (CucuPers, CcokPers, NudoPers, FenaPers, FealPers,\t\t\t\t\t\t\t\t\tDetaPers, CatePers, CodiEsta, TipoPers, FictPers, DecpPers, DecrPers,\t\t\t\t\t\t\t\t\tTelePers, CeluPers, FaxsPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tMailPers, JuriPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiProv, SexoPers, CodiTido,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiCall, DecaPers, NumePers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPisoPers, LotePers, DptoPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiBarr, DebaPers, ManzPers, CasaPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiLoca, DeloPers, CodiDepa, DedePers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiDist, DediPers, CopoPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t DeprPers, NurePers, UbrePers, DelrPers, CodiEsci, CodiPofi, AltaUsua) VALUES ({enti.CucuPers.ToString()}, 1, {enti.NudoPers.ToString()}, {this.sqlDate(enti.FenaPers, false)}, NOW(), '{enti.DetaPers.Trim()}', '', 1, 'P', 'N', '', '{enti.DecrPers.Trim()}', '{enti.TelePers}', '{enti.CeluPers}', '{enti.FaxsPers}', '{enti.MailPers.Trim()}', {this.sqlBool(enti.JuriPers)}, {enti.CodiProv.ToString()}, {this.sqlBool(enti.SexoPers)}, {enti.CodiTido.ToString()}, {enti.CocrPers.ToString()}, '{enti.DecrPers}', {enti.NurePers.ToString()}, '{enti.PisoPers}', '{enti.LotePers}', '{enti.DptoPers}', {enti.CobrPers.ToString()}, '{enti.DebrPers}', '{enti.MarePers}', '{enti.CarePers}', {enti.CodiLoca.ToString()}, '{enti.DelrPers}', {enti.CodiDepa.ToString()}, '{enti.DedePers}', {enti.CodiDist.ToString()}, '{enti.DediPers}', '{enti.CoprPers}', '{enti.DeprPers}', {enti.NurePers.ToString()}, '{enti.UbrePers}', '{enti.DelrPers}', {enti.CodiEsci.ToString()}, {enti.CodiPofi.ToString()}, '{this.usuario}');";
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE infogov.persona SET DetaPers=UPPER('{enti.DetaPers}'), MailPers='{enti.MailPers}', JuriPers={this.sqlBool(enti.JuriPers)}, SexoPers={this.sqlBool(enti.SexoPers)}, CodiTido={enti.CodiTido.ToString()}, NudoPers={enti.NudoPers.ToString()}, FenaPers={this.sqlDate(enti.FenaPers, false)}, CodiCall={enti.CocrPers.ToString()}, DecaPers='{enti.DecrPers}', NumePers={enti.NurePers.ToString()}, CodiBarr={enti.CobrPers.ToString()}, DebaPers='{enti.DebrPers}', ManzPers='{enti.MarePers}', CasaPers='{enti.CarePers}', UbrePers='{enti.UbrePers}', CodiDist={enti.ColrPers.ToString()}, DediPers='{enti.DelrPers}', CopoPers = '{enti.CoprPers}', ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CucuPers={enti.CucuPers.ToString()};";
        break;
      case EntityStatus.Deleted:
        sql = $"{$"DELETE FROM infogov.persona WHERE CucuPers={enti.CucuPers.ToString()};"} DELETE FROM infogov.telefono WHERE CucuPers={enti.CucuPers.ToString()};";
        break;
      case EntityStatus.Activated:
        sql = $"UPDATE infogov.persona SET BajaUsua='', BajaFeho=NULL WHERE CucuPers={enti.CucuPers.ToString()};";
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE infogov.persona SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CucuPers={enti.CucuPers.ToString()};";
        break;
    }
    return sql;
  }
}
