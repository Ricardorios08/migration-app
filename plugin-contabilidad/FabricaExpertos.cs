// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.FabricaExpertos
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Expertos;
using InfoGov.Plugins.Infogov.Expertos;

#nullable disable
namespace InfoGov.Plugins.Contabilidad;

public class FabricaExpertos : ExpertsFactory
{
  public Expert createWindowExpert(string wname)
  {
    Expert windowExpert = (Expert) null;
    switch (wname)
    {
      case "frmCruzarDebitos":
        windowExpert = (Expert) new ExpDebitos();
        break;
      case "frmGenerarBalanceMensual":
        windowExpert = (Expert) new ExpGenerarBalanceMensual();
        break;
      case "frmParamComiBancRecaudadores":
        windowExpert = (Expert) new ExpParamComiBancarias();
        break;
      case "frmParamComiBancTesoreria":
        windowExpert = (Expert) new ExpParamComiBancarias();
        break;
      case "frmRevertirAsiento":
        windowExpert = (Expert) new ExpAsiento();
        break;
      case "gridCuentaContable":
        windowExpert = (Expert) new ExpCuentaContable();
        break;
      case "gridManualCuentaContable":
        windowExpert = (Expert) new ExpManualCuentaContable();
        break;
      case "gridParametroCierreEjercicio":
        windowExpert = (Expert) new ExpParametroCierreEjercicio();
        break;
      case "gridParametroInicioEjercicio":
        windowExpert = (Expert) new ExpParametroInicioEjercicio();
        break;
      case "gridTipoAsiento":
        windowExpert = (Expert) new ExpTipoAsiento();
        break;
      case "gridTipoCuentaContable":
        windowExpert = (Expert) new InfoGov.Plugins.Contabilidad.Expertos.ExpTipoCuentaContable();
        break;
    }
    return windowExpert;
  }

  public EntityExpert<T> createEntityExpert<T>() where T : Entity
  {
    IEntityExpert entityExpert = (IEntityExpert) null;
    string name = typeof (T).Name;
    return (EntityExpert<T>) entityExpert;
  }

  public SearchExpert<T> createSearchExpert<T>() where T : Entity
  {
    ISearchExpert searchExpert = (ISearchExpert) null;
    if (typeof (T).Name == "CuentaContable")
      searchExpert = (ISearchExpert) new ExpCuentaContable();
    return (SearchExpert<T>) searchExpert;
  }
}
