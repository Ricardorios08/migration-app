// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Grids.Maipu.gridCCMaipu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Herencia;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Grids.Maipu;

public class gridCCMaipu : BuscadorBase, IGridCuentaCorriente
{
  private ExpCCMaipu experto;
  private List<CCMaipu> lista;
  private string cta = string.Empty;
  private IContainer components = (IContainer) null;
  private MetroPanel panGrilla;
  private GridControl gridControlGrilla;
  private GridView gridViewGrilla;
  private GridColumn colPeriodo;
  private GridColumn colBoleto;
  private GridColumn colFechEmi;
  private GridColumn colVencPago;
  private GridColumn colConcepto;
  private GridColumn colFaci;
  private GridColumn colApre;
  private GridColumn colExpeComp;
  private GridColumn colTipoMovi;
  private GridColumn colDebito;
  private GridColumn colCredito;
  private GridColumn colReca;
  private GridColumn colSaldo;
  private MetroPanel panSuperior;
  private GridControl gridControlResumen;
  private GridView gridViewResumen;
  private GridColumn colDetalle;
  private GridColumn colImporte;
  private GridColumn colRecargo;
  private GridColumn colTotal;
  private GridColumn colMontoApre;
  private GridColumn colCuota;
  private GridColumn colBimestre;
  private GridColumn colOficina;
  private GridColumn colCuenta;
  private GridColumn colCodiOfic;

  public event EventHandler<object> DetalleSeleccionado;

  public gridCCMaipu()
  {
    this.InitializeComponent();
    this.experto = new ExpCCMaipu();
    this.lista = new List<CCMaipu>();
    this.gridControlResumen.DataSource = (object) this.lista;
    this.gridControlGrilla.DataSource = (object) null;
    this.OcultarColumnas();
    this.gridViewResumen.CustomDrawFooterCell += new FooterCellCustomDrawEventHandler(this.CustomDrawFooterCell);
    this.gridViewGrilla.CustomDrawFooterCell += new FooterCellCustomDrawEventHandler(this.CustomDrawFooterCell);
    this.gridViewResumen.RowCellStyle += new RowCellStyleEventHandler(this.GridViewResumen_RowCellStyle);
    this.gridViewResumen.RowStyle += new RowStyleEventHandler(this.GridViewResumen_RowStyle);
  }

  public override void Limpiar()
  {
    // ISSUE: method pointer
    this.EjecutarEnUI(new Action((object) this, __methodptr(\u003CLimpiar\u003Eg__RealizarLimpieza\u007C7_0)));
  }

  private void ActualizarGrillas()
  {
    ((BaseView) this.gridViewResumen).RefreshData();
    ((BaseView) this.gridViewGrilla).RefreshData();
    ((ColumnView) this.gridViewResumen).FocusInvalidRow();
  }

  private void SeleccionarPrimerFilaDetalles()
  {
    ((ColumnView) this.gridViewGrilla).FocusInvalidRow();
    if (((BaseView) this.gridViewGrilla).RowCount <= 0)
      return;
    ((ColumnView) this.gridViewGrilla).FocusedRowHandle = 0;
  }

  public override void Buscar(CtaCte cuenta)
  {
    List<CCMaipu> temp = new List<CCMaipu>();
    this.cta = cuenta.CuenCtct;
    this.experto.BuscarDeuda(temp, cuenta, ExpCCMaipu.DeudaPara.CuentaCorriente);
    this.EjecutarEnUI(new Action(AsignarResultados));

    void AsignarResultados()
    {
      this.lista.Clear();
      this.lista.AddRange((IEnumerable<CCMaipu>) temp);
      this.ActualizarGrillas();
      if (this.lista.Count != 0)
        return;
      cuenta.TipoResultado = cuenta.SoloDeuda ? TipoResultadoCtaCte.SinDeuda : TipoResultadoCtaCte.SinMovimientos;
    }
  }

  private void gridViewResumen_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    if (this.lista == null || this.lista.Count == 0)
      ReestablecerGrilla();
    else if (((ColumnView) this.gridViewResumen).GetFocusedRow() is CCMaipu focusedRow)
    {
      this.gridControlGrilla.DataSource = (object) focusedRow.Detalles;
      ((BaseView) this.gridViewGrilla).RefreshData();
      this.SeleccionarPrimerFilaDetalles();
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

  private void OcultarColumnas()
  {
    this.colBoleto.Visible = this.colApre.Visible = this.colMontoApre.Visible = this.colPeriodo.Visible = this.colBimestre.Visible = this.colFaci.Visible = this.colCuota.Visible = this.colExpeComp.Visible = false;
  }

  private void MostrarColumnas(TipoResumenMP Tipo)
  {
    this.colMontoApre.Visible = Tipo == TipoResumenMP.Apremio;
    this.colApre.Visible = Tipo == TipoResumenMP.Apremio || Tipo == TipoResumenMP.Historico;
    GridColumn colPeriodo = this.colPeriodo;
    GridColumn colBimestre = this.colBimestre;
    bool flag1;
    this.colBoleto.Visible = flag1 = Tipo == TipoResumenMP.Comun || Tipo == TipoResumenMP.Historico;
    int num1;
    bool flag2 = (num1 = flag1 ? 1 : 0) != 0;
    colBimestre.Visible = num1 != 0;
    int num2 = flag2 ? 1 : 0;
    colPeriodo.Visible = num2 != 0;
    this.colCuota.Visible = Tipo == TipoResumenMP.Facilidad;
    this.colFaci.Visible = Tipo == TipoResumenMP.Facilidad || Tipo == TipoResumenMP.Historico;
    this.colExpeComp.Visible = this.colFechEmi.Visible = Tipo != TipoResumenMP.Facilidad;
    this.EstablecerVisibleIndex();
  }

  private void EstablecerVisibleIndex()
  {
    int num1 = 0;
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
    if (this.colCredito.Visible)
      this.colCredito.VisibleIndex = num1++;
    if (this.colReca.Visible)
      this.colReca.VisibleIndex = num1++;
    if (!this.colSaldo.Visible)
      return;
    GridColumn colSaldo = this.colSaldo;
    int num2 = num1;
    int num3 = num2 + 1;
    colSaldo.VisibleIndex = num2;
  }

  private void gridViewGrilla_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    if (!this.TerminoCarga)
      return;
    object focusedRow = ((ColumnView) this.gridViewGrilla).GetFocusedRow();
    if (focusedRow == null)
      return;
    EventHandler<object> detalleSeleccionado = this.DetalleSeleccionado;
    if (detalleSeleccionado == null)
      return;
    detalleSeleccionado((object) this, focusedRow);
  }

  private void CustomDrawFooterCell(object sender, FooterCellCustomDrawEventArgs e)
  {
    ((CustomDrawEventArgs) e).Appearance.Font = new Font(((CustomDrawEventArgs) e).Appearance.Font, FontStyle.Bold);
  }

  public List<IReporte> ObtenerMovimientos()
  {
    return this.lista.TrueForAll((Predicate<CCMaipu>) (x => x != null)) ? new List<IReporte>((IEnumerable<IReporte>) this.lista) : new List<IReporte>();
  }

  private void GridViewResumen_RowStyle(object sender, RowStyleEventArgs e)
  {
    if (!(sender is GridView gridView) || ((RowEventArgs) e).RowHandle < 0)
      return;
    string rowCellValue = ((ColumnView) gridView).GetRowCellValue(((RowEventArgs) e).RowHandle, "CuenCtct") as string;
    if (string.IsNullOrWhiteSpace(rowCellValue) || string.IsNullOrWhiteSpace(this.cta) || !rowCellValue.Trim().Equals(this.cta, StringComparison.OrdinalIgnoreCase))
      return;
    e.Appearance.BackColor = Color.LightYellow;
    e.Appearance.ForeColor = Color.Black;
    e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
  }

  private void GridViewResumen_RowCellStyle(object sender, RowCellStyleEventArgs e)
  {
    if (!(sender is GridView gridView) || ((CustomRowCellEventArgs) e).RowHandle < 0)
      return;
    string rowCellValue = ((ColumnView) gridView).GetRowCellValue(((CustomRowCellEventArgs) e).RowHandle, "CuenCtct") as string;
    if (!string.IsNullOrWhiteSpace(this.cta) && !string.IsNullOrWhiteSpace(rowCellValue) && rowCellValue.Trim().Equals(this.cta, StringComparison.OrdinalIgnoreCase) || !(((CustomRowCellEventArgs) e).Column.FieldName == "DetaOfic"))
      return;
    if (!(((ColumnView) gridView).GetRowCellValue(((CustomRowCellEventArgs) e).RowHandle, "DetaOfic") is string str1))
      str1 = string.Empty;
    string str2 = str1;
    if (!string.IsNullOrWhiteSpace(str2))
    {
      switch (str2.Trim().ToUpper())
      {
        case "ANTENA":
          e.Appearance.BackColor = Color.LightSteelBlue;
          break;
        case "CEMENTERIO":
          e.Appearance.BackColor = Color.LightBlue;
          break;
        case "COMERCIO":
          e.Appearance.BackColor = Color.LightCoral;
          break;
        case "DEUDORES VARIOS":
          e.Appearance.BackColor = Color.LightSalmon;
          break;
        case "INMUEBLE":
          e.Appearance.BackColor = Color.LightGreen;
          break;
        case "PUBLICIDAD":
          e.Appearance.BackColor = Color.LightPink;
          break;
        case "TRANSITO":
          e.Appearance.BackColor = Color.LightSkyBlue;
          break;
      }
    }
  }

  private void gridViewGrilla_RowStyle(object sender, RowStyleEventArgs e)
  {
    if (!(sender is GridView gridView) || ((RowEventArgs) e).RowHandle < 0 || !(((BaseView) gridView).GetRow(((RowEventArgs) e).RowHandle) is DetaCCMaipu row) || !row.Congelado)
      return;
    e.Appearance.BackColor = Color.LightCyan;
    e.Appearance.ForeColor = Color.Black;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.panGrilla = new MetroPanel();
    this.gridControlGrilla = new GridControl();
    this.gridViewGrilla = new GridView();
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
    this.colCredito = new GridColumn();
    this.colReca = new GridColumn();
    this.colSaldo = new GridColumn();
    this.panSuperior = new MetroPanel();
    this.gridControlResumen = new GridControl();
    this.gridViewResumen = new GridView();
    this.colCodiOfic = new GridColumn();
    this.colOficina = new GridColumn();
    this.colCuenta = new GridColumn();
    this.colDetalle = new GridColumn();
    this.colImporte = new GridColumn();
    this.colRecargo = new GridColumn();
    this.colTotal = new GridColumn();
    this.panGrilla.SuspendLayout();
    ((ISupportInitialize) this.gridControlGrilla).BeginInit();
    ((ISupportInitialize) this.gridViewGrilla).BeginInit();
    this.panSuperior.SuspendLayout();
    ((ISupportInitialize) this.gridControlResumen).BeginInit();
    ((ISupportInitialize) this.gridViewResumen).BeginInit();
    this.SuspendLayout();
    this.panGrilla.Controls.Add((Control) this.gridControlGrilla);
    this.panGrilla.Dock = DockStyle.Fill;
    this.panGrilla.Location = new Point(0, 141);
    this.panGrilla.Name = "panGrilla";
    this.panGrilla.Size = new Size(1360, 327);
    this.panGrilla.TabIndex = 1;
    ((Control) this.gridControlGrilla).Dock = DockStyle.Fill;
    ((Control) this.gridControlGrilla).Location = new Point(0, 0);
    this.gridControlGrilla.MainView = (BaseView) this.gridViewGrilla;
    ((Control) this.gridControlGrilla).Name = "gridControlGrilla";
    ((Control) this.gridControlGrilla).Size = new Size(1360, 327);
    ((Control) this.gridControlGrilla).TabIndex = 2;
    this.gridControlGrilla.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewGrilla
    });
    this.gridViewGrilla.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewGrilla.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewGrilla.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewGrilla).Columns.AddRange(new GridColumn[16 /*0x10*/]
    {
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
      this.colCredito,
      this.colReca,
      this.colSaldo
    });
    this.gridViewGrilla.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewGrilla).GridControl = this.gridControlGrilla;
    ((BaseView) this.gridViewGrilla).Name = "gridViewGrilla";
    ((ColumnViewOptionsBehavior) this.gridViewGrilla.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewGrilla.OptionsBehavior).ReadOnly = true;
    this.gridViewGrilla.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewGrilla.OptionsCustomization.AllowGroup = false;
    this.gridViewGrilla.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewGrilla.OptionsView.ShowFooter = true;
    this.gridViewGrilla.OptionsView.ShowGroupPanel = false;
    this.gridViewGrilla.OptionsView.ShowIndicator = false;
    this.gridViewGrilla.RowStyle += new RowStyleEventHandler(this.gridViewGrilla_RowStyle);
    ((ColumnView) this.gridViewGrilla).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridViewGrilla_FocusedRowChanged);
    ((AppearanceOptions) this.colPeriodo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeriodo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeriodo.Caption = "Periodo";
    this.colPeriodo.FieldName = "PeriCtct";
    this.colPeriodo.MaxWidth = 60;
    this.colPeriodo.Name = "colPeriodo";
    this.colPeriodo.OptionsColumn.AllowEdit = false;
    this.colPeriodo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeriodo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colPeriodo.OptionsColumn.AllowMove = false;
    this.colPeriodo.OptionsColumn.AllowSize = false;
    this.colPeriodo.OptionsColumn.ReadOnly = true;
    this.colPeriodo.OptionsColumn.TabStop = false;
    this.colPeriodo.Visible = true;
    this.colPeriodo.VisibleIndex = 0;
    this.colPeriodo.Width = 60;
    ((AppearanceOptions) this.colBimestre.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colBimestre.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colBimestre.Caption = "Bimestre";
    this.colBimestre.FieldName = "BimeCtct";
    this.colBimestre.MaxWidth = 50;
    this.colBimestre.Name = "colBimestre";
    this.colBimestre.OptionsColumn.AllowEdit = false;
    this.colBimestre.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colBimestre.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colBimestre.OptionsColumn.AllowMove = false;
    this.colBimestre.OptionsColumn.AllowSize = false;
    this.colBimestre.OptionsColumn.ReadOnly = true;
    this.colBimestre.OptionsColumn.TabStop = false;
    this.colBimestre.Visible = true;
    this.colBimestre.VisibleIndex = 1;
    this.colBimestre.Width = 45;
    this.colBoleto.Caption = "Boleto";
    this.colBoleto.FieldName = "BoleCtct";
    this.colBoleto.MaxWidth = 100;
    this.colBoleto.Name = "colBoleto";
    this.colBoleto.OptionsColumn.AllowEdit = false;
    this.colBoleto.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colBoleto.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colBoleto.OptionsColumn.AllowMove = false;
    this.colBoleto.OptionsColumn.AllowSize = false;
    this.colBoleto.OptionsColumn.ReadOnly = true;
    this.colBoleto.OptionsColumn.TabStop = false;
    this.colBoleto.Visible = true;
    this.colBoleto.VisibleIndex = 2;
    ((AppearanceOptions) this.colFaci.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFaci.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFaci.Caption = "N° Facilidad";
    this.colFaci.FieldName = "CodiFapa";
    this.colFaci.MaxWidth = 100;
    this.colFaci.Name = "colFaci";
    this.colFaci.OptionsColumn.AllowEdit = false;
    this.colFaci.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFaci.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colFaci.OptionsColumn.AllowMove = false;
    this.colFaci.OptionsColumn.AllowSize = false;
    this.colFaci.OptionsColumn.ReadOnly = true;
    this.colFaci.OptionsColumn.TabStop = false;
    this.colFaci.Visible = true;
    this.colFaci.VisibleIndex = 3;
    this.colCuota.Caption = "Cuota";
    this.colCuota.FieldName = "ExpeCtct";
    this.colCuota.MaxWidth = 80 /*0x50*/;
    this.colCuota.Name = "colCuota";
    this.colCuota.OptionsColumn.AllowEdit = false;
    this.colCuota.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuota.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCuota.OptionsColumn.AllowMove = false;
    this.colCuota.OptionsColumn.AllowSize = false;
    this.colCuota.OptionsColumn.ReadOnly = true;
    this.colCuota.OptionsColumn.TabStop = false;
    this.colCuota.Visible = true;
    this.colCuota.VisibleIndex = 4;
    this.colCuota.Width = 60;
    ((AppearanceOptions) this.colApre.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colApre.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colApre.Caption = "N° Apremio";
    this.colApre.FieldName = "NumeApre";
    this.colApre.MaxWidth = 100;
    this.colApre.Name = "colApre";
    this.colApre.OptionsColumn.AllowEdit = false;
    this.colApre.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.AllowMove = false;
    this.colApre.OptionsColumn.AllowSize = false;
    this.colApre.OptionsColumn.ReadOnly = true;
    this.colApre.OptionsColumn.TabStop = false;
    this.colApre.Visible = true;
    this.colApre.VisibleIndex = 5;
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
    this.colFechEmi.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colFechEmi.OptionsColumn.AllowMove = false;
    this.colFechEmi.OptionsColumn.AllowSize = false;
    this.colFechEmi.OptionsColumn.ReadOnly = true;
    this.colFechEmi.OptionsColumn.TabStop = false;
    this.colFechEmi.Visible = true;
    this.colFechEmi.VisibleIndex = 6;
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
    this.colVencPago.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colVencPago.OptionsColumn.AllowMove = false;
    this.colVencPago.OptionsColumn.AllowSize = false;
    this.colVencPago.OptionsColumn.ReadOnly = true;
    this.colVencPago.OptionsColumn.TabStop = false;
    this.colVencPago.Visible = true;
    this.colVencPago.VisibleIndex = 7;
    this.colConcepto.Caption = "Concepto";
    this.colConcepto.FieldName = "DetaConc";
    this.colConcepto.Name = "colConcepto";
    this.colConcepto.OptionsColumn.AllowEdit = false;
    this.colConcepto.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colConcepto.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colConcepto.OptionsColumn.AllowMove = false;
    this.colConcepto.OptionsColumn.AllowSize = false;
    this.colConcepto.OptionsColumn.ReadOnly = true;
    this.colConcepto.OptionsColumn.TabStop = false;
    this.colConcepto.Visible = true;
    this.colConcepto.VisibleIndex = 8;
    this.colExpeComp.Caption = "Expe./Comp.";
    this.colExpeComp.FieldName = "ExpeCtct";
    this.colExpeComp.Name = "colExpeComp";
    this.colExpeComp.OptionsColumn.AllowEdit = false;
    this.colExpeComp.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colExpeComp.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colExpeComp.OptionsColumn.AllowMove = false;
    this.colExpeComp.OptionsColumn.AllowSize = false;
    this.colExpeComp.OptionsColumn.ReadOnly = true;
    this.colExpeComp.OptionsColumn.TabStop = false;
    this.colExpeComp.Visible = true;
    this.colExpeComp.VisibleIndex = 9;
    ((AppearanceOptions) this.colTipoMovi.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTipoMovi.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colTipoMovi.Caption = "Tipo Mov.";
    this.colTipoMovi.FieldName = "DetaTimo";
    this.colTipoMovi.MaxWidth = 200;
    this.colTipoMovi.Name = "colTipoMovi";
    this.colTipoMovi.OptionsColumn.AllowEdit = false;
    this.colTipoMovi.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTipoMovi.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTipoMovi.OptionsColumn.AllowMove = false;
    this.colTipoMovi.OptionsColumn.AllowSize = false;
    this.colTipoMovi.OptionsColumn.ReadOnly = true;
    this.colTipoMovi.OptionsColumn.TabStop = false;
    this.colTipoMovi.Visible = true;
    this.colTipoMovi.VisibleIndex = 10;
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
    this.colMontoApre.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colMontoApre.OptionsColumn.AllowMove = false;
    this.colMontoApre.OptionsColumn.AllowSize = false;
    this.colMontoApre.OptionsColumn.ReadOnly = true;
    this.colMontoApre.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colMontoApre.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "ApreCtct", "{0:C2}")
    });
    this.colMontoApre.Visible = true;
    this.colMontoApre.VisibleIndex = 11;
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
    this.colDebito.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDebito.OptionsColumn.AllowMove = false;
    this.colDebito.OptionsColumn.AllowSize = false;
    this.colDebito.OptionsColumn.ReadOnly = true;
    this.colDebito.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colDebito.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "DebeCtct", "{0:C2}")
    });
    this.colDebito.Visible = true;
    this.colDebito.VisibleIndex = 12;
    ((AppearanceOptions) this.colCredito.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCredito.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCredito.Caption = "Crédito";
    this.colCredito.DisplayFormat.FormatString = "{0:C2}";
    this.colCredito.DisplayFormat.FormatType = (FormatType) 3;
    this.colCredito.FieldName = "CredCtct";
    this.colCredito.MaxWidth = 150;
    this.colCredito.Name = "colCredito";
    this.colCredito.OptionsColumn.AllowEdit = false;
    this.colCredito.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCredito.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCredito.OptionsColumn.AllowMove = false;
    this.colCredito.OptionsColumn.AllowSize = false;
    this.colCredito.OptionsColumn.ReadOnly = true;
    this.colCredito.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colCredito.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "CredCtct", "{0:C2}")
    });
    this.colCredito.Visible = true;
    this.colCredito.VisibleIndex = 13;
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
    this.colReca.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colReca.OptionsColumn.AllowMove = false;
    this.colReca.OptionsColumn.AllowSize = false;
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
    this.colSaldo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colSaldo.OptionsColumn.AllowMove = false;
    this.colSaldo.OptionsColumn.AllowSize = false;
    this.colSaldo.OptionsColumn.ReadOnly = true;
    this.colSaldo.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colSaldo.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaCtct", "{0:C2}")
    });
    this.colSaldo.Visible = true;
    this.colSaldo.VisibleIndex = 15;
    this.panSuperior.Controls.Add((Control) this.gridControlResumen);
    this.panSuperior.Dock = DockStyle.Top;
    this.panSuperior.Location = new Point(0, 0);
    this.panSuperior.Name = "panSuperior";
    this.panSuperior.Size = new Size(1360, 141);
    this.panSuperior.TabIndex = 2;
    ((Control) this.gridControlResumen).Dock = DockStyle.Fill;
    ((Control) this.gridControlResumen).Location = new Point(0, 0);
    this.gridControlResumen.MainView = (BaseView) this.gridViewResumen;
    ((Control) this.gridControlResumen).Name = "gridControlResumen";
    ((Control) this.gridControlResumen).Size = new Size(1360, 141);
    ((Control) this.gridControlResumen).TabIndex = 3;
    this.gridControlResumen.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewResumen
    });
    this.gridViewResumen.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewResumen.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewResumen.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewResumen).Columns.AddRange(new GridColumn[7]
    {
      this.colCodiOfic,
      this.colOficina,
      this.colCuenta,
      this.colDetalle,
      this.colImporte,
      this.colRecargo,
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
    ((ColumnView) this.gridViewResumen).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridViewResumen_FocusedRowChanged);
    this.colCodiOfic.Caption = "CodOficina";
    this.colCodiOfic.FieldName = "CodiOfic";
    this.colCodiOfic.Name = "colCodiOfic";
    ((AppearanceOptions) this.colOficina.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colOficina.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colOficina.Caption = "Oficina";
    this.colOficina.FieldName = "DetaOfic";
    this.colOficina.MaxWidth = 100;
    this.colOficina.Name = "colOficina";
    this.colOficina.OptionsColumn.AllowEdit = false;
    this.colOficina.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colOficina.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colOficina.OptionsColumn.AllowMove = false;
    this.colOficina.OptionsColumn.AllowSize = false;
    this.colOficina.OptionsColumn.ReadOnly = true;
    this.colOficina.OptionsColumn.TabStop = false;
    this.colOficina.Visible = true;
    this.colOficina.VisibleIndex = 0;
    ((AppearanceOptions) this.colCuenta.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuenta.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuenta.Caption = "Cuenta";
    this.colCuenta.FieldName = "CuenCtct";
    this.colCuenta.MaxWidth = 100;
    this.colCuenta.Name = "colCuenta";
    this.colCuenta.OptionsColumn.AllowEdit = false;
    this.colCuenta.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuenta.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCuenta.OptionsColumn.AllowMove = false;
    this.colCuenta.OptionsColumn.AllowSize = false;
    this.colCuenta.OptionsColumn.ReadOnly = true;
    this.colCuenta.OptionsColumn.TabStop = false;
    this.colCuenta.Visible = true;
    this.colCuenta.VisibleIndex = 1;
    this.colDetalle.Caption = "Detalle";
    this.colDetalle.FieldName = "Detalle";
    this.colDetalle.Name = "colDetalle";
    this.colDetalle.OptionsColumn.AllowEdit = false;
    this.colDetalle.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowMove = false;
    this.colDetalle.OptionsColumn.AllowSize = false;
    this.colDetalle.OptionsColumn.ReadOnly = true;
    this.colDetalle.OptionsColumn.TabStop = false;
    this.colDetalle.Visible = true;
    this.colDetalle.VisibleIndex = 2;
    ((AppearanceOptions) this.colImporte.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImporte.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImporte.Caption = "Débito";
    this.colImporte.DisplayFormat.FormatString = "{0:C2}";
    this.colImporte.DisplayFormat.FormatType = (FormatType) 3;
    this.colImporte.FieldName = "Saldo";
    this.colImporte.MaxWidth = 150;
    this.colImporte.Name = "colImporte";
    this.colImporte.OptionsColumn.AllowEdit = false;
    this.colImporte.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowMove = false;
    this.colImporte.OptionsColumn.AllowSize = false;
    this.colImporte.OptionsColumn.ReadOnly = true;
    this.colImporte.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colImporte.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "Saldo", "{0:C2}")
    });
    this.colImporte.Visible = true;
    this.colImporte.VisibleIndex = 3;
    ((AppearanceOptions) this.colRecargo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colRecargo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colRecargo.Caption = "Recargo";
    this.colRecargo.DisplayFormat.FormatString = "{0:C2}";
    this.colRecargo.DisplayFormat.FormatType = (FormatType) 3;
    this.colRecargo.FieldName = "Recargo";
    this.colRecargo.MaxWidth = 150;
    this.colRecargo.Name = "colRecargo";
    this.colRecargo.OptionsColumn.AllowEdit = false;
    this.colRecargo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colRecargo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colRecargo.OptionsColumn.AllowMove = false;
    this.colRecargo.OptionsColumn.AllowSize = false;
    this.colRecargo.OptionsColumn.ReadOnly = true;
    this.colRecargo.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colRecargo.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "Recargo", "{0:C2}")
    });
    this.colRecargo.Visible = true;
    this.colRecargo.VisibleIndex = 4;
    ((AppearanceOptions) this.colTotal.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotal.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotal.Caption = "Total";
    this.colTotal.DisplayFormat.FormatString = "{0:C2}";
    this.colTotal.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotal.FieldName = "Total";
    this.colTotal.MaxWidth = 150;
    this.colTotal.Name = "colTotal";
    this.colTotal.OptionsColumn.AllowEdit = false;
    this.colTotal.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTotal.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTotal.OptionsColumn.AllowMove = false;
    this.colTotal.OptionsColumn.AllowSize = false;
    this.colTotal.OptionsColumn.ReadOnly = true;
    this.colTotal.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colTotal.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "Total", "{0:C2}")
    });
    this.colTotal.Visible = true;
    this.colTotal.VisibleIndex = 5;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.panGrilla);
    this.Controls.Add((Control) this.panSuperior);
    this.Name = nameof (gridCCMaipu);
    this.Size = new Size(1360, 468);
    this.panGrilla.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlGrilla).EndInit();
    ((ISupportInitialize) this.gridViewGrilla).EndInit();
    this.panSuperior.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlResumen).EndInit();
    ((ISupportInitialize) this.gridViewResumen).EndInit();
    this.ResumeLayout(false);
  }
}
