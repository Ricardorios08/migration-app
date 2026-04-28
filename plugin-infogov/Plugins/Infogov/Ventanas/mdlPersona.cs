// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.mdlPersona
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Core;
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

public class mdlPersona : InfoGovModalForm
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
  private MetroLabel metroLabel13;
  private MetroLabel metroLabel14;
  private MetroLabel metroLabel15;
  private MetroLabel metroLabel16;
  private MetroLabel metroLabel17;
  private MetroTextBox txtManzana;
  private MetroTextBox txtCasa;
  private MetroLabel metroLabel18;
  private MetroTextBox txtUbicacion;
  private MetroLabel metroLabel19;
  private MetroTextBox txtCodiPostal;
  private MetroLabel metroLabel20;
  private MetroPanel metroPanel1;
  private MetroPanel metroPanel2;
  private SimpleButton btnGenerar;
  private MetroLabel metroLabel21;
  private MetroIntTextBox txtNro;
  private MetroButton btnAceptar;
  private MetroButton btnCancelar;
  private MetroLabel lbDepto;
  private MetroTextBox DeptoText;
  private MetroTextBox NacionalidadText;
  private MetroLabel lbNacionalidad;
  private MetroDetaBox CalleDetaText;
  private MetroDetaBox BarrioDetaText;
  private MetroDetaBox LocalidadDetaText;
  private MetroTextBox ProvinciaText;
  private MetroLabel lbProvincia;
  private MetroCheckBox CheckBoxCargaManual;
  private MetroComboBox CodiEsciCbo;
  private bool loading = false;

  public mdlPersona()
    : base()
  {
    this.InitializeComponent();
    if (PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "Tunuyán")
    {
      this.lbNacionalidad.Visible = true;
      this.NacionalidadText.Visible = true;
      this.lbDepto.Visible = true;
      this.DeptoText.Visible = true;
      this.NacionalidadText.Text = "Argentino";
    }
    if (PARAMS.Municipio == "Tunuyán")
      this.DeptoText.Text = "Tunuyán";
    else if (PARAMS.Municipio == "Alvear")
      this.DeptoText.Text = "Alvear";
    if (PARAMS.Municipio == "SantaRosa")
    {
      this.lbDepto.Visible = true;
      this.DeptoText.Visible = true;
      this.DeptoText.Text = "Santa Rosa";
    }
    if (PARAMS.Municipio == "SanMartín")
    {
      this.lbProvincia.Visible = true;
      this.ProvinciaText.Visible = true;
    }
    this.addDetaTextBoxEvents();
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
    this.metroLabel13 = new MetroLabel();
    this.metroLabel14 = new MetroLabel();
    this.metroLabel15 = new MetroLabel();
    this.metroLabel16 = new MetroLabel();
    this.metroLabel17 = new MetroLabel();
    this.txtManzana = new MetroTextBox();
    this.txtCasa = new MetroTextBox();
    this.metroLabel18 = new MetroLabel();
    this.txtUbicacion = new MetroTextBox();
    this.metroLabel19 = new MetroLabel();
    this.txtCodiPostal = new MetroTextBox();
    this.metroLabel20 = new MetroLabel();
    this.metroPanel1 = new MetroPanel();
    this.ProvinciaText = new MetroTextBox();
    this.lbProvincia = new MetroLabel();
    this.LocalidadDetaText = new MetroDetaBox();
    this.BarrioDetaText = new MetroDetaBox();
    this.CalleDetaText = new MetroDetaBox();
    this.lbDepto = new MetroLabel();
    this.DeptoText = new MetroTextBox();
    this.txtNro = new MetroIntTextBox();
    this.metroPanel2 = new MetroPanel();
    this.NacionalidadText = new MetroTextBox();
    this.lbNacionalidad = new MetroLabel();
    this.btnGenerar = new SimpleButton();
    this.metroLabel21 = new MetroLabel();
    this.btnAceptar = new MetroButton();
    this.btnCancelar = new MetroButton();
    this.CheckBoxCargaManual = new MetroCheckBox();
    this.metroPanel1.SuspendLayout();
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
    this.DetaPersText.MaxLength = 70;
    this.DetaPersText.Name = "DetaPersText";
    this.DetaPersText.Size = new Size(447, 23);
    this.DetaPersText.TabIndex = 7;
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
    this.FenaPersDate.TabIndex = 10;
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
    this.MailPersText.TabIndex = 15;
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
    this.CodiEsciCbo.TabIndex = 11;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(80 /*0x50*/, 207);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(58, 19);
    this.metroLabel1.TabIndex = 59;
    this.metroLabel1.Text = "Telefono";
    this.txtTelefono.AllowEmpty = true;
    this.txtTelefono.Location = new Point(158, 205);
    this.txtTelefono.MaxLength = 20;
    this.txtTelefono.Name = "txtTelefono";
    this.txtTelefono.Size = new Size(101, 23);
    this.txtTelefono.TabIndex = 12;
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
    this.txtCelular.MaxLength = 20;
    this.txtCelular.Name = "txtCelular";
    this.txtCelular.Size = new Size(101, 23);
    this.txtCelular.TabIndex = 13;
    this.txtFax.AllowEmpty = true;
    this.txtFax.Location = new Point(477, 205);
    this.txtFax.MaxLength = 20;
    this.txtFax.Name = "txtFax";
    this.txtFax.Size = new Size(101, 23);
    this.txtFax.TabIndex = 14;
    this.metroLabel12.AutoSize = false;
    this.metroLabel12.Location = new Point(182, 142);
    this.metroLabel12.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel12.Name = "metroLabel12";
    this.metroLabel12.Size = new Size(91, 19);
    this.metroLabel12.TabIndex = 8;
    this.metroLabel12.Text = "Posición Fiscal";
    this.ComboFiscal.FormattingEnabled = false;
    this.ComboFiscal.Location = new Point(290, 139);
    this.ComboFiscal.Margin = new Padding(3, 4, 3, 4);
    this.ComboFiscal.Name = "ComboFiscal";
    this.ComboFiscal.Size = new Size(243, 23);
    this.ComboFiscal.TabIndex = 9;
    this.metroLabel13.AutoSize = false;
    this.metroLabel13.Location = new Point(31 /*0x1F*/, 12);
    this.metroLabel13.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel13.Name = "metroLabel13";
    this.metroLabel13.Size = new Size(38, 19);
    this.metroLabel13.TabIndex = 67;
    this.metroLabel13.Text = "Calle";
    this.metroLabel14.AutoSize = false;
    this.metroLabel14.Location = new Point(24, 43);
    this.metroLabel14.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel14.Name = "metroLabel14";
    this.metroLabel14.Size = new Size(45, 19);
    this.metroLabel14.TabIndex = 68;
    this.metroLabel14.Text = "Barrio";
    this.metroLabel15.AutoSize = false;
    this.metroLabel15.Location = new Point(508, 12);
    this.metroLabel15.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel15.Name = "metroLabel15";
    this.metroLabel15.Size = new Size(32 /*0x20*/, 19);
    this.metroLabel15.TabIndex = 71;
    this.metroLabel15.Text = "Nro";
    this.metroLabel16.AutoSize = false;
    this.metroLabel16.Location = new Point(388, 43);
    this.metroLabel16.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel16.Name = "metroLabel16";
    this.metroLabel16.Size = new Size(41, 19);
    this.metroLabel16.TabIndex = 73;
    this.metroLabel16.Text = "Manz";
    this.metroLabel17.AutoSize = false;
    this.metroLabel17.Location = new Point(503, 43);
    this.metroLabel17.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel17.Name = "metroLabel17";
    this.metroLabel17.Size = new Size(37, 19);
    this.metroLabel17.TabIndex = 74;
    this.metroLabel17.Text = "Casa";
    this.txtManzana.AllowEmpty = true;
    this.txtManzana.Location = new Point(438, 39);
    this.txtManzana.MaxLength = 3;
    this.txtManzana.Name = "txtManzana";
    this.txtManzana.Size = new Size(56, 23);
    this.txtManzana.TabIndex = 3;
    this.txtCasa.AllowEmpty = true;
    this.txtCasa.Location = new Point(549, 39);
    this.txtCasa.MaxLength = 3;
    this.txtCasa.Name = "txtCasa";
    this.txtCasa.Size = new Size(56, 23);
    this.txtCasa.TabIndex = 4;
    this.metroLabel18.AutoSize = false;
    this.metroLabel18.Location = new Point(4, 72);
    this.metroLabel18.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel18.Name = "metroLabel18";
    this.metroLabel18.Size = new Size(66, 19);
    this.metroLabel18.TabIndex = 77;
    this.metroLabel18.Text = "Ubicacion";
    this.txtUbicacion.AllowEmpty = true;
    this.txtUbicacion.Location = new Point(75, 68);
    this.txtUbicacion.Margin = new Padding(3, 4, 3, 4);
    this.txtUbicacion.MaxLength = 200;
    this.txtUbicacion.Name = "txtUbicacion";
    this.txtUbicacion.Size = new Size(530, 23);
    this.txtUbicacion.TabIndex = 5;
    this.metroLabel19.AutoSize = false;
    this.metroLabel19.Location = new Point(4, 103);
    this.metroLabel19.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel19.Name = "metroLabel19";
    this.metroLabel19.Size = new Size(65, 19);
    this.metroLabel19.TabIndex = 79;
    this.metroLabel19.Text = "Localidad";
    this.txtCodiPostal.AllowEmpty = true;
    this.txtCodiPostal.Location = new Point(549, 99);
    this.txtCodiPostal.MaxLength = 6;
    this.txtCodiPostal.Name = "txtCodiPostal";
    this.txtCodiPostal.Size = new Size(56, 23);
    this.txtCodiPostal.TabIndex = 7;
    this.metroLabel20.AutoSize = false;
    this.metroLabel20.Location = new Point(468, 103);
    this.metroLabel20.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel20.Name = "metroLabel20";
    this.metroLabel20.Size = new Size(72, 19);
    this.metroLabel20.TabIndex = 81;
    this.metroLabel20.Text = "Cod Postal";
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.ProvinciaText);
    this.metroPanel1.Controls.Add((Control) this.lbProvincia);
    this.metroPanel1.Controls.Add((Control) this.LocalidadDetaText);
    this.metroPanel1.Controls.Add((Control) this.BarrioDetaText);
    this.metroPanel1.Controls.Add((Control) this.CalleDetaText);
    this.metroPanel1.Controls.Add((Control) this.lbDepto);
    this.metroPanel1.Controls.Add((Control) this.DeptoText);
    this.metroPanel1.Controls.Add((Control) this.txtNro);
    this.metroPanel1.Controls.Add((Control) this.metroLabel20);
    this.metroPanel1.Controls.Add((Control) this.txtCodiPostal);
    this.metroPanel1.Controls.Add((Control) this.metroLabel13);
    this.metroPanel1.Controls.Add((Control) this.metroLabel19);
    this.metroPanel1.Controls.Add((Control) this.metroLabel14);
    this.metroPanel1.Controls.Add((Control) this.txtUbicacion);
    this.metroPanel1.Controls.Add((Control) this.metroLabel18);
    this.metroPanel1.Controls.Add((Control) this.metroLabel15);
    this.metroPanel1.Controls.Add((Control) this.txtCasa);
    this.metroPanel1.Controls.Add((Control) this.txtManzana);
    this.metroPanel1.Controls.Add((Control) this.metroLabel16);
    this.metroPanel1.Controls.Add((Control) this.metroLabel17);
    this.metroPanel1.Location = new Point(32 /*0x20*/, 311);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(632, 158);
    this.metroPanel1.TabIndex = 2;
    this.ProvinciaText.AllowEmpty = true;
    this.ProvinciaText.Location = new Point(75, 128 /*0x80*/);
    this.ProvinciaText.MaxLength = 100;
    this.ProvinciaText.Name = "ProvinciaText";
    this.ProvinciaText.Size = new Size(198, 23);
    this.ProvinciaText.TabIndex = 8;
    this.ProvinciaText.Visible = false;
    this.lbProvincia.AutoSize = false;
    this.lbProvincia.Location = new Point(5, 132);
    this.lbProvincia.Margin = new Padding(3, 4, 3, 4);
    this.lbProvincia.Name = "lbProvincia";
    this.lbProvincia.Size = new Size(65, 19);
    this.lbProvincia.TabIndex = 84;
    this.lbProvincia.Text = "Provincia";
    this.lbProvincia.TextAlign = ContentAlignment.TopRight;
    this.lbProvincia.Visible = false;
    this.LocalidadDetaText.AllowEmpty = true;
    this.LocalidadDetaText.BackColor = Color.White;
    this.LocalidadDetaText.EnableDetaOnCodi0 = true;
    this.LocalidadDetaText.Entity = (Entity) null;
    this.LocalidadDetaText.EscribirEn0 = true;
    this.LocalidadDetaText.ExternalValidation = (Func<string>) null;
    this.LocalidadDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.LocalidadDetaText.IntCodi = 0;
    this.LocalidadDetaText.Location = new Point(75, 99);
    this.LocalidadDetaText.Margin = new Padding(3, 4, 3, 4);
    this.LocalidadDetaText.MaximumSize = new Size(3000, 23);
    this.LocalidadDetaText.MaxLengthCodi = 20;
    this.LocalidadDetaText.MaxLengthDeta = 100;
    this.LocalidadDetaText.MinimumSize = new Size(100, 23);
    this.LocalidadDetaText.Name = "LocalidadDetaText";
    this.LocalidadDetaText.PropertyCodi = "CodiLoca";
    this.LocalidadDetaText.PropertyDeta = "DetaLoca";
    this.LocalidadDetaText.ShortCodi = (short) 0;
    this.LocalidadDetaText.Size = new Size(393, 23);
    this.LocalidadDetaText.TabIndex = 6;
    this.LocalidadDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.LocalidadDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.LocalidadDetaText.TextCodi = "";
    this.LocalidadDetaText.TextDeta = "";
    this.LocalidadDetaText.WidthCodi = 80 /*0x50*/;
    this.LocalidadDetaText.EntityChanged += new EntityChangedEventHandler(this.LocalidadDetaText_EntityChanged);
    this.BarrioDetaText.AllowEmpty = true;
    this.BarrioDetaText.BackColor = Color.White;
    this.BarrioDetaText.EnableDetaOnCodi0 = true;
    this.BarrioDetaText.Entity = (Entity) null;
    this.BarrioDetaText.EscribirEn0 = true;
    this.BarrioDetaText.ExternalValidation = (Func<string>) null;
    this.BarrioDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.BarrioDetaText.IntCodi = 0;
    this.BarrioDetaText.Location = new Point(75, 39);
    this.BarrioDetaText.Margin = new Padding(3, 4, 3, 4);
    this.BarrioDetaText.MaximumSize = new Size(3000, 23);
    this.BarrioDetaText.MaxLengthCodi = 20;
    this.BarrioDetaText.MaxLengthDeta = 40;
    this.BarrioDetaText.MinimumSize = new Size(100, 23);
    this.BarrioDetaText.Name = "BarrioDetaText";
    this.BarrioDetaText.PropertyCodi = "CodiBarr";
    this.BarrioDetaText.PropertyDeta = "DetaBarr";
    this.BarrioDetaText.ShortCodi = (short) 0;
    this.BarrioDetaText.Size = new Size(307, 23);
    this.BarrioDetaText.TabIndex = 2;
    this.BarrioDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.BarrioDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.BarrioDetaText.TextCodi = "";
    this.BarrioDetaText.TextDeta = "";
    this.BarrioDetaText.WidthCodi = 80 /*0x50*/;
    this.CalleDetaText.AllowEmpty = true;
    this.CalleDetaText.BackColor = Color.White;
    this.CalleDetaText.EnableDetaOnCodi0 = true;
    this.CalleDetaText.Entity = (Entity) null;
    this.CalleDetaText.EscribirEn0 = true;
    this.CalleDetaText.ExternalValidation = (Func<string>) null;
    this.CalleDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CalleDetaText.IntCodi = 0;
    this.CalleDetaText.Location = new Point(75, 8);
    this.CalleDetaText.Margin = new Padding(3, 4, 3, 4);
    this.CalleDetaText.MaximumSize = new Size(3000, 23);
    this.CalleDetaText.MaxLengthCodi = 20;
    this.CalleDetaText.MaxLengthDeta = 40;
    this.CalleDetaText.MinimumSize = new Size(100, 23);
    this.CalleDetaText.Name = "CalleDetaText";
    this.CalleDetaText.PropertyCodi = "CodiCall";
    this.CalleDetaText.PropertyDeta = "DetaCall";
    this.CalleDetaText.ShortCodi = (short) 0;
    this.CalleDetaText.Size = new Size(426, 23);
    this.CalleDetaText.TabIndex = 0;
    this.CalleDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.CalleDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.CalleDetaText.TextCodi = "";
    this.CalleDetaText.TextDeta = "";
    this.CalleDetaText.WidthCodi = 80 /*0x50*/;
    this.lbDepto.AutoSize = false;
    this.lbDepto.Location = new Point(292, 132);
    this.lbDepto.Margin = new Padding(3, 4, 3, 4);
    this.lbDepto.Name = "lbDepto";
    this.lbDepto.Size = new Size(46, 18);
    this.lbDepto.TabIndex = 83;
    this.lbDepto.Text = "Depto";
    this.lbDepto.TextAlign = ContentAlignment.TopRight;
    this.lbDepto.Visible = false;
    this.DeptoText.AllowEmpty = true;
    this.DeptoText.Location = new Point(345, 128 /*0x80*/);
    this.DeptoText.MaxLength = 30;
    this.DeptoText.Name = "DeptoText";
    this.DeptoText.Size = new Size(260, 23);
    this.DeptoText.TabIndex = 9;
    this.DeptoText.Visible = false;
    this.txtNro.AllowEmpty = true;
    this.txtNro.Location = new Point(549, 8);
    this.txtNro.MaxLength = 5;
    this.txtNro.MaxValue = 99999;
    this.txtNro.Name = "txtNro";
    this.txtNro.Size = new Size(56, 23);
    this.txtNro.TabIndex = 1;
    this.metroPanel2.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel2.Controls.Add((Control) this.CheckBoxCargaManual);
    this.metroPanel2.Controls.Add((Control) this.NacionalidadText);
    this.metroPanel2.Controls.Add((Control) this.lbNacionalidad);
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
    this.NacionalidadText.AllowEmpty = true;
    this.NacionalidadText.Location = new Point(417, 78);
    this.NacionalidadText.MaxLength = 20;
    this.NacionalidadText.Name = "NacionalidadText";
    this.NacionalidadText.Size = new Size(188, 23);
    this.NacionalidadText.TabIndex = 6;
    this.NacionalidadText.Visible = false;
    this.lbNacionalidad.AutoSize = false;
    this.lbNacionalidad.Location = new Point(361, 82);
    this.lbNacionalidad.Margin = new Padding(3, 4, 3, 4);
    this.lbNacionalidad.Name = "lbNacionalidad";
    this.lbNacionalidad.Size = new Size(47, 19);
    this.lbNacionalidad.TabIndex = 66;
    this.lbNacionalidad.Text = "Nac.";
    this.lbNacionalidad.TextAlign = ContentAlignment.TopRight;
    this.lbNacionalidad.Visible = false;
    ((BaseButton) this.btnGenerar).ButtonStyle = (BorderStyles) 3;
    ((Control) this.btnGenerar).Location = new Point(280, 78);
    ((Control) this.btnGenerar).Name = "btnGenerar";
    ((Control) this.btnGenerar).Size = new Size(75, 23);
    ((Control) this.btnGenerar).TabIndex = 5;
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
    this.btnAceptar.Location = new Point(215, 475);
    this.btnAceptar.Name = "btnAceptar";
    this.btnAceptar.Size = new Size(75, 23);
    this.btnAceptar.TabIndex = 0;
    this.btnAceptar.Text = "Aceptar";
    this.btnAceptar.Click += new EventHandler(this.btnAceptar_Click);
    this.btnCancelar.Location = new Point(386, 475);
    this.btnCancelar.Name = "btnCancelar";
    this.btnCancelar.Size = new Size(75, 23);
    this.btnCancelar.TabIndex = 1;
    this.btnCancelar.Text = "Cancelar";
    this.btnCancelar.Click += new EventHandler(this.btnCancelar_Click);
    this.CheckBoxCargaManual.Location = new Point(376, 49);
    this.CheckBoxCargaManual.Name = "CheckBoxCargaManual";
    this.CheckBoxCargaManual.Size = new Size(108, 19);
    this.CheckBoxCargaManual.TabIndex = 67;
    this.CheckBoxCargaManual.Text = "Carga Manual";
    this.CheckBoxCargaManual.CheckedChanged += new EventHandler(this.CheckBoxCargaManual_CheckedChanged);
    this.BorderColor = Color.DodgerBlue;
    this.ClientSize = new Size(699, 510);
    this.Controls.Add((Control) this.btnCancelar);
    this.Controls.Add((Control) this.btnAceptar);
    this.Controls.Add((Control) this.metroLabel21);
    this.Controls.Add((Control) this.metroPanel2);
    this.Controls.Add((Control) this.metroPanel1);
    this.Name = nameof (mdlPersona);
    this.Load += new EventHandler(this.mdlPersona_Load);
    this.metroPanel1.ResumeLayout(false);
    this.metroPanel2.ResumeLayout(false);
    this.metroPanel2.PerformLayout();
    this.ResumeLayout(false);
  }

  private void mdlPersona_Load(object sender, EventArgs e) => this.iniciarCombos();

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

  public Persona crearPersona()
  {
    return this.ShowDialog() == DialogResult.OK ? this.cargarDatosPantalla() : (Persona) null;
  }

  private void addDetaTextBoxEvents()
  {
    this.CalleDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findCalle);
    this.CalleDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchCalle);
    this.CalleDetaText.ExternalValidation = new Func<string>(this.validateCalle);
    this.BarrioDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findBarrio);
    this.BarrioDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchBarrio);
    this.BarrioDetaText.ExternalValidation = new Func<string>(this.validateBarrio);
    this.LocalidadDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findLocalidad);
    this.LocalidadDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchLocalidad);
    this.LocalidadDetaText.ExternalValidation = new Func<string>(this.validateLocalidad);
  }

  private Entity findCalle(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Calle>(this.createFilter("CodiCall", "DetaCall", "Calle", text), true, useSearch);
  }

  private Entity searchCalle(string text)
  {
    return (Entity) this.EM.Search<Calle>(this.createFilter("CodiCall", "DetaCall", "Calle", text), true);
  }

  private string validateCalle() => "";

  private Entity findBarrio(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Barrio>(this.createFilter("CodiBarr", "DetaBarr", "Barrio", text), true, useSearch);
  }

  private Entity searchBarrio(string text)
  {
    return (Entity) this.EM.Search<Barrio>(this.createFilter("CodiBarr", "DetaBarr", "Barrio", text), true);
  }

  private string validateBarrio() => "";

  private Entity findLocalidad(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Localidad>(this.createFilter("CodiLoca", "DetaLoca", "Localidad", text), true, useSearch);
  }

  private Entity searchLocalidad(string text)
  {
    return (Entity) this.EM.Search<Localidad>(this.createFilter("CodiLoca", "DetaLoca", "Localidad", text), true);
  }

  private string validateLocalidad() => "";

  private Filter createFilter(string codi, string deta, string name, string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem(codi, name, FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem(deta, name, FilterMode.Contains, text));
    return filter;
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
      new ExpPersona().ActualizarCcok(long.Parse(this.CucuPersMsk.Text));
      this.loading = false;
    }
    this.DetaPersText.Enabled = entity == null;
    this.JuriPersChk.Enabled = entity == null;
    this.FenaPersDate.Enabled = entity == null;
  }

  private bool validarDatos()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (!this.JuriPersChk.Checked && this.NudoPersMsk.Text == "")
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
    Persona persona = new Persona();
    persona.SexoPers = this.SemaPersRb.Checked;
    persona.NudoPers = this.NudoPersMsk.IntText;
    persona.CucuPers = this.CucuPersMsk.LongText;
    persona.DetaPers = this.DetaPersText.Text.Replace(",", "");
    persona.JuriPers = this.JuriPersChk.Checked;
    persona.CodiPofi = (short) ((PosicionFiscal) this.ComboFiscal.SelectedItem).CodiPofi;
    persona.FenaPers = this.FenaPersDate.Date;
    persona.CodiEsci = (short) ((EstadoCivil) this.CodiEsciCbo.SelectedItem).CodiEsci;
    persona.TelePers = this.txtTelefono.Text;
    persona.CeluPers = this.txtCelular.Text;
    persona.FaxsPers = this.txtFax.Text;
    persona.CodiTido = ((TipoDocumento) this.CodiTidoCbo.SelectedItem).CodiTido;
    persona.MailPers = this.MailPersText.Text;
    persona.CocrPers = this.CalleDetaText.TextCodi.Length == 0 ? 0 : (int) short.Parse(this.CalleDetaText.TextCodi);
    persona.DecrPers = this.CalleDetaText.TextDeta;
    persona.NurePers = this.txtNro.IntText;
    persona.CobrPers = this.BarrioDetaText.TextCodi.Length == 0 ? (short) 0 : short.Parse(this.BarrioDetaText.TextCodi);
    if (PARAMS.Municipio == "Maipú")
    {
      persona.DebaPers = this.BarrioDetaText.TextDeta;
      persona.CopoPers = this.txtCodiPostal.Text;
    }
    else
    {
      persona.DebrPers = this.BarrioDetaText.TextDeta;
      persona.CoprPers = this.txtCodiPostal.Text;
    }
    persona.MarePers = this.txtManzana.Text;
    persona.CarePers = this.txtCasa.Text;
    persona.UbrePers = this.txtUbicacion.Text;
    persona.CodiLoca = this.LocalidadDetaText.TextCodi.Length == 0 ? 0 : (int) short.Parse(this.LocalidadDetaText.TextCodi);
    persona.ColrPers = (short) persona.CodiLoca;
    persona.DelrPers = this.LocalidadDetaText.TextDeta;
    persona.NaciPers = this.NacionalidadText.Text;
    persona.DptoPers = this.DeptoText.Text;
    persona.DetaProv = this.ProvinciaText.Text;
    return persona;
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

  private void LocalidadDetaText_EntityChanged(object source, EntityChangedEventArgs e)
  {
    if (e.NewEntity == null)
      return;
    this.txtCodiPostal.Text = ((Localidad) e.NewEntity).CodiPost;
  }

  private void CheckBoxCargaManual_CheckedChanged(object sender, EventArgs e)
  {
    if (this.CheckBoxCargaManual.Checked)
    {
      this.CucuPersMsk.Enabled = true;
    }
    else
    {
      this.CucuPersMsk.Enabled = false;
      this.CucuPersMsk.Text = "";
    }
  }
}
