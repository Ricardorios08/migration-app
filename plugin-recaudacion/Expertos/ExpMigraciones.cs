// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpMigraciones
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpMigraciones : Expert
{
  public ExpMigraciones()
    : base(Modulo.Database)
  {
  }

  public List<d_inmueble> BuscarD_INMUEBLE(string objetos)
  {
    List<d_inmueble> dInmuebleList = new List<d_inmueble>();
    string str = string.Empty;
    if (!string.IsNullOrEmpty(objetos))
    {
      if (objetos.Contains("-"))
      {
        string[] strArray = objetos.Split('-');
        str = $" WHERE OBJETO BETWEEN {strArray[0]} AND {strArray[1]} ";
      }
      else
        str = $" WHERE OBJETO = {objetos} ";
    }
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM migracion.d_inmueble {str};");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        dInmuebleList.Add(new d_inmueble()
        {
          PERIODOD = nfoGovReader.readString("PERIODOD"),
          OBJETO = nfoGovReader.readString("OBJETO"),
          COD_IMP = nfoGovReader.readString("COD_IMP"),
          VALOR_F = nfoGovReader.readString("VALOR_F"),
          VALOR_T = nfoGovReader.readString("VALOR_T"),
          VALOR_M = nfoGovReader.readString("VALOR_M"),
          TIPO_PROP = nfoGovReader.readString("TIPO_PROP"),
          TIPO_INMUEB = nfoGovReader.readString("TIPO_INMUEB"),
          SECC = nfoGovReader.readString("SECC"),
          MZ = nfoGovReader.readString("MZ"),
          MZD = nfoGovReader.readString("MZD"),
          MZH = nfoGovReader.readString("MZH"),
          LETRA = nfoGovReader.readString("LETRA"),
          LOTE = nfoGovReader.readString("LOTE"),
          LOTEAL = nfoGovReader.readString("LOTEAL"),
          FRENTE1 = nfoGovReader.readString("FRENTE1"),
          FRENTE2 = nfoGovReader.readString("FRENTE2"),
          FRENTE3 = nfoGovReader.readString("FRENTE3"),
          FRENTE4 = nfoGovReader.readString("FRENTE4"),
          ESQUINA = nfoGovReader.readString("ESQUINA"),
          SUPERFICIE = nfoGovReader.readString("SUPERFICIE"),
          FECPROC = nfoGovReader.readString("FECPROC"),
          OPERADOR = nfoGovReader.readString("OPERADOR"),
          CONDOM = nfoGovReader.readString("CONDOM"),
          DEPTOS = nfoGovReader.readString("DEPTOS"),
          FRENTE = nfoGovReader.readString("FRENTE"),
          ADREMA_PADRE = nfoGovReader.readString("ADREMA_PADRE"),
          COD_RESP = nfoGovReader.readString("COD_RESP"),
          PERIODOH = nfoGovReader.readString("PERIODOH"),
          SUPERFICIER = nfoGovReader.readString("SUPERFICIER"),
          CONSERVA = nfoGovReader.readString("CONSERVA"),
          LIMPIEZA = nfoGovReader.readString("LIMPIEZA"),
          LUZ = nfoGovReader.readString("LUZ"),
          PAVIMENTO = nfoGovReader.readString("PAVIMENTO"),
          PRESTA = nfoGovReader.readString("PRESTA"),
          ZONA = nfoGovReader.readString("ZONA"),
          SUB_MZ = nfoGovReader.readString("SUB_MZ"),
          VIVIENDA = nfoGovReader.readString("VIVIENDA"),
          C_DEPTO = nfoGovReader.readString("C_DEPTO"),
          C_ZONA = nfoGovReader.readString("C_ZONA"),
          C_SECTOR = nfoGovReader.readString("C_SECTOR"),
          C_MANZANA = nfoGovReader.readString("C_MANZANA"),
          C_PARCELA = nfoGovReader.readString("C_PARCELA"),
          C_SUBMANZ = nfoGovReader.readString("C_SUBMANZ"),
          C_SUCPARC = nfoGovReader.readString("C_SUCPARC"),
          C_AXPTE = nfoGovReader.readString("C_AXPTE"),
          C_ANIO = nfoGovReader.readString("C_ANIO"),
          TIPO_BALD = nfoGovReader.readString("TIPO_BALD"),
          C_PADRON_MUNIC = nfoGovReader.readString("C_PADRON_MUNIC"),
          FECPROC_A = nfoGovReader.readString("FECPROC_A"),
          OPERADOR_A = nfoGovReader.readString("OPERADOR_A")
        });
    }
    nfoGovReader.Close();
    return dInmuebleList;
  }

  public List<DTOServInmu> BuscarDatosServicios(string objetos)
  {
    List<DTOServInmu> dtoServInmuList = new List<DTOServInmu>();
    string str = string.Empty;
    if (!string.IsNullOrEmpty(objetos))
    {
      if (objetos.Contains("-"))
      {
        string[] strArray = objetos.Split('-');
        str = $" AND di.OBJETO BETWEEN {strArray[0]} AND {strArray[1]} ";
      }
      else
        str = $" AND di.OBJETO = {objetos} ";
    }
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT CONVERT(di.OBJETO,INTEGER) OBJETO, di.CONSERVA, di.LIMPIEZA, IF(di.PAVIMENTO IS NULL || di.PAVIMENTO = '', 'N', di.PAVIMENTO) PAVIMENTO, di.PRESTA, di.ESQUINA, di.VIVIENDA,");
    stringBuilder.AppendLine("CONVERT(CONCAT(SUBSTR(SUBSTRING_INDEX(o.FEC_INICIO,'/',-1),1,4), '-',LPAD(SUBSTRING_INDEX(SUBSTRING_INDEX(o.FEC_INICIO,'/',2), '/', -1),2,'0'), '-',LPAD(SUBSTRING_INDEX(o.FEC_INICIO,'/',1),2,'0')), DATE) FEC_INICIO");
    stringBuilder.AppendLine("FROM migracion.d_inmueble di");
    stringBuilder.AppendLine("INNER JOIN migracion.objeto o ON CONVERT(o.OBJETO,INTEGER) = CONVERT(di.OBJETO,INTEGER)");
    stringBuilder.AppendLine("WHERE o.COD_IMP = '01' " + str);
    stringBuilder.AppendLine("ORDER BY CONVERT(o.OBJETO,INTEGER);");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        dtoServInmuList.Add(new DTOServInmu()
        {
          OBJETO = nfoGovReader.readInt("OBJETO"),
          CONSERVA = nfoGovReader.readString("CONSERVA"),
          LIMPIEZA = nfoGovReader.readString("LIMPIEZA"),
          PAVIMENTO = nfoGovReader.readString("PAVIMENTO"),
          PRESTA = nfoGovReader.readString("PRESTA"),
          ESQUINA = nfoGovReader.readString("ESQUINA"),
          VIVIENDA = nfoGovReader.readString("VIVIENDA"),
          FEC_INICIO = nfoGovReader.readDateTime("FEC_INICIO")
        });
    }
    nfoGovReader.Close();
    return dtoServInmuList;
  }

  public string CrearFrentes(d_inmueble dato)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("INSERT INTO freninmu (CodiInmu, NumeFrin, MetrFrin, AltaUsua)");
    stringBuilder.AppendLine("VALUES");
    int int32 = Convert.ToInt32(dato.OBJETO);
    if (!string.IsNullOrEmpty(dato.FRENTE1))
      stringBuilder.AppendLine($"({int32}, 1, {this.sqlDecimal(Convert.ToDecimal(dato.FRENTE1))}, 'migra')");
    else
      stringBuilder.AppendLine($"({int32}, 1, {this.sqlDecimal(0M)}, 'migra')");
    if (!string.IsNullOrEmpty(dato.FRENTE2))
      stringBuilder.AppendLine($",({int32}, 2, {this.sqlDecimal(Convert.ToDecimal(dato.FRENTE2))}, 'migra')");
    if (!string.IsNullOrEmpty(dato.FRENTE3))
      stringBuilder.AppendLine($",({int32}, 3, {this.sqlDecimal(Convert.ToDecimal(dato.FRENTE3))}, 'migra')");
    if (!string.IsNullOrEmpty(dato.FRENTE4))
      stringBuilder.AppendLine($",({int32}, 4, {this.sqlDecimal(Convert.ToDecimal(dato.FRENTE4))}, 'migra')");
    stringBuilder.AppendLine(";");
    return this.conn.executeNonQuery(stringBuilder.ToString()) ? string.Empty : dato.OBJETO;
  }

  public string CrearServiciosInmueble(DTOServInmu serv)
  {
    if ((serv.CONSERVA == "N" || serv.CONSERVA == "X") && (serv.LIMPIEZA == "N" || serv.LIMPIEZA == "X") && (serv.PAVIMENTO == "N" || serv.PAVIMENTO == "X") && serv.PRESTA == "N" && serv.ESQUINA == "N" && (serv.VIVIENDA == "N" || serv.VIVIENDA == "X"))
      return $"Objeto {serv.OBJETO} sin servicios";
    StringBuilder sql = new StringBuilder();
    List<string> stringList = new List<string>();
    sql.AppendLine("INSERT INTO servinmu (CodiInmu, NumeFrin, CodiSeca, CodiSein, FealSein, FedeSein, AltaUsua)");
    sql.AppendLine("VALUES");
    if (serv.CONSERVA == "S")
      stringList.Add($"({serv.OBJETO}, 1, 1, 1, {this.sqlDate(serv.FEC_INICIO, false)}, {this.sqlDate(serv.FEC_INICIO, false)}, 'migra'),");
    if (serv.LIMPIEZA == "S")
      stringList.Add($"({serv.OBJETO}, 1, 2, 1, {this.sqlDate(serv.FEC_INICIO, false)}, {this.sqlDate(serv.FEC_INICIO, false)}, 'migra'),");
    if (serv.PAVIMENTO == "S")
      stringList.Add($"({serv.OBJETO}, 1, 3, 1, {this.sqlDate(serv.FEC_INICIO, false)}, {this.sqlDate(serv.FEC_INICIO, false)}, 'migra'),");
    if (serv.PRESTA == "S")
      stringList.Add($"({serv.OBJETO}, 1, 4, 1, {this.sqlDate(serv.FEC_INICIO, false)}, {this.sqlDate(serv.FEC_INICIO, false)}, 'migra'),");
    if (serv.ESQUINA == "S")
      stringList.Add($"({serv.OBJETO}, 1, 5, 1, {this.sqlDate(serv.FEC_INICIO, false)}, {this.sqlDate(serv.FEC_INICIO, false)}, 'migra'),");
    if (serv.VIVIENDA == "S")
      stringList.Add($"({serv.OBJETO}, 1, 6, 1, {this.sqlDate(serv.FEC_INICIO, false)}, {this.sqlDate(serv.FEC_INICIO, false)}, 'migra'),");
    stringList.ForEach((Action<string>) (x => sql.AppendLine(x)));
    string str = sql.ToString();
    return this.conn.executeNonQuery((str.Substring(0, str.Length - 3) + ";").ToString()) ? string.Empty : serv.OBJETO.ToString();
  }
}
