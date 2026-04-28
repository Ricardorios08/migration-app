// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpRol
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
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpRol : 
  Expert,
  EntityExpert<Rol>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Rol>,
  ISearchExpert
{
  public ExpRol()
    : base("municipiov1")
  {
  }

  internal void fillLists(List<Sistema> sistemas, List<Rol> roles)
  {
    sistemas.Clear();
    InfoGovReader nfoGovReader1 = this.conn.executeReader("SELECT * FROM municipiov1.sistemas WHERE VisiSist=1;");
    if (nfoGovReader1 != null && nfoGovReader1.HasRows)
    {
      while (nfoGovReader1.Read())
        sistemas.Add(new Sistema()
        {
          CodiSist = nfoGovReader1.readInt("CodiSist"),
          DetaSist = nfoGovReader1.readString("DetaSist")
        });
    }
    nfoGovReader1?.Close();
    roles.Clear();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM municipiov1.rol ORDER BY DetaRol;");
    if (dr != null && dr.HasRows)
    {
      while (dr.Read())
      {
        Rol enti = new Rol();
        enti.CodiRol = dr.readInt("CodiRol");
        enti.DetaRol = dr.readString("DetaRol");
        this.readAuditory((Entity) enti, dr);
        roles.Add(enti);
      }
    }
    dr?.Close();
    List<Ventana> source = new List<Ventana>();
    InfoGovReader nfoGovReader2 = this.conn.executeReader("SELECT * FROM municipiov1.menus ORDER BY CodiSist, OrdeMenu;");
    if (nfoGovReader2 != null && nfoGovReader2.HasRows)
    {
      while (nfoGovReader2.Read())
        source.Add(new Ventana()
        {
          CodiSist = nfoGovReader2.readInt("CodiSist"),
          CodiMenu = nfoGovReader2.readInt("CodiMenu"),
          WnamMenu = nfoGovReader2.readString("WnamMenu"),
          DetaMenu = nfoGovReader2.readString("DetaMenu"),
          CmsuMenu = nfoGovReader2.readInt("CmsuMenu"),
          PermAcce = false
        });
    }
    nfoGovReader2?.Close();
    InfoGovReader nfoGovReader3 = this.conn.executeReader("SELECT pv.* FROM municipiov1.permisos_ventana pv GROUP BY WnamMenu, CodiPerm ORDER BY WnamMenu, CodiPerm;");
    if (nfoGovReader3 != null && nfoGovReader3.HasRows)
    {
      while (nfoGovReader3.Read())
      {
        PermisoVentana permisoVentana = new PermisoVentana();
        permisoVentana.CodiPerm = nfoGovReader3.readString("CodiPerm");
        permisoVentana.WnamMenu = nfoGovReader3.readString("WnamMenu");
        permisoVentana.DetaPerm = nfoGovReader3.readString("DetaPerm");
        foreach (Ventana ventana in source)
        {
          if (ventana.WnamMenu.Length > 0 && ventana.WnamMenu == permisoVentana.WnamMenu)
            ventana.permisosVentana.Add(permisoVentana);
        }
      }
    }
    nfoGovReader3?.Close();
    foreach (Sistema sistema in sistemas)
    {
      Sistema s = sistema;
      s.ventanas = source.Where<Ventana>((System.Func<Ventana, bool>) (a => a.CodiSist == s.CodiSist)).ToList<Ventana>();
    }
  }

  internal List<Ventana> getAccesosRol(int CodiRol)
  {
    List<Ventana> accesosRol = new List<Ventana>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM municipiov1.accesos_rol WHERE CodiRol={CodiRol.ToString()};");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        accesosRol.Add(new Ventana()
        {
          WnamMenu = nfoGovReader.readString("WnamMenu"),
          PermAcce = nfoGovReader.readBool("PermAcce")
        });
    }
    nfoGovReader?.Close();
    return accesosRol;
  }

  internal List<PermisoVentana> getPermisosRol(int CodiRol)
  {
    List<PermisoVentana> permisosRol = new List<PermisoVentana>();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM municipiov1.permisos_rol WHERE CodiRol = {CodiRol.ToString()};");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        permisosRol.Add(new PermisoVentana()
        {
          CodiPerm = nfoGovReader.readString("CodiPerm"),
          PermPerm = nfoGovReader.readBool("PermPerm")
        });
    }
    nfoGovReader?.Close();
    return permisosRol;
  }

  internal Rol getRol(int CodiRol)
  {
    Rol enti = new Rol();
    InfoGovReader dr = this.conn.executeReader($"SELECT * FROM municipiov1.rol WHERE CodiRol = {CodiRol.ToString()};");
    if (dr != null && dr.HasRows)
    {
      while (dr.Read())
      {
        enti.CodiRol = dr.readInt(nameof (CodiRol));
        enti.DetaRol = dr.readString("DetaRol");
        this.readAuditory((Entity) enti, dr);
      }
    }
    dr?.Close();
    return enti;
  }

  internal int getCodiRolNew()
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SET @n=0, @CodiRol=0;");
    stringBuilder.AppendLine("SELECT tbl.*, @CodiRol:=nume");
    stringBuilder.AppendLine("FROM (");
    stringBuilder.AppendLine("SELECT @n:=@n+1 nume, CodiRol");
    stringBuilder.AppendLine("FROM municipiov1.rol r");
    stringBuilder.AppendLine("WHERE r.CodiRol < 10000");
    stringBuilder.AppendLine("ORDER BY r.CodiRol");
    stringBuilder.AppendLine(") AS tbl");
    stringBuilder.AppendLine("WHERE nume!=CodiRol");
    stringBuilder.AppendLine("LIMIT 1;");
    stringBuilder.AppendLine("SELECT @CodiRol;");
    return this.conn.executeInt(stringBuilder.ToString());
  }

  internal bool saveOnDB(Rol currentRol)
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (currentRol.status == EntityStatus.New)
    {
      currentRol.CodiRol = this.getCodiRolNew();
      stringBuilder.AppendLine(this.getSQLRol(currentRol));
      foreach (Ventana enti in currentRol.accesos_rol)
      {
        enti.CodiRol = currentRol.CodiRol;
        stringBuilder.AppendLine(this.getSQLAccesoRol(enti));
      }
      foreach (PermisoVentana enti in currentRol.permisos_rol)
      {
        enti.CodiRol = currentRol.CodiRol;
        stringBuilder.AppendLine(this.getSQLPermisoRol(enti));
      }
    }
    else if (currentRol.status == EntityStatus.Modified)
    {
      stringBuilder.AppendLine(this.getSQLRol(currentRol));
      string str1 = $"DELETE FROM municipiov1.accesos_rol WHERE CodiRol={currentRol.CodiRol.ToString()};";
      stringBuilder.AppendLine(str1);
      foreach (Ventana enti in currentRol.accesos_rol)
      {
        enti.CodiRol = currentRol.CodiRol;
        stringBuilder.AppendLine(this.getSQLAccesoRol(enti));
      }
      string str2 = $"DELETE FROM municipiov1.permisos_rol WHERE CodiRol={currentRol.CodiRol.ToString()};";
      stringBuilder.AppendLine(str2);
      foreach (PermisoVentana enti in currentRol.permisos_rol)
      {
        enti.CodiRol = currentRol.CodiRol;
        stringBuilder.AppendLine(this.getSQLPermisoRol(enti));
      }
    }
    else if (currentRol.status == EntityStatus.Deleted)
    {
      stringBuilder.AppendLine(this.getSQLRol(currentRol));
      string str3 = $"DELETE FROM municipiov1.accesos_rol WHERE CodiRol={currentRol.CodiRol.ToString()};";
      stringBuilder.AppendLine(str3);
      string str4 = $"DELETE FROM municipiov1.permisos_rol WHERE CodiRol={currentRol.CodiRol.ToString()};";
      stringBuilder.AppendLine(str4);
    }
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  private string getSQLRol(Rol enti)
  {
    string sqlRol = "";
    switch (enti.status)
    {
      case EntityStatus.New:
        sqlRol = $"INSERT INTO municipiov1.rol(CodiRol, DetaRol, AltaUsua) VALUES ({enti.CodiRol.ToString()}, '{enti.DetaRol}', '{this.usuario}');";
        break;
      case EntityStatus.Modified:
        sqlRol = $"UPDATE municipiov1.rol SET  DetaRol='{enti.DetaRol}', ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiRol={enti.CodiRol.ToString()};";
        break;
      case EntityStatus.Deleted:
        sqlRol = $"DELETE FROM municipiov1.rol WHERE CodiRol = {enti.CodiRol.ToString()};";
        break;
    }
    return sqlRol;
  }

  private string getSQLAccesoRol(Ventana enti)
  {
    return $"INSERT INTO accesos_rol\t(CodiRol, WnamMenu, PermAcce) VALUES ({enti.CodiRol.ToString()}, '{enti.WnamMenu}', {enti.PermAcce.ToString()});";
  }

  private string getSQLPermisoRol(PermisoVentana enti)
  {
    return $"INSERT INTO permisos_rol (CodiRol, CodiPerm, PermPerm) VALUES ({enti.CodiRol.ToString()}, '{enti.CodiPerm}', {this.sqlBool(enti.PermPerm)});";
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiRol", "Cód. ", width: 50),
      new Column("DetaRol", "Detalle", fill: true)
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiRol", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiRol", "Cód.", FilterMode.Equal),
      new FilterField("DetaRol", "Detalle", FilterMode.Contains)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT *  FROM rol " + (filter == null ? "WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Rol getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  public Rol CreateEntity() => new Rol();

  public Rol GetEntity(ID id)
  {
    return this.getEntity<Rol>($"SELECT * FROM rol  WHERE CodiRol= {id.GetInt("CodiRol").ToString()} ;", new System.Func<InfoGovReader, Rol>(this.readEntity));
  }

  public Rol readEntity(InfoGovReader dr)
  {
    Rol enti = new Rol();
    enti.CodiRol = dr.readInt("CodiRol");
    enti.DetaRol = dr.readString("DetaRol");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => false;

  public bool CanDeactivate(ID id) => false;

  public bool CanDelete(ID id) => this.hasPermissionFor(typeof (Rol), ActionMode.Delete);

  public bool CanActivate(Rol entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Rol entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Rol entity) => this.CanDelete(entity.id);

  public Rol Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Rol>("SELECT * FROM rol " + filter.sqlWOL(), new System.Func<InfoGovReader, Rol>(this.readEntity));
  }

  public bool SaveOnDB(Rol entity) => this.conn.executeNonQuery("" + this.getSQL(entity));

  public string getSQL(Rol entity)
  {
    string sql = "";
    switch (entity.status)
    {
      default:
        return sql;
    }
  }

  internal bool CombinarRoles(List<Rol> roles, string DetaRol)
  {
    string str = "";
    foreach (Rol role in roles)
      str = $"{str}{role.CodiRol.ToString()},";
    int codiRolNew = this.getCodiRolNew();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine($"INSERT INTO municipiov1.rol (CodiRol, DetaRol, AltaUsua) VALUES ({codiRolNew.ToString()}, '{DetaRol}', '{this.usuario}');");
    stringBuilder.AppendLine(" INSERT INTO accesos_rol\t(CodiRol, WnamMenu, PermAcce)");
    stringBuilder.AppendLine($" SELECT {codiRolNew.ToString()}, WnamMenu,1");
    stringBuilder.AppendLine(" FROM municipiov1.accesos_rol");
    stringBuilder.AppendLine($" WHERE CodiRol IN ({str.Substring(0, str.Length - 1)}) AND PermAcce=1");
    stringBuilder.AppendLine(" GROUP BY WnamMenu;");
    stringBuilder.AppendLine(" INSERT INTO permisos_rol (CodiRol, CodiPerm, PermPerm)");
    stringBuilder.AppendLine($" SELECT {codiRolNew.ToString()},CodiPerm,1");
    stringBuilder.AppendLine(" FROM municipiov1.permisos_rol");
    stringBuilder.AppendLine($" WHERE CodiRol IN({str.Substring(0, str.Length - 1)}) AND PermPerm=1");
    stringBuilder.AppendLine(" GROUP BY CodiPerm;");
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }
}
