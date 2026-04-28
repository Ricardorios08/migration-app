// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpUsuario
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Collections.Generic;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpUsuario : 
  Expert,
  EntityExpert<Usuario>,
  IEntityExpert,
  GridExpert,
  SearchExpert<Usuario>,
  ISearchExpert
{
  public ExpUsuario()
    : base("municipiov1")
  {
  }

  public Usuario CreateEntity() => new Usuario();

  public Usuario GetEntity(ID id)
  {
    return this.getEntity<Usuario>($"SELECT * FROM infogov.usuario u WHERE u.CodiUsua= '{id.GetString("CodiUsua")}';", new System.Func<InfoGovReader, Usuario>(this.readEntity));
  }

  public Usuario GetEntityMunicipiov1(ID id)
  {
    return this.getEntity<Usuario>($"SELECT * FROM municipiov1.usuario u WHERE u.CodiUsua= '{id.GetString("CodiUsua")}';", new System.Func<InfoGovReader, Usuario>(this.readEntity));
  }

  public Usuario GetEntityInfogov(ID id)
  {
    return this.getEntity<Usuario>($"SELECT * FROM infogov.usuario u WHERE u.CodiUsua= '{id.GetString("CodiUsua")}';", new System.Func<InfoGovReader, Usuario>(this.readEntity));
  }

  public Usuario readEntity(InfoGovReader dr)
  {
    Usuario enti = new Usuario();
    enti.CodiUsua = dr.readString("CodiUsua");
    enti.CucuPers = dr.readLong("CucuPers");
    enti.DetaUsua = dr.readString("DetaUsua");
    enti.FeveUsua = dr.readDateTime("FeveUsua");
    enti.InhaUsua = dr.readBool("InhaUsua");
    enti.CodiEnre = dr.readInt("CodiEnre");
    enti.ObseUsua = dr.readString("ObseUsua");
    enti.CodiOrga = dr.readString("CodiOrga");
    enti.AcreUsua = dr.readBool("AcreUsua");
    enti.CargUsua = dr.readString("CargUsua");
    enti.CoenUsua = dr.readString("CoenUsua");
    enti.CosaUsua = dr.readString("CosaUsua");
    enti.SemaUsua = dr.readString("SemaUsua");
    enti.PumaUsua = dr.readInt("PumaUsua");
    enti.UsmaUsua = dr.readString("UsmaUsua");
    enti.ComaUsua = dr.readString("ComaUsua");
    enti.UsslUsua = dr.readBool("UsslUsua");
    enti.UtlsUsua = dr.readBool("UtlsUsua");
    this.readAuditory((Entity) enti, dr);
    return enti;
  }

  public bool CanActivate(ID id) => true;

  public bool CanDeactivate(ID id) => true;

  public bool CanDelete(ID id) => id.GetString("CodiUsua").Length > 0;

  public bool CanActivate(Usuario entity) => this.CanActivate(entity.id);

  public bool CanDeactivate(Usuario entity) => this.CanDeactivate(entity.id);

  public bool CanDelete(Usuario entity) => this.CanDelete(entity.id);

  public Usuario Find(Filter filter, bool onlyActive)
  {
    return this.findEntity<Usuario>("SELECT * FROM infogov.usuario " + filter.sqlWOL(), new System.Func<InfoGovReader, Usuario>(this.readEntity));
  }

  public bool SaveOnDB(Usuario entity)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.Append(this.getSQL(entity));
    stringBuilder.Append(this.getSQLRoles(entity));
    return this.conn.executeNonQuery(stringBuilder.ToString());
  }

  private string getSQL(Usuario entity)
  {
    string sql = "";
    if (PARAMS.Municipio == "Rivadavia")
      return "";
    switch (entity.status)
    {
      case EntityStatus.New:
        entity.ClavUsua = this.CreateHashMd5("123456");
        string[] strArray = new string[19]
        {
          "INSERT INTO usuario (CodiUsua, CucuPers, DetaUsua, ClavUsua, FeveUsua, CodiEnre, ObseUsua, CodiUnfi, FirmUsua, AltaUsua) VALUES ('",
          entity.CodiUsua,
          "', ",
          entity.CucuPers.ToString(),
          ",'",
          entity.DetaUsua,
          "', '",
          entity.ClavUsua,
          "', ",
          this.sqlDate(entity.FeveUsua),
          ", ",
          null,
          null,
          null,
          null,
          null,
          null,
          null,
          null
        };
        int num = entity.CodiEnre;
        strArray[11] = num.ToString();
        strArray[12] = ", '";
        strArray[13] = entity.ObseUsua;
        strArray[14] = "', ";
        num = entity.CodiUnfi;
        strArray[15] = num.ToString();
        strArray[16 /*0x10*/] = ", NULL, '";
        strArray[17] = this.usuario;
        strArray[18] = "');";
        sql = string.Concat(strArray);
        break;
      case EntityStatus.Modified:
        sql = $"UPDATE usuario SET CucuPers={entity.CucuPers.ToString()}, DetaUsua='{entity.DetaUsua}', CodiEnre={entity.CodiEnre.ToString()}, ObseUsua='{entity.ObseUsua}', CodiUnfi={entity.CodiUnfi.ToString()}, FirmUsua=NULL, ModiUsua='{this.usuario}', ModiFeho=NOW() WHERE CodiUsua='{entity.CodiUsua}';";
        break;
      case EntityStatus.Deleted:
        sql = $"DELETE FROM usuario WHERE CodiUsua='{entity.CodiUsua}';";
        break;
      case EntityStatus.Activated:
        sql = $"UPDATE usuario SET BajaUsua='', BajaFeho=NULL, BajaMoti='' WHERE CodiUsua='{entity.CodiUsua}';";
        break;
      case EntityStatus.Deactivated:
        sql = $"UPDATE usuario SET BajaUsua='{this.usuario}', BajaFeho=NOW(), BajaMoti='{entity.BajaMoti}' WHERE CodiUsua='{entity.CodiUsua}';";
        break;
    }
    return sql;
  }

  private string getSQLRoles(Usuario entity)
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (entity.status != EntityStatus.New)
      stringBuilder.AppendLine($"DELETE FROM usuario_rol WHERE usuario_rol.CodiUsua = '{entity.CodiUsua}';");
    if (entity.status == EntityStatus.New || entity.status == EntityStatus.Modified)
    {
      foreach (Rol role in entity.roles)
        stringBuilder.AppendLine($"INSERT INTO usuario_rol\t(CodiUsua, CodiRol, AltaUsua) VALUES ('{entity.CodiUsua}', {role.CodiRol.ToString()}, '{this.usuario}');");
    }
    return stringBuilder.ToString();
  }

  public List<Column> getGridColumns()
  {
    return new List<Column>()
    {
      new Column("CodiUsua", "Usuario"),
      new Column("DetaUsua", "Detalle", fill: true),
      new Column("CucuPers", "Cuil/Cuit Persona"),
      new Column("BajaFeho", "Fecha Baja"),
      new Column("BajaUsua", "Usuario Baja")
    };
  }

  public ID getGridID(DataGridViewRow row)
  {
    ID gridId = new ID();
    gridId.Add((object) "CodiUsua", (object) row.Cells[0].Value.ToString());
    return gridId;
  }

  public List<FilterField> getGridFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiUsua", "Cod. Usuario", FilterMode.Contains),
      new FilterField("DetaUsua", "Det. Usuario", FilterMode.Contains),
      new FilterField("CucuPers", "Cuil/Cuit Persona", FilterMode.StartsWith)
    };
  }

  public Filter getInitialGridFilter() => new Filter();

  public DataTable filterGridData(Filter filter)
  {
    return this.conn.createDataTable("SELECT u.CodiUsua, u.Detausua, u.CucuPers, IFNULL (p.DetaPers,'') DetaPers, u.BajaFeho, u.BajaUsua  FROM infogov.usuario u LEFT JOIN infogov.persona p ON p.CucuPers = u.CucuPers " + (filter == null ? " WHERE 1=2;" : filter.sqlWOL()));
  }

  public List<Column> getSearchColumns() => this.getGridColumns();

  public List<FilterField> getSearchFilterFields() => this.getGridFilterFields();

  public Filter getInitialSearchFilter() => this.getInitialGridFilter();

  public Usuario getSearchEntity(DataGridViewRow row) => this.GetEntity(this.getGridID(row));

  public DataTable filterSearchData(Filter filter) => this.filterGridData(filter);

  private string CreateHashMd5(string Clave)
  {
    string hashMd5 = "";
    if (Clave.Length > 0)
    {
      byte[] hash = MD5.Create().ComputeHash(Encoding.UTF8.GetBytes(Clave));
      StringBuilder stringBuilder = new StringBuilder();
      for (int index = 0; index < hash.Length; ++index)
        stringBuilder.Append(hash[index].ToString("x2"));
      hashMd5 = stringBuilder.ToString();
    }
    return hashMd5;
  }

  internal bool existeUsuario(string CodiUsua)
  {
    return this.conn.executeBool($"SELECT IF(COUNT(*)>0,1,0) FROM usuario WHERE CodiUsua='{CodiUsua}'");
  }

  internal List<Usuario> getUsuarios()
  {
    List<Usuario> usuarios = new List<Usuario>();
    InfoGovReader dr = this.conn.executeReader("SELECT * FROM municipiov1.usuario;");
    if (dr != null && dr.HasRows)
    {
      while (dr.Read())
      {
        Usuario usuario = this.readEntity(dr);
        usuarios.Add(usuario);
      }
    }
    dr?.Close();
    return usuarios;
  }

  internal void cargarRoles(Usuario enti)
  {
    enti.roles.Clear();
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT rol.CodiRol, rol.DetaRol FROM usuario_rol INNER JOIN rol ON rol.CodiRol = usuario_rol.CodiRol WHERE CodiUsua = '{enti.CodiUsua}';");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        enti.roles.Add(new Rol(nfoGovReader.readInt("CodiRol"), nfoGovReader.readString("DetaRol")));
    }
    nfoGovReader?.Close();
  }
}
