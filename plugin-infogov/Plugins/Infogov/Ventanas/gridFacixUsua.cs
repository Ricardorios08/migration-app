// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.gridFacixUsua
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class gridFacixUsua : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiUsua;
  private GridColumn colCodiTifa;
  private GridColumn ColDetaTifa;
  private GridColumn colAltaUsua;
  private GridColumn colAltaFeho;

  public gridFacixUsua()
    : base((ABMDetailControl) new detailFacixUsua(), (ABMExpert) new ExpFacixUsua(), typeof (FacixUsua))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Facilidades Por Usuario", "Facilidades Por Usuario");
    this.idPlugin = 0;
  }

  protected override Filter GetInitialFilter() => new Filter();

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("u.CodiUsua", "Usuario", FilterMode.Contains),
      new FilterField("u.CodiTifa", "Cod. Facilidad", FilterMode.Equal),
      new FilterField("t.DetaTifa", "Detalle Facilidad", FilterMode.Contains)
    };
  }

  protected override void UbicarRegistro(Entity enti)
  {
    this.fbarFilterData(new Filter()
    {
      Items = {
        new FilterItem("u.CodiUsua", "u.CodiUsua", FilterMode.Contains, ((FacixUsua) enti).CodiUsua)
      }
    });
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridFacixUsua));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiUsua = new GridColumn();
    this.colCodiTifa = new GridColumn();
    this.ColDetaTifa = new GridColumn();
    this.colAltaUsua = new GridColumn();
    this.colAltaFeho = new GridColumn();
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
    this.gridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridView1.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[5]
    {
      this.colCodiUsua,
      this.colCodiTifa,
      this.ColDetaTifa,
      this.colAltaUsua,
      this.colAltaFeho
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridView1.OptionsView.ShowIndicator = false;
    this.colCodiUsua.Caption = "Usuario";
    this.colCodiUsua.FieldName = "CodiUsua";
    this.colCodiUsua.MaxWidth = 75;
    this.colCodiUsua.MinWidth = 75;
    this.colCodiUsua.Name = "colCodiUsua";
    this.colCodiUsua.Visible = true;
    this.colCodiUsua.VisibleIndex = 0;
    this.colCodiTifa.Caption = "Cod. Tipo Fac.";
    this.colCodiTifa.FieldName = "CodiTifa";
    this.colCodiTifa.MaxWidth = 80 /*0x50*/;
    this.colCodiTifa.MinWidth = 80 /*0x50*/;
    this.colCodiTifa.Name = "colCodiTifa";
    this.colCodiTifa.Visible = true;
    this.colCodiTifa.VisibleIndex = 1;
    this.colCodiTifa.Width = 80 /*0x50*/;
    this.ColDetaTifa.Caption = "Detalle Tipo Facilidad";
    this.ColDetaTifa.FieldName = "DetaTifa";
    this.ColDetaTifa.Name = "ColDetaTifa";
    this.ColDetaTifa.Visible = true;
    this.ColDetaTifa.VisibleIndex = 2;
    this.ColDetaTifa.Width = 342;
    this.colAltaUsua.Caption = "Usuario Alta";
    this.colAltaUsua.FieldName = "AltaUsua";
    this.colAltaUsua.MaxWidth = 75;
    this.colAltaUsua.MinWidth = 75;
    this.colAltaUsua.Name = "colAltaUsua";
    this.colAltaUsua.Visible = true;
    this.colAltaUsua.VisibleIndex = 3;
    this.colAltaFeho.Caption = "Fecha Alta";
    this.colAltaFeho.FieldName = "AltaFeho";
    this.colAltaFeho.MaxWidth = 75;
    this.colAltaFeho.MinWidth = 75;
    this.colAltaFeho.Name = "colAltaFeho";
    this.colAltaFeho.Visible = true;
    this.colAltaFeho.VisibleIndex = 4;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridFacixUsua);
    this.Text = nameof (gridFacixUsua);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
