// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailTipoPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailTipoPago : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox mtbDetaTipa;
  private MetroIntTextBox mtbCodiTipa;
  private MetroIntTextBox mtbTipoTipa;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel4;
  private MetroTextBox mtbCodiCuco;
  private MetroLabel lblMotivoBaja;
  private MetroTextBox mtbMotivoBaja;

  public detailTipoPago() => this.InitializeComponent();

  protected override void OnModeChanged(ActionMode mode)
  {
    MetroTextBox mtbDetaTipa = this.mtbDetaTipa;
    MetroIntTextBox mtbTipoTipa = this.mtbTipoTipa;
    bool flag1;
    this.mtbCodiCuco.Enabled = flag1 = mode == ActionMode.New || mode == ActionMode.Edit;
    int num1;
    bool flag2 = (num1 = flag1 ? 1 : 0) != 0;
    mtbTipoTipa.Enabled = num1 != 0;
    int num2 = flag2 ? 1 : 0;
    mtbDetaTipa.Enabled = num2 != 0;
    this.lblMotivoBaja.Enabled = this.mtbMotivoBaja.Enabled = this.lblMotivoBaja.Visible = this.mtbMotivoBaja.Visible = mode == ActionMode.Deactivate;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    TipoPago tipoPago = (TipoPago) enti;
    if (tipoPago == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.mtbCodiTipa.IntText = tipoPago.CodiTipa;
      this.mtbDetaTipa.Text = tipoPago.DetaTipa;
      this.mtbTipoTipa.IntText = tipoPago.TipoTipa;
      this.mtbCodiCuco.Text = tipoPago.CodiCuco;
    }
  }

  protected override Entity LoadEntity()
  {
    TipoPago tipoPago = new TipoPago();
    tipoPago.CodiTipa = this.mtbCodiTipa.IntText;
    tipoPago.DetaTipa = this.mtbDetaTipa.Text.ToUpper().Trim();
    tipoPago.TipoTipa = this.mtbTipoTipa.IntText;
    tipoPago.CodiCuco = this.mtbCodiCuco.Text.ToUpper().Trim();
    tipoPago.BajaMoti = this.mtbMotivoBaja.Text.ToUpper().Trim();
    return (Entity) tipoPago;
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (string.IsNullOrEmpty(this.mtbDetaTipa.Text.Trim()))
      stringList.Add("Se debe agregar un Detalle al Tipo de Pago");
    if (this.CurrentMode == ActionMode.Deactivate && string.IsNullOrEmpty(this.mtbMotivoBaja.Text.Trim()))
      stringList.Add("Se debe agregar un Motivo a la Baja");
    if (this.mtbCodiTipa.IntText == 1)
      stringList.Add("No se puede modificar el \nTipo de Pago 'EFECTIVO'");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.mtbCodiTipa.Text = this.mtbDetaTipa.Text = this.mtbTipoTipa.Text = this.mtbCodiCuco.Text = this.mtbMotivoBaja.Text = string.Empty;
  }

  private void mtbCodiCuco_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (Regex.IsMatch(e.KeyChar.ToString(), "^[0-9]+$") || char.IsControl(e.KeyChar))
      e.Handled = false;
    else
      e.Handled = true;
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
    this.lblMotivoBaja = new MetroLabel();
    this.mtbMotivoBaja = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.mtbCodiCuco = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.mtbTipoTipa = new MetroIntTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.mtbDetaTipa = new MetroTextBox();
    this.mtbCodiTipa = new MetroIntTextBox();
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
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblMotivoBaja);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mtbMotivoBaja);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mtbCodiCuco);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mtbTipoTipa);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mtbDetaTipa);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mtbCodiTipa);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 154);
    this.lblMotivoBaja.AutoSize = false;
    this.lblMotivoBaja.Location = new Point(559, 17);
    this.lblMotivoBaja.Name = "lblMotivoBaja";
    this.lblMotivoBaja.Size = new Size(81, 19);
    this.lblMotivoBaja.TabIndex = 9;
    this.lblMotivoBaja.Text = "Motivo Baja";
    this.lblMotivoBaja.Visible = false;
    this.mtbMotivoBaja.Enabled = false;
    this.mtbMotivoBaja.Location = new Point(503, 52);
    this.mtbMotivoBaja.MaxLength = 120;
    this.mtbMotivoBaja.Name = "mtbMotivoBaja";
    this.mtbMotivoBaja.Size = new Size(191, 23);
    this.mtbMotivoBaja.TabIndex = 8;
    this.mtbMotivoBaja.Visible = false;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(6, 122);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(110, 19);
    this.metroLabel4.TabIndex = 7;
    this.metroLabel4.Text = "Cuenta Contable";
    this.mtbCodiCuco.Enabled = false;
    this.mtbCodiCuco.Location = new Point(124, 122);
    this.mtbCodiCuco.MaxLength = 20;
    this.mtbCodiCuco.Name = "mtbCodiCuco";
    this.mtbCodiCuco.Size = new Size(156, 23);
    this.mtbCodiCuco.TabIndex = 6;
    this.mtbCodiCuco.KeyPress += new KeyPressEventHandler(this.mtbCodiCuco_KeyPress);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(63 /*0x3F*/, 87);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(53, 19);
    this.metroLabel3.TabIndex = 5;
    this.metroLabel3.Text = "Grupo";
    this.mtbTipoTipa.Enabled = false;
    this.mtbTipoTipa.Location = new Point(124, 87);
    this.mtbTipoTipa.MaxLength = 2;
    this.mtbTipoTipa.MaxValue = 9999;
    this.mtbTipoTipa.Name = "mtbTipoTipa";
    this.mtbTipoTipa.Size = new Size(56, 23);
    this.mtbTipoTipa.TabIndex = 4;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(63 /*0x3F*/, 52);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Detalle";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(63 /*0x3F*/, 17);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Código";
    this.mtbDetaTipa.Enabled = false;
    this.mtbDetaTipa.Location = new Point(124, 52);
    this.mtbDetaTipa.MaxLength = 120;
    this.mtbDetaTipa.Name = "mtbDetaTipa";
    this.mtbDetaTipa.Size = new Size(316, 23);
    this.mtbDetaTipa.TabIndex = 1;
    this.mtbCodiTipa.Enabled = false;
    this.mtbCodiTipa.Location = new Point(124, 17);
    this.mtbCodiTipa.MaxLength = 4;
    this.mtbCodiTipa.MaxValue = 9999;
    this.mtbCodiTipa.Name = "mtbCodiTipa";
    this.mtbCodiTipa.ReadOnly = true;
    this.mtbCodiTipa.Size = new Size(56, 23);
    this.mtbCodiTipa.TabIndex = 0;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailTipoPago);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
