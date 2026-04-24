// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.FabricaVentanas
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Reportes.Certificados.Maipu.CertificadoExencion;
using InfoGov.Plugins.Recaudacion.Reportes.Certificados.SanMartin.CertificadoExencion;
using InfoGov.Plugins.Recaudacion.Reportes.CobranzaPorConcepto;
using InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay;
using InfoGov.Plugins.Recaudacion.Reportes.DebitoAutomatico;
using InfoGov.Plugins.Recaudacion.Reportes.GeneracionArchivoBanelcoLink;
using InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja;
using InfoGov.Plugins.Recaudacion.Reportes.IngresoRecaExterno;
using InfoGov.Plugins.Recaudacion.Reportes.Maipu.CajaDiaria;
using InfoGov.Plugins.Recaudacion.Reportes.Maipu.ConsultaBoleto;
using InfoGov.Plugins.Recaudacion.Reportes.Maipu.ReimpresionPP;
using InfoGov.Plugins.Recaudacion.Reportes.MultasTransitoGuay;
using InfoGov.Plugins.Recaudacion.Reportes.PagosWeb;
using InfoGov.Plugins.Recaudacion.Reportes.RegistroCorreosWeb;
using InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos;
using InfoGov.Plugins.Recaudacion.Reportes.SanMartin.DescuentoBono;
using InfoGov.Plugins.Recaudacion.Ventanas;
using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago;
using InfoGov.Reports;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion;

public class FabricaVentanas : WindowsFactory
{
  public BaseForm createWindowForm(string wname)
  {
    BaseForm windowForm = (BaseForm) null;
    switch (wname)
    {
      case "frmAforoComeSM":
        windowForm = (BaseForm) new frmAforoComeSM();
        break;
      case "frmAforosDeudoresVarios":
        windowForm = (BaseForm) new frmAforosDeudoresVarios();
        break;
      case "frmBeneficiariosLicencias":
        windowForm = (BaseForm) new frmBeneficiariosLicencias();
        break;
      case "frmConfiguraciones":
        windowForm = (BaseForm) new frmConfiguraciones();
        break;
      case "frmControlCajaGuay":
        windowForm = (BaseForm) new frmControlCajaGuay();
        break;
      case "frmCuentaCorriente":
        windowForm = (BaseForm) new frmCuentaCorriente();
        break;
      case "frmDerechosVarios":
        windowForm = (BaseForm) new frmDerechosVarios();
        break;
      case "frmEmisionBoleto":
        windowForm = (BaseForm) new frmEmisionBoleto();
        break;
      case "frmEmisionMasivaAntenaGUAY":
        windowForm = (BaseForm) new frmEmisionMasivaAntenaGUAY();
        break;
      case "frmEmisionMasivaAntenaGUAYIndividual":
        windowForm = (BaseForm) new frmEmisionMasivaAntenaGUAYIndividual();
        break;
      case "frmEmisionMasivaCementerioGUAY":
        windowForm = (BaseForm) new frmEmisionMasivaCementerioGUAY();
        break;
      case "frmEmisionMasivaCementerioSM":
        windowForm = (BaseForm) new frmEmisionMasivaCementerioSM();
        break;
      case "frmEmisionMasivaCementerioSMIndividual":
        windowForm = (BaseForm) new frmEmisionMasivaCementerioSMIndividual();
        break;
      case "frmEmisionMasivaComercioGUAY":
        windowForm = (BaseForm) new frmEmisionMasivaComercioGUAY();
        break;
      case "frmEmisionMasivaComercioGUAYIndividual":
        windowForm = (BaseForm) new frmEmisionMasivaComercioGUAYIndividual();
        break;
      case "frmEmisionMasivaComercioSM":
        windowForm = (BaseForm) new frmEmisionMasivaComercioSM();
        break;
      case "frmEmisionMasivaComercioSMIndividual":
        windowForm = (BaseForm) new frmEmisionMasivaComercioSMIndividual();
        break;
      case "frmEmisionMasivaTasas":
        windowForm = (BaseForm) new frmEmisionMasivaTasas();
        break;
      case "frmEmisionMasivaTasasIndividual":
        windowForm = (BaseForm) new frmEmisionMasivaTasasIndividual();
        break;
      case "frmEmisionMasivaTasasM":
        windowForm = (BaseForm) new frmEmisionMasivaTasasM();
        break;
      case "frmEmisionMasivaTasasSM":
        windowForm = (BaseForm) new frmEmisionMasivaTasasSM();
        break;
      case "frmEnviarMailMasivoTasas":
        windowForm = (BaseForm) new frmEnviarMailMasivoTasas();
        break;
      case "frmEnviarMailMasivoTunuyan":
        windowForm = (BaseForm) new frmEnviarMailMasivoTunuyan();
        break;
      case "frmEnvioMasivoEmailsSM":
        windowForm = (BaseForm) new frmEnvioMasivoEmailsSM();
        break;
      case "frmIngresoBoletoCaja":
        windowForm = (BaseForm) new frmIngresoBoletoCaja();
        break;
      case "frmIngresoBoletoCajaGuay":
        windowForm = (BaseForm) new frmIngresoBoletoCajaGuay();
        break;
      case "frmIngresoBoletoCajaMP":
        windowForm = (BaseForm) new frmIngresoBoletoCajaMP();
        break;
      case "frmIngresoBoletoCajaRV":
        windowForm = (BaseForm) new frmIngresoBoletoCajaRV();
        break;
      case "frmIngresoBoletoGrupo":
        windowForm = (BaseForm) new frmIngresoBoletoGrupo();
        break;
      case "frmIngresoBoletoGrupoMP":
        windowForm = (BaseForm) new frmIngresoBoletoGrupoMP();
        break;
      case "frmIngresoBoletoGrupoRV":
        windowForm = (BaseForm) new frmIngresoBoletoGrupoRV();
        break;
      case "frmMigraciones":
        windowForm = (BaseForm) new frmMigraciones();
        break;
      case "frmParametrosGenerales":
        windowForm = (BaseForm) new frmParametrosGenerales();
        break;
      case "frmPlanPago":
        windowForm = (BaseForm) new frmPlanPago();
        break;
      case "frmPlanillaDistribucionBoletos":
        windowForm = (BaseForm) new frmPlanillaDistribucionBoletos();
        break;
      case "frmReimpresionTicket":
        windowForm = (BaseForm) new frmReimpresionTicket();
        break;
      case "frmReimpresionTicketMP":
        windowForm = (BaseForm) new frmReimpresionTicketMP();
        break;
      case "gridAdministracionCorreos":
        windowForm = (BaseForm) new gridAdministracionCorreos();
        break;
      case "gridAdministracionCorreosGUAY":
        windowForm = (BaseForm) new gridAdministracionCorreosGUAY();
        break;
      case "gridAsignacionOrdenLiqu":
        windowForm = (BaseForm) new gridAsignacionOrdenLiqu();
        break;
      case "gridConcepto":
        windowForm = (BaseForm) new gridConcepto();
        break;
      case "gridDebitoAutomatico":
        windowForm = (BaseForm) new gridDebitoAutomatico();
        break;
      case "gridDescuentosConcepto":
        windowForm = (BaseForm) new gridDescuentosConcepto();
        break;
      case "gridExcepcion":
        windowForm = (BaseForm) new gridExcepcion();
        break;
      case "gridExcepciones":
        windowForm = (BaseForm) new gridExcepciones();
        break;
      case "gridExcepcionesComer":
        windowForm = (BaseForm) new gridExcepcionesComer();
        break;
      case "gridFeriado":
        windowForm = (BaseForm) new gridFeriado();
        break;
      case "gridInteresRecargo":
        windowForm = (BaseForm) new gridInteresRecargo();
        break;
      case "gridModificarFormaPago":
        windowForm = (BaseForm) new gridModificarFormaPago();
        break;
      case "gridParametrosRentas":
        windowForm = (BaseForm) new gridParametrosRentas();
        break;
      case "gridTipoFacilidadPago":
        windowForm = (BaseForm) new gridTipoFacilidadPago();
        break;
      case "gridTipoPago":
        windowForm = (BaseForm) new gridTipoPago();
        break;
      case "gridUsuarioFacilidad":
        windowForm = (BaseForm) new gridUsuarioFacilidad();
        break;
    }
    return windowForm;
  }

  public PrintForm createReportForm(string wname)
  {
    PrintForm reportForm = (PrintForm) null;
    if (wname == "repDebitoAutomatico")
      reportForm = (PrintForm) new repDebitoAutomatico();
    return reportForm;
  }

  public InfoGovPrintForm createInfoGovReportForm(string wname)
  {
    InfoGovPrintForm infoGovReportForm = (InfoGovPrintForm) null;
    switch (wname)
    {
      case "irepCDMP":
        infoGovReportForm = (InfoGovPrintForm) new repCDMP();
        break;
      case "irepCertExenMP":
        infoGovReportForm = (InfoGovPrintForm) new repCertExenMP();
        break;
      case "irepCertExenSM":
        infoGovReportForm = (InfoGovPrintForm) new repCertExenSM();
        break;
      case "irepCobranzaPorConcepto":
        infoGovReportForm = (InfoGovPrintForm) new repCobranzaPorConcepto();
        break;
      case "irepConsultaBoletoMP":
        infoGovReportForm = (InfoGovPrintForm) new repConsultaBoletoMP();
        break;
      case "irepControlCajaGuay":
        infoGovReportForm = (InfoGovPrintForm) new repControlCajaGuay();
        break;
      case "irepDescuentoBonoSM":
        infoGovReportForm = (InfoGovPrintForm) new repDescuentoBonoSM();
        break;
      case "irepGeneracionArchivoBanelcoLink":
        infoGovReportForm = (InfoGovPrintForm) new repGeneracionArchivoBanelcoLink();
        break;
      case "irepIngresoCaja":
        infoGovReportForm = (InfoGovPrintForm) new repIngresoCaja();
        break;
      case "irepIngresoRecaExterno":
        infoGovReportForm = (InfoGovPrintForm) new repIngresoRecaExterno();
        break;
      case "irepMultasTransitoGuay":
        infoGovReportForm = (InfoGovPrintForm) new repMultasTransitoGuay();
        break;
      case "irepPagosVarios":
        infoGovReportForm = (InfoGovPrintForm) new repPagosVarios();
        break;
      case "irepRegistroCorreosWeb":
        infoGovReportForm = (InfoGovPrintForm) new repRegistroCorreosWeb();
        break;
      case "irepRegistroEnvioCorreos":
        infoGovReportForm = (InfoGovPrintForm) new repRegistroEnvioCorreos();
        break;
      case "irepRegistroEnvioCorreosTunuyan":
        infoGovReportForm = (InfoGovPrintForm) new repRegistroEnvioCorreos();
        break;
      case "irepReimpresionPPMP":
        infoGovReportForm = (InfoGovPrintForm) new repReimpresionPPMP();
        break;
    }
    return infoGovReportForm;
  }

  public EntityForm<T> createEntityForm<T>() where T : Entity
  {
    IEntityForm entityForm = (IEntityForm) null;
    string name = typeof (T).Name;
    return (EntityForm<T>) entityForm;
  }

  public SearchForm<T> createSearchForm<T>() where T : Entity
  {
    ISearchForm searchForm = (ISearchForm) null;
    switch (typeof (T).Name)
    {
      case "BancoRecaudacion":
        searchForm = (ISearchForm) new SearchForm<BancoRecaudacion>("BancoRecaudacion");
        break;
      case "CCComun":
        searchForm = (ISearchForm) new SearchForm<CCComun>("Cuenta", new Size(900, 600));
        break;
      case "Concepto":
        searchForm = (ISearchForm) new SearchForm<Concepto>("Concepto");
        break;
      case "CuentaCome":
        searchForm = (ISearchForm) new SearchForm<CuentaCome>("Cuenta Comercio");
        break;
      case "DerechoVarioPadreMP":
        searchForm = (ISearchForm) new SearchForm<DerechoVarioPadreMP>("Códigos Padre Servicios");
        break;
      case "EnteRecaudador":
        searchForm = (ISearchForm) new SearchForm<EnteRecaudador>("EnteRecaudador");
        break;
      case "Excepcion":
        searchForm = (ISearchForm) new SearchForm<Excepcion>("Exención");
        break;
      case "PlanPago":
        searchForm = (ISearchForm) new SearchForm<InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago>("Planes de Pago", new Size(800, 400));
        break;
      case "TipoFacilidadPago":
        searchForm = (ISearchForm) new SearchForm<TipoFacilidadPago>("Tipo Facilidad de Pago", new Size(800, 400));
        break;
    }
    return (SearchForm<T>) searchForm;
  }
}
