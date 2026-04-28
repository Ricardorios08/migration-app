// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.frmParamComiBancRecaudadores
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.Plugins.Contabilidad.Expertos;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class frmParamComiBancRecaudadores : FRMForm, ObsPeriodo
{
  private BindingSource bsComiBancRecaudadores = new BindingSource();
  private BindingSource bsComiBancRecaudadoresRowSelected = new BindingSource();
  private ExpParamComiBancarias experto = new ExpParamComiBancarias();
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridControl gridControl2;
  private GridView gridView2;
  private GroupBox groupBox1;
  private MetroPanel metroPanel1;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel1;
  private GridColumn colMes;
  private GridColumn colExpeOrig;
  private GridColumn colPartida;
  private GridColumn colOficina;
  private GridColumn colCodiBanc;
  private GridColumn colCodiTimb;
  private GridColumn colNumeMoba;
  private GridColumn colFechMoba;
  private GridColumn colDebeMoba;
  private GridColumn colHabeMoba;
  private GridColumn colComiMoba;
  private GroupBox groupBox2;
  private GridColumn colIvaMoba;
  private MetroButton BtnComiBancarias;
  private LabelControl lblPagaImpu;
  private LabelControl labelControl4;
  private LabelControl lblFechaHasta;
  private LabelControl lblFechaDesde;
  private LabelControl labelControl1;
  private MetroLabel metroLabel10;
  private GridColumn colDetaBanc;
  private GridColumn colDetaTimb;

  public frmParamComiBancRecaudadores()
    : base("Parámetros Comisiones Bancarias", "Parámetros Comisiones Bancarias", typeof (ParamComiBancarias))
  {
    this.InitializeComponent();
    this.panel1.Visible = false;
    this.gridControl1.DataSource = (object) this.bsComiBancRecaudadores;
    this.gridControl2.DataSource = (object) this.bsComiBancRecaudadoresRowSelected;
    this.bsComiBancRecaudadores.DataSource = (object) this.experto.formLoad();
    this.BtnComiBancarias.Enabled = false;
  }

  public void PeriodoChanged(int periodo) => this.Close();

  private void metroButton1_Click(object sender, EventArgs e)
  {
    int[] selectedRows = ((ColumnView) this.gridView1).GetSelectedRows();
    ParamComiBancarias pcb = new ParamComiBancarias();
    foreach (int num in selectedRows)
      pcb = (ParamComiBancarias) ((BaseView) this.gridView1).GetRow(num);
    Decimal saldoPrev = this.experto.getSaldoPrev(pcb, DateTime.Parse(((Control) this.lblFechaHasta).Text));
    if (Decimal.Parse(((Control) this.lblPagaImpu).Text.Replace("$", "")) > saldoPrev)
    {
      new frmMensaje(this.ParentForm).mostrarError("El Total de comisiones Recaudadores es mayor al Saldo de la preventiva. Verifique...");
    }
    else
    {
      new frmMensaje(this.ParentForm).mostrarAdvertencia("Comienzan las imputaciones de las Comisiones Recaudadores...");
      if (this.experto.ImputarComisionesEntesRecaudadores(pcb, DateTime.Parse(((Control) this.lblFechaDesde).Text), DateTime.Parse(((Control) this.lblFechaHasta).Text), ((Control) this.lblPagaImpu).Text, "1103110000", 19, 25))
        new frmMensaje(this.ParentForm).mostrarConfirmación("Terminaron las imputaciones de las Comisiones Recaudadores.");
      else
        new frmMensaje(this.ParentForm).mostrarErrorGrabarReq(this.Name.ToString(), this.experto.ToString(), "ImputarComisionesRecaudadores");
    }
  }

  private void gridView1_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    int iCodiTimbComTes = 0;
    ParamComiBancarias row = (ParamComiBancarias) ((BaseView) (sender as GridView)).GetRow(e.FocusedRowHandle);
    DateTime fechaDesde = row.MesPaco == 2 ? new DateTime(PARAMS.Periodo, row.MesPaco, 11) : new DateTime(PARAMS.Periodo, row.MesPaco, 1);
    DateTime dateTime1;
    if (row.MesPaco != 12)
    {
      DateTime dateTime2 = new DateTime(PARAMS.Periodo, row.MesPaco, 1);
      dateTime2 = dateTime2.AddMonths(1);
      dateTime1 = dateTime2.AddDays(-1.0);
    }
    else
      dateTime1 = new DateTime(PARAMS.Periodo, row.MesPaco, 30);
    DateTime FechaHasta = dateTime1;
    ((Control) this.labelControl1).Text = row.Mes;
    ((Control) this.lblFechaDesde).Text = fechaDesde.ToShortDateString();
    ((Control) this.lblFechaHasta).Text = FechaHasta.ToShortDateString();
    ((Control) this.labelControl4).Text = row.ExorImpu;
    if (PARAMS.MunicipioID == Municipio.Guaymallén)
      iCodiTimbComTes = 14;
    this.bsComiBancRecaudadoresRowSelected.DataSource = (object) this.experto.getMoviBanco(iCodiTimbComTes, row.MesPaco, fechaDesde, FechaHasta, true);
    Decimal num = 0M;
    for (int index = 0; index < ((BaseView) this.gridView2).RowCount; ++index)
      num += Decimal.Parse(((ColumnView) this.gridView2).GetRowCellDisplayText(index, "ComiMoba")) + Decimal.Parse(((ColumnView) this.gridView2).GetRowCellDisplayText(index, "IvaMoba"));
    ((Control) this.lblPagaImpu).Text = "$ " + num.ToString("N");
    DateTime fechaBalProv = Misc.getFechaBalProv(PARAMS.Periodo);
    if (row.MesPaco - 1 == fechaBalProv.Month)
      this.BtnComiBancarias.Enabled = true;
    else if (row.MesPaco == 1 && fechaBalProv.Month == 12)
      this.BtnComiBancarias.Enabled = true;
    else if (row.MesPaco == 1 && fechaBalProv.Month == 1 && fechaBalProv.Day == 1)
      this.BtnComiBancarias.Enabled = true;
    else
      this.BtnComiBancarias.Enabled = false;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmParamComiBancRecaudadores));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colMes = new GridColumn();
    this.colExpeOrig = new GridColumn();
    this.colPartida = new GridColumn();
    this.colOficina = new GridColumn();
    this.gridControl2 = new GridControl();
    this.gridView2 = new GridView();
    this.colCodiBanc = new GridColumn();
    this.colDetaBanc = new GridColumn();
    this.colCodiTimb = new GridColumn();
    this.colDetaTimb = new GridColumn();
    this.colNumeMoba = new GridColumn();
    this.colFechMoba = new GridColumn();
    this.colDebeMoba = new GridColumn();
    this.colHabeMoba = new GridColumn();
    this.colComiMoba = new GridColumn();
    this.colIvaMoba = new GridColumn();
    this.groupBox1 = new GroupBox();
    this.lblPagaImpu = new LabelControl();
    this.labelControl4 = new LabelControl();
    this.lblFechaHasta = new LabelControl();
    this.lblFechaDesde = new LabelControl();
    this.labelControl1 = new LabelControl();
    this.metroLabel10 = new MetroLabel();
    this.BtnComiBancarias = new MetroButton();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.metroPanel1 = new MetroPanel();
    this.groupBox2 = new GroupBox();
    this.panel1.SuspendLayout();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    ((ISupportInitialize) this.gridControl2).BeginInit();
    ((ISupportInitialize) this.gridView2).BeginInit();
    this.groupBox1.SuspendLayout();
    this.metroPanel1.SuspendLayout();
    this.groupBox2.SuspendLayout();
    this.SuspendLayout();
    this.panel1.Size = new Size(1254, 20);
    this.panel1.Controls.SetChildIndex((Control) this.separator1, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butEdit, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butNew, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butAnnular, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butDelete, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butCancel, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butSave, 0);
    this.separator1.Size = new Size(14002, 2);
    ((ImageOptions) this.butSave.ImageOptions).Image = (Image) componentResourceManager.GetObject("butSave.ImageOptions.Image");
    this.butSave.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butCancel.ImageOptions).Image = (Image) componentResourceManager.GetObject("butCancel.ImageOptions.Image");
    this.butCancel.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butDelete.ImageOptions).Image = (Image) componentResourceManager.GetObject("butDelete.ImageOptions.Image");
    this.butDelete.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butAnnular.ImageOptions).Image = (Image) componentResourceManager.GetObject("butAnnular.ImageOptions.Image");
    this.butAnnular.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butNew.ImageOptions).Image = (Image) componentResourceManager.GetObject("butNew.ImageOptions.Image");
    this.butNew.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butEdit.ImageOptions).Image = (Image) componentResourceManager.GetObject("butEdit.ImageOptions.Image");
    this.butEdit.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.gridControl1).Dock = DockStyle.Fill;
    ((Control) this.gridControl1).Location = new Point(3, 16 /*0x10*/);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((Control) this.gridControl1).Name = "gridControl1";
    ((Control) this.gridControl1).Padding = new Padding(3);
    ((Control) this.gridControl1).Size = new Size(535, 207);
    ((Control) this.gridControl1).TabIndex = 2;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colMes,
      this.colExpeOrig,
      this.colPartida,
      this.colOficina
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridView1.OptionsView.ShowGroupPanel = false;
    ((ColumnView) this.gridView1).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
    this.colMes.Caption = "Mes";
    this.colMes.FieldName = "Mes";
    this.colMes.Name = "colMes";
    this.colMes.OptionsColumn.AllowEdit = false;
    this.colMes.Visible = true;
    this.colMes.VisibleIndex = 0;
    this.colExpeOrig.Caption = "Expediente Orig.";
    this.colExpeOrig.FieldName = "ExorImpu";
    this.colExpeOrig.Name = "colExpeOrig";
    this.colExpeOrig.OptionsColumn.AllowEdit = false;
    this.colExpeOrig.Visible = true;
    this.colExpeOrig.VisibleIndex = 1;
    this.colPartida.Caption = "Partida";
    this.colPartida.FieldName = "CodiPart";
    this.colPartida.Name = "colPartida";
    this.colPartida.OptionsColumn.AllowEdit = false;
    this.colPartida.Visible = true;
    this.colPartida.VisibleIndex = 2;
    this.colOficina.Caption = "Oficina";
    this.colOficina.FieldName = "CodiOrga";
    this.colOficina.Name = "colOficina";
    this.colOficina.OptionsColumn.AllowEdit = false;
    this.colOficina.Visible = true;
    this.colOficina.VisibleIndex = 3;
    ((Control) this.gridControl2).Dock = DockStyle.Bottom;
    ((Control) this.gridControl2).Location = new Point(0, 226);
    this.gridControl2.MainView = (BaseView) this.gridView2;
    ((Control) this.gridControl2).Name = "gridControl2";
    ((Control) this.gridControl2).Padding = new Padding(3);
    ((Control) this.gridControl2).Size = new Size(1254, 296);
    ((Control) this.gridControl2).TabIndex = 3;
    this.gridControl2.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView2
    });
    ((ColumnView) this.gridView2).Columns.AddRange(new GridColumn[10]
    {
      this.colCodiBanc,
      this.colDetaBanc,
      this.colCodiTimb,
      this.colDetaTimb,
      this.colNumeMoba,
      this.colFechMoba,
      this.colDebeMoba,
      this.colHabeMoba,
      this.colComiMoba,
      this.colIvaMoba
    });
    ((BaseView) this.gridView2).GridControl = this.gridControl2;
    ((BaseView) this.gridView2).Name = "gridView2";
    this.gridView2.OptionsView.ShowGroupPanel = false;
    this.colCodiBanc.Caption = "Codi. Banco";
    this.colCodiBanc.FieldName = "CodiBanc";
    this.colCodiBanc.Name = "colCodiBanc";
    this.colCodiBanc.OptionsColumn.AllowEdit = false;
    this.colCodiBanc.Visible = true;
    this.colCodiBanc.VisibleIndex = 0;
    this.colCodiBanc.Width = 90;
    this.colDetaBanc.Caption = "Banco";
    this.colDetaBanc.FieldName = "DetaBanc";
    this.colDetaBanc.Name = "colDetaBanc";
    this.colDetaBanc.OptionsColumn.AllowEdit = false;
    this.colDetaBanc.Visible = true;
    this.colDetaBanc.VisibleIndex = 1;
    this.colDetaBanc.Width = 275;
    this.colCodiTimb.Caption = "Cod. Mov. Banc.";
    this.colCodiTimb.FieldName = "CodiTimb";
    this.colCodiTimb.Name = "colCodiTimb";
    this.colCodiTimb.OptionsColumn.AllowEdit = false;
    this.colCodiTimb.Visible = true;
    this.colCodiTimb.VisibleIndex = 2;
    this.colCodiTimb.Width = 89;
    this.colDetaTimb.Caption = "Tipo Movimiento Bancario";
    this.colDetaTimb.FieldName = "DetaTimb";
    this.colDetaTimb.Name = "colDetaTimb";
    this.colDetaTimb.OptionsColumn.AllowEdit = false;
    this.colDetaTimb.Visible = true;
    this.colDetaTimb.VisibleIndex = 3;
    this.colDetaTimb.Width = 283;
    this.colNumeMoba.Caption = "N° Mov. Banc.";
    this.colNumeMoba.FieldName = "NumeMoba";
    this.colNumeMoba.Name = "colNumeMoba";
    this.colNumeMoba.OptionsColumn.AllowEdit = false;
    this.colNumeMoba.Visible = true;
    this.colNumeMoba.VisibleIndex = 4;
    this.colNumeMoba.Width = 89;
    this.colFechMoba.Caption = "Fecha ";
    this.colFechMoba.FieldName = "FechMoba";
    this.colFechMoba.Name = "colFechMoba";
    this.colFechMoba.OptionsColumn.AllowEdit = false;
    this.colFechMoba.Visible = true;
    this.colFechMoba.VisibleIndex = 5;
    this.colFechMoba.Width = 87;
    this.colDebeMoba.Caption = "Debe";
    this.colDebeMoba.FieldName = "DebeMoba";
    this.colDebeMoba.Name = "colDebeMoba";
    this.colDebeMoba.OptionsColumn.AllowEdit = false;
    this.colDebeMoba.Visible = true;
    this.colDebeMoba.VisibleIndex = 6;
    this.colDebeMoba.Width = 89;
    this.colHabeMoba.Caption = "Haber";
    this.colHabeMoba.FieldName = "HabeMoba";
    this.colHabeMoba.Name = "colHabeMoba";
    this.colHabeMoba.OptionsColumn.AllowEdit = false;
    this.colHabeMoba.Visible = true;
    this.colHabeMoba.VisibleIndex = 7;
    this.colHabeMoba.Width = 90;
    this.colComiMoba.Caption = "Comision";
    this.colComiMoba.FieldName = "ComiMoba";
    this.colComiMoba.Name = "colComiMoba";
    this.colComiMoba.OptionsColumn.AllowEdit = false;
    this.colComiMoba.Visible = true;
    this.colComiMoba.VisibleIndex = 8;
    this.colComiMoba.Width = 90;
    this.colIvaMoba.Caption = "Iva ";
    this.colIvaMoba.FieldName = "IvaMoba";
    this.colIvaMoba.Name = "colIvaMoba";
    this.colIvaMoba.OptionsColumn.AllowEdit = false;
    this.colIvaMoba.Visible = true;
    this.colIvaMoba.VisibleIndex = 9;
    this.colIvaMoba.Width = 90;
    this.groupBox1.Controls.Add((Control) this.lblPagaImpu);
    this.groupBox1.Controls.Add((Control) this.labelControl4);
    this.groupBox1.Controls.Add((Control) this.lblFechaHasta);
    this.groupBox1.Controls.Add((Control) this.lblFechaDesde);
    this.groupBox1.Controls.Add((Control) this.labelControl1);
    this.groupBox1.Controls.Add((Control) this.metroLabel10);
    this.groupBox1.Controls.Add((Control) this.BtnComiBancarias);
    this.groupBox1.Controls.Add((Control) this.metroLabel5);
    this.groupBox1.Controls.Add((Control) this.metroLabel4);
    this.groupBox1.Controls.Add((Control) this.metroLabel1);
    this.groupBox1.Dock = DockStyle.Fill;
    this.groupBox1.Location = new Point(541, 0);
    this.groupBox1.Name = "groupBox1";
    this.groupBox1.Size = new Size(713, 226);
    this.groupBox1.TabIndex = 4;
    this.groupBox1.TabStop = false;
    this.groupBox1.Text = "Imputar Comisiones Bancarias Entes Recaudadores ";
    ((AppearanceObject) this.lblPagaImpu.Appearance).BackColor = Color.FromArgb(224 /*0xE0*/, 224 /*0xE0*/, 224 /*0xE0*/);
    ((AppearanceObject) this.lblPagaImpu.Appearance).Font = new Font("Tahoma", 10f);
    ((AppearanceOptions) this.lblPagaImpu.Appearance.Options).UseBackColor = true;
    ((AppearanceOptions) this.lblPagaImpu.Appearance.Options).UseFont = true;
    ((AppearanceOptions) this.lblPagaImpu.Appearance.Options).UseTextOptions = true;
    ((AppearanceObject) this.lblPagaImpu.Appearance).TextOptions.HAlignment = (HorzAlignment) 2;
    this.lblPagaImpu.AutoSizeMode = (LabelAutoSizeMode) 1;
    ((Control) this.lblPagaImpu).Location = new Point(390, 110);
    ((Control) this.lblPagaImpu).Name = "lblPagaImpu";
    ((Control) this.lblPagaImpu).Size = new Size(128 /*0x80*/, 22);
    ((Control) this.lblPagaImpu).TabIndex = 21;
    ((AppearanceObject) this.labelControl4.Appearance).BackColor = Color.FromArgb(224 /*0xE0*/, 224 /*0xE0*/, 224 /*0xE0*/);
    ((AppearanceObject) this.labelControl4.Appearance).Font = new Font("Tahoma", 10f);
    ((AppearanceOptions) this.labelControl4.Appearance.Options).UseBackColor = true;
    ((AppearanceOptions) this.labelControl4.Appearance.Options).UseFont = true;
    ((AppearanceOptions) this.labelControl4.Appearance.Options).UseTextOptions = true;
    ((AppearanceObject) this.labelControl4.Appearance).TextOptions.HAlignment = (HorzAlignment) 2;
    this.labelControl4.AutoSizeMode = (LabelAutoSizeMode) 1;
    ((Control) this.labelControl4).Location = new Point(623, 57);
    ((Control) this.labelControl4).Name = "labelControl4";
    ((Control) this.labelControl4).Size = new Size(86, 22);
    ((Control) this.labelControl4).TabIndex = 20;
    ((Control) this.labelControl4).Text = "labelControl4";
    ((AppearanceObject) this.lblFechaHasta.Appearance).BackColor = Color.FromArgb(224 /*0xE0*/, 224 /*0xE0*/, 224 /*0xE0*/);
    ((AppearanceObject) this.lblFechaHasta.Appearance).Font = new Font("Tahoma", 10f);
    ((AppearanceOptions) this.lblFechaHasta.Appearance.Options).UseBackColor = true;
    ((AppearanceOptions) this.lblFechaHasta.Appearance.Options).UseFont = true;
    ((AppearanceOptions) this.lblFechaHasta.Appearance.Options).UseTextOptions = true;
    ((AppearanceObject) this.lblFechaHasta.Appearance).TextOptions.HAlignment = (HorzAlignment) 2;
    this.lblFechaHasta.AutoSizeMode = (LabelAutoSizeMode) 1;
    ((Control) this.lblFechaHasta).Location = new Point(390, 57);
    ((Control) this.lblFechaHasta).Name = "lblFechaHasta";
    ((Control) this.lblFechaHasta).Size = new Size(86, 22);
    ((Control) this.lblFechaHasta).TabIndex = 19;
    ((AppearanceObject) this.lblFechaDesde.Appearance).BackColor = Color.FromArgb(224 /*0xE0*/, 224 /*0xE0*/, 224 /*0xE0*/);
    ((AppearanceObject) this.lblFechaDesde.Appearance).Font = new Font("Tahoma", 10f);
    ((AppearanceOptions) this.lblFechaDesde.Appearance.Options).UseBackColor = true;
    ((AppearanceOptions) this.lblFechaDesde.Appearance.Options).UseFont = true;
    ((AppearanceOptions) this.lblFechaDesde.Appearance.Options).UseTextOptions = true;
    ((AppearanceObject) this.lblFechaDesde.Appearance).TextOptions.HAlignment = (HorzAlignment) 2;
    this.lblFechaDesde.AutoSizeMode = (LabelAutoSizeMode) 1;
    ((Control) this.lblFechaDesde).Location = new Point(245, 57);
    ((Control) this.lblFechaDesde).Name = "lblFechaDesde";
    ((Control) this.lblFechaDesde).Size = new Size(86, 22);
    ((Control) this.lblFechaDesde).TabIndex = 18;
    ((AppearanceObject) this.labelControl1.Appearance).BackColor = Color.Gainsboro;
    ((AppearanceObject) this.labelControl1.Appearance).Font = new Font("Tahoma", 10f);
    ((AppearanceOptions) this.labelControl1.Appearance.Options).UseBackColor = true;
    ((AppearanceOptions) this.labelControl1.Appearance.Options).UseFont = true;
    ((AppearanceOptions) this.labelControl1.Appearance.Options).UseTextOptions = true;
    ((AppearanceObject) this.labelControl1.Appearance).TextOptions.HAlignment = (HorzAlignment) 2;
    this.labelControl1.AutoSizeMode = (LabelAutoSizeMode) 1;
    ((Control) this.labelControl1).Location = new Point(90, 57);
    ((Control) this.labelControl1).Name = "labelControl1";
    ((Control) this.labelControl1).Size = new Size(86, 22);
    ((Control) this.labelControl1).TabIndex = 17;
    ((Control) this.labelControl1).Text = "labelControl1";
    this.metroLabel10.AutoSize = false;
    this.metroLabel10.Location = new Point(485, 58);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(129, 19);
    this.metroLabel10.TabIndex = 16 /*0x10*/;
    this.metroLabel10.Text = "Expediente original";
    this.BtnComiBancarias.Location = new Point(90, 110);
    this.BtnComiBancarias.Name = "BtnComiBancarias";
    this.BtnComiBancarias.Size = new Size(253, 23);
    this.BtnComiBancarias.TabIndex = 10;
    this.BtnComiBancarias.Text = "Comisiones Bancarias Entes Recaudadores";
    this.BtnComiBancarias.Click += new EventHandler(this.metroButton1_Click);
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(337, 58);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(41, 19);
    this.metroLabel5.TabIndex = 4;
    this.metroLabel5.Text = "Hasta";
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(185, 58);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(45, 19);
    this.metroLabel4.TabIndex = 3;
    this.metroLabel4.Text = "Desde";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(52, 58);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(33, 19);
    this.metroLabel1.TabIndex = 0;
    this.metroLabel1.Text = "Mes";
    this.metroPanel1.Controls.Add((Control) this.groupBox1);
    this.metroPanel1.Controls.Add((Control) this.groupBox2);
    this.metroPanel1.Dock = DockStyle.Fill;
    this.metroPanel1.Location = new Point(0, 0);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(1254, 226);
    this.metroPanel1.TabIndex = 5;
    this.groupBox2.Controls.Add((Control) this.gridControl1);
    this.groupBox2.Dock = DockStyle.Left;
    this.groupBox2.Location = new Point(0, 0);
    this.groupBox2.Name = "groupBox2";
    this.groupBox2.Size = new Size(541, 226);
    this.groupBox2.TabIndex = 5;
    this.groupBox2.TabStop = false;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1254, 522);
    this.Controls.Add((Control) this.metroPanel1);
    this.Controls.Add((Control) this.gridControl2);
    this.Name = nameof (frmParamComiBancRecaudadores);
    this.Text = "Comisiones Entes Recaudadores";
    this.Controls.SetChildIndex((Control) this.gridControl2, 0);
    this.Controls.SetChildIndex((Control) this.metroPanel1, 0);
    this.Controls.SetChildIndex((Control) this.panel1, 0);
    this.panel1.ResumeLayout(false);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    ((ISupportInitialize) this.gridControl2).EndInit();
    ((ISupportInitialize) this.gridView2).EndInit();
    this.groupBox1.ResumeLayout(false);
    this.metroPanel1.ResumeLayout(false);
    this.groupBox2.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
