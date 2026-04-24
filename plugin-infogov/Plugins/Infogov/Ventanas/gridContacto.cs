// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.gridContacto
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

public class gridContacto : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colOfic;
  private GridColumn colCuenta;
  private GridColumn colTipoCont;
  private GridColumn colDetaCont;
  private GridColumn colAltaUs;
  private GridColumn colAltaFeho;
  private GridColumn colModiUs;
  private GridColumn colModiFeho;
  private GridColumn colCucuPers;
  private GridColumn colDetaPers;
  private GridColumn colEmail;

  public gridContacto()
    : base((ABMDetailControl) new detailContacto(), (ABMExpert) new ExpContacto(), typeof (Contacto))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Contactos", "Contactos");
    this.EntityIdProperty = "IdCont";
    this.idPlugin = 0;
  }

  protected override Filter GetInitialFilter() => new Filter();

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("c.CuenCtct", "Cuenta", FilterMode.Equal),
      new FilterField("c.CodiOfic", "N° Oficina", FilterMode.Equal),
      new FilterField("c.CucuPers", "CUIL/CUIT", FilterMode.StartsWith),
      new FilterField("p.DetaPers", "Nombre", FilterMode.Contains)
    };
  }

  protected override void UbicarRegistro(Entity enti)
  {
    this.fbarFilterData(new Filter()
    {
      Items = {
        new FilterItem("c.CuenCtct", "Cuenta", FilterMode.Equal, ((Contacto) enti).CuenCtct)
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridContacto));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colOfic = new GridColumn();
    this.colCuenta = new GridColumn();
    this.colCucuPers = new GridColumn();
    this.colDetaPers = new GridColumn();
    this.colTipoCont = new GridColumn();
    this.colEmail = new GridColumn();
    this.colDetaCont = new GridColumn();
    this.colAltaUs = new GridColumn();
    this.colAltaFeho = new GridColumn();
    this.colModiUs = new GridColumn();
    this.colModiFeho = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[11]
    {
      this.colOfic,
      this.colCuenta,
      this.colCucuPers,
      this.colDetaPers,
      this.colTipoCont,
      this.colEmail,
      this.colDetaCont,
      this.colAltaUs,
      this.colAltaFeho,
      this.colModiUs,
      this.colModiFeho
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridView1.OptionsView.ShowIndicator = false;
    this.colOfic.Caption = "Oficina";
    this.colOfic.FieldName = "DetaOfic";
    this.colOfic.MaxWidth = 70;
    this.colOfic.Name = "colOfic";
    this.colOfic.Visible = true;
    this.colOfic.VisibleIndex = 0;
    this.colOfic.Width = 66;
    this.colCuenta.Caption = "Cuenta";
    this.colCuenta.FieldName = "CuenCtct";
    this.colCuenta.MaxWidth = 75;
    this.colCuenta.Name = "colCuenta";
    this.colCuenta.Visible = true;
    this.colCuenta.VisibleIndex = 1;
    this.colCuenta.Width = 68;
    ((AppearanceOptions) this.colCucuPers.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCucuPers.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCucuPers.Caption = "CUIL/CUIT";
    this.colCucuPers.FieldName = "CucuPers";
    this.colCucuPers.MaxWidth = 100;
    this.colCucuPers.Name = "colCucuPers";
    this.colCucuPers.Visible = true;
    this.colCucuPers.VisibleIndex = 2;
    this.colCucuPers.Width = 73;
    this.colDetaPers.Caption = "Nombre";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 3;
    this.colDetaPers.Width = 73;
    this.colTipoCont.Caption = "Tipo Cont.";
    this.colTipoCont.FieldName = "DetaTico";
    this.colTipoCont.MaxWidth = 75;
    this.colTipoCont.Name = "colTipoCont";
    this.colTipoCont.Visible = true;
    this.colTipoCont.VisibleIndex = 4;
    this.colTipoCont.Width = 73;
    this.colEmail.Caption = "Email";
    this.colEmail.FieldName = "Email";
    this.colEmail.Name = "colEmail";
    this.colEmail.Visible = true;
    this.colEmail.VisibleIndex = 5;
    this.colEmail.Width = 150;
    this.colDetaCont.Caption = "Detalle";
    this.colDetaCont.FieldName = "DetaCont";
    this.colDetaCont.Name = "colDetaCont";
    this.colDetaCont.Visible = true;
    this.colDetaCont.VisibleIndex = 6;
    this.colDetaCont.Width = 56;
    this.colAltaUs.Caption = "Us. Alta";
    this.colAltaUs.FieldName = "AltaUsua";
    this.colAltaUs.MaxWidth = 65;
    this.colAltaUs.Name = "colAltaUs";
    this.colAltaUs.Visible = true;
    this.colAltaUs.VisibleIndex = 7;
    this.colAltaUs.Width = 49;
    this.colAltaFeho.Caption = "Fecha Alta";
    this.colAltaFeho.FieldName = "AltaFeho";
    this.colAltaFeho.MaxWidth = 80 /*0x50*/;
    this.colAltaFeho.Name = "colAltaFeho";
    this.colAltaFeho.Visible = true;
    this.colAltaFeho.VisibleIndex = 8;
    this.colAltaFeho.Width = 52;
    this.colModiUs.Caption = "Us. Modif.";
    this.colModiUs.FieldName = "ModiUsua";
    this.colModiUs.MaxWidth = 65;
    this.colModiUs.Name = "colModiUs";
    this.colModiUs.Visible = true;
    this.colModiUs.VisibleIndex = 9;
    this.colModiUs.Width = 50;
    this.colModiFeho.Caption = "Fecha Modif.";
    this.colModiFeho.FieldName = "ModiFehoStr";
    this.colModiFeho.MaxWidth = 80 /*0x50*/;
    this.colModiFeho.Name = "colModiFeho";
    this.colModiFeho.Visible = true;
    this.colModiFeho.VisibleIndex = 10;
    this.colModiFeho.Width = 65;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridContacto);
    this.Text = nameof (gridContacto);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
