// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Grids.Maipu.gridPPMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Entidades.PlanPago;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Grids.Maipu;

public class gridPPMP : BuscadorBasePP, IGridPlanPago
{
  private readonly ExpCCMaipu expCC;
  private readonly List<CCMaipu> lista;
  private List<CCMaipu> deudaSeleccionada;
  private Decimal totalSeleccionado = 0M;
  private IPlanPago _plan;
  private Timer _debounceTimer;
  private IContainer components = (IContainer) null;
  private MetroPanel panSuperior;
  private GridControl gridControlResumen;
  private GridView gridViewResumen;
  private GridColumn colSelect;
  private GridColumn colDetalle;
  private GridColumn colImporte;
  private GridColumn colRecargo;
  private GridColumn colTotal;
  private MetroLabel metroLabel1;
  private MetroPanel panDetalles;
  private GridControl gridControlGrilla;
  private GridView gridViewGrilla;
  private GridColumn colSeleccionado;
  private GridColumn colPeriodo;
  private GridColumn colBimestre;
  private GridColumn colBoleto;
  private GridColumn colFaci;
  private GridColumn colCuota;
  private GridColumn colApre;
  private GridColumn colFechEmi;
  private GridColumn colVencPago;
  private GridColumn colConcepto;
  private GridColumn colExpeComp;
  private GridColumn colTipoMovi;
  private GridColumn colMontoApre;
  private GridColumn colDebito;
  private GridColumn colReca;
  private GridColumn colSaldo;
  private MetroLabel metroLabel2;
  private MetroPanel panInferior;
  private MetroLabel metroLabel3;
  private MetroTextBox txtDeudaSelec;

  public event EventHandler<object> RegistroSeleccionado;

  public gridPPMP(IPlanPago pp)
  {
    this.InitializeComponent();
    this.expCC = new ExpCCMaipu();
    this.lista = new List<CCMaipu>();
    this.deudaSeleccionada = new List<CCMaipu>();
    this.gridControlResumen.DataSource = (object) this.lista;
    this.gridControlGrilla.DataSource = (object) null;
    this.gridViewGrilla.RowCellStyle += new RowCellStyleEventHandler(this.RowCellStyleDetalles);
    this.gridViewResumen.RowCellStyle += new RowCellStyleEventHandler(this.RowCellStyleResumen);
    this._plan = pp;
    this._debounceTimer = new Timer() { Interval = 150 };
    this._debounceTimer.Tick += new EventHandler(this.DebounceTimer_Tick);
    this.Disposed -= new EventHandler(this.gridPPMP_Disposed);
    this.Disposed += new EventHandler(this.gridPPMP_Disposed);
  }

  public override void Limpiar()
  {
    // ISSUE: method pointer
    this.EjecutarEnUI(new Action((object) this, __methodptr(\u003CLimpiar\u003Eg__RealizarLimpieza\u007C10_0)));
  }

  public override void Buscar(CtaCte cuenta)
  {
    this.EjecutarEnUI(new Action(RealizarBusqueda));

    void RealizarBusqueda()
    {
      this.expCC.BuscarDeuda(this.lista, cuenta, ExpCCMaipu.DeudaPara.PlanPago);
      this.lista.RemoveAll((Predicate<CCMaipu>) (l => l.Tipo == TipoResumenMP.Facilidad));
      this.ActualizarGrillas();
      if (this.lista.Count == 0)
        cuenta.TipoResultado = TipoResultadoCtaCte.SinDeuda;
      else
        cuenta.TipoResultado = TipoResultadoCtaCte.ConDeuda;
    }
  }

  public string ValidarDatos()
  {
    return this.lista != null && this.lista.Any<CCMaipu>((Func<CCMaipu, bool>) (resumen => resumen?.Detalles != null && resumen.Detalles.Any<DetaCCMaipu>((Func<DetaCCMaipu, bool>) (d => d != null && d.Seleccionado)))) ? string.Empty : "No hay deuda seleccionada";
  }

  private void ActualizarGrillas()
  {
    this.EjecutarEnUI((Action) (() =>
    {
      ((BaseView) this.gridViewResumen).RefreshData();
      ((BaseView) this.gridViewGrilla).RefreshData();
      ((ColumnView) this.gridViewResumen).FocusInvalidRow();
    }));
  }

  private void OcultarColumnas()
  {
    this.colBoleto.Visible = this.colApre.Visible = this.colMontoApre.Visible = this.colPeriodo.Visible = this.colBimestre.Visible = this.colFaci.Visible = this.colCuota.Visible = this.colExpeComp.Visible = false;
  }

  private void MostrarColumnas(TipoResumenMP Tipo)
  {
    this.colApre.Visible = this.colMontoApre.Visible = Tipo == TipoResumenMP.Apremio;
    this.colPeriodo.Visible = this.colBimestre.Visible = this.colBoleto.Visible = Tipo == TipoResumenMP.Comun;
    this.colFaci.Visible = this.colCuota.Visible = Tipo == TipoResumenMP.Facilidad;
    this.colExpeComp.Visible = this.colFechEmi.Visible = Tipo != TipoResumenMP.Facilidad;
    this.EstablecerVisibleIndex();
  }

  private void EstablecerVisibleIndex()
  {
    int num1 = 1;
    if (this.colPeriodo.Visible)
      this.colPeriodo.VisibleIndex = num1++;
    if (this.colBimestre.Visible)
      this.colBimestre.VisibleIndex = num1++;
    if (this.colBoleto.Visible)
      this.colBoleto.VisibleIndex = num1++;
    if (this.colFaci.Visible)
      this.colFaci.VisibleIndex = num1++;
    if (this.colCuota.Visible)
      this.colCuota.VisibleIndex = num1++;
    if (this.colApre.Visible)
      this.colApre.VisibleIndex = num1++;
    if (this.colFechEmi.Visible)
      this.colFechEmi.VisibleIndex = num1++;
    if (this.colVencPago.Visible)
      this.colVencPago.VisibleIndex = num1++;
    if (this.colConcepto.Visible)
      this.colConcepto.VisibleIndex = num1++;
    if (this.colExpeComp.Visible)
      this.colExpeComp.VisibleIndex = num1++;
    if (this.colTipoMovi.Visible)
      this.colTipoMovi.VisibleIndex = num1++;
    if (this.colMontoApre.Visible)
      this.colMontoApre.VisibleIndex = num1++;
    if (this.colDebito.Visible)
      this.colDebito.VisibleIndex = num1++;
    if (this.colReca.Visible)
      this.colReca.VisibleIndex = num1++;
    if (!this.colSaldo.Visible)
      return;
    GridColumn colSaldo = this.colSaldo;
    int num2 = num1;
    int num3 = num2 + 1;
    colSaldo.VisibleIndex = num2;
  }

  private void ActualizarTotal() => this.txtDeudaSelec.Text = this.totalSeleccionado.ToString("C2");

  private void RecalcularTotalSeleccionado()
  {
    this.totalSeleccionado = 0M;
    this.lista.ForEach((Action<CCMaipu>) (resumen => this.totalSeleccionado += resumen.Detalles.Where<DetaCCMaipu>((Func<DetaCCMaipu, bool>) (r => r.Seleccionado)).Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (d => d.TotaCtct))));
    this.ActualizarTotal();
  }

  private void NotificarCambioDeuda()
  {
    this._debounceTimer?.Stop();
    this._debounceTimer?.Start();
  }

  private void CargarDeudaSeleccionadaYNotificar()
  {
    this.deudaSeleccionada = this.lista.Where<CCMaipu>((Func<CCMaipu, bool>) (resumen => resumen.Detalles.Any<DetaCCMaipu>((Func<DetaCCMaipu, bool>) (d => d.Seleccionado)))).Select<CCMaipu, CCMaipu>((Func<CCMaipu, CCMaipu>) (resumen => new CCMaipu()
    {
      CodiOfic = resumen.CodiOfic,
      CuenCtct = resumen.CuenCtct,
      Detalle = resumen.Detalle,
      Tipo = resumen.Tipo,
      Detalles = resumen.Detalles.Where<DetaCCMaipu>((Func<DetaCCMaipu, bool>) (d => d.Seleccionado)).ToList<DetaCCMaipu>()
    })).ToList<CCMaipu>();
    if (this._plan is DTOFaciPagoMP plan)
    {
      plan.DeudaSeleccionada.Clear();
      plan.DeudaSeleccionada.AddRange((IEnumerable<CCMaipu>) this.deudaSeleccionada);
    }
    EventHandler<object> registroSeleccionado = this.RegistroSeleccionado;
    if (registroSeleccionado == null)
      return;
    registroSeleccionado((object) this, (object) null);
  }

  private void gridViewResumen_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    if (!this.TerminoCarga)
      return;
    if (this.lista == null || this.lista.Count == 0)
      ReestablecerGrilla();
    else if (((ColumnView) this.gridViewResumen).GetFocusedRow() is CCMaipu focusedRow)
    {
      this.gridControlGrilla.DataSource = (object) focusedRow.Detalles;
      ((BaseView) this.gridViewGrilla).RefreshData();
      this.OcultarColumnas();
      this.MostrarColumnas(focusedRow.Tipo);
    }
    else
      ReestablecerGrilla();

    void ReestablecerGrilla()
    {
      this.gridControlGrilla.DataSource = (object) null;
      ((BaseView) this.gridViewGrilla).RefreshData();
      this.OcultarColumnas();
    }
  }

  private void DebounceTimer_Tick(object sender, EventArgs e)
  {
    this._debounceTimer.Stop();
    this.CargarDeudaSeleccionadaYNotificar();
  }

  private void RowCellStyleDetalles(object sender, RowCellStyleEventArgs e)
  {
    if (!(((BaseView) (sender as GridView)).GetRow(((CustomRowCellEventArgs) e).RowHandle) is DetaCCMaipu row) || !row.Seleccionado)
      return;
    e.Appearance.BackColor = e.Appearance.BackColor2 = Color.LightGreen;
  }

  private void RowCellStyleResumen(object sender, RowCellStyleEventArgs e)
  {
    if (((BaseView) (sender as GridView)).GetRow(((CustomRowCellEventArgs) e).RowHandle) is CCMaipu row && row.Seleccionado)
    {
      e.Appearance.BackColor = e.Appearance.BackColor2 = Color.LightGreen;
    }
    else
    {
      if (row == null || row.EstadoSel != EstadoSeleccion.Parcial)
        return;
      e.Appearance.BackColor = e.Appearance.BackColor2 = Color.LightYellow;
    }
  }

  private void gridViewResumen_CellValueChanging(object sender, CellValueChangedEventArgs e)
  {
    if (!(e.Column.FieldName == "Seleccionado"))
      return;
    CCMaipu detalle = ((BaseView) this.gridViewResumen).GetRow(e.RowHandle) as CCMaipu;
    if (detalle != null)
      detalle.Seleccionado = (bool) e.Value;
    ((ColumnView) this.gridViewResumen).RefreshRow(e.RowHandle);
    detalle.Detalles.Where<DetaCCMaipu>((Func<DetaCCMaipu, bool>) (d => d.Tipo == detalle.Tipo)).ToList<DetaCCMaipu>().ForEach((Action<DetaCCMaipu>) (d => d.Seleccionado = detalle.Seleccionado));
    ((BaseView) this.gridViewGrilla).RefreshData();
    if (detalle.Seleccionado)
    {
      detalle.EstadoSel = EstadoSeleccion.Todos;
      detalle.DetallesSeleccionados = detalle.Detalles.Count;
    }
    else
    {
      detalle.EstadoSel = EstadoSeleccion.Ninguno;
      detalle.DetallesSeleccionados = 0;
    }
    this.RecalcularTotalSeleccionado();
    this.NotificarCambioDeuda();
  }

  private void gridViewGrilla_CellValueChanging(object sender, CellValueChangedEventArgs e)
  {
    if (!(e.Column.FieldName == "Seleccionado"))
      return;
    DetaCCMaipu detalle = ((BaseView) this.gridViewGrilla).GetRow(e.RowHandle) as DetaCCMaipu;
    if (detalle != null)
    {
      bool flag = (bool) e.Value;
      if (detalle.Seleccionado != flag)
      {
        if (flag)
          this.totalSeleccionado += detalle.TotaCtct;
        else
          this.totalSeleccionado -= detalle.TotaCtct;
        this.ActualizarTotal();
        this.NotificarCambioDeuda();
      }
      detalle.Seleccionado = flag;
      CCMaipu ccMaipu = this.lista.FirstOrDefault<CCMaipu>((Func<CCMaipu, bool>) (r => r.Tipo == detalle.Tipo));
      if (ccMaipu != null)
      {
        if (detalle.Seleccionado)
          ++ccMaipu.DetallesSeleccionados;
        else
          --ccMaipu.DetallesSeleccionados;
        ccMaipu.EstadoSel = ccMaipu.DetallesSeleccionados != ccMaipu.Detalles.Count ? (ccMaipu.DetallesSeleccionados <= 0 ? EstadoSeleccion.Ninguno : EstadoSeleccion.Parcial) : EstadoSeleccion.Todos;
        ccMaipu.Seleccionado = ccMaipu.EstadoSel == EstadoSeleccion.Todos;
      }
    }
    ((ColumnView) this.gridViewGrilla).RefreshRow(e.RowHandle);
    ((BaseView) this.gridViewResumen).RefreshData();
  }

  private void gridPPMP_Disposed(object sender, EventArgs e)
  {
    if (this._debounceTimer != null)
    {
      this._debounceTimer.Stop();
      this._debounceTimer.Tick -= new EventHandler(this.DebounceTimer_Tick);
      this._debounceTimer.Dispose();
      this._debounceTimer = (Timer) null;
    }
    if (this.gridViewGrilla != null)
    {
      this.gridViewGrilla.RowCellStyle -= new RowCellStyleEventHandler(this.RowCellStyleDetalles);
      ((ColumnView) this.gridViewGrilla).CellValueChanging -= new CellValueChangedEventHandler(this.gridViewGrilla_CellValueChanging);
    }
    if (this.gridViewResumen == null)
      return;
    this.gridViewResumen.RowCellStyle -= new RowCellStyleEventHandler(this.RowCellStyleResumen);
    ((ColumnView) this.gridViewResumen).FocusedRowChanged -= new FocusedRowChangedEventHandler(this.gridViewResumen_FocusedRowChanged);
    ((ColumnView) this.gridViewResumen).CellValueChanging -= new CellValueChangedEventHandler(this.gridViewResumen_CellValueChanging);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.panSuperior = new MetroPanel();
    this.gridControlResumen = new GridControl();
    this.gridViewResumen = new GridView();
    this.colSelect = new GridColumn();
    this.colDetalle = new GridColumn();
    this.colImporte = new GridColumn();
    this.colRecargo = new GridColumn();
    this.colTotal = new GridColumn();
    this.metroLabel1 = new MetroLabel();
    this.panDetalles = new MetroPanel();
    this.gridControlGrilla = new GridControl();
    this.gridViewGrilla = new GridView();
    this.colSeleccionado = new GridColumn();
    this.colPeriodo = new GridColumn();
    this.colBimestre = new GridColumn();
    this.colBoleto = new GridColumn();
    this.colFaci = new GridColumn();
    this.colCuota = new GridColumn();
    this.colApre = new GridColumn();
    this.colFechEmi = new GridColumn();
    this.colVencPago = new GridColumn();
    this.colConcepto = new GridColumn();
    this.colExpeComp = new GridColumn();
    this.colTipoMovi = new GridColumn();
    this.colMontoApre = new GridColumn();
    this.colDebito = new GridColumn();
    this.colReca = new GridColumn();
    this.colSaldo = new GridColumn();
    this.metroLabel2 = new MetroLabel();
    this.panInferior = new MetroPanel();
    this.metroLabel3 = new MetroLabel();
    this.txtDeudaSelec = new MetroTextBox();
    this.panSuperior.SuspendLayout();
    ((ISupportInitialize) this.gridControlResumen).BeginInit();
    ((ISupportInitialize) this.gridViewResumen).BeginInit();
    this.panDetalles.SuspendLayout();
    ((ISupportInitialize) this.gridControlGrilla).BeginInit();
    ((ISupportInitialize) this.gridViewGrilla).BeginInit();
    this.panInferior.SuspendLayout();
    this.SuspendLayout();
    this.panSuperior.Controls.Add((Control) this.gridControlResumen);
    this.panSuperior.Controls.Add((Control) this.metroLabel1);
    this.panSuperior.Dock = DockStyle.Top;
    this.panSuperior.Location = new Point(0, 0);
    this.panSuperior.Name = "panSuperior";
    this.panSuperior.Size = new Size(1085, 108);
    this.panSuperior.TabIndex = 0;
    ((Control) this.gridControlResumen).Dock = DockStyle.Fill;
    ((Control) this.gridControlResumen).Location = new Point(0, 19);
    this.gridControlResumen.MainView = (BaseView) this.gridViewResumen;
    ((Control) this.gridControlResumen).Name = "gridControlResumen";
    ((Control) this.gridControlResumen).Size = new Size(1085, 89);
    ((Control) this.gridControlResumen).TabIndex = 100;
    this.gridControlResumen.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewResumen
    });
    this.gridViewResumen.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewResumen.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewResumen.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewResumen).Columns.AddRange(new GridColumn[5]
    {
      this.colSelect,
      this.colDetalle,
      this.colImporte,
      this.colRecargo,
      this.colTotal
    });
    this.gridViewResumen.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewResumen).GridControl = this.gridControlResumen;
    ((BaseView) this.gridViewResumen).Name = "gridViewResumen";
    ((ColumnViewOptionsBehavior) this.gridViewResumen.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    this.gridViewResumen.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewResumen.OptionsCustomization.AllowGroup = false;
    this.gridViewResumen.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewResumen.OptionsSelection.CheckBoxSelectorField = "Seleccionado";
    this.gridViewResumen.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewResumen.OptionsSelection.EnableAppearanceFocusedRow = false;
    this.gridViewResumen.OptionsSelection.MultiSelectMode = (GridMultiSelectMode) 2;
    this.gridViewResumen.OptionsView.ShowGroupPanel = false;
    this.gridViewResumen.OptionsView.ShowIndicator = false;
    ((ColumnView) this.gridViewResumen).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridViewResumen_FocusedRowChanged);
    ((ColumnView) this.gridViewResumen).CellValueChanging += new CellValueChangedEventHandler(this.gridViewResumen_CellValueChanging);
    ((AppearanceOptions) this.colSelect.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colSelect.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    ((AppearanceObject) this.colSelect.AppearanceCell).TextOptions.VAlignment = (VertAlignment) 2;
    this.colSelect.FieldName = "Seleccionado";
    this.colSelect.Fixed = (FixedStyle) 1;
    this.colSelect.MaxWidth = 40;
    this.colSelect.Name = "colSelect";
    this.colSelect.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colSelect.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colSelect.OptionsColumn.AllowMove = false;
    this.colSelect.OptionsColumn.AllowShowHide = false;
    this.colSelect.OptionsColumn.AllowSize = false;
    this.colSelect.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colSelect.OptionsColumn.FixedWidth = true;
    this.colSelect.OptionsColumn.ShowCaption = false;
    this.colSelect.Visible = true;
    this.colSelect.VisibleIndex = 0;
    this.colSelect.Width = 40;
    this.colDetalle.Caption = "Detalle";
    this.colDetalle.FieldName = "Detalle";
    this.colDetalle.Name = "colDetalle";
    this.colDetalle.OptionsColumn.AllowEdit = false;
    this.colDetalle.OptionsColumn.AllowFocus = false;
    this.colDetalle.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowMove = false;
    this.colDetalle.OptionsColumn.AllowShowHide = false;
    this.colDetalle.OptionsColumn.AllowSize = false;
    this.colDetalle.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colDetalle.Visible = true;
    this.colDetalle.VisibleIndex = 1;
    ((AppearanceOptions) this.colImporte.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImporte.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImporte.Caption = "Débito";
    this.colImporte.DisplayFormat.FormatString = "{0:C2}";
    this.colImporte.DisplayFormat.FormatType = (FormatType) 3;
    this.colImporte.FieldName = "Saldo";
    this.colImporte.MaxWidth = 150;
    this.colImporte.Name = "colImporte";
    this.colImporte.OptionsColumn.AllowEdit = false;
    this.colImporte.OptionsColumn.AllowFocus = false;
    this.colImporte.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowMove = false;
    this.colImporte.OptionsColumn.AllowShowHide = false;
    this.colImporte.OptionsColumn.AllowSize = false;
    this.colImporte.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    ((GridSummaryItemCollection) this.colImporte.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "Saldo", "{0:C2}")
    });
    this.colImporte.Visible = true;
    this.colImporte.VisibleIndex = 2;
    ((AppearanceOptions) this.colRecargo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colRecargo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colRecargo.Caption = "Recargo";
    this.colRecargo.DisplayFormat.FormatString = "{0:C2}";
    this.colRecargo.DisplayFormat.FormatType = (FormatType) 3;
    this.colRecargo.FieldName = "Recargo";
    this.colRecargo.MaxWidth = 150;
    this.colRecargo.Name = "colRecargo";
    this.colRecargo.OptionsColumn.AllowEdit = false;
    this.colRecargo.OptionsColumn.AllowFocus = false;
    this.colRecargo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colRecargo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colRecargo.OptionsColumn.AllowMove = false;
    this.colRecargo.OptionsColumn.AllowShowHide = false;
    this.colRecargo.OptionsColumn.AllowSize = false;
    this.colRecargo.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    ((GridSummaryItemCollection) this.colRecargo.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "Recargo", "{0:C2}")
    });
    this.colRecargo.Visible = true;
    this.colRecargo.VisibleIndex = 3;
    ((AppearanceOptions) this.colTotal.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotal.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotal.Caption = "Total";
    this.colTotal.DisplayFormat.FormatString = "{0:C2}";
    this.colTotal.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotal.FieldName = "Total";
    this.colTotal.MaxWidth = 150;
    this.colTotal.Name = "colTotal";
    this.colTotal.OptionsColumn.AllowEdit = false;
    this.colTotal.OptionsColumn.AllowFocus = false;
    this.colTotal.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTotal.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTotal.OptionsColumn.AllowMove = false;
    this.colTotal.OptionsColumn.AllowShowHide = false;
    this.colTotal.OptionsColumn.AllowSize = false;
    this.colTotal.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    ((GridSummaryItemCollection) this.colTotal.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "Total", "{0:C2}")
    });
    this.colTotal.Visible = true;
    this.colTotal.VisibleIndex = 4;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Dock = DockStyle.Top;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(0, 0);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(1085, 19);
    this.metroLabel1.TabIndex = 7;
    this.metroLabel1.Text = "RESUMEN";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleCenter;
    this.panDetalles.Controls.Add((Control) this.gridControlGrilla);
    this.panDetalles.Controls.Add((Control) this.metroLabel2);
    this.panDetalles.Dock = DockStyle.Fill;
    this.panDetalles.Location = new Point(0, 108);
    this.panDetalles.Name = "panDetalles";
    this.panDetalles.Size = new Size(1085, 143);
    this.panDetalles.TabIndex = 1;
    ((Control) this.gridControlGrilla).Dock = DockStyle.Fill;
    ((Control) this.gridControlGrilla).Location = new Point(0, 19);
    this.gridControlGrilla.MainView = (BaseView) this.gridViewGrilla;
    ((Control) this.gridControlGrilla).Name = "gridControlGrilla";
    ((Control) this.gridControlGrilla).Size = new Size(1085, 124);
    ((Control) this.gridControlGrilla).TabIndex = 101;
    this.gridControlGrilla.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewGrilla
    });
    this.gridViewGrilla.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewGrilla.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewGrilla.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewGrilla).Columns.AddRange(new GridColumn[16 /*0x10*/]
    {
      this.colSeleccionado,
      this.colPeriodo,
      this.colBimestre,
      this.colBoleto,
      this.colFaci,
      this.colCuota,
      this.colApre,
      this.colFechEmi,
      this.colVencPago,
      this.colConcepto,
      this.colExpeComp,
      this.colTipoMovi,
      this.colMontoApre,
      this.colDebito,
      this.colReca,
      this.colSaldo
    });
    this.gridViewGrilla.FocusRectStyle = (DrawFocusRectStyle) 0;
    ((BaseView) this.gridViewGrilla).GridControl = this.gridControlGrilla;
    ((BaseView) this.gridViewGrilla).Name = "gridViewGrilla";
    ((ColumnViewOptionsBehavior) this.gridViewGrilla.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    this.gridViewGrilla.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewGrilla.OptionsCustomization.AllowGroup = false;
    this.gridViewGrilla.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewGrilla.OptionsSelection.EnableAppearanceFocusedRow = false;
    this.gridViewGrilla.OptionsView.ShowGroupPanel = false;
    this.gridViewGrilla.OptionsView.ShowIndicator = false;
    ((ColumnView) this.gridViewGrilla).CellValueChanging += new CellValueChangedEventHandler(this.gridViewGrilla_CellValueChanging);
    ((AppearanceOptions) this.colSeleccionado.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colSeleccionado.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    ((AppearanceObject) this.colSeleccionado.AppearanceCell).TextOptions.VAlignment = (VertAlignment) 2;
    this.colSeleccionado.FieldName = "Seleccionado";
    this.colSeleccionado.Fixed = (FixedStyle) 1;
    this.colSeleccionado.MaxWidth = 40;
    this.colSeleccionado.Name = "colSeleccionado";
    this.colSeleccionado.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colSeleccionado.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colSeleccionado.OptionsColumn.AllowMove = false;
    this.colSeleccionado.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colSeleccionado.OptionsColumn.FixedWidth = true;
    this.colSeleccionado.OptionsColumn.ShowCaption = false;
    this.colSeleccionado.Visible = true;
    this.colSeleccionado.VisibleIndex = 0;
    this.colSeleccionado.Width = 40;
    ((AppearanceOptions) this.colPeriodo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeriodo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeriodo.Caption = "Periodo";
    this.colPeriodo.FieldName = "PeriCtct";
    this.colPeriodo.MaxWidth = 60;
    this.colPeriodo.Name = "colPeriodo";
    this.colPeriodo.OptionsColumn.AllowEdit = false;
    this.colPeriodo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeriodo.OptionsColumn.AllowIncrementalSearch = false;
    this.colPeriodo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colPeriodo.OptionsColumn.AllowMove = false;
    this.colPeriodo.OptionsColumn.AllowShowHide = false;
    this.colPeriodo.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colPeriodo.OptionsColumn.ReadOnly = true;
    this.colPeriodo.OptionsColumn.TabStop = false;
    this.colPeriodo.Visible = true;
    this.colPeriodo.VisibleIndex = 1;
    this.colPeriodo.Width = 60;
    ((AppearanceOptions) this.colBimestre.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colBimestre.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colBimestre.Caption = "Bimestre";
    this.colBimestre.FieldName = "BimeCtct";
    this.colBimestre.MaxWidth = 50;
    this.colBimestre.Name = "colBimestre";
    this.colBimestre.OptionsColumn.AllowEdit = false;
    this.colBimestre.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colBimestre.OptionsColumn.AllowIncrementalSearch = false;
    this.colBimestre.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colBimestre.OptionsColumn.AllowMove = false;
    this.colBimestre.OptionsColumn.AllowShowHide = false;
    this.colBimestre.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colBimestre.OptionsColumn.ReadOnly = true;
    this.colBimestre.OptionsColumn.TabStop = false;
    this.colBimestre.Visible = true;
    this.colBimestre.VisibleIndex = 2;
    this.colBimestre.Width = 50;
    this.colBoleto.Caption = "Boleto";
    this.colBoleto.FieldName = "BoleCtct";
    this.colBoleto.MaxWidth = 100;
    this.colBoleto.Name = "colBoleto";
    this.colBoleto.OptionsColumn.AllowEdit = false;
    this.colBoleto.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colBoleto.OptionsColumn.AllowIncrementalSearch = false;
    this.colBoleto.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colBoleto.OptionsColumn.AllowMove = false;
    this.colBoleto.OptionsColumn.AllowShowHide = false;
    this.colBoleto.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colBoleto.OptionsColumn.ReadOnly = true;
    this.colBoleto.OptionsColumn.TabStop = false;
    this.colBoleto.Visible = true;
    this.colBoleto.VisibleIndex = 3;
    ((AppearanceOptions) this.colFaci.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFaci.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFaci.Caption = "N° Facilidad";
    this.colFaci.FieldName = "CodiFapa";
    this.colFaci.MaxWidth = 100;
    this.colFaci.Name = "colFaci";
    this.colFaci.OptionsColumn.AllowEdit = false;
    this.colFaci.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFaci.OptionsColumn.AllowIncrementalSearch = false;
    this.colFaci.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colFaci.OptionsColumn.AllowMove = false;
    this.colFaci.OptionsColumn.AllowShowHide = false;
    this.colFaci.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colFaci.OptionsColumn.ReadOnly = true;
    this.colFaci.OptionsColumn.TabStop = false;
    this.colFaci.Visible = true;
    this.colFaci.VisibleIndex = 4;
    this.colCuota.Caption = "Cuota";
    this.colCuota.FieldName = "ExpeCtct";
    this.colCuota.MaxWidth = 80 /*0x50*/;
    this.colCuota.Name = "colCuota";
    this.colCuota.OptionsColumn.AllowEdit = false;
    this.colCuota.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuota.OptionsColumn.AllowIncrementalSearch = false;
    this.colCuota.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCuota.OptionsColumn.AllowMove = false;
    this.colCuota.OptionsColumn.AllowShowHide = false;
    this.colCuota.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colCuota.OptionsColumn.ReadOnly = true;
    this.colCuota.OptionsColumn.TabStop = false;
    this.colCuota.Visible = true;
    this.colCuota.VisibleIndex = 5;
    this.colCuota.Width = 60;
    ((AppearanceOptions) this.colApre.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colApre.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colApre.Caption = "N° Apremio";
    this.colApre.FieldName = "NumeApre";
    this.colApre.MaxWidth = 100;
    this.colApre.Name = "colApre";
    this.colApre.OptionsColumn.AllowEdit = false;
    this.colApre.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.AllowIncrementalSearch = false;
    this.colApre.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.AllowMove = false;
    this.colApre.OptionsColumn.AllowShowHide = false;
    this.colApre.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.ReadOnly = true;
    this.colApre.OptionsColumn.TabStop = false;
    this.colApre.Visible = true;
    this.colApre.VisibleIndex = 6;
    ((AppearanceOptions) this.colFechEmi.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFechEmi.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFechEmi.Caption = "Fecha Emision";
    this.colFechEmi.DisplayFormat.FormatString = "dd/MM/yyyy";
    this.colFechEmi.DisplayFormat.FormatType = (FormatType) 2;
    this.colFechEmi.FieldName = "FealCtct";
    this.colFechEmi.MaxWidth = 100;
    this.colFechEmi.Name = "colFechEmi";
    this.colFechEmi.OptionsColumn.AllowEdit = false;
    this.colFechEmi.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFechEmi.OptionsColumn.AllowIncrementalSearch = false;
    this.colFechEmi.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colFechEmi.OptionsColumn.AllowMove = false;
    this.colFechEmi.OptionsColumn.AllowShowHide = false;
    this.colFechEmi.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colFechEmi.OptionsColumn.ReadOnly = true;
    this.colFechEmi.OptionsColumn.TabStop = false;
    this.colFechEmi.Visible = true;
    this.colFechEmi.VisibleIndex = 7;
    ((AppearanceOptions) this.colVencPago.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colVencPago.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colVencPago.Caption = "Venc/Pago";
    this.colVencPago.DisplayFormat.FormatString = "dd/MM/yyyy";
    this.colVencPago.DisplayFormat.FormatType = (FormatType) 2;
    this.colVencPago.FieldName = "FeveCtct";
    this.colVencPago.MaxWidth = 100;
    this.colVencPago.Name = "colVencPago";
    this.colVencPago.OptionsColumn.AllowEdit = false;
    this.colVencPago.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colVencPago.OptionsColumn.AllowIncrementalSearch = false;
    this.colVencPago.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colVencPago.OptionsColumn.AllowMove = false;
    this.colVencPago.OptionsColumn.AllowShowHide = false;
    this.colVencPago.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colVencPago.OptionsColumn.ReadOnly = true;
    this.colVencPago.OptionsColumn.TabStop = false;
    this.colVencPago.Visible = true;
    this.colVencPago.VisibleIndex = 8;
    this.colConcepto.Caption = "Concepto";
    this.colConcepto.FieldName = "DetaConc";
    this.colConcepto.Name = "colConcepto";
    this.colConcepto.OptionsColumn.AllowEdit = false;
    this.colConcepto.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colConcepto.OptionsColumn.AllowIncrementalSearch = false;
    this.colConcepto.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colConcepto.OptionsColumn.AllowMove = false;
    this.colConcepto.OptionsColumn.AllowShowHide = false;
    this.colConcepto.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colConcepto.OptionsColumn.ReadOnly = true;
    this.colConcepto.OptionsColumn.TabStop = false;
    this.colConcepto.Visible = true;
    this.colConcepto.VisibleIndex = 9;
    this.colExpeComp.Caption = "Expe./Comp.";
    this.colExpeComp.FieldName = "ExpeCtct";
    this.colExpeComp.Name = "colExpeComp";
    this.colExpeComp.OptionsColumn.AllowEdit = false;
    this.colExpeComp.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colExpeComp.OptionsColumn.AllowIncrementalSearch = false;
    this.colExpeComp.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colExpeComp.OptionsColumn.AllowMove = false;
    this.colExpeComp.OptionsColumn.AllowShowHide = false;
    this.colExpeComp.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colExpeComp.OptionsColumn.ReadOnly = true;
    this.colExpeComp.OptionsColumn.TabStop = false;
    this.colExpeComp.Visible = true;
    this.colExpeComp.VisibleIndex = 10;
    ((AppearanceOptions) this.colTipoMovi.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTipoMovi.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colTipoMovi.Caption = "Tipo Mov.";
    this.colTipoMovi.FieldName = "DetaTimo";
    this.colTipoMovi.MaxWidth = 200;
    this.colTipoMovi.Name = "colTipoMovi";
    this.colTipoMovi.OptionsColumn.AllowEdit = false;
    this.colTipoMovi.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTipoMovi.OptionsColumn.AllowIncrementalSearch = false;
    this.colTipoMovi.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTipoMovi.OptionsColumn.AllowMove = false;
    this.colTipoMovi.OptionsColumn.AllowShowHide = false;
    this.colTipoMovi.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colTipoMovi.OptionsColumn.ReadOnly = true;
    this.colTipoMovi.OptionsColumn.TabStop = false;
    this.colTipoMovi.Visible = true;
    this.colTipoMovi.VisibleIndex = 11;
    ((AppearanceOptions) this.colMontoApre.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colMontoApre.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colMontoApre.Caption = "Apremio";
    this.colMontoApre.DisplayFormat.FormatString = "{0:C2}";
    this.colMontoApre.DisplayFormat.FormatType = (FormatType) 3;
    this.colMontoApre.FieldName = "ApreCtct";
    this.colMontoApre.MaxWidth = 150;
    this.colMontoApre.Name = "colMontoApre";
    this.colMontoApre.OptionsColumn.AllowEdit = false;
    this.colMontoApre.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colMontoApre.OptionsColumn.AllowIncrementalSearch = false;
    this.colMontoApre.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colMontoApre.OptionsColumn.AllowMove = false;
    this.colMontoApre.OptionsColumn.AllowShowHide = false;
    this.colMontoApre.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colMontoApre.OptionsColumn.ReadOnly = true;
    this.colMontoApre.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colMontoApre.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "ApreCtct", "{0:C2}")
    });
    this.colMontoApre.Visible = true;
    this.colMontoApre.VisibleIndex = 12;
    ((AppearanceOptions) this.colDebito.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDebito.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDebito.Caption = "Débito";
    this.colDebito.DisplayFormat.FormatString = "{0:C2}";
    this.colDebito.DisplayFormat.FormatType = (FormatType) 3;
    this.colDebito.FieldName = "DebeCtct";
    this.colDebito.MaxWidth = 150;
    this.colDebito.Name = "colDebito";
    this.colDebito.OptionsColumn.AllowEdit = false;
    this.colDebito.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDebito.OptionsColumn.AllowIncrementalSearch = false;
    this.colDebito.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDebito.OptionsColumn.AllowMove = false;
    this.colDebito.OptionsColumn.AllowShowHide = false;
    this.colDebito.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colDebito.OptionsColumn.ReadOnly = true;
    this.colDebito.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colDebito.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "DebeCtct", "{0:C2}")
    });
    this.colDebito.Visible = true;
    this.colDebito.VisibleIndex = 13;
    ((AppearanceOptions) this.colReca.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colReca.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colReca.Caption = "Recargo";
    this.colReca.DisplayFormat.FormatString = "{0:C2}";
    this.colReca.DisplayFormat.FormatType = (FormatType) 3;
    this.colReca.FieldName = "RecaCtct";
    this.colReca.MaxWidth = 150;
    this.colReca.Name = "colReca";
    this.colReca.OptionsColumn.AllowEdit = false;
    this.colReca.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colReca.OptionsColumn.AllowIncrementalSearch = false;
    this.colReca.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colReca.OptionsColumn.AllowMove = false;
    this.colReca.OptionsColumn.AllowShowHide = false;
    this.colReca.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colReca.OptionsColumn.ReadOnly = true;
    this.colReca.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colReca.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "RecaCtct", "{0:C2}")
    });
    this.colReca.Visible = true;
    this.colReca.VisibleIndex = 14;
    ((AppearanceOptions) this.colSaldo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colSaldo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colSaldo.Caption = "Saldo Final";
    this.colSaldo.DisplayFormat.FormatString = "{0:C2}";
    this.colSaldo.DisplayFormat.FormatType = (FormatType) 3;
    this.colSaldo.FieldName = "TotaCtct";
    this.colSaldo.MaxWidth = 150;
    this.colSaldo.Name = "colSaldo";
    this.colSaldo.OptionsColumn.AllowEdit = false;
    this.colSaldo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colSaldo.OptionsColumn.AllowIncrementalSearch = false;
    this.colSaldo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colSaldo.OptionsColumn.AllowMove = false;
    this.colSaldo.OptionsColumn.AllowShowHide = false;
    this.colSaldo.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colSaldo.OptionsColumn.ReadOnly = true;
    this.colSaldo.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colSaldo.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaCtct", "{0:C2}")
    });
    this.colSaldo.Visible = true;
    this.colSaldo.VisibleIndex = 15;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Dock = DockStyle.Top;
    this.metroLabel2.FontWeight = MetroFontWeight.Bold;
    this.metroLabel2.Location = new Point(0, 0);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(1085, 19);
    this.metroLabel2.TabIndex = 8;
    this.metroLabel2.Text = "DETALLADO";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleCenter;
    this.panInferior.Controls.Add((Control) this.metroLabel3);
    this.panInferior.Controls.Add((Control) this.txtDeudaSelec);
    this.panInferior.Dock = DockStyle.Bottom;
    this.panInferior.Location = new Point(0, 251);
    this.panInferior.Name = "panInferior";
    this.panInferior.Size = new Size(1085, 37);
    this.panInferior.TabIndex = 13;
    this.metroLabel3.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.FontWeight = MetroFontWeight.Bold;
    this.metroLabel3.Location = new Point(727, 10);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(163, 19);
    this.metroLabel3.TabIndex = 14;
    this.metroLabel3.Text = "DEUDA SELECCIONADA";
    this.txtDeudaSelec.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.txtDeudaSelec.CausesValidation = false;
    this.txtDeudaSelec.FontSize = 16f;
    this.txtDeudaSelec.FontWeight = MetroFontWeight.Bold;
    this.txtDeudaSelec.Location = new Point(902, 5);
    this.txtDeudaSelec.MaxLength = 100;
    this.txtDeudaSelec.Name = "txtDeudaSelec";
    this.txtDeudaSelec.ReadOnly = true;
    this.txtDeudaSelec.Size = new Size(178, 28);
    this.txtDeudaSelec.TabIndex = 13;
    this.txtDeudaSelec.TabStop = false;
    this.txtDeudaSelec.TextAlign = HorizontalAlignment.Right;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.panDetalles);
    this.Controls.Add((Control) this.panSuperior);
    this.Controls.Add((Control) this.panInferior);
    this.Name = nameof (gridPPMP);
    this.Size = new Size(1085, 288);
    this.panSuperior.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlResumen).EndInit();
    ((ISupportInitialize) this.gridViewResumen).EndInit();
    this.panDetalles.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlGrilla).EndInit();
    ((ISupportInitialize) this.gridViewGrilla).EndInit();
    this.panInferior.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
