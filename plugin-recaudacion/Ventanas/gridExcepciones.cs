// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridExcepciones
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

public class gridExcepciones : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiInmu;
  private GridColumn colExexInmu;
  private GridColumn colCodiExce;
  private GridColumn colDetaExce;
  private GridColumn colFfexInmu;
  private GridColumn colDetaPers;

  public gridExcepciones()
    : base((ABMDetailControl) new detailExcepciones(), (ABMExpert) new ExpExcepciones(), typeof (Excepciones))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Exención de Inmuebles", "Exención de Inmuebles");
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
      new FilterField("CodiInmu", "Cuenta", FilterMode.Equal),
      new FilterField("ExexInmu", "Expediente", FilterMode.Contains),
      new FilterField("p.DetaPers", "Titular", FilterMode.Contains),
      new FilterField("inmueble.CodiExce", "Cop. Excep", FilterMode.Equal)
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridExcepciones));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiInmu = new GridColumn();
    this.colExexInmu = new GridColumn();
    this.colCodiExce = new GridColumn();
    this.colDetaExce = new GridColumn();
    this.colFfexInmu = new GridColumn();
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
      this.colCodiInmu,
      this.colDetaPers,
      this.colExexInmu,
      this.colCodiExce,
      this.colDetaExce,
      this.colFfexInmu
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiInmu.Caption = "Cuenta";
    this.colCodiInmu.FieldName = "CodiInmu";
    this.colCodiInmu.Name = "colCodiInmu";
    this.colCodiInmu.Visible = true;
    this.colCodiInmu.VisibleIndex = 0;
    this.colCodiInmu.Width = 77;
    this.colExexInmu.Caption = "Expediente";
    this.colExexInmu.FieldName = "ExexInmu";
    this.colExexInmu.Name = "colExexInmu";
    this.colExexInmu.Visible = true;
    this.colExexInmu.VisibleIndex = 2;
    this.colExexInmu.Width = 123;
    this.colCodiExce.Caption = "Cod. Exen.";
    this.colCodiExce.FieldName = "CodiExce";
    this.colCodiExce.Name = "colCodiExce";
    this.colCodiExce.Visible = true;
    this.colCodiExce.VisibleIndex = 3;
    this.colCodiExce.Width = 78;
    this.colDetaExce.Caption = "Exención";
    this.colDetaExce.FieldName = "DetaExce";
    this.colDetaExce.Name = "colDetaExce";
    this.colDetaExce.Visible = true;
    this.colDetaExce.VisibleIndex = 4;
    this.colDetaExce.Width = 481;
    this.colFfexInmu.Caption = "Fin Exención";
    this.colFfexInmu.FieldName = "FfexInmuStr";
    this.colFfexInmu.Name = "colFfexInmu";
    this.colFfexInmu.Visible = true;
    this.colFfexInmu.VisibleIndex = 5;
    this.colDetaPers.Caption = "Titular";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 1;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridExcepciones);
    this.Text = nameof (gridExcepciones);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
