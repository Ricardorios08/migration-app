// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.FabricaExpertos
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Expertos;

#nullable disable
namespace InfoGov.Plugins.Infogov;

public class FabricaExpertos : ExpertsFactory
{
  public Expert createWindowExpert(string wname)
  {
    Expert windowExpert = (Expert) null;
    switch (wname)
    {
      case "Organigrama":
        windowExpert = (Expert) new ExpOrganigrama();
        break;
      case "frmCambioCuit":
        windowExpert = (Expert) new ExpPersona();
        break;
      case "frmMigrarDatos":
        windowExpert = (Expert) new ExpMigrarDatos();
        break;
      case "frmRol":
        windowExpert = (Expert) new ExpRol();
        break;
      case "frmUnificacionCuit":
        windowExpert = (Expert) new ExpUnificacionCuit();
        break;
      case "frmUsuario":
        windowExpert = (Expert) new ExpUsuario();
        break;
      case "gridAlerta":
        windowExpert = (Expert) new ExpAlerta();
        break;
      case "gridBanco":
        windowExpert = (Expert) new ExpBanco();
        break;
      case "gridBarrio":
        windowExpert = (Expert) new ExpBarrio();
        break;
      case "gridCalle":
        windowExpert = (Expert) new ExpCalle();
        break;
      case "gridContacto":
        windowExpert = (Expert) new ExpContacto();
        break;
      case "gridDatoContactoPers":
        windowExpert = (Expert) new ExpDatoContactoPers();
        break;
      case "gridDepartamento":
        windowExpert = (Expert) new ExpDepartamento();
        break;
      case "gridDistrito":
        windowExpert = (Expert) new ExpDistrito();
        break;
      case "gridEstadoCivil":
        windowExpert = (Expert) new ExpEstadoCivil();
        break;
      case "gridFacixUsua":
        windowExpert = (Expert) new ExpFacixUsua();
        break;
      case "gridLegajo":
        windowExpert = (Expert) new ExpLegajo();
        break;
      case "gridLocalidad":
        windowExpert = (Expert) new ExpLocalidad();
        break;
      case "gridOrgaxUsua":
        windowExpert = (Expert) new ExpOrgaxUsua();
        break;
      case "gridPersona":
        windowExpert = PARAMS.Municipio == "Maipú" ? (Expert) new ExpPersonaMaipu() : (Expert) new ExpPersona();
        break;
      case "gridPosicionFiscal":
        windowExpert = (Expert) new ExpPosicionFiscal();
        break;
      case "gridProveedor":
        windowExpert = (Expert) new ExpProveedor();
        break;
      case "gridProvincia":
        windowExpert = (Expert) new ExpProvincia();
        break;
      case "gridTipoDocumento":
        windowExpert = (Expert) new ExpTipoDocumento();
        break;
      case "gridTrabSocial":
        windowExpert = (Expert) new ExpTrabSocial();
        break;
      case "gridUbfixUsua":
        windowExpert = (Expert) new ExpUbfixUsua();
        break;
      case "gridUsuario":
        windowExpert = (Expert) new ExpUsuario();
        break;
      case "tdPermisosRoles":
        windowExpert = (Expert) new ExptdPermisosRol();
        break;
    }
    return windowExpert;
  }

  public EntityExpert<T> createEntityExpert<T>() where T : Entity
  {
    IEntityExpert entityExpert = (IEntityExpert) null;
    switch (typeof (T).Name)
    {
      case "Banco":
        entityExpert = (IEntityExpert) new ExpBanco();
        break;
      case "Barrio":
        entityExpert = (IEntityExpert) new ExpBarrio();
        break;
      case "Calle":
        entityExpert = (IEntityExpert) new ExpCalle();
        break;
      case "CodigoPostal":
        entityExpert = (IEntityExpert) new ExpCodigoPostal();
        break;
      case "CuentaContable":
        entityExpert = (IEntityExpert) new ExpCuentaContable();
        break;
      case "Departamento":
        entityExpert = (IEntityExpert) new ExpDepartamento();
        break;
      case "Distrito":
        entityExpert = (IEntityExpert) new ExpDistrito();
        break;
      case "EstadoCivil":
        entityExpert = (IEntityExpert) new ExpEstadoCivil();
        break;
      case "Localidad":
        entityExpert = (IEntityExpert) new ExpLocalidad();
        break;
      case "Organigrama":
        entityExpert = (IEntityExpert) new ExpOrganigrama();
        break;
      case "Organismo":
        entityExpert = (IEntityExpert) new ExpOrganismo();
        break;
      case "Persona":
        entityExpert = PARAMS.Municipio == "Maipú" ? (IEntityExpert) new ExpPersonaMaipu() : (IEntityExpert) new ExpPersona();
        break;
      case "PosicionFiscal":
        entityExpert = (IEntityExpert) new ExpPosicionFiscal();
        break;
      case "Provincia":
        entityExpert = (IEntityExpert) new ExpProvincia();
        break;
      case "Rol":
        entityExpert = (IEntityExpert) new ExpRol();
        break;
      case "Sistema":
        entityExpert = (IEntityExpert) new ExpSistema();
        break;
      case "TipoDocumento":
        entityExpert = (IEntityExpert) new ExpTipoDocumento();
        break;
      case "TipoFapa":
        entityExpert = (IEntityExpert) new ExpTipoFapa();
        break;
      case "UbicacionFisica":
        entityExpert = (IEntityExpert) new ExpUbicacionFisica();
        break;
      case "UserEntity":
        entityExpert = (IEntityExpert) new ExpUserEntity();
        break;
      case "Usuario":
        entityExpert = (IEntityExpert) new ExpUsuario();
        break;
    }
    return (EntityExpert<T>) entityExpert;
  }

  public SearchExpert<T> createSearchExpert<T>() where T : Entity
  {
    ISearchExpert searchExpert = (ISearchExpert) null;
    switch (typeof (T).Name)
    {
      case "Banco":
        searchExpert = (ISearchExpert) new ExpBanco();
        break;
      case "Barrio":
        searchExpert = (ISearchExpert) new ExpBarrio();
        break;
      case "Calle":
        searchExpert = (ISearchExpert) new ExpCalle();
        break;
      case "CodigoPostal":
        searchExpert = (ISearchExpert) new ExpCodigoPostal();
        break;
      case "CuentaContable":
        searchExpert = (ISearchExpert) new ExpCuentaContable();
        break;
      case "Departamento":
        searchExpert = (ISearchExpert) new ExpDepartamento();
        break;
      case "Distrito":
        searchExpert = (ISearchExpert) new ExpDistrito();
        break;
      case "EstadoCivil":
        searchExpert = (ISearchExpert) new ExpEstadoCivil();
        break;
      case "Legajo":
        searchExpert = (ISearchExpert) new ExpLegajo();
        break;
      case "Localidad":
        searchExpert = (ISearchExpert) new ExpLocalidad();
        break;
      case "Organigrama":
        searchExpert = (ISearchExpert) new ExpOrganigrama();
        break;
      case "Organismo":
        searchExpert = (ISearchExpert) new ExpOrganismo();
        break;
      case "Persona":
        searchExpert = PARAMS.Municipio == "Maipú" ? (ISearchExpert) new ExpPersonaMaipu() : (ISearchExpert) new ExpPersona();
        break;
      case "PosicionFiscal":
        searchExpert = (ISearchExpert) new ExpPosicionFiscal();
        break;
      case "Provincia":
        searchExpert = (ISearchExpert) new ExpProvincia();
        break;
      case "Rol":
        searchExpert = (ISearchExpert) new ExpRol();
        break;
      case "Sistema":
        searchExpert = (ISearchExpert) new ExpSistema();
        break;
      case "TipoDocumento":
        searchExpert = (ISearchExpert) new ExpTipoDocumento();
        break;
      case "TipoFapa":
        searchExpert = (ISearchExpert) new ExpTipoFapa();
        break;
      case "UbicacionFisica":
        searchExpert = (ISearchExpert) new ExpUbicacionFisica();
        break;
      case "UserEntity":
        searchExpert = (ISearchExpert) new ExpUserEntity();
        break;
      case "Usuario":
        searchExpert = (ISearchExpert) new ExpUsuario();
        break;
    }
    return (SearchExpert<T>) searchExpert;
  }
}
