// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.gridManualCuentaContable
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraPrinting;
using DevExpress.XtraPrintingLinks;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.Plugins.Contabilidad.Expertos;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Printing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class gridManualCuentaContable : ABMForm, ObsPeriodo
{
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiCuco;
  private GridColumn colDetaCuco;
  private GridColumn colCodiTicu;
  private GridColumn colDetaTicu;
  private GridColumn colSaldCuco;
  private GridColumn colDebeCuco;
  private GridColumn colHabeCuco;
  private GridColumn ColDescCuco;

  public gridManualCuentaContable()
    : base((ABMDetailControl) new detailManualCuentaContable(), (ABMExpert) new ExpManualCuentaContable(), typeof (ManualCuentaContable))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Manual de Cuentas Contables", "Manual de Cuentas Contables");
    ExpManualCuentaContable manualCuentaContable = new ExpManualCuentaContable();
  }

  protected override void OnSelectionChanged(Entity enti)
  {
  }

  private void gridView1_SelectionChanged(object sender, SelectionChangedEventArgs e)
  {
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiCuco", "Código", FilterMode.Equal),
      new FilterField("DetaCuco", "Detalle", FilterMode.StartsWith)
    };
  }

  protected override void OnImprimirClick()
  {
    PrintingSystem printingSystem = new PrintingSystem();
    PrintableComponentLink printableComponentLink = new PrintableComponentLink();
    this.gridView1.OptionsView.ColumnAutoWidth = true;
    ((PrintableComponentLinkBase) printableComponentLink).Component = (IBasePrintable) this.gridControl1;
    ((LinkBase) printableComponentLink).Landscape = true;
    ((LinkBase) printableComponentLink).PaperKind = PaperKind.A4;
    ((LinkBase) printableComponentLink).Margins.Top = ((LinkBase) printableComponentLink).Margins.Bottom = ((LinkBase) printableComponentLink).Margins.Left = ((LinkBase) printableComponentLink).Margins.Right = 20;
    ((ColumnView) this.gridView1).Columns[5].Visible = true;
    ((ColumnView) this.gridView1).Columns[6].Visible = true;
    ((ColumnView) this.gridView1).Columns[7].Visible = true;
    printableComponentLink.CreateDocument(printingSystem);
    printableComponentLink.ShowPreviewDialog();
    ((ColumnView) this.gridView1).Columns[5].Visible = false;
    ((ColumnView) this.gridView1).Columns[6].Visible = false;
    ((ColumnView) this.gridView1).Columns[7].Visible = false;
  }

  protected override void OnExportarPDFClick()
  {
    PrintingSystem printingSystem = new PrintingSystem();
    PrintableComponentLink printableComponentLink = new PrintableComponentLink();
    PdfExportOptions pdfExportOptions = new PdfExportOptions();
    SaveFileDialog saveFileDialog = new SaveFileDialog();
    ((ColumnView) this.gridView1).Columns[5].Visible = true;
    ((ColumnView) this.gridView1).Columns[6].Visible = true;
    ((ColumnView) this.gridView1).Columns[7].Visible = true;
    ((AppearanceObject) ((ColumnView) this.gridView1).Columns[0].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[1].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[2].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[3].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[4].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[5].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[6].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[7].AppearanceCell).Font = this.gridView1.AppearancePrint.HeaderPanel.Font = new Font("Arial", 6f);
    this.gridView1.OptionsView.ColumnAutoWidth = true;
    ((PrintableComponentLinkBase) printableComponentLink).Component = (IBasePrintable) this.gridControl1;
    ((LinkBase) printableComponentLink).Landscape = true;
    ((LinkBase) printableComponentLink).PaperKind = PaperKind.A4;
    ((LinkBase) printableComponentLink).Margins.Top = ((LinkBase) printableComponentLink).Margins.Bottom = ((LinkBase) printableComponentLink).Margins.Left = ((LinkBase) printableComponentLink).Margins.Right = 20;
    saveFileDialog.AddExtension = true;
    saveFileDialog.AutoUpgradeEnabled = true;
    saveFileDialog.CheckFileExists = false;
    saveFileDialog.CheckPathExists = true;
    saveFileDialog.CreatePrompt = false;
    saveFileDialog.DefaultExt = "pdf";
    saveFileDialog.Filter = "Archivo PDF|*.pdf";
    saveFileDialog.FilterIndex = 1;
    saveFileDialog.OverwritePrompt = true;
    saveFileDialog.ShowHelp = false;
    saveFileDialog.SupportMultiDottedExtensions = true;
    saveFileDialog.Title = "Exportar a PDF";
    saveFileDialog.ValidateNames = true;
    printableComponentLink.CreateDocument(printingSystem);
    ((ColumnView) this.gridView1).Columns[5].Visible = false;
    ((ColumnView) this.gridView1).Columns[6].Visible = false;
    ((ColumnView) this.gridView1).Columns[7].Visible = false;
    ((AppearanceObject) ((ColumnView) this.gridView1).Columns[0].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[1].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[2].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[3].AppearanceCell).Font = ((AppearanceObject) ((ColumnView) this.gridView1).Columns[4].AppearanceCell).Font = this.gridView1.Appearance.HeaderPanel.Font = (Font) null;
    ((ColumnView) this.gridView1).Columns[3].MaxWidth = ((ColumnView) this.gridView1).Columns[3].MinWidth = 0;
    if (saveFileDialog.ShowDialog((IWin32Window) this) != DialogResult.OK)
      return;
    ((PrintingSystemBase) printingSystem).ExportToPdf(saveFileDialog.FileName, pdfExportOptions);
    Process.Start(saveFileDialog.FileName);
  }

  public void PeriodoChanged(int periodo) => this.Close();

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridManualCuentaContable));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiCuco = new GridColumn();
    this.colDetaCuco = new GridColumn();
    this.colCodiTicu = new GridColumn();
    this.colDetaTicu = new GridColumn();
    this.colSaldCuco = new GridColumn();
    this.colDebeCuco = new GridColumn();
    this.colHabeCuco = new GridColumn();
    this.ColDescCuco = new GridColumn();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
    ((ImageOptions) this.butSave.ImageOptions).Image = (Image) componentResourceManager.GetObject("butSave.ImageOptions.Image");
    this.butSave.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butCancel.ImageOptions).Image = (Image) componentResourceManager.GetObject("butCancel.ImageOptions.Image");
    this.butCancel.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butDelete.ImageOptions).Image = (Image) componentResourceManager.GetObject("butDelete.ImageOptions.Image");
    this.butDelete.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butAnnular.ImageOptions).Image = (Image) componentResourceManager.GetObject("butAnnular.ImageOptions.Image");
    this.butAnnular.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butEdit.ImageOptions).Image = (Image) componentResourceManager.GetObject("butEdit.ImageOptions.Image");
    this.butEdit.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butNew.ImageOptions).Image = (Image) componentResourceManager.GetObject("butNew.ImageOptions.Image");
    this.butNew.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.gridControl1).Dock = DockStyle.Fill;
    ((Control) this.gridControl1).Location = new Point(0, 68);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((Control) this.gridControl1).Name = "gridControl1";
    ((Control) this.gridControl1).Size = new Size(777, 209);
    ((Control) this.gridControl1).TabIndex = 6;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[8]
    {
      this.colCodiCuco,
      this.colDetaCuco,
      this.colCodiTicu,
      this.colDetaTicu,
      this.colSaldCuco,
      this.colDebeCuco,
      this.colHabeCuco,
      this.ColDescCuco
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    ((ColumnView) this.gridView1).SelectionChanged += new SelectionChangedEventHandler(this.gridView1_SelectionChanged);
    this.colCodiCuco.Caption = "Cod. Cta Contable";
    this.colCodiCuco.FieldName = "CodiCuco";
    this.colCodiCuco.MaxWidth = 90;
    this.colCodiCuco.MinWidth = 90;
    this.colCodiCuco.Name = "colCodiCuco";
    this.colCodiCuco.OptionsColumn.AllowEdit = false;
    this.colCodiCuco.OptionsColumn.ReadOnly = true;
    this.colCodiCuco.Visible = true;
    this.colCodiCuco.VisibleIndex = 0;
    this.colCodiCuco.Width = 90;
    this.colDetaCuco.Caption = "Det. Cta Contable";
    this.colDetaCuco.FieldName = "DetaCuco";
    this.colDetaCuco.Name = "colDetaCuco";
    this.colDetaCuco.OptionsColumn.AllowEdit = false;
    this.colDetaCuco.OptionsColumn.ReadOnly = true;
    this.colDetaCuco.Visible = true;
    this.colDetaCuco.VisibleIndex = 1;
    this.colDetaCuco.Width = 155;
    this.colCodiTicu.Caption = "Cod. Tipo Cta Contable";
    this.colCodiTicu.FieldName = "CodiTicu";
    this.colCodiTicu.MaxWidth = 90;
    this.colCodiTicu.MinWidth = 90;
    this.colCodiTicu.Name = "colCodiTicu";
    this.colCodiTicu.OptionsColumn.AllowEdit = false;
    this.colCodiTicu.OptionsColumn.ReadOnly = true;
    this.colCodiTicu.Visible = true;
    this.colCodiTicu.VisibleIndex = 2;
    this.colCodiTicu.Width = 90;
    this.colDetaTicu.Caption = "det. Tipo Cta Contable";
    this.colDetaTicu.FieldName = "DetaTicu";
    this.colDetaTicu.MinWidth = 90;
    this.colDetaTicu.Name = "colDetaTicu";
    this.colDetaTicu.OptionsColumn.AllowEdit = false;
    this.colDetaTicu.OptionsColumn.ReadOnly = true;
    this.colDetaTicu.Visible = true;
    this.colDetaTicu.VisibleIndex = 3;
    this.colDetaTicu.Width = 163;
    this.colSaldCuco.Caption = "Saldo";
    this.colSaldCuco.FieldName = "SaldCuco";
    this.colSaldCuco.MaxWidth = 90;
    this.colSaldCuco.MinWidth = 90;
    this.colSaldCuco.Name = "colSaldCuco";
    this.colSaldCuco.Visible = true;
    this.colSaldCuco.VisibleIndex = 4;
    this.colSaldCuco.Width = 90;
    this.colDebeCuco.Caption = "Debe";
    this.colDebeCuco.FieldName = "DebeCuco";
    this.colDebeCuco.Name = "colDebeCuco";
    this.colHabeCuco.Caption = "Haber";
    this.colHabeCuco.FieldName = "HabeCuco";
    this.colHabeCuco.Name = "colHabeCuco";
    this.ColDescCuco.Caption = "Descripcion";
    this.ColDescCuco.FieldName = "DescCuco";
    this.ColDescCuco.Name = "ColDescCuco";
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridManualCuentaContable);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
