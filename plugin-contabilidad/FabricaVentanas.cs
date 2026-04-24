// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.FabricaVentanas
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Contabilidad.Reportes.DevitosVsRetenciones;
using InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral;
using InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados;
using InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.PagosPresupuestarios;
using InfoGov.Plugins.Contabilidad.Ventanas;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Ventanas;
using InfoGov.Reports;

#nullable disable
namespace InfoGov.Plugins.Contabilidad;

public class FabricaVentanas : WindowsFactory
{
  public BaseForm createWindowForm(string wname)
  {
    BaseForm windowForm = (BaseForm) null;
    switch (wname)
    {
      case "frmCruzarDebitos":
        windowForm = (BaseForm) new frmCruzarDebitos();
        break;
      case "frmGenerarBalanceMensual":
        windowForm = (BaseForm) new frmGenerarBalanceMensual();
        break;
      case "frmParamComiBancRecaudadores":
        windowForm = (BaseForm) new frmParamComiBancRecaudadores();
        break;
      case "frmParamComiBancTesoreria":
        windowForm = (BaseForm) new frmParamComiBancTesoreria();
        break;
      case "frmRevertirAsiento":
        windowForm = (BaseForm) new frmRevertirAsiento();
        break;
      case "gridCuentaContable":
        windowForm = (BaseForm) new GridForm<CuentaContable>("Cuentas Contables");
        break;
      case "gridManualCuentaContable":
        windowForm = (BaseForm) new gridManualCuentaContable();
        break;
      case "gridParametroCierreEjercicio":
        windowForm = (BaseForm) new gridParametroCierreEjercicio();
        break;
      case "gridParametroInicioEjercicio":
        windowForm = (BaseForm) new gridParametroInicioEjercicio();
        break;
      case "gridTipoAsiento":
        windowForm = (BaseForm) new gridTipoAsiento();
        break;
      case "gridTipoCuentaContable":
        windowForm = (BaseForm) new gridTipoCuentaContable();
        break;
    }
    return windowForm;
  }

  public PrintForm createReportForm(string wname) => (PrintForm) null;

  public InfoGovPrintForm createInfoGovReportForm(string wname)
  {
    InfoGovPrintForm infoGovReportForm = (InfoGovPrintForm) null;
    switch (wname)
    {
      case "irepSubDevengados":
        infoGovReportForm = (InfoGovPrintForm) new repSubDevengados();
        break;
      case "irepPagosPresupuestarios":
        infoGovReportForm = (InfoGovPrintForm) new repPagosPresupuestarios();
        break;
      case "irepLibroMayorGeneral":
        infoGovReportForm = (InfoGovPrintForm) new repLibroMayorGeneral();
        break;
      case "irepDebitosvsRetenciones":
        infoGovReportForm = (InfoGovPrintForm) new repDebitosVsRetenciones();
        break;
      case "irepLibroDiario":
        infoGovReportForm = (InfoGovPrintForm) new repLibroDiario();
        break;
    }
    return infoGovReportForm;
  }

  public EntityForm<T> createEntityForm<T>() where T : Entity
  {
    IEntityForm entityForm = (IEntityForm) null;
    if (typeof (T).Name == "CuentaContable")
      entityForm = (IEntityForm) new abmCuentaContable();
    return (EntityForm<T>) entityForm;
  }

  public SearchForm<T> createSearchForm<T>() where T : Entity
  {
    ISearchForm searchForm = (ISearchForm) null;
    string name = typeof (T).Name;
    return (SearchForm<T>) searchForm;
  }
}
