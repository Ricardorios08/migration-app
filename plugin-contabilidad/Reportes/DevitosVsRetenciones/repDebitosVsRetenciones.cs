// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.DevitosVsRetenciones.repDebitosVsRetenciones
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Contabilidad.Expertos;
using InfoGov.Plugins.Contabilidad.Reportes.DebitosVsRetenciones;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.DevitosVsRetenciones;

public class repDebitosVsRetenciones : InfoGovPrintForm
{
  public ExpDebitosvsRetenciones expert = new ExpDebitosvsRetenciones();
  private IContainer components = (IContainer) null;
  private MetroComboBox PeriInfoCmBx;
  private MetroLabel metroLabel1;
  private MetroEntityBox CuentaContaEB;
  private MetroLabel metroLabel2;
  private GroupBox groupBox1;
  private MetroRadioButton radiobut_Iguales;
  private MetroRadioButton radiobut_Diferencia;
  private MetroRadioButton radiobut_Todos;

  public repDebitosVsRetenciones()
    : base("Débitos vs Retenciones")
  {
    this.InitializeComponent();
    this.CompletarComboPeriodo();
    this.CuentaContaEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuentaContable);
    this.CuentaContaEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuentaContable);
  }

  private void CompletarComboPeriodo()
  {
    this.PeriInfoCmBx.Items.Clear();
    this.PeriInfoCmBx.ValueMember = "Value";
    this.PeriInfoCmBx.DisplayMember = "Text";
    this.PeriInfoCmBx.Items.AddRange((object[]) this.expert.getPeriodos().ToArray());
    this.PeriInfoCmBx.SelectedIndex = 0;
  }

  private Entity BuscarCuentaContable(string text)
  {
    Filter filter = new Filter();
    filter.condExtra = "(CodiCuco like '1%' OR CodiCuco like '2%')";
    filter.Restrictions.Add(new FilterItem("c.PeriInfo", "periodo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCuco", "Cód. Cuenta", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Det. Cuenta", FilterMode.Contains, text));
    return (Entity) this.EM.Search<CuentaContable>(filter, true);
  }

  private Entity EncontrarCuentaContable(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.condExtra = "(CodiCuco like '1%' OR CodiCuco like '2%')";
    filter.Restrictions.Add(new FilterItem("c.PeriInfo", "periodo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCuco", "Cód. Cuenta", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Det. Cuenta", FilterMode.Contains, text));
    return (Entity) this.EM.Find<CuentaContable>(filter, true, true);
  }

  protected override string validateControls()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.CuentaContaEB.Entity == null)
      stringBuilder.AppendLine("Debe ingresar Cuenta Contable");
    return stringBuilder.ToString();
  }

  protected override InfoGovReport createReport()
  {
    irepDebitosvsRetenciones report = new irepDebitosvsRetenciones();
    report.PeriInfo = Convert.ToInt32(((ComboBoxItem) this.PeriInfoCmBx.SelectedItem).Value);
    irepDebitosvsRetenciones debitosvsRetenciones = report;
    string str;
    if (this.CuentaContaEB.Entity != null)
      str = ((CuentaContable) this.CuentaContaEB.Entity).CodiCuco.Replace(".", "").TrimEnd('0');
    else
      str = "";
    debitosvsRetenciones.CodiCuco = str;
    report.DetaCuco = this.CuentaContaEB.Entity == null ? "" : ((CuentaContable) this.CuentaContaEB.Entity).DetaCuco;
    report.Todos = this.radiobut_Todos.Checked;
    report.Diferencia = this.radiobut_Diferencia.Checked;
    report.Iguales = this.radiobut_Iguales.Checked;
    return (InfoGovReport) report;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.PeriInfoCmBx = new MetroComboBox();
    this.metroLabel1 = new MetroLabel();
    this.CuentaContaEB = new MetroEntityBox();
    this.metroLabel2 = new MetroLabel();
    this.groupBox1 = new GroupBox();
    this.radiobut_Iguales = new MetroRadioButton();
    this.radiobut_Diferencia = new MetroRadioButton();
    this.radiobut_Todos = new MetroRadioButton();
    this.groupBox1.SuspendLayout();
    this.SuspendLayout();
    this.butClose.Location = new Point(605, 7);
    this.butGenerate.Location = new Point(280, 260);
    this.PeriInfoCmBx.FormattingEnabled = false;
    this.PeriInfoCmBx.Location = new Point(145, 78);
    this.PeriInfoCmBx.Margin = new Padding(3, 4, 3, 4);
    this.PeriInfoCmBx.Name = "PeriInfoCmBx";
    this.PeriInfoCmBx.Size = new Size(90, 23);
    this.PeriInfoCmBx.TabIndex = 18;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(46, 82);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(93, 19);
    this.metroLabel1.TabIndex = 19;
    this.metroLabel1.Text = "Periodo:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.CuentaContaEB.AllowEmpty = false;
    this.CuentaContaEB.AllowSqlCharacters = false;
    this.CuentaContaEB.BackColor = Color.White;
    this.CuentaContaEB.Entity = (Entity) null;
    this.CuentaContaEB.ExternalValidation = (Func<string>) null;
    this.CuentaContaEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CuentaContaEB.Location = new Point(145, 109);
    this.CuentaContaEB.MandatoryWrite = false;
    this.CuentaContaEB.Margin = new Padding(3, 4, 3, 4);
    this.CuentaContaEB.MaximumSize = new Size(3000, 23);
    this.CuentaContaEB.MaxLenght = 50;
    this.CuentaContaEB.MinimumSize = new Size(100, 23);
    this.CuentaContaEB.Name = "CuentaContaEB";
    this.CuentaContaEB.PropertyDetail = "DetaCuco";
    this.CuentaContaEB.PropertyID = "CodiCuco";
    this.CuentaContaEB.ShowNewButton = false;
    this.CuentaContaEB.ShowSearchButton = false;
    this.CuentaContaEB.Size = new Size(400, 23);
    this.CuentaContaEB.TabIndex = 68;
    this.CuentaContaEB.TextAlign = HorizontalAlignment.Left;
    this.CuentaContaEB.TextBoxWidth = 120;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(21, 111);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(115, 19);
    this.metroLabel2.TabIndex = 69;
    this.metroLabel2.Text = "Cuenta Contable:";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleRight;
    this.groupBox1.Controls.Add((Control) this.radiobut_Iguales);
    this.groupBox1.Controls.Add((Control) this.radiobut_Diferencia);
    this.groupBox1.Controls.Add((Control) this.radiobut_Todos);
    this.groupBox1.Location = new Point(145, 139);
    this.groupBox1.Name = "groupBox1";
    this.groupBox1.Size = new Size(242, 100);
    this.groupBox1.TabIndex = 70;
    this.groupBox1.TabStop = false;
    this.groupBox1.Text = "Expedientes";
    this.radiobut_Iguales.AutoSize = false;
    this.radiobut_Iguales.Location = new Point(64 /*0x40*/, 66);
    this.radiobut_Iguales.Name = "radiobut_Iguales";
    this.radiobut_Iguales.Size = new Size(124, 21);
    this.radiobut_Iguales.TabIndex = 2;
    this.radiobut_Iguales.Text = "Solo Iguales";
    this.radiobut_Diferencia.AutoSize = false;
    this.radiobut_Diferencia.Location = new Point(64 /*0x40*/, 45);
    this.radiobut_Diferencia.Name = "radiobut_Diferencia";
    this.radiobut_Diferencia.Size = new Size(145, 13);
    this.radiobut_Diferencia.TabIndex = 1;
    this.radiobut_Diferencia.Text = "Solo Diferencias";
    this.radiobut_Todos.AutoSize = false;
    this.radiobut_Todos.Checked = true;
    this.radiobut_Todos.Location = new Point(64 /*0x40*/, 20);
    this.radiobut_Todos.Name = "radiobut_Todos";
    this.radiobut_Todos.Size = new Size(56, 15);
    this.radiobut_Todos.TabIndex = 0;
    this.radiobut_Todos.TabStop = true;
    this.radiobut_Todos.Text = "Todos";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(635, 296);
    this.Controls.Add((Control) this.groupBox1);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.CuentaContaEB);
    this.Controls.Add((Control) this.PeriInfoCmBx);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repDebitosVsRetenciones);
    this.Text = "repDevitosVsRetenciones";
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.PeriInfoCmBx, 0);
    this.Controls.SetChildIndex((Control) this.CuentaContaEB, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.groupBox1, 0);
    this.groupBox1.ResumeLayout(false);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
