// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpDomicilio
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpDomicilio : 
  Expert,
  EntityExpert<Domicilio>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Domicilio>,
  ISearchExpert
{
  public ExpDomicilio()
    : base("recaudacion")
  {
  }

  public Domicilio CreateEntity() => new Domicilio();

  public Domicilio GetEntity(ID id)
  {
    return this.getEntity<Domicilio>($"SELECT * FROM domicilio WHERE CucuPers={id.GetString("CucuPers")};", new System.Func<InfoGovReader, Domicilio>(this.readEntity));
  }

  public virtual Domicilio readEntity(InfoGovReader dr)
  {
    return new Domicilio()
    {
      CodiCome = dr.readInt("CodiCome"),
      CodiOfic = dr.readShort("CodiOfic"),
      CodiCalle = dr.readInt("CodiCalle"),
      Calle = dr.readString("Calle"),
      NumeCalle = dr.readString("NumeCalle"),
      Telefono = dr.readString("Telefono"),
      CodPostal = dr.readInt("CodPostal"),
      CodiLoca = dr.readInt("CodiLoca"),
      Localidad = dr.readString("Localidad"),
      Observacion = dr.readString("Observacion"),
      Provincia = dr.readString("Provincia"),
      Manzana = dr.readString("Manzana"),
      CodiBarrio = dr.readInt("CodiBarrio"),
      Barrio = dr.readString("Barrio"),
      Monoblock = dr.readString("Monoblock"),
      Dpto = dr.readString("Dpto"),
      Planta = dr.readString("Planta"),
      Casa = dr.readString("Casa"),
      Nrolocal = dr.readString("Nrolocal"),
      Tipo = dr.readString("Tipo")
    };
  }

  public void cargarDomicilios(int CodiCome, int CodiOfic, List<Domicilio> domicilios)
  {
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM domicilio WHERE CodiCome={CodiCome.ToString()} AND CodiOfic ={CodiOfic.ToString()};");
    domicilios.Clear();
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        Domicilio domicilio = new Domicilio()
        {
          CodiCome = nfoGovReader.readInt(nameof (CodiCome)),
          CodiOfic = nfoGovReader.readShort(nameof (CodiOfic)),
          CodiCalle = nfoGovReader.readInt("CodiCalle"),
          Calle = nfoGovReader.readString("Calle"),
          NumeCalle = nfoGovReader.readString("NumeCalle")
        };
        domicilio.Ecalle.CodiCall = domicilio.CodiCalle;
        domicilio.Ecalle.DetaCall = domicilio.Calle;
        domicilio.Telefono = nfoGovReader.readString("Telefono");
        domicilio.CodPostal = nfoGovReader.readInt("CodPostal");
        domicilio.CodiLoca = nfoGovReader.readInt("CodiLoca");
        domicilio.Localidad = nfoGovReader.readString("Localidad");
        domicilio.Eloca.CodiLoca = domicilio.CodiLoca;
        domicilio.Eloca.DetaLoca = domicilio.Localidad;
        domicilio.Ubicacion = nfoGovReader.readString("Ubicacion");
        domicilio.Observacion = nfoGovReader.readString("Observacion");
        domicilio.Provincia = nfoGovReader.readString("Provincia");
        domicilio.Manzana = nfoGovReader.readString("Manzana");
        domicilio.CodiBarrio = nfoGovReader.readInt("CodiBarrio");
        domicilio.Barrio = nfoGovReader.readString("Barrio");
        domicilio.Ebarrio.CodiBarr = domicilio.CodiBarrio;
        domicilio.Ebarrio.DetaBarr = domicilio.Barrio;
        domicilio.Monoblock = nfoGovReader.readString("Monoblock");
        domicilio.Dpto = nfoGovReader.readString("Dpto");
        domicilio.Planta = nfoGovReader.readString("Planta");
        domicilio.Casa = nfoGovReader.readString("Casa");
        domicilio.Nrolocal = nfoGovReader.readString("Nrolocal");
        domicilio.Tipo = nfoGovReader.readString("Tipo");
        domicilios.Add(domicilio);
      }
    }
    nfoGovReader?.Close();
  }

  public void cargarDomiciliosANTIGUA(int CodiCome, int CodiOfic, List<Domicilio> domicilios)
  {
    if (CodiOfic == 1)
    {
      InfoGovReader nfoGovReader1 = this.conn.executeReader($"SELECT * FROM domicilio WHERE CodiCome={CodiCome.ToString()} AND CodiOfic ={CodiOfic.ToString()} AND Tipo = 'RENTAS';");
      domicilios.Clear();
      if (nfoGovReader1 != null && nfoGovReader1.HasRows)
      {
        while (nfoGovReader1.Read())
        {
          Domicilio domicilio = new Domicilio()
          {
            CodiCome = nfoGovReader1.readInt(nameof (CodiCome)),
            CodiOfic = nfoGovReader1.readShort(nameof (CodiOfic)),
            CodiCalle = nfoGovReader1.readInt("CodiCalle"),
            Calle = nfoGovReader1.readString("Calle")
          };
          domicilio.Ecalle.CodiCall = domicilio.CodiCalle;
          domicilio.Ecalle.DetaCall = domicilio.Calle;
          domicilio.NumeCalle = nfoGovReader1.readString("NumeCalle");
          domicilio.Telefono = nfoGovReader1.readString("Telefono");
          domicilio.CodPostal = nfoGovReader1.readInt("CodPostal");
          domicilio.CodiLoca = nfoGovReader1.readInt("CodiLoca");
          domicilio.Localidad = nfoGovReader1.readString("Localidad");
          domicilio.Eloca.CodiLoca = domicilio.CodiLoca;
          domicilio.Eloca.DetaLoca = domicilio.Localidad;
          domicilio.Ubicacion = nfoGovReader1.readString("Ubicacion");
          domicilio.Observacion = nfoGovReader1.readString("Observacion");
          domicilio.Provincia = nfoGovReader1.readString("Provincia");
          domicilio.Manzana = nfoGovReader1.readString("Manzana");
          domicilio.CodiBarrio = nfoGovReader1.readInt("CodiBarrio");
          domicilio.Barrio = nfoGovReader1.readString("Barrio");
          domicilio.Ebarrio.CodiBarr = domicilio.CodiBarrio;
          domicilio.Ebarrio.DetaBarr = domicilio.Barrio;
          domicilio.Monoblock = nfoGovReader1.readString("Monoblock");
          domicilio.Dpto = nfoGovReader1.readString("Dpto");
          domicilio.Planta = nfoGovReader1.readString("Planta");
          domicilio.Casa = nfoGovReader1.readString("Casa");
          domicilio.Nrolocal = nfoGovReader1.readString("Nrolocal");
          domicilio.Tipo = nfoGovReader1.readString("Tipo");
          domicilios.Add(domicilio);
        }
      }
      nfoGovReader1?.Close();
      InfoGovReader nfoGovReader2 = new ExpDomicilioGIS().procesarSQL($"SELECT  nro_padron CodiCome, 1 CodiOfic,calle_real_codigo CodiCalle , calle_real_nombre Calle, calle_real_numero NumeCalle,direccion_real_localidad Localidad, barrio_real_nombre barrio, 'REAL' Tipo from vpadrones_parcela where nro_padron = {CodiCome.ToString()};");
      if (nfoGovReader2 != null && nfoGovReader2.HasRows)
      {
        while (nfoGovReader2.Read())
        {
          Domicilio domicilio = new Domicilio()
          {
            CodiCome = nfoGovReader2.readInt(nameof (CodiCome)),
            CodiOfic = nfoGovReader2.readShort(nameof (CodiOfic)),
            CodiCalle = nfoGovReader2.readInt("CodiCalle"),
            Calle = nfoGovReader2.readString("Calle")
          };
          domicilio.Ecalle.CodiCall = domicilio.CodiCalle;
          domicilio.Ecalle.DetaCall = domicilio.Calle;
          domicilio.NumeCalle = nfoGovReader2.readString("NumeCalle");
          domicilio.Localidad = nfoGovReader2.readString("Localidad");
          domicilio.Eloca.CodiLoca = domicilio.CodiLoca;
          domicilio.Eloca.DetaLoca = domicilio.Localidad;
          domicilio.Barrio = nfoGovReader2.readString("barrio");
          domicilio.Ebarrio.CodiBarr = domicilio.CodiBarrio;
          domicilio.Ebarrio.DetaBarr = domicilio.Barrio;
          domicilio.Tipo = nfoGovReader2.readString("Tipo");
          domicilios.Add(domicilio);
        }
      }
      nfoGovReader2?.Close();
    }
    else
    {
      InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM domicilio WHERE CodiCome={CodiCome.ToString()} AND CodiOfic ={CodiOfic.ToString()};");
      domicilios.Clear();
      if (nfoGovReader != null && nfoGovReader.HasRows)
      {
        while (nfoGovReader.Read())
        {
          Domicilio domicilio = new Domicilio()
          {
            CodiCome = nfoGovReader.readInt(nameof (CodiCome)),
            CodiOfic = nfoGovReader.readShort(nameof (CodiOfic)),
            CodiCalle = nfoGovReader.readInt("CodiCalle"),
            Calle = nfoGovReader.readString("Calle"),
            NumeCalle = nfoGovReader.readString("NumeCalle")
          };
          domicilio.Ecalle.CodiCall = domicilio.CodiCalle;
          domicilio.Ecalle.DetaCall = domicilio.Calle;
          domicilio.Telefono = nfoGovReader.readString("Telefono");
          domicilio.CodPostal = nfoGovReader.readInt("CodPostal");
          domicilio.CodiLoca = nfoGovReader.readInt("CodiLoca");
          domicilio.Localidad = nfoGovReader.readString("Localidad");
          domicilio.Eloca.CodiLoca = domicilio.CodiLoca;
          domicilio.Eloca.DetaLoca = domicilio.Localidad;
          domicilio.Ubicacion = nfoGovReader.readString("Ubicacion");
          domicilio.Observacion = nfoGovReader.readString("Observacion");
          domicilio.Provincia = nfoGovReader.readString("Provincia");
          domicilio.Manzana = nfoGovReader.readString("Manzana");
          domicilio.CodiBarrio = nfoGovReader.readInt("CodiBarrio");
          domicilio.Barrio = nfoGovReader.readString("Barrio");
          domicilio.Ebarrio.CodiBarr = domicilio.CodiBarrio;
          domicilio.Ebarrio.DetaBarr = domicilio.Barrio;
          domicilio.Monoblock = nfoGovReader.readString("Monoblock");
          domicilio.Dpto = nfoGovReader.readString("Dpto");
          domicilio.Planta = nfoGovReader.readString("Planta");
          domicilio.Casa = nfoGovReader.readString("Casa");
          domicilio.Nrolocal = nfoGovReader.readString("Nrolocal");
          domicilio.Tipo = nfoGovReader.readString("Tipo");
          domicilios.Add(domicilio);
        }
      }
      nfoGovReader?.Close();
    }
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => false;

  public bool CanActivate(Domicilio entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Domicilio entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Domicilio entity) => this.CanDelete(entity.id);

  public Domicilio Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Domicilio>("SELECT * FROM domicilio " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL(onlyActive)), new System.Func<InfoGovReader, Domicilio>(this.readEntity));
  }

  public bool SaveOnDB(Domicilio entity) => this.conn.executeNonQuery(this.getSQL(entity));

  public virtual string getSQL(Domicilio enti)
  {
    string sql = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        string[] strArray1 = new string[45];
        strArray1[0] = " INSERT INTO domicilio (CodiCome, CodiOfic, CodiCalle, Calle, NumeCalle, Telefono, CodPostal, CodiLoca, Localidad, Ubicacion, Observacion, Provincia, Manzana, CodiBarrio, Barrio, Monoblock, Dpto, Planta, Casa, Nrolocal, Tipo, AltaUsua) VALUES (";
        int num1 = enti.CodiCome;
        strArray1[1] = num1.ToString();
        strArray1[2] = ",";
        strArray1[3] = enti.CodiOfic.ToString();
        strArray1[4] = ", ";
        num1 = enti.CodiCalle;
        strArray1[5] = num1.ToString();
        strArray1[6] = ", '";
        strArray1[7] = enti.Calle;
        strArray1[8] = "', '";
        strArray1[9] = enti.NumeCalle;
        strArray1[10] = "', '";
        strArray1[11] = enti.Telefono;
        strArray1[12] = "', ";
        num1 = enti.CodPostal;
        strArray1[13] = num1.ToString();
        strArray1[14] = ", ";
        num1 = enti.CodiLoca;
        strArray1[15] = num1.ToString();
        strArray1[16 /*0x10*/] = ", '";
        strArray1[17] = enti.Localidad;
        strArray1[18] = "', '";
        strArray1[19] = enti.Ubicacion;
        strArray1[20] = "', '";
        strArray1[21] = enti.Observacion;
        strArray1[22] = "', '";
        strArray1[23] = enti.Provincia;
        strArray1[24] = "', '";
        strArray1[25] = enti.Manzana;
        strArray1[26] = "', ";
        num1 = enti.CodiBarrio;
        strArray1[27] = num1.ToString();
        strArray1[28] = ", '";
        strArray1[29] = enti.Barrio;
        strArray1[30] = "', '";
        strArray1[31 /*0x1F*/] = enti.Monoblock;
        strArray1[32 /*0x20*/] = "', '";
        strArray1[33] = enti.Dpto;
        strArray1[34] = "', '";
        strArray1[35] = enti.Planta;
        strArray1[36] = "', '";
        strArray1[37] = enti.Casa;
        strArray1[38] = "', '";
        strArray1[39] = enti.Nrolocal;
        strArray1[40] = "', '";
        strArray1[41] = enti.Tipo;
        strArray1[42] = "', '";
        strArray1[43] = this.usuario;
        strArray1[44] = "');";
        sql = string.Concat(strArray1);
        break;
      case EntityStatus.Modified:
        string[] strArray2 = new string[51];
        strArray2[0] = "UPDATE domicilio\tSET CodiCome=";
        int num2 = enti.CodiCome;
        strArray2[1] = num2.ToString();
        strArray2[2] = ", CodiOfic=";
        strArray2[3] = enti.CodiOfic.ToString();
        strArray2[4] = ", CodiCalle=";
        num2 = enti.CodiCalle;
        strArray2[5] = num2.ToString();
        strArray2[6] = ", Calle='";
        strArray2[7] = enti.Calle;
        strArray2[8] = "', NumeCalle='";
        strArray2[9] = enti.NumeCalle;
        strArray2[10] = "', Telefono='";
        strArray2[11] = enti.Telefono;
        strArray2[12] = "', CodPostal=";
        num2 = enti.CodPostal;
        strArray2[13] = num2.ToString();
        strArray2[14] = ", CodiLoca=";
        num2 = enti.CodiLoca;
        strArray2[15] = num2.ToString();
        strArray2[16 /*0x10*/] = ", Localidad='";
        strArray2[17] = enti.Localidad;
        strArray2[18] = "', Ubicacion='";
        strArray2[19] = enti.Ubicacion;
        strArray2[20] = "', Observacion='";
        strArray2[21] = enti.Observacion;
        strArray2[22] = "', Provincia='";
        strArray2[23] = enti.Provincia;
        strArray2[24] = "', Manzana='";
        strArray2[25] = enti.Manzana;
        strArray2[26] = "', CodiBarrio=";
        num2 = enti.CodiBarrio;
        strArray2[27] = num2.ToString();
        strArray2[28] = ", Barrio='";
        strArray2[29] = enti.Barrio;
        strArray2[30] = "', Monoblock='";
        strArray2[31 /*0x1F*/] = enti.Monoblock;
        strArray2[32 /*0x20*/] = "', Dpto='";
        strArray2[33] = enti.Dpto;
        strArray2[34] = "', Planta='";
        strArray2[35] = enti.Planta;
        strArray2[36] = "', Casa='";
        strArray2[37] = enti.Casa;
        strArray2[38] = "', Nrolocal='";
        strArray2[39] = enti.Nrolocal;
        strArray2[40] = "', Tipo='";
        strArray2[41] = enti.Tipo;
        strArray2[42] = "', ModiUsua='";
        strArray2[43] = this.usuario;
        strArray2[44] = "', ModiFeho=NOW() WHERE CodiCome=";
        num2 = enti.CodiCome;
        strArray2[45] = num2.ToString();
        strArray2[46] = " AND CodiOfic=";
        strArray2[47] = enti.CodiOfic.ToString();
        strArray2[48 /*0x30*/] = " AND Tipo='";
        strArray2[49] = enti.Tipo;
        strArray2[50] = "';";
        sql = string.Concat(strArray2);
        break;
    }
    return sql;
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CucuPers", "Cuit/Cuil"),
      new Column("NudoPers", "Documento"),
      new Column("DetaPers", "Apellido y Nombre", fill: true)
    };
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
      Restrictions = {
        new FilterItem("domicilio.CucuPers", "Cuit", FilterMode.Limit, "20")
      }
    };
  }

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT CucuPers,NudoPers,DetaPers FROM domicilio " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Domicilio getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public void ProcesoInmueble()
  {
    List<Domicilio> domicilioList = new List<Domicilio>();
    List<int> source = new List<int>();
    InfoGovReader nfoGovReader1 = this.conn.executeReader("SELECT Distinct(CodiCome) CodiCome FROM domicilio WHERE CodiOfic = 1 ;");
    if (nfoGovReader1 != null && nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
        source.Add(nfoGovReader1.readInt("CodiCome"));
    }
    nfoGovReader1?.Close();
    InfoGovReader nfoGovReader2 = new ExpDomicilioGIS().procesarSQL($"SELECT nro_padron CodiCome, 1 CodiOfic,calle_real_codigo CodiCalle , calle_real_nombre Calle, calle_real_numero NumeCalle,direccion_real_localidad Localidad from vpadrones_parcela WHERE nro_padron not in ({string.Join(",", (IEnumerable<string>) source.Select<int, string>((System.Func<int, string>) (x => x.ToString())).ToList<string>())});");
    if (nfoGovReader2 != null && nfoGovReader2.HasRows)
    {
      while (nfoGovReader2.Read())
      {
        Domicilio domicilio1 = new Domicilio()
        {
          CodiCome = nfoGovReader2.readInt("CodiCome"),
          CodiOfic = nfoGovReader2.readShort("CodiOfic"),
          CodiCalle = nfoGovReader2.readInt("CodiCalle"),
          Calle = nfoGovReader2.readString("Calle")
        };
        domicilio1.Ecalle.CodiCall = domicilio1.CodiCalle;
        domicilio1.Ecalle.DetaCall = domicilio1.Calle;
        domicilio1.NumeCalle = nfoGovReader2.readString("NumeCalle");
        domicilio1.Localidad = nfoGovReader2.readString("Localidad");
        domicilio1.Eloca.CodiLoca = domicilio1.CodiLoca;
        domicilio1.Eloca.DetaLoca = domicilio1.Localidad;
        domicilio1.Tipo = "RENTAS";
        domicilio1.status = EntityStatus.New;
        domicilioList.Add(domicilio1);
        Domicilio domicilio2 = new Domicilio()
        {
          CodiCome = nfoGovReader2.readInt("CodiCome"),
          CodiOfic = nfoGovReader2.readShort("CodiOfic"),
          CodiCalle = nfoGovReader2.readInt("CodiCalle"),
          Calle = nfoGovReader2.readString("Calle")
        };
        domicilio2.Ecalle.CodiCall = domicilio2.CodiCalle;
        domicilio2.Ecalle.DetaCall = domicilio2.Calle;
        domicilio2.NumeCalle = nfoGovReader2.readString("NumeCalle");
        domicilio2.Localidad = nfoGovReader2.readString("Localidad");
        domicilio2.Eloca.CodiLoca = domicilio2.CodiLoca;
        domicilio2.Eloca.DetaLoca = domicilio2.Localidad;
        domicilio2.Tipo = "REAL";
        domicilio2.status = EntityStatus.New;
        domicilioList.Add(domicilio2);
      }
    }
    nfoGovReader2?.Close();
    string sql = "";
    foreach (Domicilio domicilio in domicilioList)
    {
      string[] strArray = new string[42];
      strArray[0] = sql;
      strArray[1] = " INSERT IGNORE INTO domicilio (CodiCome, CodiOfic, CodiCalle, Calle, NumeCalle, Telefono, CodPostal, CodiLoca, Localidad, Observacion, Provincia, Manzana, CodiBarrio, Barrio, Monoblock, Dpto, Planta, Casa, Nrolocal, Tipo) VALUES (";
      int num = domicilio.CodiCome;
      strArray[2] = num.ToString();
      strArray[3] = ",";
      strArray[4] = domicilio.CodiOfic.ToString();
      strArray[5] = ", ";
      num = domicilio.CodiCalle;
      strArray[6] = num.ToString();
      strArray[7] = ", '";
      strArray[8] = domicilio.Calle;
      strArray[9] = "', '";
      strArray[10] = domicilio.NumeCalle;
      strArray[11] = "', '";
      strArray[12] = domicilio.Telefono;
      strArray[13] = "', ";
      num = domicilio.CodPostal;
      strArray[14] = num.ToString();
      strArray[15] = ", ";
      num = domicilio.CodiLoca;
      strArray[16 /*0x10*/] = num.ToString();
      strArray[17] = ", '";
      strArray[18] = domicilio.Localidad;
      strArray[19] = "', '";
      strArray[20] = domicilio.Observacion;
      strArray[21] = "', '";
      strArray[22] = domicilio.Provincia;
      strArray[23] = "', '";
      strArray[24] = domicilio.Manzana;
      strArray[25] = "', ";
      num = domicilio.CodiBarrio;
      strArray[26] = num.ToString();
      strArray[27] = ", '";
      strArray[28] = domicilio.Barrio;
      strArray[29] = "', '";
      strArray[30] = domicilio.Monoblock;
      strArray[31 /*0x1F*/] = "', '";
      strArray[32 /*0x20*/] = domicilio.Dpto;
      strArray[33] = "', '";
      strArray[34] = domicilio.Planta;
      strArray[35] = "', '";
      strArray[36] = domicilio.Casa;
      strArray[37] = "', '";
      strArray[38] = domicilio.Nrolocal;
      strArray[39] = "', '";
      strArray[40] = domicilio.Tipo;
      strArray[41] = "');";
      sql = string.Concat(strArray);
      string str1 = sql;
      num = domicilio.CodiCome;
      string str2 = num.ToString();
      sql = $"{str1} INSERT IGNORE INTO inmurentas (CodiInmu, CodiExce, FfexInmu,Emite) VALUES ({str2},0,null,1);";
    }
    this.conn.executeNonQuery(sql);
  }
}
