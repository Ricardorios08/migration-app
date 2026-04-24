// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmMigraciones
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmMigraciones : BaseForm
{
  private ExpMigraciones experto;
  private IContainer components = (IContainer) null;
  private TabPane tabPanel;
  private TabNavigationPage tabSanMartin;
  private GroupBox groupBox1;
  private MetroLabel lblCant;
  private MetroButton btnMigraFren;
  private MetroProgressBar pbarBarra;
  private MetroTextBox mtbCantidad;
  private MetroProgressBar pbarBarraServInmu;
  private GroupBox gpbServInmu;
  private MetroTextBox mtbCantServInmu;
  private MetroLabel metroLabel1;
  private MetroButton btnMigraServInmu;

  public frmMigraciones()
  {
    this.InitializeComponent();
    this.experto = new ExpMigraciones();
    if (!(Misc.Usuario != "root"))
      return;
    ((Control) this.tabPanel).Visible = ((Control) this.tabPanel).Enabled = false;
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
      new frmMensaje((Form) null).mostrarConfirmación("Archivo guardado en " + saveFileDialog2.FileName);
    }
  }

  private void btnMigraFren_Click(object sender, EventArgs e)
  {
    this.btnMigraFren.Enabled = false;
    List<d_inmueble> dInmuebleList = this.experto.BuscarD_INMUEBLE(this.mtbCantidad.Text.Trim());
    if (dInmuebleList.Count == 0)
    {
      this.btnMigraFren.Enabled = true;
    }
    else
    {
      this.pbarBarra.Visible = true;
      this.pbarBarra.Value = 0;
      this.pbarBarra.Maximum = dInmuebleList.Count;
      List<string> stringList = new List<string>();
      int count = dInmuebleList.Count;
      int num = 0;
      foreach (d_inmueble dato in dInmuebleList)
      {
        ++this.pbarBarra.Value;
        string str = this.experto.CrearFrentes(dato);
        if (!string.IsNullOrEmpty(str))
          stringList.Add(str);
        else
          ++num;
      }
      if (stringList.Count > 0)
      {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.AppendLine("OBJETOS NO INSERTADOS EN FRENTES\n");
        foreach (string str in stringList)
          stringBuilder.AppendLine(str + "\n");
        this.GenerarTXT(stringBuilder.ToString(), "Errores Insert Frentes");
      }
      this.pbarBarra.Visible = false;
      this.btnMigraFren.Enabled = true;
      if (num > 0)
        new frmMensaje((Form) this).mostrarConfirmación($"Se insertaron {num} de {count} registros.");
      else
        new frmMensaje((Form) this).mostrarError("No se inserto ningún registro.");
    }
  }

  private void btnMigraServInmu_Click(object sender, EventArgs e)
  {
    this.btnMigraServInmu.Enabled = false;
    List<DTOServInmu> dtoServInmuList = this.experto.BuscarDatosServicios(this.mtbCantServInmu.Text.Trim());
    if (dtoServInmuList.Count == 0)
    {
      this.btnMigraServInmu.Enabled = true;
    }
    else
    {
      this.pbarBarraServInmu.Visible = true;
      this.pbarBarraServInmu.Value = 0;
      this.pbarBarraServInmu.Maximum = dtoServInmuList.Count;
      List<string> stringList = new List<string>();
      int count = dtoServInmuList.Count;
      int num = 0;
      foreach (DTOServInmu serv in dtoServInmuList)
      {
        ++this.pbarBarraServInmu.Value;
        string str = this.experto.CrearServiciosInmueble(serv);
        if (!string.IsNullOrEmpty(str))
          stringList.Add(str);
        else
          ++num;
      }
      if (stringList.Count > 0)
      {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.AppendLine("OBJETOS NO INSERTADOS EN SERVINMU\n");
        foreach (string str in stringList)
          stringBuilder.AppendLine(str + "\n");
        this.GenerarTXT(stringBuilder.ToString(), "Errores Insert ServInmu");
      }
      this.pbarBarraServInmu.Visible = false;
      this.btnMigraServInmu.Enabled = true;
      if (num > 0)
        new frmMensaje((Form) this).mostrarConfirmación($"Se insertaron {num} de {count} registros.");
      else
        new frmMensaje((Form) this).mostrarError("No se inserto ningún registro.");
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
    this.tabPanel = new TabPane();
    this.tabSanMartin = new TabNavigationPage();
    this.pbarBarra = new MetroProgressBar();
    this.groupBox1 = new GroupBox();
    this.mtbCantidad = new MetroTextBox();
    this.lblCant = new MetroLabel();
    this.btnMigraFren = new MetroButton();
    this.pbarBarraServInmu = new MetroProgressBar();
    this.gpbServInmu = new GroupBox();
    this.mtbCantServInmu = new MetroTextBox();
    this.metroLabel1 = new MetroLabel();
    this.btnMigraServInmu = new MetroButton();
    ((ISupportInitialize) this.tabPanel).BeginInit();
    ((Control) this.tabPanel).SuspendLayout();
    ((Control) this.tabSanMartin).SuspendLayout();
    this.groupBox1.SuspendLayout();
    this.gpbServInmu.SuspendLayout();
    this.SuspendLayout();
    ((Control) this.tabPanel).Controls.Add((Control) this.tabSanMartin);
    ((Control) this.tabPanel).Dock = DockStyle.Fill;
    ((Control) this.tabPanel).Location = new Point(0, 0);
    ((Control) this.tabPanel).Name = "tabPanel";
    ((BaseMutableList<NavigationPageBase>) ((NavigationFrame) this.tabPanel).Pages).AddRange(new NavigationPageBase[1]
    {
      (NavigationPageBase) this.tabSanMartin
    });
    ((NavigationPane) this.tabPanel).RegularSize = new Size(800, 450);
    this.tabPanel.SelectedPage = this.tabSanMartin;
    ((Control) this.tabPanel).Size = new Size(800, 450);
    ((Control) this.tabPanel).TabIndex = 0;
    ((NavigationPageBase) this.tabSanMartin).Caption = "San Martin";
    ((Control) this.tabSanMartin).Controls.Add((Control) this.pbarBarraServInmu);
    ((Control) this.tabSanMartin).Controls.Add((Control) this.gpbServInmu);
    ((Control) this.tabSanMartin).Controls.Add((Control) this.pbarBarra);
    ((Control) this.tabSanMartin).Controls.Add((Control) this.groupBox1);
    ((Control) this.tabSanMartin).Name = "tabSanMartin";
    ((NavigationPageBase) this.tabSanMartin).Size = new Size(800, 417);
    this.pbarBarra.Location = new Point(441, 38);
    this.pbarBarra.Name = "pbarBarra";
    this.pbarBarra.Size = new Size(124, 23);
    this.pbarBarra.TabIndex = 1;
    this.pbarBarra.Visible = false;
    this.groupBox1.Controls.Add((Control) this.mtbCantidad);
    this.groupBox1.Controls.Add((Control) this.lblCant);
    this.groupBox1.Controls.Add((Control) this.btnMigraFren);
    this.groupBox1.Location = new Point(12, 20);
    this.groupBox1.Name = "groupBox1";
    this.groupBox1.Size = new Size(406, 48 /*0x30*/);
    this.groupBox1.TabIndex = 0;
    this.groupBox1.TabStop = false;
    this.groupBox1.Text = "Frentes";
    this.mtbCantidad.Location = new Point(107, 18);
    this.mtbCantidad.Name = "mtbCantidad";
    this.mtbCantidad.PromptText = "VACÍO = TODOS";
    this.mtbCantidad.Size = new Size(192 /*0xC0*/, 23);
    this.mtbCantidad.TabIndex = 3;
    this.lblCant.AutoSize = false;
    this.lblCant.Location = new Point(9, 18);
    this.lblCant.Name = "lblCant";
    this.lblCant.Size = new Size(86, 19);
    this.lblCant.TabIndex = 2;
    this.lblCant.Text = "N° Objeto";
    this.btnMigraFren.Location = new Point(322, 18);
    this.btnMigraFren.Name = "btnMigraFren";
    this.btnMigraFren.Size = new Size(75, 23);
    this.btnMigraFren.TabIndex = 1;
    this.btnMigraFren.Text = "Migrar";
    this.btnMigraFren.Click += new EventHandler(this.btnMigraFren_Click);
    this.pbarBarraServInmu.Location = new Point(441, 92);
    this.pbarBarraServInmu.Name = "pbarBarraServInmu";
    this.pbarBarraServInmu.Size = new Size(124, 23);
    this.pbarBarraServInmu.TabIndex = 3;
    this.pbarBarraServInmu.Visible = false;
    this.gpbServInmu.Controls.Add((Control) this.mtbCantServInmu);
    this.gpbServInmu.Controls.Add((Control) this.metroLabel1);
    this.gpbServInmu.Controls.Add((Control) this.btnMigraServInmu);
    this.gpbServInmu.Location = new Point(12, 74);
    this.gpbServInmu.Name = "gpbServInmu";
    this.gpbServInmu.Size = new Size(406, 48 /*0x30*/);
    this.gpbServInmu.TabIndex = 2;
    this.gpbServInmu.TabStop = false;
    this.gpbServInmu.Text = "Servicios de Inmuebles";
    this.mtbCantServInmu.Location = new Point(107, 18);
    this.mtbCantServInmu.Name = "mtbCantServInmu";
    this.mtbCantServInmu.PromptText = "VACÍO = TODOS";
    this.mtbCantServInmu.Size = new Size(192 /*0xC0*/, 23);
    this.mtbCantServInmu.TabIndex = 3;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(9, 18);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(86, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "N° Objeto";
    this.btnMigraServInmu.Location = new Point(322, 18);
    this.btnMigraServInmu.Name = "btnMigraServInmu";
    this.btnMigraServInmu.Size = new Size(75, 23);
    this.btnMigraServInmu.TabIndex = 1;
    this.btnMigraServInmu.Text = "Migrar";
    this.btnMigraServInmu.Click += new EventHandler(this.btnMigraServInmu_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(800, 450);
    this.Controls.Add((Control) this.tabPanel);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmMigraciones);
    this.Text = "Migraciones";
    this.WindowState = FormWindowState.Maximized;
    ((ISupportInitialize) this.tabPanel).EndInit();
    ((Control) this.tabPanel).ResumeLayout(false);
    ((Control) this.tabSanMartin).ResumeLayout(false);
    this.groupBox1.ResumeLayout(false);
    this.gpbServInmu.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
