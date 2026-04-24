// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.frmGenerarBalanceMensual
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class frmGenerarBalanceMensual : FRMForm
{
  private Panel panel2;
  private GridControl gridControl1;
  private GridView gridView1;
  private MetroDateTextBox mtbHasta;
  private MetroDateTextBox mtbDesde;
  private MetroButton btnGenerar;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private GridColumn Fecha;
  private GridColumn Nro;
  private GridColumn Control;
  private GridColumn Cuenta_1;
  private GridColumn Detalle_1;
  private GridColumn Importe_1;
  private GridColumn Cuenta_2;
  private GridColumn Detalle_2;
  private GridColumn Importe_2;
  private GridColumn Diferencia;
  private GridColumn Resultado;

  public frmGenerarBalanceMensual()
    : base(nameof (frmGenerarBalanceMensual), "Generar Balance Mensual", (Type) null)
  {
    this.InitializeComponent();
  }

  protected override bool habilitarBotonNuevo() => this.hasPermissionFor("");

  protected override bool habilitarBotonModificar() => this.hasPermissionFor("");

  protected override bool habilitarBotonAnular() => this.hasPermissionFor("");

  protected override bool habilitarBotonEliminar() => this.hasPermissionFor("");

  public bool validar() => false;

  private void btnGenerar_Click(object sender, EventArgs e)
  {
    if (this.validar())
      ;
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmGenerarBalanceMensual));
    this.panel2 = new Panel();
    this.btnGenerar = new MetroButton();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.mtbHasta = new MetroDateTextBox();
    this.mtbDesde = new MetroDateTextBox();
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.Fecha = new GridColumn();
    this.Nro = new GridColumn();
    this.Control = new GridColumn();
    this.Cuenta_1 = new GridColumn();
    this.Detalle_1 = new GridColumn();
    this.Importe_1 = new GridColumn();
    this.Cuenta_2 = new GridColumn();
    this.Detalle_2 = new GridColumn();
    this.Importe_2 = new GridColumn();
    this.Diferencia = new GridColumn();
    this.Resultado = new GridColumn();
    this.panel1.SuspendLayout();
    this.panel2.SuspendLayout();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
    this.panel1.Controls.SetChildIndex((System.Windows.Forms.Control) this.separator1, 0);
    this.panel1.Controls.SetChildIndex((System.Windows.Forms.Control) this.butEdit, 0);
    this.panel1.Controls.SetChildIndex((System.Windows.Forms.Control) this.butNew, 0);
    this.panel1.Controls.SetChildIndex((System.Windows.Forms.Control) this.butAnnular, 0);
    this.panel1.Controls.SetChildIndex((System.Windows.Forms.Control) this.butDelete, 0);
    this.panel1.Controls.SetChildIndex((System.Windows.Forms.Control) this.butCancel, 0);
    this.panel1.Controls.SetChildIndex((System.Windows.Forms.Control) this.butSave, 0);
    ((ImageOptions) this.butSave.ImageOptions).Image = (Image) componentResourceManager.GetObject("butSave.ImageOptions.Image");
    this.butSave.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butCancel.ImageOptions).Image = (Image) componentResourceManager.GetObject("butCancel.ImageOptions.Image");
    this.butCancel.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butDelete.ImageOptions).Image = (Image) componentResourceManager.GetObject("butDelete.ImageOptions.Image");
    this.butDelete.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butAnnular.ImageOptions).Image = (Image) componentResourceManager.GetObject("butAnnular.ImageOptions.Image");
    this.butAnnular.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butNew.ImageOptions).Image = (Image) componentResourceManager.GetObject("butNew.ImageOptions.Image");
    this.butNew.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butEdit.ImageOptions).Image = (Image) componentResourceManager.GetObject("butEdit.ImageOptions.Image");
    this.butEdit.ImageOptions.Location = (ImageLocation) 1;
    this.panel2.Controls.Add((System.Windows.Forms.Control) this.btnGenerar);
    this.panel2.Controls.Add((System.Windows.Forms.Control) this.metroLabel2);
    this.panel2.Controls.Add((System.Windows.Forms.Control) this.metroLabel1);
    this.panel2.Controls.Add((System.Windows.Forms.Control) this.mtbHasta);
    this.panel2.Controls.Add((System.Windows.Forms.Control) this.mtbDesde);
    this.panel2.Dock = DockStyle.Top;
    this.panel2.Location = new Point(0, 68);
    this.panel2.Name = "panel2";
    this.panel2.Size = new Size(777, 56);
    this.panel2.TabIndex = 2;
    this.btnGenerar.Location = new Point(366, 10);
    this.btnGenerar.Name = "btnGenerar";
    this.btnGenerar.Size = new Size(164, 22);
    this.btnGenerar.TabIndex = 4;
    this.btnGenerar.Text = "Generar Balance Mensual";
    this.btnGenerar.Click += new EventHandler(this.btnGenerar_Click);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(194, 12);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(41, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Hasta";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(15, 15);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(45, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Desde";
    this.mtbHasta.Location = new Point(247, 10);
    this.mtbHasta.Name = "mtbHasta";
    this.mtbHasta.Size = new Size(90, 25);
    this.mtbHasta.TabIndex = 1;
    this.mtbDesde.Location = new Point(72, 10);
    this.mtbDesde.Name = "mtbDesde";
    this.mtbDesde.Size = new Size(90, 25);
    this.mtbDesde.TabIndex = 0;
    ((System.Windows.Forms.Control) this.gridControl1).Dock = DockStyle.Fill;
    ((System.Windows.Forms.Control) this.gridControl1).Location = new Point(0, 124);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((System.Windows.Forms.Control) this.gridControl1).Name = "gridControl1";
    ((System.Windows.Forms.Control) this.gridControl1).Size = new Size(777, 395);
    ((System.Windows.Forms.Control) this.gridControl1).TabIndex = 4;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[11]
    {
      this.Fecha,
      this.Nro,
      this.Control,
      this.Cuenta_1,
      this.Detalle_1,
      this.Importe_1,
      this.Cuenta_2,
      this.Detalle_2,
      this.Importe_2,
      this.Diferencia,
      this.Resultado
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.Fecha.Caption = "Fecha";
    this.Fecha.Name = "Fecha";
    this.Fecha.Visible = true;
    this.Fecha.VisibleIndex = 0;
    this.Nro.Caption = "Nro";
    this.Nro.Name = "Nro";
    this.Nro.Visible = true;
    this.Nro.VisibleIndex = 1;
    this.Control.Caption = "Control";
    this.Control.Name = "Control";
    this.Control.Visible = true;
    this.Control.VisibleIndex = 2;
    this.Cuenta_1.Caption = "Cuenta_1";
    this.Cuenta_1.Name = "Cuenta_1";
    this.Cuenta_1.Visible = true;
    this.Cuenta_1.VisibleIndex = 3;
    this.Detalle_1.Caption = "Detalle_1";
    this.Detalle_1.Name = "Detalle_1";
    this.Detalle_1.Visible = true;
    this.Detalle_1.VisibleIndex = 4;
    this.Importe_1.Caption = "Importe_1";
    this.Importe_1.Name = "Importe_1";
    this.Importe_1.Visible = true;
    this.Importe_1.VisibleIndex = 5;
    this.Cuenta_2.Caption = "Cuenta_2";
    this.Cuenta_2.Name = "Cuenta_2";
    this.Cuenta_2.Visible = true;
    this.Cuenta_2.VisibleIndex = 6;
    this.Detalle_2.Caption = "Detalle_2";
    this.Detalle_2.Name = "Detalle_2";
    this.Detalle_2.Visible = true;
    this.Detalle_2.VisibleIndex = 7;
    this.Importe_2.Caption = "Importe_2";
    this.Importe_2.Name = "Importe_2";
    this.Importe_2.Visible = true;
    this.Importe_2.VisibleIndex = 8;
    this.Diferencia.Caption = "Diferencia";
    this.Diferencia.Name = "Diferencia";
    this.Diferencia.Visible = true;
    this.Diferencia.VisibleIndex = 9;
    this.Resultado.Caption = "Resultado";
    this.Resultado.Name = "Resultado";
    this.Resultado.Visible = true;
    this.Resultado.VisibleIndex = 10;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((System.Windows.Forms.Control) this.gridControl1);
    this.Controls.Add((System.Windows.Forms.Control) this.panel2);
    this.Name = nameof (frmGenerarBalanceMensual);
    this.Controls.SetChildIndex((System.Windows.Forms.Control) this.panel1, 0);
    this.Controls.SetChildIndex((System.Windows.Forms.Control) this.panel2, 0);
    this.Controls.SetChildIndex((System.Windows.Forms.Control) this.gridControl1, 0);
    this.panel1.ResumeLayout(false);
    this.panel2.ResumeLayout(false);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
