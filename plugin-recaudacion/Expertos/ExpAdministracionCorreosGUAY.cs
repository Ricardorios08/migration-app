// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpAdministracionCorreosGUAY
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Text.RegularExpressions;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpAdministracionCorreosGUAY : Expert, ABMExpert
{
  public ExpAdministracionCorreosGUAY()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM adhesionweb" + (filter == null ? "" : filter.sqlWOL()));
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readAdministracionCorreosGUAY(dr));
    }
    dr.Close();
    return gridData;
  }

  private AdministracionCorreosGUAY readAdministracionCorreosGUAY(InfoGovReader dr)
  {
    AdministracionCorreosGUAY administracionCorreosGuay = new AdministracionCorreosGUAY();
    administracionCorreosGuay.CodiAdwe = dr.readInt("CodiAdwe");
    administracionCorreosGuay.CodiOfic = dr.readShort("CodiOfic");
    administracionCorreosGuay.CuenCtct = dr.readString("CuenCtct");
    administracionCorreosGuay.DetaAdwe = dr.readString("DetaAdwe");
    administracionCorreosGuay.EmailAdwe = dr.readString("EmailAdwe");
    administracionCorreosGuay.readAuditory(dr);
    return administracionCorreosGuay;
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "";

  public bool guardarNuevo(Entity data)
  {
    AdministracionCorreosGUAY administracionCorreosGuay = (AdministracionCorreosGUAY) data;
    administracionCorreosGuay.CodiAdwe = this.nextInt("CodiAdwe", "adhesionweb");
    return this.conn.executeNonQuery($"INSERT INTO adhesionweb\t(CodiAdwe, CodiOfic, CuenCtct, DetaAdwe, EmailAdwe, FealAdwe, AltaUsua) VALUES ({administracionCorreosGuay.CodiAdwe.ToString()}, {administracionCorreosGuay.CodiOfic.ToString()}, '{administracionCorreosGuay.CuenCtct}', '{administracionCorreosGuay.DetaAdwe}', '{administracionCorreosGuay.EmailAdwe}', NOW(), '{this.usuario}');");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    AdministracionCorreosGUAY administracionCorreosGuay1 = (AdministracionCorreosGUAY) enti;
    AdministracionCorreosGUAY administracionCorreosGuay2 = (AdministracionCorreosGUAY) data;
    return this.conn.executeNonQuery($"UPDATE adhesionweb\tSET CodiOfic={administracionCorreosGuay2.CodiOfic.ToString()}, CuenCtct='{administracionCorreosGuay2.CuenCtct}', DetaAdwe ='{administracionCorreosGuay2.DetaAdwe}', EmailAdwe ='{administracionCorreosGuay2.EmailAdwe}', ModiUsua ='{this.usuario}', ModiFeho =NOW() WHERE CodiAdwe = {administracionCorreosGuay1.CodiAdwe.ToString()}");
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti)
  {
    return this.conn.executeNonQuery("DELETE FROM adhesionweb WHERE CodiAdwe=" + ((AdministracionCorreosGUAY) enti).CodiAdwe.ToString());
  }

  public bool ValidarEmail(string email)
  {
    string pattern = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$";
    return Regex.IsMatch(email, pattern);
  }
}
