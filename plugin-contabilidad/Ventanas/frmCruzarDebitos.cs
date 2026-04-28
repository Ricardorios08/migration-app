// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.frmCruzarDebitos
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
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.Plugins.Contabilidad.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class frmCruzarDebitos : FRMForm, ObsPeriodo
{
  private BindingSource bsbienes = new BindingSource();
  private ExpDebitos experto = new ExpDebitos();
  private Debito debi;
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colFechDebi;
  private GridColumn colExorimpu;
  private GridColumn colExpeImpu;
  private GridColumn colDetaDebi;
  private GridColumn colDetaCuco;
  private GridColumn colDetaProv;
  private GridColumn colImporte;
  private GridColumn colNumeDebi;
  private GridColumn colPaesDebi;

  public frmCruzarDebitos()
    : base("Cruzar débitos al ejercicio siguiente", "Cruzar débitos al ejercicio siguiente", typeof (Debito))
  {
    this.InitializeComponent();
    this.gridControl1.DataSource = (object) this.bsbienes;
  }

  protected override void OnActionModeChanged(ActionMode mode)
  {
  }

  protected override void OnNuevoClick()
  {
    Debito row = (Debito) ((BaseView) this.gridView1).GetRow(((ColumnView) this.gridView1).GetSelectedRows()[0]);
    int num;
    if (this.experto.consultarparaconta(PARAMS.Periodo + 1) == 0)
    {
      frmMensaje frmMensaje = new frmMensaje((Form) this);
      num = PARAMS.Periodo + 1;
      string mensaje = "No puede cruzar al año " + num.ToString();
      frmMensaje.mostrarError(mensaje);
      ((BaseButton) this.butCancel).PerformClick();
    }
    if (this.experto.revisarDebito(PARAMS.Periodo, (int) row.NumeDebi) > 0)
    {
      frmMensaje frmMensaje = new frmMensaje((Form) this);
      num = PARAMS.Periodo + 1;
      string mensaje = "El debito ya se encuentra cruzado al periodo " + num.ToString();
      frmMensaje.mostrarError(mensaje);
      ((BaseButton) this.butCancel).PerformClick();
    }
    else if (this.experto.revisarDebitoPaes(PARAMS.Periodo + 1, row.PaesDebi) > 0)
    {
      frmMensaje frmMensaje = new frmMensaje((Form) this);
      num = PARAMS.Periodo + 1;
      string mensaje = "El debito ya se encuentra cruzado al periodo " + num.ToString();
      frmMensaje.mostrarError(mensaje);
      ((BaseButton) this.butCancel).PerformClick();
    }
  }

  protected override void OnModificarClick()
  {
  }

  protected override void OnAnularClick()
  {
  }

  protected override string OnEliminarClick() => "Eliminación no implementada";

  protected override string OnGuardarClick()
  {
    bool flag = false;
    try
    {
      this.cargarDatos();
      flag = this.experto.pasarnuevoejercicio(PARAMS.Periodo, this.debi);
      if (flag)
        new frmMensaje((Form) this).mostrarConfirmación("Guardado Correctamente");
      this.bsbienes.DataSource = (object) this.experto.getGridData();
    }
    catch (Exception ex)
    {
      this.logException(ex);
    }
    return flag ? "" : "Error al Guardar";
  }

  protected override void OnCancelarClick()
  {
  }

  protected override List<string> ValidarDatos() => new List<string>();

  private void cargarDatos()
  {
    this.debi = (Debito) ((BaseView) this.gridView1).GetRow(((ColumnView) this.gridView1).GetSelectedRows()[0]);
  }

  public void PeriodoChanged(int periodo)
  {
    new frmMensaje((Form) this).mostrarInformación("Se cerrarán todas las pantallas");
    this.Close();
  }

  private void frmCruzarDebitos_Load(object sender, EventArgs e)
  {
    this.bsbienes.DataSource = (object) this.experto.getGridData();
  }

  private void gridView1_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    if (this.experto.revisarDebito(PARAMS.Periodo, (int) ((Debito) ((BaseView) this.gridView1).GetRow(e.FocusedRowHandle)).NumeDebi) > 0)
      ((Control) this.butNew).Enabled = false;
    else
      ((Control) this.butNew).Enabled = true;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmCruzarDebitos));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colFechDebi = new GridColumn();
    this.colNumeDebi = new GridColumn();
    this.colPaesDebi = new GridColumn();
    this.colExorimpu = new GridColumn();
    this.colExpeImpu = new GridColumn();
    this.colDetaDebi = new GridColumn();
    this.colDetaCuco = new GridColumn();
    this.colDetaProv = new GridColumn();
    this.colImporte = new GridColumn();
    this.panel1.SuspendLayout();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
    this.panel1.Size = new Size(799, 68);
    this.panel1.Controls.SetChildIndex((Control) this.separator1, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butEdit, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butNew, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butAnnular, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butDelete, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butCancel, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butSave, 0);
    this.separator1.Size = new Size(975, 2);
    ((ImageOptions) this.butSave.ImageOptions).Image = (Image) componentResourceManager.GetObject("butSave.ImageOptions.Image");
    this.butSave.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butSave).Location = new Point(571, 32 /*0x20*/);
    ((ImageOptions) this.butCancel.ImageOptions).Image = (Image) componentResourceManager.GetObject("butCancel.ImageOptions.Image");
    this.butCancel.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butCancel).Location = new Point(677, 32 /*0x20*/);
    ((ImageOptions) this.butDelete.ImageOptions).Image = (Image) componentResourceManager.GetObject("butDelete.ImageOptions.Image");
    this.butDelete.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butAnnular.ImageOptions).Image = (Image) componentResourceManager.GetObject("butAnnular.ImageOptions.Image");
    this.butAnnular.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butNew.ImageOptions).Image = (Image) componentResourceManager.GetObject("butNew.ImageOptions.Image");
    this.butNew.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butEdit.ImageOptions).Image = (Image) componentResourceManager.GetObject("butEdit.ImageOptions.Image");
    this.butEdit.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.gridControl1).Dock = DockStyle.Fill;
    ((Control) this.gridControl1).Location = new Point(0, 68);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((Control) this.gridControl1).Name = "gridControl1";
    ((Control) this.gridControl1).Size = new Size(799, 454);
    ((Control) this.gridControl1).TabIndex = 2;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[9]
    {
      this.colFechDebi,
      this.colNumeDebi,
      this.colPaesDebi,
      this.colExorimpu,
      this.colExpeImpu,
      this.colDetaDebi,
      this.colDetaCuco,
      this.colDetaProv,
      this.colImporte
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    ((ColumnViewOptionsBehavior) this.gridView1.OptionsBehavior).Editable = false;
    ((ColumnView) this.gridView1).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridView1_FocusedRowChanged);
    this.colFechDebi.Caption = "Fecha";
    this.colFechDebi.FieldName = "FechDebi";
    this.colFechDebi.Name = "colFechDebi";
    this.colFechDebi.OptionsColumn.ReadOnly = true;
    this.colFechDebi.Visible = true;
    this.colFechDebi.VisibleIndex = 0;
    this.colFechDebi.Width = 48 /*0x30*/;
    this.colNumeDebi.Caption = "Número";
    this.colNumeDebi.FieldName = "NumeDebi";
    this.colNumeDebi.Name = "colNumeDebi";
    this.colNumeDebi.Visible = true;
    this.colNumeDebi.VisibleIndex = 1;
    this.colNumeDebi.Width = 26;
    this.colPaesDebi.Caption = "N° Deb. Cruzado";
    this.colPaesDebi.FieldName = "PaesDebi";
    this.colPaesDebi.Name = "colPaesDebi";
    this.colPaesDebi.Visible = true;
    this.colPaesDebi.VisibleIndex = 2;
    this.colPaesDebi.Width = 49;
    this.colExorimpu.Caption = "Exp. Original";
    this.colExorimpu.FieldName = "Exorimpu";
    this.colExorimpu.Name = "colExorimpu";
    this.colExorimpu.OptionsColumn.ReadOnly = true;
    this.colExorimpu.Visible = true;
    this.colExorimpu.VisibleIndex = 3;
    this.colExorimpu.Width = 57;
    this.colExpeImpu.Caption = "Exp. Pago";
    this.colExpeImpu.FieldName = "ExpeImpu";
    this.colExpeImpu.Name = "colExpeImpu";
    this.colExpeImpu.OptionsColumn.ReadOnly = true;
    this.colExpeImpu.Visible = true;
    this.colExpeImpu.VisibleIndex = 4;
    this.colExpeImpu.Width = 57;
    this.colDetaDebi.Caption = "Detalle";
    this.colDetaDebi.FieldName = "DetaDebi";
    this.colDetaDebi.Name = "colDetaDebi";
    this.colDetaDebi.Visible = true;
    this.colDetaDebi.VisibleIndex = 5;
    this.colDetaDebi.Width = 228;
    this.colDetaCuco.Caption = "Cuenta Contable";
    this.colDetaCuco.FieldName = "DetaCuco";
    this.colDetaCuco.Name = "colDetaCuco";
    this.colDetaCuco.Visible = true;
    this.colDetaCuco.VisibleIndex = 6;
    this.colDetaCuco.Width = 97;
    this.colDetaProv.Caption = "Proveedor";
    this.colDetaProv.FieldName = "DetaProv";
    this.colDetaProv.Name = "colDetaProv";
    this.colDetaProv.Visible = true;
    this.colDetaProv.VisibleIndex = 7;
    this.colDetaProv.Width = 134;
    this.colImporte.Caption = "Importe";
    this.colImporte.DisplayFormat.FormatString = "c";
    this.colImporte.DisplayFormat.FormatType = (FormatType) 1;
    this.colImporte.FieldName = "ImpoDebi";
    this.colImporte.Name = "colImporte";
    this.colImporte.Visible = true;
    this.colImporte.VisibleIndex = 8;
    this.colImporte.Width = 78;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(799, 522);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (frmCruzarDebitos);
    this.Text = "Cruzar débitos al ejercicio siguiente";
    this.Load += new EventHandler(this.frmCruzarDebitos_Load);
    this.Controls.SetChildIndex((Control) this.panel1, 0);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    this.panel1.ResumeLayout(false);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
