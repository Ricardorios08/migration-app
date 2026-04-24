// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailExcepcion
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailExcepcion : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox DetalleText;
  private MetroIntTextBox CodigoText;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel4;
  private MetroRadioButton RadioBtnImporte;
  private MetroRadioButton RadioBtnPorcentaje;
  private MetroDecimalTextBox PorcentajeText;

  public detailExcepcion() => this.InitializeComponent();

  protected override void OnModeChanged(ActionMode mode)
  {
    this.CodigoText.Enabled = false;
    this.DetalleText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.PorcentajeText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.RadioBtnPorcentaje.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.RadioBtnImporte.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    Excepcion excepcion = (Excepcion) enti;
    if (excepcion == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.CodigoText.IntText = excepcion.CodiExce;
      this.DetalleText.Text = excepcion.DetaExce;
      this.PorcentajeText.DecimalText = excepcion.PorcExce;
      if (excepcion.TipoExce == "Porcentaje")
        this.RadioBtnPorcentaje.Checked = true;
      else
        this.RadioBtnImporte.Checked = true;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new Excepcion()
    {
      DetaExce = this.DetalleText.Text,
      PorcExce = this.PorcentajeText.DecimalText,
      TipoExce = (this.RadioBtnPorcentaje.Checked ? "Porcentaje" : "Importe")
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.DetalleText.Text.Trim().Length == 0)
      stringList.Add("Ingresar Detalle");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.CodigoText.Text = "";
    this.DetalleText.Text = "";
    this.PorcentajeText.Text = "";
    this.RadioBtnPorcentaje.Checked = true;
    this.RadioBtnImporte.Checked = false;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.tabPane1 = new TabPane();
    this.tabNavigationPage1 = new TabNavigationPage();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.DetalleText = new MetroTextBox();
    this.CodigoText = new MetroIntTextBox();
    this.metroLabel3 = new MetroLabel();
    this.PorcentajeText = new MetroDecimalTextBox();
    this.RadioBtnPorcentaje = new MetroRadioButton();
    this.RadioBtnImporte = new MetroRadioButton();
    this.metroLabel4 = new MetroLabel();
    ((ISupportInitialize) this.tabPane1).BeginInit();
    ((Control) this.tabPane1).SuspendLayout();
    ((Control) this.tabNavigationPage1).SuspendLayout();
    this.SuspendLayout();
    ((Control) this.tabPane1).Controls.Add((Control) this.tabNavigationPage1);
    ((Control) this.tabPane1).Dock = DockStyle.Fill;
    ((Control) this.tabPane1).Location = new Point(0, 0);
    ((Control) this.tabPane1).Name = "tabPane1";
    ((BaseMutableList<NavigationPageBase>) ((NavigationFrame) this.tabPane1).Pages).AddRange(new NavigationPageBase[1]
    {
      (NavigationPageBase) this.tabNavigationPage1
    });
    ((NavigationPane) this.tabPane1).RegularSize = new Size(717, 275);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(717, 275);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.RadioBtnImporte);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.RadioBtnPorcentaje);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.PorcentajeText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.DetalleText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.CodigoText);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(707, 238);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(53, 84);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(65, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Detalle:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(58, 49);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(60, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Código:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.DetalleText.Location = new Point(126, 80 /*0x50*/);
    this.DetalleText.MaxLength = 20;
    this.DetalleText.Name = "DetalleText";
    this.DetalleText.Size = new Size(275, 23);
    this.DetalleText.TabIndex = 1;
    this.CodigoText.Location = new Point(126, 45);
    this.CodigoText.MaxLength = 4;
    this.CodigoText.Name = "CodigoText";
    this.CodigoText.Size = new Size(60, 23);
    this.CodigoText.TabIndex = 0;
    this.metroLabel3.Location = new Point(45, 117);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(73, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Porcentaje:";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.PorcentajeText.Location = new Point(126, 113);
    this.PorcentajeText.MaxLength = 10;
    this.PorcentajeText.MaxValue = new Decimal(new int[4]
    {
      1410065407,
      2,
      0,
      0
    });
    this.PorcentajeText.Name = "PorcentajeText";
    this.PorcentajeText.Size = new Size(92, 23);
    this.PorcentajeText.TabIndex = 5;
    this.RadioBtnPorcentaje.Location = new Point((int) sbyte.MaxValue, 148);
    this.RadioBtnPorcentaje.Name = "RadioBtnPorcentaje";
    this.RadioBtnPorcentaje.Size = new Size(79, 15);
    this.RadioBtnPorcentaje.TabIndex = 6;
    this.RadioBtnPorcentaje.Text = "Porcentaje";
    this.RadioBtnImporte.Location = new Point(218, 148);
    this.RadioBtnImporte.Name = "RadioBtnImporte";
    this.RadioBtnImporte.Size = new Size(65, 15);
    this.RadioBtnImporte.TabIndex = 7;
    this.RadioBtnImporte.Text = "Importe";
    this.metroLabel4.Location = new Point(18, 144 /*0x90*/);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(100, 19);
    this.metroLabel4.TabIndex = 8;
    this.metroLabel4.Text = "Tipo Excepción:";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailExcepcion);
    this.Size = new Size(717, 275);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).PerformLayout();
    this.ResumeLayout(false);
  }
}
