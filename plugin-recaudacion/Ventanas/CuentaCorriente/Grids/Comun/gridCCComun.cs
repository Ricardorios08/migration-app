// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Grids.Comun.gridCCComun
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Herencia;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Grids.Comun;

public class gridCCComun : BuscadorBase, IGridCuentaCorriente
{
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;

  public gridCCComun() => this.InitializeComponent();

  public event EventHandler<object> DetalleSeleccionado;

  public override void Buscar(CtaCte cuenta) => throw new NotImplementedException();

  public override void Limpiar() => throw new NotImplementedException();

  public List<IReporte> ObtenerMovimientos() => throw new NotImplementedException();

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
    this.metroLabel1.Location = new Point(418, 150);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(93, 19);
    this.metroLabel1.TabIndex = 0;
    this.metroLabel1.Text = "GRID COMUN";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (gridCCComun);
    this.Size = new Size(784, 356);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
