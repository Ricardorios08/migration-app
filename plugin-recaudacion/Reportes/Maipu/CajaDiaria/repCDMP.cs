// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Maipu.CajaDiaria.repCDMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Reports;
using InfoGov.Utils;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Maipu.CajaDiaria;

public class repCDMP : InfoGovPrintForm
{
  private List<DTOAcrePagoMP> cajas = new List<DTOAcrePagoMP>();
  private ExpBoletoCajaMP expBole = new ExpBoletoCajaMP();
  private ExpConfiguracion _config;
  private IContainer components = (IContainer) null;
  private GroupBox gpbCajas;
  private GridControl gridControlCajas;
  private GridView gridViewCajas;
  private GridColumn colFecha;
  private GridColumn colGrupo;
  private GridColumn colEnteReca;
  private GridColumn colSaldoInicial;
  private GridColumn colUsuario;
  private GridColumn colVeri;
  private SimpleButton btnVP;
  private SimpleButton btnImprimir;
  private MetroLabel metroLabel1;
  private MetroDateTextBox dtbFecha;
  private SimpleButton btnBuscar;

  public repCDMP()
    : base("Listado Cobranza Caja Diaria")
  {
    this.InitializeComponent();
    this._config = new ExpConfiguracion(true);
    this.dtbFecha.Date = Misc.Now();
  }

  private void CargarCajas()
  {
    this.expBole.BuscarCajasReporte(this.cajas, this.dtbFecha.Date);
    this.gridControlCajas.DataSource = (object) this.cajas;
    ((BaseView) this.gridViewCajas).RefreshData();
    ((ColumnView) this.gridViewCajas).FocusInvalidRow();
  }

  private string Validar()
  {
    string str = string.Empty;
    if (this.cajas == null || this.cajas.Count == 0)
      str = "No hay datos para generar el reporte.";
    else if (((ColumnView) this.gridViewCajas).GetFocusedRow() == null)
    {
      str = "No se ha seleccionado ninguna caja.";
    }
    else
    {
      DTOAcrePagoMP focusedRow = (DTOAcrePagoMP) ((ColumnView) this.gridViewCajas).GetFocusedRow();
      if (focusedRow == null)
        str = "No se ha seleccionado ninguna caja.";
      else if (focusedRow.FeenAcpa == DateTime.MinValue || focusedRow.NumeAcpa <= (short) 0)
        str = "La caja seleccionada no es válida.";
    }
    return str;
  }

  private void btnVP_Click(object sender, EventArgs e)
  {
    string message = this.Validar();
    if (!string.IsNullOrEmpty(message))
    {
      ToastHelper.ShowOrFallback((Form) this, message, ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
    }
    else
    {
      try
      {
        string html = string.Empty;
        new frmEsperar((Form) this).procesar((Action) (() =>
        {
          DTOAcrePagoMP focusedRow = (DTOAcrePagoMP) ((ColumnView) this.gridViewCajas).GetFocusedRow();
          html = new RepCajaDiariaMP().ReporteCajaDiaria(this.expBole.ObtenerDatosRepCajaDiaria(focusedRow.FeenAcpa, focusedRow.NumeAcpa));
        }), "Generando...");
        ReportTools.GenerarReporte(ReportMode.Preview, html, (InfoGovPrintForm) this, "Listado de Cobranza");
      }
      catch (Exception ex)
      {
        ToastHelper.ShowOrFallback((Form) this, ex.Message, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
      }
    }
  }

  private void btnImprimir_Click(object sender, EventArgs e)
  {
    string message = this.Validar();
    if (!string.IsNullOrEmpty(message))
    {
      ToastHelper.ShowOrFallback((Form) this, message, ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
    }
    else
    {
      try
      {
        new frmEsperar((Form) this).procesar((Action) (() =>
        {
          DTOAcrePagoMP focusedRow = (DTOAcrePagoMP) ((ColumnView) this.gridViewCajas).GetFocusedRow();
          DTORepCajaDiariaMP datos = this.expBole.ObtenerDatosRepCajaDiaria(focusedRow.FeenAcpa, focusedRow.NumeAcpa);
          Print.ImprimirHTML(new RepCajaDiariaMP().ReporteCajaDiaria(datos), this._config.config.ImprRepo);
          if (datos.detallesTiposPagosUtilizados.Count <= 0)
            return;
          Print.ImprimirHTML(new RepCajaDiariaMP().ReporteCajaDiariaFormasPago(datos), this._config.config.ImprRepo);
        }), "Imprimiendo...");
      }
      catch (Exception ex)
      {
        ToastHelper.ShowOrFallback((Form) this, ex.Message, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
      }
    }
  }

  private void btnBuscar_Click(object sender, EventArgs e)
  {
    if (this.dtbFecha.Date == DateTime.MinValue)
      ToastHelper.ShowOrFallback((Form) this, "Debe ingresar una fecha para buscar las cajas.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
    else
      this.CargarCajas();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (repCDMP));
    this.gpbCajas = new GroupBox();
    this.gridControlCajas = new GridControl();
    this.gridViewCajas = new GridView();
    this.colFecha = new GridColumn();
    this.colGrupo = new GridColumn();
    this.colUsuario = new GridColumn();
    this.colEnteReca = new GridColumn();
    this.colSaldoInicial = new GridColumn();
    this.colVeri = new GridColumn();
    this.btnVP = new SimpleButton();
    this.btnImprimir = new SimpleButton();
    this.metroLabel1 = new MetroLabel();
    this.dtbFecha = new MetroDateTextBox();
    this.btnBuscar = new SimpleButton();
    this.gpbCajas.SuspendLayout();
    ((ISupportInitialize) this.gridControlCajas).BeginInit();
    ((ISupportInitialize) this.gridViewCajas).BeginInit();
    this.SuspendLayout();
    this.butClose.Location = new Point(483, 10);
    this.butGenerate.Enabled = false;
    this.butGenerate.Location = new Point(222, 282);
    this.butGenerate.Visible = false;
    this.gpbCajas.Controls.Add((Control) this.gridControlCajas);
    this.gpbCajas.Location = new Point(12, 71);
    this.gpbCajas.Name = "gpbCajas";
    this.gpbCajas.Size = new Size(497, 194);
    this.gpbCajas.TabIndex = 4;
    this.gpbCajas.TabStop = false;
    this.gpbCajas.Text = "CAJAS DISPONIBLES";
    ((Control) this.gridControlCajas).Dock = DockStyle.Fill;
    ((Control) this.gridControlCajas).Location = new Point(3, 16 /*0x10*/);
    this.gridControlCajas.MainView = (BaseView) this.gridViewCajas;
    ((Control) this.gridControlCajas).Name = "gridControlCajas";
    ((Control) this.gridControlCajas).Size = new Size(491, 175);
    ((Control) this.gridControlCajas).TabIndex = 205;
    ((Control) this.gridControlCajas).TabStop = false;
    this.gridControlCajas.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewCajas
    });
    this.gridViewCajas.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewCajas.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewCajas.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewCajas).Columns.AddRange(new GridColumn[6]
    {
      this.colFecha,
      this.colGrupo,
      this.colUsuario,
      this.colEnteReca,
      this.colSaldoInicial,
      this.colVeri
    });
    this.gridViewCajas.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewCajas).GridControl = this.gridControlCajas;
    ((BaseView) this.gridViewCajas).Name = "gridViewCajas";
    ((ColumnViewOptionsBehavior) this.gridViewCajas.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewCajas.OptionsBehavior).ReadOnly = true;
    this.gridViewCajas.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewCajas.OptionsCustomization.AllowGroup = false;
    this.gridViewCajas.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewCajas.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewCajas.OptionsView.ShowGroupPanel = false;
    this.gridViewCajas.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colFecha.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFecha.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFecha.Caption = "Fecha";
    this.colFecha.DisplayFormat.FormatString = "d";
    this.colFecha.DisplayFormat.FormatType = (FormatType) 2;
    this.colFecha.FieldName = "FeenAcpa";
    this.colFecha.MaxWidth = 80 /*0x50*/;
    this.colFecha.Name = "colFecha";
    this.colFecha.OptionsColumn.AllowEdit = false;
    this.colFecha.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFecha.OptionsColumn.AllowIncrementalSearch = false;
    this.colFecha.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colFecha.OptionsColumn.AllowMove = false;
    this.colFecha.OptionsColumn.AllowShowHide = false;
    this.colFecha.OptionsColumn.AllowSize = false;
    this.colFecha.OptionsColumn.ReadOnly = true;
    this.colFecha.OptionsColumn.TabStop = false;
    this.colFecha.Visible = true;
    this.colFecha.VisibleIndex = 0;
    this.colFecha.Width = 60;
    ((AppearanceOptions) this.colGrupo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colGrupo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colGrupo.Caption = "Grupo";
    this.colGrupo.FieldName = "NumeAcpa";
    this.colGrupo.MaxWidth = 40;
    this.colGrupo.Name = "colGrupo";
    this.colGrupo.OptionsColumn.AllowEdit = false;
    this.colGrupo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colGrupo.OptionsColumn.AllowIncrementalSearch = false;
    this.colGrupo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colGrupo.OptionsColumn.AllowMove = false;
    this.colGrupo.OptionsColumn.AllowShowHide = false;
    this.colGrupo.OptionsColumn.AllowSize = false;
    this.colGrupo.OptionsColumn.ReadOnly = true;
    this.colGrupo.OptionsColumn.TabStop = false;
    this.colGrupo.Visible = true;
    this.colGrupo.VisibleIndex = 1;
    this.colGrupo.Width = 30;
    ((AppearanceOptions) this.colUsuario.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colUsuario.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colUsuario.Caption = "Usuario";
    this.colUsuario.FieldName = "UsuaAcpa";
    this.colUsuario.MaxWidth = 100;
    this.colUsuario.Name = "colUsuario";
    this.colUsuario.OptionsColumn.AllowEdit = false;
    this.colUsuario.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colUsuario.OptionsColumn.AllowIncrementalSearch = false;
    this.colUsuario.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colUsuario.OptionsColumn.AllowMove = false;
    this.colUsuario.OptionsColumn.AllowShowHide = false;
    this.colUsuario.OptionsColumn.AllowSize = false;
    this.colUsuario.OptionsColumn.ReadOnly = true;
    this.colUsuario.OptionsColumn.TabStop = false;
    this.colUsuario.Visible = true;
    this.colUsuario.VisibleIndex = 2;
    this.colUsuario.Width = 100;
    this.colEnteReca.Caption = "Ente Recaudador";
    this.colEnteReca.FieldName = "DetaEnre";
    this.colEnteReca.Name = "colEnteReca";
    this.colEnteReca.OptionsColumn.AllowEdit = false;
    this.colEnteReca.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colEnteReca.OptionsColumn.AllowIncrementalSearch = false;
    this.colEnteReca.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colEnteReca.OptionsColumn.AllowMove = false;
    this.colEnteReca.OptionsColumn.AllowShowHide = false;
    this.colEnteReca.OptionsColumn.AllowSize = false;
    this.colEnteReca.OptionsColumn.ReadOnly = true;
    this.colEnteReca.OptionsColumn.TabStop = false;
    this.colEnteReca.Visible = true;
    this.colEnteReca.VisibleIndex = 3;
    ((AppearanceOptions) this.colSaldoInicial.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colSaldoInicial.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colSaldoInicial.Caption = "Monto Inicial";
    this.colSaldoInicial.DisplayFormat.FormatString = "{0:C2}";
    this.colSaldoInicial.DisplayFormat.FormatType = (FormatType) 3;
    this.colSaldoInicial.FieldName = "MoinAcpa";
    this.colSaldoInicial.MaxWidth = 100;
    this.colSaldoInicial.Name = "colSaldoInicial";
    this.colSaldoInicial.OptionsColumn.AllowEdit = false;
    this.colSaldoInicial.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colSaldoInicial.OptionsColumn.AllowIncrementalSearch = false;
    this.colSaldoInicial.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colSaldoInicial.OptionsColumn.AllowMove = false;
    this.colSaldoInicial.OptionsColumn.AllowShowHide = false;
    this.colSaldoInicial.OptionsColumn.AllowSize = false;
    this.colSaldoInicial.OptionsColumn.ReadOnly = true;
    this.colSaldoInicial.OptionsColumn.TabStop = false;
    this.colSaldoInicial.Visible = true;
    this.colSaldoInicial.VisibleIndex = 4;
    ((AppearanceOptions) this.colVeri.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colVeri.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colVeri.Caption = "Verificada";
    this.colVeri.FieldName = "VeriAcpa";
    this.colVeri.MaxWidth = 60;
    this.colVeri.Name = "colVeri";
    this.colVeri.OptionsColumn.AllowEdit = false;
    this.colVeri.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colVeri.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colVeri.OptionsColumn.AllowMove = false;
    this.colVeri.OptionsColumn.AllowShowHide = false;
    this.colVeri.OptionsColumn.AllowSize = false;
    this.colVeri.OptionsColumn.ReadOnly = true;
    this.colVeri.OptionsColumn.TabStop = false;
    this.colVeri.Visible = true;
    this.colVeri.VisibleIndex = 5;
    this.colVeri.Width = 50;
    ((BaseStyleControl) this.btnVP).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnVP).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnVP).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnVP.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnVP.ImageOptions.Image");
    ((Control) this.btnVP).Location = new Point(196, 273);
    ((Control) this.btnVP).Name = "btnVP";
    ((Control) this.btnVP).Size = new Size(45, 34);
    ((Control) this.btnVP).TabIndex = 5;
    ((Control) this.btnVP).Click += new EventHandler(this.btnVP_Click);
    ((BaseStyleControl) this.btnImprimir).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnImprimir).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnImprimir).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnImprimir.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnImprimir.ImageOptions.Image");
    ((Control) this.btnImprimir).Location = new Point(278, 273);
    ((Control) this.btnImprimir).Name = "btnImprimir";
    ((Control) this.btnImprimir).Size = new Size(45, 34);
    ((Control) this.btnImprimir).TabIndex = 6;
    ((Control) this.btnImprimir).Click += new EventHandler(this.btnImprimir_Click);
    this.metroLabel1.Location = new Point(12, 40);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(73, 19);
    this.metroLabel1.TabIndex = 7;
    this.metroLabel1.Text = "Fecha Caja";
    this.dtbFecha.Location = new Point(92, 37);
    this.dtbFecha.Name = "dtbFecha";
    this.dtbFecha.Size = new Size(101, 25);
    this.dtbFecha.TabIndex = 1;
    ((BaseStyleControl) this.btnBuscar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnBuscar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnBuscar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnBuscar.ImageOptions).Image = (Image) componentResourceManager.GetObject("simpleButton1.ImageOptions.Image");
    ((Control) this.btnBuscar).Location = new Point(202, 37);
    ((Control) this.btnBuscar).Name = "btnBuscar";
    ((Control) this.btnBuscar).Size = new Size(29, 25);
    ((Control) this.btnBuscar).TabIndex = 8;
    ((Control) this.btnBuscar).TabStop = false;
    ((Control) this.btnBuscar).Click += new EventHandler(this.btnBuscar_Click);
    this.AcceptButton = (IButtonControl) this.btnBuscar;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(518, 318);
    this.Controls.Add((Control) this.btnBuscar);
    this.Controls.Add((Control) this.dtbFecha);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.btnVP);
    this.Controls.Add((Control) this.btnImprimir);
    this.Controls.Add((Control) this.gpbCajas);
    this.Name = nameof (repCDMP);
    this.Text = nameof (repCDMP);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.gpbCajas, 0);
    this.Controls.SetChildIndex((Control) this.btnImprimir, 0);
    this.Controls.SetChildIndex((Control) this.btnVP, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.dtbFecha, 0);
    this.Controls.SetChildIndex((Control) this.btnBuscar, 0);
    this.gpbCajas.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlCajas).EndInit();
    ((ISupportInitialize) this.gridViewCajas).EndInit();
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
