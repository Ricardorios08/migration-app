// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.detailContacto
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
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class detailContacto : ABMDetailControl
{
  private ExpContacto exp;
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel1;
  private MetroTextBox txtCuenta;
  private MetroLabel metroLabel2;
  private MetroComboBox cboOfic;
  private MetroComboBox cboTipoCont;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel4;
  private MetroTextBox txtBajaMoti;
  private MetroLabel lblBajaMoti;
  private MetroTextBox txtDetalle;
  private MetroLabel metroLabel5;
  private MetroEntityBox mebPersona;
  private MetroTextBox EmailText;
  private MetroLabel metroLabel6;

  public detailContacto()
  {
    this.InitializeComponent();
    this.exp = new ExpContacto();
    this.LlenarCboOficina();
    this.LlenarCboTipoCont();
    this.mebPersona.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
    this.mebPersona.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    MetroComboBox cboOfic = this.cboOfic;
    MetroTextBox txtCuenta = this.txtCuenta;
    MetroEntityBox mebPersona = this.mebPersona;
    MetroComboBox cboTipoCont = this.cboTipoCont;
    bool flag1;
    this.txtDetalle.Enabled = flag1 = mode == ActionMode.New || mode == ActionMode.Edit;
    int num1;
    bool flag2 = (num1 = flag1 ? 1 : 0) != 0;
    cboTipoCont.Enabled = num1 != 0;
    int num2;
    bool flag3 = (num2 = flag2 ? 1 : 0) != 0;
    mebPersona.Enabled = num2 != 0;
    int num3;
    bool flag4 = (num3 = flag3 ? 1 : 0) != 0;
    txtCuenta.Enabled = num3 != 0;
    int num4 = flag4 ? 1 : 0;
    cboOfic.Enabled = num4 != 0;
    this.EmailText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.lblBajaMoti.Visible = this.txtBajaMoti.Visible = this.txtBajaMoti.Enabled = mode == ActionMode.Deactivate;
    if (mode == ActionMode.New || mode == ActionMode.Edit)
      this.cboOfic.Focus();
    else if (mode == ActionMode.Deactivate)
      this.txtBajaMoti.Focus();
    if (mode != ActionMode.New)
      return;
    this.cboTipoCont.SelectedIndex = 1;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    Contacto contacto = (Contacto) enti;
    if (contacto == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.cboOfic.SelectedValue = (object) contacto.CodiOfic;
      this.txtCuenta.Text = contacto.CuenCtct;
      this.mebPersona.Entity = (Entity) this.EM.Get<Persona>(new ID("CucuPers", (object) contacto.CucuPers));
      this.cboTipoCont.SelectedValue = (object) contacto.CodiTico;
      this.txtDetalle.Text = contacto.DetaCont;
      this.EmailText.Text = contacto.Email;
    }
  }

  protected override Entity LoadEntity()
  {
    Contacto contacto = new Contacto();
    contacto.CodiOfic = (short) this.cboOfic.SelectedValue;
    contacto.CuenCtct = this.txtCuenta.Text.Trim();
    contacto.CucuPers = ((Persona) this.mebPersona.Entity).CucuPers;
    contacto.CodiTico = (short) this.cboTipoCont.SelectedValue;
    contacto.DetaCont = this.txtDetalle.Text.Trim();
    contacto.Email = this.EmailText.Text.Trim();
    if (this.CurrentMode == ActionMode.Deactivate)
      contacto.BajaMoti = this.txtBajaMoti.Text.Trim();
    return (Entity) contacto;
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (string.IsNullOrEmpty(this.txtCuenta.Text.Trim()))
      stringList.Add("Ingresar cuenta.");
    else if (!this.exp.ExisteCuenta((short) this.cboOfic.SelectedValue, this.txtCuenta.Text.Trim()))
      stringList.Add("La cuenta ingresada no existe.");
    if (this.mebPersona.Entity == null)
      stringList.Add("Ingresar CUIL/CUIT");
    if ((this.CurrentMode == ActionMode.New || this.CurrentMode == ActionMode.Edit) && string.IsNullOrEmpty(this.txtDetalle.Text.Trim()))
      stringList.Add("Ingresar detalle.");
    else if (this.CurrentMode == ActionMode.Deactivate && string.IsNullOrEmpty(this.txtBajaMoti.Text.Trim()))
      stringList.Add("Ingresar motivo de baja.");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.cboOfic.SelectedIndex = this.cboTipoCont.SelectedIndex = 0;
    this.txtCuenta.Text = this.txtBajaMoti.Text = this.txtDetalle.Text = this.EmailText.Text = string.Empty;
    this.mebPersona.Entity = (Entity) null;
  }

  private void LlenarCboOficina()
  {
    this.cboOfic.Items.Clear();
    this.cboOfic.DisplayMember = "Text";
    this.cboOfic.ValueMember = "Value";
    this.cboOfic.DataSource = (object) this.exp.ObtenerOficinas();
    if (this.cboOfic.Items.Count <= 0)
      return;
    this.cboOfic.SelectedIndex = 0;
  }

  private void LlenarCboTipoCont()
  {
    this.cboTipoCont.Items.Clear();
    this.cboTipoCont.DisplayMember = "Text";
    this.cboTipoCont.ValueMember = "Value";
    this.cboTipoCont.DataSource = (object) this.exp.ObtenerTipoContacto();
    if (this.cboTipoCont.Items.Count <= 0)
      return;
    this.cboTipoCont.SelectedIndex = 0;
  }

  private Filter filtroPersona(string text)
  {
    if (!Misc.IsNumeric(text))
      return new Filter()
      {
        Items = {
          new FilterItem("DetaPers", "Nombre", FilterMode.Contains, text)
        }
      };
    return new Filter()
    {
      Items = {
        new FilterItem("CucuPers", "Cuit/Cuil", FilterMode.StartsWith, text)
      }
    };
  }

  private Entity EncontrarPersona(string text, bool usarBuscar)
  {
    return (Entity) this.EM.Find<Persona>(this.filtroPersona(text), true, true);
  }

  private Entity BuscarPersona(string text)
  {
    return (Entity) this.EM.Search<Persona>(this.filtroPersona(text), true);
  }

  private void cboTipoCont_SelectedIndexChanged(object sender, EventArgs e)
  {
    if (this.CurrentMode != ActionMode.New && this.CurrentMode != ActionMode.Edit)
      return;
    if ((short) this.cboTipoCont.SelectedValue == (short) 20)
      this.EmailText.Enabled = true;
    else
      this.EmailText.Enabled = false;
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
    this.mebPersona = new MetroEntityBox();
    this.metroLabel5 = new MetroLabel();
    this.txtDetalle = new MetroTextBox();
    this.txtBajaMoti = new MetroTextBox();
    this.lblBajaMoti = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.cboTipoCont = new MetroComboBox();
    this.metroLabel3 = new MetroLabel();
    this.txtCuenta = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.cboOfic = new MetroComboBox();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 278);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 278);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.EmailText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel6);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mebPersona);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel5);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.txtDetalle);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.txtBajaMoti);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblBajaMoti);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.cboTipoCont);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.txtCuenta);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.cboOfic);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 245);
    this.mebPersona.AllowEmpty = false;
    this.mebPersona.AllowSqlCharacters = false;
    this.mebPersona.BackColor = Color.White;
    this.mebPersona.Entity = (Entity) null;
    this.mebPersona.ExternalValidation = (Func<string>) null;
    this.mebPersona.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebPersona.LabelText = "";
    this.mebPersona.Location = new Point(120, 53);
    this.mebPersona.MandatoryWrite = false;
    this.mebPersona.Margin = new Padding(3, 4, 3, 4);
    this.mebPersona.MaximumSize = new Size(3000, 23);
    this.mebPersona.MaxLenght = 50;
    this.mebPersona.MinimumSize = new Size(100, 23);
    this.mebPersona.Name = "mebPersona";
    this.mebPersona.PropertyDetail = "DetaPers";
    this.mebPersona.PropertyID = "CucuPers";
    this.mebPersona.ShowNewButton = false;
    this.mebPersona.ShowSearchButton = false;
    this.mebPersona.Size = new Size(566, 23);
    this.mebPersona.TabIndex = 2;
    this.mebPersona.TextAlign = HorizontalAlignment.Left;
    this.mebPersona.TextBoxWidth = 120;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(28, 53);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(80 /*0x50*/, 19);
    this.metroLabel5.TabIndex = 9;
    this.metroLabel5.Text = "CUIL / CUIT";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.txtDetalle.Location = new Point(120, 117);
    this.txtDetalle.MaxLength = 500;
    this.txtDetalle.Multiline = true;
    this.txtDetalle.Name = "txtDetalle";
    this.txtDetalle.Size = new Size(566, 75);
    this.txtDetalle.TabIndex = 5;
    this.txtBajaMoti.Location = new Point(120, 204);
    this.txtBajaMoti.MaxLength = 50;
    this.txtBajaMoti.Name = "txtBajaMoti";
    this.txtBajaMoti.Size = new Size(566, 23);
    this.txtBajaMoti.TabIndex = 6;
    this.lblBajaMoti.AutoSize = false;
    this.lblBajaMoti.Location = new Point(28, 204);
    this.lblBajaMoti.Name = "lblBajaMoti";
    this.lblBajaMoti.Size = new Size(80 /*0x50*/, 19);
    this.lblBajaMoti.TabIndex = 7;
    this.lblBajaMoti.Text = "Motivo Baja";
    this.lblBajaMoti.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(15, 117);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(93, 19);
    this.metroLabel4.TabIndex = 6;
    this.metroLabel4.Text = "Detalle";
    this.metroLabel4.TextAlign = ContentAlignment.MiddleRight;
    this.cboTipoCont.FormattingEnabled = false;
    this.cboTipoCont.Location = new Point(120, 86);
    this.cboTipoCont.Name = "cboTipoCont";
    this.cboTipoCont.Size = new Size(145, 23);
    this.cboTipoCont.TabIndex = 3;
    this.cboTipoCont.SelectedIndexChanged += new EventHandler(this.cboTipoCont_SelectedIndexChanged);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(15, 86);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(93, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Tipo Contacto";
    this.metroLabel3.TextAlign = ContentAlignment.MiddleRight;
    this.txtCuenta.Location = new Point(381, 20);
    this.txtCuenta.MaxLength = 11;
    this.txtCuenta.Name = "txtCuenta";
    this.txtCuenta.Size = new Size(114, 23);
    this.txtCuenta.TabIndex = 1;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(300, 20);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(69, 19);
    this.metroLabel2.TabIndex = 2;
    this.metroLabel2.Text = "Cuenta";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleRight;
    this.cboOfic.FormattingEnabled = false;
    this.cboOfic.Location = new Point(120, 20);
    this.cboOfic.Name = "cboOfic";
    this.cboOfic.Size = new Size(145, 23);
    this.cboOfic.TabIndex = 0;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(39, 20);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(69, 19);
    this.metroLabel1.TabIndex = 0;
    this.metroLabel1.Text = "Oficina";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(277, 90);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(44, 19);
    this.metroLabel6.TabIndex = 52;
    this.metroLabel6.Text = "Email";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.EmailText.Location = new Point(333, 86);
    this.EmailText.MaxLength = 300;
    this.EmailText.Name = "EmailText";
    this.EmailText.Size = new Size(353, 23);
    this.EmailText.TabIndex = 4;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailContacto);
    this.Size = new Size(700, 278);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
