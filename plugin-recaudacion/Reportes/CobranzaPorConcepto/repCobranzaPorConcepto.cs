// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.CobranzaPorConcepto.repCobranzaPorConcepto
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.CobranzaPorConcepto;

public class repCobranzaPorConcepto : InfoGovPrintForm
{
  private IContainer components = (IContainer) null;
  private MetroDateTextBox txtFechaHasta;
  private MetroLabel metroLabel5;
  private MetroDateTextBox txtFechaDesde;
  private MetroLabel metroLabel6;
  private MetroEntityBox ConceptoEB;
  private MetroLabel metroLabel2;

  public repCobranzaPorConcepto()
    : base("Cobranza Por Concepto")
  {
    this.InitializeComponent();
    this.ConceptoEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarConcepto);
    this.ConceptoEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarConcepto);
  }

  protected override string validateControls()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.txtFechaDesde.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Ingresar fecha desde");
    if (this.txtFechaHasta.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Ingresar fecha hasta");
    if (this.txtFechaDesde.Date > this.txtFechaHasta.Date)
      stringBuilder.AppendLine("Fecha desde no puede ser mayor fecha hasta");
    if (this.ConceptoEB.Entity == null)
      stringBuilder.AppendLine("Ingresar concepto");
    return stringBuilder.ToString();
  }

  protected override InfoGovReport createReport()
  {
    return (InfoGovReport) new irepCobranzaPorConcepto()
    {
      FechaDesde = this.txtFechaDesde.Date,
      FechaHasta = this.txtFechaHasta.Date,
      Conc = (this.ConceptoEB.Entity != null ? ((Concepto) this.ConceptoEB.Entity).CodiConc : "0")
    };
  }

  private Entity BuscarConcepto(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Concepto>(filter, true);
  }

  private Entity EncontrarConcepto(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Concepto>(filter, true, true);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.txtFechaHasta = new MetroDateTextBox();
    this.metroLabel5 = new MetroLabel();
    this.txtFechaDesde = new MetroDateTextBox();
    this.metroLabel6 = new MetroLabel();
    this.ConceptoEB = new MetroEntityBox();
    this.metroLabel2 = new MetroLabel();
    this.SuspendLayout();
    this.butClose.Location = new Point(566, 10);
    this.butGenerate.Location = new Point(266, 193);
    this.txtFechaHasta.AllowEmpty = true;
    this.txtFechaHasta.Location = new Point(165, 96 /*0x60*/);
    this.txtFechaHasta.Name = "txtFechaHasta";
    this.txtFechaHasta.Size = new Size(90, 25);
    this.txtFechaHasta.TabIndex = 71;
    this.txtFechaHasta.Tag = (object) "Hasta";
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(24, 102);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(137, 19);
    this.metroLabel5.TabIndex = 72;
    this.metroLabel5.Text = "Hasta Fecha de Envío:";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.txtFechaDesde.AllowEmpty = true;
    this.txtFechaDesde.Location = new Point(165, 59);
    this.txtFechaDesde.Name = "txtFechaDesde";
    this.txtFechaDesde.Size = new Size(90, 25);
    this.txtFechaDesde.TabIndex = 69;
    this.txtFechaDesde.Tag = (object) "Desde";
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(15, 65);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(146, 19);
    this.metroLabel6.TabIndex = 70;
    this.metroLabel6.Text = "Desde Fecha de Envío:";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.ConceptoEB.AllowEmpty = false;
    this.ConceptoEB.AllowSqlCharacters = false;
    this.ConceptoEB.BackColor = Color.White;
    this.ConceptoEB.Entity = (Entity) null;
    this.ConceptoEB.ExternalValidation = (Func<string>) null;
    this.ConceptoEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ConceptoEB.LabelText = "";
    this.ConceptoEB.Location = new Point(165, 131);
    this.ConceptoEB.MandatoryWrite = false;
    this.ConceptoEB.Margin = new Padding(3, 4, 3, 4);
    this.ConceptoEB.MaximumSize = new Size(3000, 23);
    this.ConceptoEB.MaxLenght = 50;
    this.ConceptoEB.MinimumSize = new Size(100, 23);
    this.ConceptoEB.Name = "ConceptoEB";
    this.ConceptoEB.PropertyDetail = "DetaConc";
    this.ConceptoEB.PropertyID = "CodiConc";
    this.ConceptoEB.ShowNewButton = false;
    this.ConceptoEB.ShowSearchButton = false;
    this.ConceptoEB.Size = new Size(399, 23);
    this.ConceptoEB.TabIndex = 74;
    this.ConceptoEB.TextAlign = HorizontalAlignment.Left;
    this.ConceptoEB.TextBoxWidth = 90;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(79, 135);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(77, 19);
    this.metroLabel2.TabIndex = 73;
    this.metroLabel2.Text = "Concepto:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(601, 229);
    this.Controls.Add((Control) this.ConceptoEB);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.txtFechaHasta);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.txtFechaDesde);
    this.Controls.Add((Control) this.metroLabel6);
    this.Name = nameof (repCobranzaPorConcepto);
    this.Text = "Cobranza Por Concepto";
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel6, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaDesde, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel5, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaHasta, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.ConceptoEB, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
