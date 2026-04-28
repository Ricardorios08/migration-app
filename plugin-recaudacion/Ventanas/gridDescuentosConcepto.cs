// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridDescuentosConcepto
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

public class gridDescuentosConcepto : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colPeriInfo;
  private GridColumn colCodiConc;
  private GridColumn colDereDeco;
  private GridColumn DecaDeco;
  private GridColumn colDetaConc;

  public gridDescuentosConcepto()
    : base((ABMDetailControl) new detailDescuentosConcepto(), (ABMExpert) new ExpDescuentosConcepto(), typeof (DescuentosConcepto))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Descuentos por Concepto", "Descuentos por Concepto");
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("descconc.PeriInfo", "Periodo", FilterMode.Equal),
      new FilterField("descconc.CodiConc", "Concepto", FilterMode.Contains),
      new FilterField("DetaConc", "Detalle", FilterMode.Contains)
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
    this.colPeriInfo = new GridColumn();
    this.colCodiConc = new GridColumn();
    this.colDereDeco = new GridColumn();
    this.DecaDeco = new GridColumn();
    this.colDetaConc = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[5]
    {
      this.colPeriInfo,
      this.colCodiConc,
      this.colDereDeco,
      this.DecaDeco,
      this.colDetaConc
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colPeriInfo.Caption = "Periodo";
    this.colPeriInfo.FieldName = "PeriInfo";
    this.colPeriInfo.Name = "colPeriInfo";
    this.colPeriInfo.Visible = true;
    this.colPeriInfo.VisibleIndex = 0;
    this.colPeriInfo.Width = 70;
    this.colCodiConc.Caption = "Concepto";
    this.colCodiConc.FieldName = "CodiConc";
    this.colCodiConc.Name = "colCodiConc";
    this.colCodiConc.Visible = true;
    this.colCodiConc.VisibleIndex = 1;
    this.colCodiConc.Width = 82;
    this.colDereDeco.Caption = "Desc Reca";
    this.colDereDeco.FieldName = "DereDeco";
    this.colDereDeco.Name = "colDereDeco";
    this.colDereDeco.Visible = true;
    this.colDereDeco.VisibleIndex = 3;
    this.colDereDeco.Width = 130;
    this.DecaDeco.Caption = "Desc Capit";
    this.DecaDeco.FieldName = "DecaDeco";
    this.DecaDeco.Name = "DecaDeco";
    this.DecaDeco.Visible = true;
    this.DecaDeco.VisibleIndex = 4;
    this.DecaDeco.Width = 138;
    this.colDetaConc.Caption = "Detalle";
    this.colDetaConc.FieldName = "DetaConc";
    this.colDetaConc.Name = "colDetaConc";
    this.colDetaConc.Visible = true;
    this.colDetaConc.VisibleIndex = 2;
    this.colDetaConc.Width = 339;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridDescuentosConcepto);
    this.Text = nameof (gridDescuentosConcepto);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
