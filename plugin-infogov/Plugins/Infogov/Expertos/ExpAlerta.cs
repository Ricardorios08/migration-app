// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpAlerta
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpAlerta : Expert, ABMExpert
{
  public ExpAlerta()
    : base(Modulo.Database)
  {
  }

  public List<Entity> getGridData(Filter filter)
  {
    List<Entity> gridData = new List<Entity>();
    InfoGovReader dr = this.conn.executeReader(" SELECT a.*, o.DetaOfic FROM alerta a INNER JOIN recaudacion.oficina o ON o.CodiOfic = a.CodiOfic " + (filter == null || filter.Items.Count <= 0 ? " WHERE 1=2 " : filter.sqlWOL(wdotcomma: false)) + " ORDER BY Id;");
    if (dr.HasRows)
    {
      while (dr.Read())
        gridData.Add((Entity) this.readAlerta(dr));
    }
    dr.Close();
    return gridData;
  }

  private Alerta readAlerta(InfoGovReader dr)
  {
    Alerta alerta = new Alerta();
    alerta.Id = dr.readInt("Id");
    alerta.CodiOfic = dr.readShort("CodiOfic");
    alerta.DetaOfic = dr.readString("DetaOfic");
    alerta.CuenCtct = dr.readString("CuenCtct");
    alerta.DetaAler = dr.readString("DetaAler");
    alerta.readAuditory(dr);
    return alerta;
  }

  public string puedeModificar(Entity enti)
  {
    return enti.BajaFeho != DateTime.MinValue ? "Se encuentra dado de baja" : string.Empty;
  }

  public string puedeAnular(Entity enti)
  {
    return enti.BajaFeho != DateTime.MinValue ? "Se encuentra dado de baja" : string.Empty;
  }

  public string puedeEliminar(Entity enti) => "Verificación no implementada.";

  public bool guardarNuevo(Entity data)
  {
    Alerta alerta = (Alerta) data;
    return this.conn.executeNonQuery($"INSERT INTO alerta (CodiOfic, CuenCtct, DetaAler, AltaUsua) VALUES ({alerta.CodiOfic}, {this.sqlString(alerta.CuenCtct)}, {this.sqlString(alerta.DetaAler)}, {this.sqlString(this.usuario)});");
  }

  public bool guardarCambios(Entity enti, Entity data)
  {
    Alerta alerta = (Alerta) enti;
    return this.conn.executeNonQuery($"UPDATE alerta SET DetaAler={this.sqlString(((Alerta) data).DetaAler)}, ModiUsua={this.sqlString(this.usuario)}, ModiFeho=NOW() WHERE Id={alerta.Id};");
  }

  public bool anular(Entity enti, Entity data)
  {
    Alerta alerta1 = (Alerta) enti;
    Alerta alerta2 = (Alerta) data;
    return this.conn.executeNonQuery($"UPDATE alerta SET BajaFeho=NOW(), BajaUsua={this.sqlString(this.usuario)}, BajaMoti={this.sqlString(alerta2.BajaMoti)} WHERE Id={alerta1.Id};");
  }

  public bool eliminar(Entity enti) => false;

  public List<OficinaAlerta> BuscarOficinas()
  {
    List<OficinaAlerta> oficinaAlertaList = new List<OficinaAlerta>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT CodiOfic, DetaOfic FROM recaudacion.oficina;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        oficinaAlertaList.Add(new OficinaAlerta()
        {
          CodiOfic = nfoGovReader.readShort("CodiOfic"),
          DetaOfic = nfoGovReader.readString("DetaOfic")
        });
    }
    nfoGovReader?.Close();
    return oficinaAlertaList;
  }

  public void BuscarAlertas(short CodiOfic, string CuenCtct, List<string> alertas)
  {
    alertas.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT DetaAler FROM alerta WHERE CodiOfic = {CodiOfic} AND CuenCtct = {this.sqlString(CuenCtct)} AND BajaFeho IS NULL ORDER BY Id DESC;");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        string str1 = nfoGovReader.readString("DetaAler");
        if (!string.IsNullOrEmpty(str1))
        {
          int val1 = 50;
          StringBuilder stringBuilder = new StringBuilder();
          for (int startIndex = 0; startIndex < str1.Length; startIndex += val1)
          {
            int length = Math.Min(val1, str1.Length - startIndex);
            stringBuilder.Append(str1.Substring(startIndex, length));
            if (startIndex + length < str1.Length)
              stringBuilder.AppendLine();
          }
          string str2 = stringBuilder.ToString();
          if (!alertas.Contains(str2))
            alertas.Add(str2);
        }
      }
    }
    nfoGovReader?.Close();
  }
}
