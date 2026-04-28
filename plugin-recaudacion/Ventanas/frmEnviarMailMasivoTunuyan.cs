// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmEnviarMailMasivoTunuyan
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Text;
using System.Threading;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmEnviarMailMasivoTunuyan : BaseForm
{
  private ExpEnviarMailMasivoTunuyan expert = new ExpEnviarMailMasivoTunuyan();
  private MailMasivoTunuyan mail = new MailMasivoTunuyan();
  private int bien = 0;
  private int mal = 0;
  private string resultado = "";
  private List<MailMasivoTunuyan> result = new List<MailMasivoTunuyan>();
  private IContainer components = (IContainer) null;
  private SimpleButton btnMailMasivo;
  private SimpleButton btnBuscaUbic;
  private MetroTextBox ubicacionText;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel5;
  private MetroIntTextBox PeriodoText;
  private MetroIntTextBox BimestreText;
  private MetroIntTextBox OficinaText;
  private MetroIntTextBox NumeLiqu;
  private MetroPanel metroPanel1;
  private MetroLabel metroLabel6;
  private MetroComboBox ComboOficina;

  public frmEnviarMailMasivoTunuyan()
  {
    this.InitializeComponent();
    this.llenarComboOficina();
  }

  private void btnBuscaUbic_Click(object sender, EventArgs e)
  {
    FolderBrowserDialog folderBrowserDialog = new FolderBrowserDialog();
    if (folderBrowserDialog.ShowDialog((IWin32Window) this) != DialogResult.OK)
      return;
    this.ubicacionText.Text = folderBrowserDialog.SelectedPath;
  }

  private void btnMailMasivo_Click(object sender, EventArgs e)
  {
    if (this.ValidarDatos())
      return;
    DirectoryInfo directoryInfo = new DirectoryInfo(this.ubicacionText.Text);
    List<MailMasivoTunuyan> mailMasivoTunuyanList = this.expert.CuentasParaEnviarMail(this.mail);
    if (mailMasivoTunuyanList.Count == 0)
    {
      new frmMensaje((Form) this).mostrarError("No hay correos pendientes de enviar");
    }
    else
    {
      List<MailMasivoTunuyan> listaMail = new List<MailMasivoTunuyan>();
      foreach (FileInfo file in directoryInfo.GetFiles())
      {
        string[] strArray = Path.GetFileNameWithoutExtension(file.FullName).Split('-');
        foreach (MailMasivoTunuyan mailMasivoTunuyan in mailMasivoTunuyanList)
        {
          if ((int) mailMasivoTunuyan.CodiOfic == int.Parse(strArray[0]) && mailMasivoTunuyan.CuenCtct == strArray[1])
          {
            mailMasivoTunuyan.Adjunto = file.FullName;
            listaMail.Add(mailMasivoTunuyan);
          }
        }
      }
      if (listaMail.Count == 0)
      {
        new frmMensaje((Form) this).mostrarError("La carpeta seleccionada no posee boletos para adjuntar");
      }
      else
      {
        ((Control) this.btnMailMasivo).Enabled = ((Control) this.btnBuscaUbic).Enabled = false;
        if (PARAMS.Municipio == "Alvear")
          new frmEsperar((Form) this).procesar((Action) (() => this.EnvioCompletoCorreoAlvear(listaMail)), "Enviado Correos...");
        else
          new frmEsperar((Form) this).procesar((Action) (() => this.EnvioCompletoCorreo(listaMail)), "Enviado Correos...");
        this.ubicacionText.Text = "";
        new mdlResultadoMailBole().MostrarResultadoTunuyan(this.bien, this.mal, this.result);
        ((Control) this.btnMailMasivo).Enabled = ((Control) this.btnBuscaUbic).Enabled = true;
      }
    }
  }

  private void llenarComboOficina()
  {
    this.ComboOficina.Items.Clear();
    this.ComboOficina.ValueMember = "Value";
    this.ComboOficina.DisplayMember = "Text";
    this.ComboOficina.Items.Add((object) new ComboBoxItem("SIN SELECCIONAR", (object) "0"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("INMUEBLE", (object) "1"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("COMERCIO", (object) "2"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("CEMENTERIO", (object) "4"));
    this.ComboOficina.SelectedIndex = 0;
  }

  private void ComboOficina_SelectedIndexChanged(object sender, EventArgs e)
  {
    this.LimpiarCampos();
    this.mail = this.expert.getParametrosEnvio(int.Parse(((ComboBoxItem) this.ComboOficina.SelectedItem).Value.ToString()));
    this.PeriodoText.IntText = this.mail.PeriLiqu;
    this.BimestreText.IntText = (int) this.mail.BimeLiqu;
    this.NumeLiqu.IntText = (int) this.mail.NumeLiqu;
    this.OficinaText.Text = this.mail.CodiOficStr;
  }

  public bool ValidarDatos()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (int.Parse(((ComboBoxItem) this.ComboOficina.SelectedItem).Value.ToString()) == 0)
    {
      stringBuilder.AppendLine("Debe seleccionar la oficina");
    }
    else
    {
      if (this.PeriodoText.IntText == 0)
        stringBuilder.AppendLine("Periodo no puede ser 0");
      if (this.BimestreText.IntText == 0)
        stringBuilder.AppendLine("Bimestre no puede ser 0");
      if (this.NumeLiqu.IntText == 0)
        stringBuilder.AppendLine("Nro. liquidación no puede ser 0");
    }
    if (this.ubicacionText.Text == "")
      stringBuilder.AppendLine("Debe ingresar la ruta de archivos");
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length > 0;
  }

  public void LimpiarCampos()
  {
    this.PeriodoText.Text = "";
    this.BimestreText.Text = "";
    this.NumeLiqu.Text = "";
    this.ubicacionText.Text = "";
    this.OficinaText.Text = "";
  }

  public void EnvioCompletoCorreo(List<MailMasivoTunuyan> listaMail)
  {
    string str = this.ArmarBody();
    this.bien = 0;
    this.mal = 0;
    this.resultado = "";
    this.result.Clear();
    foreach (MailMasivoTunuyan mail in listaMail)
    {
      try
      {
        this.resultado = Misc.sendEmail("", mail.Email, "Tasas - " + PARAMS.NombreLargoMunicipio, str.ToString(), true, mail.Adjunto, false);
        Thread.Sleep(5000);
        if (this.resultado != "" && this.resultado.Contains("Ok"))
        {
          ++this.bien;
          mail.Estado = "Enviado";
          this.result.Add(mail);
          this.expert.RegistrarEnvio(mail);
        }
        else
        {
          ++this.mal;
          mail.Estado = "No Enviado";
          this.result.Add(mail);
        }
      }
      catch (Exception ex)
      {
      }
    }
  }

  public void EnvioCompletoCorreoAlvear(List<MailMasivoTunuyan> listaMail)
  {
    string str = this.ArmarBodyAlvear();
    this.bien = 0;
    this.mal = 0;
    this.resultado = "";
    this.result.Clear();
    foreach (MailMasivoTunuyan mail in listaMail)
    {
      try
      {
        this.resultado = Misc.sendEmail("", mail.Email, "Tasas - " + PARAMS.NombreLargoMunicipio, str.ToString(), true, mail.Adjunto, false, (short) 1);
        Thread.Sleep(5000);
        if (this.resultado != "" && this.resultado.Contains("Ok"))
        {
          ++this.bien;
          mail.Estado = "Enviado";
          this.result.Add(mail);
          this.expert.RegistrarEnvio(mail);
        }
        else
        {
          ++this.mal;
          mail.Estado = "No Enviado";
          this.result.Add(mail);
        }
      }
      catch (Exception ex)
      {
      }
    }
  }

  public string ArmarBody()
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<!DOCTYPE html>");
    stringBuilder.AppendLine("<html lang=\"es\">");
    stringBuilder.AppendLine("<head>");
    stringBuilder.AppendLine("<meta charset=\"utf-8\">");
    stringBuilder.AppendLine("<title>Municipalidad Tunuyán</title>");
    stringBuilder.AppendLine("</head>");
    stringBuilder.AppendLine("<body style=\"background-color: #cccccc \">");
    stringBuilder.AppendLine("<table style=\"max-width: 600px; padding: 10px; margin:0 auto; border-collapse: collapse;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td style=\"background-color: #ecf0f1\">");
    stringBuilder.AppendLine("<div style=\"color: #34495e; margin: 4% 10% 2%; text-align: justify;font-family: sans-serif\">");
    stringBuilder.AppendLine("<h2 style=\"color: #e67e22; margin: 0 0 7px\">Sr. VECINO DE TUNUYAN:</h2>");
    stringBuilder.AppendLine("<p style=\"margin: 2px; font-size: 15px\">");
    stringBuilder.AppendLine("Adjuntamos Boleto correspondiente para el pago<br><br>");
    stringBuilder.AppendLine("VERIFIQUE BIEN LOS DATOS DEL BOLETO APELLIDO Y NOMBRE<br>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("TELÉFONO: 02622-422193/195. LÍNEA GRATUITA: 0800-222-0377<br>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("Lugares habilitados para el pago:</p>");
    stringBuilder.AppendLine("<ul style=\"font-size: 15px;  margin: 10px 0\">");
    stringBuilder.AppendLine("<li>Banco Nación</li>");
    stringBuilder.AppendLine("<li>Banco Credicoop</li>");
    stringBuilder.AppendLine("<li>Banco Superville</li>");
    stringBuilder.AppendLine("<li>Nevada</li>");
    stringBuilder.AppendLine("<li>Pago Facil</li>");
    stringBuilder.AppendLine("<li>Rapipago</li>");
    stringBuilder.AppendLine("<li>Montemar Cia.Financiera</li>");
    stringBuilder.AppendLine("<li>Tesorería Municipal</li>");
    stringBuilder.AppendLine("<li>Red Link</li>");
    stringBuilder.AppendLine("<li>Red Banelco</li>");
    stringBuilder.AppendLine("<li>PagoMisCuentas.com</li>");
    stringBuilder.AppendLine("<li>Epagos: https://vps.infogov.com.ar/rentas/tunuyan/</li>");
    stringBuilder.AppendLine("</ul>");
    stringBuilder.AppendLine("<p style=\"color: #b3b3b3; font-size: 12px; text-align: center;margin: 30px 0 0\">MUNICIPALIDAD DE TUNUYÁN . REPÚBLICA DE SIRIA Y ALEM - TUNUYÁN - MENDOZA . CP: 5560</p>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("</body>");
    stringBuilder.AppendLine("</html>");
    return stringBuilder.ToString();
  }

  public string ArmarBodyAlvear()
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<!DOCTYPE html>");
    stringBuilder.AppendLine("<html lang=\"es\">");
    stringBuilder.AppendLine("<head>");
    stringBuilder.AppendLine("<meta charset=\"utf-8\">");
    stringBuilder.AppendLine("<title>Municipalidad Alvear</title>");
    stringBuilder.AppendLine("</head>");
    stringBuilder.AppendLine("<body style=\"background-color: #cccccc \">");
    stringBuilder.AppendLine("<table style=\"max-width: 600px; padding: 10px; margin:0 auto; border-collapse: collapse;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td style=\"background-color: #ecf0f1\">");
    stringBuilder.AppendLine("<div style=\"color: #34495e; margin: 4% 10% 2%; text-align: justify;font-family: sans-serif\">");
    stringBuilder.AppendLine("<h2 style=\"color: #e67e22; margin: 0 0 7px\">Sr. VECINO DE ALVEAR:</h2>");
    stringBuilder.AppendLine("<p style=\"margin: 2px; font-size: 15px\">");
    stringBuilder.AppendLine("Adjuntamos Boleto correspondiente para el pago<br><br>");
    stringBuilder.AppendLine("VERIFIQUE BIEN LOS DATOS DEL BOLETO APELLIDO Y NOMBRE<br>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("TELÉFONO: 02622-422193/195. LÍNEA GRATUITA: 0800-222-0377<br>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("Lugares habilitados para el pago:</p>");
    stringBuilder.AppendLine("<ul style=\"font-size: 15px;  margin: 10px 0\">");
    stringBuilder.AppendLine("<li>Banco Nación</li>");
    stringBuilder.AppendLine("<li>Banco Credicoop</li>");
    stringBuilder.AppendLine("<li>Banco Superville</li>");
    stringBuilder.AppendLine("<li>Nevada</li>");
    stringBuilder.AppendLine("<li>Pago Facil</li>");
    stringBuilder.AppendLine("<li>Rapipago</li>");
    stringBuilder.AppendLine("<li>Montemar Cia.Financiera</li>");
    stringBuilder.AppendLine("<li>Tesorería Municipal</li>");
    stringBuilder.AppendLine("<li>Red Link</li>");
    stringBuilder.AppendLine("<li>Red Banelco</li>");
    stringBuilder.AppendLine("<li>PagoMisCuentas.com</li>");
    stringBuilder.AppendLine("<li>Epagos: https://vps.infogov.com.ar/rentas/alvear/</li>");
    stringBuilder.AppendLine("</ul>");
    stringBuilder.AppendLine("<p style=\"color: #b3b3b3; font-size: 12px; text-align: center;margin: 30px 0 0\">MUNICIPALIDAD DE ALVEAR . Av. Alvear Oeste 550, M5620 Mendoza</p>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("</body>");
    stringBuilder.AppendLine("</html>");
    return stringBuilder.ToString();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmEnviarMailMasivoTunuyan));
    this.btnMailMasivo = new SimpleButton();
    this.btnBuscaUbic = new SimpleButton();
    this.ubicacionText = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.PeriodoText = new MetroIntTextBox();
    this.BimestreText = new MetroIntTextBox();
    this.OficinaText = new MetroIntTextBox();
    this.NumeLiqu = new MetroIntTextBox();
    this.metroPanel1 = new MetroPanel();
    this.metroLabel6 = new MetroLabel();
    this.ComboOficina = new MetroComboBox();
    this.metroPanel1.SuspendLayout();
    this.SuspendLayout();
    ((BaseStyleControl) this.btnMailMasivo).Appearance.Font = new Font("Tahoma", 8.25f, FontStyle.Bold);
    ((BaseStyleControl) this.btnMailMasivo).Appearance.Options.UseFont = true;
    ((ImageOptions) this.btnMailMasivo.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnMailMasivo.ImageOptions.Image");
    ((Control) this.btnMailMasivo).Location = new Point(96 /*0x60*/, 114);
    ((Control) this.btnMailMasivo).Name = "btnMailMasivo";
    ((Control) this.btnMailMasivo).Size = new Size(153, 28);
    ((Control) this.btnMailMasivo).TabIndex = 12;
    ((Control) this.btnMailMasivo).Text = "Enviar Mail Masivo";
    ((Control) this.btnMailMasivo).Click += new EventHandler(this.btnMailMasivo_Click);
    ((ImageOptions) this.btnBuscaUbic.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscaUbic.ImageOptions.Image");
    ((Control) this.btnBuscaUbic).Location = new Point(492, 82);
    ((Control) this.btnBuscaUbic).Name = "btnBuscaUbic";
    ((Control) this.btnBuscaUbic).Size = new Size(91, 23);
    ((Control) this.btnBuscaUbic).TabIndex = 11;
    ((Control) this.btnBuscaUbic).Text = "Buscar";
    ((Control) this.btnBuscaUbic).Click += new EventHandler(this.btnBuscaUbic_Click);
    this.ubicacionText.Enabled = false;
    this.ubicacionText.Location = new Point(96 /*0x60*/, 82);
    this.ubicacionText.Name = "ubicacionText";
    this.ubicacionText.Size = new Size(387, 23);
    this.ubicacionText.TabIndex = 10;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(11, 86);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(73, 19);
    this.metroLabel3.TabIndex = 9;
    this.metroLabel3.Text = "Ubicación";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(11, 24);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(73, 19);
    this.metroLabel1.TabIndex = 13;
    this.metroLabel1.Text = "Período";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(11, 55);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(73, 19);
    this.metroLabel2.TabIndex = 14;
    this.metroLabel2.Text = "Bimestre";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(268, 24);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(73, 19);
    this.metroLabel4.TabIndex = 15;
    this.metroLabel4.Text = "Oficina";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(233, 55);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(108, 19);
    this.metroLabel5.TabIndex = 16 /*0x10*/;
    this.metroLabel5.Text = "Nro. Liquidación";
    this.metroLabel5.TextAlign = ContentAlignment.TopRight;
    this.PeriodoText.Enabled = false;
    this.PeriodoText.Location = new Point(96 /*0x60*/, 20);
    this.PeriodoText.MaxLength = 4;
    this.PeriodoText.Name = "PeriodoText";
    this.PeriodoText.Size = new Size(75, 23);
    this.PeriodoText.TabIndex = 17;
    this.BimestreText.Enabled = false;
    this.BimestreText.Location = new Point(96 /*0x60*/, 51);
    this.BimestreText.MaxLength = 1;
    this.BimestreText.MaxValue = 9;
    this.BimestreText.Name = "BimestreText";
    this.BimestreText.Size = new Size(75, 23);
    this.BimestreText.TabIndex = 18;
    this.OficinaText.Enabled = false;
    this.OficinaText.Location = new Point(351, 19);
    this.OficinaText.MaxLength = 60;
    this.OficinaText.Name = "OficinaText";
    this.OficinaText.Size = new Size(116, 23);
    this.OficinaText.TabIndex = 19;
    this.NumeLiqu.Enabled = false;
    this.NumeLiqu.Location = new Point(351, 51);
    this.NumeLiqu.MaxLength = 9;
    this.NumeLiqu.MaxValue = 1;
    this.NumeLiqu.Name = "NumeLiqu";
    this.NumeLiqu.Size = new Size(116, 23);
    this.NumeLiqu.TabIndex = 20;
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.NumeLiqu);
    this.metroPanel1.Controls.Add((Control) this.OficinaText);
    this.metroPanel1.Controls.Add((Control) this.BimestreText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel3);
    this.metroPanel1.Controls.Add((Control) this.PeriodoText);
    this.metroPanel1.Controls.Add((Control) this.ubicacionText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel5);
    this.metroPanel1.Controls.Add((Control) this.btnBuscaUbic);
    this.metroPanel1.Controls.Add((Control) this.metroLabel4);
    this.metroPanel1.Controls.Add((Control) this.btnMailMasivo);
    this.metroPanel1.Controls.Add((Control) this.metroLabel2);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Location = new Point(12, 46);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(595, 167);
    this.metroPanel1.TabIndex = 21;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(24, 15);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(73, 19);
    this.metroLabel6.TabIndex = 22;
    this.metroLabel6.Text = "Oficina";
    this.metroLabel6.TextAlign = ContentAlignment.TopRight;
    this.ComboOficina.FormattingEnabled = false;
    this.ComboOficina.Location = new Point(109, 11);
    this.ComboOficina.Name = "ComboOficina";
    this.ComboOficina.Size = new Size(153, 23);
    this.ComboOficina.TabIndex = 23;
    this.ComboOficina.SelectedIndexChanged += new EventHandler(this.ComboOficina_SelectedIndexChanged);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(635, 232);
    this.Controls.Add((Control) this.ComboOficina);
    this.Controls.Add((Control) this.metroLabel6);
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmEnviarMailMasivoTunuyan);
    this.Text = "Envío de Correo";
    this.metroPanel1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
