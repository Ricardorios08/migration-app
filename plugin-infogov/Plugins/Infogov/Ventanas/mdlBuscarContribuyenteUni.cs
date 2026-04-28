// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.mdlBuscarContribuyenteUni
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class mdlBuscarContribuyenteUni : InfoGovModalForm
{
  private List<UnificacionCuit> ListaPers;
  private BindingSource BsPers;
  private ExpUnificacionCuit experto = new ExpUnificacionCuit();
  private IContainer components = (IContainer) null;
  private GridControl gridControlPersona;
  private GridView gridViewPersona;
  private GridColumn colCucuPers;
  private GridColumn colCodiOfic;
  private GridColumn colDetaPers;
  private SimpleButton btnBuscar;
  private MetroTextBox DetaPersText;
  private MetroTextBox CuitText;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox CuentaText;
  private MetroLabel metroLabel3;
  private MetroPanel metroPanel2;
  private SimpleButton btnCancelar;
  private SimpleButton btnAceptar;
  private MetroPanel metroPanel1;
  private GridColumn colTipoRela;
  private GridColumn colFebaRela;
  private GridColumn colCuenCtc;

  public mdlBuscarContribuyenteUni()
    : base()
  {
    this.InitializeComponent();
    this.gridViewPersona.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.ListaPers = new List<UnificacionCuit>();
    this.BsPers = new BindingSource();
    this.gridControlPersona.DataSource = (object) this.ListaPers;
    this.BsPers.DataSource = (object) this.ListaPers;
  }

  public List<UnificacionCuit> getPersona()
  {
    this.ListaPers = this.experto.getBuscarPersonasSM(this.CuitText.Text, this.DetaPersText.Text, this.CuentaText.Text);
    return this.ShowDialog() == DialogResult.OK ? (List<UnificacionCuit>) null : (List<UnificacionCuit>) null;
  }

  private void btnBuscar_Click(object sender, EventArgs e)
  {
    this.ListaPers = this.experto.getBuscarPersonasSM(this.CuitText.Text, this.DetaPersText.Text, this.CuentaText.Text);
  }

  private void btnAceptar_Click(object sender, EventArgs e)
  {
  }

  private void btnCancelar_Click(object sender, EventArgs e)
  {
    this.DialogResult = DialogResult.Cancel;
    this.Close();
  }

  private void CuitText_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar != '\r')
      return;
    e.Handled = true;
    ((BaseButton) this.btnBuscar).PerformClick();
  }

  private void DetaPersText_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar != '\r')
      return;
    e.Handled = true;
    ((BaseButton) this.btnBuscar).PerformClick();
  }

  private void CuentaText_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar != '\r')
      return;
    e.Handled = true;
    ((BaseButton) this.btnBuscar).PerformClick();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (mdlBuscarContribuyenteUni));
    this.gridControlPersona = new GridControl();
    this.gridViewPersona = new GridView();
    this.colCucuPers = new GridColumn();
    this.colCodiOfic = new GridColumn();
    this.colCuenCtc = new GridColumn();
    this.colDetaPers = new GridColumn();
    this.colTipoRela = new GridColumn();
    this.colFebaRela = new GridColumn();
    this.btnBuscar = new SimpleButton();
    this.DetaPersText = new MetroTextBox();
    this.CuitText = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.CuentaText = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.metroPanel2 = new MetroPanel();
    this.btnCancelar = new SimpleButton();
    this.btnAceptar = new SimpleButton();
    this.metroPanel1 = new MetroPanel();
    ((ISupportInitialize) this.gridControlPersona).BeginInit();
    ((ISupportInitialize) this.gridViewPersona).BeginInit();
    this.metroPanel2.SuspendLayout();
    this.metroPanel1.SuspendLayout();
    this.SuspendLayout();
    ((Control) this.gridControlPersona).Dock = DockStyle.Fill;
    ((Control) this.gridControlPersona).Location = new Point(0, 126);
    this.gridControlPersona.MainView = (BaseView) this.gridViewPersona;
    ((Control) this.gridControlPersona).Name = "gridControlPersona";
    ((Control) this.gridControlPersona).Size = new Size(804, 226);
    ((Control) this.gridControlPersona).TabIndex = 1;
    this.gridControlPersona.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewPersona
    });
    ((ColumnView) this.gridViewPersona).Columns.AddRange(new GridColumn[6]
    {
      this.colCucuPers,
      this.colCodiOfic,
      this.colCuenCtc,
      this.colDetaPers,
      this.colTipoRela,
      this.colFebaRela
    });
    ((BaseView) this.gridViewPersona).GridControl = this.gridControlPersona;
    ((BaseView) this.gridViewPersona).Name = "gridViewPersona";
    ((ColumnViewOptionsBehavior) this.gridViewPersona.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewPersona.OptionsBehavior).ReadOnly = true;
    this.gridViewPersona.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewPersona.OptionsView.ShowGroupPanel = false;
    this.colCucuPers.Caption = "CUIL-CUIT";
    this.colCucuPers.FieldName = "CucuPers";
    this.colCucuPers.Name = "colCucuPers";
    this.colCucuPers.Visible = true;
    this.colCucuPers.VisibleIndex = 0;
    this.colCucuPers.Width = 42;
    this.colCodiOfic.Caption = "Oficina";
    this.colCodiOfic.FieldName = "CodiOfic";
    this.colCodiOfic.Name = "colCodiOfic";
    this.colCodiOfic.Visible = true;
    this.colCodiOfic.VisibleIndex = 1;
    this.colCodiOfic.Width = 54;
    this.colCuenCtc.Caption = "Cuenta";
    this.colCuenCtc.FieldName = "CuenCtct";
    this.colCuenCtc.Name = "colCuenCtc";
    this.colCuenCtc.Visible = true;
    this.colCuenCtc.VisibleIndex = 2;
    this.colCuenCtc.Width = 58;
    this.colDetaPers.Caption = "Apellido y Nombre";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 3;
    this.colDetaPers.Width = 199;
    this.colTipoRela.Caption = "Relación";
    this.colTipoRela.FieldName = "TipoRela";
    this.colTipoRela.Name = "colTipoRela";
    this.colTipoRela.Visible = true;
    this.colTipoRela.VisibleIndex = 4;
    this.colTipoRela.Width = 60;
    this.colFebaRela.Caption = "Fecha de Baja";
    this.colFebaRela.DisplayFormat.FormatString = "dd-MM-yyyy";
    this.colFebaRela.DisplayFormat.FormatType = (FormatType) 2;
    this.colFebaRela.FieldName = "FebaRela";
    this.colFebaRela.Name = "colFebaRela";
    this.colFebaRela.Visible = true;
    this.colFebaRela.VisibleIndex = 5;
    this.colFebaRela.Width = 60;
    ((BaseButton) this.btnBuscar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnBuscar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscar.ImageOptions.Image");
    ((Control) this.btnBuscar).Location = new Point(516, 46);
    ((Control) this.btnBuscar).Name = "btnBuscar";
    ((Control) this.btnBuscar).Size = new Size(107, 23);
    ((Control) this.btnBuscar).TabIndex = 6;
    ((Control) this.btnBuscar).Text = "Buscar";
    ((Control) this.btnBuscar).Click += new EventHandler(this.btnBuscar_Click);
    this.DetaPersText.AllowEmpty = true;
    this.DetaPersText.Location = new Point(153, 46);
    this.DetaPersText.MaxLength = 250;
    this.DetaPersText.Name = "DetaPersText";
    this.DetaPersText.Size = new Size(341, 23);
    this.DetaPersText.TabIndex = 1;
    this.DetaPersText.KeyPress += new KeyPressEventHandler(this.DetaPersText_KeyPress);
    this.CuitText.AllowEmpty = true;
    this.CuitText.Location = new Point(153, 11);
    this.CuitText.MaxLength = 11;
    this.CuitText.Name = "CuitText";
    this.CuitText.Size = new Size(152, 23);
    this.CuitText.TabIndex = 0;
    this.CuitText.KeyPress += new KeyPressEventHandler(this.CuitText_KeyPress);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(15, 50);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(126, 19);
    this.metroLabel2.TabIndex = 7;
    this.metroLabel2.Text = "Apellido y Nombre";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(74, 15);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(67, 19);
    this.metroLabel1.TabIndex = 6;
    this.metroLabel1.Text = "Cuit/Cuil";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.CuentaText.AllowEmpty = true;
    this.CuentaText.Location = new Point(153, 81);
    this.CuentaText.MaxLength = 11;
    this.CuentaText.Name = "CuentaText";
    this.CuentaText.Size = new Size(152, 23);
    this.CuentaText.TabIndex = 2;
    this.CuentaText.KeyPress += new KeyPressEventHandler(this.CuentaText_KeyPress);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(74, 85);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(67, 19);
    this.metroLabel3.TabIndex = 10;
    this.metroLabel3.Text = "Cuenta";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.metroPanel2.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel2.Controls.Add((Control) this.btnCancelar);
    this.metroPanel2.Controls.Add((Control) this.btnAceptar);
    this.metroPanel2.Dock = DockStyle.Bottom;
    this.metroPanel2.Location = new Point(0, 352);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.Size = new Size(804, 47);
    this.metroPanel2.TabIndex = 11;
    ((BaseButton) this.btnCancelar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnCancelar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnCancelar.ImageOptions.Image");
    ((Control) this.btnCancelar).Location = new Point(162, 12);
    ((Control) this.btnCancelar).Name = "btnCancelar";
    ((Control) this.btnCancelar).Size = new Size(107, 23);
    ((Control) this.btnCancelar).TabIndex = 1;
    ((Control) this.btnCancelar).Text = "Cancelar";
    ((Control) this.btnCancelar).Click += new EventHandler(this.btnCancelar_Click);
    ((BaseButton) this.btnAceptar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnAceptar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnAceptar.ImageOptions.Image");
    ((Control) this.btnAceptar).Location = new Point(36, 12);
    ((Control) this.btnAceptar).Name = "btnAceptar";
    ((Control) this.btnAceptar).Size = new Size(107, 23);
    ((Control) this.btnAceptar).TabIndex = 0;
    ((Control) this.btnAceptar).Text = "Aceptar";
    ((Control) this.btnAceptar).Click += new EventHandler(this.btnAceptar_Click);
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.CuitText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel3);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Controls.Add((Control) this.CuentaText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel2);
    this.metroPanel1.Controls.Add((Control) this.btnBuscar);
    this.metroPanel1.Controls.Add((Control) this.DetaPersText);
    this.metroPanel1.Dock = DockStyle.Top;
    this.metroPanel1.Location = new Point(0, 0);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(804, 126);
    this.metroPanel1.TabIndex = 12;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(804, 399);
    this.Controls.Add((Control) this.gridControlPersona);
    this.Controls.Add((Control) this.metroPanel1);
    this.Controls.Add((Control) this.metroPanel2);
    this.Name = nameof (mdlBuscarContribuyenteUni);
    this.Text = "mdlBuscarActa";
    ((ISupportInitialize) this.gridControlPersona).EndInit();
    ((ISupportInitialize) this.gridViewPersona).EndInit();
    this.metroPanel2.ResumeLayout(false);
    this.metroPanel1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
