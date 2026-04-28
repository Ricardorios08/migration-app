// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmPlanillaDistribucionBoletos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraReports.UI;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.PlanillaDistribucion;
using InfoGov.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmPlanillaDistribucionBoletos : FRMForm
{
  private BindingSource bsEmison = new BindingSource();
  private ExpEmisionMasivaTasas experto = new ExpEmisionMasivaTasas();
  private IContainer components = (IContainer) null;
  private SimpleFilterBar Filtro;
  private MetroPanel metroPanel1;
  private MetroButton btnGenerar;
  private MetroLabel metroLabel3;
  private MetroIntTextBox HastaText;
  private MetroIntTextBox DesdeText;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colPeriLiqu;
  private GridColumn colDetaTili;
  private GridColumn colNumeLiqu;
  private GridColumn colFealLiqu;

  public frmPlanillaDistribucionBoletos()
    : base("Planilla de Distribución de Boletos", "Planilla de Distribución de Boletos", typeof (ExpEmisionMasivaTasas))
  {
    this.InitializeComponent();
    this.gridControl1.DataSource = (object) this.bsEmison;
    this.bsEmison.DataSource = (object) this.experto.getGridData(new Filter()
    {
      Restrictions = {
        new FilterItem("liquidacion.CodiOfic", "CodiOfic", FilterMode.Equal, "1"),
        new FilterItem("ActuLiqu", "ActuLiqu", FilterMode.Equal, "Si"),
        new FilterItem("liquidacion.PeriLiqu", "PeriLiqu", FilterMode.Equal, "2021"),
        new FilterItem("liquidacion.NumeLiqu", "NumeLiqu", FilterMode.Equal, "5")
      }
    });
    this.llenarfiltro();
    ((Control) this.butNew).Visible = false;
    ((Control) this.butEdit).Visible = false;
    ((Control) this.butAnnular).Visible = false;
    ((Control) this.butDelete).Visible = false;
    ((Control) this.butSave).Visible = false;
    ((Control) this.butCancel).Visible = false;
  }

  public void llenarfiltro()
  {
    this.Filtro.setFilterFields(new List<FilterField>()
    {
      new FilterField("NumeLiqu", "Nro. Liquidacion", FilterMode.Equal),
      new FilterField("DetaTili", "Det. TipoLiquidacion", FilterMode.Contains)
    });
    this.Filtro.FilteringFunction = (Action<Filter>) (f => this.bsEmison.DataSource = (object) this.experto.getGridData(f));
  }

  private void gridView1_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    EmisionMasivaTasas row = (EmisionMasivaTasas) ((BaseView) this.gridView1).GetRow(((ColumnView) this.gridView1).GetSelectedRows()[0]);
    this.DesdeText.IntText = 1;
    this.HastaText.IntText = row.CantOrdeLita;
  }

  private void btnGenerar_Click(object sender, EventArgs e)
  {
    this.btnGenerar.Enabled = false;
    EmisionMasivaTasas row = (EmisionMasivaTasas) ((BaseView) this.gridView1).GetRow(((ColumnView) this.gridView1).GetSelectedRows()[0]);
    List<DTOPlanillaDistribucionBoletos> distribucionBoletosList = new frmEsperar((Form) this).calcular<List<DTOPlanillaDistribucionBoletos>>((Func<List<DTOPlanillaDistribucionBoletos>>) (() => this.experto.getPlanillaDistribucion(row, this.DesdeText.IntText, this.HastaText.IntText)), "Consultando Datos...");
    irepPlanillaDistribucionBoletos report = new irepPlanillaDistribucionBoletos();
    ((XtraReportBase) report).DataSource = (object) distribucionBoletosList;
    report.createReport((Form) this);
    this.showInfoGovReport((InfoGovReport) report);
    this.btnGenerar.Enabled = true;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.Filtro = new SimpleFilterBar();
    this.metroPanel1 = new MetroPanel();
    this.btnGenerar = new MetroButton();
    this.metroLabel3 = new MetroLabel();
    this.HastaText = new MetroIntTextBox();
    this.DesdeText = new MetroIntTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colPeriLiqu = new GridColumn();
    this.colDetaTili = new GridColumn();
    this.colNumeLiqu = new GridColumn();
    this.colFealLiqu = new GridColumn();
    this.panel1.SuspendLayout();
    this.metroPanel1.SuspendLayout();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
    this.panel1.Controls.SetChildIndex((Control) this.separator1, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butEdit, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butNew, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butAnnular, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butDelete, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butCancel, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butSave, 0);
    this.Filtro.BackColor = Color.WhiteSmoke;
    this.Filtro.BackgroundColor = Color.WhiteSmoke;
    this.Filtro.Dock = DockStyle.Top;
    this.Filtro.FilteringFunction = (Action<Filter>) null;
    this.Filtro.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.Filtro.Location = new Point(0, 68);
    this.Filtro.Margin = new Padding(0);
    this.Filtro.MaximumSize = new Size(6000, 58);
    this.Filtro.MinimumSize = new Size(378, 25);
    this.Filtro.Name = "Filtro";
    this.Filtro.Size = new Size(777, 25);
    this.Filtro.TabIndex = 3;
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.btnGenerar);
    this.metroPanel1.Controls.Add((Control) this.metroLabel3);
    this.metroPanel1.Controls.Add((Control) this.HastaText);
    this.metroPanel1.Controls.Add((Control) this.DesdeText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel2);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Dock = DockStyle.Bottom;
    this.metroPanel1.Location = new Point(0, 354);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(777, 165);
    this.metroPanel1.TabIndex = 4;
    this.btnGenerar.Location = new Point(72, 93);
    this.btnGenerar.Name = "btnGenerar";
    this.btnGenerar.Size = new Size(216, 23);
    this.btnGenerar.TabIndex = 7;
    this.btnGenerar.Text = "Generar Planilla de Distribución";
    this.btnGenerar.Click += new EventHandler(this.btnGenerar_Click);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(14, 6);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(54, 19);
    this.metroLabel3.TabIndex = 6;
    this.metroLabel3.Text = "ORDEN";
    this.HastaText.Location = new Point(319, 45);
    this.HastaText.MaxLength = 10;
    this.HastaText.MaxValue = 999999999;
    this.HastaText.Name = "HastaText";
    this.HastaText.Size = new Size(134, 23);
    this.HastaText.TabIndex = 5;
    this.DesdeText.Location = new Point(72, 45);
    this.DesdeText.MaxLength = 10;
    this.DesdeText.MaxValue = 999999999;
    this.DesdeText.Name = "DesdeText";
    this.DesdeText.Size = new Size(124, 23);
    this.DesdeText.TabIndex = 4;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(263, 49);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(44, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Hasta:";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(14, 50);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(48 /*0x30*/, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Desde:";
    ((Control) this.gridControl1).Dock = DockStyle.Fill;
    ((Control) this.gridControl1).Location = new Point(0, 93);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((Control) this.gridControl1).Name = "gridControl1";
    ((Control) this.gridControl1).Size = new Size(777, 261);
    ((Control) this.gridControl1).TabIndex = 5;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colPeriLiqu,
      this.colDetaTili,
      this.colNumeLiqu,
      this.colFealLiqu
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridView1.OptionsSelection.EnableAppearanceHideSelection = false;
    this.gridView1.OptionsView.ShowGroupPanel = false;
    ((ColumnView) this.gridView1).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
    this.colPeriLiqu.Caption = "Periodo";
    this.colPeriLiqu.FieldName = "PeriLiqu";
    this.colPeriLiqu.Name = "colPeriLiqu";
    this.colPeriLiqu.OptionsColumn.AllowEdit = false;
    this.colPeriLiqu.Visible = true;
    this.colPeriLiqu.VisibleIndex = 0;
    this.colDetaTili.Caption = "Tipo Liquidacion";
    this.colDetaTili.FieldName = "DetaTili";
    this.colDetaTili.Name = "colDetaTili";
    this.colDetaTili.OptionsColumn.AllowEdit = false;
    this.colDetaTili.Visible = true;
    this.colDetaTili.VisibleIndex = 1;
    this.colNumeLiqu.Caption = "Numero";
    this.colNumeLiqu.FieldName = "NumeLiqu";
    this.colNumeLiqu.Name = "colNumeLiqu";
    this.colNumeLiqu.OptionsColumn.AllowEdit = false;
    this.colNumeLiqu.Visible = true;
    this.colNumeLiqu.VisibleIndex = 2;
    this.colFealLiqu.Caption = "Fecha";
    this.colFealLiqu.FieldName = "FealLiqu";
    this.colFealLiqu.Name = "colFealLiqu";
    this.colFealLiqu.OptionsColumn.AllowEdit = false;
    this.colFealLiqu.Visible = true;
    this.colFealLiqu.VisibleIndex = 3;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Controls.Add((Control) this.metroPanel1);
    this.Controls.Add((Control) this.Filtro);
    this.Name = nameof (frmPlanillaDistribucionBoletos);
    this.Text = "Planilla Distribución de Boletos";
    this.Controls.SetChildIndex((Control) this.panel1, 0);
    this.Controls.SetChildIndex((Control) this.Filtro, 0);
    this.Controls.SetChildIndex((Control) this.metroPanel1, 0);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    this.panel1.ResumeLayout(false);
    this.metroPanel1.ResumeLayout(false);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
