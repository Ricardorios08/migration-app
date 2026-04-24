// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmEnvioMasivoEmailsSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Drawing;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Web;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmEnvioMasivoEmailsSM : BaseForm
{
  private BindingSource bsEmison = new BindingSource();
  private ExpEnvioMasivoEmailsSM experto = new ExpEnvioMasivoEmailsSM();
  private EmisionMailSM row = new EmisionMailSM();
  private MailMasivoTunuyan mail = new MailMasivoTunuyan();
  private int bien = 0;
  private int mal = 0;
  private string resultado = "";
  private List<MailMasivoTunuyan> result = new List<MailMasivoTunuyan>();
  private IContainer components = (IContainer) null;
  private MetroComboBox ComboOficina;
  private MetroLabel metroLabel6;
  private MetroPanel PanelEnvioMail;
  private MetroIntTextBox NumeLiquText;
  private MetroIntTextBox CodiOficText;
  private MetroLabel metroLabel3;
  private MetroIntTextBox PeriodoText;
  private MetroTextBox UbicacionText;
  private MetroLabel metroLabel5;
  private SimpleButton btnBuscaUbic;
  private MetroLabel metroLabel4;
  private SimpleButton btnMailMasivo;
  private MetroLabel metroLabel1;
  private GridControl gridControlLiquidacion;
  private GridView gridViewLiquidacion;
  private GridColumn colPeriLiqu;
  private GridColumn colDetaTili;
  private GridColumn colNumeLiqu;
  private GridColumn colFealLiqu;
  private MetroPanel PanelOficina;
  private MetroPanel metroPanel2;
  private MetroPanel metroPanel3;
  private MetroIntTextBox HastaText;
  private MetroIntTextBox DesdeText;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel7;
  private MetroLabel metroLabel9;
  private MetroLabel metroLabel8;
  private MetroIntTextBox TotalEnviados;
  private MetroIntTextBox TotalCorreos;

  public frmEnvioMasivoEmailsSM()
  {
    this.InitializeComponent();
    this.llenarComboOficina();
    this.gridControlLiquidacion.DataSource = (object) this.bsEmison;
  }

  private void llenarComboOficina()
  {
    this.ComboOficina.Items.Clear();
    this.ComboOficina.ValueMember = "Value";
    this.ComboOficina.DisplayMember = "Text";
    this.ComboOficina.Items.Add((object) new ComboBoxItem("INMUEBLE", (object) "1"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("COMERCIO", (object) "2"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("CEMENTERIO", (object) "4"));
    this.ComboOficina.SelectedIndex = 0;
  }

  private void ComboOficina_SelectedIndexChanged(object sender, EventArgs e)
  {
    this.bsEmison.Clear();
    this.bsEmison.DataSource = (object) this.experto.GetEmisiones(int.Parse(((ComboBoxItem) this.ComboOficina.SelectedItem).Value.ToString()));
  }

  private void gridViewLiquidacion_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    this.LimpiarCampos();
    if (((BaseView) this.gridViewLiquidacion).RowCount == 0)
      return;
    this.row = (EmisionMailSM) ((BaseView) this.gridViewLiquidacion).GetRow(((ColumnView) this.gridViewLiquidacion).GetSelectedRows()[0]);
    this.PeriodoText.IntText = this.row.PeriLiqu;
    this.CodiOficText.IntText = (int) this.row.CodiOfic;
    this.NumeLiquText.IntText = (int) this.row.NumeLiqu;
    this.DesdeText.IntText = 1;
    this.HastaText.IntText = this.row.MaxOrde;
    this.TotalCorreos.IntText = this.experto.CantidadCorreosxLiquidacion(this.row.PeriLiqu, (int) this.row.NumeLiqu, this.row.CodiTili, this.row.CodiOfic);
    this.TotalEnviados.IntText = this.experto.CantidadCorreosEnviadosxLiquidacion(this.row.PeriLiqu, (int) this.row.NumeLiqu, this.row.CodiTili, this.row.CodiOfic);
  }

  private void btnBuscaUbic_Click(object sender, EventArgs e)
  {
    FolderBrowserDialog folderBrowserDialog = new FolderBrowserDialog();
    if (folderBrowserDialog.ShowDialog((IWin32Window) this) != DialogResult.OK)
      return;
    this.UbicacionText.Text = folderBrowserDialog.SelectedPath;
  }

  private void btnMailMasivo_Click(object sender, EventArgs e)
  {
    if (this.ValidarDatos())
      return;
    List<MailMasivoTunuyan> correos = this.experto.CuentasParaEnviarMail(this.row, this.DesdeText.IntText, this.HastaText.IntText);
    if (correos.Count == 0)
      new frmMensaje((Form) this).mostrarError("No hay correos pendientes de enviar");
    else if (correos.Count > 2000)
    {
      new frmMensaje((Form) this).mostrarError("Cantidad de correos mayor al límite diario permitido para enviar");
    }
    else
    {
      ((Control) this.btnMailMasivo).Enabled = ((Control) this.btnBuscaUbic).Enabled = false;
      new frmEsperar((Form) this).procesar((Action) (() => this.EnvioCompletoCorreo(correos)), "Enviado Correos...");
      new mdlResultadoMailBole().MostrarResultadoTunuyan(this.bien, this.mal, this.result);
      ((Control) this.btnMailMasivo).Enabled = ((Control) this.btnBuscaUbic).Enabled = true;
    }
  }

  private void LimpiarCampos()
  {
    this.PeriodoText.Text = "";
    this.NumeLiquText.Text = "";
    this.CodiOficText.Text = "";
  }

  public bool ValidarDatos()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.PeriodoText.Text.Length == 0)
      stringBuilder.AppendLine("Periodo no puede ser 0");
    if (this.DesdeText.Text.Length == 0)
      stringBuilder.AppendLine("Ingresar desde");
    if (this.HastaText.Text.Length == 0)
      stringBuilder.AppendLine("Ingresar hasta");
    if (this.DesdeText.IntText > this.HastaText.IntText)
      stringBuilder.AppendLine("El valor desde no puede ser mayor al valor hasta");
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length > 0;
  }

  public void EnvioCompletoCorreo(List<MailMasivoTunuyan> listaMail)
  {
    string str1 = "";
    this.bien = 0;
    this.mal = 0;
    this.resultado = "";
    this.result.Clear();
    foreach (MailMasivoTunuyan mail in listaMail)
    {
      string str2 = HttpUtility.UrlEncode(frmEnvioMasivoEmailsSM.Encrypt(JsonSerializer.Serialize<MailMasivoTunuyan>(mail, (JsonSerializerOptions) null), Encoding.UTF8.GetBytes(ConfigurationManager.AppSettings["KeyUrlEncrypt"]), Encoding.UTF8.GetBytes(ConfigurationManager.AppSettings["KeyUrlEncrypt2"])));
      try
      {
        str1 = this.ArmarBodySoloImagen().Replace("{URL_PAGO}", "https://vps.infogov.com.ar/rentas/sanmartin/test/V1/index.php/api/boleto-emision?d=" + str2);
        Thread.Sleep(5000);
        if (this.resultado != "" && this.resultado.ToUpper().Contains("OK"))
        {
          ++this.bien;
          mail.Estado = "Enviado";
          this.result.Add(mail);
          this.experto.RegistrarEnvio(mail);
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
    stringBuilder.AppendLine("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
    stringBuilder.AppendLine("<title>Municipalidad de San Martín</title>");
    stringBuilder.AppendLine("</head>");
    stringBuilder.AppendLine("<body style=\"margin:0; padding:0; background-color:#f4f6f8; font-family:Arial, Helvetica, sans-serif;\">");
    stringBuilder.AppendLine("<table style=\"max-width:600px; margin:20px auto; background-color:#ffffff; border-radius:8px; overflow:hidden; border-collapse:collapse;\">");
    stringBuilder.AppendLine("<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color:#2B84C6;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td align=\"center\" style=\"padding:20px;\">");
    stringBuilder.AppendLine("<img src='https://vps.infogov.com.ar/rentas/resources/logos/LogoSanMartin.png' alt=\"Municipalidad de San Martín\" style=\"max-width:200px; height:160px;\">");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td style=\"padding:20px; color:#333333; font-size:15px; line-height:1.5;\">");
    stringBuilder.AppendLine("<h2 style=\"color:#2B84C6; font-size:18px; margin-bottom:10px;\">Sr. Vecino de San Martín:</h2>");
    stringBuilder.AppendLine("<p>Adjuntamos el boleto correspondiente para el pago. Por favor, <strong>verifique bien los datos del boleto</strong> (apellido y nombre).</p>");
    stringBuilder.AppendLine("<p style=\"margin-top:10px;\">Teléfono: <strong>xxxxx-xxxxxxx/xxx</strong><br>Línea gratuita: <strong>xxxx-xxx-xxxx</strong></p>");
    stringBuilder.AppendLine("<h3 style=\"color:#2B84C6; font-size:16px; margin-top:20px;\">Lugares habilitados para el pago:</h3>");
    stringBuilder.AppendLine("<ul style=\"margin:10px 0; padding-left:20px;\">");
    stringBuilder.AppendLine("<li>Banco Nación</li>");
    stringBuilder.AppendLine("<li>Pago Fácil</li>");
    stringBuilder.AppendLine("<li>Rapipago</li>");
    stringBuilder.AppendLine("<li>Tesorería Municipal</li>");
    stringBuilder.AppendLine("<li>Red Link</li>");
    stringBuilder.AppendLine("<li>Red Banelco</li>");
    stringBuilder.AppendLine("<li>PagoMisCuentas.com</li>");
    stringBuilder.AppendLine("<li>Epagos</li>");
    stringBuilder.AppendLine("</ul>");
    stringBuilder.AppendLine("<div style=\"text-align:center; margin:30px 0;\">");
    stringBuilder.AppendLine("<a href=\"https://vps.infogov.com.ar/rentas/sanmartin/\" style='background-color:#2B84C6; color:#ffffff; padding:12px 24px; text-decoration:none; border-radius:5px; font-size:16px; display:inline-block;'>Pagar en línea</a>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td style=\"background-color:#ecf0f1; padding:15px; text-align:center; font-size:12px; color:#777777;\">");
    stringBuilder.AppendLine("Municipalidad de San Martín · República de Siria y Alem - San Martín - Mendoza · CP: 5560");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("</body>");
    stringBuilder.AppendLine("</html>");
    return stringBuilder.ToString();
  }

  public string ArmarBodyC()
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<!DOCTYPE html>");
    stringBuilder.AppendLine("<html lang=\"es\">");
    stringBuilder.AppendLine("<head>");
    stringBuilder.AppendLine("<meta charset=\"utf-8\">");
    stringBuilder.AppendLine("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
    stringBuilder.AppendLine("<title>Municipalidad de San Martín</title>");
    stringBuilder.AppendLine("</head>");
    stringBuilder.AppendLine("<body style=\"margin:0; padding:0; background-color:#f4f6f8; font-family:Arial, Helvetica, sans-serif;\">");
    stringBuilder.AppendLine("<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse:collapse; background-color:#ffffff;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td align=\"center\" bgcolor=\"#2B84C6\" style=\"padding:25px;\">");
    stringBuilder.AppendLine("<img src='https://vps.infogov.com.ar/rentas/resources/logos/LogoSanMartin.png' alt=\"Municipalidad de San Martín\" width=\"200\" height=\"160\" style=\"display:block;\">");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td style=\"padding:30px; color:#333333; font-size:15px; line-height:1.6;\">");
    stringBuilder.AppendLine("<h2 style=\"color:#2B84C6; font-size:20px; margin:0 0 15px 0;\">Sr. Vecino de San Martín:</h2>");
    stringBuilder.AppendLine("<p style=\"margin:0 0 15px 0;\">Adjuntamos el boleto correspondiente para el pago. Por favor, <strong>verifique bien los datos del boleto</strong> (apellido y nombre).</p>");
    stringBuilder.AppendLine("<p style=\"margin:0 0 20px 0;\">Teléfono: <strong>2634-650236</strong><br>Gestión tributari: <strong>0800-333-1167</strong></p>");
    stringBuilder.AppendLine("<h3 style=\"color:#2B84C6; font-size:16px; margin:20px 0 10px 0;\">Lugares habilitados para el pago:</h3>");
    stringBuilder.AppendLine("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"font-size:14px; color:#333333;\">");
    stringBuilder.AppendLine("<tr><td style=\"padding:3px 0;\">• Banco Nación</td></tr>");
    stringBuilder.AppendLine("<tr><td style=\"padding:3px 0;\">• Pago Fácil</td></tr>");
    stringBuilder.AppendLine("<tr><td style=\"padding:3px 0;\">• Rapipago</td></tr>");
    stringBuilder.AppendLine("<tr><td style=\"padding:3px 0;\">• Tesorería Municipal</td></tr>");
    stringBuilder.AppendLine("<tr><td style=\"padding:3px 0;\">• Red Link</td></tr>");
    stringBuilder.AppendLine("<tr><td style=\"padding:3px 0;\">• Red Banelco</td></tr>");
    stringBuilder.AppendLine("<tr><td style=\"padding:3px 0;\">• PagoMisCuentas.com</td></tr>");
    stringBuilder.AppendLine("<tr><td style=\"padding:3px 0;\">• Epagos</td></tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:30px auto;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td align=\"center\" bgcolor=\"#2B84C6\" style=\"border-radius:6px;\">");
    stringBuilder.AppendLine("<a href=\"https://vps.infogov.com.ar/rentas/sanmartin/\" target=\"_blank\" style=\"display:inline-block; padding:14px 28px; font-size:16px; font-weight:bold; color:#ffffff; text-decoration:none; font-family:Arial, sans-serif;\">Pagar en línea</a>");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<td bgcolor=\"#f4f6f8\" style=\"padding:15px; text-align:center; font-size:12px; color:#777777;\">");
    stringBuilder.AppendLine("Municipalidad de San Martín · Av Boulogne Sur Mer esq. 25 de Mayo - San Martín - Mendoza · CP: 5570");
    stringBuilder.AppendLine("</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("</body>");
    stringBuilder.AppendLine("</html>");
    return stringBuilder.ToString();
  }

  public string ArmarBodySoloImagen()
  {
    string str = "https://vps.infogov.com.ar/rentas/sanmartin/resources/a59e9c02-b779-4dca-bbe2-aefe5bcade1c.jpeg";
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<!DOCTYPE html>");
    stringBuilder.AppendLine("<html lang='es'>");
    stringBuilder.AppendLine("<head>");
    stringBuilder.AppendLine("    <meta charset='UTF-8'>");
    stringBuilder.AppendLine("    <meta name='viewport' content='width=device-width, initial-scale=1.0'>");
    stringBuilder.AppendLine("    <title>Correo Formateado</title>");
    stringBuilder.AppendLine("</head>");
    stringBuilder.AppendLine("<body style='margin: 0; padding: 0; background-color: #f4f4f4;'>");
    stringBuilder.AppendLine("    <table border='0' cellpadding='0' cellspacing='0' width='100%'>");
    stringBuilder.AppendLine("        <tr>");
    stringBuilder.AppendLine("            <td align='center' style='padding: 20px 0;'>");
    stringBuilder.AppendLine("                <table border='0' cellpadding='0' cellspacing='0' width='600' style='max-width: 600px; background-color: #ffffff; border-radius: 8px;'>");
    stringBuilder.AppendLine("                    <tr>");
    stringBuilder.AppendLine("                        <td align='center' style='padding: 10px 40px;'>");
    stringBuilder.AppendLine($"                            <img src='{str}' alt='Imagen del correo' style='display: block; width: 100%; max-width: 520px; height: auto; border-radius: 8px;'/>");
    stringBuilder.AppendLine("                        </td>");
    stringBuilder.AppendLine("                    </tr>");
    stringBuilder.AppendLine("                    <tr>");
    stringBuilder.AppendLine("                        <td align='center' style='padding: 30px 40px;'>");
    stringBuilder.AppendLine("                            <table border='0' cellspacing='0' cellpadding='0'>");
    stringBuilder.AppendLine("                                <tr>");
    stringBuilder.AppendLine("                                    <td align='center' bgcolor='#004080' style='border-radius: 6px;'>");
    stringBuilder.AppendLine("                                        <a href='{URL_PAGO}' target='_blank' style='display: inline-block; padding: 14px 28px; font-family: Arial, sans-serif; font-size: 16px; color: #ffffff; text-decoration: none; border-radius: 6px; font-weight: bold;'>");
    stringBuilder.AppendLine("                                            Pago Online");
    stringBuilder.AppendLine("                                        </a>");
    stringBuilder.AppendLine("                                    </td>");
    stringBuilder.AppendLine("                                </tr>");
    stringBuilder.AppendLine("                            </table>");
    stringBuilder.AppendLine("                        </td>");
    stringBuilder.AppendLine("                    </tr>");
    stringBuilder.AppendLine("                </table>");
    stringBuilder.AppendLine("            </td>");
    stringBuilder.AppendLine("        </tr>");
    stringBuilder.AppendLine("    </table>");
    stringBuilder.AppendLine("</body>");
    stringBuilder.AppendLine("</html>");
    return stringBuilder.ToString();
  }

  public static string Encrypt(string plainText, byte[] key, byte[] iv)
  {
    if (string.IsNullOrEmpty(plainText))
      throw new ArgumentNullException(nameof (plainText));
    if (key == null || key.Length != 32 /*0x20*/)
      throw new ArgumentException("Key must be 32 bytes for AES-256.", nameof (key));
    if (iv == null || iv.Length != 16 /*0x10*/)
      throw new ArgumentException("IV must be 16 bytes.", nameof (iv));
    byte[] array;
    using (Aes aes = Aes.Create())
    {
      aes.Key = key;
      aes.IV = iv;
      aes.Mode = CipherMode.CBC;
      aes.Padding = PaddingMode.PKCS7;
      ICryptoTransform encryptor = aes.CreateEncryptor(aes.Key, aes.IV);
      using (MemoryStream memoryStream = new MemoryStream())
      {
        using (CryptoStream cryptoStream = new CryptoStream((Stream) memoryStream, encryptor, CryptoStreamMode.Write))
        {
          using (StreamWriter streamWriter = new StreamWriter((Stream) cryptoStream))
            streamWriter.Write(plainText);
          array = memoryStream.ToArray();
        }
      }
    }
    return Convert.ToBase64String(array);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmEnvioMasivoEmailsSM));
    this.ComboOficina = new MetroComboBox();
    this.metroLabel6 = new MetroLabel();
    this.PanelEnvioMail = new MetroPanel();
    this.HastaText = new MetroIntTextBox();
    this.DesdeText = new MetroIntTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel7 = new MetroLabel();
    this.NumeLiquText = new MetroIntTextBox();
    this.CodiOficText = new MetroIntTextBox();
    this.PeriodoText = new MetroIntTextBox();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.btnMailMasivo = new SimpleButton();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.UbicacionText = new MetroTextBox();
    this.btnBuscaUbic = new SimpleButton();
    this.gridControlLiquidacion = new GridControl();
    this.gridViewLiquidacion = new GridView();
    this.colPeriLiqu = new GridColumn();
    this.colDetaTili = new GridColumn();
    this.colNumeLiqu = new GridColumn();
    this.colFealLiqu = new GridColumn();
    this.PanelOficina = new MetroPanel();
    this.metroPanel2 = new MetroPanel();
    this.metroPanel3 = new MetroPanel();
    this.metroLabel8 = new MetroLabel();
    this.metroLabel9 = new MetroLabel();
    this.TotalCorreos = new MetroIntTextBox();
    this.TotalEnviados = new MetroIntTextBox();
    this.PanelEnvioMail.SuspendLayout();
    ((ISupportInitialize) this.gridControlLiquidacion).BeginInit();
    ((ISupportInitialize) this.gridViewLiquidacion).BeginInit();
    this.PanelOficina.SuspendLayout();
    this.metroPanel2.SuspendLayout();
    this.metroPanel3.SuspendLayout();
    this.SuspendLayout();
    this.ComboOficina.FormattingEnabled = false;
    this.ComboOficina.Location = new Point(120, 15);
    this.ComboOficina.Name = "ComboOficina";
    this.ComboOficina.Size = new Size(153, 23);
    this.ComboOficina.TabIndex = 26;
    this.ComboOficina.SelectedIndexChanged += new EventHandler(this.ComboOficina_SelectedIndexChanged);
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(35, 19);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(73, 19);
    this.metroLabel6.TabIndex = 25;
    this.metroLabel6.Text = "Oficina";
    this.metroLabel6.TextAlign = ContentAlignment.TopRight;
    this.PanelEnvioMail.BorderStyle = BorderStyle.FixedSingle;
    this.PanelEnvioMail.Controls.Add((Control) this.HastaText);
    this.PanelEnvioMail.Controls.Add((Control) this.DesdeText);
    this.PanelEnvioMail.Controls.Add((Control) this.metroLabel2);
    this.PanelEnvioMail.Controls.Add((Control) this.metroLabel7);
    this.PanelEnvioMail.Controls.Add((Control) this.NumeLiquText);
    this.PanelEnvioMail.Controls.Add((Control) this.CodiOficText);
    this.PanelEnvioMail.Controls.Add((Control) this.PeriodoText);
    this.PanelEnvioMail.Controls.Add((Control) this.metroLabel5);
    this.PanelEnvioMail.Controls.Add((Control) this.metroLabel4);
    this.PanelEnvioMail.Controls.Add((Control) this.btnMailMasivo);
    this.PanelEnvioMail.Controls.Add((Control) this.metroLabel1);
    this.PanelEnvioMail.Location = new Point(35, 35);
    this.PanelEnvioMail.Name = "PanelEnvioMail";
    this.PanelEnvioMail.Size = new Size(425, 167);
    this.PanelEnvioMail.TabIndex = 24;
    this.HastaText.Location = new Point(309, 86);
    this.HastaText.MaxLength = 10;
    this.HastaText.MaxValue = 999999999;
    this.HastaText.Name = "HastaText";
    this.HastaText.Size = new Size(75, 23);
    this.HastaText.TabIndex = 24;
    this.DesdeText.Location = new Point(96 /*0x60*/, 85);
    this.DesdeText.MaxLength = 10;
    this.DesdeText.MaxValue = 999999999;
    this.DesdeText.Name = "DesdeText";
    this.DesdeText.Size = new Size(75, 23);
    this.DesdeText.TabIndex = 23;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(253, 89);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(44, 19);
    this.metroLabel2.TabIndex = 22;
    this.metroLabel2.Text = "Hasta";
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(36, 86);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(48 /*0x30*/, 19);
    this.metroLabel7.TabIndex = 21;
    this.metroLabel7.Text = "Desde";
    this.NumeLiquText.Enabled = false;
    this.NumeLiquText.Location = new Point(309, 51);
    this.NumeLiquText.MaxLength = 9;
    this.NumeLiquText.MaxValue = 1;
    this.NumeLiquText.Name = "NumeLiquText";
    this.NumeLiquText.Size = new Size(75, 23);
    this.NumeLiquText.TabIndex = 20;
    this.CodiOficText.Enabled = false;
    this.CodiOficText.Location = new Point(96 /*0x60*/, 50);
    this.CodiOficText.MaxLength = 60;
    this.CodiOficText.Name = "CodiOficText";
    this.CodiOficText.Size = new Size(75, 23);
    this.CodiOficText.TabIndex = 19;
    this.PeriodoText.Enabled = false;
    this.PeriodoText.Location = new Point(96 /*0x60*/, 20);
    this.PeriodoText.MaxLength = 4;
    this.PeriodoText.Name = "PeriodoText";
    this.PeriodoText.Size = new Size(75, 23);
    this.PeriodoText.TabIndex = 17;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(189, 55);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(108, 19);
    this.metroLabel5.TabIndex = 16 /*0x10*/;
    this.metroLabel5.Text = "Nro. Liquidación";
    this.metroLabel5.TextAlign = ContentAlignment.TopRight;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(13, 55);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(73, 19);
    this.metroLabel4.TabIndex = 15;
    this.metroLabel4.Text = "Oficina";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    ((BaseStyleControl) this.btnMailMasivo).Appearance.Font = new Font("Tahoma", 8.25f, FontStyle.Bold);
    ((BaseStyleControl) this.btnMailMasivo).Appearance.Options.UseFont = true;
    ((ImageOptions) this.btnMailMasivo.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnMailMasivo.ImageOptions.Image");
    ((Control) this.btnMailMasivo).Location = new Point(96 /*0x60*/, 123);
    ((Control) this.btnMailMasivo).Name = "btnMailMasivo";
    ((Control) this.btnMailMasivo).Size = new Size(153, 28);
    ((Control) this.btnMailMasivo).TabIndex = 12;
    ((Control) this.btnMailMasivo).Text = "Enviar Mail Masivo";
    ((Control) this.btnMailMasivo).Click += new EventHandler(this.btnMailMasivo_Click);
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(13, 24);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(73, 19);
    this.metroLabel1.TabIndex = 13;
    this.metroLabel1.Text = "Período";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(753, 116);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(73, 19);
    this.metroLabel3.TabIndex = 9;
    this.metroLabel3.Text = "Ubicación";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.metroLabel3.Visible = false;
    this.UbicacionText.Enabled = false;
    this.UbicacionText.Location = new Point(753, 147);
    this.UbicacionText.Name = "UbicacionText";
    this.UbicacionText.Size = new Size(108, 23);
    this.UbicacionText.TabIndex = 10;
    this.UbicacionText.Visible = false;
    ((ImageOptions) this.btnBuscaUbic.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscaUbic.ImageOptions.Image");
    ((Control) this.btnBuscaUbic).Location = new Point(753, 179);
    ((Control) this.btnBuscaUbic).Name = "btnBuscaUbic";
    ((Control) this.btnBuscaUbic).Size = new Size(91, 23);
    ((Control) this.btnBuscaUbic).TabIndex = 11;
    ((Control) this.btnBuscaUbic).Text = "Buscar";
    ((Control) this.btnBuscaUbic).Visible = false;
    ((Control) this.btnBuscaUbic).Click += new EventHandler(this.btnBuscaUbic_Click);
    ((Control) this.gridControlLiquidacion).Dock = DockStyle.Fill;
    ((Control) this.gridControlLiquidacion).Location = new Point(0, 0);
    this.gridControlLiquidacion.MainView = (BaseView) this.gridViewLiquidacion;
    ((Control) this.gridControlLiquidacion).Name = "gridControlLiquidacion";
    ((Control) this.gridControlLiquidacion).Size = new Size(893, 310);
    ((Control) this.gridControlLiquidacion).TabIndex = 27;
    this.gridControlLiquidacion.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewLiquidacion
    });
    ((ColumnView) this.gridViewLiquidacion).Columns.AddRange(new GridColumn[4]
    {
      this.colPeriLiqu,
      this.colDetaTili,
      this.colNumeLiqu,
      this.colFealLiqu
    });
    ((BaseView) this.gridViewLiquidacion).GridControl = this.gridControlLiquidacion;
    ((BaseView) this.gridViewLiquidacion).Name = "gridViewLiquidacion";
    this.gridViewLiquidacion.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewLiquidacion.OptionsSelection.EnableAppearanceHideSelection = false;
    this.gridViewLiquidacion.OptionsView.ShowGroupPanel = false;
    ((ColumnView) this.gridViewLiquidacion).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridViewLiquidacion_FocusedRowChanged);
    this.colPeriLiqu.Caption = "Periodo";
    this.colPeriLiqu.FieldName = "PeriLiqu";
    this.colPeriLiqu.Name = "colPeriLiqu";
    this.colPeriLiqu.OptionsColumn.AllowEdit = false;
    this.colPeriLiqu.Visible = true;
    this.colPeriLiqu.VisibleIndex = 0;
    this.colDetaTili.Caption = "Tipo Liquidacion";
    this.colDetaTili.FieldName = "DetaTili";
    this.colDetaTili.Name = "colDetaTili";
    this.colDetaTili.OptionsColumn.AllowEdit = false;
    this.colDetaTili.Visible = true;
    this.colDetaTili.VisibleIndex = 1;
    this.colNumeLiqu.Caption = "Numero";
    this.colNumeLiqu.FieldName = "NumeLiqu";
    this.colNumeLiqu.Name = "colNumeLiqu";
    this.colNumeLiqu.OptionsColumn.AllowEdit = false;
    this.colNumeLiqu.Visible = true;
    this.colNumeLiqu.VisibleIndex = 2;
    this.colFealLiqu.Caption = "Fecha";
    this.colFealLiqu.DisplayFormat.FormatString = "dd-MM-yyyy";
    this.colFealLiqu.DisplayFormat.FormatType = (FormatType) 2;
    this.colFealLiqu.FieldName = "FealLiqu";
    this.colFealLiqu.Name = "colFealLiqu";
    this.colFealLiqu.OptionsColumn.AllowEdit = false;
    this.colFealLiqu.Visible = true;
    this.colFealLiqu.VisibleIndex = 3;
    this.PanelOficina.BorderStyle = BorderStyle.FixedSingle;
    this.PanelOficina.Controls.Add((Control) this.ComboOficina);
    this.PanelOficina.Controls.Add((Control) this.metroLabel6);
    this.PanelOficina.Dock = DockStyle.Top;
    this.PanelOficina.Location = new Point(0, 0);
    this.PanelOficina.Name = "PanelOficina";
    this.PanelOficina.Size = new Size(893, 54);
    this.PanelOficina.TabIndex = 28;
    this.metroPanel2.Controls.Add((Control) this.gridControlLiquidacion);
    this.metroPanel2.Dock = DockStyle.Fill;
    this.metroPanel2.Location = new Point(0, 54);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.Size = new Size(893, 310);
    this.metroPanel2.TabIndex = 29;
    this.metroPanel3.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel3.Controls.Add((Control) this.TotalEnviados);
    this.metroPanel3.Controls.Add((Control) this.TotalCorreos);
    this.metroPanel3.Controls.Add((Control) this.metroLabel9);
    this.metroPanel3.Controls.Add((Control) this.metroLabel8);
    this.metroPanel3.Controls.Add((Control) this.PanelEnvioMail);
    this.metroPanel3.Controls.Add((Control) this.UbicacionText);
    this.metroPanel3.Controls.Add((Control) this.metroLabel3);
    this.metroPanel3.Controls.Add((Control) this.btnBuscaUbic);
    this.metroPanel3.Dock = DockStyle.Bottom;
    this.metroPanel3.Location = new Point(0, 364);
    this.metroPanel3.Name = "metroPanel3";
    this.metroPanel3.Size = new Size(893, 233);
    this.metroPanel3.TabIndex = 30;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(490, 60);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(108, 19);
    this.metroLabel8.TabIndex = 25;
    this.metroLabel8.Text = "Total Correos ";
    this.metroLabel8.TextAlign = ContentAlignment.TopRight;
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(490, 91);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(108, 19);
    this.metroLabel9.TabIndex = 26;
    this.metroLabel9.Text = "Total Enviados";
    this.metroLabel9.TextAlign = ContentAlignment.TopRight;
    this.TotalCorreos.Enabled = false;
    this.TotalCorreos.Location = new Point(608, 55);
    this.TotalCorreos.Name = "TotalCorreos";
    this.TotalCorreos.Size = new Size(75, 23);
    this.TotalCorreos.TabIndex = 27;
    this.TotalEnviados.Enabled = false;
    this.TotalEnviados.Location = new Point(608, 86);
    this.TotalEnviados.Name = "TotalEnviados";
    this.TotalEnviados.Size = new Size(75, 23);
    this.TotalEnviados.TabIndex = 28;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(893, 597);
    this.Controls.Add((Control) this.metroPanel2);
    this.Controls.Add((Control) this.metroPanel3);
    this.Controls.Add((Control) this.PanelOficina);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmEnvioMasivoEmailsSM);
    this.Text = "Envío Masivo de Emails";
    this.PanelEnvioMail.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlLiquidacion).EndInit();
    ((ISupportInitialize) this.gridViewLiquidacion).EndInit();
    this.PanelOficina.ResumeLayout(false);
    this.metroPanel2.ResumeLayout(false);
    this.metroPanel3.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
