// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.gridDatoContactoPers
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

public class gridDatoContactoPers : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCucuPers;
  private GridColumn colNudoPers;
  private GridColumn colDetaPers;
  private GridColumn colCeluPers;
  private GridColumn colMailPers;
  private GridColumn colAltaUsua;
  private GridColumn colAltaFehoStr;
  private GridColumn colModiUsua;
  private GridColumn colModiFehoStr;

  public gridDatoContactoPers()
    : base((ABMDetailControl) new detailDatoContactoPers(), (ABMExpert) new ExpDatoContactoPers(), typeof (DatoContactoPers))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Datos Contacto Persona", "Datos Contacto Persona");
    this.EntityIdProperty = "CucuPers";
    this.idPlugin = 0;
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("DetaPers", "Nombre", FilterMode.Contains),
      new FilterField("CucuPers", "CUIL/CUIT", FilterMode.Contains)
    };
  }

  protected override void UbicarRegistro(Entity enti)
  {
    this.fbarFilterData(new Filter()
    {
      Items = {
        new FilterItem("CucuPers", "CUIL/CUIT", FilterMode.Equal, ((DatoContactoPers) enti).CucuPers.ToString())
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridDatoContactoPers));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCucuPers = new GridColumn();
    this.colNudoPers = new GridColumn();
    this.colDetaPers = new GridColumn();
    this.colCeluPers = new GridColumn();
    this.colMailPers = new GridColumn();
    this.colAltaUsua = new GridColumn();
    this.colAltaFehoStr = new GridColumn();
    this.colModiUsua = new GridColumn();
    this.colModiFehoStr = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[9]
    {
      this.colCucuPers,
      this.colNudoPers,
      this.colDetaPers,
      this.colCeluPers,
      this.colMailPers,
      this.colAltaUsua,
      this.colAltaFehoStr,
      this.colModiUsua,
      this.colModiFehoStr
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridView1.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colCucuPers.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCucuPers.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCucuPers.Caption = "CUIL/CUIT";
    this.colCucuPers.FieldName = "CucuPers";
    this.colCucuPers.Name = "colCucuPers";
    this.colCucuPers.Visible = true;
    this.colCucuPers.VisibleIndex = 0;
    ((AppearanceOptions) this.colNudoPers.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNudoPers.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNudoPers.Caption = "N° Doc.";
    this.colNudoPers.FieldName = "NudoPers";
    this.colNudoPers.Name = "colNudoPers";
    this.colNudoPers.Visible = true;
    this.colNudoPers.VisibleIndex = 1;
    ((AppearanceOptions) this.colDetaPers.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDetaPers.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 1;
    this.colDetaPers.Caption = "Nombre";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 2;
    this.colCeluPers.Caption = "N° Celular";
    this.colCeluPers.FieldName = "CeluPers";
    this.colCeluPers.Name = "colCeluPers";
    this.colCeluPers.Visible = true;
    this.colCeluPers.VisibleIndex = 3;
    this.colMailPers.Caption = "Email";
    this.colMailPers.FieldName = "MailPers";
    this.colMailPers.Name = "colMailPers";
    this.colMailPers.Visible = true;
    this.colMailPers.VisibleIndex = 4;
    this.colAltaUsua.Caption = "Usuario Alta";
    this.colAltaUsua.FieldName = "AltaUsua";
    this.colAltaUsua.Name = "colAltaUsua";
    this.colAltaUsua.Visible = true;
    this.colAltaUsua.VisibleIndex = 5;
    this.colAltaFehoStr.Caption = "Fecha/Hora Alta";
    this.colAltaFehoStr.FieldName = "AltaFehoStr";
    this.colAltaFehoStr.Name = "colAltaFehoStr";
    this.colAltaFehoStr.Visible = true;
    this.colAltaFehoStr.VisibleIndex = 6;
    this.colModiUsua.Caption = "Usuario Modif.";
    this.colModiUsua.FieldName = "ModiUsua";
    this.colModiUsua.Name = "colModiUsua";
    this.colModiUsua.Visible = true;
    this.colModiUsua.VisibleIndex = 7;
    this.colModiFehoStr.Caption = "Fecha/Hora Modif.";
    this.colModiFehoStr.FieldName = "ModiFehoStr";
    this.colModiFehoStr.Name = "colModiFehoStr";
    this.colModiFehoStr.Visible = true;
    this.colModiFehoStr.VisibleIndex = 8;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridDatoContactoPers);
    this.Text = nameof (gridDatoContactoPers);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
