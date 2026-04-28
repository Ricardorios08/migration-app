// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmBeneficiariosLicencias
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
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Text.RegularExpressions;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmBeneficiariosLicencias : FRMForm
{
  private BindingSource bsBeneficiarios = new BindingSource();
  private ExpBeneficiarios experto = new ExpBeneficiarios();
  private IContainer components = (IContainer) null;
  private MetroPanel metroPanel1;
  private GridControl gridControl1;
  private GridView gridView1;
  private PanelControl panelControl1;
  private SimpleButton simpleButton1;
  private GridColumn colNumeLega;
  private GridColumn colCucuLega;
  private GridColumn colNoapLega;

  public frmBeneficiariosLicencias()
    : base("Beneficiarios de servicio de licencias", "Beneficiarios de servicio de licencias", typeof (Beneficiario))
  {
    this.InitializeComponent();
    this.gridControl1.DataSource = (object) this.bsBeneficiarios;
    this.bsBeneficiarios.DataSource = (object) this.experto.getGridData();
    ((Control) this.butNew).Visible = false;
    ((Control) this.butEdit).Visible = false;
    ((Control) this.butAnnular).Visible = false;
    ((Control) this.butDelete).Visible = false;
    ((Control) this.butSave).Visible = false;
    ((Control) this.butCancel).Visible = false;
  }

  protected override void OnActionModeChanged(ActionMode mode)
  {
  }

  protected override void OnNuevoClick()
  {
  }

  protected override void OnModificarClick()
  {
  }

  protected override void OnAnularClick()
  {
  }

  protected override string OnEliminarClick() => "Eliminación no implementada";

  protected override string OnGuardarClick() => "Guardar no implementado.";

  protected void loadCSV()
  {
    OpenFileDialog openFileDialog = new OpenFileDialog();
    openFileDialog.Filter = "CSV files (*.csv)|*.csv|All files (*.*)|*.*";
    openFileDialog.Title = "Selecciona un archivo CSV";
    if (openFileDialog.ShowDialog() == DialogResult.OK)
    {
      string fileName = openFileDialog.FileName;
      if (Path.GetExtension(fileName) == ".csv")
      {
        using (StreamReader streamReader = new StreamReader(fileName))
        {
          string sqlInsert = "";
          Regex regex = new Regex("^(20|27|23|24|25|26|30|33|34|35|36|37|38|39)-\\d{8}-\\d$");
          while (!streamReader.EndOfStream)
          {
            string[] strArray = streamReader.ReadLine().Split(';');
            if (regex.IsMatch(strArray[1]))
            {
              if (!streamReader.EndOfStream)
                sqlInsert = $"{sqlInsert}('{strArray[1].Replace("-", "")}','{Misc.Usuario}'),";
              else
                sqlInsert = $"{sqlInsert}('{strArray[1].Replace("-", "")}','{Misc.Usuario}');";
            }
            else
            {
              int num = (int) MessageBox.Show("Problemas al cargar los beneficiarios. El formato de los cuils no es valido, debe incluir guion (20-99999999-9)", "Error", MessageBoxButtons.OK, MessageBoxIcon.Hand);
              return;
            }
          }
          if (this.experto.cargarBeneficiarios(sqlInsert))
          {
            this.bsBeneficiarios.DataSource = (object) this.experto.getGridData();
            int num = (int) MessageBox.Show("Los beneficiarios han sido cargados.", "OK", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
          }
          else
          {
            int num1 = (int) MessageBox.Show("Problemas al cargar los beneficiarios.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Hand);
          }
        }
      }
      else
      {
        int num2 = (int) MessageBox.Show("La extension no es soportada.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Hand);
      }
    }
    else
    {
      int num3 = (int) MessageBox.Show("No se seleccionó ningún archivo.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Hand);
    }
  }

  private void simpleButton1_Click(object sender, EventArgs e) => this.loadCSV();

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmBeneficiariosLicencias));
    this.metroPanel1 = new MetroPanel();
    this.panelControl1 = new PanelControl();
    this.simpleButton1 = new SimpleButton();
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colNumeLega = new GridColumn();
    this.colCucuLega = new GridColumn();
    this.colNoapLega = new GridColumn();
    this.panel1.SuspendLayout();
    this.metroPanel1.SuspendLayout();
    ((ISupportInitialize) this.panelControl1).BeginInit();
    ((Control) this.panelControl1).SuspendLayout();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
    this.panel1.Size = new Size(799, 68);
    this.panel1.Controls.SetChildIndex((Control) this.separator1, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butEdit, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butNew, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butAnnular, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butDelete, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butCancel, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butSave, 0);
    this.separator1.Size = new Size(843, 2);
    ((ImageOptions) this.butSave.ImageOptions).Image = (Image) componentResourceManager.GetObject("butSave.ImageOptions.Image");
    this.butSave.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butCancel.ImageOptions).Image = (Image) componentResourceManager.GetObject("butCancel.ImageOptions.Image");
    this.butCancel.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butDelete.ImageOptions).Image = (Image) componentResourceManager.GetObject("butDelete.ImageOptions.Image");
    this.butDelete.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butAnnular.ImageOptions).Image = (Image) componentResourceManager.GetObject("butAnnular.ImageOptions.Image");
    this.butAnnular.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butNew.ImageOptions).Image = (Image) componentResourceManager.GetObject("butNew.ImageOptions.Image");
    this.butNew.ImageOptions.Location = (ImageLocation) 1;
    ((ImageOptions) this.butEdit.ImageOptions).Image = (Image) componentResourceManager.GetObject("butEdit.ImageOptions.Image");
    this.butEdit.ImageOptions.Location = (ImageLocation) 1;
    this.metroPanel1.Controls.Add((Control) this.panelControl1);
    this.metroPanel1.Controls.Add((Control) this.gridControl1);
    this.metroPanel1.Dock = DockStyle.Fill;
    this.metroPanel1.Location = new Point(0, 68);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(799, 454);
    this.metroPanel1.TabIndex = 2;
    ((Control) this.panelControl1).Controls.Add((Control) this.simpleButton1);
    ((Control) this.panelControl1).Dock = DockStyle.Bottom;
    ((Control) this.panelControl1).Location = new Point(0, 354);
    ((Control) this.panelControl1).Name = "panelControl1";
    ((Control) this.panelControl1).Size = new Size(799, 100);
    ((Control) this.panelControl1).TabIndex = 3;
    ((ImageOptions) this.simpleButton1.ImageOptions).Image = (Image) componentResourceManager.GetObject("simpleButton1.ImageOptions.Image");
    ((Control) this.simpleButton1).Location = new Point(379, 34);
    ((Control) this.simpleButton1).Name = "simpleButton1";
    ((Control) this.simpleButton1).Size = new Size(137, 41);
    ((Control) this.simpleButton1).TabIndex = 0;
    ((Control) this.simpleButton1).Text = "IMPORTAR";
    ((Control) this.simpleButton1).Click += new EventHandler(this.simpleButton1_Click);
    ((Control) this.gridControl1).Dock = DockStyle.Fill;
    ((Control) this.gridControl1).Location = new Point(0, 0);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((Control) this.gridControl1).Name = "gridControl1";
    ((Control) this.gridControl1).Size = new Size(799, 454);
    ((Control) this.gridControl1).TabIndex = 2;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[3]
    {
      this.colNumeLega,
      this.colCucuLega,
      this.colNoapLega
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colNumeLega.Caption = "Legajo";
    this.colNumeLega.FieldName = "NumeLega";
    this.colNumeLega.Name = "colNumeLega";
    this.colNumeLega.OptionsColumn.ReadOnly = true;
    this.colNumeLega.Visible = true;
    this.colNumeLega.VisibleIndex = 0;
    this.colNumeLega.Width = 105;
    this.colCucuLega.Caption = "Cuil";
    this.colCucuLega.FieldName = "CucuLega";
    this.colCucuLega.Name = "colCucuLega";
    this.colCucuLega.OptionsColumn.ReadOnly = true;
    this.colCucuLega.Visible = true;
    this.colCucuLega.VisibleIndex = 1;
    this.colCucuLega.Width = 132;
    this.colNoapLega.Caption = "Nombre";
    this.colNoapLega.FieldName = "NoapLega";
    this.colNoapLega.Name = "colNoapLega";
    this.colNoapLega.OptionsColumn.ReadOnly = true;
    this.colNoapLega.Visible = true;
    this.colNoapLega.VisibleIndex = 2;
    this.colNoapLega.Width = 537;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(799, 522);
    this.Controls.Add((Control) this.metroPanel1);
    this.Name = nameof (frmBeneficiariosLicencias);
    this.Text = nameof (frmBeneficiariosLicencias);
    this.Controls.SetChildIndex((Control) this.panel1, 0);
    this.Controls.SetChildIndex((Control) this.metroPanel1, 0);
    this.panel1.ResumeLayout(false);
    this.metroPanel1.ResumeLayout(false);
    ((ISupportInitialize) this.panelControl1).EndInit();
    ((Control) this.panelControl1).ResumeLayout(false);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
