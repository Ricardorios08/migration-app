// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpPersonaRivadavia
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpPersonaRivadavia : ExpPersona
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
      NudoPers = dr.readInt("NudoPers")
    };
    enti.CodiTido = dr.readShort("CodiTido");
    enti.NudoPers = dr.readInt("NudoPers");
    enti.FenaPers = dr.readDateTime("FenaPers");
    enti.DecrPers = dr.readString("DecrPers");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }
}
