// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExptdPermisosRol
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Core;
using System.Data;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExptdPermisosRol : Expert
{
  public ExptdPermisosRol()
    : base("municipiov1")
  {
  }

  public DataTable getData()
  {
    DataTable dataTable = new DataTable();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT u.CodiUsua, u.CucuPers, IFNULL(p.DetaPers, u.DetaUsua) DetaUsua");
    stringBuilder.AppendLine(", u.FeveUsua, u.InhaUsua, u.BajaFeho");
    stringBuilder.AppendLine(", s.CodiSist, s.DetaSist");
    stringBuilder.AppendLine(", rol.DetaRol, m.DetaMenu, v.DetaPerm");
    stringBuilder.AppendLine("FROM infogov.usuario u");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON p.CucuPers = u.CucuPers");
    stringBuilder.AppendLine("LEFT JOIN roles_usuario r ON r.CodiUsua = u.CodiUsua");
    stringBuilder.AppendLine("LEFT JOIN rol ON rol.CodiRol = r.CodiRol");
    stringBuilder.AppendLine("LEFT JOIN accesos_rol a ON a.CodiRol = r.CodiRol");
    stringBuilder.AppendLine("LEFT JOIN menu m ON m.WnamMenu = a.WnamMenu");
    stringBuilder.AppendLine("LEFT JOIN permisos_ventana v ON v.WnamMenu = m.WnamMenu");
    stringBuilder.AppendLine("LEFT JOIN sistema s ON s.CodiSist = m.CodiSist");
    stringBuilder.AppendLine("ORDER BY u.CodiUsua, r.CodiRol, m.DetaMenu, v.DetaPerm;");
    return this.conn.createDataTable(stringBuilder.ToString());
  }
}
