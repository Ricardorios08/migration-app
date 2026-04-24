// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailAdministracionCorreosGUAY
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailAdministracionCorreosGUAY : ABMDetailControl
{
  private ExpAdministracionCorreosGUAY expert = new ExpAdministracionCorreosGUAY();
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroTextBox NombreText;
  private MetroLabel metroLabel3;
  private MetroTextBox CuentaText;
  private MetroComboBox ComboOficina;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox EmailText;

  public detailAdministracionCorreosGUAY()
  {
    this.InitializeComponent();
    this.llenarComboOficina();
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.ComboOficina.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.CuentaText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.NombreText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.EmailText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    AdministracionCorreosGUAY administracionCorreosGuay = (AdministracionCorreosGUAY) enti;
    if (administracionCorreosGuay == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.CuentaText.Text = administracionCorreosGuay.CuenCtct;
      this.NombreText.Text = administracionCorreosGuay.DetaAdwe;
      this.ComboOficina.SelectedIndex = (int) administracionCorreosGuay.CodiOfic;
      this.EmailText.Text = administracionCorreosGuay.EmailAdwe;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new AdministracionCorreosGUAY()
    {
      CodiOfic = (short) this.ComboOficina.SelectedIndex,
      CuenCtct = this.CuentaText.Text,
      DetaAdwe = this.NombreText.Text,
      EmailAdwe = this.EmailText.Text
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.ComboOficina.SelectedIndex == 0)
      stringList.Add("Debe seleccionar oficina");
    if (this.CuentaText.Text.Length == 0)
      stringList.Add("Debe ingresar cuenta");
    if (this.EmailText.Text.Length == 0)
      stringList.Add("Debe ingresar email");
    else if (!this.expert.ValidarEmail(this.EmailText.Text))
      stringList.Add($"El formato del email ingresado {Environment.NewLine} no es válido");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.CuentaText.Text = "";
    this.NombreText.Text = "";
    this.EmailText.Text = "";
    this.ComboOficina.SelectedIndex = 0;
  }

  private void llenarComboOficina()
  {
    this.ComboOficina.Items.Clear();
    this.ComboOficina.ValueMember = "Value";
    this.ComboOficina.DisplayMember = "Text";
    this.ComboOficina.Items.Add((object) new ComboBoxItem("SIN SELECCIONAR", (object) "0"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("INMUEBLE", (object) "1"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("COMERCIO", (object) "2"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("DEUDORES VARIOS", (object) "3"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("CEMENTERIO", (object) "4"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("TRANSITO", (object) "5"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("PUBLICIDAD", (object) "6"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("ANTENA", (object) "7"));
    this.ComboOficina.SelectedIndex = 0;
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
    this.NombreText = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.CuentaText = new MetroTextBox();
    this.ComboOficina = new MetroComboBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.EmailText = new MetroTextBox();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 209);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 209);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.NombreText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.CuentaText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ComboOficina);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel6);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.EmailText);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 176 /*0xB0*/);
    this.NombreText.Location = new Point(108, 87);
    this.NombreText.MaxLength = 100;
    this.NombreText.Name = "NombreText";
    this.NombreText.Size = new Size(367, 23);
    this.NombreText.TabIndex = 2;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(37, 91);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(63 /*0x3F*/, 19);
    this.metroLabel3.TabIndex = 31 /*0x1F*/;
    this.metroLabel3.Text = "Nombre";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.CuentaText.Location = new Point(108, 56);
    this.CuentaText.MaxLength = 11;
    this.CuentaText.Name = "CuentaText";
    this.CuentaText.Size = new Size(153, 23);
    this.CuentaText.TabIndex = 1;
    this.ComboOficina.FormattingEnabled = false;
    this.ComboOficina.Location = new Point(108, 21);
    this.ComboOficina.Name = "ComboOficina";
    this.ComboOficina.Size = new Size(153, 23);
    this.ComboOficina.TabIndex = 0;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(37, 25);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(59, 19);
    this.metroLabel6.TabIndex = 30;
    this.metroLabel6.Text = "Oficina";
    this.metroLabel6.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(47, 125);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(53, 19);
    this.metroLabel2.TabIndex = 29;
    this.metroLabel2.Text = "Email";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(47, 60);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 27;
    this.metroLabel1.Text = "Cuenta";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.EmailText.Location = new Point(108, 121);
    this.EmailText.MaxLength = 100;
    this.EmailText.Name = "EmailText";
    this.EmailText.Size = new Size(367, 23);
    this.EmailText.TabIndex = 3;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailAdministracionCorreosGUAY);
    this.Size = new Size(700, 209);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
