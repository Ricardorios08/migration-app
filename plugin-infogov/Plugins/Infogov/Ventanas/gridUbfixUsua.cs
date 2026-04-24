// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.gridUbfixUsua
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

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

public class gridUbfixUsua : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colIdUbfi;
  private GridColumn colDetaUbfi;
  private GridColumn colUsuario;

  public gridUbfixUsua()
    : base((ABMDetailControl) new detailUbfixUsua(), (ABMExpert) new ExpUbfixUsua(), typeof (UbfixUsua))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Ubicación Física por Usuario", "Ubicación Física por Usuario");
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("ubfixusua.IdUbfi", "Cód. Ubic Física", FilterMode.Equal),
      new FilterField("ubfixusua.CodiUsua", "Cód. Usuario", FilterMode.Contains)
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
    this.colIdUbfi = new GridColumn();
    this.colDetaUbfi = new GridColumn();
    this.colUsuario = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[3]
    {
      this.colIdUbfi,
      this.colDetaUbfi,
      this.colUsuario
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colIdUbfi.Caption = "Código Ub. Física";
    this.colIdUbfi.FieldName = "IdUbfi";
    this.colIdUbfi.Name = "colIdUbfi";
    this.colIdUbfi.Visible = true;
    this.colIdUbfi.VisibleIndex = 0;
    this.colIdUbfi.Width = 90;
    this.colDetaUbfi.Caption = "Ubicación Física";
    this.colDetaUbfi.FieldName = "DetaUbfi";
    this.colDetaUbfi.Name = "colDetaUbfi";
    this.colDetaUbfi.Visible = true;
    this.colDetaUbfi.VisibleIndex = 1;
    this.colDetaUbfi.Width = 333;
    this.colUsuario.Caption = "Usuario";
    this.colUsuario.FieldName = "CodiUsua";
    this.colUsuario.Name = "colUsuario";
    this.colUsuario.Visible = true;
    this.colUsuario.VisibleIndex = 2;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridUbfixUsua);
    this.Text = nameof (gridUbfixUsua);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
