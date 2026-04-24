// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmEmisionMasivaComercioGUAY
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using DevExpress.XtraEditors;
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
using InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioGuay;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmEmisionMasivaComercioGUAY : FRMForm
{
  private BindingSource bsEmison = new BindingSource();
  private ExpEmisionMasivaComerciosGUAY experto = new ExpEmisionMasivaComerciosGUAY();
  private IContainer components = (IContainer) null;
  private SimpleFilterBar Filtro;
  private MetroPanel metroPanel1;
  private MetroButton ExportarPdfBut;
  private MetroLabel metroLabel3;
  private MetroIntTextBox HastaText;
  private MetroIntTextBox DesdeText;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colPeriLiqu;
  private GridColumn colDetaTili;
  private GridColumn colNumeLiqu;
  private GridColumn colFealLiqu;
  private MetroButton butPdfMail;
  private NavigationFrame navigationFrame1;
  private NavigationPage navigationPage1;
  private NavigationPage navigationPage2;
  private MetroButton butVolver;
  private FlowLayoutPanel flow;

  public frmEmisionMasivaComercioGUAY()
    : base("Emision masiva de Comercios", "Emision masiva de Comercios", typeof (ExpEmisionMasivaComerciosGUAY))
  {
    this.InitializeComponent();
    this.gridControl1.DataSource = (object) this.bsEmison;
    this.bsEmison.DataSource = (object) this.experto.getGridData(new Filter());
    this.llenarfiltro();
    ((Control) this.butNew).Visible = false;
    ((Control) this.butEdit).Visible = false;
    ((Control) this.butAnnular).Visible = false;
    ((Control) this.butDelete).Visible = false;
    ((Control) this.butSave).Visible = false;
    ((Control) this.butCancel).Visible = false;
  }

  protected override void OnActionModeChanged(ActionMode mode)
  {
  }

  protected override void OnNuevoClick()
  {
  }

  protected override void OnModificarClick()
  {
  }

  protected override void OnAnularClick()
  {
  }

  protected override string OnEliminarClick() => "Eliminación no implementada";

  protected override string OnGuardarClick() => "Guardar no implementado.";

  public void llenarfiltro()
  {
    this.Filtro.setFilterFields(new List<FilterField>()
    {
      new FilterField("liquidacion.NumeLiqu", "Nro. Liquidacion", FilterMode.Equal),
      new FilterField("DetaTili", "Det. TipoLiquidacion", FilterMode.Contains)
    });
    this.Filtro.FilteringFunction = (Action<Filter>) (f => this.bsEmison.DataSource = (object) this.experto.getGridData(f));
  }

  private void DesdeText_Validated(object sender, EventArgs e)
  {
    if (this.HastaText.Text.Length != 0)
      return;
    this.sugerirValres();
  }

  private void HastaText_Validated(object sender, EventArgs e)
  {
  }

  private void sugerirValres()
  {
    int num = this.experto.sugiereOrdenNew((EmisionMasivaComercios) ((BaseView) this.gridView1).GetRow(((ColumnView) this.gridView1).GetSelectedRows()[0]));
    this.DesdeText.IntText = 1;
    this.HastaText.IntText = num;
    if (this.DesdeText.Text == "0" && this.HastaText.Text == "0")
    {
      this.ExportarPdfBut.Enabled = false;
      this.butPdfMail.Enabled = false;
    }
    else
    {
      this.ExportarPdfBut.Enabled = true;
      this.butPdfMail.Enabled = true;
    }
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

  public List<List<DTOBoletoComercioGuay>> splitList<DTOBoletoComercioGuay>(
    List<DTOBoletoComercioGuay> locations,
    int nSize = 250)
  {
    List<List<DTOBoletoComercioGuay>> boletoComercioGuayListList = new List<List<DTOBoletoComercioGuay>>();
    for (int index = 0; index < locations.Count; index += nSize)
      boletoComercioGuayListList.Add(locations.GetRange(index, Math.Min(nSize, locations.Count - index)));
    return boletoComercioGuayListList;
  }

  public List<List<DTOBoletoComercioGuay>> splitListxCupones(
    List<DTOBoletoComercioGuay> locations,
    int nSize = 250)
  {
    List<List<DTOBoletoComercioGuay>> boletoComercioGuayListList = new List<List<DTOBoletoComercioGuay>>();
    int val1 = nSize / locations[0].cupones.Count;
    for (int index = 0; index < locations.Count; index += val1)
      boletoComercioGuayListList.Add(locations.GetRange(index, Math.Min(val1, locations.Count - index)));
    return boletoComercioGuayListList;
  }

  private void gridView1_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    EmisionMasivaComercios row = (EmisionMasivaComercios) ((BaseView) this.gridView1).GetRow(((ColumnView) this.gridView1).GetSelectedRows()[0]);
    this.DesdeText.IntText = 1;
    this.HastaText.IntText = row.CantOrdeLico;
  }

  private void ExportarPdfBut_Click(object sender, EventArgs e)
  {
    if (this.validar())
      return;
    EmisionMasivaComercios row = (EmisionMasivaComercios) ((BaseView) this.gridView1).GetRow(((ColumnView) this.gridView1).GetSelectedRows()[0]);
    if (this.HastaText.IntText > row.CantOrdeLico)
    {
      new frmMensaje((Form) this).mostrarError("Generación fuera de Rango.");
    }
    else
    {
      this.ExportarPdfBut.Enabled = this.butPdfMail.Enabled = false;
      List<DTOBoletoComercioGuay> boletoComercioGuayList1 = new frmEsperar((Form) this).calcular<List<DTOBoletoComercioGuay>>((Func<List<DTOBoletoComercioGuay>>) (() => this.experto.obtenerLiquComercios(row, this.DesdeText.IntText, this.HastaText.IntText)), "Consultado Datos...");
      List<DTOBoletoComercioGuay> listaRepo = new List<DTOBoletoComercioGuay>();
      int num = 0;
      int index = 0;
      foreach (DTOBoletoComercioGuay comer in boletoComercioGuayList1)
      {
        if (comer.CodiCome != num)
        {
          num = comer.CodiCome;
          listaRepo.Add(comer);
          listaRepo[index].cupones = new List<CuponComercio>();
          listaRepo[index].cupones.Add(this.experto.obtenerCupon(row, comer, comer.TipoVenc == 2));
          ++index;
        }
        else
          listaRepo[index - 1].cupones.Add(this.experto.obtenerCupon(row, comer, comer.TipoVenc == 2));
      }
      this.agregarQrVinculado(listaRepo);
      new frmEsperar((Form) this).procesar((Action) (() => this.experto.ProcesarCalcularDeudas(listaRepo)), "Calculando Deudas...");
      if (listaRepo.Count<DTOBoletoComercioGuay>() > 250)
      {
        List<List<DTOBoletoComercioGuay>> boletoComercioGuayListList = this.splitList<DTOBoletoComercioGuay>(listaRepo);
        FolderBrowserDialog dialog = new FolderBrowserDialog();
        if (dialog.ShowDialog((IWin32Window) this) == DialogResult.OK)
        {
          foreach (List<DTOBoletoComercioGuay> boletoComercioGuayList2 in boletoComercioGuayListList)
          {
            List<DTOBoletoComercioGuay> l = boletoComercioGuayList2;
            irepBoletoComercioGuay bole = new irepBoletoComercioGuay();
            ((XtraReportBase) bole).DataSource = (object) l;
            bole.createReport((Action<int, string>) null, false);
            PdfExportOptions pdfExportOptions = new PdfExportOptions();
            new frmEsperar((Form) this).procesar((Action) (() => bole.ExportToPdf($"{dialog.SelectedPath}\\comercios ({l[0].OrdeLico.ToString()}-{l[l.Count - 1].OrdeLico.ToString()}).pdf", (PdfExportOptions) null)), "Exportando..");
          }
        }
        new frmMensaje((Form) this).mostrarConfirmación("Proceso terminado");
      }
      else
      {
        irepBoletoComercioGuay bole = new irepBoletoComercioGuay();
        ((XtraReportBase) bole).DataSource = (object) listaRepo;
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
      this.ExportarPdfBut.Enabled = this.butPdfMail.Enabled = true;
    }
  }

  private void butPdfMail_Click(object sender, EventArgs e)
  {
  }

  private void butGenerarQrEpagos_Click(object sender, EventArgs e)
  {
  }

  public void agregarQrVinculado(List<DTOBoletoComercioGuay> listaRepo)
  {
    foreach (DTOBoletoComercioGuay boletoComercioGuay in listaRepo)
    {
      string str1 = "";
      foreach (CuponComercio cupone in boletoComercioGuay.cupones)
        str1 = $"{str1}{cupone.NumeBole.ToString()}-";
      string str2 = str1.TrimEnd('-');
      boletoComercioGuay.EpagosQrVinc = $"https://vps.infogov.com.ar/rentas/guaymallen/V1/index.php/api/epagos/opcionespago/{str2}/{boletoComercioGuay.PeriBole.ToString()}";
    }
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmEmisionMasivaComercioGUAY));
    this.Filtro = new SimpleFilterBar();
    this.metroPanel1 = new MetroPanel();
    this.butPdfMail = new MetroButton();
    this.ExportarPdfBut = new MetroButton();
    this.metroLabel3 = new MetroLabel();
    this.HastaText = new MetroIntTextBox();
    this.DesdeText = new MetroIntTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colPeriLiqu = new GridColumn();
    this.colDetaTili = new GridColumn();
    this.colNumeLiqu = new GridColumn();
    this.colFealLiqu = new GridColumn();
    this.navigationFrame1 = new NavigationFrame();
    this.navigationPage1 = new NavigationPage();
    this.navigationPage2 = new NavigationPage();
    this.butVolver = new MetroButton();
    this.flow = new FlowLayoutPanel();
    this.panel1.SuspendLayout();
    this.metroPanel1.SuspendLayout();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    ((ISupportInitialize) this.navigationFrame1).BeginInit();
    ((Control) this.navigationFrame1).SuspendLayout();
    ((Control) this.navigationPage1).SuspendLayout();
    ((Control) this.navigationPage2).SuspendLayout();
    this.SuspendLayout();
    this.panel1.Size = new Size(1219, 68);
    this.panel1.Controls.SetChildIndex((Control) this.separator1, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butEdit, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butNew, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butAnnular, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butDelete, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butCancel, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butSave, 0);
    this.separator1.Size = new Size(9417, 2);
    ((ImageOptions) this.butSave.ImageOptions).Image = (Image) componentResourceManager.GetObject("butSave.ImageOptions.Image");
    this.butSave.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butSave).Location = new Point(6553, 34);
    ((ImageOptions) this.butCancel.ImageOptions).Image = (Image) componentResourceManager.GetObject("butCancel.ImageOptions.Image");
    this.butCancel.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butCancel).Location = new Point(6659, 34);
    ((ImageOptions) this.butDelete.ImageOptions).Image = (Image) componentResourceManager.GetObject("butDelete.ImageOptions.Image");
    this.butDelete.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butAnnular.ImageOptions).Image = (Image) componentResourceManager.GetObject("butAnnular.ImageOptions.Image");
    this.butAnnular.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butNew.ImageOptions).Image = (Image) componentResourceManager.GetObject("butNew.ImageOptions.Image");
    this.butNew.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butEdit.ImageOptions).Image = (Image) componentResourceManager.GetObject("butEdit.ImageOptions.Image");
    this.butEdit.ImageOptions.Location = (ImageLocation) 1;
    this.Filtro.BackColor = Color.WhiteSmoke;
    this.Filtro.BackgroundColor = Color.WhiteSmoke;
    this.Filtro.Dock = DockStyle.Top;
    this.Filtro.FilteringFunction = (Action<Filter>) null;
    this.Filtro.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.Filtro.Location = new Point(0, 68);
    this.Filtro.Margin = new Padding(0);
    this.Filtro.MaximumSize = new Size(6000, 58);
    this.Filtro.MinimumSize = new Size(378, 25);
    this.Filtro.Name = "Filtro";
    this.Filtro.Size = new Size(1219, 25);
    this.Filtro.TabIndex = 2;
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.butPdfMail);
    this.metroPanel1.Controls.Add((Control) this.ExportarPdfBut);
    this.metroPanel1.Controls.Add((Control) this.metroLabel3);
    this.metroPanel1.Controls.Add((Control) this.HastaText);
    this.metroPanel1.Controls.Add((Control) this.DesdeText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel2);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Dock = DockStyle.Bottom;
    this.metroPanel1.Location = new Point(0, 491);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(1219, 165);
    this.metroPanel1.TabIndex = 3;
    this.butPdfMail.Location = new Point(264, 105);
    this.butPdfMail.Name = "butPdfMail";
    this.butPdfMail.Size = new Size(184, 32 /*0x20*/);
    this.butPdfMail.TabIndex = 8;
    this.butPdfMail.Text = "GENERAR PDF PARA ENVIO MAIL";
    this.butPdfMail.Visible = false;
    this.butPdfMail.Click += new EventHandler(this.butPdfMail_Click);
    this.ExportarPdfBut.Location = new Point(14, 105);
    this.ExportarPdfBut.Name = "ExportarPdfBut";
    this.ExportarPdfBut.Size = new Size(184, 32 /*0x20*/);
    this.ExportarPdfBut.TabIndex = 7;
    this.ExportarPdfBut.Text = "GENERACION MASIVA PDF ";
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
    this.HastaText.Validated += new EventHandler(this.HastaText_Validated);
    this.DesdeText.Location = new Point(63 /*0x3F*/, 45);
    this.DesdeText.MaxLength = 10;
    this.DesdeText.MaxValue = 999999999;
    this.DesdeText.Name = "DesdeText";
    this.DesdeText.Size = new Size(124, 23);
    this.DesdeText.TabIndex = 4;
    this.DesdeText.Validated += new EventHandler(this.DesdeText_Validated);
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
    ((Control) this.gridControl1).Dock = DockStyle.Fill;
    ((Control) this.gridControl1).Location = new Point(0, 0);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((Control) this.gridControl1).Name = "gridControl1";
    ((Control) this.gridControl1).Size = new Size(1219, 491);
    ((Control) this.gridControl1).TabIndex = 4;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colPeriLiqu,
      this.colDetaTili,
      this.colNumeLiqu,
      this.colFealLiqu
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridView1.OptionsSelection.EnableAppearanceHideSelection = false;
    this.gridView1.OptionsView.ShowGroupPanel = false;
    ((ColumnView) this.gridView1).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
    this.colPeriLiqu.Caption = "Periodo";
    this.colPeriLiqu.FieldName = "PeriLiqu";
    this.colPeriLiqu.Name = "colPeriLiqu";
    this.colPeriLiqu.OptionsColumn.AllowEdit = false;
    this.colPeriLiqu.Visible = true;
    this.colPeriLiqu.VisibleIndex = 0;
    this.colDetaTili.Caption = "Tipo Liquidacion";
    this.colDetaTili.FieldName = "DetaTili";
    this.colDetaTili.Name = "colDetaTili";
    this.colDetaTili.OptionsColumn.AllowEdit = false;
    this.colDetaTili.Visible = true;
    this.colDetaTili.VisibleIndex = 1;
    this.colNumeLiqu.Caption = "Numero";
    this.colNumeLiqu.FieldName = "NumeLiqu";
    this.colNumeLiqu.Name = "colNumeLiqu";
    this.colNumeLiqu.OptionsColumn.AllowEdit = false;
    this.colNumeLiqu.Visible = true;
    this.colNumeLiqu.VisibleIndex = 2;
    this.colFealLiqu.Caption = "Fecha";
    this.colFealLiqu.DisplayFormat.FormatString = "dd-MM-yyyy";
    this.colFealLiqu.DisplayFormat.FormatType = (FormatType) 2;
    this.colFealLiqu.FieldName = "FealLiqu";
    this.colFealLiqu.Name = "colFealLiqu";
    this.colFealLiqu.OptionsColumn.AllowEdit = false;
    this.colFealLiqu.Visible = true;
    this.colFealLiqu.VisibleIndex = 3;
    ((Control) this.navigationFrame1).Controls.Add((Control) this.navigationPage1);
    ((Control) this.navigationFrame1).Controls.Add((Control) this.navigationPage2);
    ((Control) this.navigationFrame1).Dock = DockStyle.Fill;
    ((Control) this.navigationFrame1).Location = new Point(0, 93);
    ((Control) this.navigationFrame1).Name = "navigationFrame1";
    ((BaseMutableList<NavigationPageBase>) this.navigationFrame1.Pages).AddRange(new NavigationPageBase[2]
    {
      (NavigationPageBase) this.navigationPage1,
      (NavigationPageBase) this.navigationPage2
    });
    this.navigationFrame1.SelectedPage = (INavigationPage) this.navigationPage1;
    ((Control) this.navigationFrame1).Size = new Size(1219, 656);
    ((Control) this.navigationFrame1).TabIndex = 5;
    ((Control) this.navigationFrame1).Text = "navigationFrame1";
    ((NavigationPageBase) this.navigationPage1).Caption = "navigationPage1";
    ((Control) this.navigationPage1).Controls.Add((Control) this.gridControl1);
    ((Control) this.navigationPage1).Controls.Add((Control) this.metroPanel1);
    ((Control) this.navigationPage1).Name = "navigationPage1";
    ((NavigationPageBase) this.navigationPage1).Size = new Size(1219, 656);
    ((NavigationPageBase) this.navigationPage2).Caption = "navigationPage2";
    ((Control) this.navigationPage2).Controls.Add((Control) this.butVolver);
    ((Control) this.navigationPage2).Controls.Add((Control) this.flow);
    ((Control) this.navigationPage2).Name = "navigationPage2";
    ((NavigationPageBase) this.navigationPage2).Size = new Size(1219, 656);
    this.butVolver.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.butVolver.Location = new Point(1138, 6);
    this.butVolver.Name = "butVolver";
    this.butVolver.Size = new Size(75, 23);
    this.butVolver.TabIndex = 1;
    this.butVolver.Text = "Volver";
    this.flow.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.flow.Location = new Point(6, 38);
    this.flow.Name = "flow";
    this.flow.Size = new Size(1207, 606);
    this.flow.TabIndex = 0;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1219, 749);
    this.Controls.Add((Control) this.navigationFrame1);
    this.Controls.Add((Control) this.Filtro);
    this.Name = "frmEmisionMasivaComercio";
    this.Text = "Emision Masiva de Comercios";
    this.Controls.SetChildIndex((Control) this.panel1, 0);
    this.Controls.SetChildIndex((Control) this.Filtro, 0);
    this.Controls.SetChildIndex((Control) this.navigationFrame1, 0);
    this.panel1.ResumeLayout(false);
    this.metroPanel1.ResumeLayout(false);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    ((ISupportInitialize) this.navigationFrame1).EndInit();
    ((Control) this.navigationFrame1).ResumeLayout(false);
    ((Control) this.navigationPage1).ResumeLayout(false);
    ((Control) this.navigationPage2).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
