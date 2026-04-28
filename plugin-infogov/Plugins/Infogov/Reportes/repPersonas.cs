// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Reportes.repPersonas
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraEditors;
using InfoGov.Forms;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Reportes;

public class repPersonas : PrintForm
{
  private IContainer components = (IContainer) null;
  private SimpleButton btnExportarPersonas;
  private SimpleButton btnSalir;

  public repPersonas()
    : base("ExportarPersonas")
  {
    this.InitializeComponent();
  }

  private void btnExportarPersonas_Click(object sender, EventArgs e)
  {
    SaveFileDialog saveFileDialog = new SaveFileDialog();
    saveFileDialog.AddExtension = true;
    saveFileDialog.AutoUpgradeEnabled = true;
    saveFileDialog.CheckFileExists = false;
    saveFileDialog.CheckPathExists = true;
    saveFileDialog.CreatePrompt = false;
    saveFileDialog.DefaultExt = "txt";
    saveFileDialog.Filter = "Archivo TXT|*.txt";
    saveFileDialog.FilterIndex = 1;
    saveFileDialog.OverwritePrompt = true;
    saveFileDialog.ShowHelp = false;
    saveFileDialog.SupportMultiDottedExtensions = true;
    saveFileDialog.Title = "Exportar a TXT";
    saveFileDialog.ValidateNames = true;
    if (saveFileDialog.ShowDialog((IWin32Window) this) != DialogResult.OK)
      return;
    List<DTOPersonas> dtoPersonasList = new frmEsperar((Form) this).calcular<List<DTOPersonas>>((Func<List<DTOPersonas>>) (() => new ExpPersona().getPersonas()), "Consultado Datos...");
    StreamWriter streamWriter = new StreamWriter(saveFileDialog.FileName);
    string str1 = ";";
    string str2 = $"CUIT{str1}Dni{str1}FechaNac{str1}Nombre{str1}Calle{str1}Nro{str1}Barrio{str1}Mza{str1}Casa{str1}Localidad{str1}Celular{str1}Email";
    streamWriter.WriteLine(str2);
    foreach (DTOPersonas dtoPersonas in dtoPersonasList)
      streamWriter.WriteLine(dtoPersonas.Cuit.ToString() + str1 + dtoPersonas.Dni.ToString() + str1 + dtoPersonas.FechNaciStr + str1 + dtoPersonas.Nombre + str1 + dtoPersonas.Calle + str1 + dtoPersonas.Nro + str1 + dtoPersonas.Barrio + str1 + dtoPersonas.Mza + str1 + dtoPersonas.Casa + str1 + dtoPersonas.Localidad + str1 + dtoPersonas.Celular + str1 + dtoPersonas.Email);
    streamWriter.Close();
    new frmMensaje((Form) this).mostrarConfirmación("Archivo Generado Correctamente");
  }

  private void btnSalir_Click(object sender, EventArgs e) => this.Close();

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (repPersonas));
    this.btnExportarPersonas = new SimpleButton();
    this.btnSalir = new SimpleButton();
    this.SuspendLayout();
    this.butGenerate.Location = new Point(97, 234);
    this.btnExportarPersonas.Image = (Image) componentResourceManager.GetObject("btnExportarPersonas.Image");
    ((Control) this.btnExportarPersonas).Location = new Point(50, 67);
    ((Control) this.btnExportarPersonas).Name = "btnExportarPersonas";
    ((Control) this.btnExportarPersonas).Size = new Size(169, 23);
    ((Control) this.btnExportarPersonas).TabIndex = 0;
    ((Control) this.btnExportarPersonas).Text = "Exportar Personas a Txt";
    ((Control) this.btnExportarPersonas).Click += new EventHandler(this.btnExportarPersonas_Click);
    ((Control) this.btnSalir).Location = new Point(95, 117);
    ((Control) this.btnSalir).Name = "btnSalir";
    ((Control) this.btnSalir).Size = new Size(75, 23);
    ((Control) this.btnSalir).TabIndex = 4;
    ((Control) this.btnSalir).Text = "Salir";
    ((Control) this.btnSalir).Click += new EventHandler(this.btnSalir_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(268, 162);
    this.Controls.Add((Control) this.btnSalir);
    this.Controls.Add((Control) this.btnExportarPersonas);
    this.Name = nameof (repPersonas);
    this.Text = nameof (repPersonas);
    this.Controls.SetChildIndex((Control) this.btnExportarPersonas, 0);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.btnSalir, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
