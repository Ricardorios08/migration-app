// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Modals.mdlReporte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Reportes.CuentaCorriente.Maipu;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Modals;

public class mdlReporte : InfoGovPrintForm
{
  private DTOReporte datos;
  private ExpConfiguracion _expConfig;
  private IContainer components = (IContainer) null;
  private GroupBox gpbImprimir;
  private GroupBox gpbExportar;
  private MetroButton btnVistaPrevia;
  private SimpleButton btnImprimir;
  private SimpleButton btnExpoXls;
  private SimpleButton btnExpoPdf;

  public mdlReporte(DTOReporte datos)
    : base("Movimientos Cuenta Corriente")
  {
    this.InitializeComponent();
    this._expConfig = new ExpConfiguracion(true);
    this.datos = datos;
    this.gpbExportar.Visible = false;
  }

  private void btnVistaPrevia_Click(object sender, EventArgs e)
  {
    this.datos.TipoReporte = TipoReporte.VistaPrevia;
    ReportTools.GenerarReporte(ReportMode.Preview, new ReportesMP().ArmarReporte(this.datos), (InfoGovPrintForm) this, "Movimientos de la Cuenta Corriente");
  }

  private void btnImprimir_Click(object sender, EventArgs e)
  {
    this.datos.TipoReporte = TipoReporte.Imprimir;
    Print.ImprimirHTML(new ReportesMP().ArmarReporte(this.datos), this._expConfig.config.ImprRepo);
  }

  private void btnExpoPdf_Click(object sender, EventArgs e)
  {
  }

  private void btnExpoXls_Click(object sender, EventArgs e)
  {
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (mdlReporte));
    this.gpbImprimir = new GroupBox();
    this.btnImprimir = new SimpleButton();
    this.btnVistaPrevia = new MetroButton();
    this.gpbExportar = new GroupBox();
    this.btnExpoXls = new SimpleButton();
    this.btnExpoPdf = new SimpleButton();
    this.gpbImprimir.SuspendLayout();
    this.gpbExportar.SuspendLayout();
    this.SuspendLayout();
    this.butClose.Location = new Point(281, 10);
    this.butGenerate.Location = new Point(119, -57);
    this.butGenerate.Visible = false;
    this.gpbImprimir.Controls.Add((Control) this.btnImprimir);
    this.gpbImprimir.Controls.Add((Control) this.btnVistaPrevia);
    this.gpbImprimir.Location = new Point(12, 36);
    this.gpbImprimir.Name = "gpbImprimir";
    this.gpbImprimir.Size = new Size(177, 69);
    this.gpbImprimir.TabIndex = 0;
    this.gpbImprimir.TabStop = false;
    this.gpbImprimir.Text = "Imprimir";
    ((BaseStyleControl) this.btnImprimir).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnImprimir).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnImprimir).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnImprimir.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnImprimir.ImageOptions.Image");
    ((Control) this.btnImprimir).Location = new Point(124, 23);
    ((Control) this.btnImprimir).Name = "btnImprimir";
    ((Control) this.btnImprimir).Size = new Size(45, 34);
    ((Control) this.btnImprimir).TabIndex = 7;
    ((Control) this.btnImprimir).Click += new EventHandler(this.btnImprimir_Click);
    this.btnVistaPrevia.Location = new Point(9, 23);
    this.btnVistaPrevia.Name = "btnVistaPrevia";
    this.btnVistaPrevia.Size = new Size(81, 34);
    this.btnVistaPrevia.TabIndex = 0;
    this.btnVistaPrevia.Text = "VISTA PREVIA";
    this.btnVistaPrevia.Click += new EventHandler(this.btnVistaPrevia_Click);
    this.gpbExportar.Controls.Add((Control) this.btnExpoXls);
    this.gpbExportar.Controls.Add((Control) this.btnExpoPdf);
    this.gpbExportar.Location = new Point(195, 36);
    this.gpbExportar.Name = "gpbExportar";
    this.gpbExportar.Size = new Size(109, 69);
    this.gpbExportar.TabIndex = 1;
    this.gpbExportar.TabStop = false;
    this.gpbExportar.Text = "Exportar";
    ((BaseStyleControl) this.btnExpoXls).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnExpoXls).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnExpoXls).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnExpoXls.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnExpoXls.ImageOptions.Image");
    ((Control) this.btnExpoXls).Location = new Point(57, 23);
    ((Control) this.btnExpoXls).Name = "btnExpoXls";
    ((Control) this.btnExpoXls).Size = new Size(45, 34);
    ((Control) this.btnExpoXls).TabIndex = 9;
    ((Control) this.btnExpoXls).Click += new EventHandler(this.btnExpoXls_Click);
    ((BaseStyleControl) this.btnExpoPdf).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnExpoPdf).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnExpoPdf).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnExpoPdf.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnExpoPdf.ImageOptions.Image");
    ((Control) this.btnExpoPdf).Location = new Point(6, 23);
    ((Control) this.btnExpoPdf).Name = "btnExpoPdf";
    ((Control) this.btnExpoPdf).Size = new Size(45, 34);
    ((Control) this.btnExpoPdf).TabIndex = 8;
    ((Control) this.btnExpoPdf).Click += new EventHandler(this.btnExpoPdf_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(313, 115);
    this.Controls.Add((Control) this.gpbExportar);
    this.Controls.Add((Control) this.gpbImprimir);
    this.Font = new Font("Calibri", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.MaximizeBox = false;
    this.MinimizeBox = false;
    this.Name = nameof (mdlReporte);
    this.ShowIcon = false;
    this.ShowInTaskbar = false;
    this.StartPosition = FormStartPosition.CenterParent;
    this.Text = "Movimientos de la Cuenta Corriente";
    this.Controls.SetChildIndex((Control) this.gpbImprimir, 0);
    this.Controls.SetChildIndex((Control) this.gpbExportar, 0);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.gpbImprimir.ResumeLayout(false);
    this.gpbExportar.ResumeLayout(false);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
