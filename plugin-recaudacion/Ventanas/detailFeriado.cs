// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailFeriado
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
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailFeriado : ABMDetailControl
{
  private DateTime hoy = Misc.Now();
  private ExpFeriado expert = new ExpFeriado();
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox DetaFeriText;
  private MetroIntTextBox CodiFeriText;
  private MetroDateTimePicker FechaFeriText;
  private MetroLabel metroLabel3;

  public detailFeriado() => this.InitializeComponent();

  protected override void OnModeChanged(ActionMode mode)
  {
    this.CodiFeriText.Enabled = false;
    this.DetaFeriText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.FechaFeriText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    Feriado feriado = (Feriado) enti;
    if (feriado == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.CodiFeriText.IntText = (int) feriado.CodiFeri;
      this.DetaFeriText.Text = feriado.DetaFeri;
      this.FechaFeriText.Value = feriado.FechFeri;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new Feriado()
    {
      DetaFeri = this.DetaFeriText.Text,
      FechFeri = this.FechaFeriText.Value
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.DetaFeriText.Text.Trim().Length == 0)
      stringList.Add("Ingresar Detalle");
    if (this.CurrentMode == ActionMode.New && this.expert.ConsultarFeriado(this.FechaFeriText.Value))
      stringList.Add($"La fecha seleccionada ya {Environment.NewLine}  tiene cargado un feriado");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.CodiFeriText.Text = "";
    this.DetaFeriText.Text = "";
    this.FechaFeriText.Value = this.hoy;
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
    this.DetaFeriText = new MetroTextBox();
    this.CodiFeriText = new MetroIntTextBox();
    this.metroLabel3 = new MetroLabel();
    this.FechaFeriText = new MetroDateTimePicker();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 187);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 187);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.FechaFeriText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.DetaFeriText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.CodiFeriText);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(690, 150);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(68, 73);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Detalle";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(64 /*0x40*/, 38);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Código";
    this.DetaFeriText.Location = new Point(125, 73);
    this.DetaFeriText.MaxLength = 20;
    this.DetaFeriText.Name = "DetaFeriText";
    this.DetaFeriText.Size = new Size(293, 23);
    this.DetaFeriText.TabIndex = 1;
    this.CodiFeriText.Location = new Point(125, 38);
    this.CodiFeriText.MaxLength = 4;
    this.CodiFeriText.Name = "CodiFeriText";
    this.CodiFeriText.Size = new Size(60, 23);
    this.CodiFeriText.TabIndex = 0;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(68, 109);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(49, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Fecha";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.FechaFeriText.Location = new Point(125, 108);
    this.FechaFeriText.Name = "FechaFeriText";
    this.FechaFeriText.Size = new Size(100, 20);
    this.FechaFeriText.TabIndex = 5;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailFeriado);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
