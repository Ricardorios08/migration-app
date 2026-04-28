// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Details.Maipu.detailPPMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Entidades.PlanPago;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia;
using InfoGov.Utils;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Details.Maipu;

public class detailPPMP : BuscadorBasePP, IDetailPlanPago
{
  private DateTime hoy;
  private readonly EntityManager EM;
  private List<CuotaPlan> cuotasPlan;
  private List<DetaFapaMP> detallesPlan;
  private IPlanPago _plan;
  private Decimal totalRecargoActual = 0M;
  private Decimal totalCapitalActual = 0M;
  private Decimal totalDeudaActual = 0M;
  private Decimal tasaPeriodoActual = 0M;
  private Decimal descuentoRecargoActual = 0M;
  private Decimal porcentajeDescReca = 0M;
  private bool _limpiando;
  private IContainer components = (IContainer) null;
  private MetroPanel panCentral;
  private MetroPanel panCentralDer;
  private MetroPanel panCentralMed;
  private MetroPanel panCentralIzq;
  private MetroPanel panCentralSup;
  private MetroPanel panCentralDerSup;
  private MetroPanel panCentralDerMed;
  private GridControl gridControlResumen;
  private GridView gridViewResumen;
  private GridColumn colCuotaRes;
  private GridColumn colVenc;
  private GridColumn colCapi;
  private GridColumn colRecargo;
  private GridColumn colDescCap;
  private GridControl gridControlCuotas;
  private GridView gridViewCuotas;
  private GridColumn colCuota;
  private GridColumn colImpoCuota;
  private MetroLabel metroLabel1;
  private MetroDateTextBox dtbFechCuota;
  private MetroLabel metroLabel2;
  private MetroEntityBox mebTipoPlan;
  private MetroIntTextBox mibCuotApre;
  private MetroLabel metroLabel3;
  private MetroLabel lblInte;
  private MetroLabel lblMetodo;
  private MetroDecimalTextBox mdbDerecho;
  private MetroLabel metroLabel7;
  private MetroDecimalTextBox mdbTota;
  private MetroLabel metroLabel13;
  private MetroDecimalTextBox mdbInte;
  private MetroLabel metroLabel12;
  private MetroDecimalTextBox mdbApre;
  private MetroLabel metroLabel11;
  private MetroDecimalTextBox mdbDescReca;
  private MetroLabel metroLabel10;
  private MetroDecimalTextBox mdbDescCap;
  private MetroLabel metroLabel9;
  private MetroDecimalTextBox mdbRecargo;
  private MetroLabel metroLabel8;
  private GridColumn colDescReca;
  private GridColumn colApre;
  private GridColumn colInte;
  private GridColumn colTotal;
  private MetroLabel lblTipoMetodo;
  private MetroLabel lblPorcInte;

  public detailPPMP(IPlanPago pp, bool modificarFecha)
  {
    this.InitializeComponent();
    this.cuotasPlan = new List<CuotaPlan>();
    this.detallesPlan = new List<DetaFapaMP>();
    this.hoy = Misc.Now();
    this.gridControlCuotas.DataSource = (object) this.cuotasPlan;
    this.gridControlResumen.DataSource = (object) this.detallesPlan;
    this.mebTipoPlan.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarTipoFacilidad);
    this.mebTipoPlan.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarTipoFacilidad);
    this.EM = new EntityManager(28);
    this._plan = pp;
    this.dtbFechCuota.MinDate = this.hoy.Date;
    this.HabilitarControles(false);
    this.Disposed -= new EventHandler(this.detailPPMP_Disposed);
    this.Disposed += new EventHandler(this.detailPPMP_Disposed);
    this.dtbFechCuota.Enabled = modificarFecha;
  }

  public override void Buscar(CtaCte cuenta) => throw new Exception("Sin Implementar.....");

  public override void Limpiar()
  {
    this.EjecutarEnUI((Action) (() =>
    {
      if (this._limpiando)
        return;
      this._limpiando = true;
      try
      {
        this.cuotasPlan.Clear();
        this.detallesPlan.Clear();
        this.dtbFechCuota.Date = this.hoy.Date;
        this.mebTipoPlan.EntityChangedDone -= new AfterEntityChange(this.mebTipoPlan_EntityChangedDone);
        this.mebTipoPlan.Entity = (Entity) null;
        this.mebTipoPlan.EntityChangedDone += new AfterEntityChange(this.mebTipoPlan_EntityChangedDone);
        this.mdbDerecho.Text = this.mdbRecargo.Text = this.mdbDescCap.Text = this.mdbDescReca.Text = this.mdbApre.Text = this.mdbInte.Text = this.mdbTota.Text = this.lblTipoMetodo.Text = this.lblPorcInte.Text = string.Empty;
        this.mibCuotApre.IntText = 0;
        this.totalRecargoActual = 0M;
        this.totalCapitalActual = 0M;
        this.totalDeudaActual = 0M;
        this.tasaPeriodoActual = 0M;
        this.descuentoRecargoActual = 0M;
        this.porcentajeDescReca = 0M;
        (this._plan as DTOFaciPagoMP).CodiTifa = (short) 0;
        (this._plan as DTOFaciPagoMP).CacuFapa = (short) 0;
        (this._plan as DTOFaciPagoMP).CaapFapa = (short) 0;
        (this._plan as DTOFaciPagoMP).TainFapa = 0M;
        (this._plan as DTOFaciPagoMP).DereTifa = 0M;
        (this._plan as DTOFaciPagoMP).CapiFapa = 0M;
        (this._plan as DTOFaciPagoMP).DecaFapa = 0M;
        (this._plan as DTOFaciPagoMP).RecaFapa = 0M;
        (this._plan as DTOFaciPagoMP).DereFapa = 0M;
        (this._plan as DTOFaciPagoMP).ApreFapa = 0M;
        (this._plan as DTOFaciPagoMP).InteFapa = 0M;
        (this._plan as DTOFaciPagoMP).TotaFapa = 0M;
        (this._plan as DTOFaciPagoMP).DetallesFacilidad.Clear();
        (this._plan as DTOFaciPagoMP).ExtrTifa = string.Empty;
        this.ActualizarGrillas();
      }
      finally
      {
        this._limpiando = false;
      }
    }));
  }

  public void CargarDetallePlanPago()
  {
    if (!(this._plan is DTOFaciPagoMP plan))
      return;
    plan.CodiTifa = this.mebTipoPlan.Entity != null ? ((TipoFacilidadPago) this.mebTipoPlan.Entity).CodiTifa : (short) 0;
    plan.CacuFapa = ((ColumnView) this.gridViewCuotas).GetFocusedRow() is CuotaPlan focusedRow ? focusedRow.Cuota : (short) 0;
    plan.CaapFapa = this.mibCuotApre.ShortText;
    plan.TainFapa = ((TipoFacilidadPago) this.mebTipoPlan.Entity).InteTifa;
    plan.DereTifa = ((TipoFacilidadPago) this.mebTipoPlan.Entity).DereTifa;
    plan.CapiFapa = this.mdbDerecho.DecimalText;
    plan.DecaFapa = this.mdbDescCap.DecimalText;
    plan.RecaFapa = this.mdbRecargo.DecimalText;
    plan.DereFapa = this.mdbDescReca.DecimalText;
    plan.ApreFapa = this.mdbApre.DecimalText;
    plan.InteFapa = this.mdbInte.DecimalText;
    plan.TotaFapa = this.mdbTota.DecimalText;
    plan.DetallesFacilidad.Clear();
    plan.DetallesFacilidad.AddRange((IEnumerable<DetaFapaMP>) this.detallesPlan);
    plan.ExtrTifa = ((TipoFacilidadPago) this.mebTipoPlan.Entity).ExtrTifa;
  }

  public string ValidarDatos()
  {
    List<string> values = new List<string>();
    if (this.dtbFechCuota.Date < this.hoy.Date)
      values.Add("La fecha de la primera cuota no puede ser menor a \nla fecha actual.");
    if (this.mebTipoPlan.Entity == null)
    {
      values.Add("Debe seleccionar un tipo de plan de pago.");
    }
    else
    {
      if (this.cuotasPlan == null || this.cuotasPlan.Count == 0)
        values.Add("No se han generado opciones de cuotas para el plan de pago.");
      else if (((ColumnView) this.gridViewCuotas).FocusedRowHandle < 0)
        values.Add("Debe seleccionar una opción de cuotas para el plan de pago.");
      else if (this.detallesPlan == null || this.detallesPlan.Count == 0)
        values.Add("No se ha generado el detalle del plan de pago.");
      if (this.mibCuotApre.IntText <= 0)
      {
        values.Add("La cantidad de cuotas con apremio debe ser mayor a cero.");
      }
      else
      {
        int intText = this.mibCuotApre.IntText;
        List<DetaFapaMP> detallesPlan = this.detallesPlan;
        // ISSUE: explicit non-virtual call
        int count = detallesPlan != null ? __nonvirtual (detallesPlan.Count) : 0;
        if (intText > count)
          values.Add("La cantidad de cuotas con apremio no puede ser mayor a \nla cantidad total de cuotas elegidas.");
      }
    }
    return values.Count > 0 ? string.Join(Environment.NewLine, (IEnumerable<string>) values) : string.Empty;
  }

  public void CambioDeudaSeleccionada()
  {
    if (this.mebTipoPlan.Entity == null)
      return;
    this.Limpiar();
    this.HabilitarControles(false);
  }

  private void HabilitarControles(bool habilitar)
  {
    this.panCentralIzq.Enabled = this.panCentralMed.Enabled = this.panCentralDer.Enabled = habilitar;
  }

  private void LimpiarYCargarPrevioPlan()
  {
    this.EjecutarEnUI((Action) (() =>
    {
      this.cuotasPlan.Clear();
      this.detallesPlan.Clear();
      this.mdbDerecho.Text = this.mdbRecargo.Text = this.mdbDescCap.Text = this.mdbDescReca.Text = this.mdbApre.Text = this.mdbInte.Text = this.mdbTota.Text = this.lblTipoMetodo.Text = this.lblPorcInte.Text = string.Empty;
      this.mibCuotApre.IntText = 1;
    }));
    this.lblTipoMetodo.Text = ((TipoFacilidadPago) this.mebTipoPlan.Entity).MecaTifa;
    this.lblPorcInte.Text = ((TipoFacilidadPago) this.mebTipoPlan.Entity).InteTifa.ToString("N2") + " %";
  }

  private void ActualizarGrillas()
  {
    this.EjecutarEnUI((Action) (() =>
    {
      ((BaseView) this.gridViewCuotas).RefreshData();
      ((BaseView) this.gridViewResumen).RefreshData();
      this.gridViewResumen.UpdateSummary();
    }));
  }

  private void NotificarError(string error)
  {
    this.EjecutarEnUI((Action) (() => ToastHelper.ShowOrFallback((Form) null, error, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight)));
  }

  private Entity BuscarTipoFacilidad(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodTifa", "Código", FilterMode.Equal, text));
    else if (!string.IsNullOrEmpty(text.Trim()))
      filter.Items.Add(new FilterItem("DetaTifa", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<TipoFacilidadPago>(filter, true);
  }

  private Entity EncontrarTipoFacilidad(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiTifa", "Código", FilterMode.Equal, text));
    else if (!string.IsNullOrEmpty(text.Trim()))
      filter.Items.Add(new FilterItem("DetaTifa", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<TipoFacilidadPago>(filter, true, true);
  }

  private void mebTipoPlan_EntityChangedDone(object source, EntityChangedEventArgs e)
  {
    if (this._limpiando)
      return;
    if (this.mebTipoPlan.Entity == null)
      this.Limpiar();
    this.HabilitarControles(this.mebTipoPlan.Entity != null);
    if (this.mebTipoPlan.Entity == null)
      return;
    this.LimpiarYCargarPrevioPlan();
    this.CalcularCuotas();
    this.ActualizarGrillas();
  }

  private void CalcularCuotas()
  {
    TipoFacilidadPago entity = (TipoFacilidadPago) this.mebTipoPlan.Entity;
    short cumiTifa = entity.CumiTifa;
    short cumaTifa = entity.CumaTifa;
    Decimal immiTifa = entity.ImmiTifa;
    Decimal inteTifa = entity.InteTifa;
    this.porcentajeDescReca = entity.DereTifa;
    DTOFaciPagoMP plan = this._plan as DTOFaciPagoMP;
    Decimal num1 = 0M;
    Decimal num2 = 0M;
    Decimal num3 = 0M;
    Decimal num4 = 0M;
    if (plan?.DeudaSeleccionada != null && plan.DeudaSeleccionada.Count > 0)
    {
      foreach (CCMaipu ccMaipu in plan.DeudaSeleccionada)
      {
        List<DetaCCMaipu> detalles = ccMaipu?.Detalles;
        if (detalles != null)
        {
          foreach (DetaCCMaipu detaCcMaipu in detalles)
          {
            num1 += detaCcMaipu != null ? detaCcMaipu.SaldCtct : 0M;
            Decimal num5 = num2;
            Decimal? nullable = detaCcMaipu?.RecaCtct;
            Decimal? recaApre1 = detaCcMaipu?.RecaApre;
            Decimal valueOrDefault1 = (nullable.HasValue & recaApre1.HasValue ? new Decimal?(nullable.GetValueOrDefault() + recaApre1.GetValueOrDefault()) : new Decimal?()).GetValueOrDefault();
            num2 = num5 + valueOrDefault1;
            num3 += detaCcMaipu != null ? detaCcMaipu.ApreCtct : 0M;
            Decimal num6 = num4;
            Decimal? saldCtct = detaCcMaipu?.SaldCtct;
            Decimal? recaCtct = detaCcMaipu?.RecaCtct;
            nullable = saldCtct.HasValue & recaCtct.HasValue ? new Decimal?(saldCtct.GetValueOrDefault() + recaCtct.GetValueOrDefault()) : new Decimal?();
            Decimal? recaApre2 = detaCcMaipu?.RecaApre;
            Decimal valueOrDefault2 = (nullable.HasValue & recaApre2.HasValue ? new Decimal?(nullable.GetValueOrDefault() + recaApre2.GetValueOrDefault()) : new Decimal?()).GetValueOrDefault();
            num4 = num6 + valueOrDefault2;
          }
        }
      }
    }
    Decimal num7 = num2 * (this.porcentajeDescReca / 100M);
    if (num7 > num2)
      num7 = num2;
    this.descuentoRecargoActual = num7;
    Decimal num8 = num4 - num7;
    if (num8 < immiTifa || num8 == 0M)
    {
      this.NotificarError($"El importe total de la deuda seleccionada ({num8:C2}) es menor al importe mínimo requerido para éste tipo de plan ({immiTifa:C2}).");
      this.Limpiar();
    }
    else if (cumiTifa < (short) 1)
    {
      this.NotificarError($"La cantidad mínima de cuotas ({cumiTifa:C2}) no es valida.");
      this.Limpiar();
    }
    else if (num8 / (Decimal) cumiTifa < immiTifa)
    {
      this.NotificarError($"No es posible generar un plan de pago con la cantidad mínima de cuotas ({cumiTifa}) ya que el importe por cuota sería menor a {immiTifa:C2}.");
      this.Limpiar();
    }
    else
    {
      short num9 = Math.Max((short) 1, cumiTifa);
      short num10 = cumaTifa > (short) 0 ? cumaTifa : cumiTifa;
      Decimal num11 = inteTifa / 100M;
      this.totalCapitalActual = num1;
      this.totalRecargoActual = num2;
      this.totalDeudaActual = num8;
      this.tasaPeriodoActual = num11;
      switch (entity.MecaTifa)
      {
        case "Frances":
          for (short cuotas = num9; (int) cuotas <= (int) num10; ++cuotas)
          {
            Decimal num12 = detailPPMP.CalcularCuotaFrancesa(this.totalDeudaActual, this.tasaPeriodoActual, (int) cuotas);
            if (!(num12 < immiTifa))
              this.cuotasPlan.Add(new CuotaPlan()
              {
                Cuota = cuotas,
                Importe = num12
              });
            else
              break;
          }
          break;
      }
      this.mdbDerecho.DecimalText = num1;
      this.mdbRecargo.DecimalText = num2;
      this.mdbDescCap.DecimalText = 0M;
      this.mdbDescReca.DecimalText = this.descuentoRecargoActual;
      this.mdbApre.DecimalText = num3;
      this.mdbInte.DecimalText = 0M;
      this.mdbTota.DecimalText = this.totalDeudaActual + num3;
      this.EjecutarEnUI((Action) (() =>
      {
        ((BaseView) this.gridViewCuotas).RefreshData();
        ((BaseView) this.gridViewResumen).RefreshData();
        this.gridViewResumen.UpdateSummary();
        if (this.cuotasPlan.Count <= 0)
          return;
        ((ColumnView) this.gridViewCuotas).FocusedRowHandle = 0;
        CuotaPlan cuotaPlan = this.cuotasPlan[0];
        this.CargarDetallePara(cuotaPlan.Cuota, cuotaPlan.Importe);
      }));
    }
  }

  private static Decimal CalcularCuotaFrancesa(Decimal capital, Decimal tasaMensual, int cuotas)
  {
    if (cuotas <= 0 || capital <= 0M)
      return 0M;
    if (tasaMensual <= 0M)
      return Math.Round(capital / (Decimal) cuotas, 2);
    Decimal num1 = 1M + tasaMensual;
    Decimal num2 = 1M;
    for (int index = 0; index < cuotas; ++index)
      num2 *= num1;
    Decimal num3 = num2 - 1M;
    if (num3 > -0.000000000001M && num3 < 0.000000000001M)
      return Math.Round(capital / (Decimal) cuotas, 2);
    Decimal num4 = tasaMensual * num2;
    return Math.Round(capital * (num4 / num3), 2);
  }

  private void CargarDetallePara(short cantidadCuotas, Decimal importeCuota)
  {
    if (cantidadCuotas <= (short) 0 || this.totalDeudaActual <= 0M || this.totalCapitalActual <= 0M)
      return;
    List<DetaFapaMP> detaFapaMpList = this.GenerarTablaFrancesa(this.totalCapitalActual, this.totalRecargoActual, this.tasaPeriodoActual, (int) cantidadCuotas, importeCuota);
    if (detaFapaMpList.Count > 0)
    {
      detaFapaMpList[0].ApreDefa = this.mdbApre.DecimalText;
      detaFapaMpList[0].TotaDefa = Math.Round(detaFapaMpList[0].CapiDefa + detaFapaMpList[0].InteDefa + detaFapaMpList[0].ApreDefa + detaFapaMpList[0].RecaDefa - detaFapaMpList[0].DereDefa - detaFapaMpList[0].DecaDefa, 2);
    }
    string str = this.ValidarCuadroFrancesConRecargo(detaFapaMpList, this.totalCapitalActual, this.totalRecargoActual);
    this.detallesPlan.Clear();
    if (!string.IsNullOrEmpty(str))
    {
      this.mdbInte.DecimalText = 0M;
      this.mdbTota.DecimalText = this.totalCapitalActual + this.totalRecargoActual + this.mdbApre.DecimalText - this.descuentoRecargoActual;
      this.NotificarError("Error al generar el cuadro de amortización: " + str);
      RefrescarGrilla();
    }
    else
    {
      Decimal num = detaFapaMpList.Sum<DetaFapaMP>((Func<DetaFapaMP, Decimal>) (s => s.InteDefa));
      this.mdbInte.DecimalText = num;
      this.mdbTota.DecimalText = this.totalCapitalActual + this.totalRecargoActual + this.mdbApre.DecimalText + num - this.descuentoRecargoActual;
      this.detallesPlan.AddRange((IEnumerable<DetaFapaMP>) detaFapaMpList);
      RefrescarGrilla();
    }

    void RefrescarGrilla()
    {
      ((BaseView) this.gridViewResumen).RefreshData();
      this.gridViewResumen.UpdateSummary();
    }
  }

  private List<DetaFapaMP> GenerarTablaFrancesa(
    Decimal capitalInicial,
    Decimal recargoInicial,
    Decimal tasaPeriodo,
    int cuotas,
    Decimal cuotaFija)
  {
    List<DetaFapaMP> detaFapaMpList = new List<DetaFapaMP>(cuotas);
    Decimal d1 = capitalInicial;
    Decimal d2 = recargoInicial;
    Decimal d3 = this.descuentoRecargoActual;
    Decimal d4 = d2 - d3;
    Decimal num1 = this.porcentajeDescReca / 100M;
    Decimal num2 = num1 >= 1M ? 0M : 1M / (1M - num1);
    DateTime dateTime = this.dtbFechCuota.Date > DateTime.MinValue ? this.dtbFechCuota.Date : this.hoy.Date;
    for (int index = 1; index <= cuotas; ++index)
    {
      Decimal num3 = Math.Round(Math.Round(d1 * tasaPeriodo, 2) + Math.Round(d4 * tasaPeriodo, 2), 2);
      Decimal num4 = Math.Round(cuotaFija - num3, 2);
      if (num4 < 0M)
        num4 = 0M;
      Decimal num5;
      Decimal num6;
      Decimal num7;
      Decimal num8;
      if (index < cuotas)
      {
        Decimal num9 = d1 + d4;
        Decimal num10;
        if (num9 > 0M)
        {
          num5 = Math.Round(num4 * (d1 / num9), 2);
          num10 = Math.Round(num4 - num5, 2);
        }
        else
        {
          num5 = 0M;
          num10 = 0M;
        }
        if (num1 >= 1M)
        {
          num6 = Math.Round(recargoInicial * (num5 / capitalInicial), 2);
          if (num6 > d2)
            num6 = d2;
          num7 = num6;
          num8 = 0M;
        }
        else
        {
          num6 = Math.Round(num10 * num2, 2);
          num7 = Math.Round(num6 - num10, 2);
        }
      }
      else
      {
        num5 = Math.Round(d1, 2);
        num8 = Math.Round(d4, 2);
        num6 = Math.Round(d2, 2);
        num7 = Math.Round(d3, 2);
      }
      d1 = Math.Round(d1 - num5, 2);
      d2 = Math.Round(d2 - num6, 2);
      d3 = Math.Round(d3 - num7, 2);
      d4 = Math.Round(d2 - d3, 2);
      if (index > 1)
      {
        if (dateTime.Day != 15)
          dateTime = new DateTime(dateTime.Year, dateTime.Month, 15);
        dateTime = dateTime.AddMonths(1);
      }
      Decimal num11 = Math.Round(num5 + num6 + num3 - num7, 2);
      detaFapaMpList.Add(new DetaFapaMP()
      {
        CuotDefa = (short) index,
        FeveDefa = dateTime,
        CapiDefa = num5,
        DecaDefa = 0M,
        RecaDefa = num6,
        DereDefa = num7,
        ApreDefa = 0M,
        InteDefa = num3,
        TotaDefa = num11
      });
    }
    return detaFapaMpList;
  }

  private string ValidarCuadroFrancesConRecargo(
    List<DetaFapaMP> cuadro,
    Decimal capitalInicial,
    Decimal recargoInicial)
  {
    if (cuadro == null || cuadro.Count == 0)
      return "No hay cuotas generadas.";
    Decimal num1 = Math.Round(cuadro.Sum<DetaFapaMP>((Func<DetaFapaMP, Decimal>) (c => c.CapiDefa)), 2);
    Decimal num2 = Math.Round(cuadro.Sum<DetaFapaMP>((Func<DetaFapaMP, Decimal>) (c => c.RecaDefa)), 2);
    if (Math.Abs(num1 - Math.Round(capitalInicial, 2)) > 0.01M)
      return $"La suma de capital amortizado ({num1:N2}) difiere del capital inicial ({capitalInicial:N2}).";
    if (Math.Abs(num2 - Math.Round(recargoInicial, 2)) > 0.01M)
      return $"La suma de recargo amortizado ({num2:N2}) difiere del recargo total ({recargoInicial:N2}).";
    foreach (DetaFapaMP detaFapaMp in cuadro)
    {
      Decimal num3 = Math.Round(detaFapaMp.CapiDefa + detaFapaMp.RecaDefa + detaFapaMp.InteDefa + detaFapaMp.ApreDefa - detaFapaMp.DereDefa - detaFapaMp.DecaDefa, 2);
      if (Math.Abs(num3 - detaFapaMp.TotaDefa) > 0.01M)
        return $"La cuota {detaFapaMp.CuotDefa} no cuadra: total {detaFapaMp.TotaDefa:N2}, esperado {num3:N2}.";
    }
    return string.Empty;
  }

  private void mibCuotApre_TextChanged(object sender, EventArgs e)
  {
    if (this.mibCuotApre.IntText > 0 && this.detallesPlan.Count > 0)
    {
      if (this.mibCuotApre.IntText <= this.detallesPlan.Count)
        ;
    }
    else
      this.mibCuotApre.IntText = 1;
  }

  private void gridViewCuotas_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    if (!(((ColumnView) this.gridViewCuotas).GetFocusedRow() is CuotaPlan focusedRow))
      return;
    this.CargarDetallePara(focusedRow.Cuota, focusedRow.Importe);
  }

  private void detailPPMP_Disposed(object sender, EventArgs e)
  {
    this.mebTipoPlan.EntityChangedDone -= new AfterEntityChange(this.mebTipoPlan_EntityChangedDone);
    this.mebTipoPlan.SearchEntityFunction = (MetroEntityBox.SearchEntityDelegate) null;
    this.mebTipoPlan.FindEntityFunction = (MetroEntityBox.FindEntityDelegate) null;
    this.dtbFechCuota.TextChanged -= new EventHandler(this.dtbFechCuota_TextChangedAndLeave);
    this.dtbFechCuota.Leave -= new EventHandler(this.dtbFechCuota_TextChangedAndLeave);
  }

  private void dtbFechCuota_TextChangedAndLeave(object sender, EventArgs e)
  {
    if (!(this.dtbFechCuota.Date > DateTime.MinValue) || this.detallesPlan.Count <= 0 || !(this.dtbFechCuota.Date >= this.hoy.Date))
      return;
    DateTime date = this.dtbFechCuota.Date;
    for (int index = 0; index < this.detallesPlan.Count; ++index)
      this.detallesPlan[index].FeveDefa = index != 0 ? new DateTime(date.Year, date.Month, 15).AddMonths(index) : date;
    this.EjecutarEnUI((Action) (() => ((BaseView) this.gridViewResumen).RefreshData()));
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.panCentral = new MetroPanel();
    this.panCentralDer = new MetroPanel();
    this.panCentralDerMed = new MetroPanel();
    this.gridControlResumen = new GridControl();
    this.gridViewResumen = new GridView();
    this.colCuotaRes = new GridColumn();
    this.colVenc = new GridColumn();
    this.colCapi = new GridColumn();
    this.colRecargo = new GridColumn();
    this.colDescCap = new GridColumn();
    this.colDescReca = new GridColumn();
    this.colApre = new GridColumn();
    this.colInte = new GridColumn();
    this.colTotal = new GridColumn();
    this.panCentralDerSup = new MetroPanel();
    this.lblPorcInte = new MetroLabel();
    this.lblTipoMetodo = new MetroLabel();
    this.lblMetodo = new MetroLabel();
    this.lblInte = new MetroLabel();
    this.mibCuotApre = new MetroIntTextBox();
    this.metroLabel3 = new MetroLabel();
    this.panCentralMed = new MetroPanel();
    this.gridControlCuotas = new GridControl();
    this.gridViewCuotas = new GridView();
    this.colCuota = new GridColumn();
    this.colImpoCuota = new GridColumn();
    this.panCentralIzq = new MetroPanel();
    this.mdbTota = new MetroDecimalTextBox();
    this.metroLabel13 = new MetroLabel();
    this.mdbInte = new MetroDecimalTextBox();
    this.metroLabel12 = new MetroLabel();
    this.mdbApre = new MetroDecimalTextBox();
    this.metroLabel11 = new MetroLabel();
    this.mdbDescReca = new MetroDecimalTextBox();
    this.metroLabel10 = new MetroLabel();
    this.mdbDescCap = new MetroDecimalTextBox();
    this.metroLabel9 = new MetroLabel();
    this.mdbRecargo = new MetroDecimalTextBox();
    this.metroLabel8 = new MetroLabel();
    this.mdbDerecho = new MetroDecimalTextBox();
    this.metroLabel7 = new MetroLabel();
    this.panCentralSup = new MetroPanel();
    this.metroLabel2 = new MetroLabel();
    this.mebTipoPlan = new MetroEntityBox();
    this.dtbFechCuota = new MetroDateTextBox();
    this.metroLabel1 = new MetroLabel();
    this.panCentral.SuspendLayout();
    this.panCentralDer.SuspendLayout();
    this.panCentralDerMed.SuspendLayout();
    ((ISupportInitialize) this.gridControlResumen).BeginInit();
    ((ISupportInitialize) this.gridViewResumen).BeginInit();
    this.panCentralDerSup.SuspendLayout();
    this.panCentralMed.SuspendLayout();
    ((ISupportInitialize) this.gridControlCuotas).BeginInit();
    ((ISupportInitialize) this.gridViewCuotas).BeginInit();
    this.panCentralIzq.SuspendLayout();
    this.panCentralSup.SuspendLayout();
    this.SuspendLayout();
    this.panCentral.Controls.Add((Control) this.panCentralDer);
    this.panCentral.Controls.Add((Control) this.panCentralMed);
    this.panCentral.Controls.Add((Control) this.panCentralIzq);
    this.panCentral.Controls.Add((Control) this.panCentralSup);
    this.panCentral.Dock = DockStyle.Fill;
    this.panCentral.Location = new Point(0, 0);
    this.panCentral.Name = "panCentral";
    this.panCentral.Size = new Size(1360, 342);
    this.panCentral.TabIndex = 1;
    this.panCentralDer.Controls.Add((Control) this.panCentralDerMed);
    this.panCentralDer.Controls.Add((Control) this.panCentralDerSup);
    this.panCentralDer.Dock = DockStyle.Fill;
    this.panCentralDer.Location = new Point(432, 42);
    this.panCentralDer.Name = "panCentralDer";
    this.panCentralDer.Size = new Size(928, 300);
    this.panCentralDer.TabIndex = 5;
    this.panCentralDerMed.Controls.Add((Control) this.gridControlResumen);
    this.panCentralDerMed.Dock = DockStyle.Fill;
    this.panCentralDerMed.Location = new Point(0, 38);
    this.panCentralDerMed.Name = "panCentralDerMed";
    this.panCentralDerMed.Size = new Size(928, 262);
    this.panCentralDerMed.TabIndex = 3;
    ((Control) this.gridControlResumen).Dock = DockStyle.Fill;
    ((Control) this.gridControlResumen).Location = new Point(0, 0);
    this.gridControlResumen.MainView = (BaseView) this.gridViewResumen;
    ((Control) this.gridControlResumen).Name = "gridControlResumen";
    ((Control) this.gridControlResumen).Size = new Size(928, 262);
    ((Control) this.gridControlResumen).TabIndex = 4;
    this.gridControlResumen.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewResumen
    });
    this.gridViewResumen.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewResumen.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewResumen.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewResumen).Columns.AddRange(new GridColumn[9]
    {
      this.colCuotaRes,
      this.colVenc,
      this.colCapi,
      this.colRecargo,
      this.colDescCap,
      this.colDescReca,
      this.colApre,
      this.colInte,
      this.colTotal
    });
    this.gridViewResumen.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewResumen).GridControl = this.gridControlResumen;
    ((BaseView) this.gridViewResumen).Name = "gridViewResumen";
    ((ColumnViewOptionsBehavior) this.gridViewResumen.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewResumen.OptionsBehavior).ReadOnly = true;
    this.gridViewResumen.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewResumen.OptionsCustomization.AllowGroup = false;
    this.gridViewResumen.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewResumen.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewResumen.OptionsView.ShowFooter = true;
    this.gridViewResumen.OptionsView.ShowGroupPanel = false;
    this.gridViewResumen.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colCuotaRes.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuotaRes.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuotaRes.Caption = "Cuota";
    this.colCuotaRes.FieldName = "CuotDefa";
    this.colCuotaRes.MaxWidth = 60;
    this.colCuotaRes.Name = "colCuotaRes";
    this.colCuotaRes.OptionsColumn.AllowEdit = false;
    this.colCuotaRes.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuotaRes.OptionsColumn.AllowIncrementalSearch = false;
    this.colCuotaRes.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCuotaRes.OptionsColumn.AllowMove = false;
    this.colCuotaRes.OptionsColumn.AllowShowHide = false;
    this.colCuotaRes.OptionsColumn.AllowSize = false;
    this.colCuotaRes.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colCuotaRes.OptionsColumn.ReadOnly = true;
    this.colCuotaRes.OptionsColumn.TabStop = false;
    this.colCuotaRes.Visible = true;
    this.colCuotaRes.VisibleIndex = 0;
    this.colCuotaRes.Width = 60;
    ((AppearanceOptions) this.colVenc.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colVenc.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colVenc.Caption = "Fecha Venc.";
    this.colVenc.FieldName = "FeveDefa";
    this.colVenc.MaxWidth = 100;
    this.colVenc.Name = "colVenc";
    this.colVenc.OptionsColumn.AllowEdit = false;
    this.colVenc.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colVenc.OptionsColumn.AllowIncrementalSearch = false;
    this.colVenc.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colVenc.OptionsColumn.AllowMove = false;
    this.colVenc.OptionsColumn.AllowShowHide = false;
    this.colVenc.OptionsColumn.AllowSize = false;
    this.colVenc.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colVenc.OptionsColumn.ReadOnly = true;
    this.colVenc.OptionsColumn.TabStop = false;
    this.colVenc.Visible = true;
    this.colVenc.VisibleIndex = 1;
    ((AppearanceOptions) this.colCapi.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCapi.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCapi.Caption = "Capital";
    this.colCapi.DisplayFormat.FormatString = "{0:C2}";
    this.colCapi.DisplayFormat.FormatType = (FormatType) 3;
    this.colCapi.FieldName = "CapiDefa";
    this.colCapi.MaxWidth = 150;
    this.colCapi.Name = "colCapi";
    this.colCapi.OptionsColumn.AllowEdit = false;
    this.colCapi.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCapi.OptionsColumn.AllowIncrementalSearch = false;
    this.colCapi.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCapi.OptionsColumn.AllowMove = false;
    this.colCapi.OptionsColumn.AllowShowHide = false;
    this.colCapi.OptionsColumn.AllowSize = false;
    this.colCapi.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colCapi.OptionsColumn.ReadOnly = true;
    this.colCapi.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colCapi.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "CapiDefa", "{0:C2}")
    });
    this.colCapi.Visible = true;
    this.colCapi.VisibleIndex = 2;
    ((AppearanceOptions) this.colRecargo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colRecargo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colRecargo.Caption = "Recargo";
    this.colRecargo.DisplayFormat.FormatString = "{0:C2}";
    this.colRecargo.DisplayFormat.FormatType = (FormatType) 3;
    this.colRecargo.FieldName = "RecaDefa";
    this.colRecargo.MaxWidth = 150;
    this.colRecargo.Name = "colRecargo";
    this.colRecargo.OptionsColumn.AllowEdit = false;
    this.colRecargo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colRecargo.OptionsColumn.AllowIncrementalSearch = false;
    this.colRecargo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colRecargo.OptionsColumn.AllowMove = false;
    this.colRecargo.OptionsColumn.AllowShowHide = false;
    this.colRecargo.OptionsColumn.AllowSize = false;
    this.colRecargo.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colRecargo.OptionsColumn.ReadOnly = true;
    this.colRecargo.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colRecargo.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "RecaDefa", "{0:C2}")
    });
    this.colRecargo.Visible = true;
    this.colRecargo.VisibleIndex = 3;
    ((AppearanceOptions) this.colDescCap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDescCap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDescCap.Caption = "Desc. Capital";
    this.colDescCap.DisplayFormat.FormatString = "{0:C2}";
    this.colDescCap.DisplayFormat.FormatType = (FormatType) 3;
    this.colDescCap.FieldName = "DecaDefa";
    this.colDescCap.MaxWidth = 150;
    this.colDescCap.Name = "colDescCap";
    this.colDescCap.OptionsColumn.AllowEdit = false;
    this.colDescCap.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDescCap.OptionsColumn.AllowIncrementalSearch = false;
    this.colDescCap.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDescCap.OptionsColumn.AllowMove = false;
    this.colDescCap.OptionsColumn.AllowShowHide = false;
    this.colDescCap.OptionsColumn.AllowSize = false;
    this.colDescCap.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colDescCap.OptionsColumn.ReadOnly = true;
    this.colDescCap.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colDescCap.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "DecaDefa", "{0:C2}")
    });
    this.colDescCap.Visible = true;
    this.colDescCap.VisibleIndex = 4;
    this.colDescReca.Caption = "Desc. Recargo";
    this.colDescReca.DisplayFormat.FormatString = "{0:C2}";
    this.colDescReca.DisplayFormat.FormatType = (FormatType) 3;
    this.colDescReca.FieldName = "DereDefa";
    this.colDescReca.MaxWidth = 150;
    this.colDescReca.Name = "colDescReca";
    this.colDescReca.OptionsColumn.AllowEdit = false;
    this.colDescReca.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDescReca.OptionsColumn.AllowIncrementalSearch = false;
    this.colDescReca.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDescReca.OptionsColumn.AllowMove = false;
    this.colDescReca.OptionsColumn.AllowShowHide = false;
    this.colDescReca.OptionsColumn.AllowSize = false;
    this.colDescReca.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colDescReca.OptionsColumn.ReadOnly = true;
    this.colDescReca.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colDescReca.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "DereDefa", "{0:C2}")
    });
    this.colDescReca.Visible = true;
    this.colDescReca.VisibleIndex = 5;
    this.colApre.Caption = "Apremio";
    this.colApre.DisplayFormat.FormatString = "{0:C2}";
    this.colApre.DisplayFormat.FormatType = (FormatType) 3;
    this.colApre.FieldName = "ApreDefa";
    this.colApre.MaxWidth = 150;
    this.colApre.Name = "colApre";
    this.colApre.OptionsColumn.AllowEdit = false;
    this.colApre.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.AllowIncrementalSearch = false;
    this.colApre.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.AllowMove = false;
    this.colApre.OptionsColumn.AllowShowHide = false;
    this.colApre.OptionsColumn.AllowSize = false;
    this.colApre.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.ReadOnly = true;
    this.colApre.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colApre.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "ApreDefa", "{0:C2}")
    });
    this.colApre.Visible = true;
    this.colApre.VisibleIndex = 6;
    this.colInte.Caption = "Interes";
    this.colInte.DisplayFormat.FormatString = "{0:C2}";
    this.colInte.DisplayFormat.FormatType = (FormatType) 3;
    this.colInte.FieldName = "InteDefa";
    this.colInte.MaxWidth = 150;
    this.colInte.Name = "colInte";
    this.colInte.OptionsColumn.AllowEdit = false;
    this.colInte.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colInte.OptionsColumn.AllowIncrementalSearch = false;
    this.colInte.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colInte.OptionsColumn.AllowMove = false;
    this.colInte.OptionsColumn.AllowShowHide = false;
    this.colInte.OptionsColumn.AllowSize = false;
    this.colInte.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colInte.OptionsColumn.ReadOnly = true;
    this.colInte.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colInte.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "InteDefa", "{0:C2}")
    });
    this.colInte.Visible = true;
    this.colInte.VisibleIndex = 7;
    this.colTotal.Caption = "Total";
    this.colTotal.DisplayFormat.FormatString = "{0:C2}";
    this.colTotal.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotal.FieldName = "TotaDefa";
    this.colTotal.Name = "colTotal";
    this.colTotal.OptionsColumn.AllowEdit = false;
    this.colTotal.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTotal.OptionsColumn.AllowIncrementalSearch = false;
    this.colTotal.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTotal.OptionsColumn.AllowMove = false;
    this.colTotal.OptionsColumn.AllowShowHide = false;
    this.colTotal.OptionsColumn.AllowSize = false;
    this.colTotal.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colTotal.OptionsColumn.ReadOnly = true;
    this.colTotal.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colTotal.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaDefa", "{0:C2}")
    });
    this.colTotal.Visible = true;
    this.colTotal.VisibleIndex = 8;
    this.panCentralDerSup.Controls.Add((Control) this.lblPorcInte);
    this.panCentralDerSup.Controls.Add((Control) this.lblTipoMetodo);
    this.panCentralDerSup.Controls.Add((Control) this.lblMetodo);
    this.panCentralDerSup.Controls.Add((Control) this.lblInte);
    this.panCentralDerSup.Controls.Add((Control) this.mibCuotApre);
    this.panCentralDerSup.Controls.Add((Control) this.metroLabel3);
    this.panCentralDerSup.Dock = DockStyle.Top;
    this.panCentralDerSup.Location = new Point(0, 0);
    this.panCentralDerSup.Name = "panCentralDerSup";
    this.panCentralDerSup.Size = new Size(928, 38);
    this.panCentralDerSup.TabIndex = 2;
    this.lblPorcInte.AutoSize = false;
    this.lblPorcInte.FontWeight = MetroFontWeight.Bold;
    this.lblPorcInte.Location = new Point(571, 12);
    this.lblPorcInte.Name = "lblPorcInte";
    this.lblPorcInte.Size = new Size(82, 19);
    this.lblPorcInte.TabIndex = 206;
    this.lblPorcInte.Text = "4.00 %";
    this.lblTipoMetodo.AutoSize = false;
    this.lblTipoMetodo.FontWeight = MetroFontWeight.Bold;
    this.lblTipoMetodo.Location = new Point(378, 12);
    this.lblTipoMetodo.Name = "lblTipoMetodo";
    this.lblTipoMetodo.Size = new Size((int) sbyte.MaxValue, 19);
    this.lblTipoMetodo.TabIndex = 205;
    this.lblTipoMetodo.Text = "FRANCÉS";
    this.lblMetodo.AutoSize = false;
    this.lblMetodo.FontWeight = MetroFontWeight.Bold;
    this.lblMetodo.Location = new Point(316, 12);
    this.lblMetodo.Name = "lblMetodo";
    this.lblMetodo.Size = new Size(68, 19);
    this.lblMetodo.TabIndex = 7;
    this.lblMetodo.Text = "Método:";
    this.lblInte.AutoSize = false;
    this.lblInte.FontWeight = MetroFontWeight.Bold;
    this.lblInte.Location = new Point(517, 11);
    this.lblInte.Name = "lblInte";
    this.lblInte.Size = new Size(58, 19);
    this.lblInte.TabIndex = 6;
    this.lblInte.Text = "Interes:";
    this.mibCuotApre.Location = new Point(143, 9);
    this.mibCuotApre.MaxLength = 2;
    this.mibCuotApre.MaxValue = 12;
    this.mibCuotApre.Name = "mibCuotApre";
    this.mibCuotApre.Size = new Size(39, 23);
    this.mibCuotApre.TabIndex = 204;
    this.mibCuotApre.TextAlign = HorizontalAlignment.Center;
    this.mibCuotApre.TextChanged += new EventHandler(this.mibCuotApre_TextChanged);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.FontWeight = MetroFontWeight.Bold;
    this.metroLabel3.Location = new Point(9, 11);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(122, 19);
    this.metroLabel3.TabIndex = 2;
    this.metroLabel3.Text = "Cuotas Apremio";
    this.panCentralMed.Controls.Add((Control) this.gridControlCuotas);
    this.panCentralMed.Dock = DockStyle.Left;
    this.panCentralMed.Location = new Point(237, 42);
    this.panCentralMed.Name = "panCentralMed";
    this.panCentralMed.Size = new Size(195, 300);
    this.panCentralMed.TabIndex = 4;
    ((Control) this.gridControlCuotas).Dock = DockStyle.Fill;
    ((Control) this.gridControlCuotas).Location = new Point(0, 0);
    this.gridControlCuotas.MainView = (BaseView) this.gridViewCuotas;
    ((Control) this.gridControlCuotas).Name = "gridControlCuotas";
    ((Control) this.gridControlCuotas).Size = new Size(195, 300);
    ((Control) this.gridControlCuotas).TabIndex = 203;
    this.gridControlCuotas.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewCuotas
    });
    this.gridViewCuotas.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewCuotas.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewCuotas.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewCuotas).Columns.AddRange(new GridColumn[2]
    {
      this.colCuota,
      this.colImpoCuota
    });
    this.gridViewCuotas.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewCuotas).GridControl = this.gridControlCuotas;
    ((BaseView) this.gridViewCuotas).Name = "gridViewCuotas";
    ((ColumnViewOptionsBehavior) this.gridViewCuotas.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewCuotas.OptionsBehavior).ReadOnly = true;
    this.gridViewCuotas.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewCuotas.OptionsCustomization.AllowGroup = false;
    this.gridViewCuotas.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewCuotas.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewCuotas.OptionsView.ShowGroupPanel = false;
    this.gridViewCuotas.OptionsView.ShowIndicator = false;
    ((ColumnView) this.gridViewCuotas).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridViewCuotas_FocusedRowChanged);
    ((AppearanceOptions) this.colCuota.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuota.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuota.Caption = "Cuota";
    this.colCuota.FieldName = "Cuota";
    this.colCuota.MaxWidth = 60;
    this.colCuota.Name = "colCuota";
    this.colCuota.OptionsColumn.AllowEdit = false;
    this.colCuota.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuota.OptionsColumn.AllowIncrementalSearch = false;
    this.colCuota.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCuota.OptionsColumn.AllowMove = false;
    this.colCuota.OptionsColumn.AllowShowHide = false;
    this.colCuota.OptionsColumn.AllowSize = false;
    this.colCuota.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colCuota.OptionsColumn.ReadOnly = true;
    this.colCuota.OptionsColumn.TabStop = false;
    this.colCuota.Visible = true;
    this.colCuota.VisibleIndex = 0;
    this.colCuota.Width = 60;
    ((AppearanceOptions) this.colImpoCuota.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImpoCuota.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImpoCuota.Caption = "Importe";
    this.colImpoCuota.DisplayFormat.FormatString = "{0:C2}";
    this.colImpoCuota.DisplayFormat.FormatType = (FormatType) 3;
    this.colImpoCuota.FieldName = "Importe";
    this.colImpoCuota.MaxWidth = 150;
    this.colImpoCuota.Name = "colImpoCuota";
    this.colImpoCuota.OptionsColumn.AllowEdit = false;
    this.colImpoCuota.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colImpoCuota.OptionsColumn.AllowIncrementalSearch = false;
    this.colImpoCuota.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colImpoCuota.OptionsColumn.AllowMove = false;
    this.colImpoCuota.OptionsColumn.AllowShowHide = false;
    this.colImpoCuota.OptionsColumn.AllowSize = false;
    this.colImpoCuota.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colImpoCuota.OptionsColumn.ReadOnly = true;
    this.colImpoCuota.OptionsColumn.TabStop = false;
    this.colImpoCuota.Visible = true;
    this.colImpoCuota.VisibleIndex = 1;
    this.panCentralIzq.Controls.Add((Control) this.mdbTota);
    this.panCentralIzq.Controls.Add((Control) this.metroLabel13);
    this.panCentralIzq.Controls.Add((Control) this.mdbInte);
    this.panCentralIzq.Controls.Add((Control) this.metroLabel12);
    this.panCentralIzq.Controls.Add((Control) this.mdbApre);
    this.panCentralIzq.Controls.Add((Control) this.metroLabel11);
    this.panCentralIzq.Controls.Add((Control) this.mdbDescReca);
    this.panCentralIzq.Controls.Add((Control) this.metroLabel10);
    this.panCentralIzq.Controls.Add((Control) this.mdbDescCap);
    this.panCentralIzq.Controls.Add((Control) this.metroLabel9);
    this.panCentralIzq.Controls.Add((Control) this.mdbRecargo);
    this.panCentralIzq.Controls.Add((Control) this.metroLabel8);
    this.panCentralIzq.Controls.Add((Control) this.mdbDerecho);
    this.panCentralIzq.Controls.Add((Control) this.metroLabel7);
    this.panCentralIzq.Dock = DockStyle.Left;
    this.panCentralIzq.Location = new Point(0, 42);
    this.panCentralIzq.Name = "panCentralIzq";
    this.panCentralIzq.Size = new Size(237, 300);
    this.panCentralIzq.TabIndex = 3;
    this.mdbTota.Location = new Point(135, 220);
    this.mdbTota.MaxLength = 20;
    this.mdbTota.Name = "mdbTota";
    this.mdbTota.ReadOnly = true;
    this.mdbTota.Size = new Size(96 /*0x60*/, 23);
    this.mdbTota.TabIndex = 19;
    this.mdbTota.TabStop = false;
    this.mdbTota.TextAlign = HorizontalAlignment.Right;
    this.metroLabel13.AutoSize = false;
    this.metroLabel13.FontWeight = MetroFontWeight.Bold;
    this.metroLabel13.Location = new Point(63 /*0x3F*/, 222);
    this.metroLabel13.Name = "metroLabel13";
    this.metroLabel13.Size = new Size(60, 19);
    this.metroLabel13.TabIndex = 18;
    this.metroLabel13.Text = "TOTAL";
    this.metroLabel13.TextAlign = ContentAlignment.MiddleRight;
    this.mdbInte.Location = new Point(135, 185);
    this.mdbInte.MaxLength = 20;
    this.mdbInte.Name = "mdbInte";
    this.mdbInte.ReadOnly = true;
    this.mdbInte.Size = new Size(96 /*0x60*/, 23);
    this.mdbInte.TabIndex = 17;
    this.mdbInte.TabStop = false;
    this.mdbInte.TextAlign = HorizontalAlignment.Right;
    this.metroLabel12.AutoSize = false;
    this.metroLabel12.FontWeight = MetroFontWeight.Bold;
    this.metroLabel12.Location = new Point(61, 187);
    this.metroLabel12.Name = "metroLabel12";
    this.metroLabel12.Size = new Size(62, 19);
    this.metroLabel12.TabIndex = 16 /*0x10*/;
    this.metroLabel12.Text = "Interes";
    this.metroLabel12.TextAlign = ContentAlignment.MiddleRight;
    this.mdbApre.Location = new Point(135, 150);
    this.mdbApre.MaxLength = 20;
    this.mdbApre.Name = "mdbApre";
    this.mdbApre.ReadOnly = true;
    this.mdbApre.Size = new Size(96 /*0x60*/, 23);
    this.mdbApre.TabIndex = 15;
    this.mdbApre.TabStop = false;
    this.mdbApre.TextAlign = HorizontalAlignment.Right;
    this.metroLabel11.AutoSize = false;
    this.metroLabel11.FontWeight = MetroFontWeight.Bold;
    this.metroLabel11.Location = new Point(47, 152);
    this.metroLabel11.Name = "metroLabel11";
    this.metroLabel11.Size = new Size(76, 19);
    this.metroLabel11.TabIndex = 14;
    this.metroLabel11.Text = "Apremio";
    this.metroLabel11.TextAlign = ContentAlignment.MiddleRight;
    this.mdbDescReca.Location = new Point(135, 115);
    this.mdbDescReca.MaxLength = 20;
    this.mdbDescReca.Name = "mdbDescReca";
    this.mdbDescReca.ReadOnly = true;
    this.mdbDescReca.Size = new Size(96 /*0x60*/, 23);
    this.mdbDescReca.TabIndex = 13;
    this.mdbDescReca.TabStop = false;
    this.mdbDescReca.TextAlign = HorizontalAlignment.Right;
    this.metroLabel10.AutoSize = false;
    this.metroLabel10.FontWeight = MetroFontWeight.Bold;
    this.metroLabel10.Location = new Point(6, 117);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(117, 19);
    this.metroLabel10.TabIndex = 12;
    this.metroLabel10.Text = "Desc. Recargo";
    this.metroLabel10.TextAlign = ContentAlignment.MiddleRight;
    this.mdbDescCap.Location = new Point(135, 80 /*0x50*/);
    this.mdbDescCap.MaxLength = 20;
    this.mdbDescCap.Name = "mdbDescCap";
    this.mdbDescCap.ReadOnly = true;
    this.mdbDescCap.Size = new Size(96 /*0x60*/, 23);
    this.mdbDescCap.TabIndex = 11;
    this.mdbDescCap.TabStop = false;
    this.mdbDescCap.TextAlign = HorizontalAlignment.Right;
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.FontWeight = MetroFontWeight.Bold;
    this.metroLabel9.Location = new Point(20, 82);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(103, 19);
    this.metroLabel9.TabIndex = 10;
    this.metroLabel9.Text = "Desc. Capital";
    this.metroLabel9.TextAlign = ContentAlignment.MiddleRight;
    this.mdbRecargo.Location = new Point(135, 45);
    this.mdbRecargo.MaxLength = 20;
    this.mdbRecargo.Name = "mdbRecargo";
    this.mdbRecargo.ReadOnly = true;
    this.mdbRecargo.Size = new Size(96 /*0x60*/, 23);
    this.mdbRecargo.TabIndex = 9;
    this.mdbRecargo.TabStop = false;
    this.mdbRecargo.TextAlign = HorizontalAlignment.Right;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.FontWeight = MetroFontWeight.Bold;
    this.metroLabel8.Location = new Point(50, 47);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(73, 19);
    this.metroLabel8.TabIndex = 8;
    this.metroLabel8.Text = "Recargo";
    this.metroLabel8.TextAlign = ContentAlignment.MiddleRight;
    this.mdbDerecho.Location = new Point(135, 10);
    this.mdbDerecho.MaxLength = 20;
    this.mdbDerecho.Name = "mdbDerecho";
    this.mdbDerecho.ReadOnly = true;
    this.mdbDerecho.Size = new Size(96 /*0x60*/, 23);
    this.mdbDerecho.TabIndex = 7;
    this.mdbDerecho.TabStop = false;
    this.mdbDerecho.TextAlign = HorizontalAlignment.Right;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.FontWeight = MetroFontWeight.Bold;
    this.metroLabel7.Location = new Point(50, 12);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(73, 19);
    this.metroLabel7.TabIndex = 6;
    this.metroLabel7.Text = "Derecho";
    this.metroLabel7.TextAlign = ContentAlignment.MiddleRight;
    this.panCentralSup.Controls.Add((Control) this.metroLabel2);
    this.panCentralSup.Controls.Add((Control) this.mebTipoPlan);
    this.panCentralSup.Controls.Add((Control) this.dtbFechCuota);
    this.panCentralSup.Controls.Add((Control) this.metroLabel1);
    this.panCentralSup.Dock = DockStyle.Top;
    this.panCentralSup.Location = new Point(0, 0);
    this.panCentralSup.Name = "panCentralSup";
    this.panCentralSup.Size = new Size(1360, 42);
    this.panCentralSup.TabIndex = 2;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.FontWeight = MetroFontWeight.Bold;
    this.metroLabel2.Location = new Point(370, 13);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(93, 19);
    this.metroLabel2.TabIndex = 203;
    this.metroLabel2.Text = "Tipo de Plan";
    this.mebTipoPlan.AllowEmpty = false;
    this.mebTipoPlan.AllowSqlCharacters = false;
    this.mebTipoPlan.BackColor = Color.White;
    this.mebTipoPlan.Entity = (Entity) null;
    this.mebTipoPlan.ExternalValidation = (Func<string>) null;
    this.mebTipoPlan.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebTipoPlan.LabelText = "";
    this.mebTipoPlan.Location = new Point(472, 11);
    this.mebTipoPlan.MandatoryWrite = false;
    this.mebTipoPlan.Margin = new Padding(3, 4, 3, 4);
    this.mebTipoPlan.MaximumSize = new Size(3000, 23);
    this.mebTipoPlan.MaxLenght = 50;
    this.mebTipoPlan.MinimumSize = new Size(100, 23);
    this.mebTipoPlan.Name = "mebTipoPlan";
    this.mebTipoPlan.PropertyDetail = "DetaTifa";
    this.mebTipoPlan.PropertyID = "CodiTifa";
    this.mebTipoPlan.ShowNewButton = false;
    this.mebTipoPlan.ShowSearchButton = false;
    this.mebTipoPlan.Size = new Size(704, 23);
    this.mebTipoPlan.TabIndex = 202;
    this.mebTipoPlan.TextAlign = HorizontalAlignment.Left;
    this.mebTipoPlan.TextBoxWidth = 40;
    this.mebTipoPlan.EntityChangedDone += new AfterEntityChange(this.mebTipoPlan_EntityChangedDone);
    this.dtbFechCuota.Location = new Point(237, 9);
    this.dtbFechCuota.Name = "dtbFechCuota";
    this.dtbFechCuota.Size = new Size(102, 25);
    this.dtbFechCuota.TabIndex = 201;
    this.dtbFechCuota.TextChanged += new EventHandler(this.dtbFechCuota_TextChangedAndLeave);
    this.dtbFechCuota.Leave += new EventHandler(this.dtbFechCuota_TextChangedAndLeave);
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(6, 14);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(231, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Fecha Vencimiento Primer Cuota";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.panCentral);
    this.Name = nameof (detailPPMP);
    this.Size = new Size(1360, 342);
    this.panCentral.ResumeLayout(false);
    this.panCentralDer.ResumeLayout(false);
    this.panCentralDerMed.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlResumen).EndInit();
    ((ISupportInitialize) this.gridViewResumen).EndInit();
    this.panCentralDerSup.ResumeLayout(false);
    this.panCentralMed.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlCuotas).EndInit();
    ((ISupportInitialize) this.gridViewCuotas).EndInit();
    this.panCentralIzq.ResumeLayout(false);
    this.panCentralSup.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
