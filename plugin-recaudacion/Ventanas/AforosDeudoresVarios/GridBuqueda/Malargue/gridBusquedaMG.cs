// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.GridBuqueda.Malargue.gridBusquedaMG
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.Herencia;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.GridBuqueda.Malargue;

public class gridBusquedaMG : BuscadorBase, IGridBusqueda
{
  private readonly ExpCCMG experto;
  private readonly List<CCMG> deuda;
  private IContainer components = (IContainer) null;
  private GridControl gridControlGrilla;
  private GridView gridViewGrilla;
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
  private GridColumn colDebito;
  private GridColumn colReca;
  private GridColumn colSaldo;

  public gridBusquedaMG()
  {
    this.InitializeComponent();
    this.experto = new ExpCCMG();
    this.deuda = new List<CCMG>();
    this.gridControlGrilla.DataSource = (object) this.deuda;
  }

  public override void Buscar(CtaCte cuenta)
  {
    List<CCMG> deudaBuscada = new List<CCMG>();
    this.experto.BuscarDeuda(deudaBuscada, cuenta);
    this.EjecutarEnUI((Action) (() =>
    {
      this.deuda.Clear();
      this.deuda.AddRange((IEnumerable<CCMG>) deudaBuscada);
      ((BaseView) this.gridViewGrilla).RefreshData();
    }));
    if (this.deuda.Count == 0)
      cuenta.TipoResultado = TipoResultadoCtaCte.SinDeuda;
    else
      cuenta.TipoResultado = TipoResultadoCtaCte.ConDeuda;
  }

  public override void Limpiar()
  {
    this.EjecutarEnUI((Action) (() =>
    {
      this.deuda.Clear();
      ((BaseView) this.gridViewGrilla).RefreshData();
    }));
  }

  public override List<string> ValidarDatos() => new List<string>();

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
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
    this.colDebito = new GridColumn();
    this.colReca = new GridColumn();
    this.colSaldo = new GridColumn();
    ((ISupportInitialize) this.gridControlGrilla).BeginInit();
    ((ISupportInitialize) this.gridViewGrilla).BeginInit();
    this.SuspendLayout();
    ((Control) this.gridControlGrilla).Dock = DockStyle.Fill;
    ((Control) this.gridControlGrilla).Location = new Point(0, 0);
    this.gridControlGrilla.MainView = (BaseView) this.gridViewGrilla;
    ((Control) this.gridControlGrilla).Name = "gridControlGrilla";
    ((Control) this.gridControlGrilla).Size = new Size(1360, 198);
    ((Control) this.gridControlGrilla).TabIndex = 4;
    this.gridControlGrilla.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewGrilla
    });
    this.gridViewGrilla.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewGrilla.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewGrilla.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewGrilla).Columns.AddRange(new GridColumn[14]
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
    this.gridViewGrilla.OptionsView.ShowFooter = true;
    this.gridViewGrilla.OptionsView.ShowGroupPanel = false;
    this.gridViewGrilla.OptionsView.ShowIndicator = false;
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
    this.colBimestre.OptionsColumn.AllowIncrementalSearch = false;
    this.colBimestre.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colBimestre.OptionsColumn.AllowMove = false;
    this.colBimestre.OptionsColumn.AllowShowHide = false;
    this.colBimestre.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colBimestre.OptionsColumn.ReadOnly = true;
    this.colBimestre.OptionsColumn.TabStop = false;
    this.colBimestre.Visible = true;
    this.colBimestre.VisibleIndex = 1;
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
    this.colBoleto.VisibleIndex = 2;
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
    this.colFaci.VisibleIndex = 3;
    ((AppearanceOptions) this.colCuota.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuota.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuota.Caption = "Cuota";
    this.colCuota.FieldName = "CuotDefa";
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
    this.colApre.OptionsColumn.AllowIncrementalSearch = false;
    this.colApre.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.AllowMove = false;
    this.colApre.OptionsColumn.AllowShowHide = false;
    this.colApre.OptionsColumn.AllowSort = (DefaultBoolean) 1;
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
    this.colFechEmi.OptionsColumn.AllowIncrementalSearch = false;
    this.colFechEmi.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colFechEmi.OptionsColumn.AllowMove = false;
    this.colFechEmi.OptionsColumn.AllowShowHide = false;
    this.colFechEmi.OptionsColumn.AllowSort = (DefaultBoolean) 1;
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
    this.colVencPago.OptionsColumn.AllowIncrementalSearch = false;
    this.colVencPago.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colVencPago.OptionsColumn.AllowMove = false;
    this.colVencPago.OptionsColumn.AllowShowHide = false;
    this.colVencPago.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colVencPago.OptionsColumn.ReadOnly = true;
    this.colVencPago.OptionsColumn.TabStop = false;
    this.colVencPago.Visible = true;
    this.colVencPago.VisibleIndex = 7;
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
    this.colConcepto.VisibleIndex = 8;
    ((AppearanceOptions) this.colExpeComp.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colExpeComp.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 1;
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
    this.colExpeComp.VisibleIndex = 9;
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
    this.colTipoMovi.VisibleIndex = 10;
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
    this.colDebito.VisibleIndex = 11;
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
    this.colReca.VisibleIndex = 12;
    ((AppearanceOptions) this.colSaldo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colSaldo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colSaldo.Caption = "Saldo";
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
    this.colSaldo.VisibleIndex = 13;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.gridControlGrilla);
    this.Name = nameof (gridBusquedaMG);
    this.Size = new Size(1360, 198);
    ((ISupportInitialize) this.gridControlGrilla).EndInit();
    ((ISupportInitialize) this.gridViewGrilla).EndInit();
    this.ResumeLayout(false);
  }
}
