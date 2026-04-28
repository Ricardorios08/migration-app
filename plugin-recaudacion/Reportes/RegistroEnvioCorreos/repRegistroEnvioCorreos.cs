// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos.repRegistroEnvioCorreos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos;

public class repRegistroEnvioCorreos : InfoGovPrintForm
{
  private IContainer components = (IContainer) null;
  private MetroDateTextBox txtFechaHasta;
  private MetroLabel metroLabel5;
  private MetroDateTextBox txtFechaDesde;
  private MetroLabel metroLabel6;
  private MetroRadioButton RadioButtonIndividual;
  private MetroRadioButton RadioButtonMasiva;

  public repRegistroEnvioCorreos()
    : base("Registro Envío de Correos")
  {
    this.InitializeComponent();
    this.RadioButtonIndividual.Visible = this.RadioButtonMasiva.Visible = false;
  }

  protected override string validateControls()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.txtFechaDesde.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Ingresar fecha desde");
    if (this.txtFechaHasta.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Ingresar fecha hasta");
    if (this.txtFechaDesde.Date > this.txtFechaHasta.Date)
      stringBuilder.AppendLine("Fecha desde no puede ser mayor fecha hasta");
    if (this.txtFechaDesde.Date != DateTime.MinValue && this.txtFechaHasta.Date != DateTime.MinValue)
    {
      if (PARAMS.Municipio == "Tunuyán" || PARAMS.Municipio == "SanMartín")
      {
        if (new ExpEnviarMailMasivoTunuyan().getRegistroEnviosTunuyan(this.txtFechaDesde.Date, this.txtFechaHasta.Date).Count == 0)
          stringBuilder.AppendLine("No se encuentran registros.");
      }
      else if (new ExpEmisionMasivaTasas().getRegistroEnvioCorreos(this.txtFechaDesde.Date, this.txtFechaHasta.Date, this.RadioButtonIndividual.Checked).Count == 0)
        stringBuilder.AppendLine("No se encuentran registros.");
    }
    return stringBuilder.ToString();
  }

  private void txtFechaDesde_Validated(object sender, EventArgs e)
  {
    if (!(this.txtFechaDesde.Date != DateTime.MinValue))
      return;
    this.txtFechaHasta.Date = this.txtFechaDesde.Date;
  }

  protected override InfoGovReport createReport()
  {
    if (PARAMS.Municipio == "Tunuyán" || PARAMS.Municipio == "SanMartín")
      return (InfoGovReport) new irepRegistroEnvioCorreosTunuyan()
      {
        FechaDesde = this.txtFechaDesde.Date,
        FechaHasta = this.txtFechaHasta.Date
      };
    return (InfoGovReport) new irepRegistroEnvioCorreos()
    {
      FechaDesde = this.txtFechaDesde.Date,
      FechaHasta = this.txtFechaHasta.Date,
      indimasi = false
    };
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.txtFechaHasta = new MetroDateTextBox();
    this.metroLabel5 = new MetroLabel();
    this.txtFechaDesde = new MetroDateTextBox();
    this.metroLabel6 = new MetroLabel();
    this.RadioButtonIndividual = new MetroRadioButton();
    this.RadioButtonMasiva = new MetroRadioButton();
    this.SuspendLayout();
    this.txtFechaHasta.AllowEmpty = true;
    this.txtFechaHasta.Location = new Point(193, 135);
    this.txtFechaHasta.Name = "txtFechaHasta";
    this.txtFechaHasta.Size = new Size(90, 25);
    this.txtFechaHasta.TabIndex = 63 /*0x3F*/;
    this.txtFechaHasta.Tag = (object) "Hasta";
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(91, 141);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(93, 19);
    this.metroLabel5.TabIndex = 64 /*0x40*/;
    this.metroLabel5.Text = "Fecha Hasta:";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.txtFechaDesde.AllowEmpty = true;
    this.txtFechaDesde.Location = new Point(193, 98);
    this.txtFechaDesde.Name = "txtFechaDesde";
    this.txtFechaDesde.Size = new Size(90, 25);
    this.txtFechaDesde.TabIndex = 61;
    this.txtFechaDesde.Tag = (object) "Desde";
    this.txtFechaDesde.Validated += new EventHandler(this.txtFechaDesde_Validated);
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(91, 104);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(93, 19);
    this.metroLabel6.TabIndex = 62;
    this.metroLabel6.Text = "Fecha Desde:";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.RadioButtonIndividual.AutoSize = false;
    this.RadioButtonIndividual.Location = new Point(107, 195);
    this.RadioButtonIndividual.Name = "RadioButtonIndividual";
    this.RadioButtonIndividual.Size = new Size(75, 15);
    this.RadioButtonIndividual.TabIndex = 65;
    this.RadioButtonIndividual.Text = "Individual";
    this.RadioButtonIndividual.Visible = false;
    this.RadioButtonMasiva.AutoSize = false;
    this.RadioButtonMasiva.Checked = true;
    this.RadioButtonMasiva.Location = new Point(228, 195);
    this.RadioButtonMasiva.Name = "RadioButtonMasiva";
    this.RadioButtonMasiva.Size = new Size(60, 15);
    this.RadioButtonMasiva.TabIndex = 66;
    this.RadioButtonMasiva.TabStop = true;
    this.RadioButtonMasiva.Text = "Masiva";
    this.RadioButtonMasiva.Visible = false;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(400, 270);
    this.Controls.Add((Control) this.RadioButtonMasiva);
    this.Controls.Add((Control) this.RadioButtonIndividual);
    this.Controls.Add((Control) this.txtFechaHasta);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.txtFechaDesde);
    this.Controls.Add((Control) this.metroLabel6);
    this.Name = nameof (repRegistroEnvioCorreos);
    this.Text = nameof (repRegistroEnvioCorreos);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel6, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaDesde, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel5, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaHasta, 0);
    this.Controls.SetChildIndex((Control) this.RadioButtonIndividual, 0);
    this.Controls.SetChildIndex((Control) this.RadioButtonMasiva, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
