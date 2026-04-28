// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpPersona
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Reportes;
using InfoGov.Plugins.Infogov.Reportes.DatosFijos.Persona;
using InfoGov.Plugins.Infogov.Reportes.Personas;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpPersona : 
  Expert,
  EntityExpert<InfoGov.Plugins.Infogov.Entidades.Persona>,
  IEntityExpert,
  GridExpert,
  SearchExpert<InfoGov.Plugins.Infogov.Entidades.Persona>,
  ISearchExpert
{
  public ExpPersona()
    : base("infogov")
  {
  }

  public InfoGov.Plugins.Infogov.Entidades.Persona CreateEntity() => new InfoGov.Plugins.Infogov.Entidades.Persona();

  public InfoGov.Plugins.Infogov.Entidades.Persona GetEntity(ID id)
  {
    return this.getEntity<InfoGov.Plugins.Infogov.Entidades.Persona>($"SELECT * FROM persona WHERE CucuPers != 0 AND CucuPers={id.GetString("CucuPers")};", new System.Func<InfoGovReader, InfoGov.Plugins.Infogov.Entidades.Persona>(this.readEntity));
  }

  public virtual InfoGov.Plugins.Infogov.Entidades.Persona readEntity(InfoGovReader dr)
  {
    InfoGov.Plugins.Infogov.Entidades.Persona enti = new InfoGov.Plugins.Infogov.Entidades.Persona()
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
    if (PARAMS.Municipio != "Maipú")
    {
      enti.CodiEsci = dr.readShort("CodiEsci");
      enti.CodiPofi = dr.readShort("CodiPofi");
      enti.CocrPers = dr.readInt("CocrPers");
      enti.NurePers = dr.readInt("NurePers");
      enti.CobrPers = dr.readShort("CobrPers");
      enti.DebrPers = dr.readString("DebrPers");
      enti.MarePers = dr.readString("MarePers");
      enti.CarePers = dr.readString("CarePers");
      enti.UbrePers = dr.readString("UbrePers");
      enti.ColrPers = dr.readShort("ColrPers");
      enti.DelrPers = dr.readString("DelrPers");
      enti.CoprPers = dr.readString("CoprPers");
      enti.CodiLoca = dr.readInt("ColrPers");
    }
    if (PARAMS.Municipio != "Maipú" && PARAMS.Municipio != "Rivadavia" && PARAMS.Municipio != "SantaRosa")
    {
      enti.CuitPers = dr.readString("CuitPers");
      if (PARAMS.Municipio != "SanCarlos")
      {
        enti.NaciPers = dr.readString("NaciPers");
        enti.FefaPers = dr.readDateTime("FefaPers");
      }
    }
    if (PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "SantaRosa")
      enti.DptoPers = dr.readString("DptoPers");
    if (PARAMS.Municipio == "Tunuyán")
      enti.CodiCond = dr.readShort("CodiCond");
    if (PARAMS.Municipio == "SanMartín")
    {
      enti.DetaProv = dr.readString("DetaProv");
      enti.FallPers = dr.readBool("FallPers");
    }
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public void cargarTelefonos(InfoGov.Plugins.Infogov.Entidades.Persona enti)
  {
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM telefono WHERE CucuPers=" + enti.CucuPers.ToString());
    if (dr != null && dr.HasRows)
    {
      while (dr.Read())
      {
        Telefono telefono = new Telefono();
        telefono.CucuPers = dr.readLong("CucuPers");
        telefono.CodiTele = dr.readInt("CodiTele");
        telefono.NumeTele = dr.readString("NumeTele");
        telefono.TipoTele = (TipoTelefono) dr.readInt("TipoTele");
        telefono.DetaTele = dr.readString("DetaTele");
        this.readAuditory((Entity) enti, dr);
        enti.Telefonos.Add(telefono);
      }
    }
    dr?.Close();
  }

  public List<Telefono> cargarTelefonos(long CucuPers)
  {
    List<Telefono> telefonoList = new List<Telefono>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM telefono WHERE CucuPers=" + CucuPers.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        telefonoList.Add(new Telefono()
        {
          CucuPers = nfoGovReader.readLong(nameof (CucuPers)),
          CodiTele = nfoGovReader.readInt("CodiTele"),
          NumeTele = nfoGovReader.readString("NumeTele"),
          TipoTele = (TipoTelefono) nfoGovReader.readInt("TipoTele"),
          DetaTele = nfoGovReader.readString("DetaTele")
        });
    }
    nfoGovReader?.Close();
    return telefonoList;
  }

  public void cargarDomicilio(InfoGov.Plugins.Infogov.Entidades.Persona enti)
  {
    if (!(PARAMS.Municipio != "Guaymallén"))
      return;
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM persona WHERE CucuPers={enti.id.GetString("CucuPers")};");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        if (PARAMS.Municipio != "SanMartín" && PARAMS.Municipio != "SantaRosa" && PARAMS.Municipio != "Tupungato" && PARAMS.Municipio != "Alvear" && PARAMS.Municipio != "Tunuyán" && PARAMS.Municipio != "Malargüe")
          enti.CodiCall = nfoGovReader.readInt("CodiCall");
        if (PARAMS.Municipio != "Alvear" && PARAMS.Municipio != "Tunuyán" && PARAMS.Municipio != "Tupungato" && PARAMS.Municipio != "Malargüe" && PARAMS.Municipio != "SanMartín")
        {
          enti.DecaPers = nfoGovReader.readString("DecaPers");
          enti.PisoPers = nfoGovReader.readString("PisoPers");
          enti.DptoPers = nfoGovReader.readString("DptoPers");
          enti.LotePers = nfoGovReader.readString("LotePers");
          enti.ManzPers = nfoGovReader.readString("ManzPers");
          enti.CasaPers = nfoGovReader.readString("CasaPers");
          enti.CodiBarr = nfoGovReader.readInt("CodiBarr");
          enti.DebaPers = nfoGovReader.readString("DebaPers");
          enti.CodiDepa = nfoGovReader.readInt("CodiDepa");
          enti.DedePers = nfoGovReader.readString("DedePers");
          enti.CodiDist = nfoGovReader.readInt("CodiDist");
          enti.DediPers = nfoGovReader.readString("DediPers");
          enti.DeloPers = nfoGovReader.readString("DeloPers");
          enti.CopoPers = nfoGovReader.readString("CopoPers");
          enti.CodiProv = nfoGovReader.readInt("CodiProv");
          enti.DeprPers = nfoGovReader.readString("DeprPers");
        }
        if (PARAMS.Municipio != "Maipú")
          enti.CodiLoca = nfoGovReader.readInt("ColrPers");
      }
    }
    nfoGovReader?.Close();
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(InfoGov.Plugins.Infogov.Entidades.Persona entity)
  {
    return this.CanActivate(entity.id);
  }

  public bool CanDeactivate(InfoGov.Plugins.Infogov.Entidades.Persona entity)
  {
    return this.CanDeactivate(entity.id);
  }

  public bool CanDelete(InfoGov.Plugins.Infogov.Entidades.Persona entity)
  {
    return this.CanDelete(entity.id);
  }

  public InfoGov.Plugins.Infogov.Entidades.Persona Find(Filter filter, bool onlyActive)
  {
    InfoGov.Plugins.Infogov.Entidades.Persona entity = this.findEntity<InfoGov.Plugins.Infogov.Entidades.Persona>("SELECT * FROM infogov.persona " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL(onlyActive)), new System.Func<InfoGovReader, InfoGov.Plugins.Infogov.Entidades.Persona>(this.readEntity));
    if (entity != null && PARAMS.Municipio == "Maipú")
      this.cargarTelefonos(entity);
    return entity;
  }

  public bool SaveOnDB(InfoGov.Plugins.Infogov.Entidades.Persona entity)
  {
    return this.conn.executeNonQuery(this.getSQL(entity));
  }

  public virtual string getSQL(InfoGov.Plugins.Infogov.Entidades.Persona enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        if (PARAMS.Municipio == "SantaRosa" || PARAMS.Municipio == "Alvear")
        {
          string[] strArray = new string[55];
          strArray[0] = " INSERT INTO infogov.persona \t(CucuPers, CcokPers, DetaPers, JuriPers, SexoPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi, CocrPers, DecrPers, NurePers, CobrPers, DebrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers, NaciPers, FefaPers, DptoPers, AltaUsua, AltaFeho)  VALUES (";
          strArray[1] = enti.CucuPers.ToString();
          strArray[2] = ", 1, '";
          strArray[3] = enti.DetaPers.Trim();
          strArray[4] = "', ";
          strArray[5] = enti.JuriPers.ToString();
          strArray[6] = ", ";
          strArray[7] = enti.SexoPers.ToString();
          strArray[8] = ", '";
          strArray[9] = enti.TelePers;
          strArray[10] = "', '";
          strArray[11] = enti.CeluPers;
          strArray[12] = "', '";
          strArray[13] = enti.FaxsPers;
          strArray[14] = "', '";
          strArray[15] = enti.MailPers.Trim();
          strArray[16 /*0x10*/] = "', ";
          short num = enti.CodiTido;
          strArray[17] = num.ToString();
          strArray[18] = ", ";
          strArray[19] = enti.NudoPers.ToString();
          strArray[20] = ", ";
          strArray[21] = this.sqlDate(enti.FenaPers, false);
          strArray[22] = ", ";
          num = enti.CodiEsci;
          strArray[23] = num.ToString();
          strArray[24] = ", ";
          num = enti.CodiPofi;
          strArray[25] = num.ToString();
          strArray[26] = ", ";
          strArray[27] = enti.CocrPers.ToString();
          strArray[28] = ", '";
          strArray[29] = enti.DecrPers;
          strArray[30] = "', ";
          strArray[31 /*0x1F*/] = enti.NurePers.ToString();
          strArray[32 /*0x20*/] = ", ";
          num = enti.CobrPers;
          strArray[33] = num.ToString();
          strArray[34] = ", '";
          strArray[35] = enti.DebrPers;
          strArray[36] = "', '";
          strArray[37] = enti.MarePers;
          strArray[38] = "', '";
          strArray[39] = enti.CarePers;
          strArray[40] = "', '";
          strArray[41] = enti.UbrePers;
          strArray[42] = "', ";
          num = enti.ColrPers;
          strArray[43] = num.ToString();
          strArray[44] = ", '";
          strArray[45] = enti.DelrPers;
          strArray[46] = "', '";
          strArray[47] = enti.CoprPers;
          strArray[48 /*0x30*/] = "', '";
          strArray[49] = enti.NaciPers;
          strArray[50] = "', null, '";
          strArray[51] = enti.DptoPers;
          strArray[52] = "', '";
          strArray[53] = this.usuario;
          strArray[54] = "', NOW());";
          sql = string.Concat(strArray);
          break;
        }
        switch (PARAMS.Municipio)
        {
          case "Tunuyán":
            string[] strArray1 = new string[57];
            strArray1[0] = " INSERT INTO infogov.persona \t(CucuPers, CcokPers, DetaPers, JuriPers, SexoPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi, CocrPers, DecrPers, NurePers, CobrPers, DebrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers, NaciPers, FefaPers, DptoPers, CodiCond, AltaUsua, AltaFeho)  VALUES (";
            strArray1[1] = enti.CucuPers.ToString();
            strArray1[2] = ", 1, '";
            strArray1[3] = enti.DetaPers.Trim();
            strArray1[4] = "', ";
            strArray1[5] = enti.JuriPers.ToString();
            strArray1[6] = ", ";
            strArray1[7] = enti.SexoPers.ToString();
            strArray1[8] = ", '";
            strArray1[9] = enti.TelePers;
            strArray1[10] = "', '";
            strArray1[11] = enti.CeluPers;
            strArray1[12] = "', '";
            strArray1[13] = enti.FaxsPers;
            strArray1[14] = "', '";
            strArray1[15] = enti.MailPers.Trim();
            strArray1[16 /*0x10*/] = "', ";
            short num1 = enti.CodiTido;
            strArray1[17] = num1.ToString();
            strArray1[18] = ", ";
            strArray1[19] = enti.NudoPers.ToString();
            strArray1[20] = ", ";
            strArray1[21] = this.sqlDate(enti.FenaPers, false);
            strArray1[22] = ", ";
            num1 = enti.CodiEsci;
            strArray1[23] = num1.ToString();
            strArray1[24] = ", ";
            num1 = enti.CodiPofi;
            strArray1[25] = num1.ToString();
            strArray1[26] = ", ";
            strArray1[27] = enti.CocrPers.ToString();
            strArray1[28] = ", '";
            strArray1[29] = enti.DecrPers;
            strArray1[30] = "', ";
            strArray1[31 /*0x1F*/] = enti.NurePers.ToString();
            strArray1[32 /*0x20*/] = ", ";
            num1 = enti.CobrPers;
            strArray1[33] = num1.ToString();
            strArray1[34] = ", '";
            strArray1[35] = enti.DebrPers;
            strArray1[36] = "', '";
            strArray1[37] = enti.MarePers;
            strArray1[38] = "', '";
            strArray1[39] = enti.CarePers;
            strArray1[40] = "', '";
            strArray1[41] = enti.UbrePers;
            strArray1[42] = "', ";
            num1 = enti.ColrPers;
            strArray1[43] = num1.ToString();
            strArray1[44] = ", '";
            strArray1[45] = enti.DelrPers;
            strArray1[46] = "', '";
            strArray1[47] = enti.CoprPers;
            strArray1[48 /*0x30*/] = "', '";
            strArray1[49] = enti.NaciPers;
            strArray1[50] = "', null, '";
            strArray1[51] = enti.DptoPers;
            strArray1[52] = "', ";
            num1 = enti.CodiCond;
            strArray1[53] = num1.ToString();
            strArray1[54] = ", '";
            strArray1[55] = this.usuario;
            strArray1[56] = "', NOW());";
            sql = string.Concat(strArray1);
            break;
          case "SanMartín":
            sql = $" INSERT IGNORE INTO infogov.persona \t(CucuPers, CcokPers, DetaPers, JuriPers, FallPers, SexoPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi, CocrPers, DecrPers, NurePers, CobrPers, DebrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers, CuitPers, NaciPers, FefaPers, DetaProv, AltaUsua, AltaFeho)  VALUES ({enti.CucuPers.ToString()}, 1, '{enti.DetaPers.Trim()}', {enti.JuriPers.ToString()}, {this.sqlBool(enti.FallPers)}, {enti.SexoPers.ToString()}, '{enti.TelePers}', '{enti.CeluPers}', '{enti.FaxsPers}', '{enti.MailPers.Trim()}', {enti.CodiTido.ToString()}, {enti.NudoPers.ToString()}, {this.sqlDate(enti.FenaPers, false)}, {enti.CodiEsci.ToString()}, {enti.CodiPofi.ToString()}, {enti.CocrPers.ToString()}, '{enti.DecrPers}', {enti.NurePers.ToString()}, {enti.CobrPers.ToString()}, '{enti.DebrPers}', '{enti.MarePers}', '{enti.CarePers}', '{enti.UbrePers}', {enti.ColrPers.ToString()}, '{enti.DelrPers}', '{enti.CoprPers}', '{enti.CuitPers}', '{enti.NaciPers}', null, '{enti.DetaProv.Trim()}', '{this.usuario}', NOW());";
            break;
          case "Maipú":
            string[] strArray2 = new string[75];
            strArray2[0] = "INSERT IGNORE INTO infogov.persona (CucuPers, CcokPers, NudoPers, FenaPers, FealPers,\t\t\t\t\t\t\t\t\tDetaPers, CatePers, CodiEsta, TipoPers, FictPers, DecpPers, DecrPers,\t\t\t\t\t\t\t\t\tTelePers, CeluPers, FaxsPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tMailPers, JuriPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiProv, SexoPers, CodiTido,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiCall, DecaPers, NumePers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPisoPers, LotePers, DptoPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiBarr, DebaPers, ManzPers, CasaPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiLoca, DeloPers, CodiDepa, DedePers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tCodiDist, DediPers, CopoPers,\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t DeprPers, NurePers, UbrePers, DelrPers, CodiEsci, CodiPofi, AltaUsua) VALUES (";
            strArray2[1] = enti.CucuPers.ToString();
            strArray2[2] = ", 1, ";
            int num2 = enti.NudoPers;
            strArray2[3] = num2.ToString();
            strArray2[4] = ", ";
            strArray2[5] = this.sqlDate(enti.FenaPers, false);
            strArray2[6] = ", NOW(), '";
            strArray2[7] = enti.DetaPers.Trim();
            strArray2[8] = "', '', 1, 'P', 'N', '', '";
            strArray2[9] = enti.DecrPers.Trim();
            strArray2[10] = "', '";
            strArray2[11] = enti.TelePers;
            strArray2[12] = "', '";
            strArray2[13] = enti.CeluPers;
            strArray2[14] = "', '";
            strArray2[15] = enti.FaxsPers;
            strArray2[16 /*0x10*/] = "', '";
            strArray2[17] = enti.MailPers.Trim();
            strArray2[18] = "', ";
            strArray2[19] = this.sqlBool(enti.JuriPers);
            strArray2[20] = ", ";
            num2 = enti.CodiProv;
            strArray2[21] = num2.ToString();
            strArray2[22] = ", ";
            strArray2[23] = this.sqlBool(enti.SexoPers);
            strArray2[24] = ", ";
            strArray2[25] = enti.CodiTido.ToString();
            strArray2[26] = ", ";
            num2 = enti.CocrPers;
            strArray2[27] = num2.ToString();
            strArray2[28] = ", '";
            strArray2[29] = enti.DecrPers;
            strArray2[30] = "', ";
            num2 = enti.NurePers;
            strArray2[31 /*0x1F*/] = num2.ToString();
            strArray2[32 /*0x20*/] = ", '";
            strArray2[33] = enti.PisoPers;
            strArray2[34] = "', '";
            strArray2[35] = enti.LotePers;
            strArray2[36] = "', '";
            strArray2[37] = enti.DptoPers;
            strArray2[38] = "', ";
            strArray2[39] = enti.CobrPers.ToString();
            strArray2[40] = ", '";
            strArray2[41] = enti.DebrPers;
            strArray2[42] = "', '";
            strArray2[43] = enti.MarePers;
            strArray2[44] = "', '";
            strArray2[45] = enti.CarePers;
            strArray2[46] = "', ";
            num2 = enti.CodiLoca;
            strArray2[47] = num2.ToString();
            strArray2[48 /*0x30*/] = ", '";
            strArray2[49] = enti.DelrPers;
            strArray2[50] = "', ";
            num2 = enti.CodiDepa;
            strArray2[51] = num2.ToString();
            strArray2[52] = ", '";
            strArray2[53] = enti.DedePers;
            strArray2[54] = "', ";
            num2 = enti.CodiDist;
            strArray2[55] = num2.ToString();
            strArray2[56] = ", '";
            strArray2[57] = enti.DediPers;
            strArray2[58] = "', '";
            strArray2[59] = enti.CoprPers;
            strArray2[60] = "', '";
            strArray2[61] = enti.DeprPers;
            strArray2[62] = "', ";
            num2 = enti.NurePers;
            strArray2[63 /*0x3F*/] = num2.ToString();
            strArray2[64 /*0x40*/] = ", '";
            strArray2[65] = enti.UbrePers;
            strArray2[66] = "', '";
            strArray2[67] = enti.DelrPers;
            strArray2[68] = "', ";
            strArray2[69] = enti.CodiEsci.ToString();
            strArray2[70] = ", ";
            strArray2[71] = enti.CodiPofi.ToString();
            strArray2[72] = ", '";
            strArray2[73] = this.usuario;
            strArray2[74] = "');";
            sql = string.Concat(strArray2);
            break;
          default:
            string[] strArray3 = new string[55];
            strArray3[0] = " INSERT INTO infogov.persona \t(CucuPers, CcokPers, DetaPers, JuriPers, SexoPers, TelePers, CeluPers, FaxsPers, MailPers, CodiTido, NudoPers, FenaPers, CodiEsci, CodiPofi, CocrPers, DecrPers, NurePers, CobrPers, DebrPers, MarePers, CarePers, UbrePers, ColrPers, DelrPers, CoprPers, CuitPers, NaciPers, FefaPers, AltaUsua, AltaFeho)  VALUES (";
            strArray3[1] = enti.CucuPers.ToString();
            strArray3[2] = ", 1, '";
            strArray3[3] = enti.DetaPers.Trim();
            strArray3[4] = "', ";
            strArray3[5] = enti.JuriPers.ToString();
            strArray3[6] = ", ";
            strArray3[7] = enti.SexoPers.ToString();
            strArray3[8] = ", '";
            strArray3[9] = enti.TelePers;
            strArray3[10] = "', '";
            strArray3[11] = enti.CeluPers;
            strArray3[12] = "', '";
            strArray3[13] = enti.FaxsPers;
            strArray3[14] = "', '";
            strArray3[15] = enti.MailPers.Trim();
            strArray3[16 /*0x10*/] = "', ";
            short num3 = enti.CodiTido;
            strArray3[17] = num3.ToString();
            strArray3[18] = ", ";
            strArray3[19] = enti.NudoPers.ToString();
            strArray3[20] = ", ";
            strArray3[21] = this.sqlDate(enti.FenaPers, false);
            strArray3[22] = ", ";
            num3 = enti.CodiEsci;
            strArray3[23] = num3.ToString();
            strArray3[24] = ", ";
            num3 = enti.CodiPofi;
            strArray3[25] = num3.ToString();
            strArray3[26] = ", ";
            strArray3[27] = enti.CocrPers.ToString();
            strArray3[28] = ", '";
            strArray3[29] = enti.DecrPers;
            strArray3[30] = "', ";
            strArray3[31 /*0x1F*/] = enti.NurePers.ToString();
            strArray3[32 /*0x20*/] = ", ";
            num3 = enti.CobrPers;
            strArray3[33] = num3.ToString();
            strArray3[34] = ", '";
            strArray3[35] = enti.DebrPers;
            strArray3[36] = "', '";
            strArray3[37] = enti.MarePers;
            strArray3[38] = "', '";
            strArray3[39] = enti.CarePers;
            strArray3[40] = "', '";
            strArray3[41] = enti.UbrePers;
            strArray3[42] = "', ";
            num3 = enti.ColrPers;
            strArray3[43] = num3.ToString();
            strArray3[44] = ", '";
            strArray3[45] = enti.DelrPers;
            strArray3[46] = "', '";
            strArray3[47] = enti.CoprPers;
            strArray3[48 /*0x30*/] = "', '";
            strArray3[49] = enti.CuitPers;
            strArray3[50] = "', '";
            strArray3[51] = enti.NaciPers;
            strArray3[52] = "', null, '";
            strArray3[53] = this.usuario;
            strArray3[54] = "', NOW());";
            sql = string.Concat(strArray3);
            break;
        }
        break;
      case EntityStatus.Modified:
        if (PARAMS.Municipio == Municipio.Guaymallén.ToString())
        {
          string[] strArray4 = new string[51]
          {
            "UPDATE infogov.persona SET DetaPers=UPPER('",
            enti.DetaPers.Trim(),
            "'), MailPers=LOWER('",
            enti.MailPers.Trim(),
            "'), TelePers='",
            enti.TelePers,
            "', CeluPers='",
            enti.CeluPers,
            "', FaxsPers='",
            enti.FaxsPers,
            "', JuriPers=",
            this.sqlBool(enti.JuriPers),
            ", SexoPers=",
            this.sqlBool(enti.SexoPers),
            ", CodiTido=",
            enti.CodiTido.ToString(),
            ", NudoPers=",
            enti.NudoPers.ToString(),
            ", FenaPers=",
            this.sqlDate(enti.FenaPers, false),
            ", CodiEsci=",
            enti.CodiEsci.ToString(),
            ", CodiPofi=",
            enti.CodiPofi.ToString(),
            ", CocrPers=",
            enti.CocrPers.ToString(),
            ", DecrPers='",
            enti.DecrPers,
            "', NurePers=",
            enti.NurePers.ToString(),
            ", CobrPers = ",
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
          };
          short num4 = enti.CobrPers;
          strArray4[31 /*0x1F*/] = num4.ToString();
          strArray4[32 /*0x20*/] = ", DebrPers = '";
          strArray4[33] = enti.DebrPers;
          strArray4[34] = "', MarePers = '";
          strArray4[35] = enti.MarePers;
          strArray4[36] = "', CarePers = '";
          strArray4[37] = enti.CarePers;
          strArray4[38] = "', UbrePers = '";
          strArray4[39] = enti.UbrePers;
          strArray4[40] = "', ColrPers = ";
          num4 = enti.ColrPers;
          strArray4[41] = num4.ToString();
          strArray4[42] = ", DelrPers = '";
          strArray4[43] = enti.DelrPers;
          strArray4[44] = "', CoprPers = '";
          strArray4[45] = enti.CoprPers;
          strArray4[46] = "', ModiUsua='";
          strArray4[47] = this.usuario;
          strArray4[48 /*0x30*/] = "', ModiFeho=NOW() WHERE CucuPers=";
          strArray4[49] = enti.CucuPers.ToString();
          strArray4[50] = ";";
          sql = string.Concat(strArray4);
          break;
        }
        int num5;
        switch (PARAMS.Municipio)
        {
          case "Alvear":
            string[] strArray5 = new string[53]
            {
              "UPDATE infogov.persona SET DetaPers=UPPER('",
              enti.DetaPers.Trim(),
              "'), MailPers='",
              enti.MailPers.Trim(),
              "', TelePers='",
              enti.TelePers,
              "', CeluPers='",
              enti.CeluPers,
              "', FaxsPers='",
              enti.FaxsPers,
              "', CodiEsci=",
              enti.CodiEsci.ToString(),
              ", CodiPofi=",
              enti.CodiPofi.ToString(),
              ", JuriPers=",
              this.sqlBool(enti.JuriPers),
              ", SexoPers=",
              this.sqlBool(enti.SexoPers),
              ", CodiTido=",
              enti.CodiTido.ToString(),
              ", NudoPers=",
              enti.NudoPers.ToString(),
              ", FenaPers=",
              this.sqlDate(enti.FenaPers, false),
              ", CocrPers=",
              enti.CocrPers.ToString(),
              ", DecrPers='",
              enti.DecrPers,
              "', NurePers=",
              enti.NurePers.ToString(),
              ", CobrPers=",
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null
            };
            short num6 = enti.CobrPers;
            strArray5[31 /*0x1F*/] = num6.ToString();
            strArray5[32 /*0x20*/] = ", DebrPers='";
            strArray5[33] = enti.DebrPers;
            strArray5[34] = "', MarePers='";
            strArray5[35] = enti.MarePers;
            strArray5[36] = "', CarePers='";
            strArray5[37] = enti.CarePers;
            strArray5[38] = "', UbrePers='";
            strArray5[39] = enti.UbrePers;
            strArray5[40] = "', ColrPers=";
            num6 = enti.ColrPers;
            strArray5[41] = num6.ToString();
            strArray5[42] = ", DelrPers='";
            strArray5[43] = enti.DelrPers;
            strArray5[44] = "', DptoPers='";
            strArray5[45] = enti.DptoPers;
            strArray5[46] = "', NaciPers='";
            strArray5[47] = enti.NaciPers;
            strArray5[48 /*0x30*/] = "', ModiUsua='";
            strArray5[49] = this.usuario;
            strArray5[50] = "', ModiFeho=NOW() WHERE CucuPers=";
            strArray5[51] = enti.CucuPers.ToString();
            strArray5[52] = ";";
            sql = string.Concat(strArray5);
            goto label_24;
          case "Tupungato":
          case "Malargüe":
            num5 = 1;
            break;
          default:
            num5 = PARAMS.Municipio == "SanMartín" ? 1 : 0;
            break;
        }
        if (num5 != 0)
        {
          sql = $"UPDATE infogov.persona SET DetaPers=UPPER('{enti.DetaPers.Trim()}'), MailPers='{enti.MailPers.Trim()}', TelePers='{enti.TelePers}', CeluPers='{enti.CeluPers}', FaxsPers='{enti.FaxsPers}', CodiEsci={enti.CodiEsci.ToString()}, CodiPofi={enti.CodiPofi.ToString()}, JuriPers={this.sqlBool(enti.JuriPers)},{(PARAMS.Municipio == "SanMartín" ? $" FallPers = {this.sqlBool(enti.FallPers)}, " : string.Empty)} SexoPers={this.sqlBool(enti.SexoPers)}, CodiTido={enti.CodiTido.ToString()}, NudoPers={enti.NudoPers.ToString()}, FenaPers={this.sqlDate(enti.FenaPers, false)}, CocrPers={enti.CocrPers.ToString()}, DecrPers='{enti.DecrPers}', NurePers={enti.NurePers.ToString()}, CobrPers={enti.CobrPers.ToString()}, DebrPers='{enti.DebrPers}', MarePers='{enti.MarePers}', CarePers='{enti.CarePers}', UbrePers='{enti.UbrePers}', ColrPers={enti.ColrPers.ToString()}, DelrPers='{enti.DelrPers}', CoprPers = '{enti.CoprPers}', ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CucuPers={enti.CucuPers.ToString()};";
          break;
        }
        switch (PARAMS.Municipio)
        {
          case "Tunuyán":
            string[] strArray6 = new string[53]
            {
              "UPDATE infogov.persona SET DetaPers=UPPER('",
              enti.DetaPers.Trim(),
              "'), MailPers='",
              enti.MailPers.Trim(),
              "', TelePers='",
              enti.TelePers,
              "', CeluPers='",
              enti.CeluPers,
              "', FaxsPers='",
              enti.FaxsPers,
              "', CodiEsci=",
              enti.CodiEsci.ToString(),
              ", CodiPofi=",
              enti.CodiPofi.ToString(),
              ", JuriPers=",
              this.sqlBool(enti.JuriPers),
              ", SexoPers=",
              this.sqlBool(enti.SexoPers),
              ", CodiTido=",
              enti.CodiTido.ToString(),
              ", NudoPers=",
              enti.NudoPers.ToString(),
              ", FenaPers=",
              this.sqlDate(enti.FenaPers, false),
              ", CocrPers=",
              enti.CocrPers.ToString(),
              ", DecrPers='",
              enti.DecrPers,
              "', NurePers=",
              enti.NurePers.ToString(),
              ", CobrPers=",
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null
            };
            short num7 = enti.CobrPers;
            strArray6[31 /*0x1F*/] = num7.ToString();
            strArray6[32 /*0x20*/] = ", DebrPers='";
            strArray6[33] = enti.DebrPers;
            strArray6[34] = "', MarePers='";
            strArray6[35] = enti.MarePers;
            strArray6[36] = "', CarePers='";
            strArray6[37] = enti.CarePers;
            strArray6[38] = "', UbrePers='";
            strArray6[39] = enti.UbrePers;
            strArray6[40] = "', ColrPers=";
            num7 = enti.ColrPers;
            strArray6[41] = num7.ToString();
            strArray6[42] = ", DelrPers='";
            strArray6[43] = enti.DelrPers;
            strArray6[44] = "', CoprPers = '";
            strArray6[45] = enti.CoprPers;
            strArray6[46] = "', CodiCond = ";
            num7 = enti.CodiCond;
            strArray6[47] = num7.ToString();
            strArray6[48 /*0x30*/] = ", ModiUsua='";
            strArray6[49] = this.usuario;
            strArray6[50] = "', ModiFeho=NOW() WHERE CucuPers=";
            strArray6[51] = enti.CucuPers.ToString();
            strArray6[52] = ";";
            sql = string.Concat(strArray6);
            break;
          case "SantaRosa":
            string[] strArray7 = new string[53]
            {
              "UPDATE infogov.persona SET DetaPers=UPPER('",
              enti.DetaPers.Trim(),
              "'), MailPers='",
              enti.MailPers.Trim(),
              "', TelePers='",
              enti.TelePers,
              "', CeluPers='",
              enti.CeluPers,
              "', FaxsPers='",
              enti.FaxsPers,
              "', CodiEsci=",
              enti.CodiEsci.ToString(),
              ", CodiPofi=",
              enti.CodiPofi.ToString(),
              ", JuriPers=",
              this.sqlBool(enti.JuriPers),
              ", SexoPers=",
              this.sqlBool(enti.SexoPers),
              ", CodiTido=",
              enti.CodiTido.ToString(),
              ", NudoPers=",
              enti.NudoPers.ToString(),
              ", FenaPers=",
              this.sqlDate(enti.FenaPers, false),
              ", CocrPers=",
              enti.CocrPers.ToString(),
              ", DecrPers='",
              enti.DecrPers,
              "', NurePers=",
              enti.NurePers.ToString(),
              ", CobrPers=",
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null,
              null
            };
            short num8 = enti.CobrPers;
            strArray7[31 /*0x1F*/] = num8.ToString();
            strArray7[32 /*0x20*/] = ", DebrPers='";
            strArray7[33] = enti.DebrPers;
            strArray7[34] = "', MarePers='";
            strArray7[35] = enti.MarePers;
            strArray7[36] = "', CarePers='";
            strArray7[37] = enti.CarePers;
            strArray7[38] = "', UbrePers='";
            strArray7[39] = enti.UbrePers;
            strArray7[40] = "', ColrPers=";
            num8 = enti.ColrPers;
            strArray7[41] = num8.ToString();
            strArray7[42] = ", DelrPers='";
            strArray7[43] = enti.DelrPers;
            strArray7[44] = "', CoprPers = '";
            strArray7[45] = enti.CoprPers;
            strArray7[46] = "', DptoPers='";
            strArray7[47] = enti.DptoPers;
            strArray7[48 /*0x30*/] = "', ModiUsua='";
            strArray7[49] = this.usuario;
            strArray7[50] = "', ModiFeho=NOW() WHERE CucuPers=";
            strArray7[51] = enti.CucuPers.ToString();
            strArray7[52] = ";";
            sql = string.Concat(strArray7);
            break;
          default:
            sql = $"UPDATE infogov.persona SET DetaPers=UPPER('{enti.DetaPers.Trim()}'), MailPers='{enti.MailPers.Trim()}', JuriPers={this.sqlBool(enti.JuriPers)}, SexoPers={this.sqlBool(enti.SexoPers)}, CodiTido={enti.CodiTido.ToString()}, NudoPers={enti.NudoPers.ToString()}, FenaPers={this.sqlDate(enti.FenaPers, false)}, ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CucuPers={enti.CucuPers.ToString()};";
            break;
        }
        break;
      case EntityStatus.Deleted:
        sql = $"DELETE FROM infogov.persona WHERE CucuPers={enti.CucuPers.ToString()};";
        if (PARAMS.Municipio == "Maipú")
        {
          sql = $"{sql} DELETE FROM infogov.telefono WHERE CucuPers={enti.CucuPers.ToString()};";
          break;
        }
        break;
      case EntityStatus.Activated:
        sql = $"UPDATE infogov.persona SET BajaUsua='', BajaFeho=NULL WHERE CucuPers={enti.CucuPers.ToString()};";
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE infogov.persona SET BajaUsua='{this.usuario}', BajaFeho=NOW() WHERE CucuPers={enti.CucuPers.ToString()};";
        break;
    }
label_24:
    return sql;
  }

  public List<Column> getGridColumns()
  {
    List<Column> gridColumns = new List<Column>();
    gridColumns.Add(new Column("CucuPers", "Cuit/Cuil"));
    gridColumns.Add(new Column("NudoPers", "Documento"));
    if (PARAMS.Municipio == "SanMartín")
      gridColumns.Add(new Column("FallPersStr", "Fallecida"));
    gridColumns.Add(new Column("DetaPers", "Apellido y Nombre", fill: true));
    return gridColumns;
  }

  public ID getGridID(DataGridViewRow row)
  {
    return new ID("CucuPers", (object) row.Cells[0].Value.ToString());
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CucuPers", "Cuit/Cuil", FilterMode.StartsWith),
      new FilterField("NudoPers", "Documento", FilterMode.Equal),
      new FilterField("DetaPers", "Apellido y Nombre", FilterMode.Contains, true)
    };
  }

  public Filter getInitialGridFilter()
  {
    return new Filter()
    {
      Items = {
        new FilterItem("persona.CucuPers", "Cuit", FilterMode.Contains, "")
      }
    };
  }

  public DataTable filterGridData(Filter filter)
  {
    string str1 = "SELECT CucuPers,NudoPers,DetaPers";
    if (PARAMS.Municipio == "SanMartín")
      str1 += " ,FallPers, IF(FallPers, 'Si', 'No') FallPersStr ";
    string str2 = $"{str1} FROM persona {(filter == null ? "WHERE 1=2" : filter.sqlWOL(wdotcomma: false))}";
    return this.conn.createDataTable(PARAMS.MunicipioID != Municipio.Maipú ? str2 + ";" : str2 + " LIMIT 250;");
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public InfoGov.Plugins.Infogov.Entidades.Persona getSearchEntity(DataGridViewRow row)
  {
    return this.GetEntity(this.getGridID(row));
  }

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public string ExisteCucu(string CucuPers)
  {
    return this.conn.executeString($"SELECT IFNULL(CONCAT(CucuPers,' - ',DetaPers),'') FROM infogov.persona WHERE CucuPers={CucuPers};", "");
  }

  public bool existepersona(long CucuPers)
  {
    return this.conn.executeBool("SELECT IF(COUNT(*)>0,1,0) FROM infogov.persona WHERE CucuPers = " + CucuPers.ToString());
  }

  private List<string> getTablasCucuPers()
  {
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT Concat(TABLE_SCHEMA,'.',TABLE_NAME) as Tabla FROM information_schema.`COLUMNS` WHERE COLUMN_NAME = 'CucuPers';");
    List<string> tablasCucuPers = new List<string>();
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        tablasCucuPers.Add(nfoGovReader.readString("Tabla"));
    }
    nfoGovReader?.Close();
    return tablasCucuPers;
  }

  public bool actualizarCucuPers(long CucuPersActual, long CucuPersNuevo)
  {
    StringBuilder stringBuilder1 = new StringBuilder();
    StringBuilder stringBuilder2 = new StringBuilder();
    long num = this.conn.executeLong($"SELECT CucuPers FROM infogov.persona WHERE CucuPers={CucuPersNuevo.ToString()};");
    if (PARAMS.Municipio != "Guaymallén")
    {
      stringBuilder1.AppendLine($"UPDATE recaudacion.inmueble SET CucuPers = '{CucuPersNuevo.ToString()}', ModiUsua = '{this.usuario}' WHERE inmueble.CucuPers = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.traninmu SET CucuVend = '{CucuPersNuevo.ToString()}' WHERE CucuVend = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.traninmu SET CucuComp = '{CucuPersNuevo.ToString()}' WHERE CucuComp = '{CucuPersActual.ToString()}';");
    }
    stringBuilder1.AppendLine($"UPDATE recaudacion.comercio SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE comercio.CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.deudvari SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE deudvari.CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.difunto SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE difunto.CucuPers = '{CucuPersActual.ToString()}';");
    if (PARAMS.Municipio != "LaPaz")
    {
      stringBuilder1.AppendLine($"UPDATE recaudacion.transito SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE transito.CucuPers = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.transito SET CodiTran = '{CucuPersNuevo.ToString()}' WHERE CodiTran = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.actatran SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    }
    if (PARAMS.Municipio == "Guaymallén")
    {
      stringBuilder1.AppendLine($"UPDATE recaudacion.publicidad SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE publicidad.CucuPers = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.antena SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE antena.CucuPers = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.tranante SET CucuVend = '{CucuPersNuevo.ToString()}' WHERE CucuVend = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.tranante SET CucuComp = '{CucuPersNuevo.ToString()}' WHERE CucuComp = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.tranpubl SET CucuVend = '{CucuPersNuevo.ToString()}' WHERE CucuVend = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.tranpubl SET CucuComp = '{CucuPersNuevo.ToString()}' WHERE CucuComp = '{CucuPersActual.ToString()}';");
    }
    if (PARAMS.Municipio == "SanMartín")
    {
      stringBuilder1.AppendLine($"UPDATE recaudacion.publicidad SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE publicidad.CucuPers = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.tranpubl SET CucuVend = '{CucuPersNuevo.ToString()}' WHERE CucuVend = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.tranpubl SET CucuComp = '{CucuPersNuevo.ToString()}' WHERE CucuComp = '{CucuPersActual.ToString()}';");
    }
    stringBuilder1.AppendLine($"UPDATE recaudacion.trancome SET CucuVend = '{CucuPersNuevo.ToString()}' WHERE CucuVend = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.trancome SET CucuComp = '{CucuPersNuevo.ToString()}' WHERE CucuComp = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.trandifu SET CucuVend = '{CucuPersNuevo.ToString()}' WHERE CucuVend = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.trandifu SET CucuComp = '{CucuPersNuevo.ToString()}' WHERE CucuComp = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.apremio SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.facipago SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.pago SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.boleto SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.liqutasa SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.liqucome SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.liquceme SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.inspcome SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.inspcoin SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    if (PARAMS.Municipio == "Tunuyan" || PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "Tupungato" || PARAMS.Municipio == "Malargüe" || PARAMS.Municipio == "SantaRosa" || PARAMS.Municipio == "SanMartín")
    {
      stringBuilder1.AppendLine($"UPDATE recaudacion.acta SET CucuInfr = '{CucuPersNuevo.ToString()}' WHERE CucuInfr = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.acta SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.acta SET CucuTest = '{CucuPersNuevo.ToString()}' WHERE CucuTest = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.acta SET CucuArti = '{CucuPersNuevo.ToString()}' WHERE CucuArti = '{CucuPersActual.ToString()}';");
    }
    if (PARAMS.Municipio == "Tunuyan" || PARAMS.Municipio == "Malargüe" || PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "SanMartín")
    {
      stringBuilder1.AppendLine($"UPDATE recaudacion.relacion SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.ctacte SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.ctactedeta SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.apremio SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.apredeta SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.boleto SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.detabole SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.pago SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.detapago SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder1.AppendLine($"UPDATE recaudacion.facipago SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
    }
    if (num > 0L)
      stringBuilder1.AppendLine($"DELETE FROM infogov.persona WHERE CucuPers = '{CucuPersActual.ToString()}';");
    else
      stringBuilder1.AppendLine($"UPDATE infogov.persona SET CucuPers = '{CucuPersNuevo.ToString()}', NudoPers = {CucuPersNuevo.ToString().Substring(2, 8)} , CcokPers = 1, ModiUsua = '{this.usuario}', Modifeho = now() WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"UPDATE recaudacion.relacion SET CucuPers = '{CucuPersNuevo.ToString()}' WHERE CucuPers = '{CucuPersActual.ToString()}';");
    stringBuilder1.AppendLine($"INSERT INTO aud_recaudacion.cambioscuit\t(CucuPersOrig, CucuPersNuevo, AltaUsua, AltaFeho) \tVALUES ({CucuPersActual.ToString()}, {CucuPersNuevo.ToString()}, '{this.usuario}', NOW());");
    return this.conn.executeNonQuery(stringBuilder1.ToString());
  }

  public bool actualizarCucuPersOtrosMuni(long CucuPersActual, long CucuPersNuevo)
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.conn.executeInt($"SELECT COUNT(*) FROM infogov.persona WHERE CucuPers={CucuPersNuevo};") > 0)
      stringBuilder.AppendLine($"DELETE FROM infogov.persona WHERE CucuPers = {CucuPersActual};");
    else
      stringBuilder.AppendLine($"UPDATE infogov.persona SET CucuPers = {CucuPersNuevo}, NudoPers = {CucuPersNuevo.ToString().Substring(2, 8)} , CcokPers = 1, ModiUsua = '{this.usuario}', Modifeho = NOW() WHERE CucuPers = {CucuPersActual};");
    if (PARAMS.Municipio != "Tupungato" && PARAMS.Municipio != "LaPaz")
    {
      if (this.conn.executeInt($"SELECT COUNT(*) FROM recaudacion.relacion WHERE CodiOfic = 5 AND CucuPers = {CucuPersNuevo} AND CuenCtct = '{CucuPersNuevo}';") > 0)
        stringBuilder.AppendLine($"DELETE FROM recaudacion.relacion WHERE CodiOfic = 5 AND CucuPers = {CucuPersActual} AND CuenCtct = '{CucuPersActual}';");
      else
        stringBuilder.AppendLine($"UPDATE recaudacion.relacion SET CuenCtct = '{CucuPersNuevo}' WHERE CodiOfic = 5 AND CucuPers = {CucuPersActual} AND CuenCtct = '{CucuPersActual}';");
      if (this.conn.executeInt($"SELECT COUNT(*) FROM recaudacion.transito WHERE CodiTran = '{CucuPersNuevo}' AND CucuPers = {CucuPersNuevo};") > 0)
        stringBuilder.AppendLine($"DELETE FROM recaudacion.transito WHERE CodiTran = '{CucuPersActual}' AND CucuPers = {CucuPersActual};");
      else
        stringBuilder.AppendLine($"UPDATE recaudacion.transito SET CodiTran = '{CucuPersNuevo}' WHERE CodiTran = '{CucuPersActual}' AND CucuPers = {CucuPersActual};");
      stringBuilder.AppendLine($"UPDATE recaudacion.apremio SET CuenCtct = '{CucuPersNuevo}', ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual}';");
      stringBuilder.AppendLine($"UPDATE recaudacion.apredeta SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder.AppendLine($"UPDATE recaudacion.facipago SET CuenCtct = '{CucuPersNuevo}', ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual}';");
      stringBuilder.AppendLine($"UPDATE recaudacion.pago SET CuenCtct = '{CucuPersNuevo}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual}';");
      stringBuilder.AppendLine($"UPDATE recaudacion.detapago SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder.AppendLine($"UPDATE recaudacion.boleto SET CuenCtct = '{CucuPersNuevo}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual}';");
      stringBuilder.AppendLine($"UPDATE recaudacion.detabole SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder.AppendLine($"UPDATE recaudacion.ctacte SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
      stringBuilder.AppendLine($"UPDATE recaudacion.ctactedeta SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
    }
    if (PARAMS.Municipio == "SanMartín")
      stringBuilder.AppendLine($"UPDATE recahisto.histoctacte SET CuenCtct = '{CucuPersNuevo.ToString()}' WHERE CodiOfic = 5 AND CuenCtct = '{CucuPersActual.ToString()}';");
    stringBuilder.AppendLine($"UPDATE recaudacion.inmueble SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE inmueble.CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.traninmu SET CucuVend = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuVend = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.traninmu SET CucuComp = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuComp = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.comercio SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE comercio.CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.comercio SET CucuCome = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE comercio.CucuCome = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.trancome SET CucuVend = {CucuPersNuevo.ToString()} WHERE CucuVend = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.trancome SET CucuComp = {CucuPersNuevo.ToString()} WHERE CucuComp = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.deudvari SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE deudvari.CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.difunto SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE difunto.CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.trandifu SET CucuVend = {CucuPersNuevo.ToString()} WHERE CucuVend = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.trandifu SET CucuComp = {CucuPersNuevo.ToString()} WHERE CucuComp = {CucuPersActual.ToString()};");
    if (PARAMS.Municipio == "SanMartín")
    {
      stringBuilder.AppendLine($"UPDATE recaudacion.publicidad SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
      stringBuilder.AppendLine($"UPDATE recaudacion.tranpubl SET CucuVend = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuVend = {CucuPersActual.ToString()};");
      stringBuilder.AppendLine($"UPDATE recaudacion.tranpubl SET CucuComp = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuComp = {CucuPersActual.ToString()};");
    }
    if (PARAMS.Municipio != "LaPaz")
    {
      stringBuilder.AppendLine($"UPDATE recaudacion.transito SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
      stringBuilder.AppendLine($"UPDATE recaudacion.actatran SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
    }
    stringBuilder.AppendLine($"UPDATE recaudacion.apremio SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.facipago SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.pago SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.boleto SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.liqutasa SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.liqucome SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.liquceme SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.inspcome SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.inspcoin SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    if (PARAMS.Municipio == "Tunuyán" || PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "Tupungato" || PARAMS.Municipio == "Malargüe" || PARAMS.Municipio == "SantaRosa" || PARAMS.Municipio == "SanMartín")
    {
      stringBuilder.AppendLine($"UPDATE recaudacion.acta SET CucuInfr = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuInfr = {CucuPersActual.ToString()};");
      stringBuilder.AppendLine($"UPDATE recaudacion.acta SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
      stringBuilder.AppendLine($"UPDATE recaudacion.acta SET CucuTest = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuTest = {CucuPersActual.ToString()};");
      stringBuilder.AppendLine($"UPDATE recaudacion.acta SET CucuArti = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuArti = {CucuPersActual.ToString()};");
    }
    stringBuilder.AppendLine($"UPDATE recaudacion.relacion SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"INSERT INTO aud_recaudacion.cambioscuit\t(CucuPersOrig, CucuPersNuevo, AltaUsua) VALUES ({CucuPersActual.ToString()}, {CucuPersNuevo.ToString()}, '{this.usuario}');");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool actualizarCucuPersTupungato(long CucuPersActual, long CucuPersNuevo)
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.conn.executeInt($"SELECT COUNT(*) FROM infogov.persona WHERE CucuPers={CucuPersNuevo};") > 0)
      stringBuilder.AppendLine($"DELETE FROM infogov.persona WHERE CucuPers = {CucuPersActual};");
    else
      stringBuilder.AppendLine($"UPDATE infogov.persona SET CucuPers = {CucuPersNuevo}, NudoPers = {CucuPersNuevo.ToString().Substring(2, 8)} , CcokPers = 1, ModiUsua = '{this.usuario}', Modifeho = NOW() WHERE CucuPers = {CucuPersActual};");
    stringBuilder.AppendLine($"UPDATE recaudacion.inmueble SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE inmueble.CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.traninmu SET CucuVend = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuVend = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.traninmu SET CucuComp = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuComp = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.comercio SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE comercio.CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.comercio SET CucuCome = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE comercio.CucuCome = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.trancome SET CucuVend = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuVend = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.trancome SET CucuComp = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuComp = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.deudvari SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE deudvari.CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.difunto SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE difunto.CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.trandifu SET CucuVend = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuVend = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.trandifu SET CucuComp = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuComp = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.transito SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.actatran SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.apremio SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.facipago SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.pago SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.boleto SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.liqutasa SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.liqucome SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.liquceme SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.inspcome SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.inspcoin SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.acta SET CucuInfr = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuInfr = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.acta SET CucuPers = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.acta SET CucuTest = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuTest = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.acta SET CucuArti = {CucuPersNuevo.ToString()}, ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE CucuArti = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"UPDATE recaudacion.relacion SET CucuPers = {CucuPersNuevo.ToString()} WHERE CucuPers = {CucuPersActual.ToString()};");
    stringBuilder.AppendLine($"INSERT INTO aud_recaudacion.cambioscuit\t(CucuPersOrig, CucuPersNuevo, AltaUsua) VALUES ({CucuPersActual.ToString()}, {CucuPersNuevo.ToString()}, '{this.usuario}');");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public DataTable getRelaciones(long cucupers)
  {
    return this.conn.createDataTable($" SELECT o.DetaOfic Oficina, r.CuenCtct Cuenta , r.CucuPers Cuit , p.DetaPers Nombre, r.TipoRela Relacion from recaudacion.relacion r  INNER JOIN recaudacion.oficina o ON o.CodiOfic = r.CodiOfic  INNER JOIN infogov.persona p ON p.CucuPers = r.CucuPers  WHERE r.CucuPers = {cucupers.ToString()};");
  }

  public void ActualizarCcok(long CucuPers)
  {
    this.conn.executeNonQuery($"UPDATE persona SET CcokPers=1\tWHERE CucuPers={CucuPers.ToString()};");
  }

  public List<DTOPersonas> getPersonas()
  {
    List<DTOPersonas> personas = new List<DTOPersonas>();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT p.CucuPers CUIT");
    stringBuilder.AppendLine(", if(p.NudoPers!=0,p.NudoPers,SUBSTRING(p.CucuPers,3,8)) Dni, p.FenaPers, p.DetaPers Nombre");
    stringBuilder.AppendLine(", IFNULL(p.DecrPers,'') Calle");
    stringBuilder.AppendLine(", IFNULL(p.NurePers,'') Nro, IFNULL(p.DebrPers,'') Barrio, p.MarePers Mza, p.CarePers Casa");
    stringBuilder.AppendLine(", IFNULL(p.DelrPers,'') Localidad");
    stringBuilder.AppendLine(", IF(length(p.CeluPers) <= 4, '', p.CeluPers) CeluPers");
    stringBuilder.AppendLine(", p.MailPers");
    stringBuilder.AppendLine("FROM persona p;");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        DTOPersonas dtoPersonas = new DTOPersonas();
        long num1 = nfoGovReader.readLong("Cuit");
        int num2 = nfoGovReader.readInt("Dni");
        if (int.Parse(num1.ToString().Substring(0, 2)) < 34)
        {
          dtoPersonas.Cuit = num1;
          dtoPersonas.Dni = num2;
        }
        if (int.Parse(num1.ToString().Substring(0, 2)) == 93)
          dtoPersonas.Dni = num2;
        dtoPersonas.FechNaci = nfoGovReader.readDateTime("FenaPers");
        dtoPersonas.Nombre = nfoGovReader.readString("Nombre");
        dtoPersonas.Calle = nfoGovReader.readString("Calle");
        dtoPersonas.Nro = nfoGovReader.readString("Nro");
        dtoPersonas.Barrio = nfoGovReader.readString("Barrio");
        dtoPersonas.Mza = nfoGovReader.readString("Mza");
        dtoPersonas.Casa = nfoGovReader.readString("Casa");
        dtoPersonas.Localidad = nfoGovReader.readString("Localidad");
        dtoPersonas.Celular = nfoGovReader.readString("CeluPers");
        dtoPersonas.Email = nfoGovReader.readString("MailPers");
        personas.Add(dtoPersonas);
      }
    }
    nfoGovReader?.Close();
    return personas;
  }

  public string tieneInmueble(long cucupers)
  {
    return this.conn.executeString($"SELECT IFNULL(GROUP_CONCAT(CuenCtct),0) Cuentas FROM recaudacion.relacion WHERE CodiOfic = 1 AND CucuPers = {cucupers.ToString()} AND FebaRela IS NULL;");
  }

  public List<DTOPersonaTupu> ObtenerPersonaTupu(long CucuPers)
  {
    DTOPersonaTupu dtoPersonaTupu = new DTOPersonaTupu();
    StringBuilder stringBuilder = new StringBuilder();
    Dictionary<string, DTOPersonaTupu> dictionary = new Dictionary<string, DTOPersonaTupu>();
    stringBuilder.AppendLine("SELECT p.CucuPers, IF(p.DetaPers = '', '---', p.DetaPers) DetaPers, IF(p.JuriPers = 0, 'Persona Física', 'Persona Jurídica') JuriPers, IF(p.SexoPers = 0, 'Femenino', 'Masculino') SexoPers, IF(p.TelePers = '', '---', p.TelePers) TelePers, IF(p.CeluPers = '', '---', p.CeluPers) CeluPers, IF(p.MailPers = '', '---', p.MailPers) MailPers, p.CodiTido, IFNULL(td.DetaTido, '---') DetaTido, p.NudoPers, p.FenaPers, p.CodiEsci, IFNULL(ec.DetaEsci, '---') DetaEsci, p.CodiPofi, IFNULL(pf.DetaPofi,'---') DetaPofi, p.CocrPers, IF(p.DecrPers = '', '---', p.DecrPers) DecrPers, p.NurePers, p.CobrPers, IF(p.DebrPers = '', '---', p.DebrPers) DebrPers, IF(p.MarePers = '', '---', p.MarePers) MarePers, IF(p.CarePers = '', '---', p.CarePers) CarePers, IF(p.UbrePers = '', '---', p.UbrePers) UbrePers, p.ColrPers, IF(p.DelrPers = '', '---', p.DelrPers) DelrPers, IF(p.CoprPers = '', '---', p.CoprPers) CoprPers, IF(p.ObsePers = '', '---', p.ObsePers) ObsePers,IF(pv.DetaProv IS NOT NULL,TRUE,FALSE) EsProveedor,IF(l.IdLoca IS NOT NULL,TRUE,FALSE) EsLocador");
    stringBuilder.AppendLine("FROM infogov.persona p");
    stringBuilder.AppendLine("LEFT JOIN infogov.tipodocu td ON td.CodiTido = p.CodiTido");
    stringBuilder.AppendLine("LEFT JOIN infogov.estacivi ec ON ec.CodiEsci = p.CodiEsci");
    stringBuilder.AppendLine("LEFT JOIN infogov.posifisc pf ON pf.CodiPofi = p.CodiPofi");
    stringBuilder.AppendLine("LEFT JOIN contpres.proveedor pv ON pv.CucuPers = p.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN contpres.locadores l ON l.CucuPers = p.CucuPers");
    stringBuilder.AppendLine($"WHERE p.CucuPers = {CucuPers};");
    InfoGovReader nfoGovReader1 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
      {
        dtoPersonaTupu.CucuPers = nfoGovReader1.readLong(nameof (CucuPers));
        dtoPersonaTupu.DetaPers = nfoGovReader1.readString("DetaPers");
        dtoPersonaTupu.JuriPers = nfoGovReader1.readString("JuriPers");
        dtoPersonaTupu.SexoPers = nfoGovReader1.readString("SexoPers");
        dtoPersonaTupu.TelePers = nfoGovReader1.readString("TelePers");
        dtoPersonaTupu.CeluPers = nfoGovReader1.readString("CeluPers");
        dtoPersonaTupu.MailPers = nfoGovReader1.readString("MailPers");
        dtoPersonaTupu.CodiTido = nfoGovReader1.readInt("CodiTido");
        dtoPersonaTupu.DetaTido = nfoGovReader1.readString("DetaTido");
        dtoPersonaTupu.NudoPers = nfoGovReader1.readInt("NudoPers");
        dtoPersonaTupu.FenaPers = nfoGovReader1.readDateTime("FenaPers");
        dtoPersonaTupu.CodiEsci = nfoGovReader1.readInt("CodiEsci");
        dtoPersonaTupu.DetaEsci = nfoGovReader1.readString("DetaEsci");
        dtoPersonaTupu.CodiPofi = nfoGovReader1.readInt("CodiPofi");
        dtoPersonaTupu.DetaPofi = nfoGovReader1.readString("DetaPofi");
        dtoPersonaTupu.CocrPers = nfoGovReader1.readInt("CocrPers");
        dtoPersonaTupu.DecrPers = nfoGovReader1.readString("DecrPers");
        dtoPersonaTupu.NurePers = nfoGovReader1.readInt("NurePers");
        dtoPersonaTupu.CobrPers = nfoGovReader1.readInt("CobrPers");
        dtoPersonaTupu.DebrPers = nfoGovReader1.readString("DebrPers");
        dtoPersonaTupu.MarePers = nfoGovReader1.readString("MarePers");
        dtoPersonaTupu.CarePers = nfoGovReader1.readString("CarePers");
        dtoPersonaTupu.UbrePers = nfoGovReader1.readString("UbrePers");
        dtoPersonaTupu.ColrPers = nfoGovReader1.readInt("ColrPers");
        dtoPersonaTupu.DelrPers = nfoGovReader1.readString("DelrPers");
        dtoPersonaTupu.CoprPers = nfoGovReader1.readString("CoprPers");
        dtoPersonaTupu.ObsePers = nfoGovReader1.readString("ObsePers");
        dtoPersonaTupu.EsLocador = nfoGovReader1.readBool("EsLocador");
        dtoPersonaTupu.EsProveedor = nfoGovReader1.readBool("EsProveedor");
        dictionary.Add(dtoPersonaTupu.CucuPers.ToString(), dtoPersonaTupu);
      }
    }
    stringBuilder.Clear();
    nfoGovReader1?.Close();
    stringBuilder.AppendLine("SELECT rp.CodiRete,r.DetaRete, rp.NuinRexp ,rp.CodiDere, dr.DetaDere, p.CucuPers");
    stringBuilder.AppendLine("FROM infogov.persona p");
    stringBuilder.AppendLine($"INNER JOIN contpres.retexprov rp ON rp.CucuPers = p.CucuPers AND rp.PeriInfo = {PARAMS.Periodo}");
    stringBuilder.AppendLine("INNER JOIN contpres.retenciones r ON r.CodiRete = rp.CodiRete AND r.PeriInfo  = rp.PeriInfo");
    stringBuilder.AppendLine("INNER JOIN contpres.deretenciones dr ON dr.CodiRete = rp.CodiRete AND dr.CodiDere = rp.CodiDere AND dr.PeriInfo = rp.PeriInfo");
    stringBuilder.AppendLine($"WHERE p.CucuPers = {CucuPers};");
    InfoGovReader nfoGovReader2 = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader2.HasRows)
    {
      while (nfoGovReader2.Read())
      {
        DTORetencionesPersonaTupu retencionesPersonaTupu = new DTORetencionesPersonaTupu();
        long num = nfoGovReader2.readLong(nameof (CucuPers));
        retencionesPersonaTupu.CodiRete = nfoGovReader2.readInt("CodiRete");
        retencionesPersonaTupu.DetaRete = nfoGovReader2.readString("DetaRete");
        retencionesPersonaTupu.NuinRexp = nfoGovReader2.readString("NuinRexp");
        retencionesPersonaTupu.CodiDere = nfoGovReader2.readInt("CodiDere");
        retencionesPersonaTupu.DetaDere = nfoGovReader2.readString("DetaDere");
        if (dictionary.ContainsKey(num.ToString()))
          dictionary[num.ToString()].retenciones.Add(retencionesPersonaTupu);
      }
    }
    return new List<DTOPersonaTupu>((IEnumerable<DTOPersonaTupu>) dictionary.Values);
  }

  public DTOPersona ObtenerDFPersona(long CucuPers)
  {
    DTOPersona dtoPersona = new DTOPersona();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT p.CucuPers, IF(p.DetaPers = '', '---', p.DetaPers) DetaPers, IF(p.JuriPers = 0, 'Persona Física', 'Persona Jurídica') JuriPers, IF(p.SexoPers = 0, 'Femenino', 'Masculino') SexoPers, IF(p.TelePers = '', '---', p.TelePers) TelePers, IF(p.CeluPers = '', '---', p.CeluPers) CeluPers, IF(p.MailPers = '', '---', p.MailPers) MailPers, p.CodiTido, IFNULL(td.DetaTido, '---') DetaTido, p.NudoPers, p.FenaPers, p.CodiEsci, IFNULL(ec.DetaEsci, '---') DetaEsci, p.CodiPofi, IFNULL(pf.DetaPofi,'---') DetaPofi, p.CocrPers, IF(p.DecrPers = '', '---', p.DecrPers) DecrPers, p.NurePers, p.CobrPers, IF(p.DebrPers = '', '---', p.DebrPers) DebrPers, IF(p.MarePers = '', '---', p.MarePers) MarePers, IF(p.CarePers = '', '---', p.CarePers) CarePers, IF(p.UbrePers = '', '---', p.UbrePers) UbrePers, p.ColrPers, IF(p.DelrPers = '', '---', p.DelrPers) DelrPers, IF(p.CoprPers = '', '---', p.CoprPers) CoprPers, IF(p.ObsePers = '', '---', p.ObsePers) ObsePers, p.FevaPers");
    stringBuilder.AppendLine("FROM infogov.persona p");
    stringBuilder.AppendLine("LEFT JOIN infogov.tipodocu td ON td.CodiTido = p.CodiTido");
    stringBuilder.AppendLine("LEFT JOIN infogov.estacivi ec ON ec.CodiEsci = p.CodiEsci");
    stringBuilder.AppendLine("LEFT JOIN infogov.posifisc pf ON pf.CodiPofi = p.CodiPofi");
    stringBuilder.AppendLine($"WHERE p.CucuPers = {CucuPers};");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        dtoPersona.CucuPers = nfoGovReader.readLong(nameof (CucuPers));
        dtoPersona.DetaPers = nfoGovReader.readString("DetaPers");
        dtoPersona.JuriPers = nfoGovReader.readString("JuriPers");
        dtoPersona.SexoPers = nfoGovReader.readString("SexoPers");
        dtoPersona.TelePers = nfoGovReader.readString("TelePers");
        dtoPersona.CeluPers = nfoGovReader.readString("CeluPers");
        dtoPersona.MailPers = nfoGovReader.readString("MailPers");
        dtoPersona.CodiTido = nfoGovReader.readInt("CodiTido");
        dtoPersona.DetaTido = nfoGovReader.readString("DetaTido");
        dtoPersona.NudoPers = nfoGovReader.readInt("NudoPers");
        dtoPersona.FenaPers = nfoGovReader.readDateTime("FenaPers");
        dtoPersona.CodiEsci = nfoGovReader.readInt("CodiEsci");
        dtoPersona.DetaEsci = nfoGovReader.readString("DetaEsci");
        dtoPersona.CodiPofi = nfoGovReader.readInt("CodiPofi");
        dtoPersona.DetaPofi = nfoGovReader.readString("DetaPofi");
        dtoPersona.CocrPers = nfoGovReader.readInt("CocrPers");
        dtoPersona.DecrPers = nfoGovReader.readString("DecrPers");
        dtoPersona.NurePers = nfoGovReader.readInt("NurePers");
        dtoPersona.CobrPers = nfoGovReader.readInt("CobrPers");
        dtoPersona.DebrPers = nfoGovReader.readString("DebrPers");
        dtoPersona.MarePers = nfoGovReader.readString("MarePers");
        dtoPersona.CarePers = nfoGovReader.readString("CarePers");
        dtoPersona.UbrePers = nfoGovReader.readString("UbrePers");
        dtoPersona.ColrPers = nfoGovReader.readInt("ColrPers");
        dtoPersona.DelrPers = nfoGovReader.readString("DelrPers");
        dtoPersona.CoprPers = nfoGovReader.readString("CoprPers");
        dtoPersona.ObsePers = nfoGovReader.readString("ObsePers");
        dtoPersona.FevaPers = nfoGovReader.readDateTime("FevaPers");
      }
    }
    nfoGovReader?.Close();
    return dtoPersona;
  }

  public void ObtenerPersonasMgue(List<InfoGov.Plugins.Infogov.Entidades.Persona> lista)
  {
    lista.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM infogov.persona WHERE DetaPers != '' ORDER BY DetaPers;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        lista.Add(new InfoGov.Plugins.Infogov.Entidades.Persona()
        {
          CucuPers = nfoGovReader.readLong("CucuPers"),
          DetaPers = nfoGovReader.readString("DetaPers")
        });
    }
    nfoGovReader?.Close();
  }
}
