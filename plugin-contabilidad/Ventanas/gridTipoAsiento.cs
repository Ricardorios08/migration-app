// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.gridTipoAsiento
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.Plugins.Contabilidad.Expertos;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class gridTipoAsiento : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiTipoAsiento;
  private GridColumn colDetaTipoAsiento;
  private GridColumn colFijoTias;

  public gridTipoAsiento()
    : base((ABMDetailControl) new detailTipoAsiento(), (ABMExpert) new ExpTipoAsiento(), typeof (TipoAsiento))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Tipos de Asientos", "Tipos de Asientos");
    this.EntityIdProperty = "CodiTias";
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiTias", "Código", FilterMode.Equal),
      new FilterField("DetaTias", "Detalle", FilterMode.StartsWith)
    };
  }

  protected override void OnSelectionChanged(Entity enti)
  {
    bool flag = false;
    if ((TipoAsiento) enti != null)
      flag = ((TipoAsiento) enti).CodiTias > 30;
    this.AdjustButtons(true, flag, flag, flag);
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
    this.colCodiTipoAsiento = new GridColumn();
    this.colDetaTipoAsiento = new GridColumn();
    this.colFijoTias = new GridColumn();
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
      this.colCodiTipoAsiento,
      this.colDetaTipoAsiento,
      this.colFijoTias
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiTipoAsiento.Caption = "Código";
    this.colCodiTipoAsiento.FieldName = "CodiTias";
    this.colCodiTipoAsiento.Name = "colCodiTipoAsiento";
    this.colCodiTipoAsiento.Visible = true;
    this.colCodiTipoAsiento.VisibleIndex = 0;
    this.colCodiTipoAsiento.Width = 124;
    this.colDetaTipoAsiento.Caption = "Detalle";
    this.colDetaTipoAsiento.FieldName = "DetaTias";
    this.colDetaTipoAsiento.Name = "colDetaTipoAsiento";
    this.colDetaTipoAsiento.Visible = true;
    this.colDetaTipoAsiento.VisibleIndex = 1;
    this.colDetaTipoAsiento.Width = 492;
    this.colFijoTias.Caption = "Código Fijo";
    this.colFijoTias.FieldName = "FijoTias";
    this.colFijoTias.Name = "colFijoTias";
    this.colFijoTias.Visible = true;
    this.colFijoTias.VisibleIndex = 2;
    this.colFijoTias.Width = 143;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridTipoAsiento);
    this.Text = nameof (gridTipoAsiento);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
