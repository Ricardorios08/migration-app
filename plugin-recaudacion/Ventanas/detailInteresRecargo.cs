// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailInteresRecargo
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Core;
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

public class detailInteresRecargo : ABMDetailControl
{
  private DateTime hoy = Misc.Now();
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroDateTextBox FechaText;
  private MetroDecimalTextBox PorcenjeText;
  private MetroComboBox ComboFrecuencia;

  public detailInteresRecargo()
  {
    this.InitializeComponent();
    if (PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "SanCarlos" || PARAMS.Municipio == "Tunuyán" || PARAMS.Municipio == "Rivadavia")
    {
      this.ComboFrecuencia.Visible = false;
      this.FechaText.Visible = true;
    }
    if (PARAMS.Municipio == "Guaymallén" || PARAMS.Municipio == "SantaRosa" || PARAMS.Municipio == "Malargüe")
    {
      this.ComboFrecuencia.Visible = true;
      this.FechaText.Visible = false;
    }
    this.CompletarComboFrec();
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.FechaText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.PorcenjeText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ComboFrecuencia.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    if (mode != ActionMode.New)
      return;
    this.FechaText.Date = this.hoy;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    InteresRecargo interesRecargo = (InteresRecargo) enti;
    if (interesRecargo == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.FechaText.Date = interesRecargo.FechInte;
      this.PorcenjeText.DecimalText = interesRecargo.PorcInte;
      this.ComboFrecuencia.SelectedText = interesRecargo.FrecInte;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new InteresRecargo()
    {
      FechInte = this.FechaText.Date,
      PorcInte = this.PorcenjeText.DecimalText,
      FrecInte = ((ComboBoxItem) this.ComboFrecuencia.SelectedItem).Text
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if ((PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "SanCarlos" || PARAMS.Municipio == "Tunuyán" || PARAMS.Municipio == "Rivadavia") && this.FechaText.Date == DateTime.MinValue)
      stringList.Add("Ingresar fecha");
    if (this.PorcenjeText.DecimalText == 0M)
      stringList.Add("Ingresar porcentaje");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.FechaText.Text = "";
    this.PorcenjeText.Text = "";
    this.ComboFrecuencia.SelectedIndex = 0;
  }

  public void CompletarComboFrec()
  {
    this.ComboFrecuencia.Items.Clear();
    this.ComboFrecuencia.ValueMember = "Value";
    this.ComboFrecuencia.DisplayMember = "Text";
    this.ComboFrecuencia.Items.Add((object) new ComboBoxItem("Mensual", (object) "Mensual"));
    this.ComboFrecuencia.Items.Add((object) new ComboBoxItem("Bimestral", (object) "Bimestral"));
    this.ComboFrecuencia.Items.Add((object) new ComboBoxItem("Trimestral", (object) "Trimestral"));
    this.ComboFrecuencia.Items.Add((object) new ComboBoxItem("Cuatrimestral", (object) "Cuatrimestral"));
    this.ComboFrecuencia.Items.Add((object) new ComboBoxItem("Semestral", (object) "Semestral"));
    this.ComboFrecuencia.Items.Add((object) new ComboBoxItem("Anual", (object) "Anual"));
    this.ComboFrecuencia.SelectedIndex = 0;
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
    this.PorcenjeText = new MetroDecimalTextBox();
    this.FechaText = new MetroDateTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.ComboFrecuencia = new MetroComboBox();
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
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ComboFrecuencia);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.PorcenjeText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.FechaText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(690, 150);
    this.PorcenjeText.DecimalPlaces = 5;
    this.PorcenjeText.Location = new Point(128 /*0x80*/, 75);
    this.PorcenjeText.MaxLength = 10;
    this.PorcenjeText.MaxValue = new Decimal(new int[4]
    {
      1410065407,
      2,
      0,
      0
    });
    this.PorcenjeText.Name = "PorcenjeText";
    this.PorcenjeText.Size = new Size(90, 23);
    this.PorcenjeText.TabIndex = 5;
    this.FechaText.Location = new Point(128 /*0x80*/, 38);
    this.FechaText.Name = "FechaText";
    this.FechaText.Size = new Size(90, 25);
    this.FechaText.TabIndex = 4;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(41, 80 /*0x50*/);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(77, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Porcentaje:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(65, 45);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Fecha:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.ComboFrecuencia.Location = new Point(128 /*0x80*/, 41);
    this.ComboFrecuencia.Name = "ComboFrecuencia";
    this.ComboFrecuencia.Size = new Size(121, 23);
    this.ComboFrecuencia.TabIndex = 6;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailInteresRecargo);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
