// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.ucGenerarQR
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.Tasas;
using InfoGov.Resources;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class ucGenerarQR : UserControl
{
  private BackgroundWorker bw = (BackgroundWorker) null;
  private IContainer components = (IContainer) null;
  private MetroProgressBar metroProgressBar1;
  private MetroLabel labelInfo;
  private MetroLabel labelProgreso;
  private MetroLabel labelTitulo;
  private PictureBox pbox;

  public ucGenerarQR()
  {
    this.InitializeComponent();
    this.labelTitulo.Text = this.labelInfo.Text = this.labelProgreso.Text = "";
    this.pbox.Image = ImagesManager.getInstance().getImage("spinnerGray.gif");
    this.pbox.Visible = false;
  }

  public void iniciarProceso(List<List<DTOTasasRepo>> lista)
  {
    this.bw = new BackgroundWorker();
    this.bw.WorkerReportsProgress = true;
    this.bw.DoWork += new DoWorkEventHandler(this.bw_DoWork);
    this.bw.ProgressChanged += new ProgressChangedEventHandler(this.bw_ProgressChanged);
    this.bw.RunWorkerCompleted += new RunWorkerCompletedEventHandler(this.bw_RunWorkerCompleted);
    this.bw.RunWorkerAsync((object) lista);
  }

  private void bw_DoWork(object sender, DoWorkEventArgs e)
  {
    List<List<DTOTasasRepo>> source = (List<List<DTOTasasRepo>>) e.Argument;
    ExpEmisionMasivaTasas emisionMasivaTasas = new ExpEmisionMasivaTasas();
    DateTime now = DateTime.Now;
    source.Sum<List<DTOTasasRepo>>((Func<List<DTOTasasRepo>, int>) (x => x.Count));
    int num = 0;
    for (int index = 0; index < source.Count; ++index)
    {
      List<DTOTasasRepo> dtoTasasRepoList = source[index];
      this.bw.ReportProgress(-3, (object) $"Procesando lista {index + 1}/{source.Count}");
      num += dtoTasasRepoList.Count;
    }
    TimeSpan timeSpan = DateTime.Now - now;
    e.Result = (object) timeSpan.ToString();
    emisionMasivaTasas.CloseConnection();
  }

  private void reportarProgreso(int cn, string deta) => this.bw.ReportProgress(cn, (object) deta);

  private void bw_ProgressChanged(object sender, ProgressChangedEventArgs e)
  {
    switch (e.ProgressPercentage)
    {
      case -3:
        this.labelTitulo.Text = e.UserState.ToString();
        break;
      case -2:
        this.pbox.Visible = e.UserState.ToString() == "ON";
        break;
      case -1:
        this.labelInfo.Text = e.UserState.ToString();
        break;
      default:
        this.metroProgressBar1.Value = e.ProgressPercentage;
        this.labelProgreso.Text = e.UserState.ToString();
        this.metroProgressBar1.Refresh();
        break;
    }
  }

  private void bw_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
  {
    this.labelTitulo.Text = "Proceso terminado.";
    this.labelInfo.Text = e.Result.ToString();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.metroProgressBar1 = new MetroProgressBar();
    this.labelInfo = new MetroLabel();
    this.labelProgreso = new MetroLabel();
    this.labelTitulo = new MetroLabel();
    this.pbox = new PictureBox();
    ((ISupportInitialize) this.pbox).BeginInit();
    this.SuspendLayout();
    this.metroProgressBar1.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.metroProgressBar1.Location = new Point(6, 60);
    this.metroProgressBar1.Name = "metroProgressBar1";
    this.metroProgressBar1.Size = new Size(321, 23);
    this.metroProgressBar1.TabIndex = 0;
    this.labelInfo.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.labelInfo.AutoSize = false;
    this.labelInfo.FontSize = 13f;
    this.labelInfo.Location = new Point(6, 37);
    this.labelInfo.Name = "labelInfo";
    this.labelInfo.Size = new Size(219, 19);
    this.labelInfo.TabIndex = 1;
    this.labelInfo.Text = "info";
    this.labelInfo.TextAlign = ContentAlignment.MiddleLeft;
    this.labelProgreso.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
    this.labelProgreso.AutoSize = false;
    this.labelProgreso.FontSize = 13f;
    this.labelProgreso.Location = new Point(237, 37);
    this.labelProgreso.Name = "labelProgreso";
    this.labelProgreso.Size = new Size(90, 19);
    this.labelProgreso.TabIndex = 2;
    this.labelProgreso.Text = "progreso";
    this.labelProgreso.TextAlign = ContentAlignment.MiddleRight;
    this.labelTitulo.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
    this.labelTitulo.AutoSize = false;
    this.labelTitulo.Location = new Point(6, 6);
    this.labelTitulo.Name = "labelTitulo";
    this.labelTitulo.Size = new Size(287, 19);
    this.labelTitulo.TabIndex = 3;
    this.labelTitulo.Text = "titulo";
    this.pbox.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.pbox.BackgroundImageLayout = ImageLayout.Zoom;
    this.pbox.Location = new Point(302, 3);
    this.pbox.Name = "pbox";
    this.pbox.Size = new Size(25, 25);
    this.pbox.SizeMode = PictureBoxSizeMode.Zoom;
    this.pbox.TabIndex = 4;
    this.pbox.TabStop = false;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.BackColor = Color.White;
    this.Controls.Add((Control) this.pbox);
    this.Controls.Add((Control) this.labelTitulo);
    this.Controls.Add((Control) this.labelProgreso);
    this.Controls.Add((Control) this.labelInfo);
    this.Controls.Add((Control) this.metroProgressBar1);
    this.Name = nameof (ucGenerarQR);
    this.Size = new Size(333, 89);
    ((ISupportInitialize) this.pbox).EndInit();
    this.ResumeLayout(false);
  }
}
