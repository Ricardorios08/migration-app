// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridParametrosRentas
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

public class gridParametrosRentas : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colPeriInfo;
  private GridColumn colCorePare;
  private GridColumn colDetaReca;
  private GridColumn colDetaInte;
  private GridColumn colDetaAdmi;
  private GridColumn colDetaApre;
  private GridColumn colCoinPare;
  private GridColumn colCoadPare;
  private GridColumn colCoapPare;
  private GridColumn colCoimPare;
  private GridColumn colDetaCoim;

  public gridParametrosRentas()
    : base((ABMDetailControl) new detailParametrosRentas(), (ABMExpert) new ExpParametrosRentas(), typeof (ParametrosRentas))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Parámetros de Rentas", "Parámetros de Rentas");
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("pararenta.PeriInfo", "Periodo", FilterMode.Equal),
      new FilterField("pararenta.CorePare", "Concepto de Recargo", FilterMode.Contains),
      new FilterField("pararenta.CoinPare", "Concepto de Interes", FilterMode.Contains),
      new FilterField("pararenta.CoadPare", "Concepto Com. Administrativa", FilterMode.Contains),
      new FilterField("pararenta.CoapPare", "Concepto de Apremio", FilterMode.Contains),
      new FilterField("pararenta.CoimPare", "Concepto Imp. Apremio", FilterMode.Contains)
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
    this.colCorePare = new GridColumn();
    this.colDetaReca = new GridColumn();
    this.colDetaInte = new GridColumn();
    this.colDetaAdmi = new GridColumn();
    this.colDetaApre = new GridColumn();
    this.colCoinPare = new GridColumn();
    this.colCoadPare = new GridColumn();
    this.colCoapPare = new GridColumn();
    this.colCoimPare = new GridColumn();
    this.colDetaCoim = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[11]
    {
      this.colPeriInfo,
      this.colCorePare,
      this.colDetaReca,
      this.colCoinPare,
      this.colDetaInte,
      this.colCoadPare,
      this.colDetaAdmi,
      this.colCoapPare,
      this.colDetaApre,
      this.colCoimPare,
      this.colDetaCoim
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colPeriInfo.Caption = "Periodo";
    this.colPeriInfo.FieldName = "PeriInfo";
    this.colPeriInfo.Name = "colPeriInfo";
    this.colPeriInfo.Visible = true;
    this.colPeriInfo.VisibleIndex = 0;
    this.colPeriInfo.Width = 50;
    this.colCorePare.Caption = "Recargo";
    this.colCorePare.FieldName = "CorePare";
    this.colCorePare.Name = "colCorePare";
    this.colCorePare.Visible = true;
    this.colCorePare.VisibleIndex = 1;
    this.colCorePare.Width = 50;
    this.colDetaReca.Caption = "Detalle Recargo";
    this.colDetaReca.FieldName = "DetaReca";
    this.colDetaReca.Name = "colDetaReca";
    this.colDetaReca.Visible = true;
    this.colDetaReca.VisibleIndex = 2;
    this.colDetaReca.Width = 93;
    this.colDetaInte.Caption = "Detalle Interes";
    this.colDetaInte.FieldName = "DetaInte";
    this.colDetaInte.Name = "colDetaInte";
    this.colDetaInte.Visible = true;
    this.colDetaInte.VisibleIndex = 4;
    this.colDetaInte.Width = 101;
    this.colDetaAdmi.Caption = "Detalle Com. Administrativa";
    this.colDetaAdmi.FieldName = "DetaAdmi";
    this.colDetaAdmi.Name = "colDetaAdmi";
    this.colDetaAdmi.Visible = true;
    this.colDetaAdmi.VisibleIndex = 6;
    this.colDetaAdmi.Width = 117;
    this.colDetaApre.Caption = "Detalle Apremio";
    this.colDetaApre.FieldName = "DetaApre";
    this.colDetaApre.Name = "colDetaApre";
    this.colDetaApre.Visible = true;
    this.colDetaApre.VisibleIndex = 8;
    this.colDetaApre.Width = 198;
    this.colCoinPare.Caption = "Interes";
    this.colCoinPare.FieldName = "CoinPare";
    this.colCoinPare.Name = "colCoinPare";
    this.colCoinPare.Visible = true;
    this.colCoinPare.VisibleIndex = 3;
    this.colCoinPare.Width = 50;
    this.colCoadPare.Caption = "Com. Administrativa";
    this.colCoadPare.FieldName = "CoadPare";
    this.colCoadPare.Name = "colCoadPare";
    this.colCoadPare.Visible = true;
    this.colCoadPare.VisibleIndex = 5;
    this.colCoadPare.Width = 50;
    this.colCoapPare.Caption = "Apremio";
    this.colCoapPare.FieldName = "CoapPare";
    this.colCoapPare.Name = "colCoapPare";
    this.colCoapPare.Visible = true;
    this.colCoapPare.VisibleIndex = 7;
    this.colCoapPare.Width = 50;
    this.colCoimPare.Caption = "Imp. Apremio";
    this.colCoimPare.FieldName = "CoimPare";
    this.colCoimPare.Name = "colCoimPare";
    this.colCoimPare.Visible = true;
    this.colCoimPare.VisibleIndex = 9;
    this.colDetaCoim.Caption = "Det. Imp. Apremio";
    this.colDetaCoim.FieldName = "DetaCoim";
    this.colDetaCoim.Name = "colDetaCoim";
    this.colDetaCoim.Visible = true;
    this.colDetaCoim.VisibleIndex = 10;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridParametrosRentas);
    this.Text = nameof (gridParametrosRentas);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
