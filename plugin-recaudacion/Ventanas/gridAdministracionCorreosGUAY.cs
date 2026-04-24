// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridAdministracionCorreosGUAY
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

public class gridAdministracionCorreosGUAY : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiOficStr;
  private GridColumn colCuenCtct;
  private GridColumn colDetaAdwe;
  private GridColumn colEmailAdwe;

  public gridAdministracionCorreosGUAY()
    : base((ABMDetailControl) new detailAdministracionCorreosGUAY(), (ABMExpert) new ExpAdministracionCorreosGUAY(), typeof (AdministracionCorreosGUAY))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Administración de Correos", "Administración de Correos");
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CuenCtct", "Cuenta", FilterMode.Equal),
      new FilterField("EmailAdwe", "Email", FilterMode.Contains)
    };
  }

  protected override void UbicarRegistro(Entity enti)
  {
    this.fbarFilterData(new Filter()
    {
      Items = {
        new FilterItem("CuenCtct", "Cuenta", FilterMode.Equal, ((AdministracionCorreosGUAY) enti).CuenCtct)
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridAdministracionCorreosGUAY));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiOficStr = new GridColumn();
    this.colCuenCtct = new GridColumn();
    this.colDetaAdwe = new GridColumn();
    this.colEmailAdwe = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colCodiOficStr,
      this.colCuenCtct,
      this.colDetaAdwe,
      this.colEmailAdwe
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiOficStr.Caption = "Oficina";
    this.colCodiOficStr.FieldName = "CodiOficStr";
    this.colCodiOficStr.Name = "colCodiOficStr";
    this.colCodiOficStr.Visible = true;
    this.colCodiOficStr.VisibleIndex = 0;
    this.colCodiOficStr.Width = 158;
    this.colCuenCtct.Caption = "Cuenta";
    this.colCuenCtct.FieldName = "CuenCtct";
    this.colCuenCtct.Name = "colCuenCtct";
    this.colCuenCtct.Visible = true;
    this.colCuenCtct.VisibleIndex = 1;
    this.colCuenCtct.Width = 171;
    this.colDetaAdwe.Caption = "Nombre";
    this.colDetaAdwe.FieldName = "DetaAdwe";
    this.colDetaAdwe.Name = "colDetaAdwe";
    this.colDetaAdwe.Visible = true;
    this.colDetaAdwe.VisibleIndex = 2;
    this.colDetaAdwe.Width = 211;
    this.colEmailAdwe.Caption = "Email";
    this.colEmailAdwe.FieldName = "EmailAdwe";
    this.colEmailAdwe.Name = "colEmailAdwe";
    this.colEmailAdwe.Visible = true;
    this.colEmailAdwe.VisibleIndex = 3;
    this.colEmailAdwe.Width = 212;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridAdministracionCorreosGUAY);
    this.Text = nameof (gridAdministracionCorreosGUAY);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
