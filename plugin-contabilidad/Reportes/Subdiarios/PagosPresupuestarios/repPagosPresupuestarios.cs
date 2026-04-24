// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.PagosPresupuestarios.repPagosPresupuestarios
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Reports;
using System;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.PagosPresupuestarios;

public class repPagosPresupuestarios : InfoGovPrintForm
{
  private MetroDateTextBox FechaDesdeText;
  private MetroDateTextBox FechaHastaText;
  private MetroLabel metroLabel2;
  private MetroEntityBox CuentaContableEB;
  private MetroLabel metroLabel12;
  private MetroCheckBox CheckCuentas;
  private MetroLabel metroLabel1;

  public repPagosPresupuestarios()
    : base("Subdiario de Pagos Presupuestarios")
  {
    this.InitializeComponent();
    this.CuentaContableEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuentaContable);
    this.CuentaContableEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuentaContable);
  }

  private void InitializeComponent()
  {
    this.FechaDesdeText = new MetroDateTextBox();
    this.FechaHastaText = new MetroDateTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.CuentaContableEB = new MetroEntityBox();
    this.metroLabel12 = new MetroLabel();
    this.CheckCuentas = new MetroCheckBox();
    this.SuspendLayout();
    this.butClose.Location = new Point(466, 7);
    this.butGenerate.Location = new Point(211, 225);
    this.FechaDesdeText.Location = new Point(129, 70);
    this.FechaDesdeText.Name = "FechaDesdeText";
    this.FechaDesdeText.Size = new Size(90, 25);
    this.FechaDesdeText.TabIndex = 6;
    this.FechaHastaText.Location = new Point(129, 107);
    this.FechaHastaText.Name = "FechaHastaText";
    this.FechaHastaText.Size = new Size(90, 25);
    this.FechaHastaText.TabIndex = 7;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(41, 113);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(82, 19);
    this.metroLabel2.TabIndex = 9;
    this.metroLabel2.Text = "Fecha Hasta:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(37, 76);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(86, 19);
    this.metroLabel1.TabIndex = 8;
    this.metroLabel1.Text = "Fecha Desde:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.CuentaContableEB.AllowEmpty = false;
    this.CuentaContableEB.AllowSqlCharacters = false;
    this.CuentaContableEB.BackColor = Color.White;
    this.CuentaContableEB.Entity = (Entity) null;
    this.CuentaContableEB.ExternalValidation = (Func<string>) null;
    this.CuentaContableEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CuentaContableEB.Location = new Point(129, 142);
    this.CuentaContableEB.MandatoryWrite = false;
    this.CuentaContableEB.Margin = new Padding(3, 4, 3, 4);
    this.CuentaContableEB.MaximumSize = new Size(3000, 23);
    this.CuentaContableEB.MaxLenght = 50;
    this.CuentaContableEB.MinimumSize = new Size(100, 23);
    this.CuentaContableEB.Name = "CuentaContableEB";
    this.CuentaContableEB.PropertyDetail = "DetaCuco";
    this.CuentaContableEB.PropertyID = "CodiCuco";
    this.CuentaContableEB.ShowNewButton = false;
    this.CuentaContableEB.ShowSearchButton = false;
    this.CuentaContableEB.Size = new Size(336, 23);
    this.CuentaContableEB.TabIndex = 23;
    this.CuentaContableEB.TextAlign = HorizontalAlignment.Left;
    this.CuentaContableEB.TextBoxWidth = 90;
    this.metroLabel12.AutoSize = false;
    this.metroLabel12.Location = new Point(2, 146);
    this.metroLabel12.Name = "metroLabel12";
    this.metroLabel12.Size = new Size(118, 19);
    this.metroLabel12.TabIndex = 24;
    this.metroLabel12.Text = "Cuenta Contable:";
    this.metroLabel12.TextAlign = ContentAlignment.MiddleRight;
    this.CheckCuentas.AutoSize = false;
    this.CheckCuentas.Location = new Point(129, 175);
    this.CheckCuentas.Name = "CheckCuentas";
    this.CheckCuentas.Size = new Size(235, 19);
    this.CheckCuentas.TabIndex = 25;
    this.CheckCuentas.Text = "Excluir Cuentas Extrapresupuestarias";
    this.ClientSize = new Size(496, 261);
    this.Controls.Add((Control) this.CheckCuentas);
    this.Controls.Add((Control) this.CuentaContableEB);
    this.Controls.Add((Control) this.metroLabel12);
    this.Controls.Add((Control) this.FechaDesdeText);
    this.Controls.Add((Control) this.FechaHastaText);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repPagosPresupuestarios);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.FechaHastaText, 0);
    this.Controls.SetChildIndex((Control) this.FechaDesdeText, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel12, 0);
    this.Controls.SetChildIndex((Control) this.CuentaContableEB, 0);
    this.Controls.SetChildIndex((Control) this.CheckCuentas, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }

  protected override InfoGovReport createReport()
  {
    return (InfoGovReport) new irepPagosPresupuestarios()
    {
      desde = this.FechaDesdeText.Date,
      hasta = this.FechaHastaText.Date,
      CodiCuco = (this.CuentaContableEB.Entity != null ? ((CuentaContable) this.CuentaContableEB.Entity).CodiCuco : ""),
      check = this.CheckCuentas.Checked
    };
  }

  protected override string validateControls()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.FechaDesdeText.Date > this.FechaHastaText.Date)
      stringBuilder.AppendLine("La fecha desde no puede ser mayor que la fecha hasta");
    if (this.FechaDesdeText.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Debe ingresar fecha desde");
    if (this.FechaHastaText.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Debe ingresar fecha hasta");
    if (Misc.Usuario.ToUpper().StartsWith("HTC"))
    {
      if (this.FechaDesdeText.Date > Misc.getFechaConta(this.FechaDesdeText.Date.Year) && this.FechaHastaText.Date > Misc.getFechaConta(this.FechaHastaText.Date.Year))
        stringBuilder.AppendLine("La Contabilidad No se encuentra Cerrada para el rango de fechas indicado. Verifique...");
      else if (this.FechaHastaText.Date > Misc.getFechaConta(this.FechaHastaText.Date.Year))
        stringBuilder.AppendLine($"La Contabilidad No se encuentra Cerrada para la fecha {this.FechaHastaText.Date.ToShortDateString()}. Verifique...");
    }
    return stringBuilder.ToString();
  }

  private Entity BuscarCuentaContable(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, this.FechaDesdeText.Date.Year.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCuco", "Código", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<CuentaContable>(filter, true);
  }

  private Entity EncontrarCuentaContable(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, this.FechaDesdeText.Date.Year.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCuco", "Código", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<CuentaContable>(filter, true, true);
  }
}
