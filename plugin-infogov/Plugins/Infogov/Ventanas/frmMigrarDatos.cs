// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.frmMigrarDatos
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class frmMigrarDatos : BaseForm
{
  private ExpMigrarDatos expert = new ExpMigrarDatos();
  private IContainer components = (IContainer) null;
  private MetroButton btnInmueble;
  private MetroPanel panelMigracion;
  private MetroButton btnRelacion;

  public frmMigrarDatos()
  {
    this.InitializeComponent();
    if (!(Misc.Usuario == "root"))
      return;
    this.panelMigracion.Visible = true;
  }

  private void btnInmueble_Click(object sender, EventArgs e)
  {
  }

  private void btnRelacion_Click(object sender, EventArgs e)
  {
    new frmEsperar((Form) this).procesar((Action) (() => this.expert.CorregirRelaciones()), "Procesando...");
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.btnInmueble = new MetroButton();
    this.panelMigracion = new MetroPanel();
    this.btnRelacion = new MetroButton();
    this.panelMigracion.SuspendLayout();
    this.SuspendLayout();
    this.btnInmueble.Location = new Point(23, 18);
    this.btnInmueble.Name = "btnInmueble";
    this.btnInmueble.Size = new Size(143, 23);
    this.btnInmueble.TabIndex = 0;
    this.btnInmueble.Text = "Migrar Inmuebles";
    this.btnInmueble.Click += new EventHandler(this.btnInmueble_Click);
    this.panelMigracion.Controls.Add((Control) this.btnRelacion);
    this.panelMigracion.Controls.Add((Control) this.btnInmueble);
    this.panelMigracion.Location = new Point(12, 12);
    this.panelMigracion.Name = "panelMigracion";
    this.panelMigracion.Size = new Size(210, 238);
    this.panelMigracion.TabIndex = 1;
    this.panelMigracion.Visible = false;
    this.btnRelacion.Location = new Point(23, 80 /*0x50*/);
    this.btnRelacion.Name = "btnRelacion";
    this.btnRelacion.Size = new Size(143, 23);
    this.btnRelacion.TabIndex = 2;
    this.btnRelacion.Text = "Relaciones";
    this.btnRelacion.Click += new EventHandler(this.btnRelacion_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(505, 352);
    this.Controls.Add((Control) this.panelMigracion);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmMigrarDatos);
    this.Text = "Migrar Datos";
    this.panelMigracion.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
