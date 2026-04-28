// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.FabricaVentanas
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Reportes;
using InfoGov.Plugins.Infogov.Reportes.DatosFijos.Persona;
using InfoGov.Plugins.Infogov.Reportes.PermisosRoles;
using InfoGov.Plugins.Infogov.Ventanas;
using InfoGov.Reports;

#nullable disable
namespace InfoGov.Plugins.Infogov;

public class FabricaVentanas : WindowsFactory
{
  public BaseForm createWindowForm(string wname)
  {
    BaseForm windowForm = (BaseForm) null;
    switch (wname)
    {
      case "Organigrama":
        windowForm = (BaseForm) new GridForm<Organigrama>("Organigrama");
        break;
      case "frmCambioCuit":
        windowForm = (BaseForm) new frmCambioCuit();
        break;
      case "frmMigrarDatos":
        windowForm = (BaseForm) new frmMigrarDatos();
        break;
      case "frmRol":
        windowForm = (BaseForm) new frmRol();
        break;
      case "frmUnificacionCuit":
        windowForm = (BaseForm) new frmUnificacionCuit();
        break;
      case "frmUsuario":
        windowForm = (BaseForm) new frmUsuario();
        break;
      case "gridAlerta":
        windowForm = (BaseForm) new gridAlerta();
        break;
      case "gridBanco":
        windowForm = (BaseForm) new GridForm<Banco>("Bancos");
        break;
      case "gridBarrio":
        windowForm = (BaseForm) new GridForm<Barrio>("Barrios");
        break;
      case "gridCalle":
        windowForm = (BaseForm) new GridForm<Calle>("Calles");
        break;
      case "gridContacto":
        windowForm = (BaseForm) new gridContacto();
        break;
      case "gridDatoContactoPers":
        windowForm = (BaseForm) new gridDatoContactoPers();
        break;
      case "gridDepartamento":
        windowForm = (BaseForm) new GridForm<Departamento>("Departamentos");
        break;
      case "gridDistrito":
        windowForm = (BaseForm) new GridForm<Distrito>("Distritos");
        break;
      case "gridEstadoCivil":
        windowForm = (BaseForm) new GridForm<EstadoCivil>("Estados Civiles");
        break;
      case "gridFacixUsua":
        windowForm = (BaseForm) new gridFacixUsua();
        break;
      case "gridLegajo":
        windowForm = (BaseForm) new GridForm<Legajo>("Legajos");
        break;
      case "gridLocalidad":
        windowForm = (BaseForm) new GridForm<Localidad>("Localidades");
        break;
      case "gridOrgaxUsua":
        windowForm = (BaseForm) new gridOrgaxUsua();
        break;
      case "gridPersona":
        windowForm = (BaseForm) new GridForm<InfoGov.Plugins.Infogov.Entidades.Persona>("Personas");
        break;
      case "gridPosicionFiscal":
        windowForm = (BaseForm) new GridForm<PosicionFiscal>("Posiciones Fiscales");
        break;
      case "gridProveedor":
        windowForm = (BaseForm) new GridForm<Proveedor>("Proveedores");
        break;
      case "gridProvincia":
        windowForm = (BaseForm) new GridForm<Provincia>("Provincias");
        break;
      case "gridTipoDocumento":
        windowForm = (BaseForm) new GridForm<TipoDocumento>("Tipos de Documentos");
        break;
      case "gridTrabSocial":
        windowForm = (BaseForm) new gridTrabSocial();
        break;
      case "gridUbfixUsua":
        windowForm = (BaseForm) new gridUbfixUsua();
        break;
      case "gridUsuario":
        windowForm = (BaseForm) new GridForm<Usuario>("Usuarios");
        break;
      case "tdPermisosRoles":
        windowForm = (BaseForm) new tdPermisosRoles();
        break;
    }
    return windowForm;
  }

  public PrintForm createReportForm(string wname)
  {
    PrintForm reportForm = (PrintForm) null;
    if (wname == "repPersonas")
      reportForm = (PrintForm) new repPersonas();
    return reportForm;
  }

  public InfoGovPrintForm createInfoGovReportForm(string wname)
  {
    InfoGovPrintForm infoGovReportForm = (InfoGovPrintForm) null;
    switch (wname)
    {
      case "irepPermisosRoles":
        infoGovReportForm = (InfoGovPrintForm) new repPermisosRoles();
        break;
      case "irepDFPersona":
        infoGovReportForm = (InfoGovPrintForm) new repDFPersona();
        break;
    }
    return infoGovReportForm;
  }

  public EntityForm<T> createEntityForm<T>() where T : Entity
  {
    IEntityForm entityForm = (IEntityForm) null;
    switch (typeof (T).Name)
    {
      case "Banco":
        entityForm = (IEntityForm) new abmBanco();
        break;
      case "Barrio":
        entityForm = (IEntityForm) new abmBarrio();
        break;
      case "Calle":
        entityForm = (IEntityForm) new abmCalle();
        break;
      case "Departamento":
        entityForm = (IEntityForm) new abmDepartamento();
        break;
      case "EstadoCivil":
        entityForm = (IEntityForm) new abmEstadoCivil();
        break;
      case "Localidad":
        entityForm = (IEntityForm) new abmLocalidad();
        break;
      case "Persona":
        entityForm = (IEntityForm) new abmPersona();
        break;
      case "PosicionFiscal":
        entityForm = (IEntityForm) new abmPosicionFiscal();
        break;
      case "Proveedor":
        entityForm = (IEntityForm) new abmProveedor();
        break;
      case "Provincia":
        entityForm = (IEntityForm) new abmProvincia();
        break;
      case "TipoDocumento":
        entityForm = (IEntityForm) new abmTipoDocumento();
        break;
    }
    return (EntityForm<T>) entityForm;
  }

  public SearchForm<T> createSearchForm<T>() where T : Entity
  {
    ISearchForm searchForm = (ISearchForm) null;
    switch (typeof (T).Name)
    {
      case "Banco":
        searchForm = (ISearchForm) new SearchForm<Banco>("Banco");
        break;
      case "Barrio":
        searchForm = (ISearchForm) new SearchForm<Barrio>("Barrio");
        break;
      case "Calle":
        searchForm = (ISearchForm) new SearchForm<Calle>("Calle");
        break;
      case "CodigoPostal":
        searchForm = (ISearchForm) new SearchForm<CodigoPostal>("Código Postal");
        break;
      case "CuentaContable":
        searchForm = (ISearchForm) new SearchForm<CuentaContable>("CuentaContable");
        break;
      case "Departamento":
        searchForm = (ISearchForm) new SearchForm<Departamento>("Departamento");
        break;
      case "Distrito":
        searchForm = (ISearchForm) new SearchForm<Distrito>("Distrito");
        break;
      case "EstadoCivil":
        searchForm = (ISearchForm) new SearchForm<EstadoCivil>("Estado Civil");
        break;
      case "Legajo":
        searchForm = (ISearchForm) new SearchForm<Legajo>("Legajo");
        break;
      case "Localidad":
        searchForm = (ISearchForm) new SearchForm<Localidad>("Localidad");
        break;
      case "Organigrama":
        searchForm = (ISearchForm) new SearchForm<Organigrama>("Organigrama");
        break;
      case "Organismo":
        searchForm = (ISearchForm) new SearchForm<Organismo>("Organismo");
        break;
      case "Persona":
        searchForm = (ISearchForm) new SearchForm<InfoGov.Plugins.Infogov.Entidades.Persona>("Persona");
        break;
      case "PosicionFiscal":
        searchForm = (ISearchForm) new SearchForm<PosicionFiscal>("Posición Fiscal");
        break;
      case "Provincia":
        searchForm = (ISearchForm) new SearchForm<Provincia>("Provincia");
        break;
      case "Rol":
        searchForm = (ISearchForm) new SearchForm<Rol>("Roles");
        break;
      case "Sistema":
        searchForm = (ISearchForm) new SearchForm<Sistema>("Sistema");
        break;
      case "TipoDocumento":
        searchForm = (ISearchForm) new SearchForm<TipoDocumento>("Tipo de Documento");
        break;
      case "TipoFapa":
        searchForm = (ISearchForm) new SearchForm<TipoFapa>("Tipos de Facilidades");
        break;
      case "UbicacionFisica":
        searchForm = (ISearchForm) new SearchForm<UbicacionFisica>("UbicacionFisica");
        break;
      case "UserEntity":
        searchForm = (ISearchForm) new SearchForm<UserEntity>("Usuarios");
        break;
      case "Usuario":
        searchForm = (ISearchForm) new SearchForm<Usuario>("Usuario");
        break;
    }
    return (SearchForm<T>) searchForm;
  }
}
