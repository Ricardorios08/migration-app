// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailModificarFormaPago
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
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailModificarFormaPago : ABMDetailControl
{
  private ExpModificarFormaPago expert = new ExpModificarFormaPago();
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroComboBox ComboTipoPago;
  private MetroDecimalTextBox ImporteText;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel3;
  private MetroTextBox CuentaText;
  private MetroIntTextBox BoletoText;
  private MetroIntTextBox PeriodoText;
  private MetroDateTextBox FechaText;
  private MetroLabel metroLabel7;
  private MetroDecimalTextBox TotaImpoText;

  public detailModificarFormaPago()
  {
    this.InitializeComponent();
    this.llenarComboTipoPago();
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.ComboTipoPago.Enabled = mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    ModificarFormaPago modificarFormaPago = (ModificarFormaPago) enti;
    if (modificarFormaPago == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.CuentaText.Text = modificarFormaPago.CuenCtct;
      this.FechaText.Date = modificarFormaPago.FeenAcpa;
      this.PeriodoText.IntText = (int) modificarFormaPago.PeriBole;
      this.BoletoText.IntText = modificarFormaPago.NumeBole;
      this.ImporteText.DecimalText = modificarFormaPago.ImpoFopa;
      this.TotaImpoText.DecimalText = modificarFormaPago.TotaPago;
      this.ComboTipoPago.SelectedValue = (object) modificarFormaPago.CodiTipa;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new ModificarFormaPago()
    {
      CodiTipa = short.Parse(this.ComboTipoPago.SelectedValue.ToString())
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (PARAMS.Municipio != "SanMartín" && this.FechaText.Date <= Misc.getFechaBalProv(PARAMS.Periodo))
      stringList.Add("El Balance se encuentra cerrado.");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.CuentaText.Text = this.PeriodoText.Text = this.BoletoText.Text = this.FechaText.Text = this.ImporteText.Text = this.TotaImpoText.Text = string.Empty;
  }

  private void llenarComboTipoPago()
  {
    this.ComboTipoPago.Items.Clear();
    this.ComboTipoPago.DataSource = (object) this.expert.getTiposPagos();
    this.ComboTipoPago.ValueMember = "CodiTipa";
    this.ComboTipoPago.DisplayMember = "DetaTipa";
    this.ComboTipoPago.SelectedIndex = 0;
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
    this.metroLabel7 = new MetroLabel();
    this.ComboTipoPago = new MetroComboBox();
    this.ImporteText = new MetroDecimalTextBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.CuentaText = new MetroTextBox();
    this.BoletoText = new MetroIntTextBox();
    this.PeriodoText = new MetroIntTextBox();
    this.FechaText = new MetroDateTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.TotaImpoText = new MetroDecimalTextBox();
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
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.TotaImpoText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel7);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ComboTipoPago);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ImporteText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel6);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel5);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.CuentaText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.BoletoText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.PeriodoText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.FechaText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 154);
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(22, 91);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(90, 19);
    this.metroLabel7.TabIndex = 14;
    this.metroLabel7.Text = "Importe Total";
    this.metroLabel7.TextAlign = ContentAlignment.TopRight;
    this.ComboTipoPago.FormattingEnabled = false;
    this.ComboTipoPago.Location = new Point(124, 118);
    this.ComboTipoPago.Name = "ComboTipoPago";
    this.ComboTipoPago.Size = new Size(340, 23);
    this.ComboTipoPago.TabIndex = 13;
    this.ImporteText.Enabled = false;
    this.ImporteText.Location = new Point(298, 87);
    this.ImporteText.MaxLength = 10;
    this.ImporteText.MaxValue = new Decimal(new int[4]
    {
      99999999,
      0,
      0,
      0
    });
    this.ImporteText.Name = "ImporteText";
    this.ImporteText.Size = new Size(75, 23);
    this.ImporteText.TabIndex = 12;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(402, 56);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(62, 19);
    this.metroLabel6.TabIndex = 11;
    this.metroLabel6.Text = "Fecha";
    this.metroLabel6.TextAlign = ContentAlignment.TopRight;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(237, 56);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(49, 19);
    this.metroLabel5.TabIndex = 10;
    this.metroLabel5.Text = "Boleto";
    this.metroLabel5.TextAlign = ContentAlignment.TopRight;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(50, 56);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(62, 19);
    this.metroLabel4.TabIndex = 9;
    this.metroLabel4.Text = "Periodo";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(50, 21);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(62, 19);
    this.metroLabel3.TabIndex = 8;
    this.metroLabel3.Text = "Cuenta";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.CuentaText.Enabled = false;
    this.CuentaText.Location = new Point(124, 17);
    this.CuentaText.MaxLength = 100;
    this.CuentaText.Name = "CuentaText";
    this.CuentaText.Size = new Size(162, 23);
    this.CuentaText.TabIndex = 7;
    this.BoletoText.Enabled = false;
    this.BoletoText.Location = new Point(298, 52);
    this.BoletoText.MaxLength = 11;
    this.BoletoText.MaxValue = 99999999;
    this.BoletoText.Name = "BoletoText";
    this.BoletoText.Size = new Size(92, 23);
    this.BoletoText.TabIndex = 6;
    this.PeriodoText.Enabled = false;
    this.PeriodoText.Location = new Point(124, 52);
    this.PeriodoText.MaxLength = 4;
    this.PeriodoText.MaxValue = 9999;
    this.PeriodoText.Name = "PeriodoText";
    this.PeriodoText.Size = new Size(75, 23);
    this.PeriodoText.TabIndex = 5;
    this.FechaText.Enabled = false;
    this.FechaText.Location = new Point(476, 50);
    this.FechaText.Name = "FechaText";
    this.FechaText.Size = new Size(90, 25);
    this.FechaText.TabIndex = 4;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(224 /*0xE0*/, 91);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(62, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Importe";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(22, 122);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(90, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Tipo de Pago";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.TotaImpoText.Enabled = false;
    this.TotaImpoText.Location = new Point(124, 87);
    this.TotaImpoText.MaxLength = 10;
    this.TotaImpoText.MaxValue = new Decimal(new int[4]
    {
      99999999,
      0,
      0,
      0
    });
    this.TotaImpoText.Name = "TotaImpoText";
    this.TotaImpoText.Size = new Size(75, 23);
    this.TotaImpoText.TabIndex = 15;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailModificarFormaPago);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
