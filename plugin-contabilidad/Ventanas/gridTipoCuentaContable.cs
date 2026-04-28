// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.gridTipoCuentaContable
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

public class gridTipoCuentaContable : ABMForm, ObsPeriodo
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colCodiTicu;
  private GridColumn colDetaTicu;
  private GridColumn colImputable;
  private GridColumn colUsuario;

  public gridTipoCuentaContable()
    : base((ABMDetailControl) new detailTipoCuentaContable(), (ABMExpert) new ExpTipoCuentaContable(), typeof (TipoCuentaContable))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Tipo de Cuentas Contables", "Tipo de Cuentas Contables");
    this.EntityIdProperty = "CodiTicu";
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CodiTicu", "Código", FilterMode.Equal),
      new FilterField("DetaTicu", "Detalle", FilterMode.StartsWith)
    };
  }

  public void PeriodoChanged(int periodo)
  {
    frmMensaje frmMensaje = new frmMensaje((Form) null);
    this.Close();
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
    this.colCodiTicu = new GridColumn();
    this.colDetaTicu = new GridColumn();
    this.colImputable = new GridColumn();
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
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[4]
    {
      this.colCodiTicu,
      this.colDetaTicu,
      this.colImputable,
      this.colUsuario
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colCodiTicu.Caption = "Código";
    this.colCodiTicu.FieldName = "CodiTicu";
    this.colCodiTicu.Name = "colCodiTicu";
    this.colCodiTicu.Visible = true;
    this.colCodiTicu.VisibleIndex = 0;
    this.colCodiTicu.Width = 111;
    this.colDetaTicu.Caption = "Detalle";
    this.colDetaTicu.FieldName = "DetaTicu";
    this.colDetaTicu.Name = "colDetaTicu";
    this.colDetaTicu.Visible = true;
    this.colDetaTicu.VisibleIndex = 1;
    this.colDetaTicu.Width = 344;
    this.colImputable.Caption = "Imputable";
    this.colImputable.FieldName = "ImpuTicu";
    this.colImputable.Name = "colImputable";
    this.colImputable.Visible = true;
    this.colImputable.VisibleIndex = 2;
    this.colImputable.Width = 58;
    this.colUsuario.Caption = "Usuario";
    this.colUsuario.FieldName = "CodiUsua";
    this.colUsuario.Name = "colUsuario";
    this.colUsuario.Visible = true;
    this.colUsuario.VisibleIndex = 3;
    this.colUsuario.Width = 246;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridTipoCuentaContable);
    this.Text = nameof (gridTipoCuentaContable);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
