// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja.repIngresoCaja
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
namespace InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja;

public class repIngresoCaja : InfoGovPrintForm
{
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroIntTextBox mibNumeAcpa;
  private MetroDateTextBox dtbFeenAcpa;

  public repIngresoCaja()
    : base("Ingresos de Caja")
  {
    this.InitializeComponent();
    this.dtbFeenAcpa.Date = Misc.Now(false);
    this.mibNumeAcpa.IntText = 1;
  }

  protected override string validateControls()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.dtbFeenAcpa.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Fecha Incorrecta.");
    if (this.mibNumeAcpa.IntText <= 0)
      stringBuilder.AppendLine("N° de grupo incorrecto.");
    return stringBuilder.ToString();
  }

  protected override InfoGovReport createReport()
  {
    return (InfoGovReport) new irepIngresoCaja()
    {
      FeenAcpa = this.dtbFeenAcpa.Date,
      NumeAcpa = this.mibNumeAcpa.IntText
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
    this.metroLabel2 = new MetroLabel();
    this.mibNumeAcpa = new MetroIntTextBox();
    this.dtbFeenAcpa = new MetroDateTextBox();
    this.SuspendLayout();
    this.butClose.Location = new Point(351, 3);
    this.butClose.TabIndex = 4;
    this.butGenerate.Location = new Point(156, 178);
    this.butGenerate.TabIndex = 3;
    this.metroLabel1.Location = new Point(34, 80 /*0x50*/);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(100, 19);
    this.metroLabel1.TabIndex = 4;
    this.metroLabel1.Text = "Fecha de Envío:";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel2.Location = new Point(47, 111);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(87, 19);
    this.metroLabel2.TabIndex = 5;
    this.metroLabel2.Text = "N° de Grupo:";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleRight;
    this.mibNumeAcpa.Location = new Point(155, 111);
    this.mibNumeAcpa.MaxLength = 3;
    this.mibNumeAcpa.Name = "mibNumeAcpa";
    this.mibNumeAcpa.Size = new Size(90, 23);
    this.mibNumeAcpa.TabIndex = 2;
    this.dtbFeenAcpa.Location = new Point(155, 80 /*0x50*/);
    this.dtbFeenAcpa.Name = "dtbFeenAcpa";
    this.dtbFeenAcpa.Size = new Size(90, 25);
    this.dtbFeenAcpa.TabIndex = 1;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(386, 214);
    this.Controls.Add((Control) this.dtbFeenAcpa);
    this.Controls.Add((Control) this.mibNumeAcpa);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repIngresoCaja);
    this.Text = nameof (repIngresoCaja);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.mibNumeAcpa, 0);
    this.Controls.SetChildIndex((Control) this.dtbFeenAcpa, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
