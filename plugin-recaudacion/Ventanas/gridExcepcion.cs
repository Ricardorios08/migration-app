// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridExcepcion
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

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

public class gridExcepcion : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiExce;
  private GridColumn colDetaExce;
  private GridColumn colPorcExce;
  private GridColumn colTipoExce;

  public gridExcepcion()
    : base((ABMDetailControl) new detailExcepcion(), (ABMExpert) new ExpExcepcion(), typeof (Excepcion))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Excepción", "Excepción");
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiExce", "Código", FilterMode.Equal),
      new FilterField("DetaExce", "Dettalle", FilterMode.Contains)
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
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiExce = new GridColumn();
    this.colDetaExce = new GridColumn();
    this.colPorcExce = new GridColumn();
    this.colTipoExce = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colCodiExce,
      this.colDetaExce,
      this.colPorcExce,
      this.colTipoExce
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiExce.Caption = "Código";
    this.colCodiExce.FieldName = "CodiExce";
    this.colCodiExce.Name = "colCodiExce";
    this.colCodiExce.Visible = true;
    this.colCodiExce.VisibleIndex = 0;
    this.colCodiExce.Width = 61;
    this.colDetaExce.Caption = "Detalle";
    this.colDetaExce.FieldName = "DetaExce";
    this.colDetaExce.Name = "colDetaExce";
    this.colDetaExce.Visible = true;
    this.colDetaExce.VisibleIndex = 1;
    this.colDetaExce.Width = 375;
    this.colPorcExce.Caption = "Porcentaje";
    this.colPorcExce.FieldName = "PorcExce";
    this.colPorcExce.Name = "colPorcExce";
    this.colPorcExce.Visible = true;
    this.colPorcExce.VisibleIndex = 2;
    this.colPorcExce.Width = 158;
    this.colTipoExce.Caption = "Tipo Exce.";
    this.colTipoExce.FieldName = "TipoExce";
    this.colTipoExce.Name = "colTipoExce";
    this.colTipoExce.Visible = true;
    this.colTipoExce.VisibleIndex = 3;
    this.colTipoExce.Width = 165;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridExcepcion);
    this.Text = nameof (gridExcepcion);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
