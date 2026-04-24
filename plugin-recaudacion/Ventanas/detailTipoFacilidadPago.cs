// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailTipoFacilidadPago
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

public class detailTipoFacilidadPago : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox textDetaTipoFacilidadPago;
  private MetroIntTextBox textCodiTipoFacilidadPago;

  public detailTipoFacilidadPago() => this.InitializeComponent();

  protected override void OnModeChanged(ActionMode mode)
  {
    this.textCodiTipoFacilidadPago.Enabled = false;
    this.textDetaTipoFacilidadPago.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    if ((TipoFacilidadPago) enti != null)
      return;
    this.textCodiTipoFacilidadPago.Text = "";
    this.textDetaTipoFacilidadPago.Text = "";
  }

  protected override Entity LoadEntity() => (Entity) new TipoFacilidadPago();

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
    this.textDetaTipoFacilidadPago = new MetroTextBox();
    this.textCodiTipoFacilidadPago = new MetroIntTextBox();
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
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textDetaTipoFacilidadPago);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textCodiTipoFacilidadPago);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(690, 150);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(69, 80 /*0x50*/);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Detalle";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(65, 45);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Código";
    this.textDetaTipoFacilidadPago.Location = new Point(126, 80 /*0x50*/);
    this.textDetaTipoFacilidadPago.MaxLength = 20;
    this.textDetaTipoFacilidadPago.Name = "textDetaTipoFacilidadPago";
    this.textDetaTipoFacilidadPago.Size = new Size(210, 23);
    this.textDetaTipoFacilidadPago.TabIndex = 1;
    this.textCodiTipoFacilidadPago.Location = new Point(126, 45);
    this.textCodiTipoFacilidadPago.MaxLength = 4;
    this.textCodiTipoFacilidadPago.Name = "textCodiTipoFacilidadPago";
    this.textCodiTipoFacilidadPago.Size = new Size(60, 23);
    this.textCodiTipoFacilidadPago.TabIndex = 0;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailTipoFacilidadPago);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
