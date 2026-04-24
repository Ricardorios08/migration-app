// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmEmisionMasivaTasasM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraPrinting;
using DevExpress.XtraReports.UI;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoRivadavia;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmEmisionMasivaTasasM : BaseForm
{
  private BindingSource bsEmison = new BindingSource();
  private ExpEmisionMasivaTasasM experto = new ExpEmisionMasivaTasasM();
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private MetroPanel metroPanel1;
  private MetroButton ExportarPdfBut;
  private MetroLabel metroLabel3;
  private MetroIntTextBox HastaText;
  private MetroIntTextBox DesdeText;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private GridColumn colPeriodo;
  private GridColumn colDetaTili;
  private GridColumn colNumeLiqu;
  private GridColumn colFecha;

  public frmEmisionMasivaTasasM()
  {
    this.InitializeComponent();
    this.gridControl1.DataSource = (object) this.bsEmison;
    this.bsEmison.DataSource = (object) this.experto.getGridData(new Filter());
  }

  private void gridView1_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    EmisionMasivaTasasM row = (EmisionMasivaTasasM) ((BaseView) this.gridView1).GetRow(((ColumnView) this.gridView1).GetSelectedRows()[0]);
    this.DesdeText.IntText = 1;
    this.HastaText.IntText = row.CantOrdeLita;
  }

  private void ExportarPdfBut_Click(object sender, EventArgs e)
  {
    if (this.validar())
      return;
    this.ExportarPdfBut.Enabled = false;
    EmisionMasivaTasasM row = (EmisionMasivaTasasM) ((BaseView) this.gridView1).GetRow(((ColumnView) this.gridView1).GetSelectedRows()[0]);
    List<DTOBoletoRivadaviaInmu> boletoRivadaviaInmuList1 = new List<DTOBoletoRivadaviaInmu>();
    boletoRivadaviaInmuList1.Add(new DTOBoletoRivadaviaInmu()
    {
      servicios = {
        new DTOBoletoRivadaviaInmu.Servicio()
        {
          detaserv = "Servicio 1",
          imposerv = 15849M
        },
        new DTOBoletoRivadaviaInmu.Servicio()
        {
          detaserv = "Servicio lavanderia",
          imposerv = 568654M
        }
      }
    });
    if (boletoRivadaviaInmuList1.Count<DTOBoletoRivadaviaInmu>() > 250)
    {
      List<List<DTOBoletoRivadaviaInmu>> boletoRivadaviaInmuListList = this.splitList<DTOBoletoRivadaviaInmu>(boletoRivadaviaInmuList1);
      FolderBrowserDialog dialog = new FolderBrowserDialog();
      if (dialog.ShowDialog((IWin32Window) this) == DialogResult.OK)
      {
        foreach (List<DTOBoletoRivadaviaInmu> boletoRivadaviaInmuList2 in boletoRivadaviaInmuListList)
        {
          List<DTOBoletoRivadaviaInmu> l = boletoRivadaviaInmuList2;
          irepBoletoRivadaviaInmu bole = new irepBoletoRivadaviaInmu();
          ((XtraReportBase) bole).DataSource = (object) l;
          bole.createReport((Action<int, string>) null, false);
          PdfExportOptions pdfExportOptions = new PdfExportOptions();
          new frmEsperar((Form) this).procesar((Action) (() => bole.ExportToPdf($"{dialog.SelectedPath}\\tasas ({l[0].OrdeLita.ToString()}-{l[l.Count - 1].OrdeLita.ToString()}).pdf", (PdfExportOptions) null)), "Exportando..");
        }
      }
      new frmMensaje((Form) this).mostrarConfirmación("Proceso terminado");
    }
    else
    {
      irepBoletoRivadaviaInmu bole = new irepBoletoRivadaviaInmu();
      ((XtraReportBase) bole).DataSource = (object) boletoRivadaviaInmuList1;
      bole.createReport((Action<int, string>) null, false);
      SaveFileDialog dialog = new SaveFileDialog();
      dialog.AddExtension = true;
      dialog.AutoUpgradeEnabled = true;
      dialog.CheckFileExists = false;
      dialog.CheckPathExists = true;
      dialog.CreatePrompt = false;
      dialog.DefaultExt = "pdf";
      dialog.Filter = "Archivo PDF|*.pdf";
      dialog.FilterIndex = 1;
      dialog.OverwritePrompt = true;
      dialog.ShowHelp = false;
      dialog.SupportMultiDottedExtensions = true;
      dialog.Title = "Exportar a PDF";
      dialog.ValidateNames = true;
      if (dialog.ShowDialog((IWin32Window) this) == DialogResult.OK)
      {
        PdfExportOptions eo = new PdfExportOptions();
        new frmEsperar((Form) this).procesar((Action) (() => bole.ExportToPdf(dialog.FileName, eo)), "Exportando...");
        new frmMensaje((Form) this).mostrarConfirmación("Proceso terminado");
      }
    }
    this.ExportarPdfBut.Enabled = true;
  }

  public bool validar()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.DesdeText.Text.Length == 0)
      stringBuilder.AppendLine("Debe ingresar desde");
    if (this.HastaText.Text.Length == 0)
      stringBuilder.AppendLine("Debe ingresar hasta");
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length > 0;
  }

  public List<List<DTOBoletoRivadaviaInmu>> splitList<DTOBoletoRivadaviaInmu>(
    List<DTOBoletoRivadaviaInmu> locations,
    int nSize = 250)
  {
    List<List<DTOBoletoRivadaviaInmu>> boletoRivadaviaInmuListList = new List<List<DTOBoletoRivadaviaInmu>>();
    for (int index = 0; index < locations.Count; index += nSize)
      boletoRivadaviaInmuListList.Add(locations.GetRange(index, Math.Min(nSize, locations.Count - index)));
    return boletoRivadaviaInmuListList;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colPeriodo = new GridColumn();
    this.colDetaTili = new GridColumn();
    this.colNumeLiqu = new GridColumn();
    this.colFecha = new GridColumn();
    this.metroPanel1 = new MetroPanel();
    this.ExportarPdfBut = new MetroButton();
    this.metroLabel3 = new MetroLabel();
    this.HastaText = new MetroIntTextBox();
    this.DesdeText = new MetroIntTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.metroPanel1.SuspendLayout();
    this.SuspendLayout();
    ((Control) this.gridControl1).Dock = DockStyle.Fill;
    ((Control) this.gridControl1).Location = new Point(0, 0);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((Control) this.gridControl1).Name = "gridControl1";
    ((Control) this.gridControl1).Size = new Size(800, 285);
    ((Control) this.gridControl1).TabIndex = 0;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colPeriodo,
      this.colDetaTili,
      this.colNumeLiqu,
      this.colFecha
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    ((ColumnViewOptionsBehavior) this.gridView1.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridView1.OptionsBehavior).ReadOnly = true;
    this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridView1.OptionsSelection.EnableAppearanceHideSelection = false;
    this.gridView1.OptionsView.ShowGroupPanel = false;
    ((ColumnView) this.gridView1).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
    this.colPeriodo.Caption = "Periodo";
    this.colPeriodo.FieldName = "PeriLiqu";
    this.colPeriodo.Name = "colPeriodo";
    this.colPeriodo.Visible = true;
    this.colPeriodo.VisibleIndex = 0;
    this.colDetaTili.Caption = "Tipo Liquidación";
    this.colDetaTili.FieldName = "DetaTili";
    this.colDetaTili.Name = "colDetaTili";
    this.colDetaTili.Visible = true;
    this.colDetaTili.VisibleIndex = 1;
    this.colNumeLiqu.Caption = "Número";
    this.colNumeLiqu.FieldName = "NumeLiqu";
    this.colNumeLiqu.Name = "colNumeLiqu";
    this.colNumeLiqu.Visible = true;
    this.colNumeLiqu.VisibleIndex = 2;
    this.colFecha.Caption = "Fecha";
    this.colFecha.DisplayFormat.FormatString = "dd/MM//yyyy";
    this.colFecha.DisplayFormat.FormatType = (FormatType) 2;
    this.colFecha.FieldName = "FealLiqu";
    this.colFecha.Name = "colFecha";
    this.colFecha.Visible = true;
    this.colFecha.VisibleIndex = 3;
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.ExportarPdfBut);
    this.metroPanel1.Controls.Add((Control) this.metroLabel3);
    this.metroPanel1.Controls.Add((Control) this.HastaText);
    this.metroPanel1.Controls.Add((Control) this.DesdeText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel2);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Dock = DockStyle.Bottom;
    this.metroPanel1.Location = new Point(0, 285);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(800, 165);
    this.metroPanel1.TabIndex = 4;
    this.ExportarPdfBut.Location = new Point(63 /*0x3F*/, 104);
    this.ExportarPdfBut.Name = "ExportarPdfBut";
    this.ExportarPdfBut.Size = new Size(184, 32 /*0x20*/);
    this.ExportarPdfBut.TabIndex = 7;
    this.ExportarPdfBut.Text = "GENERACION MASIVA PDF ";
    this.ExportarPdfBut.Visible = false;
    this.ExportarPdfBut.Click += new EventHandler(this.ExportarPdfBut_Click);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(14, 6);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(54, 19);
    this.metroLabel3.TabIndex = 6;
    this.metroLabel3.Text = "ORDEN";
    this.HastaText.Location = new Point(264, 46);
    this.HastaText.MaxLength = 10;
    this.HastaText.MaxValue = 999999999;
    this.HastaText.Name = "HastaText";
    this.HastaText.Size = new Size(134, 23);
    this.HastaText.TabIndex = 5;
    this.DesdeText.Location = new Point(63 /*0x3F*/, 45);
    this.DesdeText.MaxLength = 10;
    this.DesdeText.MaxValue = 999999999;
    this.DesdeText.Name = "DesdeText";
    this.DesdeText.Size = new Size(124, 23);
    this.DesdeText.TabIndex = 4;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(208 /*0xD0*/, 49);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(44, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Hasta:";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(14, 50);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(48 /*0x30*/, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Desde:";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(800, 450);
    this.Controls.Add((Control) this.gridControl1);
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmEmisionMasivaTasasM);
    this.Text = "Emision Masiva de Tasas";
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.metroPanel1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
