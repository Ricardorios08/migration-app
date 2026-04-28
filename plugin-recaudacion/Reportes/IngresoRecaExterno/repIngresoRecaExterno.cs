// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.IngresoRecaExterno.repIngresoRecaExterno
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.IngresoRecaExterno;

public class repIngresoRecaExterno : InfoGovPrintForm
{
  private ExpIngresoRecaExterno expIngr;
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;
  private MetroDateTextBox dtbFeenAcpa;

  public repIngresoRecaExterno()
    : base("Ingreso Recaudador Externo")
  {
    this.InitializeComponent();
    this.dtbFeenAcpa.Date = Misc.Now().Date;
    this.expIngr = new ExpIngresoRecaExterno();
  }

  protected override string validateControls()
  {
    if (this.dtbFeenAcpa.Date < new DateTime(1900, 1, 1) || this.dtbFeenAcpa.Date > new DateTime(2099, 1, 1))
      return "Fecha incorrecta.";
    return !this.expIngr.ExisteRegistroRepo(this.dtbFeenAcpa.Date) ? "No existen registros para la fecha " + this.dtbFeenAcpa.Date.ToShortDateString() : string.Empty;
  }

  protected override InfoGovReport createReport()
  {
    return (InfoGovReport) new irepIngresoRecaExterno()
    {
      FechaEnvio = this.dtbFeenAcpa.Date
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
    this.metroLabel1 = new MetroLabel();
    this.dtbFeenAcpa = new MetroDateTextBox();
    this.SuspendLayout();
    this.butClose.Location = new Point(378, 6);
    this.butClose.TabIndex = 3;
    this.butGenerate.Location = new Point(169, 186);
    this.butGenerate.TabIndex = 2;
    this.metroLabel1.Location = new Point(71, 87);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(97, 19);
    this.metroLabel1.TabIndex = 4;
    this.metroLabel1.Text = "Fecha de Envío";
    this.dtbFeenAcpa.Location = new Point(180, 85);
    this.dtbFeenAcpa.Name = "dtbFeenAcpa";
    this.dtbFeenAcpa.Size = new Size(90, 25);
    this.dtbFeenAcpa.TabIndex = 1;
    this.AcceptButton = (IButtonControl) this.butGenerate;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(413, 222);
    this.Controls.Add((Control) this.dtbFeenAcpa);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repIngresoRecaExterno);
    this.Text = nameof (repIngresoRecaExterno);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.dtbFeenAcpa, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
