// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmProveedor
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmProveedor : EntityForm<Proveedor>
{
  private MetroTabControl metroTabControl1;
  private MetroTabPage mtabDatos;
  private MetroPanel panelDatos;
  private MetroMaskedTextBox CucuPersMsk;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel2;
  private MetroTextBox DetaPersText;
  private MetroLabel metroLabel6;
  private MetroComboBox CodiTidoCbo;
  private MetroLabel metroLabel9;
  private MetroMaskedTextBox NudoPersMsk;
  private MetroTextBox txtRazonSocial;
  private MetroLabel metroLabel1;
  private MetroRadioButton SemaPersRb;
  private MetroRadioButton SefePersRb;
  private MetroLabel metroLabel5;
  private MetroDateTextBox FenaPersDate;
  private MetroLabel metroLabel11;
  private MetroTextBox MailPersText;
  private MetroIntTextBox textboxCbu;
  private MetroLabel lableCbu;
  public ExpProveedor expert = new ExpProveedor();

  public abmProveedor()
    : base("Proveedor")
  {
    this.InitializeComponent();
  }

  private void InitializeComponent()
  {
    this.metroTabControl1 = new MetroTabControl();
    this.mtabDatos = new MetroTabPage();
    this.panelDatos = new MetroPanel();
    this.textboxCbu = new MetroIntTextBox();
    this.lableCbu = new MetroLabel();
    this.FenaPersDate = new MetroDateTextBox();
    this.metroLabel11 = new MetroLabel();
    this.SemaPersRb = new MetroRadioButton();
    this.SefePersRb = new MetroRadioButton();
    this.metroLabel5 = new MetroLabel();
    this.txtRazonSocial = new MetroTextBox();
    this.metroLabel1 = new MetroLabel();
    this.CucuPersMsk = new MetroMaskedTextBox();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.DetaPersText = new MetroTextBox();
    this.metroLabel6 = new MetroLabel();
    this.CodiTidoCbo = new MetroComboBox();
    this.metroLabel9 = new MetroLabel();
    this.NudoPersMsk = new MetroMaskedTextBox();
    this.MailPersText = new MetroTextBox();
    this.metroTabControl1.SuspendLayout();
    this.mtabDatos.SuspendLayout();
    this.panelDatos.SuspendLayout();
    this.SuspendLayout();
    this.metroTabControl1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.metroTabControl1.Controls.Add((Control) this.mtabDatos);
    this.metroTabControl1.Location = new Point(7, 57);
    this.metroTabControl1.Name = "metroTabControl1";
    this.metroTabControl1.Size = new Size(718, 322);
    this.metroTabControl1.TabIndex = 9;
    this.mtabDatos.Controls.Add((Control) this.panelDatos);
    this.mtabDatos.Location = new Point(4, 35);
    this.mtabDatos.Name = "mtabDatos";
    this.mtabDatos.Size = new Size(710, 283);
    this.mtabDatos.TabIndex = 0;
    this.mtabDatos.Text = "Datos";
    this.panelDatos.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.panelDatos.Controls.Add((Control) this.textboxCbu);
    this.panelDatos.Controls.Add((Control) this.lableCbu);
    this.panelDatos.Controls.Add((Control) this.FenaPersDate);
    this.panelDatos.Controls.Add((Control) this.metroLabel11);
    this.panelDatos.Controls.Add((Control) this.SemaPersRb);
    this.panelDatos.Controls.Add((Control) this.SefePersRb);
    this.panelDatos.Controls.Add((Control) this.metroLabel5);
    this.panelDatos.Controls.Add((Control) this.txtRazonSocial);
    this.panelDatos.Controls.Add((Control) this.metroLabel1);
    this.panelDatos.Controls.Add((Control) this.CucuPersMsk);
    this.panelDatos.Controls.Add((Control) this.metroLabel3);
    this.panelDatos.Controls.Add((Control) this.metroLabel2);
    this.panelDatos.Controls.Add((Control) this.DetaPersText);
    this.panelDatos.Controls.Add((Control) this.metroLabel6);
    this.panelDatos.Controls.Add((Control) this.CodiTidoCbo);
    this.panelDatos.Controls.Add((Control) this.metroLabel9);
    this.panelDatos.Controls.Add((Control) this.NudoPersMsk);
    this.panelDatos.Controls.Add((Control) this.MailPersText);
    this.panelDatos.Location = new Point(6, 3);
    this.panelDatos.Name = "panelDatos";
    this.panelDatos.Size = new Size(674, 277);
    this.panelDatos.TabIndex = 23;
    this.textboxCbu.Location = new Point(166, 161);
    this.textboxCbu.Name = "textboxCbu";
    this.textboxCbu.Size = new Size(450, 23);
    this.textboxCbu.TabIndex = 30;
    this.lableCbu.AutoSize = false;
    this.lableCbu.Location = new Point(125, 161);
    this.lableCbu.Margin = new Padding(3, 4, 3, 4);
    this.lableCbu.Name = "lableCbu";
    this.lableCbu.Size = new Size(35, 19);
    this.lableCbu.TabIndex = 29;
    this.lableCbu.Text = "CBU";
    this.FenaPersDate.AllowEmpty = true;
    this.FenaPersDate.Location = new Point(170, 242);
    this.FenaPersDate.Margin = new Padding(3, 4, 3, 4);
    this.FenaPersDate.MaxDate = new DateTime(9999, 12, 31 /*0x1F*/, 23, 59, 59, 999);
    this.FenaPersDate.Name = "FenaPersDate";
    this.FenaPersDate.Size = new Size(90, 25);
    this.FenaPersDate.TabIndex = 6;
    this.FenaPersDate.Visible = false;
    this.metroLabel11.AutoSize = false;
    this.metroLabel11.Location = new Point(46, 242);
    this.metroLabel11.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel11.Name = "metroLabel11";
    this.metroLabel11.Size = new Size(114, 19);
    this.metroLabel11.TabIndex = 27;
    this.metroLabel11.Text = "Fecha Nacimiento";
    this.metroLabel11.Visible = false;
    this.SemaPersRb.AutoSize = false;
    this.SemaPersRb.Location = new Point(252, 48 /*0x30*/);
    this.SemaPersRb.Margin = new Padding(3, 4, 3, 4);
    this.SemaPersRb.Name = "SemaPersRb";
    this.SemaPersRb.Size = new Size(78, 15);
    this.SemaPersRb.TabIndex = 2;
    this.SemaPersRb.Text = "Masculino";
    this.SemaPersRb.Visible = false;
    this.SefePersRb.AutoSize = false;
    this.SefePersRb.Checked = true;
    this.SefePersRb.Location = new Point(170, 48 /*0x30*/);
    this.SefePersRb.Margin = new Padding(3, 4, 3, 4);
    this.SefePersRb.Name = "SefePersRb";
    this.SefePersRb.Size = new Size(76, 15);
    this.SefePersRb.TabIndex = 1;
    this.SefePersRb.TabStop = true;
    this.SefePersRb.Text = "Femenino";
    this.SefePersRb.Visible = false;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(123, 44);
    this.metroLabel5.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(37, 19);
    this.metroLabel5.TabIndex = 25;
    this.metroLabel5.Text = "Sexo";
    this.metroLabel5.Visible = false;
    this.txtRazonSocial.Location = new Point(166, 99);
    this.txtRazonSocial.Margin = new Padding(3, 4, 3, 4);
    this.txtRazonSocial.Name = "txtRazonSocial";
    this.txtRazonSocial.Size = new Size(450, 23);
    this.txtRazonSocial.TabIndex = 4;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(77, 103);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(83, 19);
    this.metroLabel1.TabIndex = 22;
    this.metroLabel1.Text = "Razon Social";
    this.CucuPersMsk.CompleteMaskRequired = true;
    this.CucuPersMsk.Location = new Point(166, 130);
    this.CucuPersMsk.Margin = new Padding(3, 4, 3, 4);
    this.CucuPersMsk.Mask = "00-00000000-0";
    this.CucuPersMsk.Name = "CucuPersMsk";
    this.CucuPersMsk.Size = new Size(115, 23);
    this.CucuPersMsk.TabIndex = 5;
    this.CucuPersMsk.Text = "0";
    this.CucuPersMsk.TextAlign = HorizontalAlignment.Center;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(38, 72);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(122, 19);
    this.metroLabel3.TabIndex = 21;
    this.metroLabel3.Text = "Apellido y Nombre";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(101, 134);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(59, 19);
    this.metroLabel2.TabIndex = 5;
    this.metroLabel2.Text = "Cuit/Cuil";
    this.DetaPersText.Location = new Point(166, 68);
    this.DetaPersText.Margin = new Padding(3, 4, 3, 4);
    this.DetaPersText.MaxLength = 70;
    this.DetaPersText.Name = "DetaPersText";
    this.DetaPersText.Size = new Size(450, 23);
    this.DetaPersText.TabIndex = 3;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(83, 21);
    this.metroLabel6.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(77, 19);
    this.metroLabel6.TabIndex = 7;
    this.metroLabel6.Text = "Documento";
    this.metroLabel6.Visible = false;
    this.CodiTidoCbo.FormattingEnabled = false;
    this.CodiTidoCbo.Location = new Point(166, 17);
    this.CodiTidoCbo.Margin = new Padding(3, 4, 3, 4);
    this.CodiTidoCbo.Name = "CodiTidoCbo";
    this.CodiTidoCbo.Size = new Size(80 /*0x50*/, 23);
    this.CodiTidoCbo.TabIndex = 0;
    this.CodiTidoCbo.Visible = false;
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(113, 194);
    this.metroLabel9.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(47, 19);
    this.metroLabel9.TabIndex = 15;
    this.metroLabel9.Text = "E-Mail";
    this.NudoPersMsk.Location = new Point(252, 17);
    this.NudoPersMsk.Margin = new Padding(3, 4, 3, 4);
    this.NudoPersMsk.Mask = "90.000.000";
    this.NudoPersMsk.Name = "NudoPersMsk";
    this.NudoPersMsk.Size = new Size(94, 23);
    this.NudoPersMsk.TabIndex = 0;
    this.NudoPersMsk.Text = "0";
    this.NudoPersMsk.TextAlign = HorizontalAlignment.Right;
    this.NudoPersMsk.Visible = false;
    this.MailPersText.AllowEmpty = true;
    this.MailPersText.Location = new Point(166, 194);
    this.MailPersText.Margin = new Padding(3, 4, 3, 4);
    this.MailPersText.MaxLength = 200;
    this.MailPersText.Name = "MailPersText";
    this.MailPersText.Size = new Size(450, 23);
    this.MailPersText.TabIndex = 7;
    this.ClientSize = new Size(754, 414);
    this.Controls.Add((Control) this.metroTabControl1);
    this.Name = nameof (abmProveedor);
    this.Controls.SetChildIndex((Control) this.metroTabControl1, 0);
    this.metroTabControl1.ResumeLayout(false);
    this.mtabDatos.ResumeLayout(false);
    this.panelDatos.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CucuPersMsk.Enabled = true;
    this.panelDatos.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.CucuPersMsk.Enabled = mode == ActionMode.New;
    this.NudoPersMsk.Enabled = mode == ActionMode.New;
    this.CodiTidoCbo.Enabled = mode == ActionMode.New;
    this.SefePersRb.Enabled = mode == ActionMode.New;
    this.SemaPersRb.Enabled = mode == ActionMode.New;
    this.DetaPersText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.txtRazonSocial.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.FenaPersDate.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.MailPersText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
    if (!firstTime)
      return;
    this.llenarComboTipoDocumento();
  }

  protected override bool isDataValid()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.windowMode == ActionMode.New)
      stringBuilder.Append(this.validarCuil());
    if (!this.DetaPersText.IsValid)
      stringBuilder.AppendLine("Apellido y Nombre incorrecto.");
    if (!this.NudoPersMsk.IsValid)
      stringBuilder.AppendLine("Número de documento incorrecto.");
    if (!this.MailPersText.IsValid)
      stringBuilder.AppendLine("Mail incorrecto.");
    if (this.CucuPersMsk.LongText == 0L)
      stringBuilder.AppendLine("Cuit incorrecto");
    if (!string.IsNullOrWhiteSpace(this.textboxCbu.Text) && this.textboxCbu.Text.Length != 22)
      stringBuilder.AppendLine("CBU incorrecto");
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length == 0;
  }

  protected override void readData()
  {
    this.enti.CucuPers = this.CucuPersMsk.LongText;
    this.enti.DetaProv = this.DetaPersText.Text;
    this.enti.persona.SexoPers = this.SemaPersRb.Checked;
    this.enti.FantProv = this.txtRazonSocial.Text;
    this.enti.persona.NudoPers = this.NudoPersMsk.IntText;
    this.enti.persona.FenaPers = this.FenaPersDate.Date;
    this.enti.persona.MailPers = this.MailPersText.Text;
    this.enti.persona.CodiTido = ((TipoDocumento) this.CodiTidoCbo.SelectedItem).CodiTido;
    this.enti.CubaProv = this.textboxCbu.Text;
  }

  protected override void showData()
  {
    this.CucuPersMsk.LongText = this.enti.CucuPers;
    this.DetaPersText.Text = this.enti.DetaProv;
    this.txtRazonSocial.Text = this.enti.FantProv;
    this.NudoPersMsk.Text = this.enti.persona.NudoPers.ToString();
    this.MailPersText.Text = this.enti.persona.MailPers;
    this.FenaPersDate.Date = this.enti.persona.FenaPers;
    this.SefePersRb.Checked = !this.enti.persona.SexoPers;
    this.SemaPersRb.Checked = this.enti.persona.SexoPers;
    this.CodiTidoCbo.SelectedValue = (object) this.enti.persona.CodiTido.ToString();
    this.textboxCbu.Text = this.enti.CubaProv;
  }

  public string validarCuil()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.expert.existeProveedor(this.CucuPersMsk.LongText))
      stringBuilder.AppendLine("El Cuit/Cuil ingresado ya existe en la base de datos");
    return stringBuilder.ToString();
  }

  private void llenarComboTipoDocumento()
  {
    this.CodiTidoCbo.Items.Clear();
    this.CodiTidoCbo.DisplayMember = "DetaTido";
    this.CodiTidoCbo.ValueMember = "CodiTido";
    this.CodiTidoCbo.Items.AddRange((object[]) new ExpTipoDocumento().getListTiposDocumento().ToArray());
    if (this.CodiTidoCbo.Items.Count <= 0)
      return;
    this.CodiTidoCbo.SelectedIndex = 0;
  }
}
