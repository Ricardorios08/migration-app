// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Modals.mdlResumen
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Expertos.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto.Maipu;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Modals;

public class mdlResumen : BaseForm
{
  private readonly DTOEmiBole dtoEmiBole;
  private readonly ExpConfiguracion expConfig;
  private ExpEBMaipu _expertoEB;
  private bool _isProcessing;
  private IContainer components = (IContainer) null;
  private MetroLabel lblResumen;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel3;
  private SimpleButton btnImprimir;
  private SimpleButton btnVP;
  private MetroButton btnCerrar;
  private GroupBox groupBox1;
  private MetroComboBox cboImpresora;
  private MetroTextBox txtCapital;
  private MetroTextBox txtRecargo;
  private MetroTextBox txtApremio;
  private MetroTextBox txtTotal;
  private MetroTextBox txtPagoCuenta;
  private MetroLabel lblPagoCuenta;
  private MetroLabel metroLabel6;
  private MetroTextBox txtInteres;
  private MetroLabel metroLabel4;
  private MetroTextBox txtDescuento;
  private MetroLabel metroLabel5;

  public mdlResumen(DTOEmiBole dto, ExpEBMaipu expe)
  {
    this.InitializeComponent();
    this.expConfig = new ExpConfiguracion(true);
    this._expertoEB = expe;
    this.dtoEmiBole = dto;
    this.lblPagoCuenta.Visible = this.txtPagoCuenta.Visible = this.dtoEmiBole.EsPagoACuenta;
    this.CargarResumen();
    this.CargarImpresoras();
  }

  private void CargarResumen()
  {
    Decimal capi = 0M;
    Decimal reca = 0M;
    Decimal apre = 0M;
    Decimal inte = 0M;
    Decimal desc = 0M;
    Decimal tota = 0M;
    this.dtoEmiBole.DeudaSeleccionada.Cast<CCMaipu>().ToList<CCMaipu>().ForEach((Action<CCMaipu>) (resumen => resumen.Detalles.ForEach((Action<DetaCCMaipu>) (deta =>
    {
      capi += deta.SaldCtct + deta.RecaApre;
      reca += deta.RecaCtct;
      apre += deta.ApreCtct;
      inte += 0M;
      desc += 0M;
      tota += deta.TotaCtct;
    }))));
    this.txtCapital.Text = capi.ToString("C2");
    this.txtRecargo.Text = reca.ToString("C2");
    this.txtApremio.Text = apre.ToString("C2");
    this.txtInteres.Text = inte.ToString("C2");
    this.txtDescuento.Text = desc.ToString("C2");
    this.txtTotal.Text = tota.ToString("C2");
    this.txtPagoCuenta.Text = this.dtoEmiBole.ImpoPagoCuenta.ToString("C2");
  }

  private void btnVP_Click(object sender, EventArgs e)
  {
    if (this._isProcessing)
      return;
    this._isProcessing = true;
    ((Control) this.btnVP).Enabled = false;
    try
    {
      this.dtoEmiBole.Tipo = TipoEB.VistaPreviaBoleDeuda;
      ReportTools.GenerarReporte(ReportMode.Preview, new RepEBMP().ArmarReporte((IBoleto) this.dtoEmiBole), (InfoGovPrintForm) null, "Boleto de Deuda");
    }
    finally
    {
      this._isProcessing = false;
      ((Control) this.btnVP).Enabled = true;
    }
  }

  private void btnImprimir_Click(object sender, EventArgs e)
  {
    if (this._isProcessing)
      return;
    this._isProcessing = true;
    ((Control) this.btnImprimir).Enabled = false;
    try
    {
      string empty1 = string.Empty;
      string empty2 = string.Empty;
      frmEsperar frmEsperar = new frmEsperar((Form) this);
      frmEsperar.Mensaje = "Comprobando Datos...";
      frmEsperar.Width = 320;
      frmEsperar esperar = frmEsperar;
      esperar.SoloEsperar();
      string str;
      try
      {
        str = this._expertoEB.EmisionBoletoHabilitado() ? this._expertoEB.ComprobarMovimientosDeuda(this.dtoEmiBole) : "La emisión de boleto NO se encuentra activa. Verificar...";
      }
      catch (Exception ex)
      {
        esperar.Close();
        new frmMensaje((Form) this).mostrarError($"Ocurrió un error:\n\n{ex.Message}.");
        return;
      }
      if (!string.IsNullOrWhiteSpace(str))
      {
        esperar.Close();
        new frmMensaje((Form) this).mostrarError(str ?? "");
      }
      else
      {
        esperar.Mensaje = "Comprobando Impresora...";
        Application.DoEvents();
        string impresora = this.cboImpresora.Items == null || this.cboImpresora.Items.Count <= 0 || this.cboImpresora.SelectedItem == null ? string.Empty : this.cboImpresora.SelectedItem.ToString();
        if (string.IsNullOrWhiteSpace(impresora) || !this.expConfig.ImpresoraActiva(impresora))
        {
          esperar.Close();
          new frmMensaje((Form) this).mostrarError("La impresora seleccionada no se encuentra activa o no es válida. Verificar...");
        }
        else
        {
          esperar.Mensaje = "Generando Boleto...";
          Application.DoEvents();
          try
          {
            this._expertoEB.GenerarNuevoBoleto(this.dtoEmiBole);
          }
          catch (Exception ex)
          {
            esperar.Close();
            new frmMensaje((Form) this).mostrarError($"Ocurrió un error al generar el boleto.\n\n{ex.Message}.");
            return;
          }
          if (string.IsNullOrWhiteSpace(this.dtoEmiBole.NewNumeBole))
          {
            esperar.Close();
            new frmMensaje((Form) this).mostrarError("No se pudo obtener el número de boleto para imprimir.");
          }
          else
          {
            esperar.Mensaje = "Imprimiendo Boleto...";
            Application.DoEvents();
            string html;
            try
            {
              this.dtoEmiBole.Tipo = TipoEB.ImprimirBoleDeuda;
              html = new RepEBMP().ArmarReporte((IBoleto) this.dtoEmiBole);
            }
            catch (Exception ex)
            {
              esperar.Close();
              new frmMensaje((Form) this).mostrarError($"Ocurrió un error al imprimir el boleto.\n\n{ex.Message}.");
              return;
            }
            Print.ImprimirHTML(html, impresora, (Action<bool>) (ProcesoCompleto =>
            {
              esperar.Close();
              if (!ProcesoCompleto)
                return;
              this.DialogResult = DialogResult.OK;
            }));
          }
        }
      }
    }
    finally
    {
      this._isProcessing = false;
      ((Control) this.btnImprimir).Enabled = true;
    }
  }

  private void CargarImpresoras()
  {
    this.cboImpresora.DataSource = (object) this.expConfig.config.Impresoras.ToList<string>();
    if (string.IsNullOrWhiteSpace(this.expConfig.config.ImprBole) || !this.expConfig.config.Impresoras.Exists((Predicate<string>) (x => x == this.expConfig.config.ImprBole)))
      return;
    this.cboImpresora.SelectedIndex = this.expConfig.config.Impresoras.IndexOf(this.expConfig.config.ImprBole);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (mdlResumen));
    this.lblResumen = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.btnImprimir = new SimpleButton();
    this.btnVP = new SimpleButton();
    this.btnCerrar = new MetroButton();
    this.groupBox1 = new GroupBox();
    this.cboImpresora = new MetroComboBox();
    this.txtCapital = new MetroTextBox();
    this.txtRecargo = new MetroTextBox();
    this.txtApremio = new MetroTextBox();
    this.txtTotal = new MetroTextBox();
    this.txtPagoCuenta = new MetroTextBox();
    this.lblPagoCuenta = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
    this.txtInteres = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.txtDescuento = new MetroTextBox();
    this.metroLabel5 = new MetroLabel();
    this.groupBox1.SuspendLayout();
    this.SuspendLayout();
    this.lblResumen.AutoSize = false;
    this.lblResumen.Dock = DockStyle.Top;
    this.lblResumen.FontSize = 18f;
    this.lblResumen.FontWeight = MetroFontWeight.Bold;
    this.lblResumen.Location = new Point(0, 0);
    this.lblResumen.Name = "lblResumen";
    this.lblResumen.Size = new Size(416, 60);
    this.lblResumen.TabIndex = 0;
    this.lblResumen.Text = "Resumen de Deuda Seleccionada";
    this.lblResumen.TextAlign = ContentAlignment.MiddleCenter;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(84, 73);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(50, 19);
    this.metroLabel1.TabIndex = 1;
    this.metroLabel1.Text = "Capital";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(69, 106);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(65, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Recargo";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(69, 141);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(65, 19);
    this.metroLabel3.TabIndex = 5;
    this.metroLabel3.Text = "Apremio";
    this.metroLabel3.TextAlign = ContentAlignment.MiddleRight;
    ((BaseStyleControl) this.btnImprimir).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnImprimir).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnImprimir).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnImprimir.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnImprimir.ImageOptions.Image");
    ((Control) this.btnImprimir).Location = new Point(240 /*0xF0*/, 369);
    ((Control) this.btnImprimir).Name = "btnImprimir";
    ((Control) this.btnImprimir).Size = new Size(45, 34);
    ((Control) this.btnImprimir).TabIndex = 3;
    ((Control) this.btnImprimir).Click += new EventHandler(this.btnImprimir_Click);
    ((BaseStyleControl) this.btnVP).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnVP).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnVP).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnVP.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnVP.ImageOptions.Image");
    ((Control) this.btnVP).Location = new Point(158, 369);
    ((Control) this.btnVP).Name = "btnVP";
    ((Control) this.btnVP).Size = new Size(45, 34);
    ((Control) this.btnVP).TabIndex = 2;
    ((Control) this.btnVP).Click += new EventHandler(this.btnVP_Click);
    this.btnCerrar.DialogResult = DialogResult.Cancel;
    this.btnCerrar.Location = new Point(389, 3);
    this.btnCerrar.Name = "btnCerrar";
    this.btnCerrar.Size = new Size(23, 23);
    this.btnCerrar.TabIndex = 4;
    this.btnCerrar.Text = "X";
    this.groupBox1.Controls.Add((Control) this.cboImpresora);
    this.groupBox1.Location = new Point(69, 313);
    this.groupBox1.Name = "groupBox1";
    this.groupBox1.Size = new Size(259, 50);
    this.groupBox1.TabIndex = 1;
    this.groupBox1.TabStop = false;
    this.groupBox1.Text = "Impresión";
    this.cboImpresora.FormattingEnabled = false;
    this.cboImpresora.Location = new Point(9, 18);
    this.cboImpresora.Name = "cboImpresora";
    this.cboImpresora.Size = new Size(241, 23);
    this.cboImpresora.TabIndex = 1;
    this.txtCapital.Location = new Point(146, 71);
    this.txtCapital.MaxLength = 100;
    this.txtCapital.Name = "txtCapital";
    this.txtCapital.ReadOnly = true;
    this.txtCapital.Size = new Size(178, 23);
    this.txtCapital.TabIndex = 14;
    this.txtCapital.TabStop = false;
    this.txtCapital.TextAlign = HorizontalAlignment.Right;
    this.txtRecargo.Location = new Point(146, 106);
    this.txtRecargo.MaxLength = 100;
    this.txtRecargo.Name = "txtRecargo";
    this.txtRecargo.ReadOnly = true;
    this.txtRecargo.Size = new Size(178, 23);
    this.txtRecargo.TabIndex = 15;
    this.txtRecargo.TabStop = false;
    this.txtRecargo.TextAlign = HorizontalAlignment.Right;
    this.txtApremio.Location = new Point(146, 141);
    this.txtApremio.MaxLength = 100;
    this.txtApremio.Name = "txtApremio";
    this.txtApremio.ReadOnly = true;
    this.txtApremio.Size = new Size(178, 23);
    this.txtApremio.TabIndex = 16 /*0x10*/;
    this.txtApremio.TabStop = false;
    this.txtApremio.TextAlign = HorizontalAlignment.Right;
    this.txtTotal.Location = new Point(146, 246);
    this.txtTotal.MaxLength = 100;
    this.txtTotal.Name = "txtTotal";
    this.txtTotal.ReadOnly = true;
    this.txtTotal.Size = new Size(178, 23);
    this.txtTotal.TabIndex = 19;
    this.txtTotal.TabStop = false;
    this.txtTotal.TextAlign = HorizontalAlignment.Right;
    this.txtPagoCuenta.Location = new Point(146, 281);
    this.txtPagoCuenta.MaxLength = 100;
    this.txtPagoCuenta.Name = "txtPagoCuenta";
    this.txtPagoCuenta.ReadOnly = true;
    this.txtPagoCuenta.Size = new Size(178, 23);
    this.txtPagoCuenta.TabIndex = 21;
    this.txtPagoCuenta.TabStop = false;
    this.txtPagoCuenta.TextAlign = HorizontalAlignment.Right;
    this.lblPagoCuenta.AutoSize = false;
    this.lblPagoCuenta.Location = new Point(19, 281);
    this.lblPagoCuenta.Name = "lblPagoCuenta";
    this.lblPagoCuenta.Size = new Size(115, 19);
    this.lblPagoCuenta.TabIndex = 20;
    this.lblPagoCuenta.Text = "PAGO A CUENTA";
    this.lblPagoCuenta.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(84, 246);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(50, 19);
    this.metroLabel6.TabIndex = 22;
    this.metroLabel6.Text = "TOTAL";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.txtInteres.Location = new Point(146, 176 /*0xB0*/);
    this.txtInteres.MaxLength = 100;
    this.txtInteres.Name = "txtInteres";
    this.txtInteres.ReadOnly = true;
    this.txtInteres.Size = new Size(178, 23);
    this.txtInteres.TabIndex = 24;
    this.txtInteres.TabStop = false;
    this.txtInteres.TextAlign = HorizontalAlignment.Right;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(84, 178);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(50, 19);
    this.metroLabel4.TabIndex = 23;
    this.metroLabel4.Text = "Interés";
    this.metroLabel4.TextAlign = ContentAlignment.MiddleRight;
    this.txtDescuento.Location = new Point(146, 211);
    this.txtDescuento.MaxLength = 100;
    this.txtDescuento.Name = "txtDescuento";
    this.txtDescuento.ReadOnly = true;
    this.txtDescuento.Size = new Size(178, 23);
    this.txtDescuento.TabIndex = 26;
    this.txtDescuento.TabStop = false;
    this.txtDescuento.TextAlign = HorizontalAlignment.Right;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(60, 213);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(74, 19);
    this.metroLabel5.TabIndex = 25;
    this.metroLabel5.Text = "Descuento";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.AcceptButton = (IButtonControl) this.btnImprimir;
    this.AutoScaleMode = AutoScaleMode.None;
    this.CancelButton = (IButtonControl) this.btnCerrar;
    this.ClientSize = new Size(416, 417);
    this.ControlBox = false;
    this.Controls.Add((Control) this.txtDescuento);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.txtInteres);
    this.Controls.Add((Control) this.metroLabel4);
    this.Controls.Add((Control) this.metroLabel6);
    this.Controls.Add((Control) this.txtPagoCuenta);
    this.Controls.Add((Control) this.lblPagoCuenta);
    this.Controls.Add((Control) this.txtTotal);
    this.Controls.Add((Control) this.txtApremio);
    this.Controls.Add((Control) this.txtRecargo);
    this.Controls.Add((Control) this.txtCapital);
    this.Controls.Add((Control) this.groupBox1);
    this.Controls.Add((Control) this.btnCerrar);
    this.Controls.Add((Control) this.btnVP);
    this.Controls.Add((Control) this.btnImprimir);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.lblResumen);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.None;
    this.MaximizeBox = false;
    this.Name = nameof (mdlResumen);
    this.StartPosition = FormStartPosition.CenterParent;
    this.Text = nameof (mdlResumen);
    this.groupBox1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
