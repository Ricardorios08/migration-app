// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.PagosWeb.repPagosVarios
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraEditors.Repository;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.PagosWeb;

public class repPagosVarios : InfoGovPrintForm
{
  private IContainer components = (IContainer) null;
  private MetroDateTextBox txtFechaHasta;
  private MetroLabel metroLabel5;
  private MetroDateTextBox txtFechaDesde;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel1;
  private CheckedComboBoxEdit cbxServicios;

  public repPagosVarios()
    : base("Reporte Boletos Varios")
  {
    this.InitializeComponent();
    this.cbxServicios.Properties.DisplayMember = "DetaSede";
    this.cbxServicios.Properties.ValueMember = "CodiSede";
    this.cbxServicios.Properties.DataSource = (object) new ExpServicioVario().getServiciosVarios();
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
    if (this.cbxServicios.Properties.Items.GetCheckedValues().Count == 0)
      stringBuilder.AppendLine("No hay servicios seleccionados");
    return stringBuilder.ToString();
  }

  private void txtFechaDesde_Validated(object sender, EventArgs e)
  {
    this.txtFechaHasta.Date = DateTime.Now;
  }

  protected override InfoGovReport createReport()
  {
    irepPagosVarios report = new irepPagosVarios();
    report.FechaDesde = this.txtFechaDesde.Date;
    report.FechaHasta = this.txtFechaHasta.Date;
    int[] numArray = new int[this.cbxServicios.Properties.Items.GetCheckedValues().Count];
    int index1 = 0;
    if (this.cbxServicios.Properties.Items.GetCheckedValues().Count > 0)
    {
      List<ServicioVario> dataSource = (List<ServicioVario>) this.cbxServicios.Properties.DataSource;
      for (int index2 = 0; index2 < ((ListBoxItemCollection) this.cbxServicios.Properties.Items).Count; ++index2)
      {
        if (this.cbxServicios.Properties.Items[index2].CheckState == CheckState.Checked)
        {
          numArray[index1] = dataSource[index2].CodiSede;
          ++index1;
        }
      }
    }
    report.VCodiSede = numArray;
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
    this.txtFechaHasta = new MetroDateTextBox();
    this.metroLabel5 = new MetroLabel();
    this.txtFechaDesde = new MetroDateTextBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.cbxServicios = new CheckedComboBoxEdit();
    ((ISupportInitialize) this.cbxServicios.Properties).BeginInit();
    this.SuspendLayout();
    this.butClose.Location = new Point(449, 10);
    this.butGenerate.Location = new Point(205, 281);
    this.txtFechaHasta.AllowEmpty = true;
    this.txtFechaHasta.Location = new Point(245, 146);
    this.txtFechaHasta.Name = "txtFechaHasta";
    this.txtFechaHasta.Size = new Size(90, 25);
    this.txtFechaHasta.TabIndex = 67;
    this.txtFechaHasta.Tag = (object) "Hasta";
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(143, 152);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(93, 19);
    this.metroLabel5.TabIndex = 68;
    this.metroLabel5.Text = "Fecha Hasta:";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.txtFechaDesde.AllowEmpty = true;
    this.txtFechaDesde.Location = new Point(245, 109);
    this.txtFechaDesde.Name = "txtFechaDesde";
    this.txtFechaDesde.Size = new Size(90, 25);
    this.txtFechaDesde.TabIndex = 65;
    this.txtFechaDesde.Tag = (object) "Desde";
    this.txtFechaDesde.Validated += new EventHandler(this.txtFechaDesde_Validated);
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(143, 115);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(93, 19);
    this.metroLabel6.TabIndex = 66;
    this.metroLabel6.Text = "Fecha Desde:";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(161, 195);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(63 /*0x3F*/, 19);
    this.metroLabel1.TabIndex = 69;
    this.metroLabel1.Text = "Servicios:";
    ((Control) this.cbxServicios).Location = new Point(245, 192 /*0xC0*/);
    ((Control) this.cbxServicios).Name = "cbxServicios";
    ((RepositoryItemButtonEdit) this.cbxServicios.Properties).Buttons.AddRange(new EditorButton[1]
    {
      new EditorButton((ButtonPredefines) -5)
    });
    ((Control) this.cbxServicios).Size = new Size(147, 20);
    ((Control) this.cbxServicios).TabIndex = 70;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(484, 347);
    this.Controls.Add((Control) this.cbxServicios);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.txtFechaHasta);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.txtFechaDesde);
    this.Controls.Add((Control) this.metroLabel6);
    this.Name = nameof (repPagosVarios);
    this.Text = "repPagosWeb";
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel6, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaDesde, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel5, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaHasta, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.cbxServicios, 0);
    ((ISupportInitialize) this.cbxServicios.Properties).EndInit();
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
