// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.gridOrgaxUsua
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
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class gridOrgaxUsua : ABMForm, ObsPeriodo
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiOrga;
  private GridColumn colDetaOrga;
  private GridColumn colUsuario;

  public gridOrgaxUsua()
    : base((ABMDetailControl) new detailOrgaxUsua(), (ABMExpert) new ExpOrgaxUsua(), typeof (OrgaxUsua))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Organigrama por Usuario", "Organigrama por Usuario");
    this.EntityIdProperty = "CodiUsua";
    ((Control) this.butEdit).Enabled = false;
    this.idPlugin = 0;
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("orgaxusua.CodiUsua", "Usuario", FilterMode.Contains),
      new FilterField("orgaxusua.CodiOrga", "Código Oficina", PARAMS.Periodo <= 2023 ? FilterMode.StartsWith : FilterMode.Equal),
      new FilterField("organigrama.DetaOrga", "Detalle Oficina", FilterMode.Contains, true)
    };
  }

  protected override void UbicarRegistro(Entity enti)
  {
    if (enti == null || this.EntityIdProperty == null)
      return;
    ((ColumnView) this.grid).FocusedRowHandle = ((BaseView) this.grid).DataRowCount;
  }

  public void PeriodoChanged(int periodo) => this.Close();

  private void gridView1_RowStyle(object sender, RowStyleEventArgs e)
  {
    try
    {
      if (((RowEventArgs) e).RowHandle < 0 || ((BaseView) sender).RowCount == 0 || PARAMS.Periodo == DateTime.Today.Year)
        return;
      e.Appearance.BackColor = Color.Yellow;
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
    }
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridOrgaxUsua));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colCodiOrga = new GridColumn();
    this.colDetaOrga = new GridColumn();
    this.colUsuario = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[3]
    {
      this.colCodiOrga,
      this.colDetaOrga,
      this.colUsuario
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridView1.OptionsSelection.MultiSelectMode = (GridMultiSelectMode) 2;
    this.gridView1.RowStyle += new RowStyleEventHandler(this.gridView1_RowStyle);
    this.colCodiOrga.Caption = "Cód. Organismo";
    this.colCodiOrga.FieldName = "CodiOrga";
    this.colCodiOrga.Name = "colCodiOrga";
    this.colCodiOrga.Visible = true;
    this.colCodiOrga.VisibleIndex = 0;
    this.colCodiOrga.Width = 128 /*0x80*/;
    this.colDetaOrga.Caption = "Organismo";
    this.colDetaOrga.FieldName = "DetaOrga";
    this.colDetaOrga.Name = "colDetaOrga";
    this.colDetaOrga.Visible = true;
    this.colDetaOrga.VisibleIndex = 1;
    this.colDetaOrga.Width = 315;
    this.colUsuario.Caption = "Usuario";
    this.colUsuario.FieldName = "CodiUsua";
    this.colUsuario.Name = "colUsuario";
    this.colUsuario.Visible = true;
    this.colUsuario.VisibleIndex = 2;
    this.colUsuario.Width = 316;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridOrgaxUsua);
    this.Text = nameof (gridOrgaxUsua);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
