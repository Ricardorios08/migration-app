// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.gridAdministracionCorreos
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

public class gridAdministracionCorreos : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colOficina;
  private GridColumn colCuenta;
  private GridColumn colEmail;

  public gridAdministracionCorreos()
    : base((ABMDetailControl) new detailAdministracionCorreos(), (ABMExpert) new ExpAdministracionCorreos(), typeof (AdministracionCorreos))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Administración de Correos", "Administración de Correos");
    this.EntityIdProperty = "IdCorreo";
  }

  protected override FilterBar CreateFilterBar() => (FilterBar) new SimpleFilterBar();

  protected override List<FilterField> GetFilterFields()
  {
    return new List<FilterField>()
    {
      new FilterField("CuenCtct", "Cuenta", FilterMode.Equal),
      new FilterField("Email", "Email", FilterMode.Contains)
    };
  }

  protected override void UbicarRegistro(Entity enti)
  {
    this.fbarFilterData(new Filter()
    {
      Items = {
        new FilterItem("CuenCtct", "Cuenta", FilterMode.Equal, ((AdministracionCorreos) enti).Cuenta.ToString())
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (gridAdministracionCorreos));
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colOficina = new GridColumn();
    this.colCuenta = new GridColumn();
    this.colEmail = new GridColumn();
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
      this.colOficina,
      this.colCuenta,
      this.colEmail
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colOficina.Caption = "Oficina";
    this.colOficina.FieldName = "CodiOficStr";
    this.colOficina.Name = "colOficina";
    this.colOficina.Visible = true;
    this.colOficina.VisibleIndex = 0;
    this.colOficina.Width = 161;
    this.colCuenta.Caption = "Cuenta";
    this.colCuenta.FieldName = "Cuenta";
    this.colCuenta.Name = "colCuenta";
    this.colCuenta.Visible = true;
    this.colCuenta.VisibleIndex = 1;
    this.colCuenta.Width = 177;
    this.colEmail.Caption = "Email";
    this.colEmail.FieldName = "Email";
    this.colEmail.Name = "colEmail";
    this.colEmail.Visible = true;
    this.colEmail.VisibleIndex = 2;
    this.colEmail.Width = 414;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridAdministracionCorreos);
    this.Text = nameof (gridAdministracionCorreos);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
