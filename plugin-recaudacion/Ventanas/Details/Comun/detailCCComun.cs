// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.Details.Comun.detailCCComun
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Herencia;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.Details.Comun;

public class detailCCComun : BuscadorBase, IDetailCuentaCorriente
{
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;

  public detailCCComun() => this.InitializeComponent();

  public override void Limpiar() => throw new NotImplementedException();

  public override void Buscar(CtaCte cuenta) => throw new NotImplementedException();

  public void MostrarDetalle(object detalle) => throw new NotImplementedException();

  public IReporte ObtenerDetallesCuentaReporte() => throw new NotImplementedException();

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.metroLabel1 = new MetroLabel();
    this.SuspendLayout();
    this.metroLabel1.Location = new Point(311, 143);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(180, 19);
    this.metroLabel1.TabIndex = 0;
    this.metroLabel1.Text = "COMUNNNNNNNNNNNNN";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (detailCCComun);
    this.Size = new Size(664, 323);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
