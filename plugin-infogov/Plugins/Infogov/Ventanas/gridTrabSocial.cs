// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.gridTrabSocial
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class gridTrabSocial : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiUsua;
  private GridColumn colCucuPers;
  private GridColumn colDetaPers;
  private GridColumn colBajaFehoStr;

  public gridTrabSocial()
    : base((ABMDetailControl) new detailTrabSocial(), (ABMExpert) new ExpTrabSocial(), typeof (TrabSocial))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Trabajadoras Sociales", "Trabajadoras Sociales");
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
    this.colCodiUsua = new GridColumn();
    this.colCucuPers = new GridColumn();
    this.colDetaPers = new GridColumn();
    this.colBajaFehoStr = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colCodiUsua,
      this.colCucuPers,
      this.colDetaPers,
      this.colBajaFehoStr
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridView1.OptionsView.ShowGroupPanel = false;
    this.colCodiUsua.Caption = "Usuario";
    this.colCodiUsua.FieldName = "CodiUsua";
    this.colCodiUsua.Name = "colCodiUsua";
    this.colCodiUsua.Visible = true;
    this.colCodiUsua.VisibleIndex = 0;
    this.colCodiUsua.Width = 90;
    this.colCucuPers.Caption = "Cuit";
    this.colCucuPers.FieldName = "CucuPers";
    this.colCucuPers.Name = "colCucuPers";
    this.colCucuPers.Visible = true;
    this.colCucuPers.VisibleIndex = 1;
    this.colCucuPers.Width = 90;
    this.colDetaPers.Caption = "Nombre";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 2;
    this.colDetaPers.Width = 427;
    this.colBajaFehoStr.Caption = "Fecha de Baja";
    this.colBajaFehoStr.FieldName = "BajaFehoStr";
    this.colBajaFehoStr.Name = "colBajaFehoStr";
    this.colBajaFehoStr.Visible = true;
    this.colBajaFehoStr.VisibleIndex = 3;
    this.colBajaFehoStr.Width = 90;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridTrabSocial);
    this.Text = nameof (gridTrabSocial);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
