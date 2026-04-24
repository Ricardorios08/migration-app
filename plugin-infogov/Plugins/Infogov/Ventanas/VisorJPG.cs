// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.VisorJPG
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class VisorJPG : InfoGovModalForm
{
  private PictureEdit pictureEdit1;
  private MetroButton btnCerrar;

  public VisorJPG(Form owner)
    : base()
  {
    this.InitializeComponent();
    this.Owner = owner;
  }

  public void mostrarimagen(Image imagen)
  {
    this.pictureEdit1.Image = imagen;
    int num = (int) this.ShowDialog();
  }

  private void InitializeComponent()
  {
    this.pictureEdit1 = new PictureEdit();
    this.btnCerrar = new MetroButton();
    ((ISupportInitialize) this.pictureEdit1.Properties).BeginInit();
    this.SuspendLayout();
    ((Control) this.pictureEdit1).Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    ((Control) this.pictureEdit1).Location = new Point(3, 28);
    ((Control) this.pictureEdit1).Name = "pictureEdit1";
    this.pictureEdit1.Properties.ShowCameraMenuItem = (CameraMenuItemVisibility) 0;
    this.pictureEdit1.Properties.ShowScrollBars = true;
    ((Control) this.pictureEdit1).Size = new Size(905, 575);
    ((Control) this.pictureEdit1).TabIndex = 0;
    this.btnCerrar.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.btnCerrar.Location = new Point(833, 3);
    this.btnCerrar.Name = "btnCerrar";
    this.btnCerrar.Size = new Size(75, 23);
    this.btnCerrar.TabIndex = 1;
    this.btnCerrar.Text = "Cerrar";
    this.btnCerrar.Click += new EventHandler(this.btnCerrar_Click);
    this.ClientSize = new Size(909, 605);
    this.Controls.Add((Control) this.btnCerrar);
    this.Controls.Add((Control) this.pictureEdit1);
    this.Name = nameof (VisorJPG);
    ((ISupportInitialize) this.pictureEdit1.Properties).EndInit();
    this.ResumeLayout(false);
  }

  private void btnCerrar_Click(object sender, EventArgs e) => this.Close();
}
