// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.SanMartin.DescuentoBono.repDescuentoBonoSM
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
using System.IO;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.SanMartin.DescuentoBono;

public class repDescuentoBonoSM : InfoGovPrintForm
{
  private ExpDescuentoBonoSM exp;
  private DateTime hoy;
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroComboBox cboPeriodo;
  private MetroComboBox cboMes;
  private MetroButton btnGenerarTxt;

  public repDescuentoBonoSM()
    : base("Descuento Bono")
  {
    this.InitializeComponent();
    this.exp = new ExpDescuentoBonoSM();
    this.hoy = Misc.Now();
    this.LlenarCboPeriodo();
    this.LlenarCboMes();
  }

  private void LlenarCboPeriodo()
  {
    this.cboPeriodo.Items.Clear();
    this.cboPeriodo.DisplayMember = "Text";
    this.cboPeriodo.ValueMember = "Value";
    List<int> intList = this.exp.ObtenerPeriodos();
    foreach (int num in intList)
      this.cboPeriodo.Items.Add((object) new ComboBoxItem(num.ToString(), (object) num));
    this.cboPeriodo.SelectedIndex = intList.IndexOf(this.hoy.Year);
  }

  private void LlenarCboMes()
  {
    this.cboMes.Items.Clear();
    this.cboMes.DisplayMember = "Text";
    this.cboMes.ValueMember = "Value";
    this.cboMes.Items.Add((object) new ComboBoxItem("ENERO", (object) 1));
    this.cboMes.Items.Add((object) new ComboBoxItem("FEBRERO", (object) 2));
    this.cboMes.Items.Add((object) new ComboBoxItem("MARZO", (object) 3));
    this.cboMes.Items.Add((object) new ComboBoxItem("ABRIL", (object) 4));
    this.cboMes.Items.Add((object) new ComboBoxItem("MAYO", (object) 5));
    this.cboMes.Items.Add((object) new ComboBoxItem("JUNIO", (object) 6));
    this.cboMes.Items.Add((object) new ComboBoxItem("JULIO", (object) 7));
    this.cboMes.Items.Add((object) new ComboBoxItem("AGOSTO", (object) 8));
    this.cboMes.Items.Add((object) new ComboBoxItem("SEPTIEMBRE", (object) 9));
    this.cboMes.Items.Add((object) new ComboBoxItem("OCTUBRE", (object) 10));
    this.cboMes.Items.Add((object) new ComboBoxItem("NOVIEMBRE", (object) 11));
    this.cboMes.Items.Add((object) new ComboBoxItem("DICIEMBRE", (object) 12));
    this.cboMes.SelectedIndex = this.hoy.Month - 1;
  }

  private void btnGenerarTxt_Click(object sender, EventArgs e)
  {
    int Periodo = (int) ((ComboBoxItem) this.cboPeriodo.SelectedItem).Value;
    int Mes = (int) ((ComboBoxItem) this.cboMes.SelectedItem).Value;
    string contenido = this.exp.ObtenerDatosTxt(Periodo, Mes);
    if (!string.IsNullOrEmpty(contenido))
      this.GenerarTXT(contenido, $"Descuento por bono {Periodo}-{Mes}");
    else
      new frmMensaje((Form) this).mostrarError("Sin registros para el Periodo y Mes ingresado.");
  }

  private void GenerarTXT(string contenido, string nombre)
  {
    SaveFileDialog saveFileDialog1 = new SaveFileDialog();
    saveFileDialog1.Filter = "Archivo TXT (*.txt)|*.txt";
    saveFileDialog1.Title = nombre + ".txt";
    saveFileDialog1.FileName = nombre;
    SaveFileDialog saveFileDialog2 = saveFileDialog1;
    if (saveFileDialog2.ShowDialog() != DialogResult.OK)
      return;
    using (StreamWriter streamWriter = new StreamWriter(saveFileDialog2.FileName))
    {
      streamWriter.Write(contenido);
      new frmMensaje((Form) this).mostrarConfirmación("Archivo guardado en " + saveFileDialog2.FileName);
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
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.cboPeriodo = new MetroComboBox();
    this.cboMes = new MetroComboBox();
    this.btnGenerarTxt = new MetroButton();
    this.SuspendLayout();
    this.butClose.Location = new Point(248, 10);
    this.butClose.TabIndex = 99;
    this.butGenerate.Enabled = false;
    this.butGenerate.Location = new Point(197, 186);
    this.butGenerate.TabStop = false;
    this.butGenerate.Visible = false;
    this.metroLabel1.Location = new Point(12, 69);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(55, 19);
    this.metroLabel1.TabIndex = 4;
    this.metroLabel1.Text = "Periodo";
    this.metroLabel2.Location = new Point(34, 117);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(33, 19);
    this.metroLabel2.TabIndex = 5;
    this.metroLabel2.Text = "Mes";
    this.cboPeriodo.Location = new Point(79, 69);
    this.cboPeriodo.Name = "cboPeriodo";
    this.cboPeriodo.Size = new Size(128 /*0x80*/, 23);
    this.cboPeriodo.TabIndex = 1;
    this.cboMes.Location = new Point(79, 117);
    this.cboMes.Name = "cboMes";
    this.cboMes.Size = new Size(128 /*0x80*/, 23);
    this.cboMes.TabIndex = 2;
    this.btnGenerarTxt.Location = new Point(102, 184);
    this.btnGenerarTxt.Name = "btnGenerarTxt";
    this.btnGenerarTxt.Size = new Size(80 /*0x50*/, 23);
    this.btnGenerarTxt.TabIndex = 3;
    this.btnGenerarTxt.Text = "GENERAR TXT";
    this.btnGenerarTxt.Click += new EventHandler(this.btnGenerarTxt_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(283, 222);
    this.Controls.Add((Control) this.btnGenerarTxt);
    this.Controls.Add((Control) this.cboMes);
    this.Controls.Add((Control) this.cboPeriodo);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repDescuentoBonoSM);
    this.Text = nameof (repDescuentoBonoSM);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.cboPeriodo, 0);
    this.Controls.SetChildIndex((Control) this.cboMes, 0);
    this.Controls.SetChildIndex((Control) this.btnGenerarTxt, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
