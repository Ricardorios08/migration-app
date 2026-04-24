// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailBancoRecaudacion
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

public class detailBancoRecaudacion : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox textDetaBancoRecaudacion;
  private MetroIntTextBox textCodiBancoRecaudacion;

  public detailBancoRecaudacion() => this.InitializeComponent();

  protected override void OnModeChanged(ActionMode mode)
  {
    this.textCodiBancoRecaudacion.Enabled = false;
    this.textDetaBancoRecaudacion.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    BancoRecaudacion bancoRecaudacion = (BancoRecaudacion) enti;
    if (bancoRecaudacion == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.textCodiBancoRecaudacion.IntText = bancoRecaudacion.CodiBanc;
      this.textDetaBancoRecaudacion.Text = bancoRecaudacion.DetaBanc;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new BancoRecaudacion()
    {
      CodiBanc = this.textCodiBancoRecaudacion.IntText,
      DetaBanc = this.textDetaBancoRecaudacion.Text
    };
  }

  protected override List<string> IsDataValid()
  {
    return new List<string>()
    {
      "Validación no implementada."
    };
  }

  protected override void LimpiarCampos()
  {
    this.textCodiBancoRecaudacion.Text = "";
    this.textDetaBancoRecaudacion.Text = "";
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
    this.textDetaBancoRecaudacion = new MetroTextBox();
    this.textCodiBancoRecaudacion = new MetroIntTextBox();
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
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textDetaBancoRecaudacion);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textCodiBancoRecaudacion);
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
    this.textDetaBancoRecaudacion.Location = new Point(126, 80 /*0x50*/);
    this.textDetaBancoRecaudacion.MaxLength = 20;
    this.textDetaBancoRecaudacion.Name = "textDetaBancoRecaudacion";
    this.textDetaBancoRecaudacion.Size = new Size(210, 23);
    this.textDetaBancoRecaudacion.TabIndex = 1;
    this.textCodiBancoRecaudacion.Location = new Point(126, 45);
    this.textCodiBancoRecaudacion.MaxLength = 4;
    this.textCodiBancoRecaudacion.Name = "textCodiBancoRecaudacion";
    this.textCodiBancoRecaudacion.Size = new Size(60, 23);
    this.textCodiBancoRecaudacion.TabIndex = 0;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailBancoRecaudacion);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
