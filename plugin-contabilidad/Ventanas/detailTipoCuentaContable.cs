// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.detailTipoCuentaContable
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Contabilidad.Entidades;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class detailTipoCuentaContable : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox textDetaTipoCuentaContable;
  private MetroIntTextBox textCodiTipoCuentaContable;
  private MetroCheckBox CheckImputable;

  public detailTipoCuentaContable() => this.InitializeComponent();

  protected override void OnModeChanged(ActionMode mode)
  {
    this.textCodiTipoCuentaContable.Enabled = false;
    this.textDetaTipoCuentaContable.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.CheckImputable.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    TipoCuentaContable tipoCuentaContable = (TipoCuentaContable) enti;
    if (tipoCuentaContable == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.textCodiTipoCuentaContable.Text = tipoCuentaContable.CodiTicu;
      this.textDetaTipoCuentaContable.Text = tipoCuentaContable.DetaTicu;
      this.CheckImputable.Checked = tipoCuentaContable.ImpuTicu;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new TipoCuentaContable()
    {
      DetaTicu = this.textDetaTipoCuentaContable.Text
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
    this.textCodiTipoCuentaContable.Text = "";
    this.textDetaTipoCuentaContable.Text = "";
    this.CheckImputable.Checked = false;
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
    this.CheckImputable = new MetroCheckBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.textDetaTipoCuentaContable = new MetroTextBox();
    this.textCodiTipoCuentaContable = new MetroIntTextBox();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 170);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 170);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.CheckImputable);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textDetaTipoCuentaContable);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textCodiTipoCuentaContable);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(690, 133);
    this.CheckImputable.AutoSize = false;
    this.CheckImputable.Location = new Point(107, 90);
    this.CheckImputable.Name = "CheckImputable";
    this.CheckImputable.Size = new Size(84, 19);
    this.CheckImputable.TabIndex = 6;
    this.CheckImputable.Text = "Imputable";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(50, 59);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Detalle";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(46, 24);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Código";
    this.textDetaTipoCuentaContable.Location = new Point(107, 55);
    this.textDetaTipoCuentaContable.MaxLength = 20;
    this.textDetaTipoCuentaContable.Name = "textDetaTipoCuentaContable";
    this.textDetaTipoCuentaContable.Size = new Size(409, 23);
    this.textDetaTipoCuentaContable.TabIndex = 1;
    this.textCodiTipoCuentaContable.Location = new Point(107, 20);
    this.textCodiTipoCuentaContable.MaxLength = 4;
    this.textCodiTipoCuentaContable.Name = "textCodiTipoCuentaContable";
    this.textCodiTipoCuentaContable.Size = new Size(60, 23);
    this.textCodiTipoCuentaContable.TabIndex = 0;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailTipoCuentaContable);
    this.Size = new Size(700, 170);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
