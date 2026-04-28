// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.detailAlerta
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class detailAlerta : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroComboBox cboOficina;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox txtCuenCtct;
  private MetroTextBox txtDetaAler;
  private MetroLabel metroLabel3;
  private MetroLabel lblBajaMoti;
  private MetroTextBox txtBajaMoti;

  public detailAlerta()
  {
    this.InitializeComponent();
    this.CargarOficinas();
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.cboOficina.Enabled = this.txtCuenCtct.Enabled = mode == ActionMode.New;
    this.txtDetaAler.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.lblBajaMoti.Visible = this.txtBajaMoti.Visible = this.txtBajaMoti.Enabled = mode == ActionMode.Deactivate;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    Alerta m = (Alerta) enti;
    if (m == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.cboOficina.SelectedItem = (object) this.cboOficina.Items.Cast<ComboBoxItem>().FirstOrDefault<ComboBoxItem>((Func<ComboBoxItem, bool>) (item => item.Value.Equals((object) m.CodiOfic)));
      this.txtCuenCtct.Text = m.CuenCtct;
      this.txtDetaAler.Text = m.DetaAler;
      this.txtBajaMoti.Text = m.BajaMoti;
    }
  }

  protected override Entity LoadEntity()
  {
    Alerta alerta = new Alerta();
    alerta.CodiOfic = (short) ((ComboBoxItem) this.cboOficina.SelectedItem).Value;
    alerta.CuenCtct = this.txtCuenCtct.Text.Trim();
    alerta.DetaAler = this.txtDetaAler.Text.Trim();
    alerta.BajaMoti = this.txtBajaMoti.Text.Trim();
    return (Entity) alerta;
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.cboOficina.Items == null || this.cboOficina.Items.Count == 0)
      stringList.Add("Debe seleccionar una oficina.");
    if (string.IsNullOrEmpty(this.txtCuenCtct.Text.Trim()))
      stringList.Add("Debe ingresar un número de cuenta.");
    if (string.IsNullOrEmpty(this.txtDetaAler.Text.Trim()))
      stringList.Add("Debe ingresar una descripción \nde la alerta.");
    if (this.CurrentMode == ActionMode.Deactivate && string.IsNullOrEmpty(this.txtBajaMoti.Text.Trim()))
      stringList.Add("Debe ingresar un motivo de baja.");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    if (this.cboOficina.Items != null && this.cboOficina.Items.Count > 0)
      this.cboOficina.SelectedIndex = 0;
    this.txtCuenCtct.Text = this.txtDetaAler.Text = this.txtBajaMoti.Text = string.Empty;
  }

  private void CargarOficinas()
  {
    this.cboOficina.Items.Clear();
    this.cboOficina.DisplayMember = "Text";
    this.cboOficina.ValueMember = "Value";
    new ExpAlerta().BuscarOficinas().ForEach((Action<OficinaAlerta>) (of => this.cboOficina.Items.Add((object) new ComboBoxItem(of.DetaOfic, (object) of.CodiOfic))));
    if (this.cboOficina.Items.Count <= 0)
      return;
    this.cboOficina.SelectedIndex = 0;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.tabPane1 = new TabPane();
    this.tabNavigationPage1 = new TabNavigationPage();
    this.cboOficina = new MetroComboBox();
    this.txtDetaAler = new MetroTextBox();
    this.txtCuenCtct = new MetroTextBox();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.lblBajaMoti = new MetroLabel();
    this.txtBajaMoti = new MetroTextBox();
    ((ISupportInitialize) this.tabPane1).BeginInit();
    ((Control) this.tabPane1).SuspendLayout();
    ((Control) this.tabNavigationPage1).SuspendLayout();
    this.SuspendLayout();
    ((Control) this.tabPane1).Controls.Add((Control) this.tabNavigationPage1);
    ((Control) this.tabPane1).Dock = DockStyle.Fill;
    ((Control) this.tabPane1).Location = new Point(0, 0);
    ((Control) this.tabPane1).Name = "tabPane1";
    ((BaseMutableList<NavigationPageBase>) ((NavigationFrame) this.tabPane1).Pages).AddRange(new NavigationPageBase[1]
    {
      (NavigationPageBase) this.tabNavigationPage1
    });
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 187);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 187);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblBajaMoti);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.txtBajaMoti);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.txtCuenCtct);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.txtDetaAler);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.cboOficina);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 154);
    this.cboOficina.FormattingEnabled = false;
    this.cboOficina.Location = new Point(79, 17);
    this.cboOficina.Name = "cboOficina";
    this.cboOficina.Size = new Size(131, 23);
    this.cboOficina.TabIndex = 0;
    this.txtDetaAler.CausesValidation = false;
    this.txtDetaAler.Location = new Point(308, 17);
    this.txtDetaAler.MaxLength = 100;
    this.txtDetaAler.Multiline = true;
    this.txtDetaAler.Name = "txtDetaAler";
    this.txtDetaAler.Size = new Size(322, 58);
    this.txtDetaAler.TabIndex = 2;
    this.txtCuenCtct.CausesValidation = false;
    this.txtCuenCtct.Location = new Point(79, 52);
    this.txtCuenCtct.MaxLength = 11;
    this.txtCuenCtct.Name = "txtCuenCtct";
    this.txtCuenCtct.Size = new Size(131, 23);
    this.txtCuenCtct.TabIndex = 1;
    this.metroLabel1.Location = new Point(17, 17);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(50, 19);
    this.metroLabel1.TabIndex = 3;
    this.metroLabel1.Text = "Oficina";
    this.metroLabel2.Location = new Point(246, 17);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(45, 19);
    this.metroLabel2.TabIndex = 4;
    this.metroLabel2.Text = "Alerta";
    this.metroLabel3.Location = new Point(17, 52);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(50, 19);
    this.metroLabel3.TabIndex = 5;
    this.metroLabel3.Text = "Cuenta";
    this.lblBajaMoti.Location = new Point(217, 115);
    this.lblBajaMoti.Name = "lblBajaMoti";
    this.lblBajaMoti.Size = new Size(79, 19);
    this.lblBajaMoti.TabIndex = 7;
    this.lblBajaMoti.Text = "Motivo Baja";
    this.txtBajaMoti.CausesValidation = false;
    this.txtBajaMoti.Location = new Point(308, 115);
    this.txtBajaMoti.MaxLength = 50;
    this.txtBajaMoti.Name = "txtBajaMoti";
    this.txtBajaMoti.Size = new Size(322, 23);
    this.txtBajaMoti.TabIndex = 3;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailAlerta);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).PerformLayout();
    this.ResumeLayout(false);
  }
}
