// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridTipoPago
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

public class gridTipoPago : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiTipa;
  private GridColumn colDetaTipa;
  private GridColumn colTipoTipa;
  private GridColumn colCodiCuco;

  public gridTipoPago()
    : base((ABMDetailControl) new detailTipoPago(), (ABMExpert) new ExpTipoPago(), typeof (TipoPago))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Tipos de Pago", "Tipos de Pago");
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("DetaTipa", "Detalle", FilterMode.Contains)
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridTipoPago));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiTipa = new GridColumn();
    this.colDetaTipa = new GridColumn();
    this.colTipoTipa = new GridColumn();
    this.colCodiCuco = new GridColumn();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
    ((ImageOptions) this.butSave.ImageOptions).Image = (Image) componentResourceManager.GetObject("butSave.ImageOptions.Image");
    this.butSave.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butCancel.ImageOptions).Image = (Image) componentResourceManager.GetObject("butCancel.ImageOptions.Image");
    this.butCancel.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butDelete.ImageOptions).Image = (Image) componentResourceManager.GetObject("butDelete.ImageOptions.Image");
    this.butDelete.ImageOptions.Location = (ImageLocation) 1;
    ((Control) this.butDelete).Visible = false;
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colCodiTipa,
      this.colDetaTipa,
      this.colTipoTipa,
      this.colCodiCuco
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiTipa.Caption = "Código";
    this.colCodiTipa.FieldName = "CodiTipa";
    this.colCodiTipa.Name = "colCodiTipa";
    this.colCodiTipa.Visible = true;
    this.colCodiTipa.VisibleIndex = 0;
    this.colCodiTipa.Width = 60;
    this.colDetaTipa.Caption = "Detalle";
    this.colDetaTipa.FieldName = "DetaTipa";
    this.colDetaTipa.Name = "colDetaTipa";
    this.colDetaTipa.Visible = true;
    this.colDetaTipa.VisibleIndex = 1;
    this.colDetaTipa.Width = 365;
    this.colTipoTipa.Caption = "Grupo de Pago";
    this.colTipoTipa.FieldName = "TipoTipa";
    this.colTipoTipa.Name = "colTipoTipa";
    this.colTipoTipa.Visible = true;
    this.colTipoTipa.VisibleIndex = 2;
    this.colTipoTipa.Width = 92;
    this.colCodiCuco.Caption = "Cuenta Contable";
    this.colCodiCuco.FieldName = "CodiCuco";
    this.colCodiCuco.Name = "colCodiCuco";
    this.colCodiCuco.Visible = true;
    this.colCodiCuco.VisibleIndex = 3;
    this.colCodiCuco.Width = 168;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridTipoPago);
    this.Text = nameof (gridTipoPago);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
