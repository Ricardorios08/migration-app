// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridAsignacionOrdenLiqu
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

public class gridAsignacionOrdenLiqu : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colPeriLiqu;
  private GridColumn colNumeLiqu;
  private GridColumn colOrdeDesde;
  private GridColumn colOrdeHasta;
  private GridColumn colCucuAgen;
  private GridColumn colDetaPers;

  public gridAsignacionOrdenLiqu()
    : base((ABMDetailControl) new detailAsignacionOrdenLiqu(), (ABMExpert) new ExpAsignacionOrdenLiqu(), typeof (AsignacionOrdenLiqu))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Asignación de Ordenes por Liquidación", "Asignación de Ordenes por Liquidación");
    this.EntityIdProperty = "IdAsig";
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("NumeLiqu", "Nro. Liquidación", FilterMode.Equal),
      new FilterField("DetaPers", "Agente", FilterMode.Contains)
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridAsignacionOrdenLiqu));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colPeriLiqu = new GridColumn();
    this.colNumeLiqu = new GridColumn();
    this.colOrdeDesde = new GridColumn();
    this.colOrdeHasta = new GridColumn();
    this.colCucuAgen = new GridColumn();
    this.colDetaPers = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[6]
    {
      this.colPeriLiqu,
      this.colNumeLiqu,
      this.colOrdeDesde,
      this.colOrdeHasta,
      this.colCucuAgen,
      this.colDetaPers
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colPeriLiqu.Caption = "Período";
    this.colPeriLiqu.FieldName = "PeriLiqu";
    this.colPeriLiqu.Name = "colPeriLiqu";
    this.colPeriLiqu.Visible = true;
    this.colPeriLiqu.VisibleIndex = 0;
    this.colPeriLiqu.Width = 60;
    this.colNumeLiqu.Caption = "Nro. Liquidación";
    this.colNumeLiqu.FieldName = "NumeLiqu";
    this.colNumeLiqu.Name = "colNumeLiqu";
    this.colNumeLiqu.Visible = true;
    this.colNumeLiqu.VisibleIndex = 1;
    this.colNumeLiqu.Width = 60;
    this.colOrdeDesde.Caption = "Orden Desde";
    this.colOrdeDesde.FieldName = "OrdeDesde";
    this.colOrdeDesde.Name = "colOrdeDesde";
    this.colOrdeDesde.Visible = true;
    this.colOrdeDesde.VisibleIndex = 2;
    this.colOrdeDesde.Width = 60;
    this.colOrdeHasta.Caption = "Orden Hasta";
    this.colOrdeHasta.FieldName = "OrdeHasta";
    this.colOrdeHasta.Name = "colOrdeHasta";
    this.colOrdeHasta.Visible = true;
    this.colOrdeHasta.VisibleIndex = 3;
    this.colOrdeHasta.Width = 60;
    this.colCucuAgen.Caption = "Cuil";
    this.colCucuAgen.FieldName = "CucuAgen";
    this.colCucuAgen.Name = "colCucuAgen";
    this.colCucuAgen.Visible = true;
    this.colCucuAgen.VisibleIndex = 4;
    this.colCucuAgen.Width = 200;
    this.colDetaPers.Caption = "Agente";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 5;
    this.colDetaPers.Width = 312;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridAsignacionOrdenLiqu);
    this.Text = nameof (gridAsignacionOrdenLiqu);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
