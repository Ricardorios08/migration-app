// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridUsuarioFacilidad
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class gridUsuarioFacilidad : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiUsua;
  private GridColumn colCodiTifa;
  private GridColumn colDetaTifa;

  public gridUsuarioFacilidad()
    : base((ABMDetailControl) new detailUsuarioFacilidad(), (ABMExpert) new ExpUsuarioFacilidad(), typeof (UsuarioFacilidad))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Usuarios Por Facilidades", "Usuarios Por Facilidades");
    ((Control) this.butAnnular).Visible = ((Control) this.butAnnular).Enabled = ((Control) this.butCancel).Visible = ((Control) this.butCancel).Enabled = ((Control) this.butDelete).Visible = ((Control) this.butDelete).Enabled = ((Control) this.butEdit).Visible = ((Control) this.butEdit).Enabled = ((Control) this.butNew).Visible = ((Control) this.butNew).Enabled = ((Control) this.butSave).Visible = ((Control) this.butSave).Enabled = false;
    ((AppearanceObject) this.colCodiTifa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 1;
    this.toggleDetailVisibility();
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiUsua", "Usuario", FilterMode.Contains),
      new FilterField("t.CodiTifa", "Nº Tipo Fac.", FilterMode.Equal),
      new FilterField("DetaTifa", "Detalle Fac.", FilterMode.Contains)
    };
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridUsuarioFacilidad));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiUsua = new GridColumn();
    this.colCodiTifa = new GridColumn();
    this.colDetaTifa = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[3]
    {
      this.colCodiUsua,
      this.colCodiTifa,
      this.colDetaTifa
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiUsua.Caption = "Usuario";
    this.colCodiUsua.FieldName = "CodiUsua";
    this.colCodiUsua.Name = "colCodiUsua";
    this.colCodiUsua.Visible = true;
    this.colCodiUsua.VisibleIndex = 0;
    this.colCodiUsua.Width = 96 /*0x60*/;
    this.colCodiTifa.Caption = "Codigo Facilidad";
    this.colCodiTifa.FieldName = "CodiTifa";
    this.colCodiTifa.Name = "colCodiTifa";
    this.colCodiTifa.Visible = true;
    this.colCodiTifa.VisibleIndex = 1;
    this.colCodiTifa.Width = 121;
    this.colDetaTifa.Caption = "Detalle Facilidad";
    this.colDetaTifa.FieldName = "DetaTifa";
    this.colDetaTifa.Name = "colDetaTifa";
    this.colDetaTifa.Visible = true;
    this.colDetaTifa.VisibleIndex = 2;
    this.colDetaTifa.Width = 468;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridUsuarioFacilidad);
    this.Text = nameof (gridUsuarioFacilidad);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
