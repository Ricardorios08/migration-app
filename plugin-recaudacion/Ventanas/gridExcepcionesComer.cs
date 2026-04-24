// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridExcepcionesComer
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

public class gridExcepcionesComer : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiCome;
  private GridColumn colExexCome;
  private GridColumn colCodiExce;
  private GridColumn colDetaExce;
  private GridColumn colFfexComeStr;

  public gridExcepcionesComer()
    : base((ABMDetailControl) new detailExcepcionesComer(), (ABMExpert) new ExpExcepcionesComer(), typeof (ExcepcionesComer))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Exención de Comercio", "Exención de Comercio");
  }

  protected override Filter GetInitialFilter()
  {
    return new Filter()
    {
      Items = {
        new FilterItem("1", "1", FilterMode.Equal, "2")
      }
    };
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiCome", "Cuenta", FilterMode.Equal),
      new FilterField("ExexCome", "Expediente", FilterMode.Contains),
      new FilterField("comercio.CodiExce", "Cop. Excep", FilterMode.Equal)
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridExcepcionesComer));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiCome = new GridColumn();
    this.colExexCome = new GridColumn();
    this.colCodiExce = new GridColumn();
    this.colDetaExce = new GridColumn();
    this.colFfexComeStr = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[5]
    {
      this.colCodiCome,
      this.colExexCome,
      this.colCodiExce,
      this.colDetaExce,
      this.colFfexComeStr
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiCome.Caption = "Cuenta";
    this.colCodiCome.FieldName = "CodiCome";
    this.colCodiCome.Name = "colCodiCome";
    this.colCodiCome.Visible = true;
    this.colCodiCome.VisibleIndex = 0;
    this.colCodiCome.Width = 83;
    this.colExexCome.Caption = "Expediente";
    this.colExexCome.FieldName = "ExexCome";
    this.colExexCome.Name = "colExexCome";
    this.colExexCome.Visible = true;
    this.colExexCome.VisibleIndex = 1;
    this.colExexCome.Width = 125;
    this.colCodiExce.Caption = "Cod. Exen.";
    this.colCodiExce.FieldName = "CodiExce";
    this.colCodiExce.Name = "colCodiExce";
    this.colCodiExce.Visible = true;
    this.colCodiExce.VisibleIndex = 2;
    this.colCodiExce.Width = 78;
    this.colDetaExce.Caption = "Exención";
    this.colDetaExce.FieldName = "DetaExce";
    this.colDetaExce.Name = "colDetaExce";
    this.colDetaExce.Visible = true;
    this.colDetaExce.VisibleIndex = 3;
    this.colDetaExce.Width = 473;
    this.colFfexComeStr.Caption = "Fin Exención";
    this.colFfexComeStr.FieldName = "FfexComeStr";
    this.colFfexComeStr.Name = "colFfexComeStr";
    this.colFfexComeStr.Visible = true;
    this.colFfexComeStr.VisibleIndex = 4;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridExcepcionesComer);
    this.Text = nameof (gridExcepcionesComer);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
