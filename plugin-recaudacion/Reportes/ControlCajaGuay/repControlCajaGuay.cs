// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay.repControlCajaGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay;

public class repControlCajaGuay : InfoGovPrintForm
{
  private ExpRepControlCajaGuay experto;
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;
  private MetroComboBox cboEnteReca;
  private MetroComboBox cboFeenAcpa;
  private MetroLabel metroLabel2;

  public repControlCajaGuay()
    : base("Control Cajas")
  {
    this.InitializeComponent();
    this.experto = new ExpRepControlCajaGuay();
    this.cboEnteReca.DisplayMember = "Text";
    this.cboEnteReca.ValueMember = "Value";
    this.cboFeenAcpa.DisplayMember = "Text";
    this.cboFeenAcpa.ValueMember = "Value";
    this.LimpiarControles();
  }

  private void LimpiarControles()
  {
    this.cboEnteReca.Items.Clear();
    this.cboFeenAcpa.Items.Clear();
    this.cboEnteReca.Enabled = this.cboFeenAcpa.Enabled = this.butGenerate.Enabled = this.LlenarCboEntes();
  }

  private bool LlenarCboEntes()
  {
    List<DTOEnteReca> dtoEnteRecaList = this.experto.ObtenerEntes();
    if (dtoEnteRecaList != null && dtoEnteRecaList.Count > 0)
    {
      foreach (DTOEnteReca dtoEnteReca in dtoEnteRecaList)
        this.cboEnteReca.Items.Add((object) new ComboBoxItem(dtoEnteReca.DetaEnre, (object) dtoEnteReca.CodiEnre));
      this.cboEnteReca.SelectedIndexSelectedValue = (object) -1;
      return true;
    }
    this.cboEnteReca.SelectedIndexSelectedValue = (object) -1;
    new frmMensaje((Form) this).mostrarError("No hay entes disponibles para controlar.");
    return false;
  }

  private bool LlenarFechas(int CodiEnre)
  {
    this.cboFeenAcpa.Items.Clear();
    List<DateTime> dateTimeList = this.experto.ObtenerFechasEnvio(CodiEnre);
    if (dateTimeList != null && dateTimeList.Count > 0)
    {
      foreach (DateTime dateTime in dateTimeList)
        this.cboFeenAcpa.Items.Add((object) new ComboBoxItem(dateTime.ToShortDateString(), (object) dateTime));
      this.cboFeenAcpa.SelectedIndexSelectedValue = (object) -1;
      return true;
    }
    this.cboFeenAcpa.SelectedIndexSelectedValue = (object) -1;
    new frmMensaje((Form) this).mostrarError("No hay fechas disponibles para controlar.");
    return false;
  }

  private void cboEnteReca_SelectedValueChanged(object sender, EventArgs e)
  {
    if (!this.cboEnteReca.Enabled || this.cboEnteReca.Items.Count <= 0 || this.cboEnteReca.SelectedIndex < 0)
      return;
    this.cboFeenAcpa.Enabled = this.butGenerate.Enabled = this.LlenarFechas((int) ((ComboBoxItem) this.cboEnteReca.SelectedItem).Value);
  }

  private void cboFeenAcpa_SelectedValueChanged(object sender, EventArgs e)
  {
    if (this.cboFeenAcpa.Enabled && this.cboFeenAcpa.Items.Count > 0 && this.cboFeenAcpa.SelectedIndex >= 0)
      this.butGenerate.Enabled = true;
    else
      this.butGenerate.Enabled = false;
  }

  protected override string validateControls()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (!this.butGenerate.Enabled)
      stringBuilder.AppendLine("Datos del reporte incorrectos.");
    if (!this.cboEnteReca.Enabled || this.cboEnteReca.Items.Count == 0 || this.cboEnteReca.SelectedIndex < 0)
      stringBuilder.AppendLine("Ente Recaudador Incorrecto.");
    if (!this.cboFeenAcpa.Enabled || this.cboFeenAcpa.Items.Count == 0 || this.cboFeenAcpa.SelectedIndex < 0)
      stringBuilder.AppendLine("Fecha incorrecta.");
    return stringBuilder.ToString();
  }

  protected override InfoGovReport createReport()
  {
    return (InfoGovReport) new irepControlCajaGuay()
    {
      CodiEnre = (int) ((ComboBoxItem) this.cboEnteReca.SelectedItem).Value,
      DetaEnre = ((ComboBoxItem) this.cboEnteReca.SelectedItem).Text,
      FeenAcpa = (DateTime) ((ComboBoxItem) this.cboFeenAcpa.SelectedItem).Value
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
    this.cboEnteReca = new MetroComboBox();
    this.cboFeenAcpa = new MetroComboBox();
    this.metroLabel2 = new MetroLabel();
    this.SuspendLayout();
    this.butClose.Location = new Point(358, 6);
    this.butClose.TabStop = false;
    this.butGenerate.Location = new Point(159, 157);
    this.butGenerate.TabIndex = 3;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(15, 59);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(109, 19);
    this.metroLabel1.TabIndex = 4;
    this.metroLabel1.Text = "Ente Recaudador";
    this.cboEnteReca.FormattingEnabled = false;
    this.cboEnteReca.Location = new Point(136, 59);
    this.cboEnteReca.Name = "cboEnteReca";
    this.cboEnteReca.Size = new Size(233, 23);
    this.cboEnteReca.TabIndex = 1;
    this.cboEnteReca.SelectedValueChanged += new EventHandler(this.cboEnteReca_SelectedValueChanged);
    this.cboFeenAcpa.FormattingEnabled = false;
    this.cboFeenAcpa.Location = new Point(136, 90);
    this.cboFeenAcpa.Name = "cboFeenAcpa";
    this.cboFeenAcpa.Size = new Size((int) sbyte.MaxValue, 23);
    this.cboFeenAcpa.TabIndex = 2;
    this.cboFeenAcpa.SelectedValueChanged += new EventHandler(this.cboFeenAcpa_SelectedValueChanged);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(46, 90);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(78, 19);
    this.metroLabel2.TabIndex = 6;
    this.metroLabel2.Text = "Fecha Envío";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(393, 193);
    this.Controls.Add((Control) this.cboFeenAcpa);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.cboEnteReca);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repControlCajaGuay);
    this.Text = nameof (repControlCajaGuay);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.cboEnteReca, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.cboFeenAcpa, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
