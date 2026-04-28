// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.FabricaExpertos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Expertos.AforosDeudoresVarios;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Expertos.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Expertos.PlanPago;

#nullable disable
namespace InfoGov.Plugins.Recaudacion;

public class FabricaExpertos : ExpertsFactory
{
  public Expert createWindowExpert(string wname)
  {
    Expert windowExpert = (Expert) null;
    switch (wname)
    {
      case "frmAforoComeSM":
        windowExpert = (Expert) new ExpAforoComeSM();
        break;
      case "frmAforosDeudoresVarios":
        windowExpert = (Expert) new ExpAforoDV();
        break;
      case "frmBeneficiariosLicencias":
        windowExpert = (Expert) new ExpBeneficiarios();
        break;
      case "frmConfiguraciones":
        windowExpert = (Expert) new ExpConfiguracion(false);
        break;
      case "frmControlCajaGuay":
        windowExpert = (Expert) new ExpControlCajaGuay();
        break;
      case "frmCuentaCorriente":
        windowExpert = (Expert) new ExpCuentaCorriente();
        break;
      case "frmDerechosVarios":
        windowExpert = (Expert) new ExpDerechoVario();
        break;
      case "frmEmisionBoleto":
        windowExpert = (Expert) new ExpEmiBole();
        break;
      case "frmEmisionMasivaAntenaGUAY":
        windowExpert = (Expert) new ExpEmisionMasivaAntenasGUAY();
        break;
      case "frmEmisionMasivaAntenaGUAYIndividual":
        windowExpert = (Expert) new ExpEmisionMasivaAntenasGUAY();
        break;
      case "frmEmisionMasivaCementerioGUAY":
        windowExpert = (Expert) new ExpEmisionMasivaCementerioGUAY();
        break;
      case "frmEmisionMasivaCementerioSM":
        windowExpert = (Expert) new ExpEmisionMasivaCementerioSM();
        break;
      case "frmEmisionMasivaCementerioSMIndividual":
        windowExpert = (Expert) new ExpEmisionMasivaCementerioSM();
        break;
      case "frmEmisionMasivaComercioGUAY":
        windowExpert = (Expert) new ExpEmisionMasivaComerciosGUAY();
        break;
      case "frmEmisionMasivaComercioGUAYIndividual":
        windowExpert = (Expert) new ExpEmisionMasivaComerciosGUAY();
        break;
      case "frmEmisionMasivaComercioSM":
        windowExpert = (Expert) new ExpEmisionMasivaComercioSM();
        break;
      case "frmEmisionMasivaComercioSMIndividual":
        windowExpert = (Expert) new ExpEmisionMasivaComercioSM();
        break;
      case "frmEmisionMasivaTasas":
        windowExpert = (Expert) new ExpEmisionMasivaTasas();
        break;
      case "frmEmisionMasivaTasasIndividual":
        windowExpert = (Expert) new ExpEmisionMasivaTasas();
        break;
      case "frmEmisionMasivaTasasM":
        windowExpert = (Expert) new ExpEmisionMasivaTasasM();
        break;
      case "frmEmisionMasivaTasasSM":
        windowExpert = (Expert) new ExpEmisionMasivaTasasSM();
        break;
      case "frmEnviarMailMasivoTasas":
        windowExpert = (Expert) new ExpEmisionMasivaTasas();
        break;
      case "frmEnviarMailMasivoTunuyan":
        windowExpert = (Expert) new ExpEnviarMailMasivoTunuyan();
        break;
      case "frmEnvioMasivoEmailsSM":
        windowExpert = (Expert) new ExpEnvioMasivoEmailsSM();
        break;
      case "frmIngresoBoletoCaja":
        windowExpert = (Expert) new ExpBoletoCaja();
        break;
      case "frmIngresoBoletoCajaGuay":
        windowExpert = (Expert) new ExpBoletoCajaGuay();
        break;
      case "frmIngresoBoletoCajaMP":
        windowExpert = (Expert) new ExpBoletoCajaMP();
        break;
      case "frmIngresoBoletoCajaRV":
        windowExpert = (Expert) new ExpBoletoCajaRV();
        break;
      case "frmIngresoBoletoGrupo":
        windowExpert = (Expert) new ExpBoletoGrupo();
        break;
      case "frmIngresoBoletoGrupoMP":
        windowExpert = (Expert) new ExpBoletoGrupoMP();
        break;
      case "frmIngresoBoletoGrupoRV":
        windowExpert = (Expert) new ExpBoletoGrupoRV();
        break;
      case "frmMigraciones":
        windowExpert = (Expert) new ExpMigraciones();
        break;
      case "frmParametrosGenerales":
        windowExpert = (Expert) new ExpParametrosGenerales();
        break;
      case "frmPlanPago":
        windowExpert = (Expert) new ExpPlanPago();
        break;
      case "frmPlanillaDistribucionBoletos":
        windowExpert = (Expert) new ExpEmisionMasivaTasas();
        break;
      case "frmReimpresionTicket":
        windowExpert = (Expert) new ExpReimpresionTicket();
        break;
      case "frmReimpresionTicketMP":
        windowExpert = (Expert) new ExpReimpresionTicket();
        break;
      case "gridAdministracionCorreos":
        windowExpert = (Expert) new ExpAdministracionCorreos();
        break;
      case "gridAdministracionCorreosGUAY":
        windowExpert = (Expert) new ExpAdministracionCorreosGUAY();
        break;
      case "gridAsignacionOrdenLiqu":
        windowExpert = (Expert) new ExpAsignacionOrdenLiqu();
        break;
      case "gridConcepto":
        windowExpert = (Expert) new ExpConcepto();
        break;
      case "gridDebitoAutomatico":
        windowExpert = (Expert) new ExpDebitoAutomatico();
        break;
      case "gridDescuentosConcepto":
        windowExpert = (Expert) new ExpDescuentosConcepto();
        break;
      case "gridExcepcion":
        windowExpert = (Expert) new ExpExcepcion();
        break;
      case "gridExcepciones":
        windowExpert = (Expert) new ExpExcepciones();
        break;
      case "gridExcepcionesComer":
        windowExpert = (Expert) new ExpExcepcionesComer();
        break;
      case "gridFeriado":
        windowExpert = (Expert) new ExpFeriado();
        break;
      case "gridInteresRecargo":
        windowExpert = (Expert) new ExpInteresRecargo();
        break;
      case "gridModificarFormaPago":
        windowExpert = (Expert) new ExpModificarFormaPago();
        break;
      case "gridParametrosRentas":
        windowExpert = (Expert) new ExpParametrosRentas();
        break;
      case "gridTipoFacilidadPago":
        windowExpert = (Expert) new ExpTipoFacilidadPago();
        break;
      case "gridTipoPago":
        windowExpert = (Expert) new ExpTipoPago();
        break;
      case "gridUsuarioFacilidad":
        windowExpert = (Expert) new ExpUsuarioFacilidad();
        break;
    }
    return windowExpert;
  }

  public EntityExpert<T> createEntityExpert<T>() where T : Entity
  {
    IEntityExpert entityExpert = (IEntityExpert) null;
    switch (typeof (T).Name)
    {
      case "BancoRecaudacion":
        entityExpert = (IEntityExpert) new ExpBancoRecaudacion();
        break;
      case "CCComun":
        entityExpert = (IEntityExpert) new ExpCCComun();
        break;
      case "Concepto":
        entityExpert = (IEntityExpert) new ExpConcepto();
        break;
      case "CuentaCome":
        entityExpert = (IEntityExpert) new ExpCuentaCome();
        break;
      case "DerechoVarioPadreMP":
        entityExpert = (IEntityExpert) new ExpDerechoVarioPadreMP();
        break;
      case "EnteRecaudador":
        entityExpert = (IEntityExpert) new ExpEnteReca();
        break;
      case "Excepcion":
        entityExpert = (IEntityExpert) new ExpExcepcion();
        break;
      case "PlanPago":
        entityExpert = (IEntityExpert) new ExpPlanPago();
        break;
      case "TipoFacilidadPago":
        entityExpert = (IEntityExpert) new ExpTipoFacilidadPago();
        break;
    }
    return (EntityExpert<T>) entityExpert;
  }

  public SearchExpert<T> createSearchExpert<T>() where T : Entity
  {
    ISearchExpert searchExpert = (ISearchExpert) null;
    switch (typeof (T).Name)
    {
      case "BancoRecaudacion":
        searchExpert = (ISearchExpert) new ExpBancoRecaudacion();
        break;
      case "CCComun":
        searchExpert = (ISearchExpert) new ExpCCComun();
        break;
      case "Concepto":
        searchExpert = (ISearchExpert) new ExpConcepto();
        break;
      case "CuentaCome":
        searchExpert = (ISearchExpert) new ExpCuentaCome();
        break;
      case "DerechoVarioPadreMP":
        searchExpert = (ISearchExpert) new ExpDerechoVarioPadreMP();
        break;
      case "EnteRecaudador":
        searchExpert = (ISearchExpert) new ExpEnteReca();
        break;
      case "Excepcion":
        searchExpert = (ISearchExpert) new ExpExcepcion();
        break;
      case "PlanPago":
        searchExpert = (ISearchExpert) new ExpPlanPago();
        break;
      case "TipoFacilidadPago":
        searchExpert = (ISearchExpert) new ExpTipoFacilidadPago();
        break;
    }
    return (SearchExpert<T>) searchExpert;
  }
}
