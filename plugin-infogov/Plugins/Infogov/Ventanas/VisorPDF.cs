// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.VisorPDF
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraPdfViewer;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using System;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class VisorPDF : InfoGovModalForm
{
  private PdfViewer pdfViewer1;
  private MetroButton btnCerrar;
  private MetroButton btnImprimir;
  private IContainer components;

  public VisorPDF(Form owner)
    : base()
  {
    this.InitializeComponent();
    this.Owner = owner;
  }

  public void mostrarpdf(string EscaActa)
  {
    this.pdfViewer1.LoadDocument((Stream) Misc.Base64toMemoryStream(EscaActa));
    int num = (int) this.ShowDialog();
  }

  private void InitializeComponent()
  {
    this.pdfViewer1 = new PdfViewer();
    this.btnCerrar = new MetroButton();
    this.btnImprimir = new MetroButton();
    this.SuspendLayout();
    ((Control) this.pdfViewer1).Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    ((Control) this.pdfViewer1).Location = new Point(12, 28);
    ((Control) this.pdfViewer1).Name = "pdfViewer1";
    this.pdfViewer1.NavigationPaneInitialVisibility = (PdfNavigationPaneVisibility) 1;
    ((Control) this.pdfViewer1).Size = new Size(867, 516);
    ((Control) this.pdfViewer1).TabIndex = 24;
    this.btnCerrar.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.btnCerrar.Location = new Point(799, 4);
    this.btnCerrar.Name = "btnCerrar";
    this.btnCerrar.Size = new Size(75, 23);
    this.btnCerrar.TabIndex = 25;
    this.btnCerrar.Text = "Cerrar";
    this.btnCerrar.Click += new EventHandler(this.btnCerrar_Click);
    this.btnImprimir.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.btnImprimir.Location = new Point(712, 4);
    this.btnImprimir.Name = "btnImprimir";
    this.btnImprimir.Size = new Size(75, 23);
    this.btnImprimir.TabIndex = 26;
    this.btnImprimir.Text = "Imprimir";
    this.btnImprimir.Click += new EventHandler(this.btnImprimir_Click);
    this.ClientSize = new Size(882, 548);
    this.Controls.Add((Control) this.btnImprimir);
    this.Controls.Add((Control) this.btnCerrar);
    this.Controls.Add((Control) this.pdfViewer1);
    this.Name = nameof (VisorPDF);
    this.ResumeLayout(false);
  }

  private void btnCerrar_Click(object sender, EventArgs e) => this.Close();

  private void btnImprimir_Click(object sender, EventArgs e) => this.pdfViewer1.Print();
}
