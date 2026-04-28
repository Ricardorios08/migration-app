// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridFeriado
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

public class gridFeriado : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiFeri;
  private GridColumn colDetaFeri;
  private GridColumn colFechFeri;

  public gridFeriado()
    : base((ABMDetailControl) new detailFeriado(), (ABMExpert) new ExpFeriado(), typeof (Feriado))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Feriados", "Feriados");
    this.EntityIdProperty = "CodiFeri";
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiFeri", "Código", FilterMode.Equal),
      new FilterField("DetaFeri", "Detalle", FilterMode.Contains),
      new FilterField("FechFeri", "Fecha", FilterMode.Equal, isDateField: true)
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
    this.colCodiFeri = new GridColumn();
    this.colDetaFeri = new GridColumn();
    this.colFechFeri = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[3]
    {
      this.colCodiFeri,
      this.colDetaFeri,
      this.colFechFeri
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiFeri.Caption = "Código";
    this.colCodiFeri.FieldName = "CodiFeri";
    this.colCodiFeri.Name = "colCodiFeri";
    this.colCodiFeri.Visible = true;
    this.colCodiFeri.VisibleIndex = 0;
    this.colCodiFeri.Width = 108;
    this.colDetaFeri.Caption = "Detalle";
    this.colDetaFeri.FieldName = "DetaFeri";
    this.colDetaFeri.Name = "colDetaFeri";
    this.colDetaFeri.Visible = true;
    this.colDetaFeri.VisibleIndex = 1;
    this.colDetaFeri.Width = 651;
    this.colFechFeri.Caption = "Fecha";
    this.colFechFeri.FieldName = "FechFeri";
    this.colFechFeri.Name = "colFechFeri";
    this.colFechFeri.Visible = true;
    this.colFechFeri.VisibleIndex = 2;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridFeriado);
    this.Text = nameof (gridFeriado);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
