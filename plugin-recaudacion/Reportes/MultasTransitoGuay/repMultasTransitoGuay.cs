// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.MultasTransitoGuay.repMultasTransitoGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Metro.Controls;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.MultasTransitoGuay;

public class repMultasTransitoGuay : InfoGovPrintForm
{
  private DateTime hoy = Misc.Now(false);
  private IContainer components = (IContainer) null;
  private MetroDateTextBox txtFechaHasta;
  private MetroLabel metroLabel5;
  private MetroDateTextBox txtFechaDesde;
  private MetroLabel metroLabel6;

  public repMultasTransitoGuay()
    : base("Multas de Tránsito")
  {
    this.InitializeComponent();
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
    return stringBuilder.ToString();
  }

  private void txtFechaDesde_Validated(object sender, EventArgs e)
  {
    if (!(this.txtFechaHasta.Date == DateTime.MinValue))
      return;
    this.txtFechaHasta.Date = this.hoy;
  }

  protected override InfoGovReport createReport()
  {
    return (InfoGovReport) new irepMultasTransitoGuay()
    {
      FechaDesde = this.txtFechaDesde.Date,
      FechaHasta = this.txtFechaHasta.Date
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
    this.SuspendLayout();
    this.butClose.Location = new Point(270, 3);
    this.butGenerate.Location = new Point(115, 162);
    this.txtFechaHasta.AllowEmpty = true;
    this.txtFechaHasta.Location = new Point(141, 99);
    this.txtFechaHasta.Name = "txtFechaHasta";
    this.txtFechaHasta.Size = new Size(90, 25);
    this.txtFechaHasta.TabIndex = 67;
    this.txtFechaHasta.Tag = (object) "Hasta";
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(39, 105);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(93, 19);
    this.metroLabel5.TabIndex = 68;
    this.metroLabel5.Text = "Fecha Hasta:";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.txtFechaDesde.AllowEmpty = true;
    this.txtFechaDesde.Location = new Point(141, 62);
    this.txtFechaDesde.Name = "txtFechaDesde";
    this.txtFechaDesde.Size = new Size(90, 25);
    this.txtFechaDesde.TabIndex = 65;
    this.txtFechaDesde.Tag = (object) "Desde";
    this.txtFechaDesde.Validated += new EventHandler(this.txtFechaDesde_Validated);
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(39, 68);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(93, 19);
    this.metroLabel6.TabIndex = 66;
    this.metroLabel6.Text = "Fecha Desde:";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(305, 198);
    this.Controls.Add((Control) this.txtFechaHasta);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.txtFechaDesde);
    this.Controls.Add((Control) this.metroLabel6);
    this.Name = nameof (repMultasTransitoGuay);
    this.Text = "Cobranza Multas de Tránsito";
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel6, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaDesde, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel5, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaHasta, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
