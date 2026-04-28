// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridModificarFormaPago
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

public class gridModificarFormaPago : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colFeenAcpa;
  private GridColumn colPeriBole;
  private GridColumn colNumeBole;
  private GridColumn colCodiOfic;
  private GridColumn colCuenCtct;
  private GridColumn colImpoFopa;
  private GridColumn gridColumn2;
  private GridColumn colNumeAcpa;
  private GridColumn colDetaEnre;

  public gridModificarFormaPago()
    : base((ABMDetailControl) new detailModificarFormaPago(), (ABMExpert) new ExpModificarFormaPago(), typeof (ModificarFormaPago))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Modificar Forma de Pago", "Modificar Forma de Pago");
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("NumeBole", "Boleto", FilterMode.Equal),
      new FilterField("FeenAcpa", "Fecha", FilterMode.Equal, isDateField: true)
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridModificarFormaPago));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colFeenAcpa = new GridColumn();
    this.colPeriBole = new GridColumn();
    this.colNumeBole = new GridColumn();
    this.colCodiOfic = new GridColumn();
    this.colCuenCtct = new GridColumn();
    this.colImpoFopa = new GridColumn();
    this.gridColumn2 = new GridColumn();
    this.colNumeAcpa = new GridColumn();
    this.colDetaEnre = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[9]
    {
      this.colFeenAcpa,
      this.colNumeAcpa,
      this.colDetaEnre,
      this.colPeriBole,
      this.colNumeBole,
      this.colCodiOfic,
      this.colCuenCtct,
      this.colImpoFopa,
      this.gridColumn2
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colFeenAcpa.Caption = "Fecha de Envío";
    this.colFeenAcpa.FieldName = "FeenAcpa";
    this.colFeenAcpa.Name = "colFeenAcpa";
    this.colFeenAcpa.Visible = true;
    this.colFeenAcpa.VisibleIndex = 0;
    this.colPeriBole.Caption = "Periodo";
    this.colPeriBole.FieldName = "PeriBole";
    this.colPeriBole.Name = "colPeriBole";
    this.colPeriBole.Visible = true;
    this.colPeriBole.VisibleIndex = 3;
    this.colNumeBole.Caption = "Boleto";
    this.colNumeBole.FieldName = "NumeBole";
    this.colNumeBole.Name = "colNumeBole";
    this.colNumeBole.Visible = true;
    this.colNumeBole.VisibleIndex = 4;
    this.colCodiOfic.Caption = "Oficina";
    this.colCodiOfic.FieldName = "CodiOfic";
    this.colCodiOfic.Name = "colCodiOfic";
    this.colCodiOfic.Visible = true;
    this.colCodiOfic.VisibleIndex = 5;
    this.colCuenCtct.Caption = "Cuenta";
    this.colCuenCtct.FieldName = "CuenCtct";
    this.colCuenCtct.Name = "colCuenCtct";
    this.colCuenCtct.Visible = true;
    this.colCuenCtct.VisibleIndex = 6;
    this.colImpoFopa.Caption = "Importe";
    this.colImpoFopa.FieldName = "ImpoFopa";
    this.colImpoFopa.Name = "colImpoFopa";
    this.colImpoFopa.Visible = true;
    this.colImpoFopa.VisibleIndex = 7;
    this.gridColumn2.Caption = "Importe Total";
    this.gridColumn2.FieldName = "TotaPago";
    this.gridColumn2.Name = "gridColumn2";
    this.gridColumn2.Visible = true;
    this.gridColumn2.VisibleIndex = 8;
    this.colNumeAcpa.Caption = "Grupo";
    this.colNumeAcpa.FieldName = "NumeAcpa";
    this.colNumeAcpa.Name = "colNumeAcpa";
    this.colNumeAcpa.Visible = true;
    this.colNumeAcpa.VisibleIndex = 1;
    this.colDetaEnre.Caption = "Ente Recaudador";
    this.colDetaEnre.FieldName = "DetaEnre";
    this.colDetaEnre.Name = "colDetaEnre";
    this.colDetaEnre.Visible = true;
    this.colDetaEnre.VisibleIndex = 2;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridModificarFormaPago);
    this.Text = nameof (gridModificarFormaPago);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
