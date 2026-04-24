// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpAdministracionCorreos
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

public class ExpAdministracionCorreos : Expert, ABMExpert
{
  public ExpAdministracionCorreos()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM correo" + (filter == null ? "" : filter.sqlWOL()));
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readAdministracionCorreos(dr));
    }
    dr.Close();
    return gridData;
  }

  private AdministracionCorreos readAdministracionCorreos(InfoGovReader dr)
  {
    return new AdministracionCorreos()
    {
      IdCorreo = dr.readInt("IdCorreo"),
      CodiOfic = dr.readShort("CodiOfic"),
      Cuenta = dr.readString("CuenCtct"),
      Email = dr.readString("Email")
    };
  }

  public string puedeModificar(Entity enti) => "";

  public string puedeAnular(Entity enti) => "";

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    int num = this.nextInt("IdCorreo", "correo");
    AdministracionCorreos administracionCorreos = (AdministracionCorreos) data;
    return this.conn.executeNonQuery($"INSERT INTO correo (IdCorreo, CodiOfic, CuenCtct, Email, AltaUsua) VALUES ({num.ToString()}, {administracionCorreos.CodiOfic.ToString()}, '{administracionCorreos.Cuenta}', '{administracionCorreos.Email}', '{this.usuario}');");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    AdministracionCorreos administracionCorreos1 = (AdministracionCorreos) enti;
    AdministracionCorreos administracionCorreos2 = (AdministracionCorreos) data;
    return this.conn.executeNonQuery($"UPDATE correo\tSET CodiOfic = {administracionCorreos2.CodiOfic.ToString()}, CuenCtct = '{administracionCorreos2.Cuenta}', Email = '{administracionCorreos2.Email}', ModiUsua = '{this.usuario}', ModiFeho = NOW() WHERE IdCorreo = {administracionCorreos1.IdCorreo.ToString()};");
  }

  public bool anular(Entity enti, Entity data) => this.conn.executeNonQuery("...");

  public bool eliminar(Entity enti) => this.conn.executeNonQuery("...");

  public bool ValidarEmail(string email)
  {
    string pattern = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$";
    return Regex.IsMatch(email, pattern);
  }
}
