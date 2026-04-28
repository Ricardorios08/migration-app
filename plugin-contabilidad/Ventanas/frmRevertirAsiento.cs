// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.frmRevertirAsiento
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
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

public class frmRevertirAsiento : FRMForm, ObsPeriodo
{
  private BindingSource source = new BindingSource();
  private ExpAsiento asiento = new ExpAsiento();
  private IContainer components = (IContainer) null;
  private MetroLabel PeriodoLabel;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiAsie;
  private GridColumn colFechAsie;
  private GridColumn colDetaAsie;
  private MetroButton revertirAsientoBtn;
  private MetroDateTextBox fechaAsieDB;
  private MetroIntTextBox codiAsieTB;
  private MetroTextBox TBDetaAsie;
  private MetroDateTextBox DBFechaNueva;
  private GridColumn colTotDebeMoas;
  private GridColumn colTotHabeMoas;

  public frmRevertirAsiento()
    : base("Revertir Asientos", "Usted va a revertir un asiento del periodo " + PARAMS.Periodo.ToString(), typeof (Asiento))
  {
    this.InitializeComponent();
  }

  protected override bool habilitarBotonNuevo() => false;

  protected override bool habilitarBotonModificar() => false;

  protected override bool habilitarBotonAnular() => false;

  protected override bool habilitarBotonEliminar() => false;

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

  private void frmRevertirAsiento_Load(object sender, EventArgs e)
  {
    this.source.DataSource = (object) this.asiento.getGridData();
    this.gridControl1.DataSource = (object) this.source;
    this.DBFechaNueva.Date = Misc.getFechaBalProv(PARAMS.Periodo);
    this.DBFechaNueva.Date = this.DBFechaNueva.Date.AddDays(1.0);
  }

  private void revertirAsientoBtn_Click(object sender, EventArgs e)
  {
    if (this.asiento.ValidarFecha(this.DBFechaNueva.Date))
    {
      int num = this.asiento.RevertirAsiento(this.DBFechaNueva.Date, int.Parse(this.codiAsieTB.Text));
      if (num > 0)
      {
        new frmMensaje(this.ParentForm).mostrarConfirmación($"Fue revertido el asiento {this.codiAsieTB.Text} Fecha {this.fechaAsieDB.Text}\r\n con el Asiento Nro: {num.ToString()} Fecha {this.DBFechaNueva.Text}");
        this.source.DataSource = (object) this.asiento.getGridData_frmRevertir();
      }
      else
        new frmMensaje(this.ParentForm).mostrarError("No se pudo revertir el asiento");
    }
    else
      new frmMensaje(this.ParentForm).mostrarError("Fecha Incorrecta \r\n La fecha de ser posterior a " + Misc.getFechaBalProv(PARAMS.Periodo).ToString());
  }

  private void gridControl1_FocusedViewChanged(object sender, ViewFocusEventArgs e)
  {
  }

  private void gridView1_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    if (e.FocusedRowHandle < 0)
      return;
    Asiento row = (Asiento) ((BaseView) this.gridView1).GetRow(e.FocusedRowHandle);
    this.TBDetaAsie.Enabled = false;
    this.fechaAsieDB.Enabled = false;
    this.codiAsieTB.Enabled = false;
    this.TBDetaAsie.Text = row.DetaAsie;
    this.fechaAsieDB.Date = row.FechAsie;
    this.codiAsieTB.Text = row.CodiAsie.ToString();
    this.revertirAsientoBtn.Text = "Revertir Asiento " + this.codiAsieTB.Text;
  }

  private void DBFechaNueva_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar != '\r' || this.asiento.ValidarFecha(this.DBFechaNueva.Date))
      return;
    new frmMensaje(this.ParentForm).mostrarError("Fecha Incorrecta \r\n La fecha de ser posterior a " + Misc.getFechaBalProv(PARAMS.Periodo).ToString());
  }

  public void PeriodoChanged(int periodo) => this.Close();

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmRevertirAsiento));
    this.PeriodoLabel = new MetroLabel();
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiAsie = new GridColumn();
    this.colFechAsie = new GridColumn();
    this.colDetaAsie = new GridColumn();
    this.colTotDebeMoas = new GridColumn();
    this.colTotHabeMoas = new GridColumn();
    this.revertirAsientoBtn = new MetroButton();
    this.fechaAsieDB = new MetroDateTextBox();
    this.codiAsieTB = new MetroIntTextBox();
    this.TBDetaAsie = new MetroTextBox();
    this.DBFechaNueva = new MetroDateTextBox();
    this.panel1.SuspendLayout();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
    this.panel1.Controls.Add((Control) this.DBFechaNueva);
    this.panel1.Controls.Add((Control) this.TBDetaAsie);
    this.panel1.Controls.Add((Control) this.codiAsieTB);
    this.panel1.Controls.Add((Control) this.fechaAsieDB);
    this.panel1.Controls.Add((Control) this.revertirAsientoBtn);
    this.panel1.Controls.Add((Control) this.gridControl1);
    this.panel1.Controls.Add((Control) this.PeriodoLabel);
    this.panel1.Size = new Size(983, 611);
    this.panel1.Controls.SetChildIndex((Control) this.separator1, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butEdit, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butNew, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butAnnular, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butDelete, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butCancel, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butSave, 0);
    this.panel1.Controls.SetChildIndex((Control) this.PeriodoLabel, 0);
    this.panel1.Controls.SetChildIndex((Control) this.gridControl1, 0);
    this.panel1.Controls.SetChildIndex((Control) this.revertirAsientoBtn, 0);
    this.panel1.Controls.SetChildIndex((Control) this.fechaAsieDB, 0);
    this.panel1.Controls.SetChildIndex((Control) this.codiAsieTB, 0);
    this.panel1.Controls.SetChildIndex((Control) this.TBDetaAsie, 0);
    this.panel1.Controls.SetChildIndex((Control) this.DBFechaNueva, 0);
    this.separator1.Location = new Point(667, 317);
    this.separator1.Size = new Size(773, 10);
    this.separator1.Visible = false;
    ((ImageOptions) this.butSave.ImageOptions).Image = (Image) componentResourceManager.GetObject("butSave.ImageOptions.Image");
    this.butSave.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butSave).Location = new Point(1137, 104);
    ((Control) this.butSave).Visible = false;
    ((ImageOptions) this.butCancel.ImageOptions).Image = (Image) componentResourceManager.GetObject("butCancel.ImageOptions.Image");
    this.butCancel.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butCancel).Location = new Point(1137, 162);
    ((Control) this.butCancel).Visible = false;
    ((ImageOptions) this.butDelete.ImageOptions).Image = (Image) componentResourceManager.GetObject("butDelete.ImageOptions.Image");
    this.butDelete.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butDelete).Location = new Point(1046, 133);
    ((Control) this.butDelete).Visible = false;
    ((ImageOptions) this.butAnnular.ImageOptions).Image = (Image) componentResourceManager.GetObject("butAnnular.ImageOptions.Image");
    this.butAnnular.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butAnnular).Location = new Point(940, 133);
    ((Control) this.butAnnular).Visible = false;
    ((ImageOptions) this.butNew.ImageOptions).Image = (Image) componentResourceManager.GetObject("butNew.ImageOptions.Image");
    this.butNew.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butNew).Location = new Point(687, 133);
    ((Control) this.butNew).Visible = false;
    ((ImageOptions) this.butEdit.ImageOptions).Image = (Image) componentResourceManager.GetObject("butEdit.ImageOptions.Image");
    this.butEdit.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butEdit).Location = new Point(834, 133);
    ((Control) this.butEdit).Visible = false;
    this.PeriodoLabel.AutoSize = false;
    this.PeriodoLabel.Location = new Point(15, 412);
    this.PeriodoLabel.Name = "PeriodoLabel";
    this.PeriodoLabel.Size = new Size(162, 35);
    this.PeriodoLabel.TabIndex = 2;
    this.PeriodoLabel.Text = "Ingrese la Fecha Nueva:";
    ((Control) this.gridControl1).Dock = DockStyle.Top;
    ((Control) this.gridControl1).Location = new Point(0, 0);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((Control) this.gridControl1).Name = "gridControl1";
    ((Control) this.gridControl1).Size = new Size(983, 341);
    ((Control) this.gridControl1).TabIndex = 16 /*0x10*/;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    this.gridControl1.FocusedViewChanged += new ViewFocusEventHandler(this.gridControl1_FocusedViewChanged);
    ((BaseView) this.gridView1).BorderStyle = (BorderStyles) 0;
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[5]
    {
      this.colCodiAsie,
      this.colFechAsie,
      this.colDetaAsie,
      this.colTotDebeMoas,
      this.colTotHabeMoas
    });
    this.gridView1.FocusRectStyle = (DrawFocusRectStyle) 0;
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    ((ColumnViewOptionsBehavior) this.gridView1.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridView1.OptionsBehavior).ReadOnly = true;
    this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridView1.OptionsSelection.EnableAppearanceHideSelection = false;
    this.gridView1.OptionsView.ShowAutoFilterRow = true;
    this.gridView1.OptionsView.ShowDetailButtons = false;
    this.gridView1.OptionsView.ShowGroupPanel = false;
    this.gridView1.OptionsView.ShowIndicator = false;
    ((ColumnView) this.gridView1).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
    this.colCodiAsie.Caption = "Codigo Asiento";
    this.colCodiAsie.FieldName = "CodiAsie";
    this.colCodiAsie.Name = "colCodiAsie";
    this.colCodiAsie.Visible = true;
    this.colCodiAsie.VisibleIndex = 0;
    this.colCodiAsie.Width = 85;
    this.colFechAsie.Caption = "Fecha";
    this.colFechAsie.FieldName = "FechAsie";
    this.colFechAsie.Name = "colFechAsie";
    this.colFechAsie.Visible = true;
    this.colFechAsie.VisibleIndex = 1;
    this.colFechAsie.Width = 129;
    this.colDetaAsie.Caption = "Detalle";
    this.colDetaAsie.FieldName = "DetaAsie";
    this.colDetaAsie.Name = "colDetaAsie";
    this.colDetaAsie.Visible = true;
    this.colDetaAsie.VisibleIndex = 2;
    this.colDetaAsie.Width = 131;
    this.colTotDebeMoas.Caption = "Total Debe";
    this.colTotDebeMoas.FieldName = "TotDebeMoasS";
    this.colTotDebeMoas.Name = "colTotDebeMoas";
    this.colTotDebeMoas.Visible = true;
    this.colTotDebeMoas.VisibleIndex = 3;
    this.colTotHabeMoas.Caption = "Total Haber";
    this.colTotHabeMoas.FieldName = "TotHabeMoasS";
    this.colTotHabeMoas.Name = "colTotHabeMoas";
    this.colTotHabeMoas.Visible = true;
    this.colTotHabeMoas.VisibleIndex = 4;
    this.revertirAsientoBtn.Location = new Point(15, 460);
    this.revertirAsientoBtn.Name = "revertirAsientoBtn";
    this.revertirAsientoBtn.Size = new Size(318, 35);
    this.revertirAsientoBtn.TabIndex = 17;
    this.revertirAsientoBtn.Text = "Revertir Asiento";
    this.revertirAsientoBtn.Click += new EventHandler(this.revertirAsientoBtn_Click);
    this.fechaAsieDB.Location = new Point(577, 458);
    this.fechaAsieDB.Name = "fechaAsieDB";
    this.fechaAsieDB.Size = new Size(90, 42);
    this.fechaAsieDB.TabIndex = 18;
    this.fechaAsieDB.Visible = false;
    this.codiAsieTB.Location = new Point(713, 458);
    this.codiAsieTB.Name = "codiAsieTB";
    this.codiAsieTB.Size = new Size(90, 37);
    this.codiAsieTB.TabIndex = 19;
    this.codiAsieTB.Visible = false;
    this.TBDetaAsie.Location = new Point(515, 413);
    this.TBDetaAsie.Multiline = true;
    this.TBDetaAsie.Name = "TBDetaAsie";
    this.TBDetaAsie.Size = new Size(212, 42);
    this.TBDetaAsie.TabIndex = 20;
    this.TBDetaAsie.Visible = false;
    this.DBFechaNueva.Location = new Point(194, 413);
    this.DBFechaNueva.Name = "DBFechaNueva";
    this.DBFechaNueva.Size = new Size(139, 35);
    this.DBFechaNueva.TabIndex = 21;
    this.DBFechaNueva.KeyPress += new KeyPressEventHandler(this.DBFechaNueva_KeyPress);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(983, 584);
    this.Name = nameof (frmRevertirAsiento);
    this.Text = "Revertir Asiento";
    this.Load += new EventHandler(this.frmRevertirAsiento_Load);
    this.panel1.ResumeLayout(false);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
