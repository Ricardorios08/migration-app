// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailTipoMovimientos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailTipoMovimientos : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox textDetaTipoMovimientos;
  private MetroIntTextBox textCodiTipoMovimientos;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel3;

  public detailTipoMovimientos() => this.InitializeComponent();

  protected override void OnModeChanged(ActionMode mode)
  {
    this.textCodiTipoMovimientos.Enabled = false;
    this.textDetaTipoMovimientos.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    if ((TipoMovimientos) enti != null)
      return;
    this.textCodiTipoMovimientos.Text = "";
    this.textDetaTipoMovimientos.Text = "";
  }

  protected override Entity LoadEntity() => (Entity) new TipoMovimientos();

  protected override List<string> IsDataValid()
  {
    return new List<string>()
    {
      "Validación no implementada."
    };
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
    this.textDetaTipoMovimientos = new MetroTextBox();
    this.textCodiTipoMovimientos = new MetroIntTextBox();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(765, 409);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(765, 409);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel6);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textDetaTipoMovimientos);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textCodiTipoMovimientos);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(755, 372);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(69, 80 /*0x50*/);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Detalle Movilidad";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(65, 45);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Código Movilidad";
    this.textDetaTipoMovimientos.Location = new Point(296, 80 /*0x50*/);
    this.textDetaTipoMovimientos.MaxLength = 20;
    this.textDetaTipoMovimientos.Name = "textDetaTipoMovimientos";
    this.textDetaTipoMovimientos.Size = new Size(210, 23);
    this.textDetaTipoMovimientos.TabIndex = 1;
    this.textCodiTipoMovimientos.Location = new Point(276, 45);
    this.textCodiTipoMovimientos.MaxLength = 4;
    this.textCodiTipoMovimientos.Name = "textCodiTipoMovimientos";
    this.textCodiTipoMovimientos.Size = new Size(60, 23);
    this.textCodiTipoMovimientos.TabIndex = 0;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(69, 111);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(49, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Abreviatura";
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(69, 155);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(49, 19);
    this.metroLabel4.TabIndex = 5;
    this.metroLabel4.Text = "Detalle";
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(65, 195);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(49, 19);
    this.metroLabel6.TabIndex = 6;
    this.metroLabel6.Text = "Fijo";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailTipoMovimientos);
    this.Size = new Size(765, 409);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
