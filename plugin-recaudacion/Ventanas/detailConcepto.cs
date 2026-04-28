// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailConcepto
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

public class detailConcepto : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage Tab1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox CodigoText;
  private MetroIntTextBox PeriodoText;
  private MetroTextBox DetalleText;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel8;
  private MetroLabel metroLabel7;
  private MetroIntTextBox TipoMovPagoText;
  private MetroIntTextBox TipoMovAforoText;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroEntityBox CuentaContableIngresosEB;
  private MetroEntityBox CuentaContableActivoEB;
  private MetroCheckBox CheckDeuVaSinCreacionCta;
  private MetroCheckBox CheckDeuVaConCreacionCta;
  private MetroCheckBox CheckAforoIngresos;
  private MetroTextBox ConAnterioText;
  private MetroLabel metroLabel4;

  public detailConcepto()
  {
    this.InitializeComponent();
    if (!(PARAMS.Municipio == "Guaymalln"))
      return;
    this.metroLabel4.Visible = true;
    this.ConAnterioText.Visible = true;
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.PeriodoText.Enabled = false;
    this.CodigoText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    Concepto concepto = (Concepto) enti;
    if (concepto == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.PeriodoText.IntText = concepto.PeriInfo;
      this.CodigoText.Text = concepto.CodiConc;
      this.DetalleText.Text = concepto.DetaConc;
      this.CheckAforoIngresos.Checked = concepto.AforConc;
      this.CheckDeuVaConCreacionCta.Checked = concepto.DevcConc;
      this.CheckDeuVaSinCreacionCta.Checked = concepto.DevsConc;
      this.TipoMovAforoText.IntText = (int) concepto.TiafConc;
      this.TipoMovPagoText.IntText = (int) concepto.TipaConc;
    }
  }

  protected override Entity LoadEntity() => (Entity) new Concepto();

  protected override List<string> IsDataValid()
  {
    return new List<string>()
    {
      "Validación no implementada."
    };
  }

  protected override void LimpiarCampos()
  {
    this.PeriodoText.Text = "";
    this.CodigoText.Text = "";
    this.DetalleText.Text = "";
    this.ConAnterioText.Text = "";
    this.CheckAforoIngresos.Checked = false;
    this.CheckDeuVaConCreacionCta.Checked = false;
    this.CheckDeuVaSinCreacionCta.Checked = false;
    this.CuentaContableActivoEB.Entity = (Entity) null;
    this.CuentaContableIngresosEB.Entity = (Entity) null;
    this.TipoMovAforoText.Text = "";
    this.TipoMovPagoText.Text = "";
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
    this.Tab1 = new TabNavigationPage();
    this.DetalleText = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.CodigoText = new MetroTextBox();
    this.PeriodoText = new MetroIntTextBox();
    this.metroLabel4 = new MetroLabel();
    this.ConAnterioText = new MetroTextBox();
    this.CheckAforoIngresos = new MetroCheckBox();
    this.CheckDeuVaConCreacionCta = new MetroCheckBox();
    this.CheckDeuVaSinCreacionCta = new MetroCheckBox();
    this.CuentaContableActivoEB = new MetroEntityBox();
    this.CuentaContableIngresosEB = new MetroEntityBox();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
    this.TipoMovAforoText = new MetroIntTextBox();
    this.TipoMovPagoText = new MetroIntTextBox();
    this.metroLabel7 = new MetroLabel();
    this.metroLabel8 = new MetroLabel();
    ((ISupportInitialize) this.tabPane1).BeginInit();
    ((Control) this.tabPane1).SuspendLayout();
    ((Control) this.Tab1).SuspendLayout();
    this.SuspendLayout();
    ((Control) this.tabPane1).Controls.Add((Control) this.Tab1);
    ((Control) this.tabPane1).Dock = DockStyle.Fill;
    ((Control) this.tabPane1).Location = new Point(0, 0);
    ((Control) this.tabPane1).Name = "tabPane1";
    ((BaseMutableList<NavigationPageBase>) ((NavigationFrame) this.tabPane1).Pages).AddRange(new NavigationPageBase[1]
    {
      (NavigationPageBase) this.Tab1
    });
    ((NavigationPane) this.tabPane1).RegularSize = new Size(707, 382);
    this.tabPane1.SelectedPage = this.Tab1;
    ((Control) this.tabPane1).Size = new Size(707, 382);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.Tab1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.Tab1).Caption = "Detalles";
    ((Control) this.Tab1).Controls.Add((Control) this.metroLabel8);
    ((Control) this.Tab1).Controls.Add((Control) this.metroLabel7);
    ((Control) this.Tab1).Controls.Add((Control) this.TipoMovPagoText);
    ((Control) this.Tab1).Controls.Add((Control) this.TipoMovAforoText);
    ((Control) this.Tab1).Controls.Add((Control) this.metroLabel6);
    ((Control) this.Tab1).Controls.Add((Control) this.metroLabel5);
    ((Control) this.Tab1).Controls.Add((Control) this.CuentaContableIngresosEB);
    ((Control) this.Tab1).Controls.Add((Control) this.CuentaContableActivoEB);
    ((Control) this.Tab1).Controls.Add((Control) this.CheckDeuVaSinCreacionCta);
    ((Control) this.Tab1).Controls.Add((Control) this.CheckDeuVaConCreacionCta);
    ((Control) this.Tab1).Controls.Add((Control) this.CheckAforoIngresos);
    ((Control) this.Tab1).Controls.Add((Control) this.ConAnterioText);
    ((Control) this.Tab1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.Tab1).Controls.Add((Control) this.DetalleText);
    ((Control) this.Tab1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.Tab1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.Tab1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.Tab1).Controls.Add((Control) this.CodigoText);
    ((Control) this.Tab1).Controls.Add((Control) this.PeriodoText);
    ((Control) this.Tab1).Name = "Tab1";
    ((NavigationPageBase) this.Tab1).Size = new Size(697, 345);
    this.DetalleText.Location = new Point(219, 87);
    this.DetalleText.Name = "DetalleText";
    this.DetalleText.Size = new Size(333, 23);
    this.DetalleText.TabIndex = 5;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(142, 92);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(69, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Detalle:";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(142, 56);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(69, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Código:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(138, 22);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(73, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Periodo:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.CodigoText.Location = new Point(219, 52);
    this.CodigoText.MaxLength = 8;
    this.CodigoText.Name = "CodigoText";
    this.CodigoText.Size = new Size(106, 23);
    this.CodigoText.TabIndex = 1;
    this.PeriodoText.Location = new Point(219, 18);
    this.PeriodoText.MaxLength = 4;
    this.PeriodoText.MaxValue = 9999;
    this.PeriodoText.Name = "PeriodoText";
    this.PeriodoText.Size = new Size(67, 23);
    this.PeriodoText.TabIndex = 0;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(337, 56);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(126, 19);
    this.metroLabel4.TabIndex = 6;
    this.metroLabel4.Text = "Concepto Anterior:";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.metroLabel4.Visible = false;
    this.ConAnterioText.Location = new Point(475, 52);
    this.ConAnterioText.MaxLength = 20;
    this.ConAnterioText.Name = "ConAnterioText";
    this.ConAnterioText.Size = new Size(77, 23);
    this.ConAnterioText.TabIndex = 7;
    this.ConAnterioText.Visible = false;
    this.CheckAforoIngresos.Location = new Point(221, 122);
    this.CheckAforoIngresos.Name = "CheckAforoIngresos";
    this.CheckAforoIngresos.Size = new Size(140, 19);
    this.CheckAforoIngresos.TabIndex = 8;
    this.CheckAforoIngresos.Text = "¿Aforos o Ingresos?";
    this.CheckDeuVaConCreacionCta.Location = new Point(221, 151);
    this.CheckDeuVaConCreacionCta.Name = "CheckDeuVaConCreacionCta";
    this.CheckDeuVaConCreacionCta.Size = new Size(279, 19);
    this.CheckDeuVaConCreacionCta.TabIndex = 9;
    this.CheckDeuVaConCreacionCta.Text = "¿Deudores Varios Con Creacion de Cuenta?";
    this.CheckDeuVaSinCreacionCta.Location = new Point(221, 180);
    this.CheckDeuVaSinCreacionCta.Name = "CheckDeuVaSinCreacionCta";
    this.CheckDeuVaSinCreacionCta.Size = new Size(272, 19);
    this.CheckDeuVaSinCreacionCta.TabIndex = 10;
    this.CheckDeuVaSinCreacionCta.Text = "¿Deudores Varios Sin Creación de Cuenta?";
    this.CuentaContableActivoEB.AllowEmpty = false;
    this.CuentaContableActivoEB.AllowSqlCharacters = false;
    this.CuentaContableActivoEB.BackColor = Color.White;
    this.CuentaContableActivoEB.Entity = (Entity) null;
    this.CuentaContableActivoEB.ExternalValidation = (Func<string>) null;
    this.CuentaContableActivoEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CuentaContableActivoEB.Location = new Point(219, 207);
    this.CuentaContableActivoEB.MandatoryWrite = false;
    this.CuentaContableActivoEB.Margin = new Padding(3, 4, 3, 4);
    this.CuentaContableActivoEB.MaximumSize = new Size(3000, 23);
    this.CuentaContableActivoEB.MaxLenght = 50;
    this.CuentaContableActivoEB.MinimumSize = new Size(100, 23);
    this.CuentaContableActivoEB.Name = "CuentaContableActivoEB";
    this.CuentaContableActivoEB.PropertyDetail = "";
    this.CuentaContableActivoEB.PropertyID = "";
    this.CuentaContableActivoEB.ShowNewButton = false;
    this.CuentaContableActivoEB.ShowSearchButton = false;
    this.CuentaContableActivoEB.Size = new Size(400, 23);
    this.CuentaContableActivoEB.TabIndex = 11;
    this.CuentaContableActivoEB.TextAlign = HorizontalAlignment.Left;
    this.CuentaContableActivoEB.TextBoxWidth = 120;
    this.CuentaContableIngresosEB.AllowEmpty = false;
    this.CuentaContableIngresosEB.AllowSqlCharacters = false;
    this.CuentaContableIngresosEB.BackColor = Color.White;
    this.CuentaContableIngresosEB.Entity = (Entity) null;
    this.CuentaContableIngresosEB.ExternalValidation = (Func<string>) null;
    this.CuentaContableIngresosEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CuentaContableIngresosEB.Location = new Point(219, 238);
    this.CuentaContableIngresosEB.MandatoryWrite = false;
    this.CuentaContableIngresosEB.Margin = new Padding(3, 4, 3, 4);
    this.CuentaContableIngresosEB.MaximumSize = new Size(3000, 23);
    this.CuentaContableIngresosEB.MaxLenght = 50;
    this.CuentaContableIngresosEB.MinimumSize = new Size(100, 23);
    this.CuentaContableIngresosEB.Name = "CuentaContableIngresosEB";
    this.CuentaContableIngresosEB.PropertyDetail = "";
    this.CuentaContableIngresosEB.PropertyID = "";
    this.CuentaContableIngresosEB.ShowNewButton = false;
    this.CuentaContableIngresosEB.ShowSearchButton = false;
    this.CuentaContableIngresosEB.Size = new Size(400, 23);
    this.CuentaContableIngresosEB.TabIndex = 12;
    this.CuentaContableIngresosEB.TextAlign = HorizontalAlignment.Left;
    this.CuentaContableIngresosEB.TextBoxWidth = 120;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(6, 273);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(205, 19);
    this.metroLabel5.TabIndex = 13;
    this.metroLabel5.Text = "Tipo de Movimiento de Aforo:";
    this.metroLabel5.TextAlign = ContentAlignment.TopRight;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(6, 308);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(205, 19);
    this.metroLabel6.TabIndex = 14;
    this.metroLabel6.Text = "Tipo de Movimiento de Pago:";
    this.metroLabel6.TextAlign = ContentAlignment.TopRight;
    this.TipoMovAforoText.Location = new Point(219, 269);
    this.TipoMovAforoText.MaxLength = 2;
    this.TipoMovAforoText.MaxValue = 99;
    this.TipoMovAforoText.Name = "TipoMovAforoText";
    this.TipoMovAforoText.Size = new Size(75, 23);
    this.TipoMovAforoText.TabIndex = 15;
    this.TipoMovPagoText.Location = new Point(219, 304);
    this.TipoMovPagoText.MaxLength = 2;
    this.TipoMovPagoText.MaxValue = 99;
    this.TipoMovPagoText.Name = "TipoMovPagoText";
    this.TipoMovPagoText.Size = new Size(75, 23);
    this.TipoMovPagoText.TabIndex = 16 /*0x10*/;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(53, 211);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(158, 19);
    this.metroLabel7.TabIndex = 17;
    this.metroLabel7.Text = "Cuenta Contable Activo:";
    this.metroLabel7.TextAlign = ContentAlignment.TopRight;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(34, 242);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(177, 19);
    this.metroLabel8.TabIndex = 18;
    this.metroLabel8.Text = "Cuenta Contable Ingresos:";
    this.metroLabel8.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailConcepto);
    this.Size = new Size(707, 382);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.Tab1).ResumeLayout(false);
    ((Control) this.Tab1).PerformLayout();
    this.ResumeLayout(false);
  }
}
