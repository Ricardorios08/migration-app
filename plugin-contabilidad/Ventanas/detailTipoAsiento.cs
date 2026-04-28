// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.detailTipoAsiento
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.Plugins.Contabilidad.Expertos;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class detailTipoAsiento : ABMDetailControl
{
  private ExpTipoAsiento expert = new ExpTipoAsiento();
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox textDetaTipoAsiento;
  private MetroIntTextBox textCodiTipoAsiento;

  public detailTipoAsiento() => this.InitializeComponent();

  protected override void OnModeChanged(ActionMode mode)
  {
    this.textCodiTipoAsiento.Enabled = false;
    this.textDetaTipoAsiento.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    TipoAsiento tipoAsiento = (TipoAsiento) enti;
    if (tipoAsiento == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.textCodiTipoAsiento.IntText = tipoAsiento.CodiTias;
      this.textDetaTipoAsiento.Text = tipoAsiento.DetaTias;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new TipoAsiento()
    {
      CodiTias = this.textCodiTipoAsiento.IntText,
      DetaTias = this.textDetaTipoAsiento.Text
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.textDetaTipoAsiento.Text == "")
    {
      stringList.Add("Ingresar Detalle");
    }
    else
    {
      int num = this.expert.consultartipoasiento(this.CurrentMode == ActionMode.New ? 0 : this.textCodiTipoAsiento.IntText, this.textDetaTipoAsiento.Text);
      if (num > 0)
        stringList.Add($"El Tipo de Asiento ya existe Cod.({num.ToString()})");
    }
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.textCodiTipoAsiento.Text = "";
    this.textDetaTipoAsiento.Text = "";
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
    this.textDetaTipoAsiento = new MetroTextBox();
    this.textCodiTipoAsiento = new MetroIntTextBox();
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
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textDetaTipoAsiento);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textCodiTipoAsiento);
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
    this.textDetaTipoAsiento.Location = new Point(126, 80 /*0x50*/);
    this.textDetaTipoAsiento.MaxLength = 100;
    this.textDetaTipoAsiento.Name = "textDetaTipoAsiento";
    this.textDetaTipoAsiento.Size = new Size(459, 23);
    this.textDetaTipoAsiento.TabIndex = 1;
    this.textCodiTipoAsiento.Location = new Point(126, 45);
    this.textCodiTipoAsiento.MaxLength = 4;
    this.textCodiTipoAsiento.Name = "textCodiTipoAsiento";
    this.textCodiTipoAsiento.Size = new Size(60, 23);
    this.textCodiTipoAsiento.TabIndex = 0;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailTipoAsiento);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
