// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Maipu.ConsultaBoleto.repConsultaBoletoMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Recaudacion.Expertos.EmisionBoleto;
using InfoGov.Reports;
using InfoGov.Utils;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Maipu.ConsultaBoleto;

public class repConsultaBoletoMP : InfoGovPrintForm
{
  private DateTime hoy;
  private ExpEBMaipu experto;
  private ExpConfiguracion expConfig;
  private IContainer components = (IContainer) null;
  private SimpleButton btnVP;
  private SimpleButton btnImprimir;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroIntTextBox mibPeriodo;
  private MetroIntTextBox mibNumero;

  public repConsultaBoletoMP()
    : base("Consulta Boleto")
  {
    this.InitializeComponent();
    this.experto = new ExpEBMaipu();
    this.expConfig = new ExpConfiguracion(true);
    this.hoy = Misc.Now();
    this.mibPeriodo.IntText = this.hoy.Year;
  }

  private void Limpiar()
  {
    this.mibPeriodo.IntText = this.hoy.Year;
    this.mibNumero.Text = string.Empty;
  }

  private bool Validar()
  {
    if (this.mibPeriodo.IntText <= 1900)
    {
      ToastHelper.ShowOrFallback((Form) this, "El periodo debe ser mayor a 1900.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
      return false;
    }
    if (this.mibNumero.LongText <= 0L)
    {
      ToastHelper.ShowOrFallback((Form) this, "El número debe ser mayor a 0.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
      return false;
    }
    if (this.experto.ExisteBoleto(this.mibPeriodo.IntText, this.mibNumero.LongText))
      return true;
    ToastHelper.ShowOrFallback((Form) this, "El boleto ingresado NO existe. Verificar...", ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
    return false;
  }

  private void btnVP_Click(object sender, EventArgs e)
  {
    if (!this.Validar())
      return;
    try
    {
      ReportTools.GenerarReporte(ReportMode.Preview, new frmEsperar((Form) this).generar((Func<string>) (() => this.experto.GenerarReporteConsultaBoleto(this.mibPeriodo.IntText, this.mibNumero.LongText))), (InfoGovPrintForm) null, "Consulta de Boleto");
    }
    catch (Exception ex)
    {
      ToastHelper.ShowOrFallback((Form) this, "Error: " + ex.Message, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
    }
  }

  private void btnImprimir_Click(object sender, EventArgs e)
  {
    if (!this.Validar())
      return;
    try
    {
      string html = new frmEsperar((Form) this).generar((Func<string>) (() => this.experto.GenerarReporteConsultaBoleto(this.mibPeriodo.IntText, this.mibNumero.LongText)));
      new frmEsperar((Form) this).procesar((Action) (() => Print.ImprimirHTML(html, this.expConfig.config.ImprRepo)), "Imprimiendo");
      this.Limpiar();
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (repConsultaBoletoMP));
    this.btnVP = new SimpleButton();
    this.btnImprimir = new SimpleButton();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.mibPeriodo = new MetroIntTextBox();
    this.mibNumero = new MetroIntTextBox();
    this.SuspendLayout();
    this.butClose.Location = new Point(344, 3);
    this.butClose.TabIndex = 99;
    this.butGenerate.Enabled = false;
    this.butGenerate.Location = new Point(152, 170);
    this.butGenerate.Visible = false;
    ((Control) this.btnVP).Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
    ((BaseStyleControl) this.btnVP).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnVP).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnVP).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnVP.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnVP.ImageOptions.Image");
    ((Control) this.btnVP).Location = new Point(129, 159);
    ((Control) this.btnVP).Name = "btnVP";
    ((Control) this.btnVP).Size = new Size(45, 34);
    ((Control) this.btnVP).TabIndex = 3;
    ((Control) this.btnVP).Click += new EventHandler(this.btnVP_Click);
    ((Control) this.btnImprimir).Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
    ((BaseStyleControl) this.btnImprimir).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnImprimir).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnImprimir).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnImprimir.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnImprimir.ImageOptions.Image");
    ((Control) this.btnImprimir).Location = new Point(211, 159);
    ((Control) this.btnImprimir).Name = "btnImprimir";
    ((Control) this.btnImprimir).Size = new Size(45, 34);
    ((Control) this.btnImprimir).TabIndex = 4;
    ((Control) this.btnImprimir).Click += new EventHandler(this.btnImprimir_Click);
    this.metroLabel1.Location = new Point(15, 63 /*0x3F*/);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(97, 19);
    this.metroLabel1.TabIndex = 102;
    this.metroLabel1.Text = "Periodo Boleto";
    this.metroLabel2.Location = new Point(46, 98);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(66, 19);
    this.metroLabel2.TabIndex = 103;
    this.metroLabel2.Text = "N° Boleto";
    this.mibPeriodo.Location = new Point(124, 61);
    this.mibPeriodo.MaxLength = 4;
    this.mibPeriodo.MaxValue = 2100;
    this.mibPeriodo.Name = "mibPeriodo";
    this.mibPeriodo.Size = new Size(78, 23);
    this.mibPeriodo.TabIndex = 1;
    this.mibPeriodo.TextAlign = HorizontalAlignment.Center;
    this.mibNumero.Location = new Point(124, 96 /*0x60*/);
    this.mibNumero.MaxLength = 9;
    this.mibNumero.MaxValue = 999999999;
    this.mibNumero.MinValue = 1;
    this.mibNumero.Name = "mibNumero";
    this.mibNumero.Size = new Size(102, 23);
    this.mibNumero.TabIndex = 2;
    this.mibNumero.TextAlign = HorizontalAlignment.Center;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(379, 206);
    this.Controls.Add((Control) this.mibNumero);
    this.Controls.Add((Control) this.mibPeriodo);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.btnVP);
    this.Controls.Add((Control) this.btnImprimir);
    this.Name = nameof (repConsultaBoletoMP);
    this.Text = nameof (repConsultaBoletoMP);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.btnImprimir, 0);
    this.Controls.SetChildIndex((Control) this.btnVP, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.mibPeriodo, 0);
    this.Controls.SetChildIndex((Control) this.mibNumero, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
