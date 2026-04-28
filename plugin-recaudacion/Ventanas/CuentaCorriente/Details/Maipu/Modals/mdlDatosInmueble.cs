// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Details.Maipu.Modals.mdlDatosInmueble
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Catastro.Expertos;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Reports;
using InfoGov.Utils;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Details.Maipu.Modals;

public class mdlDatosInmueble : BaseForm
{
  private int CodiInmu;
  private string html;
  private ExpConfiguracion expConfig;
  private ExpInmuebleMP expInmu;
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel2;
  private SimpleButton btnVP;
  private SimpleButton btnImprimir;
  private MetroLabel metroLabel1;

  public mdlDatosInmueble(int cuenta)
  {
    this.InitializeComponent();
    this.CodiInmu = cuenta;
    this.html = string.Empty;
    this.expInmu = new ExpInmuebleMP();
    this.expConfig = new ExpConfiguracion(true);
  }

  private bool ValidarCuenta() => this.CodiInmu > 0;

  private void btnVP_Click(object sender, EventArgs e)
  {
    if (!this.ValidarCuenta())
      return;
    if (string.IsNullOrEmpty(this.html))
      new frmEsperar((Form) this).generar((Func<string>) (() => this.html = this.expInmu.GenerarReporteDatosFijos(this.CodiInmu)));
    try
    {
      ReportTools.GenerarReporte(ReportMode.Preview, this.html, (InfoGovPrintForm) null, "Datos Fijos Inmueble");
    }
    catch (Exception ex)
    {
      ToastHelper.ShowOrFallback((Form) this, "Error: " + ex.Message, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
    }
  }

  private void btnImprimir_Click(object sender, EventArgs e)
  {
    if (!this.ValidarCuenta())
      return;
    if (string.IsNullOrEmpty(this.html))
      new frmEsperar((Form) this).generar((Func<string>) (() => this.html = this.expInmu.GenerarReporteDatosFijos(this.CodiInmu)));
    try
    {
      new frmEsperar((Form) this).procesar((Action) (() => Print.ImprimirHTML(this.html, this.expConfig.config.ImprRepo)), "Imprimiendo");
    }
    catch (Exception ex)
    {
      ToastHelper.ShowOrFallback((Form) this, "Error: " + ex.Message, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
    }
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (mdlDatosInmueble));
    this.metroLabel2 = new MetroLabel();
    this.btnVP = new SimpleButton();
    this.btnImprimir = new SimpleButton();
    this.metroLabel1 = new MetroLabel();
    this.SuspendLayout();
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.FontSize = 20f;
    this.metroLabel2.Location = new Point(288, 178);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(222, 28);
    this.metroLabel2.TabIndex = 2;
    this.metroLabel2.Text = "SIN DATOS DISPONIBLES";
    ((BaseStyleControl) this.btnVP).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnVP).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnVP).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnVP.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnVP.ImageOptions.Image");
    ((Control) this.btnVP).Location = new Point(15, 404);
    ((Control) this.btnVP).Name = "btnVP";
    ((Control) this.btnVP).Size = new Size(45, 34);
    ((Control) this.btnVP).TabIndex = 4;
    ((Control) this.btnVP).Click += new EventHandler(this.btnVP_Click);
    ((BaseStyleControl) this.btnImprimir).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnImprimir).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnImprimir).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnImprimir.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnImprimir.ImageOptions.Image");
    ((Control) this.btnImprimir).Location = new Point(72, 404);
    ((Control) this.btnImprimir).Name = "btnImprimir";
    ((Control) this.btnImprimir).Size = new Size(45, 34);
    ((Control) this.btnImprimir).TabIndex = 5;
    ((Control) this.btnImprimir).Click += new EventHandler(this.btnImprimir_Click);
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.FontSize = 20f;
    this.metroLabel1.Location = new Point(15, 367);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(102, 28);
    this.metroLabel1.TabIndex = 6;
    this.metroLabel1.Text = "Datos Fijos";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(800, 450);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.btnVP);
    this.Controls.Add((Control) this.btnImprimir);
    this.Controls.Add((Control) this.metroLabel2);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.FixedSingle;
    this.MaximizeBox = false;
    this.MinimizeBox = false;
    this.Name = nameof (mdlDatosInmueble);
    this.ShowIcon = false;
    this.ShowInTaskbar = false;
    this.StartPosition = FormStartPosition.CenterParent;
    this.Text = "DATOS INMUEBLE";
    this.ResumeLayout(false);
  }
}
