// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.tdPermisosRoles
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.PivotGrid.DataBinding;
using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraPivotGrid;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class tdPermisosRoles : BaseForm
{
  private ExptdPermisosRol experto = new ExptdPermisosRol();
  private IContainer components = (IContainer) null;
  private PivotGridControl pivotGridControl1;
  private PivotGridField CodiUsu;
  private PivotGridField DetaUsu;
  private PivotGridField FeveUsu;
  private PivotGridField InhaUsu;
  private PivotGridField BajaFeh;
  private PivotGridField DetaSis;
  private PivotGridField DetaRo;
  private PivotGridField DetaMen;
  private PivotGridField DetaPer;
  private MetroPanel metroPanel1;
  private SimpleButton ImprimirBtn;

  public tdPermisosRoles() => this.InitializeComponent();

  private void tdPermisosRoles_Shown(object sender, EventArgs e)
  {
    this.pivotGridControl1.DataSource = (object) new frmEsperar((Form) this).calcular<DataTable>((Func<DataTable>) (() => this.experto.getData()), "Buscando...");
    ((PivotGridOptionsViewBase) this.pivotGridControl1.OptionsView).HideAllTotals();
    ((Control) this.pivotGridControl1).Refresh();
  }

  private void ImprimirBtn_Click(object sender, EventArgs e)
  {
    this.pivotGridControl1.OptionsPrint.PrintColumnHeaders = (DefaultBoolean) 1;
    this.pivotGridControl1.OptionsPrint.PrintDataHeaders = (DefaultBoolean) 1;
    this.pivotGridControl1.OptionsPrint.PrintFilterHeaders = (DefaultBoolean) 1;
    this.pivotGridControl1.OptionsPrint.PrintColumnFieldValues = false;
    this.pivotGridControl1.OptionsPrint.MergeRowFieldValues = false;
    this.pivotGridControl1.ShowPrintPreview();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    DataSourceColumnBinding sourceColumnBinding1 = new DataSourceColumnBinding();
    DataSourceColumnBinding sourceColumnBinding2 = new DataSourceColumnBinding();
    DataSourceColumnBinding sourceColumnBinding3 = new DataSourceColumnBinding();
    DataSourceColumnBinding sourceColumnBinding4 = new DataSourceColumnBinding();
    DataSourceColumnBinding sourceColumnBinding5 = new DataSourceColumnBinding();
    DataSourceColumnBinding sourceColumnBinding6 = new DataSourceColumnBinding();
    DataSourceColumnBinding sourceColumnBinding7 = new DataSourceColumnBinding();
    DataSourceColumnBinding sourceColumnBinding8 = new DataSourceColumnBinding();
    DataSourceColumnBinding sourceColumnBinding9 = new DataSourceColumnBinding();
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (tdPermisosRoles));
    this.pivotGridControl1 = new PivotGridControl();
    this.CodiUsu = new PivotGridField();
    this.DetaUsu = new PivotGridField();
    this.FeveUsu = new PivotGridField();
    this.InhaUsu = new PivotGridField();
    this.BajaFeh = new PivotGridField();
    this.DetaSis = new PivotGridField();
    this.DetaRo = new PivotGridField();
    this.DetaMen = new PivotGridField();
    this.DetaPer = new PivotGridField();
    this.metroPanel1 = new MetroPanel();
    this.ImprimirBtn = new SimpleButton();
    ((ISupportInitialize) this.pivotGridControl1).BeginInit();
    this.metroPanel1.SuspendLayout();
    this.SuspendLayout();
    ((Control) this.pivotGridControl1).Dock = DockStyle.Fill;
    this.pivotGridControl1.Fields.AddRange(new PivotGridField[9]
    {
      this.CodiUsu,
      this.DetaUsu,
      this.FeveUsu,
      this.InhaUsu,
      this.BajaFeh,
      this.DetaSis,
      this.DetaRo,
      this.DetaMen,
      this.DetaPer
    });
    ((Control) this.pivotGridControl1).Location = new Point(0, 32 /*0x20*/);
    ((Control) this.pivotGridControl1).Name = "pivotGridControl1";
    this.pivotGridControl1.OptionsData.DataProcessingEngine = (PivotDataProcessingEngine) 3;
    ((Control) this.pivotGridControl1).Size = new Size(800, 418);
    ((Control) this.pivotGridControl1).TabIndex = 0;
    ((PivotGridFieldBase) this.CodiUsu).Area = (PivotArea) 0;
    ((PivotGridFieldBase) this.CodiUsu).AreaIndex = 0;
    ((PivotGridFieldBase) this.CodiUsu).Caption = "Cod. Usuario";
    ((DataSourceColumnBindingBase) sourceColumnBinding1).ColumnName = "CodiUsua";
    ((PivotGridFieldBase) this.CodiUsu).DataBinding = (DataBindingBase) sourceColumnBinding1;
    ((PivotGridFieldBase) this.CodiUsu).Name = "CodiUsu";
    ((PivotGridFieldBase) this.DetaUsu).Area = (PivotArea) 0;
    ((PivotGridFieldBase) this.DetaUsu).AreaIndex = 1;
    ((PivotGridFieldBase) this.DetaUsu).Caption = "Nombre Usuario";
    ((DataSourceColumnBindingBase) sourceColumnBinding2).ColumnName = "DetaUsua";
    ((PivotGridFieldBase) this.DetaUsu).DataBinding = (DataBindingBase) sourceColumnBinding2;
    ((PivotGridFieldBase) this.DetaUsu).Name = "DetaUsu";
    ((PivotGridFieldBase) this.FeveUsu).AreaIndex = 0;
    ((PivotGridFieldBase) this.FeveUsu).Caption = "Vencimiento del Pass.";
    ((DataSourceColumnBindingBase) sourceColumnBinding3).ColumnName = "FeveUsua";
    ((PivotGridFieldBase) this.FeveUsu).DataBinding = (DataBindingBase) sourceColumnBinding3;
    ((PivotGridFieldBase) this.FeveUsu).Name = "FeveUsu";
    ((PivotGridFieldBase) this.InhaUsu).AreaIndex = 1;
    ((PivotGridFieldBase) this.InhaUsu).Caption = "Inhabilitado";
    ((DataSourceColumnBindingBase) sourceColumnBinding4).ColumnName = "InhaUsua";
    ((PivotGridFieldBase) this.InhaUsu).DataBinding = (DataBindingBase) sourceColumnBinding4;
    ((PivotGridFieldBase) this.InhaUsu).Name = "InhaUsu";
    ((PivotGridFieldBase) this.BajaFeh).AreaIndex = 2;
    ((PivotGridFieldBase) this.BajaFeh).Caption = "Fecha de Baja";
    ((DataSourceColumnBindingBase) sourceColumnBinding5).ColumnName = "BajaFeho";
    ((PivotGridFieldBase) this.BajaFeh).DataBinding = (DataBindingBase) sourceColumnBinding5;
    ((PivotGridFieldBase) this.BajaFeh).Name = "BajaFeh";
    ((PivotGridFieldBase) this.DetaSis).Area = (PivotArea) 0;
    ((PivotGridFieldBase) this.DetaSis).AreaIndex = 3;
    ((PivotGridFieldBase) this.DetaSis).Caption = "Sistema";
    ((DataSourceColumnBindingBase) sourceColumnBinding6).ColumnName = "DetaSist";
    ((PivotGridFieldBase) this.DetaSis).DataBinding = (DataBindingBase) sourceColumnBinding6;
    ((PivotGridFieldBase) this.DetaSis).Name = "DetaSis";
    ((PivotGridFieldBase) this.DetaRo).Area = (PivotArea) 0;
    ((PivotGridFieldBase) this.DetaRo).AreaIndex = 2;
    ((PivotGridFieldBase) this.DetaRo).Caption = "Rol";
    ((DataSourceColumnBindingBase) sourceColumnBinding7).ColumnName = "DetaRol";
    ((PivotGridFieldBase) this.DetaRo).DataBinding = (DataBindingBase) sourceColumnBinding7;
    ((PivotGridFieldBase) this.DetaRo).Name = "DetaRo";
    ((PivotGridFieldBase) this.DetaMen).Area = (PivotArea) 0;
    ((PivotGridFieldBase) this.DetaMen).AreaIndex = 4;
    ((PivotGridFieldBase) this.DetaMen).Caption = "Menu";
    ((DataSourceColumnBindingBase) sourceColumnBinding8).ColumnName = "DetaMenu";
    ((PivotGridFieldBase) this.DetaMen).DataBinding = (DataBindingBase) sourceColumnBinding8;
    ((PivotGridFieldBase) this.DetaMen).Name = "DetaMen";
    ((PivotGridFieldBase) this.DetaPer).AreaIndex = 3;
    ((PivotGridFieldBase) this.DetaPer).Caption = "Permiso";
    ((DataSourceColumnBindingBase) sourceColumnBinding9).ColumnName = "DetaPerm";
    ((PivotGridFieldBase) this.DetaPer).DataBinding = (DataBindingBase) sourceColumnBinding9;
    ((PivotGridFieldBase) this.DetaPer).Name = "DetaPer";
    this.metroPanel1.Controls.Add((Control) this.ImprimirBtn);
    this.metroPanel1.Dock = DockStyle.Top;
    this.metroPanel1.Location = new Point(0, 0);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(800, 32 /*0x20*/);
    this.metroPanel1.TabIndex = 4;
    ((Control) this.ImprimirBtn).Anchor = AnchorStyles.Top | AnchorStyles.Right;
    ((BaseButton) this.ImprimirBtn).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.ImprimirBtn.ImageOptions).Image = (Image) componentResourceManager.GetObject("ImprimirBtn.ImageOptions.Image");
    ((Control) this.ImprimirBtn).Location = new Point(682, 3);
    ((Control) this.ImprimirBtn).Name = "ImprimirBtn";
    ((Control) this.ImprimirBtn).Size = new Size(106, 23);
    ((Control) this.ImprimirBtn).TabIndex = 11;
    ((Control) this.ImprimirBtn).Text = "IMPRIMIR";
    ((Control) this.ImprimirBtn).Click += new EventHandler(this.ImprimirBtn_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(800, 450);
    this.Controls.Add((Control) this.pivotGridControl1);
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (tdPermisosRoles);
    this.Text = "Permisos y Roles";
    this.Shown += new EventHandler(this.tdPermisosRoles_Shown);
    ((ISupportInitialize) this.pivotGridControl1).EndInit();
    this.metroPanel1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
