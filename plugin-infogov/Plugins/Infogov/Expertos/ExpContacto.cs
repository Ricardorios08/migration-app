// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpContacto
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpContacto : Expert, ABMExpert
{
  public ExpContacto()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT c.*, tc.DetaTico, o.DetaOfic, IFNULL(p.DetaPers,'---') DetaPers FROM contacto c INNER JOIN tipocont tc ON tc.CodiTico = c.CodiTico INNER JOIN recaudacion.oficina o ON o.CodiOfic = c.CodiOfic LEFT JOIN persona p ON p.CucuPers = c.CucuPers WHERE c.BajaFeho IS NULL " + (filter == null || filter.Items.Count <= 0 ? ";" : filter.sqlAnd(false)));
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readContacto(dr));
    }
    dr.Close();
    return gridData;
  }

  private Contacto readContacto(InfoGovReader dr)
  {
    Contacto contacto = new Contacto();
    contacto.IdCont = dr.readInt("IdCont");
    contacto.CucuPers = dr.readLong("CucuPers");
    contacto.DetaPers = dr.readString("DetaPers");
    contacto.CodiOfic = dr.readShort("CodiOfic");
    contacto.CuenCtct = dr.readString("CuenCtct");
    contacto.CodiTico = dr.readShort("CodiTico");
    contacto.DetaTico = dr.readString("DetaTico");
    contacto.DetaCont = dr.readString("DetaCont");
    contacto.DetaOfic = dr.readString("DetaOfic");
    contacto.Email = dr.readString("Email");
    contacto.readAuditory(dr);
    return contacto;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    Contacto contacto = (Contacto) data;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("INSERT INTO contacto (CucuPers, CodiOfic, CuenCtct, CodiTico, DetaCont, Email, AltaUsua)");
    stringBuilder.AppendLine($"VALUES ({contacto.CucuPers}, {contacto.CodiOfic}, {this.sqlString(contacto.CuenCtct)}, {contacto.CodiTico}, {this.sqlString(contacto.DetaCont)}, {this.sqlString(contacto.Email)}, {this.sqlString(this.usuario)});");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    Contacto contacto1 = (Contacto) enti;
    Contacto contacto2 = (Contacto) data;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("UPDATE contacto");
    stringBuilder.AppendLine($"SET CucuPers={contacto2.CucuPers}, CodiOfic={contacto2.CodiOfic}, CuenCtct={this.sqlString(contacto2.CuenCtct)}, CodiTico={contacto2.CodiTico}, DetaCont={this.sqlString(contacto2.DetaCont)}, Email={this.sqlString(contacto2.Email)}, ModiUsua={this.sqlString(this.usuario)}, ModiFeho=NOW()");
    stringBuilder.AppendLine($"WHERE IdCont = {contacto1.IdCont};");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  public bool anular(Entity enti, Entity data)
  {
    Contacto contacto1 = (Contacto) enti;
    Contacto contacto2 = (Contacto) data;
    return this.conn.executeNonQuery($"UPDATE contacto SET BajaUsua={this.sqlString(this.usuario)}, BajaFeho=NOW(), BajaMoti={this.sqlString(contacto2.BajaMoti)} WHERE IdCont={contacto1.IdCont};");
  }

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public bool ExisteCuenta(short CodiOfic, string CuenCtct)
  {
    return this.conn.executeInt($"SELECT COUNT(*) FROM recaudacion.relacion WHERE CodiOfic={CodiOfic} AND CuenCtct={this.sqlString(CuenCtct)};") > 0;
  }

  public List<ComboBoxItem> ObtenerOficinas()
  {
    List<ComboBoxItem> comboBoxItemList = new List<ComboBoxItem>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM recaudacion.oficina;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ComboBoxItem comboBoxItem = new ComboBoxItem(nfoGovReader.readString("DetaOfic"), (object) nfoGovReader.readShort("CodiOfic"));
        comboBoxItemList.Add(comboBoxItem);
      }
    }
    nfoGovReader?.Close();
    return comboBoxItemList;
  }

  public List<ComboBoxItem> ObtenerTipoContacto()
  {
    List<ComboBoxItem> comboBoxItemList = new List<ComboBoxItem>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM tipocont;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        ComboBoxItem comboBoxItem = new ComboBoxItem(nfoGovReader.readString("DetaTico"), (object) nfoGovReader.readShort("CodiTico"));
        comboBoxItemList.Add(comboBoxItem);
      }
    }
    nfoGovReader?.Close();
    return comboBoxItemList;
  }

  public List<Contacto> ListarContactos(int CodiOfic, string CuenCtct)
  {
    List<Contacto> contactoList = new List<Contacto>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT p.DetaPers, c.DetaCont FROM infogov.contacto c INNER JOIN infogov.persona p ON p.CucuPers = c.CucuPers WHERE c.BajaFeho IS NULL AND c.CodiOfic = {CodiOfic} AND c.CuenCtct = {this.sqlString(CuenCtct)};");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        contactoList.Add(new Contacto()
        {
          DetaPers = nfoGovReader.readString("DetaPers"),
          DetaCont = nfoGovReader.readString("DetaCont")
        });
    }
    nfoGovReader?.Close();
    return contactoList;
  }
}
