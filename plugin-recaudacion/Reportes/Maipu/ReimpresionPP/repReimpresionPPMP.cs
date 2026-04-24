// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Maipu.ReimpresionPP.repReimpresionPPMP
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
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Expertos.PlanPago;
using InfoGov.Reports;
using InfoGov.Utils;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Maipu.ReimpresionPP;

public class repReimpresionPPMP : InfoGovPrintForm
{
  private List<CuotaFapa> Cuotas = new List<CuotaFapa>();
  private BindingSource bsCuotas = new BindingSource();
  private ExpPlanPagoMP expPP = new ExpPlanPagoMP();
  private ExpConfiguracion _config;
  private IContainer components = (IContainer) null;
  private SimpleButton btnImprimir;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel3;
  private MetroIntTextBox mibDesde;
  private MetroIntTextBox mibHasta;
  private MetroEntityBox mebFaciPago;
  private GroupBox gpbCuotas;
  private GridControl gridControlCuotas;
  private GridView gridViewCuotas;
  private GridColumn colCuota;
  private GridColumn colEstado;
  private GridColumn colFeve;
  private GridColumn colFepa;
  private GridColumn colTota;
  private MetroLabel metroLabel4;
  private MetroComboBox cboImpresora;

  public repReimpresionPPMP()
    : base("Reimprimir Plan Pago")
  {
    this.InitializeComponent();
    this.bsCuotas.DataSource = (object) this.Cuotas;
    this.gridControlCuotas.DataSource = (object) this.bsCuotas;
    this._config = new ExpConfiguracion(true);
    this.mebFaciPago.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPlanPago);
    this.mebFaciPago.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPlanPago);
    this.CargarImpresoras();
  }

  private void btnImprimir_Click(object sender, EventArgs e)
  {
    if (!this.Validar())
      return;
    try
    {
      string msg = string.Empty;
      string impresora = this.cboImpresora.SelectedItem.ToString();
      new frmEsperar((Form) this).procesar((Action) (() => msg = this.expPP.ReimprimirPlanPago(((InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago) this.mebFaciPago.Entity).CodiFapa, this.mibDesde.ShortText, this.mibHasta.ShortText, impresora)), "Imprimiendo...");
      if (string.IsNullOrEmpty(msg))
        this.Limpiar();
      else
        ToastHelper.ShowOrFallback((Form) this, msg, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
    }
    catch (Exception ex)
    {
      ToastHelper.ShowOrFallback((Form) this, ex.Message, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
    }
  }

  private void Limpiar()
  {
    this.mebFaciPago.Entity = (Entity) null;
    this.mibDesde.Text = this.mibHasta.Text = string.Empty;
    this.Cuotas.Clear();
    ((BaseView) this.gridViewCuotas).RefreshData();
  }

  private bool Validar()
  {
    string message = string.Empty;
    string impresora = this.cboImpresora.Items == null || this.cboImpresora.Items.Count <= 0 || this.cboImpresora.SelectedItem == null ? string.Empty : this.cboImpresora.SelectedItem.ToString();
    if (this.mebFaciPago.Entity == null)
      message = "No se ha seleccionado ningún plan de pago.";
    else if (this.mibDesde.IntText < 1 || this.mibHasta.IntText < 1)
      message = "El rango de cuotas no es válido.";
    else if (this.mibDesde.IntText > this.mibHasta.IntText)
      message = "El rango de cuotas no es válido.";
    else if (string.IsNullOrWhiteSpace(impresora) || !this._config.ImpresoraActiva(impresora))
      message = "La impresora seleccionada no se encuentra activa o no es válida. Verificar...";
    if (string.IsNullOrEmpty(message))
      return true;
    ToastHelper.ShowOrFallback((Form) this, message, ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
    return false;
  }

  private void mebFaciPago_EntityChangedDone(object source, EntityChangedEventArgs e)
  {
    this.Cuotas.Clear();
    if (this.mebFaciPago.Entity != null)
      this.expPP.BuscarResumenCuotasPlan(((InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago) this.mebFaciPago.Entity).CodiFapa, this.Cuotas);
    ((BaseView) this.gridViewCuotas).RefreshData();
  }

  private void CargarImpresoras()
  {
    this.cboImpresora.DataSource = (object) this._config.config.Impresoras;
    if (string.IsNullOrWhiteSpace(this._config.config.ImprBole) || !this._config.config.Impresoras.Exists((Predicate<string>) (x => x == this._config.config.ImprBole)))
      return;
    this.cboImpresora.SelectedIndex = this._config.config.Impresoras.IndexOf(this._config.config.ImprBole);
  }

  private Entity BuscarPlanPago(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("fp.CodiFapa", "N° Facilidad", FilterMode.Equal, text));
    else if (!string.IsNullOrEmpty(text.Trim()))
      filter.Items.Add(new FilterItem("p.DetaPers", "Titular", FilterMode.Contains, text));
    return (Entity) this.EM.Search<InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago>(filter, true);
  }

  private Entity EncontrarPlanPago(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("fp.CodiFapa", "N° Facilidad", FilterMode.Equal, text));
    else if (!string.IsNullOrEmpty(text.Trim()))
      filter.Items.Add(new FilterItem("p.DetaPers", "Titular", FilterMode.Contains, text));
    return (Entity) this.EM.Find<InfoGov.Plugins.Recaudacion.Entidades.PlanPago.PlanPago>(filter, true, true);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (repReimpresionPPMP));
    this.btnImprimir = new SimpleButton();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.mibDesde = new MetroIntTextBox();
    this.mibHasta = new MetroIntTextBox();
    this.mebFaciPago = new MetroEntityBox();
    this.gpbCuotas = new GroupBox();
    this.gridControlCuotas = new GridControl();
    this.gridViewCuotas = new GridView();
    this.colCuota = new GridColumn();
    this.colEstado = new GridColumn();
    this.colFeve = new GridColumn();
    this.colFepa = new GridColumn();
    this.colTota = new GridColumn();
    this.metroLabel4 = new MetroLabel();
    this.cboImpresora = new MetroComboBox();
    this.gpbCuotas.SuspendLayout();
    ((ISupportInitialize) this.gridControlCuotas).BeginInit();
    ((ISupportInitialize) this.gridViewCuotas).BeginInit();
    this.SuspendLayout();
    this.butClose.Location = new Point(652, 10);
    this.butClose.TabIndex = 99;
    this.butGenerate.Enabled = false;
    this.butGenerate.Location = new Point(306, 303);
    this.butGenerate.Visible = false;
    ((Control) this.btnImprimir).Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
    ((BaseStyleControl) this.btnImprimir).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnImprimir).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnImprimir).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnImprimir.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnImprimir.ImageOptions.Image");
    ((Control) this.btnImprimir).Location = new Point(322, 292);
    ((Control) this.btnImprimir).Name = "btnImprimir";
    ((Control) this.btnImprimir).Size = new Size(45, 34);
    ((Control) this.btnImprimir).TabIndex = 5;
    ((Control) this.btnImprimir).Click += new EventHandler(this.btnImprimir_Click);
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(20, 77);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(79, 19);
    this.metroLabel1.TabIndex = 8;
    this.metroLabel1.Text = "N° Facilidad";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(15, 108);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(84, 19);
    this.metroLabel2.TabIndex = 9;
    this.metroLabel2.Text = "Desde Cuota";
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(19, 143);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(80 /*0x50*/, 19);
    this.metroLabel3.TabIndex = 10;
    this.metroLabel3.Text = "Hasta Cuota";
    this.mibDesde.Location = new Point(111, 108);
    this.mibDesde.MaxLength = 3;
    this.mibDesde.MaxValue = 999;
    this.mibDesde.MinValue = 1;
    this.mibDesde.Name = "mibDesde";
    this.mibDesde.Size = new Size(46, 23);
    this.mibDesde.TabIndex = 2;
    this.mibDesde.TextAlign = HorizontalAlignment.Center;
    this.mibHasta.Location = new Point(111, 143);
    this.mibHasta.MaxLength = 3;
    this.mibHasta.MaxValue = 999;
    this.mibHasta.MinValue = 1;
    this.mibHasta.Name = "mibHasta";
    this.mibHasta.Size = new Size(46, 23);
    this.mibHasta.TabIndex = 3;
    this.mibHasta.TextAlign = HorizontalAlignment.Center;
    this.mebFaciPago.AllowEmpty = false;
    this.mebFaciPago.AllowSqlCharacters = false;
    this.mebFaciPago.BackColor = Color.White;
    this.mebFaciPago.Entity = (Entity) null;
    this.mebFaciPago.ExternalValidation = (Func<string>) null;
    this.mebFaciPago.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebFaciPago.LabelText = "";
    this.mebFaciPago.Location = new Point(108, 77);
    this.mebFaciPago.MandatoryWrite = false;
    this.mebFaciPago.Margin = new Padding(3, 4, 3, 4);
    this.mebFaciPago.MaximumSize = new Size(3000, 23);
    this.mebFaciPago.MaxLenght = 20;
    this.mebFaciPago.MinimumSize = new Size(100, 23);
    this.mebFaciPago.Name = "mebFaciPago";
    this.mebFaciPago.PropertyDetail = "DetaPers";
    this.mebFaciPago.PropertyID = "CodiFapa";
    this.mebFaciPago.ShowNewButton = false;
    this.mebFaciPago.ShowSearchButton = false;
    this.mebFaciPago.Size = new Size(567, 23);
    this.mebFaciPago.TabIndex = 1;
    this.mebFaciPago.TextAlign = HorizontalAlignment.Center;
    this.mebFaciPago.TextBoxWidth = 100;
    this.mebFaciPago.EntityChangedDone += new AfterEntityChange(this.mebFaciPago_EntityChangedDone);
    this.gpbCuotas.Controls.Add((Control) this.gridControlCuotas);
    this.gpbCuotas.Location = new Point(212, 108);
    this.gpbCuotas.Name = "gpbCuotas";
    this.gpbCuotas.Size = new Size(463, 178);
    this.gpbCuotas.TabIndex = 13;
    this.gpbCuotas.TabStop = false;
    this.gpbCuotas.Text = "Detalle Cuotas";
    ((Control) this.gridControlCuotas).Dock = DockStyle.Fill;
    ((Control) this.gridControlCuotas).Location = new Point(3, 16 /*0x10*/);
    this.gridControlCuotas.MainView = (BaseView) this.gridViewCuotas;
    ((Control) this.gridControlCuotas).Name = "gridControlCuotas";
    ((Control) this.gridControlCuotas).Size = new Size(457, 159);
    ((Control) this.gridControlCuotas).TabIndex = 206;
    ((Control) this.gridControlCuotas).TabStop = false;
    this.gridControlCuotas.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewCuotas
    });
    this.gridViewCuotas.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewCuotas.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewCuotas.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewCuotas).Columns.AddRange(new GridColumn[5]
    {
      this.colCuota,
      this.colEstado,
      this.colFeve,
      this.colFepa,
      this.colTota
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
    ((AppearanceOptions) this.colCuota.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuota.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuota.Caption = "Cuota";
    this.colCuota.FieldName = "CuotDefaStr";
    this.colCuota.MaxWidth = 50;
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
    this.colCuota.Width = 50;
    ((AppearanceOptions) this.colEstado.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colEstado.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colEstado.Caption = "Estado";
    this.colEstado.FieldName = "EstaDefa";
    this.colEstado.MaxWidth = 100;
    this.colEstado.Name = "colEstado";
    this.colEstado.OptionsColumn.AllowEdit = false;
    this.colEstado.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colEstado.OptionsColumn.AllowIncrementalSearch = false;
    this.colEstado.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colEstado.OptionsColumn.AllowMove = false;
    this.colEstado.OptionsColumn.AllowShowHide = false;
    this.colEstado.OptionsColumn.AllowSize = false;
    this.colEstado.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colEstado.OptionsColumn.ReadOnly = true;
    this.colEstado.OptionsColumn.TabStop = false;
    this.colEstado.Visible = true;
    this.colEstado.VisibleIndex = 1;
    ((AppearanceOptions) this.colFeve.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFeve.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFeve.Caption = "Fecha Venc.";
    this.colFeve.FieldName = "FeveDefaStr";
    this.colFeve.MaxWidth = 70;
    this.colFeve.Name = "colFeve";
    this.colFeve.OptionsColumn.AllowEdit = false;
    this.colFeve.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFeve.OptionsColumn.AllowIncrementalSearch = false;
    this.colFeve.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colFeve.OptionsColumn.AllowMove = false;
    this.colFeve.OptionsColumn.AllowShowHide = false;
    this.colFeve.OptionsColumn.AllowSize = false;
    this.colFeve.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colFeve.OptionsColumn.ReadOnly = true;
    this.colFeve.OptionsColumn.TabStop = false;
    this.colFeve.Visible = true;
    this.colFeve.VisibleIndex = 2;
    this.colFeve.Width = 70;
    ((AppearanceOptions) this.colFepa.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFepa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFepa.Caption = "Fecha Pago";
    this.colFepa.FieldName = "FepaDefaStr";
    this.colFepa.MaxWidth = 70;
    this.colFepa.Name = "colFepa";
    this.colFepa.OptionsColumn.AllowEdit = false;
    this.colFepa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFepa.OptionsColumn.AllowIncrementalSearch = false;
    this.colFepa.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colFepa.OptionsColumn.AllowMove = false;
    this.colFepa.OptionsColumn.AllowShowHide = false;
    this.colFepa.OptionsColumn.AllowSize = false;
    this.colFepa.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colFepa.OptionsColumn.ReadOnly = true;
    this.colFepa.OptionsColumn.TabStop = false;
    this.colFepa.Visible = true;
    this.colFepa.VisibleIndex = 3;
    this.colFepa.Width = 70;
    ((AppearanceOptions) this.colTota.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTota.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTota.Caption = "Total Cuota";
    this.colTota.DisplayFormat.FormatString = "{0:C2}";
    this.colTota.DisplayFormat.FormatType = (FormatType) 3;
    this.colTota.FieldName = "TotaDefa";
    this.colTota.Name = "colTota";
    this.colTota.OptionsColumn.AllowEdit = false;
    this.colTota.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTota.OptionsColumn.AllowIncrementalSearch = false;
    this.colTota.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTota.OptionsColumn.AllowMove = false;
    this.colTota.OptionsColumn.AllowShowHide = false;
    this.colTota.OptionsColumn.AllowSize = false;
    this.colTota.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colTota.OptionsColumn.ReadOnly = true;
    this.colTota.OptionsColumn.TabStop = false;
    this.colTota.Visible = true;
    this.colTota.VisibleIndex = 4;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(77, 191);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(80 /*0x50*/, 19);
    this.metroLabel4.TabIndex = 14;
    this.metroLabel4.Text = "Impresora";
    this.cboImpresora.FormattingEnabled = false;
    this.cboImpresora.Location = new Point(30, 222);
    this.cboImpresora.Name = "cboImpresora";
    this.cboImpresora.Size = new Size(169, 23);
    this.cboImpresora.TabIndex = 4;
    this.AcceptButton = (IButtonControl) this.btnImprimir;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(687, 339);
    this.Controls.Add((Control) this.cboImpresora);
    this.Controls.Add((Control) this.metroLabel4);
    this.Controls.Add((Control) this.gpbCuotas);
    this.Controls.Add((Control) this.mebFaciPago);
    this.Controls.Add((Control) this.mibHasta);
    this.Controls.Add((Control) this.mibDesde);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.btnImprimir);
    this.Name = nameof (repReimpresionPPMP);
    this.Text = nameof (repReimpresionPPMP);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.btnImprimir, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.mibDesde, 0);
    this.Controls.SetChildIndex((Control) this.mibHasta, 0);
    this.Controls.SetChildIndex((Control) this.mebFaciPago, 0);
    this.Controls.SetChildIndex((Control) this.gpbCuotas, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel4, 0);
    this.Controls.SetChildIndex((Control) this.cboImpresora, 0);
    this.gpbCuotas.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlCuotas).EndInit();
    ((ISupportInitialize) this.gridViewCuotas).EndInit();
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
