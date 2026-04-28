// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.mdlResultadoMailBole
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class mdlResultadoMailBole : InfoGovModalForm
{
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel3;
  private GridControl grid;
  private GridView gridView1;
  private GridColumn colCuenCtct;
  private GridColumn colEmail;
  private GridColumn colEstado;
  private MetroPanel metroPanel1;
  private MetroTextBox NoEnviadosText;
  private MetroTextBox EnviadosText;
  private MetroTextBox TotalText;
  private MetroLabel metroLabel4;
  private SimpleButton btnExportar;
  private SimpleButton btnCerrar;
  private GridColumn colCodiOficStr;

  public mdlResultadoMailBole()
    : base()
  {
    this.InitializeComponent();
    this.gridView1.FocusRectStyle = (DrawFocusRectStyle) 1;
    this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridView1.OptionsView.ShowGroupPanel = false;
    ((ColumnViewOptionsBehavior) this.gridView1.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridView1.OptionsBehavior).ReadOnly = true;
    ((BaseView) this.gridView1).GridControl.ShowOnlyPredefinedDetails = true;
  }

  public void MostrarResultado(int bien, int mal, List<MailMasivoGuaymallen> listaresul)
  {
    this.TotalText.Text = (bien + mal).ToString();
    this.EnviadosText.Text = bien.ToString();
    this.NoEnviadosText.Text = mal.ToString();
    this.grid.DataSource = (object) listaresul;
    int num = (int) this.ShowDialog();
  }

  private void btnCerrar_Click(object sender, EventArgs e) => this.Close();

  private void btnExportar_Click(object sender, EventArgs e) => this.grid.ShowPrintPreview();

  public void MostrarResultadoTunuyan(int bien, int mal, List<MailMasivoTunuyan> listaresul)
  {
    this.TotalText.Text = (bien + mal).ToString();
    this.EnviadosText.Text = bien.ToString();
    this.NoEnviadosText.Text = mal.ToString();
    this.colCuenCtct.FieldName = "CuenCtct";
    this.grid.DataSource = (object) listaresul;
    int num = (int) this.ShowDialog();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (mdlResultadoMailBole));
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.grid = new GridControl();
    this.gridView1 = new GridView();
    this.colCuenCtct = new GridColumn();
    this.colEmail = new GridColumn();
    this.colEstado = new GridColumn();
    this.metroPanel1 = new MetroPanel();
    this.NoEnviadosText = new MetroTextBox();
    this.EnviadosText = new MetroTextBox();
    this.TotalText = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.btnExportar = new SimpleButton();
    this.btnCerrar = new SimpleButton();
    this.colCodiOficStr = new GridColumn();
    ((ISupportInitialize) this.grid).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.metroPanel1.SuspendLayout();
    this.SuspendLayout();
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(16 /*0x10*/, 19);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(39, 19);
    this.metroLabel1.TabIndex = 0;
    this.metroLabel1.Text = "Total:";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(145, 19);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(63 /*0x3F*/, 19);
    this.metroLabel2.TabIndex = 1;
    this.metroLabel2.Text = "Enviados:";
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(307, 19);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(85, 19);
    this.metroLabel3.TabIndex = 2;
    this.metroLabel3.Text = "No Enviados:";
    ((Control) this.grid).Location = new Point(4, 102);
    this.grid.MainView = (BaseView) this.gridView1;
    ((Control) this.grid).Name = "grid";
    ((Control) this.grid).Size = new Size(604, 323);
    ((Control) this.grid).TabIndex = 3;
    this.grid.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colCodiOficStr,
      this.colCuenCtct,
      this.colEmail,
      this.colEstado
    });
    ((BaseView) this.gridView1).GridControl = this.grid;
    ((BaseView) this.gridView1).Name = "gridView1";
    ((ColumnViewOptionsBehavior) this.gridView1.OptionsBehavior).ReadOnly = true;
    this.gridView1.OptionsView.ShowGroupPanel = false;
    this.gridView1.VertScrollVisibility = (ScrollVisibility) 1;
    this.colCuenCtct.Caption = "Cuenta";
    this.colCuenCtct.FieldName = "CuenCtct";
    this.colCuenCtct.Name = "colCuenCtct";
    this.colCuenCtct.Visible = true;
    this.colCuenCtct.VisibleIndex = 1;
    this.colCuenCtct.Width = 86;
    this.colEmail.Caption = "Email";
    this.colEmail.FieldName = "Email";
    this.colEmail.Name = "colEmail";
    this.colEmail.Visible = true;
    this.colEmail.VisibleIndex = 2;
    this.colEmail.Width = 400;
    this.colEstado.Caption = "Estado";
    this.colEstado.FieldName = "Estado";
    this.colEstado.Name = "colEstado";
    this.colEstado.Visible = true;
    this.colEstado.VisibleIndex = 3;
    this.colEstado.Width = 108;
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.NoEnviadosText);
    this.metroPanel1.Controls.Add((Control) this.EnviadosText);
    this.metroPanel1.Controls.Add((Control) this.TotalText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel3);
    this.metroPanel1.Controls.Add((Control) this.metroLabel2);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Location = new Point(26, 36);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(543, 52);
    this.metroPanel1.TabIndex = 4;
    this.NoEnviadosText.Enabled = false;
    this.NoEnviadosText.Location = new Point(404, 15);
    this.NoEnviadosText.Name = "NoEnviadosText";
    this.NoEnviadosText.Size = new Size(75, 23);
    this.NoEnviadosText.TabIndex = 5;
    this.EnviadosText.Enabled = false;
    this.EnviadosText.Location = new Point(220, 15);
    this.EnviadosText.Name = "EnviadosText";
    this.EnviadosText.Size = new Size(75, 23);
    this.EnviadosText.TabIndex = 4;
    this.TotalText.Enabled = false;
    this.TotalText.Location = new Point(58, 15);
    this.TotalText.Name = "TotalText";
    this.TotalText.Size = new Size(75, 23);
    this.TotalText.TabIndex = 3;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.FontSize = 16f;
    this.metroLabel4.FontWeight = MetroFontWeight.Bold;
    this.metroLabel4.Location = new Point(26, 8);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(95, 21);
    this.metroLabel4.TabIndex = 6;
    this.metroLabel4.Text = "Resultado:";
    ((ImageOptions) this.btnExportar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnExportar.ImageOptions.Image");
    ((Control) this.btnExportar).Location = new Point(323, 435);
    ((Control) this.btnExportar).Name = "btnExportar";
    ((Control) this.btnExportar).Size = new Size(100, 23);
    ((Control) this.btnExportar).TabIndex = 8;
    ((Control) this.btnExportar).Text = "Exportar";
    ((Control) this.btnExportar).Click += new EventHandler(this.btnExportar_Click);
    ((ImageOptions) this.btnCerrar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnCerrar.ImageOptions.Image");
    ((Control) this.btnCerrar).Location = new Point(172, 435);
    ((Control) this.btnCerrar).Name = "btnCerrar";
    ((Control) this.btnCerrar).Size = new Size(100, 23);
    ((Control) this.btnCerrar).TabIndex = 9;
    ((Control) this.btnCerrar).Text = "Cerrar";
    ((Control) this.btnCerrar).Click += new EventHandler(this.btnCerrar_Click);
    this.colCodiOficStr.Caption = "Oficna";
    this.colCodiOficStr.FieldName = "CodiOficStr";
    this.colCodiOficStr.Name = "colCodiOficStr";
    this.colCodiOficStr.Visible = true;
    this.colCodiOficStr.VisibleIndex = 0;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(612, 470);
    this.Controls.Add((Control) this.btnCerrar);
    this.Controls.Add((Control) this.btnExportar);
    this.Controls.Add((Control) this.metroLabel4);
    this.Controls.Add((Control) this.metroPanel1);
    this.Controls.Add((Control) this.grid);
    this.Name = nameof (mdlResultadoMailBole);
    this.Text = nameof (mdlResultadoMailBole);
    ((ISupportInitialize) this.grid).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.metroPanel1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
