// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.detailDatoContactoPers
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Net.NetworkInformation;
using System.Text.RegularExpressions;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class detailDatoContactoPers : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel lblNombre;
  private MetroTextBox mtbDetaPers;
  private MetroIntTextBox mibCucuPers;
  private MetroLabel lblCucuPers;
  private MetroLabel lblMailPers;
  private MetroTextBox mtbMailPers;
  private MetroLabel lblCeluPers;
  private MetroTextBox mtbCeluPers;
  private MetroLabel lblTelePers;
  private MetroTextBox mtbTelePers;

  public detailDatoContactoPers() => this.InitializeComponent();

  protected override void OnModeChanged(ActionMode mode)
  {
    this.mtbTelePers.Enabled = this.mtbCeluPers.Enabled = this.mtbMailPers.Enabled = mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    DatoContactoPers datoContactoPers = (DatoContactoPers) enti;
    if (datoContactoPers == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.mibCucuPers.LongText = datoContactoPers.CucuPers;
      this.mtbDetaPers.Text = datoContactoPers.DetaPers;
      this.mtbTelePers.Text = datoContactoPers.TelePers;
      this.mtbCeluPers.Text = datoContactoPers.CeluPers;
      this.mtbMailPers.Text = datoContactoPers.MailPers;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new DatoContactoPers()
    {
      TelePers = this.mtbTelePers.Text.Trim(),
      CeluPers = this.mtbCeluPers.Text.Trim(),
      MailPers = this.mtbMailPers.Text.Trim()
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (!string.IsNullOrEmpty(this.mtbMailPers.Text.Trim()))
    {
      if (!this.Valid(this.mtbMailPers.Text.Trim()))
        stringList.Add("El correo proporcionado no es válido.");
      string str = this.CheckEmail(this.mtbMailPers.Text.Trim());
      if (!string.IsNullOrEmpty(str))
        stringList.Add(str);
    }
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.mibCucuPers.Text = this.mtbDetaPers.Text = this.mtbTelePers.Text = this.mtbCeluPers.Text = this.mtbMailPers.Text = string.Empty;
  }

  private void SoloNumeros(object sender, KeyEventArgs e)
  {
    if (e.KeyCode == Keys.Back)
      e.SuppressKeyPress = false;
    else if (e.KeyValue >= 48 /*0x30*/ && e.KeyValue <= 57 || e.KeyValue >= 96 /*0x60*/ && e.KeyValue <= 105)
      e.SuppressKeyPress = false;
    else
      e.SuppressKeyPress = true;
  }

  private bool Valid(string email)
  {
    string pattern = "^[\\w-_\\.]+@([\\w-_]+\\.)+[\\w]{2,4}$";
    return Regex.IsMatch(email, pattern, RegexOptions.IgnoreCase);
  }

  private string CheckEmail(string correo)
  {
    string str = string.Empty;
    if (!correo.Contains("@"))
      return "El formato de correo no es correcto.";
    try
    {
      string hostNameOrAddress = "www." + correo.Split('@')[1];
      PingReply pingReply = new Ping().Send(hostNameOrAddress, 1000);
      if (pingReply.Status != IPStatus.Success && pingReply.Status != IPStatus.TimedOut)
        str = $"El correo {correo} no es válido para el \nenvío de emails. Utilice otro que no \nprovenga del dominio => \n{hostNameOrAddress}";
    }
    catch (Exception ex)
    {
      str = ex.Message;
    }
    return str;
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
    this.lblMailPers = new MetroLabel();
    this.mtbMailPers = new MetroTextBox();
    this.lblCeluPers = new MetroLabel();
    this.mtbCeluPers = new MetroTextBox();
    this.lblTelePers = new MetroLabel();
    this.mtbTelePers = new MetroTextBox();
    this.mibCucuPers = new MetroIntTextBox();
    this.lblNombre = new MetroLabel();
    this.lblCucuPers = new MetroLabel();
    this.mtbDetaPers = new MetroTextBox();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 238);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 238);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblMailPers);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mtbMailPers);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblCeluPers);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mtbCeluPers);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblTelePers);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mtbTelePers);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mibCucuPers);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblNombre);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblCucuPers);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mtbDetaPers);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 205);
    this.lblMailPers.AutoSize = false;
    this.lblMailPers.Location = new Point(38, 168);
    this.lblMailPers.Name = "lblMailPers";
    this.lblMailPers.Size = new Size(61, 19);
    this.lblMailPers.TabIndex = 10;
    this.lblMailPers.Text = "Email";
    this.lblMailPers.TextAlign = ContentAlignment.MiddleRight;
    this.mtbMailPers.Location = new Point(111, 166);
    this.mtbMailPers.MaxLength = 200;
    this.mtbMailPers.Name = "mtbMailPers";
    this.mtbMailPers.Size = new Size(318, 23);
    this.mtbMailPers.TabIndex = 3;
    this.lblCeluPers.AutoSize = false;
    this.lblCeluPers.Location = new Point(38, 133);
    this.lblCeluPers.Name = "lblCeluPers";
    this.lblCeluPers.Size = new Size(61, 19);
    this.lblCeluPers.TabIndex = 8;
    this.lblCeluPers.Text = "Celular";
    this.lblCeluPers.TextAlign = ContentAlignment.MiddleRight;
    this.mtbCeluPers.Location = new Point(111, 131);
    this.mtbCeluPers.MaxLength = 20;
    this.mtbCeluPers.Name = "mtbCeluPers";
    this.mtbCeluPers.Size = new Size((int) sbyte.MaxValue, 23);
    this.mtbCeluPers.TabIndex = 2;
    this.mtbCeluPers.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.lblTelePers.AutoSize = false;
    this.lblTelePers.Location = new Point(6, 98);
    this.lblTelePers.Name = "lblTelePers";
    this.lblTelePers.Size = new Size(93, 19);
    this.lblTelePers.TabIndex = 6;
    this.lblTelePers.Text = "Teléfono Part.";
    this.lblTelePers.TextAlign = ContentAlignment.MiddleRight;
    this.mtbTelePers.Location = new Point(111, 96 /*0x60*/);
    this.mtbTelePers.MaxLength = 20;
    this.mtbTelePers.Name = "mtbTelePers";
    this.mtbTelePers.Size = new Size((int) sbyte.MaxValue, 23);
    this.mtbTelePers.TabIndex = 1;
    this.mtbTelePers.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.mibCucuPers.Enabled = false;
    this.mibCucuPers.Location = new Point(111, 26);
    this.mibCucuPers.Name = "mibCucuPers";
    this.mibCucuPers.Size = new Size((int) sbyte.MaxValue, 23);
    this.mibCucuPers.TabIndex = 4;
    this.mibCucuPers.TabStop = false;
    this.lblNombre.AutoSize = false;
    this.lblNombre.Location = new Point(38, 63 /*0x3F*/);
    this.lblNombre.Name = "lblNombre";
    this.lblNombre.Size = new Size(61, 19);
    this.lblNombre.TabIndex = 3;
    this.lblNombre.Text = "Nombre";
    this.lblNombre.TextAlign = ContentAlignment.MiddleRight;
    this.lblCucuPers.AutoSize = false;
    this.lblCucuPers.Location = new Point(25, 26);
    this.lblCucuPers.Name = "lblCucuPers";
    this.lblCucuPers.Size = new Size(74, 19);
    this.lblCucuPers.TabIndex = 2;
    this.lblCucuPers.Text = "CUIL/CUIT";
    this.lblCucuPers.TextAlign = ContentAlignment.MiddleRight;
    this.mtbDetaPers.Enabled = false;
    this.mtbDetaPers.Location = new Point(111, 61);
    this.mtbDetaPers.MaxLength = 20;
    this.mtbDetaPers.Name = "mtbDetaPers";
    this.mtbDetaPers.Size = new Size(318, 23);
    this.mtbDetaPers.TabIndex = 1;
    this.mtbDetaPers.TabStop = false;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailDatoContactoPers);
    this.Size = new Size(700, 238);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
