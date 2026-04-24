// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.gridAlerta
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

public class gridAlerta : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colOficina;
  private GridColumn colCuenta;
  private GridColumn colDetalle;
  private GridColumn colAltaUsua;
  private GridColumn colAltaFeho;
  private GridColumn colModiUsua;
  private GridColumn colModiFeho;
  private GridColumn colBajaUsua;
  private GridColumn colBajaFeho;
  private GridColumn colBajaMoti;

  public gridAlerta()
    : base((ABMDetailControl) new detailAlerta(), (ABMExpert) new ExpAlerta(), typeof (Alerta))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Alertas", "Alertas");
    this.EntityIdProperty = "Id";
    this.idPlugin = 0;
  }

  protected override Filter GetInitialFilter() => new Filter();

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("a.CuenCtct", "Cuenta", FilterMode.Equal)
    };
  }

  protected override void UbicarRegistro(Entity enti)
  {
    this.fbarFilterData(new Filter()
    {
      Items = {
        new FilterItem("a.CuenCtct", "Cuenta", FilterMode.Equal, ((Alerta) enti).CuenCtct)
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridAlerta));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colOficina = new GridColumn();
    this.colCuenta = new GridColumn();
    this.colDetalle = new GridColumn();
    this.colAltaUsua = new GridColumn();
    this.colAltaFeho = new GridColumn();
    this.colModiUsua = new GridColumn();
    this.colModiFeho = new GridColumn();
    this.colBajaUsua = new GridColumn();
    this.colBajaFeho = new GridColumn();
    this.colBajaMoti = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[10]
    {
      this.colOficina,
      this.colCuenta,
      this.colDetalle,
      this.colAltaUsua,
      this.colAltaFeho,
      this.colModiUsua,
      this.colModiFeho,
      this.colBajaUsua,
      this.colBajaFeho,
      this.colBajaMoti
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridView1.OptionsView.ShowIndicator = false;
    this.colOficina.Caption = "Oficina";
    this.colOficina.FieldName = "DetaOfic";
    this.colOficina.MaxWidth = 90;
    this.colOficina.Name = "colOficina";
    this.colOficina.Visible = true;
    this.colOficina.VisibleIndex = 0;
    this.colOficina.Width = 50;
    this.colCuenta.Caption = "Cuenta";
    this.colCuenta.FieldName = "CuenCtct";
    this.colCuenta.MaxWidth = 80 /*0x50*/;
    this.colCuenta.Name = "colCuenta";
    this.colCuenta.Visible = true;
    this.colCuenta.VisibleIndex = 1;
    this.colCuenta.Width = 70;
    this.colDetalle.Caption = "Detalle";
    this.colDetalle.FieldName = "DetaAler";
    this.colDetalle.Name = "colDetalle";
    this.colDetalle.Visible = true;
    this.colDetalle.VisibleIndex = 2;
    this.colAltaUsua.Caption = "Us. Alta";
    this.colAltaUsua.FieldName = "AltaUsua";
    this.colAltaUsua.MaxWidth = 70;
    this.colAltaUsua.Name = "colAltaUsua";
    this.colAltaUsua.Visible = true;
    this.colAltaUsua.VisibleIndex = 3;
    this.colAltaUsua.Width = 70;
    this.colAltaFeho.Caption = "Fecha Alta";
    this.colAltaFeho.FieldName = "AltaFehoStr";
    this.colAltaFeho.MaxWidth = 100;
    this.colAltaFeho.Name = "colAltaFeho";
    this.colAltaFeho.Visible = true;
    this.colAltaFeho.VisibleIndex = 4;
    this.colModiUsua.Caption = "Us. Modif.";
    this.colModiUsua.FieldName = "ModiUsua";
    this.colModiUsua.MaxWidth = 70;
    this.colModiUsua.Name = "colModiUsua";
    this.colModiUsua.Visible = true;
    this.colModiUsua.VisibleIndex = 5;
    this.colModiUsua.Width = 70;
    this.colModiFeho.Caption = "Fecha Modif.";
    this.colModiFeho.FieldName = "ModiFehoStr";
    this.colModiFeho.MaxWidth = 100;
    this.colModiFeho.Name = "colModiFeho";
    this.colModiFeho.Visible = true;
    this.colModiFeho.VisibleIndex = 6;
    this.colBajaUsua.Caption = "Us. Baja";
    this.colBajaUsua.FieldName = "BajaUsua";
    this.colBajaUsua.MaxWidth = 70;
    this.colBajaUsua.Name = "colBajaUsua";
    this.colBajaUsua.Visible = true;
    this.colBajaUsua.VisibleIndex = 7;
    this.colBajaUsua.Width = 70;
    this.colBajaFeho.Caption = "Fecha Baja";
    this.colBajaFeho.FieldName = "BajaFehoStr";
    this.colBajaFeho.MaxWidth = 100;
    this.colBajaFeho.Name = "colBajaFeho";
    this.colBajaFeho.Visible = true;
    this.colBajaFeho.VisibleIndex = 8;
    this.colBajaMoti.Caption = "Motiv. Baja";
    this.colBajaMoti.FieldName = "BajaMoti";
    this.colBajaMoti.MaxWidth = 150;
    this.colBajaMoti.Name = "colBajaMoti";
    this.colBajaMoti.Visible = true;
    this.colBajaMoti.VisibleIndex = 9;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridAlerta);
    this.Text = nameof (gridAlerta);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
