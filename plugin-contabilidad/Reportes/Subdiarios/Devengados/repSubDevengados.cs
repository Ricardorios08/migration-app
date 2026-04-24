// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados.repSubDevengados
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Metro.Controls;
using InfoGov.Reports;
using System;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados;

public class repSubDevengados : InfoGovPrintForm
{
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroDateTextBox FechaHastaText;
  private MetroCheckBox CheckCuentas;
  private MetroCheckBox checkAjust;
  private MetroDateTextBox FechaDesdeText;

  public repSubDevengados()
    : base("Subdiario Devengados")
  {
    this.InitializeComponent();
  }

  private void InitializeComponent()
  {
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.FechaHastaText = new MetroDateTextBox();
    this.FechaDesdeText = new MetroDateTextBox();
    this.CheckCuentas = new MetroCheckBox();
    this.checkAjust = new MetroCheckBox();
    this.SuspendLayout();
    this.butClose.Location = new Point(399, 7);
    this.butGenerate.Location = new Point(177, 263);
    this.butGenerate.TabIndex = 3;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(94, 93);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(99, 19);
    this.metroLabel1.TabIndex = 4;
    this.metroLabel1.Text = "Fecha Desde:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(94, 130);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(99, 19);
    this.metroLabel2.TabIndex = 5;
    this.metroLabel2.Text = "Fecha Hasta:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.FechaHastaText.Location = new Point(205, 124);
    this.FechaHastaText.Name = "FechaHastaText";
    this.FechaHastaText.Size = new Size(91, 25);
    this.FechaHastaText.TabIndex = 1;
    this.FechaDesdeText.Location = new Point(205, 87);
    this.FechaDesdeText.Name = "FechaDesdeText";
    this.FechaDesdeText.Size = new Size(91, 25);
    this.FechaDesdeText.TabIndex = 0;
    this.CheckCuentas.AutoSize = false;
    this.CheckCuentas.Location = new Point(115, 161);
    this.CheckCuentas.Name = "CheckCuentas";
    this.CheckCuentas.Size = new Size(235, 19);
    this.CheckCuentas.TabIndex = 2;
    this.CheckCuentas.Text = "Excluir Cuentas Extrapresupuestarias";
    this.checkAjust.AutoSize = false;
    this.checkAjust.Location = new Point(115, 192 /*0xC0*/);
    this.checkAjust.Name = "checkAjust";
    this.checkAjust.Size = new Size(235, 19);
    this.checkAjust.TabIndex = 6;
    this.checkAjust.Text = "Sólo Ajustes de Imputacion";
    this.ClientSize = new Size(429, 299);
    this.Controls.Add((Control) this.checkAjust);
    this.Controls.Add((Control) this.CheckCuentas);
    this.Controls.Add((Control) this.FechaDesdeText);
    this.Controls.Add((Control) this.FechaHastaText);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repSubDevengados);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.FechaHastaText, 0);
    this.Controls.SetChildIndex((Control) this.FechaDesdeText, 0);
    this.Controls.SetChildIndex((Control) this.CheckCuentas, 0);
    this.Controls.SetChildIndex((Control) this.checkAjust, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }

  protected override InfoGovReport createReport()
  {
    return (InfoGovReport) new irepSubDevengados()
    {
      desde = this.FechaDesdeText.Date,
      hasta = this.FechaHastaText.Date,
      check = this.CheckCuentas.Checked,
      ajust = this.checkAjust.Checked
    };
  }

  protected override string validateControls()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.FechaDesdeText.Date > this.FechaHastaText.Date)
      stringBuilder.AppendLine("La fecha desde no puede ser mayor que la fecha hasta");
    if (this.FechaDesdeText.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Debe ingresar fecha desde");
    if (this.FechaHastaText.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Debe ingresar fecha hasta");
    if (Misc.Usuario.ToUpper().StartsWith("HTC"))
    {
      if (this.FechaDesdeText.Date > Misc.getFechaConta(this.FechaDesdeText.Date.Year) && this.FechaHastaText.Date > Misc.getFechaConta(this.FechaHastaText.Date.Year))
        stringBuilder.AppendLine("La Contabilidad No se encuentra Cerrada para el rango de fechas indicado. Verifique...");
      else if (this.FechaHastaText.Date > Misc.getFechaConta(this.FechaHastaText.Date.Year))
        stringBuilder.AppendLine($"La Contabilidad No se encuentra Cerrada para la fecha {this.FechaHastaText.Date.ToShortDateString()}. Verifique...");
    }
    return stringBuilder.ToString();
  }
}
