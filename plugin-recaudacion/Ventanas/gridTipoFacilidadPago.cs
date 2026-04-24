// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridTipoFacilidadPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class gridTipoFacilidadPago : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiTipoFacilidadPago;
  private GridColumn colDetaTipoFacilidadPago;

  public gridTipoFacilidadPago()
    : base((ABMDetailControl) new detailTipoFacilidadPago(), (ABMExpert) new ExpTipoFacilidadPago(), typeof (TipoFacilidadPago))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "TabText", "Title");
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
    this.colCodiTipoFacilidadPago = new GridColumn();
    this.colDetaTipoFacilidadPago = new GridColumn();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[2]
    {
      this.colCodiTipoFacilidadPago,
      this.colDetaTipoFacilidadPago
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiTipoFacilidadPago.Caption = "Código";
    this.colCodiTipoFacilidadPago.FieldName = "CodiTipoFacilidadPago";
    this.colCodiTipoFacilidadPago.Name = "colCodiTipoFacilidadPago";
    this.colCodiTipoFacilidadPago.Visible = true;
    this.colCodiTipoFacilidadPago.VisibleIndex = 0;
    this.colDetaTipoFacilidadPago.Caption = "Detalle";
    this.colDetaTipoFacilidadPago.FieldName = "DetaTipoFacilidadPago";
    this.colDetaTipoFacilidadPago.Name = "colDetaTipoFacilidadPago";
    this.colDetaTipoFacilidadPago.Visible = true;
    this.colDetaTipoFacilidadPago.VisibleIndex = 1;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridTipoFacilidadPago);
    this.Text = nameof (gridTipoFacilidadPago);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
