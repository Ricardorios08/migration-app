// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpMigrarDatos
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpMigrarDatos : Expert
{
  public ExpMigrarDatos()
    : base("recaudacion")
  {
  }

  public bool MigrarInmuebles()
  {
    List<InmuMigra> inmuMigraList = new List<InmuMigra>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM migracion.inmueble");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        inmuMigraList.Add(new InmuMigra()
        {
          idobjeto = nfoGovReader.readString("ID-OBJETO-GRAL"),
          padronmuni = nfoGovReader.readString("PADRON_MUNICIPAL"),
          padronatm = nfoGovReader.readString("PADRON_ATM"),
          nomenclatura = nfoGovReader.readString("NOMENCLATURA"),
          matricularp = nfoGovReader.readString("MATRICULA_EN_R.P."),
          nrofoliotomo = nfoGovReader.readString(""),
          distrito = nfoGovReader.readString(""),
          supseguncatastro = nfoGovReader.readString(""),
          expteconstrunro = nfoGovReader.readString(""),
          expteconstruano = nfoGovReader.readString(""),
          loteo = nfoGovReader.readString(""),
          mza = nfoGovReader.readString(""),
          lote = nfoGovReader.readString(""),
          alta = nfoGovReader.readString(""),
          baja = nfoGovReader.readString(""),
          motibaja = nfoGovReader.readString(""),
          observaciones = nfoGovReader.readString("")
        });
    }
    nfoGovReader.Close();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT i.`ID-OBJETO-GRAL` CodiInmu, 0 CucuPers, i.`PADRON MUNICIPAL` PadrInmu, 0 ComuInmu, 0 DptoInmu, 0 DistInmu");
    stringBuilder.AppendLine(", 0 SeccInmu, 0 ManzInmu, 0 ParcInmu, 0 SubpInmu, 0 DigiInmu, i.NOMENCLATURA NomeInmu");
    stringBuilder.AppendLine(", migracion.fnConvFecha(i.BAJA) FebaInmu, migracion.fnConvFecha(i.ALTA) FealInmu, ifnull(i.`MOTIVO BAJA`,'') MobaInmu");
    stringBuilder.AppendLine(", 0 PaprInmu, 0 InscInmu, 0 FojaInmu, 0 TomoInmu, i.`EXPTE. CONSTRUCCION NRO.` ExpeInmu");
    stringBuilder.AppendLine(", migracion.fnConvFecha(i.ALTA) FeinInmu");
    stringBuilder.AppendLine(", i.`MATRICULA EN R.P.` MatrInmu");
    stringBuilder.AppendLine(", '' AsieInmu, NULL FemaInmu, 0 MensInmu, '' ManpInmu");
    stringBuilder.AppendLine(", IFNULL(i.LOTE,'') LoteInmu, '' PoliInmu, '' ObsaInmu, 0 CausInmu, 0 PapaInmu");
    stringBuilder.AppendLine(", 0 CodiCall, '' NucaInmu, '' UbicInmu, 0 CodiBarr");
    stringBuilder.AppendLine(", IFNULL(i.`MZNA.`,'') MansInmu, 0 CasaInmu, 0 CodiLoca, 0 CocpInmu, '' DecpInmu");
    stringBuilder.AppendLine(", '' NupoInmu, 0 CobpInmu, '' DebpInmu, '' MapoInmu, 0 CapoInmu, '' UbpoInmu, 0 ColpInmu");
    stringBuilder.AppendLine(", i.DISTRITO DelpInmu, 0 CoppInmu");
    stringBuilder.AppendLine(", NULL FeesInmu, 0 SupeInmu, 0 SutiInmu, 0 SucuInmu, 0 SudeInmu, 0 SuscInmu, 0 SucmInmu");
    stringBuilder.AppendLine(", 0 PohoInmu, 0 SuprInmu, 0 SusuInmu, 0 SubaInmu, 0 SuenInmu, 0 CodiEsin, 0 CultInmu, 0 EsquInmu");
    stringBuilder.AppendLine(", 0 CodiExce, NULL FfexInmu, '' ExexInmu");
    stringBuilder.AppendLine(", '' MoexInmu, 0 BonoInmu, 0 NudoBono, 0 ImboInmu");
    stringBuilder.AppendLine(", IFNULL(i.OBSERVACIONES,'') ObseInmu, 0 PeriInmu, 0 BimeInmu, 0 CodiRuta, 0 CodiZoin");
    stringBuilder.AppendLine(", 'miginmu' AltaUsua");
    stringBuilder.AppendLine(", migracion.fnConvFecha(i.BAJA) BajaFeho");
    stringBuilder.AppendLine(", IFNULL(i.`MOTIVO BAJA`,'') BajaMoti");
    stringBuilder.AppendLine("FROM migracion.inmueble i");
    return true;
  }

  public bool CorregirRelaciones()
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<RelaMigra> relaMigraList = new List<RelaMigra>();
    stringBuilder.AppendLine("SELECT *");
    stringBuilder.AppendLine("FROM recaudacion.relacion");
    stringBuilder.AppendLine("WHERE CuenCtct IN (xxxxxxxxxxx)");
    stringBuilder.AppendLine("ORDER BY CuenCtct, NumeRela");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        relaMigraList.Add(new RelaMigra()
        {
          CucuPers = nfoGovReader.readLong("CucuPers"),
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          CuenCtct = nfoGovReader.readString("CuenCtct"),
          NumeRela = nfoGovReader.readInt("NumeRela"),
          TipoRela = nfoGovReader.readString("TipoRela"),
          FealRela = nfoGovReader.readDateTime("FealRela"),
          FebaRela = nfoGovReader.readDateTime("FebaRela")
        });
    }
    nfoGovReader.Close();
    string str = "";
    foreach (RelaMigra relaMigra in relaMigraList)
    {
      if (str != relaMigra.CuenCtct && relaMigra.FebaRela == DateTime.MinValue)
      {
        this.conn.executeNonQuery($"UPDATE recaudacion.relacion\tSET\tTipoRela='Titular' WHERE CucuPers={relaMigra.CucuPers.ToString()} AND CodiOfic=1 AND CuenCtct='{relaMigra.CuenCtct}' AND NumeRela={relaMigra.NumeRela.ToString()}");
        str = relaMigra.CuenCtct;
      }
    }
    return true;
  }
}
