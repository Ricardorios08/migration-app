// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmEnviarMailMasivoTasas
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Net.Mail;
using System.Text;
using System.Threading;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmEnviarMailMasivoTasas : FRMForm
{
  private ExpEmisionMasivaTasas experto = new ExpEmisionMasivaTasas();
  private bool loading = false;
  private MailMasivoGuaymallen mail = new MailMasivoGuaymallen();
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private SimpleButton btnBuscar;
  private MetroTextBox MailText;
  private SimpleButton btnEnviarMail;
  private GroupBox groupBoxIndividual;
  private GroupBox groupBoxMasivo;
  private SimpleButton btnMailMasivo;
  private SimpleButton btnBuscaUbic;
  private MetroTextBox ubicacionText;
  private MetroLabel metroLabel3;
  private SplitContainer splitContainer1;
  private SimpleButton btnLimpiar;
  private ListBoxControl Adjuntos;
  private SimpleButton btnQuitar;
  private MetroCheckBox CheckCuenta;
  private MetroTextBox CuentaText;
  private MetroComboBox ComboOficina;
  private MetroTextBox InfoText;
  private MetroLabel metroLabel4;
  private MetroPanel metroPanel1;
  private MetroComboBox ComboOficinaMasivo;
  private MetroLabel metroLabel6;
  private MetroIntTextBox OficinaText;
  private MetroIntTextBox BimestreText;
  private MetroIntTextBox PeriodoText;
  private MetroLabel metroLabel7;
  private MetroLabel metroLabel8;
  private MetroLabel metroLabel9;

  public frmEnviarMailMasivoTasas()
    : base("Envio de Boletos por Mail", "Envio de Boletos por Mail", typeof (ExpEmisionMasivaTasas))
  {
    this.InitializeComponent();
    this.loading = true;
    ((Control) this.butNew).Visible = false;
    ((Control) this.butEdit).Visible = ((Control) this.butDelete).Visible = ((Control) this.butAnnular).Visible = false;
    ((Control) this.butCancel).Visible = ((Control) this.butSave).Visible = false;
    this.llenarComboOficina();
    this.loading = false;
  }

  private void btnBuscar_Click(object sender, EventArgs e)
  {
    OpenFileDialog openFileDialog = new OpenFileDialog();
    openFileDialog.Filter = "archivo pdf|*.pdf";
    openFileDialog.CheckFileExists = true;
    if (openFileDialog.ShowDialog() != DialogResult.OK || this.Adjuntos.Items.Contains((object) openFileDialog.FileName))
      return;
    this.Adjuntos.Items.Add((object) openFileDialog.FileName);
  }

  private void btnEnviarMail_Click(object sender, EventArgs e)
  {
    if (!this.ValidarEnvio())
      return;
    MailMessage email = new MailMessage();
    email.To.Clear();
    email.Subject = "";
    email.IsBodyHtml = true;
    email.Priority = MailPriority.Normal;
    email.To.Add(this.MailText.Text);
    for (int index = 0; index < this.Adjuntos.Items.Count; ++index)
    {
      Attachment attachment = new Attachment(this.Adjuntos.Items[index].ToString());
      email.Attachments.Add(attachment);
    }
    email.From = new MailAddress("boleto.electronico@guaymallen.gob.ar", "Municipalidad de Guaymallen");
    email.Subject = "Municipalidad de Guaymallen - Boleto";
    email.Body = this.ArmarBody();
    SmtpClient smtp = new SmtpClient();
    smtp.Host = "mail.guaymallen.gob.ar";
    smtp.Port = 25;
    smtp.EnableSsl = false;
    smtp.UseDefaultCredentials = false;
    try
    {
      new frmEsperar((Form) this).procesar((Action) (() => smtp.Send(email)), "Enviado Correo...");
      if (!this.CheckCuenta.Checked)
      {
        for (int index = 0; index < this.Adjuntos.Items.Count; ++index)
        {
          string[] strArray1 = this.Adjuntos.Items[index].ToString().Split('\\');
          string[] strArray2 = strArray1[strArray1.Length - 1].Split('.')[0].Split('-');
          this.experto.GuardarMail(strArray2[0], strArray2[1], this.MailText.Text);
        }
      }
      string str = "";
      for (int index = 0; index < this.Adjuntos.Items.Count; ++index)
      {
        string[] strArray3 = this.Adjuntos.Items[index].ToString().Split('\\');
        string[] strArray4 = strArray3[strArray3.Length - 1].Split('.');
        str = $"{str}{strArray4[0]},";
      }
      string cuentas = str.TrimEnd(',');
      email.Dispose();
      new frmMensaje((Form) this).mostrarConfirmación("Correo electrónico fue enviado satisfactoriamente.");
      this.experto.RegistrarEnvioMail(this.MailText.Text, cuentas);
      this.LimpiarCampos();
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError("Error enviando correo electrónico:" + ex.Message);
      this.LimpiarCampos();
    }
  }

  private void btnLimpiar_Click(object sender, EventArgs e) => this.LimpiarCampos();

  private void btnQuitar_Click(object sender, EventArgs e)
  {
    this.Adjuntos.Items.Remove(((BaseListBoxControl) this.Adjuntos).SelectedItem);
  }

  public bool ValidarEnvio()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.MailText.Text.Length == 0)
      stringBuilder.AppendLine("Debe ingresar correo");
    if (this.Adjuntos.Items.Count == 0)
      stringBuilder.AppendLine("Debe seleccionar al menos un adjunto");
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length == 0;
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
    List<MailMasivoGuaymallen> masivoGuaymallenList1 = this.experto.CuentasParaEnviarMail(this.mail);
    List<MailMasivoGuaymallen> masivoGuaymallenList2 = new List<MailMasivoGuaymallen>();
    foreach (FileInfo file in directoryInfo.GetFiles())
    {
      string[] strArray = Path.GetFileNameWithoutExtension(file.FullName).Split('-');
      foreach (MailMasivoGuaymallen masivoGuaymallen in masivoGuaymallenList1)
      {
        if ((int) masivoGuaymallen.CodiOfic == int.Parse(strArray[0]) && masivoGuaymallen.CuenCtct == strArray[1])
        {
          masivoGuaymallen.Adjunto = file.FullName;
          masivoGuaymallenList2.Add(masivoGuaymallen);
        }
      }
    }
    int bien = 0;
    int mal = 0;
    List<MailMasivoGuaymallen> listaresul = new List<MailMasivoGuaymallen>();
    foreach (MailMasivoGuaymallen mail in masivoGuaymallenList2)
    {
      MailMessage email = new MailMessage();
      email.To.Clear();
      email.Subject = "";
      email.IsBodyHtml = true;
      email.Priority = MailPriority.Normal;
      email.To.Add(mail.Email);
      Attachment attachment = new Attachment(mail.Adjunto);
      email.Attachments.Add(attachment);
      email.From = new MailAddress("boleto.electronico@guaymallen.gob.ar", "Municipalidad de Guaymallen");
      email.Subject = "Municipalidad de Guaymallen - Boleto Cuenta Nro: " + mail.CuenCtct;
      email.Body = this.ArmarBody();
      SmtpClient smtp = new SmtpClient();
      smtp.Host = "mail.guaymallen.gob.ar";
      smtp.Port = 25;
      smtp.EnableSsl = false;
      smtp.UseDefaultCredentials = false;
      try
      {
        new frmEsperar((Form) this).procesar((Action) (() => smtp.Send(email)), "Enviando Correos...");
        Thread.Sleep(5000);
        email.Dispose();
        this.experto.RegistrarEnvio(mail);
        ++bien;
        mail.Estado = "Enviado";
        listaresul.Add(mail);
      }
      catch (Exception ex)
      {
        ++mal;
        mail.Estado = "No Enviado";
        listaresul.Add(mail);
      }
    }
    new mdlResultadoMailBole().MostrarResultado(bien, mal, listaresul);
    this.LimpiarCampos();
  }

  public string ArmarBody()
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<!DOCTYPE html>");
    stringBuilder.AppendLine("<html lang=\"es\">");
    stringBuilder.AppendLine("<head>");
    stringBuilder.AppendLine("<meta charset=\"utf-8\">");
    stringBuilder.AppendLine("<title>Municipalidad Guaymallen</title>");
    stringBuilder.AppendLine("</head>");
    stringBuilder.AppendLine("<body style=\"background-color: #cccccc \">");
    stringBuilder.AppendLine("<table style=\"max-width: 600px; padding: 10px; margin:0 auto; border-collapse: collapse;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td style=\"background-color: #ecf0f1\">");
    stringBuilder.AppendLine("<div style=\"color: #34495e; margin: 4% 10% 2%; text-align: justify;font-family: sans-serif\">");
    stringBuilder.AppendLine("<h2 style=\"color: #e67e22; margin: 0 0 7px\">Sr. VECINO DE GUAYMALLÉN:</h2>");
    stringBuilder.AppendLine("<p style=\"margin: 2px; font-size: 15px\">");
    stringBuilder.AppendLine("Adjuntamos Boleto correspondiente para el pago de tasa municipal<br><br>");
    stringBuilder.AppendLine("VERIFIQUE BIEN LOS DATOS DEL BOLETO APELLIDO Y NOMBRE // Y DIRECCION POSTAL<br>");
    stringBuilder.AppendLine("ANTE CUALQUIER DUDA LLAME PARA RESTABLECER BIEN EL DOMICILIO<br>");
    stringBuilder.AppendLine("TELEFONO: 4498200 // 4498201// WhatsApp 261774712 (solo WhatsApp escrito)<br>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("ENTIDADES AUTORIZADAS PARA EL COBRO:</p>");
    stringBuilder.AppendLine("<ul style=\"font-size: 15px;  margin: 10px 0\">");
    stringBuilder.AppendLine("<li>Bancos: Supervielle/Macro/Credicoop/Nación</li>");
    stringBuilder.AppendLine("<li>Rapipago - Montemar Cía. Fiananc. - Pago Fácil</li>");
    stringBuilder.AppendLine("<li>Pague en www.pagomiscuentas.com o ingresando a Banelco</li>");
    stringBuilder.AppendLine("<li>Link Pagos: Pague ingresando a www.linkpagos.com.ar desde un cajero LINK, las 24hs todos los días del año</li>");
    stringBuilder.AppendLine("<li>Pagar con Epagos: www.infogov.com.ar/rentas/guaymallen/</li>");
    stringBuilder.AppendLine("</ul>");
    stringBuilder.AppendLine("<p style=\"color: #b3b3b3; font-size: 12px; text-align: center;margin: 30px 0 0\">Municipalidad de Guaymallen</p>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("</body>");
    stringBuilder.AppendLine("</html>");
    return stringBuilder.ToString();
  }

  public void LimpiarCampos()
  {
    this.CheckCuenta.Checked = false;
    this.ComboOficina.SelectedIndex = 0;
    this.CuentaText.Text = "";
    this.ubicacionText.Text = "";
    ((CollectionBase) this.Adjuntos.Items).Clear();
    this.MailText.Text = "";
    this.InfoText.Text = "";
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
    this.ComboOficinaMasivo.Items.Clear();
    this.ComboOficinaMasivo.ValueMember = "Value";
    this.ComboOficinaMasivo.DisplayMember = "Text";
    this.ComboOficinaMasivo.Items.Add((object) new ComboBoxItem("SIN SELECCIONAR", (object) "0"));
    this.ComboOficinaMasivo.Items.Add((object) new ComboBoxItem("INMUEBLE", (object) "1"));
    this.ComboOficinaMasivo.Items.Add((object) new ComboBoxItem("COMERCIO", (object) "2"));
    this.ComboOficinaMasivo.Items.Add((object) new ComboBoxItem("CEMENTERIO", (object) "4"));
    this.ComboOficinaMasivo.Items.Add((object) new ComboBoxItem("PUBLICIDAD", (object) "6"));
    this.ComboOficinaMasivo.Items.Add((object) new ComboBoxItem("ANTENA", (object) "7"));
    this.ComboOficinaMasivo.SelectedIndex = 0;
  }

  private void ComboOficina_SelectedIndexChanged(object sender, EventArgs e)
  {
    if (this.loading)
      return;
    int ofic = int.Parse(((ComboBoxItem) this.ComboOficina.SelectedItem).Value.ToString());
    if (ofic == 0 || this.CuentaText.Text.Length == 0)
      return;
    this.MailText.Text = this.experto.ConsultarEmailporCuenta(ofic, this.CuentaText.Text);
  }

  private void CuentaText_Leave(object sender, EventArgs e)
  {
    int ofic = int.Parse(((ComboBoxItem) this.ComboOficina.SelectedItem).Value.ToString());
    if (ofic == 0 || this.CuentaText.Text.Length == 0)
      return;
    this.MailText.Text = this.experto.ConsultarEmailporCuenta(ofic, this.CuentaText.Text);
  }

  private void CheckCuenta_CheckedChanged(object sender, EventArgs e)
  {
    if (this.CheckCuenta.Checked)
    {
      this.ComboOficina.Enabled = this.CuentaText.Enabled = true;
      this.MailText.Enabled = false;
      this.InfoText.Text = "";
    }
    else
    {
      this.ComboOficina.SelectedIndex = 0;
      this.ComboOficina.Enabled = this.CuentaText.Enabled = false;
      this.CuentaText.Text = this.MailText.Text = "";
      this.MailText.Enabled = true;
    }
  }

  private void CuentaText_Enter(object sender, EventArgs e)
  {
    this.MailText.Text = "";
    this.CuentaText.Text = "";
  }

  private void MailText_Leave(object sender, EventArgs e)
  {
    if (this.loading)
      return;
    if (!this.CheckCuenta.Checked)
      this.InfoText.Text = this.experto.ConsultarInfoporEmail(this.MailText.Text);
    else
      this.InfoText.Text = "";
  }

  private void MailText_Enter(object sender, EventArgs e)
  {
    this.MailText.Text = "";
    this.InfoText.Text = "";
  }

  public void LimpiarCamposMasivos()
  {
    this.PeriodoText.Text = "";
    this.BimestreText.Text = "";
    this.ubicacionText.Text = "";
    this.OficinaText.Text = "";
  }

  private void ComboOficinaMasivo_SelectedIndexChanged(object sender, EventArgs e)
  {
    this.LimpiarCamposMasivos();
    this.mail = this.experto.getParametrosEnvio(int.Parse(((ComboBoxItem) this.ComboOficinaMasivo.SelectedItem).Value.ToString()));
    this.PeriodoText.IntText = this.mail.PeriLiqu;
    this.BimestreText.IntText = (int) this.mail.BimeLiqu;
    this.OficinaText.Text = this.mail.CodiOficStr;
  }

  public bool ValidarDatos()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (int.Parse(((ComboBoxItem) this.ComboOficinaMasivo.SelectedItem).Value.ToString()) == 0)
    {
      stringBuilder.AppendLine("Debe seleccionar la oficina");
    }
    else
    {
      if (this.PeriodoText.IntText == 0)
        stringBuilder.AppendLine("Periodo no puede ser 0");
      if (this.BimestreText.IntText == 0)
        stringBuilder.AppendLine("Bimestre no puede ser 0");
    }
    if (this.ubicacionText.Text == "")
      stringBuilder.AppendLine("Debe ingresar la ruta de archivos");
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length > 0;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmEnviarMailMasivoTasas));
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.btnBuscar = new SimpleButton();
    this.MailText = new MetroTextBox();
    this.btnEnviarMail = new SimpleButton();
    this.groupBoxIndividual = new GroupBox();
    this.InfoText = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.CheckCuenta = new MetroCheckBox();
    this.CuentaText = new MetroTextBox();
    this.ComboOficina = new MetroComboBox();
    this.btnQuitar = new SimpleButton();
    this.Adjuntos = new ListBoxControl();
    this.btnLimpiar = new SimpleButton();
    this.groupBoxMasivo = new GroupBox();
    this.ComboOficinaMasivo = new MetroComboBox();
    this.metroLabel6 = new MetroLabel();
    this.metroPanel1 = new MetroPanel();
    this.OficinaText = new MetroIntTextBox();
    this.BimestreText = new MetroIntTextBox();
    this.PeriodoText = new MetroIntTextBox();
    this.metroLabel7 = new MetroLabel();
    this.metroLabel8 = new MetroLabel();
    this.metroLabel9 = new MetroLabel();
    this.btnBuscaUbic = new SimpleButton();
    this.btnMailMasivo = new SimpleButton();
    this.ubicacionText = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.splitContainer1 = new SplitContainer();
    this.panel1.SuspendLayout();
    this.groupBoxIndividual.SuspendLayout();
    ((ISupportInitialize) this.Adjuntos).BeginInit();
    this.groupBoxMasivo.SuspendLayout();
    this.metroPanel1.SuspendLayout();
    this.splitContainer1.BeginInit();
    this.splitContainer1.Panel1.SuspendLayout();
    this.splitContainer1.Panel2.SuspendLayout();
    this.splitContainer1.SuspendLayout();
    this.SuspendLayout();
    this.panel1.Size = new Size(799, 32 /*0x20*/);
    this.panel1.Controls.SetChildIndex((Control) this.separator1, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butEdit, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butNew, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butAnnular, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butDelete, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butCancel, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butSave, 0);
    this.separator1.Size = new Size(865, 2);
    ((ImageOptions) this.butSave.ImageOptions).Image = (Image) componentResourceManager.GetObject("butSave.ImageOptions.Image");
    this.butSave.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butSave).Location = new Point(587, 34);
    ((ImageOptions) this.butCancel.ImageOptions).Image = (Image) componentResourceManager.GetObject("butCancel.ImageOptions.Image");
    this.butCancel.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butCancel).Location = new Point(693, 34);
    ((ImageOptions) this.butDelete.ImageOptions).Image = (Image) componentResourceManager.GetObject("butDelete.ImageOptions.Image");
    this.butDelete.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butAnnular.ImageOptions).Image = (Image) componentResourceManager.GetObject("butAnnular.ImageOptions.Image");
    this.butAnnular.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butNew.ImageOptions).Image = (Image) componentResourceManager.GetObject("butNew.ImageOptions.Image");
    this.butNew.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butEdit.ImageOptions).Image = (Image) componentResourceManager.GetObject("butEdit.ImageOptions.Image");
    this.butEdit.ImageOptions.Location = (ImageLocation) 1;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(28, 95);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(55, 19);
    this.metroLabel1.TabIndex = 3;
    this.metroLabel1.Text = "Adjunto";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.FontWeight = MetroFontWeight.Bold;
    this.metroLabel2.Location = new Point(28, 28);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(55, 19);
    this.metroLabel2.TabIndex = 4;
    this.metroLabel2.Text = "Email";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    ((ImageOptions) this.btnBuscar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscar.ImageOptions.Image");
    ((Control) this.btnBuscar).Location = new Point(343, 96 /*0x60*/);
    ((Control) this.btnBuscar).Name = "btnBuscar";
    ((Control) this.btnBuscar).Size = new Size(91, 23);
    ((Control) this.btnBuscar).TabIndex = 5;
    ((Control) this.btnBuscar).Text = "Buscar";
    ((Control) this.btnBuscar).Click += new EventHandler(this.btnBuscar_Click);
    this.MailText.Location = new Point(89, 25);
    this.MailText.MaxLength = 300;
    this.MailText.Name = "MailText";
    this.MailText.Size = new Size(488, 23);
    this.MailText.TabIndex = 2;
    this.MailText.Enter += new EventHandler(this.MailText_Enter);
    this.MailText.Leave += new EventHandler(this.MailText_Leave);
    ((ImageOptions) this.btnEnviarMail.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnEnviarMail.ImageOptions.Image");
    ((Control) this.btnEnviarMail).Location = new Point(586, 25);
    ((Control) this.btnEnviarMail).Name = "btnEnviarMail";
    ((Control) this.btnEnviarMail).Size = new Size(91, 23);
    ((Control) this.btnEnviarMail).TabIndex = 3;
    ((Control) this.btnEnviarMail).Text = "Enviar Mail";
    ((Control) this.btnEnviarMail).Click += new EventHandler(this.btnEnviarMail_Click);
    this.groupBoxIndividual.Controls.Add((Control) this.InfoText);
    this.groupBoxIndividual.Controls.Add((Control) this.metroLabel2);
    this.groupBoxIndividual.Controls.Add((Control) this.btnEnviarMail);
    this.groupBoxIndividual.Controls.Add((Control) this.MailText);
    this.groupBoxIndividual.Controls.Add((Control) this.metroLabel4);
    this.groupBoxIndividual.Controls.Add((Control) this.CheckCuenta);
    this.groupBoxIndividual.Controls.Add((Control) this.CuentaText);
    this.groupBoxIndividual.Controls.Add((Control) this.ComboOficina);
    this.groupBoxIndividual.Controls.Add((Control) this.btnQuitar);
    this.groupBoxIndividual.Controls.Add((Control) this.Adjuntos);
    this.groupBoxIndividual.Controls.Add((Control) this.btnLimpiar);
    this.groupBoxIndividual.Controls.Add((Control) this.metroLabel1);
    this.groupBoxIndividual.Controls.Add((Control) this.btnBuscar);
    this.groupBoxIndividual.Dock = DockStyle.Fill;
    this.groupBoxIndividual.Font = new Font("Microsoft Sans Serif", 12f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    this.groupBoxIndividual.Location = new Point(0, 0);
    this.groupBoxIndividual.Name = "groupBoxIndividual";
    this.groupBoxIndividual.Size = new Size(797, (int) byte.MaxValue);
    this.groupBoxIndividual.TabIndex = 8;
    this.groupBoxIndividual.TabStop = false;
    this.groupBoxIndividual.Text = "Individual";
    this.InfoText.Enabled = false;
    this.InfoText.Location = new Point(89, 187);
    this.InfoText.Multiline = true;
    this.InfoText.Name = "InfoText";
    this.InfoText.Size = new Size(575, 45);
    this.InfoText.TabIndex = 16 /*0x10*/;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(42, 187);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(41, 19);
    this.metroLabel4.TabIndex = 15;
    this.metroLabel4.Text = "Info:";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.CheckCuenta.AutoSize = false;
    this.CheckCuenta.Location = new Point(17, 68);
    this.CheckCuenta.Name = "CheckCuenta";
    this.CheckCuenta.Size = new Size(66, 19);
    this.CheckCuenta.TabIndex = 14;
    this.CheckCuenta.Text = "Cuenta";
    this.CheckCuenta.CheckedChanged += new EventHandler(this.CheckCuenta_CheckedChanged);
    this.CuentaText.Enabled = false;
    this.CuentaText.Location = new Point(258, 64 /*0x40*/);
    this.CuentaText.MaxLength = 50;
    this.CuentaText.Name = "CuentaText";
    this.CuentaText.Size = new Size(104, 23);
    this.CuentaText.TabIndex = 1;
    this.CuentaText.Enter += new EventHandler(this.CuentaText_Enter);
    this.CuentaText.Leave += new EventHandler(this.CuentaText_Leave);
    this.ComboOficina.Enabled = false;
    this.ComboOficina.FormattingEnabled = false;
    this.ComboOficina.Location = new Point(89, 64 /*0x40*/);
    this.ComboOficina.Name = "ComboOficina";
    this.ComboOficina.Size = new Size(156, 23);
    this.ComboOficina.TabIndex = 0;
    this.ComboOficina.SelectedIndexChanged += new EventHandler(this.ComboOficina_SelectedIndexChanged);
    ((ImageOptions) this.btnQuitar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnQuitar.ImageOptions.Image");
    ((Control) this.btnQuitar).Location = new Point(343, 125);
    ((Control) this.btnQuitar).Name = "btnQuitar";
    ((Control) this.btnQuitar).Size = new Size(91, 23);
    ((Control) this.btnQuitar).TabIndex = 6;
    ((Control) this.btnQuitar).Text = "Quitar";
    ((Control) this.btnQuitar).Click += new EventHandler(this.btnQuitar_Click);
    ((Control) this.Adjuntos).Location = new Point(89, 96 /*0x60*/);
    ((Control) this.Adjuntos).Name = "Adjuntos";
    ((Control) this.Adjuntos).Size = new Size(248, 82);
    ((Control) this.Adjuntos).TabIndex = 10;
    ((ImageOptions) this.btnLimpiar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnLimpiar.ImageOptions.Image");
    ((Control) this.btnLimpiar).Location = new Point(586, 64 /*0x40*/);
    ((Control) this.btnLimpiar).Name = "btnLimpiar";
    ((Control) this.btnLimpiar).Size = new Size(91, 23);
    ((Control) this.btnLimpiar).TabIndex = 4;
    ((Control) this.btnLimpiar).Text = "Limpiar";
    ((Control) this.btnLimpiar).Click += new EventHandler(this.btnLimpiar_Click);
    this.groupBoxMasivo.Controls.Add((Control) this.ComboOficinaMasivo);
    this.groupBoxMasivo.Controls.Add((Control) this.metroLabel6);
    this.groupBoxMasivo.Controls.Add((Control) this.metroPanel1);
    this.groupBoxMasivo.Dock = DockStyle.Fill;
    this.groupBoxMasivo.Font = new Font("Microsoft Sans Serif", 12f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    this.groupBoxMasivo.Location = new Point(0, 0);
    this.groupBoxMasivo.Name = "groupBoxMasivo";
    this.groupBoxMasivo.Size = new Size(797, 251);
    this.groupBoxMasivo.TabIndex = 9;
    this.groupBoxMasivo.TabStop = false;
    this.groupBoxMasivo.Text = "Masivo";
    this.ComboOficinaMasivo.FormattingEnabled = false;
    this.ComboOficinaMasivo.Location = new Point(102, 28);
    this.ComboOficinaMasivo.Name = "ComboOficinaMasivo";
    this.ComboOficinaMasivo.Size = new Size(153, 23);
    this.ComboOficinaMasivo.TabIndex = 25;
    this.ComboOficinaMasivo.SelectedIndexChanged += new EventHandler(this.ComboOficinaMasivo_SelectedIndexChanged);
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(17, 32 /*0x20*/);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(73, 19);
    this.metroLabel6.TabIndex = 24;
    this.metroLabel6.Text = "Oficina";
    this.metroLabel6.TextAlign = ContentAlignment.TopRight;
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.OficinaText);
    this.metroPanel1.Controls.Add((Control) this.BimestreText);
    this.metroPanel1.Controls.Add((Control) this.PeriodoText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel7);
    this.metroPanel1.Controls.Add((Control) this.metroLabel8);
    this.metroPanel1.Controls.Add((Control) this.metroLabel9);
    this.metroPanel1.Controls.Add((Control) this.btnBuscaUbic);
    this.metroPanel1.Controls.Add((Control) this.btnMailMasivo);
    this.metroPanel1.Controls.Add((Control) this.ubicacionText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel3);
    this.metroPanel1.Location = new Point(17, 75);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(718, 154);
    this.metroPanel1.TabIndex = 9;
    this.OficinaText.Enabled = false;
    this.OficinaText.Location = new Point(339, 15);
    this.OficinaText.MaxLength = 60;
    this.OficinaText.Name = "OficinaText";
    this.OficinaText.Size = new Size(116, 23);
    this.OficinaText.TabIndex = 27;
    this.BimestreText.Enabled = false;
    this.BimestreText.Location = new Point(84, 47);
    this.BimestreText.MaxLength = 1;
    this.BimestreText.MaxValue = 9;
    this.BimestreText.Name = "BimestreText";
    this.BimestreText.Size = new Size(75, 23);
    this.BimestreText.TabIndex = 26;
    this.PeriodoText.Enabled = false;
    this.PeriodoText.Location = new Point(84, 16 /*0x10*/);
    this.PeriodoText.MaxLength = 4;
    this.PeriodoText.Name = "PeriodoText";
    this.PeriodoText.Size = new Size(75, 23);
    this.PeriodoText.TabIndex = 25;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(256 /*0x0100*/, 20);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(73, 19);
    this.metroLabel7.TabIndex = 23;
    this.metroLabel7.Text = "Oficina";
    this.metroLabel7.TextAlign = ContentAlignment.TopRight;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(-1, 51);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(73, 19);
    this.metroLabel8.TabIndex = 22;
    this.metroLabel8.Text = "Bimestre";
    this.metroLabel8.TextAlign = ContentAlignment.TopRight;
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(-1, 20);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(73, 19);
    this.metroLabel9.TabIndex = 21;
    this.metroLabel9.Text = "Período";
    this.metroLabel9.TextAlign = ContentAlignment.TopRight;
    ((ImageOptions) this.btnBuscaUbic.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscaUbic.ImageOptions.Image");
    ((Control) this.btnBuscaUbic).Location = new Point(480, 81);
    ((Control) this.btnBuscaUbic).Name = "btnBuscaUbic";
    ((Control) this.btnBuscaUbic).Size = new Size(91, 23);
    ((Control) this.btnBuscaUbic).TabIndex = 6;
    ((Control) this.btnBuscaUbic).Text = "Buscar";
    ((Control) this.btnBuscaUbic).Click += new EventHandler(this.btnBuscaUbic_Click);
    ((ImageOptions) this.btnMailMasivo.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnMailMasivo.ImageOptions.Image");
    ((Control) this.btnMailMasivo).Location = new Point(352, 113);
    ((Control) this.btnMailMasivo).Name = "btnMailMasivo";
    ((Control) this.btnMailMasivo).Size = new Size(119, 23);
    ((Control) this.btnMailMasivo).TabIndex = 8;
    ((Control) this.btnMailMasivo).Text = "Enviar Mail Masivo";
    ((Control) this.btnMailMasivo).Click += new EventHandler(this.btnMailMasivo_Click);
    this.ubicacionText.Enabled = false;
    this.ubicacionText.Location = new Point(84, 81);
    this.ubicacionText.Name = "ubicacionText";
    this.ubicacionText.Size = new Size(387, 23);
    this.ubicacionText.TabIndex = 5;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(5, 85);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(73, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Ubicación";
    this.splitContainer1.BorderStyle = BorderStyle.FixedSingle;
    this.splitContainer1.Dock = DockStyle.Fill;
    this.splitContainer1.Location = new Point(0, 32 /*0x20*/);
    this.splitContainer1.Name = "splitContainer1";
    this.splitContainer1.Orientation = Orientation.Horizontal;
    this.splitContainer1.Panel1.Controls.Add((Control) this.groupBoxIndividual);
    this.splitContainer1.Panel2.Controls.Add((Control) this.groupBoxMasivo);
    this.splitContainer1.Size = new Size(799, 514);
    this.splitContainer1.SplitterDistance = 257;
    this.splitContainer1.TabIndex = 10;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(799, 546);
    this.Controls.Add((Control) this.splitContainer1);
    this.Name = nameof (frmEnviarMailMasivoTasas);
    this.Text = "Enviar Mail";
    this.Controls.SetChildIndex((Control) this.panel1, 0);
    this.Controls.SetChildIndex((Control) this.splitContainer1, 0);
    this.panel1.ResumeLayout(false);
    this.groupBoxIndividual.ResumeLayout(false);
    ((ISupportInitialize) this.Adjuntos).EndInit();
    this.groupBoxMasivo.ResumeLayout(false);
    this.metroPanel1.ResumeLayout(false);
    this.splitContainer1.Panel1.ResumeLayout(false);
    this.splitContainer1.Panel2.ResumeLayout(false);
    this.splitContainer1.EndInit();
    this.splitContainer1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
