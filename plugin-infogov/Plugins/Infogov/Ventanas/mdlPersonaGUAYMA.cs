// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.mdlPersonaGUAYMA
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class mdlPersonaGUAYMA : InfoGovModalForm
{
  private MetroRadioButton SemaPersRb;
  private MetroRadioButton SefePersRb;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel6;
  private MetroComboBox CodiTidoCbo;
  private MetroMaskedTextBox NudoPersMsk;
  private MetroMaskedTextBox CucuPersMsk;
  private MetroCheckBox JuriPersChk;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel2;
  private MetroTextBox DetaPersText;
  private MetroLabel metroLabel4;
  private MetroDateTextBox FenaPersDate;
  private MetroLabel metroLabel11;
  private MetroLabel metroLabel9;
  private MetroTextBox MailPersText;
  private MetroLabel metroLabel7;
  private MetroLabel metroLabel1;
  private MetroTextBox txtTelefono;
  private MetroLabel metroLabel8;
  private MetroLabel metroLabel10;
  private MetroTextBox txtCelular;
  private MetroTextBox txtFax;
  private MetroLabel metroLabel12;
  private MetroComboBox ComboFiscal;
  private MetroPanel metroPanel2;
  private SimpleButton btnGenerar;
  private MetroLabel metroLabel21;
  private MetroButton btnAceptar;
  private MetroButton btnCancelar;
  private MetroComboBox CodiEsciCbo;
  private bool loading = false;

  public mdlPersonaGUAYMA()
    : base()
  {
    this.InitializeComponent();
  }

  private void InitializeComponent()
  {
    this.SemaPersRb = new MetroRadioButton();
    this.SefePersRb = new MetroRadioButton();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
    this.CodiTidoCbo = new MetroComboBox();
    this.NudoPersMsk = new MetroMaskedTextBox();
    this.CucuPersMsk = new MetroMaskedTextBox();
    this.JuriPersChk = new MetroCheckBox();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.DetaPersText = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.FenaPersDate = new MetroDateTextBox();
    this.metroLabel11 = new MetroLabel();
    this.metroLabel9 = new MetroLabel();
    this.MailPersText = new MetroTextBox();
    this.metroLabel7 = new MetroLabel();
    this.CodiEsciCbo = new MetroComboBox();
    this.metroLabel1 = new MetroLabel();
    this.txtTelefono = new MetroTextBox();
    this.metroLabel8 = new MetroLabel();
    this.metroLabel10 = new MetroLabel();
    this.txtCelular = new MetroTextBox();
    this.txtFax = new MetroTextBox();
    this.metroLabel12 = new MetroLabel();
    this.ComboFiscal = new MetroComboBox();
    this.metroPanel2 = new MetroPanel();
    this.btnGenerar = new SimpleButton();
    this.metroLabel21 = new MetroLabel();
    this.btnAceptar = new MetroButton();
    this.btnCancelar = new MetroButton();
    this.metroPanel2.SuspendLayout();
    this.SuspendLayout();
    this.SemaPersRb.AutoSize = false;
    this.SemaPersRb.Location = new Point(246, 19);
    this.SemaPersRb.Margin = new Padding(3, 4, 3, 4);
    this.SemaPersRb.Name = "SemaPersRb";
    this.SemaPersRb.Size = new Size(78, 15);
    this.SemaPersRb.TabIndex = 1;
    this.SemaPersRb.Text = "Masculino";
    this.SefePersRb.AutoSize = false;
    this.SefePersRb.Checked = true;
    this.SefePersRb.Location = new Point(158, 18);
    this.SefePersRb.Margin = new Padding(3, 4, 3, 4);
    this.SefePersRb.Name = "SefePersRb";
    this.SefePersRb.Size = new Size(76, 15);
    this.SefePersRb.TabIndex = 0;
    this.SefePersRb.TabStop = true;
    this.SefePersRb.Text = "Femenino";
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(102, 22);
    this.metroLabel5.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(37, 19);
    this.metroLabel5.TabIndex = 56;
    this.metroLabel5.Text = "Sexo";
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(62, 49);
    this.metroLabel6.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(77, 19);
    this.metroLabel6.TabIndex = 57;
    this.metroLabel6.Text = "Documento";
    this.CodiTidoCbo.FormattingEnabled = false;
    this.CodiTidoCbo.Location = new Point(158, 45);
    this.CodiTidoCbo.Margin = new Padding(3, 4, 3, 4);
    this.CodiTidoCbo.Name = "CodiTidoCbo";
    this.CodiTidoCbo.Size = new Size(80 /*0x50*/, 23);
    this.CodiTidoCbo.TabIndex = 2;
    this.NudoPersMsk.Location = new Point(244, 45);
    this.NudoPersMsk.Margin = new Padding(3, 4, 3, 4);
    this.NudoPersMsk.Mask = "90.000.000";
    this.NudoPersMsk.Name = "NudoPersMsk";
    this.NudoPersMsk.Size = new Size(94, 23);
    this.NudoPersMsk.TabIndex = 3;
    this.NudoPersMsk.TextAlign = HorizontalAlignment.Right;
    this.CucuPersMsk.CompleteMaskRequired = true;
    this.CucuPersMsk.Enabled = false;
    this.CucuPersMsk.Location = new Point(158, 78);
    this.CucuPersMsk.Margin = new Padding(3, 4, 3, 4);
    this.CucuPersMsk.Mask = "00-00000000-0";
    this.CucuPersMsk.Name = "CucuPersMsk";
    this.CucuPersMsk.Size = new Size(115, 23);
    this.CucuPersMsk.TabIndex = 4;
    this.CucuPersMsk.TextAlign = HorizontalAlignment.Center;
    this.JuriPersChk.AutoSize = false;
    this.JuriPersChk.Location = new Point(158, 143);
    this.JuriPersChk.Margin = new Padding(3, 4, 3, 4);
    this.JuriPersChk.Name = "JuriPersChk";
    this.JuriPersChk.Size = new Size(29, 19);
    this.JuriPersChk.TabIndex = 6;
    this.JuriPersChk.Text = " ";
    this.JuriPersChk.CheckedChanged += new EventHandler(this.JuriPersChk_CheckedChanged);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(17, 115);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(122, 19);
    this.metroLabel3.TabIndex = 55;
    this.metroLabel3.Text = "Apellido y Nombre";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(80 /*0x50*/, 82);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(59, 19);
    this.metroLabel2.TabIndex = 45;
    this.metroLabel2.Text = "Cuit/Cuil";
    this.DetaPersText.Location = new Point(158, 111);
    this.DetaPersText.Margin = new Padding(3, 4, 3, 4);
    this.DetaPersText.MaxLength = 100;
    this.DetaPersText.Name = "DetaPersText";
    this.DetaPersText.Size = new Size(447, 23);
    this.DetaPersText.TabIndex = 5;
    this.DetaPersText.KeyPress += new KeyPressEventHandler(this.DetaPersText_KeyPress);
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(38, 143);
    this.metroLabel4.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(101, 19);
    this.metroLabel4.TabIndex = 43;
    this.metroLabel4.Text = "Persona jurídica";
    this.FenaPersDate.Location = new Point(158, 170);
    this.FenaPersDate.Margin = new Padding(3, 4, 3, 4);
    this.FenaPersDate.MaxDate = new DateTime(9999, 12, 31 /*0x1F*/, 23, 59, 59, 999);
    this.FenaPersDate.MinDate = new DateTime(1910, 1, 1, 0, 0, 0, 0);
    this.FenaPersDate.Name = "FenaPersDate";
    this.FenaPersDate.Size = new Size(90, 25);
    this.FenaPersDate.TabIndex = 8;
    this.metroLabel11.AutoSize = false;
    this.metroLabel11.Location = new Point(24, 176 /*0xB0*/);
    this.metroLabel11.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel11.Name = "metroLabel11";
    this.metroLabel11.Size = new Size(114, 19);
    this.metroLabel11.TabIndex = 54;
    this.metroLabel11.Text = "Fecha Nacimiento";
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(91, 238);
    this.metroLabel9.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(47, 19);
    this.metroLabel9.TabIndex = 53;
    this.metroLabel9.Text = "E-Mail";
    this.MailPersText.AllowEmpty = true;
    this.MailPersText.Location = new Point(158, 234);
    this.MailPersText.Margin = new Padding(3, 4, 3, 4);
    this.MailPersText.MaxLength = 200;
    this.MailPersText.Name = "MailPersText";
    this.MailPersText.Size = new Size(447, 23);
    this.MailPersText.TabIndex = 13;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(271, 174);
    this.metroLabel7.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(76, 19);
    this.metroLabel7.TabIndex = 51;
    this.metroLabel7.Text = "Estado Civil";
    this.CodiEsciCbo.FormattingEnabled = false;
    this.CodiEsciCbo.Location = new Point(353, 172);
    this.CodiEsciCbo.Margin = new Padding(3, 4, 3, 4);
    this.CodiEsciCbo.Name = "CodiEsciCbo";
    this.CodiEsciCbo.Size = new Size(180, 23);
    this.CodiEsciCbo.TabIndex = 9;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(80 /*0x50*/, 207);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(58, 19);
    this.metroLabel1.TabIndex = 59;
    this.metroLabel1.Text = "Telefono";
    this.txtTelefono.AllowEmpty = true;
    this.txtTelefono.Location = new Point(158, 205);
    this.txtTelefono.Name = "txtTelefono";
    this.txtTelefono.Size = new Size(101, 23);
    this.txtTelefono.TabIndex = 10;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(271, 209);
    this.metroLabel8.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(50, 19);
    this.metroLabel8.TabIndex = 61;
    this.metroLabel8.Text = "Celular";
    this.metroLabel10.AutoSize = false;
    this.metroLabel10.Location = new Point(440, 209);
    this.metroLabel10.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(28, 19);
    this.metroLabel10.TabIndex = 62;
    this.metroLabel10.Text = "Fax";
    this.txtCelular.AllowEmpty = true;
    this.txtCelular.Location = new Point(330, 205);
    this.txtCelular.Name = "txtCelular";
    this.txtCelular.Size = new Size(101, 23);
    this.txtCelular.TabIndex = 11;
    this.txtFax.AllowEmpty = true;
    this.txtFax.Location = new Point(477, 205);
    this.txtFax.Name = "txtFax";
    this.txtFax.Size = new Size(101, 23);
    this.txtFax.TabIndex = 12;
    this.metroLabel12.AutoSize = false;
    this.metroLabel12.Location = new Point(182, 142);
    this.metroLabel12.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel12.Name = "metroLabel12";
    this.metroLabel12.Size = new Size(91, 19);
    this.metroLabel12.TabIndex = 65;
    this.metroLabel12.Text = "Posición Fiscal";
    this.ComboFiscal.FormattingEnabled = false;
    this.ComboFiscal.Location = new Point(290, 139);
    this.ComboFiscal.Margin = new Padding(3, 4, 3, 4);
    this.ComboFiscal.Name = "ComboFiscal";
    this.ComboFiscal.Size = new Size(243, 23);
    this.ComboFiscal.TabIndex = 7;
    this.metroPanel2.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel2.Controls.Add((Control) this.btnGenerar);
    this.metroPanel2.Controls.Add((Control) this.ComboFiscal);
    this.metroPanel2.Controls.Add((Control) this.metroLabel5);
    this.metroPanel2.Controls.Add((Control) this.metroLabel12);
    this.metroPanel2.Controls.Add((Control) this.CodiEsciCbo);
    this.metroPanel2.Controls.Add((Control) this.txtFax);
    this.metroPanel2.Controls.Add((Control) this.metroLabel7);
    this.metroPanel2.Controls.Add((Control) this.txtCelular);
    this.metroPanel2.Controls.Add((Control) this.MailPersText);
    this.metroPanel2.Controls.Add((Control) this.metroLabel10);
    this.metroPanel2.Controls.Add((Control) this.metroLabel9);
    this.metroPanel2.Controls.Add((Control) this.metroLabel8);
    this.metroPanel2.Controls.Add((Control) this.metroLabel11);
    this.metroPanel2.Controls.Add((Control) this.txtTelefono);
    this.metroPanel2.Controls.Add((Control) this.FenaPersDate);
    this.metroPanel2.Controls.Add((Control) this.metroLabel1);
    this.metroPanel2.Controls.Add((Control) this.metroLabel4);
    this.metroPanel2.Controls.Add((Control) this.DetaPersText);
    this.metroPanel2.Controls.Add((Control) this.SemaPersRb);
    this.metroPanel2.Controls.Add((Control) this.metroLabel2);
    this.metroPanel2.Controls.Add((Control) this.SefePersRb);
    this.metroPanel2.Controls.Add((Control) this.metroLabel3);
    this.metroPanel2.Controls.Add((Control) this.JuriPersChk);
    this.metroPanel2.Controls.Add((Control) this.metroLabel6);
    this.metroPanel2.Controls.Add((Control) this.CucuPersMsk);
    this.metroPanel2.Controls.Add((Control) this.CodiTidoCbo);
    this.metroPanel2.Controls.Add((Control) this.NudoPersMsk);
    this.metroPanel2.Location = new Point(32 /*0x20*/, 33);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.Size = new Size(632, 272);
    this.metroPanel2.TabIndex = 1;
    ((BaseButton) this.btnGenerar).ButtonStyle = (BorderStyles) 3;
    ((Control) this.btnGenerar).Location = new Point(280, 78);
    ((Control) this.btnGenerar).Name = "btnGenerar";
    ((Control) this.btnGenerar).Size = new Size(75, 23);
    ((Control) this.btnGenerar).TabIndex = 4;
    ((Control) this.btnGenerar).Text = "Generar";
    ((Control) this.btnGenerar).Click += new EventHandler(this.linkGenerar_Click);
    this.metroLabel21.AutoSize = false;
    this.metroLabel21.FontSize = 16f;
    this.metroLabel21.FontWeight = MetroFontWeight.Bold;
    this.metroLabel21.Location = new Point(57, 5);
    this.metroLabel21.Name = "metroLabel21";
    this.metroLabel21.Size = new Size(125, 21);
    this.metroLabel21.TabIndex = 85;
    this.metroLabel21.Text = "Nueva Persona";
    this.btnAceptar.Location = new Point(206, 314);
    this.btnAceptar.Name = "btnAceptar";
    this.btnAceptar.Size = new Size(75, 23);
    this.btnAceptar.TabIndex = 86;
    this.btnAceptar.Text = "Aceptar";
    this.btnAceptar.Click += new EventHandler(this.btnAceptar_Click);
    this.btnCancelar.Location = new Point(343, 314);
    this.btnCancelar.Name = "btnCancelar";
    this.btnCancelar.Size = new Size(75, 23);
    this.btnCancelar.TabIndex = 87;
    this.btnCancelar.Text = "Cancelar";
    this.btnCancelar.Click += new EventHandler(this.btnCancelar_Click);
    this.BorderColor = Color.DodgerBlue;
    this.ClientSize = new Size(699, 352);
    this.Controls.Add((Control) this.btnCancelar);
    this.Controls.Add((Control) this.btnAceptar);
    this.Controls.Add((Control) this.metroLabel21);
    this.Controls.Add((Control) this.metroPanel2);
    this.Name = nameof (mdlPersonaGUAYMA);
    this.Load += new EventHandler(this.mdlPersona_Load);
    this.metroPanel2.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  private void mdlPersona_Load(object sender, EventArgs e)
  {
    this.iniciarCombos();
    this.iniciarEntityBoxes();
  }

  private void iniciarCombos()
  {
    this.llenarComboTipoDocumento();
    this.llenarComboEstadoCivil();
    this.llenarComboPosiFiscal();
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

  private void llenarComboEstadoCivil()
  {
    this.CodiEsciCbo.Items.Clear();
    this.CodiEsciCbo.DisplayMember = "DetaEsci";
    this.CodiEsciCbo.ValueMember = "CodiEsci";
    this.CodiEsciCbo.Items.AddRange((object[]) new ExpEstadoCivil().getListEstadosCiviles().ToArray());
    if (this.CodiEsciCbo.Items.Count <= 0)
      return;
    this.CodiEsciCbo.SelectedIndex = 0;
  }

  private void llenarComboPosiFiscal()
  {
    this.ComboFiscal.Items.Clear();
    this.ComboFiscal.DisplayMember = "DetaPofi";
    this.ComboFiscal.ValueMember = "CodiPofi";
    this.ComboFiscal.Items.AddRange((object[]) new ExpPosicionFiscal().getListPosicionesFiscales().ToArray());
    if (this.ComboFiscal.Items.Count <= 0)
      return;
    this.ComboFiscal.SelectedIndex = 0;
  }

  private void iniciarEntityBoxes()
  {
  }

  public Persona crearPersona()
  {
    return this.ShowDialog() == DialogResult.OK ? this.cargarDatosPantalla() : (Persona) null;
  }

  private Entity BuscarCalle(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCall", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaCall", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Calle>(filter, true);
  }

  private Entity EncontrarCalle(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCall", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaCall", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Calle>(filter, true, true);
  }

  private Entity BuscarBarrio(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiBarr", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaBarr", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Barrio>(filter, true);
  }

  private Entity EncontrarBarrio(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiBarr", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaBarr", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Barrio>(filter, true, true);
  }

  private Entity BuscarLocalidad(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiLoca", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaLoca", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Localidad>(filter, true);
  }

  private Entity EncontrarLocalidad(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiLoca", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaLoca", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Localidad>(filter, true, true);
  }

  public string validarCuil()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (!Misc.cuilValido(this.CucuPersMsk.Text.Trim()))
      stringBuilder.AppendLine("El Cuit/Cuil ingresado no es válido.");
    return stringBuilder.ToString();
  }

  private void linkGenerar_Click(object sender, EventArgs e)
  {
    string nudo = this.NudoPersMsk.Text.Trim();
    if (nudo.Length <= 0)
      return;
    this.CucuPersMsk.Text = Misc.generarCuil(nudo, this.SemaPersRb.Checked);
    new Filter().Items.Add(new FilterItem("b.CucuPers", "Cuit", FilterMode.Equal, this.CucuPersMsk.Text));
    Persona entity = new ExpPersona().GetEntity(new ID("CucuPers", (object) this.CucuPersMsk.Text));
    if (entity != null)
    {
      this.loading = true;
      this.DetaPersText.Text = entity.DetaPers;
      this.JuriPersChk.Checked = entity.JuriPers;
      this.FenaPersDate.Date = entity.FenaPers;
      this.loading = false;
    }
    this.DetaPersText.Enabled = entity == null;
    this.JuriPersChk.Enabled = entity == null;
    this.FenaPersDate.Enabled = entity == null;
  }

  private bool validarDatos()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.NudoPersMsk.Text == "")
      stringBuilder.AppendLine("Ingresar Nro de Documentos");
    if (this.DetaPersText.Text == "")
      stringBuilder.AppendLine("Ingresar Nombre y Apellido");
    if (this.CucuPersMsk.Text == "")
      stringBuilder.AppendLine("Ingresar Cuit/Cuil");
    if (new ExpPersona().existepersona(this.CucuPersMsk.LongText))
      stringBuilder.AppendLine("La Persona que se intenta crear ya existe.");
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length == 0;
  }

  private Persona cargarDatosPantalla()
  {
    return new Persona()
    {
      SexoPers = this.SemaPersRb.Checked,
      NudoPers = this.NudoPersMsk.IntText,
      CucuPers = this.CucuPersMsk.LongText,
      DetaPers = this.DetaPersText.Text.Replace(",", ""),
      JuriPers = this.JuriPersChk.Checked,
      CodiPofi = (short) ((PosicionFiscal) this.ComboFiscal.SelectedItem).CodiPofi,
      FenaPers = this.FenaPersDate.Date,
      CodiEsci = (short) ((EstadoCivil) this.CodiEsciCbo.SelectedItem).CodiEsci,
      TelePers = this.txtTelefono.Text,
      CeluPers = this.txtCelular.Text,
      FaxsPers = this.txtFax.Text,
      CodiTido = ((TipoDocumento) this.CodiTidoCbo.SelectedItem).CodiTido,
      MailPers = this.MailPersText.Text
    };
  }

  private void btnAceptar_Click(object sender, EventArgs e)
  {
    if (!this.validarDatos())
      return;
    this.DialogResult = DialogResult.OK;
    this.Close();
  }

  private void btnCancelar_Click(object sender, EventArgs e)
  {
    this.DialogResult = DialogResult.Cancel;
    this.Close();
  }

  private void JuriPersChk_CheckedChanged(object sender, EventArgs e)
  {
    this.CucuPersMsk.Enabled = this.JuriPersChk.Checked;
    this.CucuPersMsk.Text = "";
    this.CucuPersMsk.PromptText = "";
    this.CucuPersMsk.Mask = "00-00000000-0";
  }

  private void DetaPersText_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar != ',' && e.KeyChar != '.')
      return;
    e.Handled = true;
  }
}
