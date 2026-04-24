// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmParametrosGenerales
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmParametrosGenerales : BaseForm
{
  private ExpParametrosGenerales exp;
  private BindingSource bs;
  private int CodiPage;
  private IContainer components = (IContainer) null;
  private MetroPanel pan1;
  private MetroPanel pan2;
  private MetroLabel metroLabel11;
  private MetroPanel pan3;
  private GridControl gridHistorial;
  private GridView viewHistorial;
  private GridColumn colPeriOrde;
  private GridColumn colUntrPage;
  private GridColumn colDecaPage;
  private GridColumn colDerePage;
  private GridColumn colFosePage;
  private GridColumn colDicaPage;
  private GridColumn colDiprPage;
  private GridColumn colLepaPage;
  private GridColumn colAltaUsua;
  private GridColumn colAltaFeho;
  private MetroPanel metroPanel1;
  private MetroButton btnConfirmar;
  private MetroLabel metroLabel10;
  private MetroLabel metroLabel9;
  private MetroLabel metroLabel8;
  private MetroLabel metroLabel7;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox mtbLepaPage;
  private MetroTextBox mtbDiprPage;
  private MetroTextBox mtbDicaPage;
  private MetroComboBox cboFosePage;
  private MetroDecimalTextBox mdbDerePage;
  private MetroDecimalTextBox mdbDecaPage;
  private MetroDecimalTextBox mdbUntrPage;
  private MetroIntTextBox mibPeriOrde;
  private MetroPanel metroPanel2;

  public frmParametrosGenerales()
  {
    this.InitializeComponent();
    this.exp = new ExpParametrosGenerales();
    this.bs = new BindingSource();
    this.gridHistorial.DataSource = (object) this.bs;
    this.LlenarCBOFose();
    this.BuscarUltimoPage();
    this.BuscarHistorial();
  }

  private void LlenarCBOFose()
  {
    this.cboFosePage.Items.Clear();
    this.cboFosePage.DisplayMember = "Text";
    this.cboFosePage.ValueMember = "Value";
    this.cboFosePage.Items.Add((object) new ComboBoxItem("No", (object) "No"));
    this.cboFosePage.Items.Add((object) new ComboBoxItem("Si", (object) "Si"));
    this.cboFosePage.SelectedIndex = 0;
  }

  private void BuscarUltimoPage()
  {
    this.LimpiarCampos();
    ParametrosGenerales parametrosGenerales = this.exp.BuscarUltimoPage();
    this.CodiPage = parametrosGenerales.CodiPage;
    this.mibPeriOrde.IntText = parametrosGenerales.PeriOrde;
    this.mdbUntrPage.DecimalText = parametrosGenerales.UntrPage;
    this.mdbDecaPage.DecimalText = parametrosGenerales.DecaPage;
    this.mdbDerePage.DecimalText = parametrosGenerales.DerePage;
    this.cboFosePage.SelectedIndex = parametrosGenerales.FosePage == "No" ? 0 : 1;
    this.mtbDicaPage.Text = parametrosGenerales.DicaPage;
    this.mtbDiprPage.Text = parametrosGenerales.DiprPage;
    this.mtbLepaPage.Text = parametrosGenerales.LepaPage;
  }

  private void BuscarHistorial()
  {
    if (this.bs.Count > 0)
      this.bs.Clear();
    this.bs.DataSource = (object) this.exp.ObtenerHistorial();
    ((Control) this.gridHistorial).Refresh();
  }

  private void LimpiarCampos()
  {
    this.mibPeriOrde.Text = this.mdbUntrPage.Text = this.mdbDecaPage.Text = this.mdbDerePage.Text = this.mtbDicaPage.Text = this.mtbDiprPage.Text = this.mtbLepaPage.Text = string.Empty;
    this.cboFosePage.SelectedIndex = 0;
  }

  private void GuardarCambios()
  {
    if (this.exp.GuardarCambios(new ParametrosGenerales()
    {
      CodiPage = this.CodiPage,
      PeriOrde = this.mibPeriOrde.IntText,
      DerePage = this.mdbDerePage.DecimalText,
      DecaPage = this.mdbDecaPage.DecimalText,
      FosePage = this.cboFosePage.SelectedIndex == 0 ? "No" : "Si",
      DicaPage = this.mtbDicaPage.Text.Trim().Replace("\\", "\\\\"),
      DiprPage = this.mtbDiprPage.Text.Trim().Replace("\\", "\\\\"),
      UntrPage = this.mdbUntrPage.DecimalText,
      LepaPage = this.mtbLepaPage.Text.Trim()
    }))
    {
      new frmMensaje((Form) this).mostrarConfirmación("Cambios Guardados");
      this.BuscarUltimoPage();
      this.BuscarHistorial();
    }
    else
      new frmMensaje((Form) this).mostrarError("No se pudieron guardar los cambios.");
  }

  private bool ValidarCampos()
  {
    List<string> errores = new List<string>();
    if (this.mdbUntrPage.DecimalText <= 0M)
      errores.Add("Valor de UTM Incorrecto.");
    if (this.mdbDecaPage.DecimalText < 0M || this.mdbDecaPage.DecimalText > 100M)
      errores.Add("Valor de Descuento Capital Incorrecto.");
    if (this.mdbDerePage.DecimalText < 0M || this.mdbDerePage.DecimalText > 100M)
      errores.Add("Valor de Descuento Recardo Incorrecto.");
    if (errores.Count <= 0)
      return true;
    new dlgErrorList((Form) this).mostarError(errores);
    return false;
  }

  private void btnConfirmar_Click(object sender, EventArgs e)
  {
    if (!this.ValidarCampos() || !new frmPreguntar((Form) this).preguntar("Se modificarán los valores. ¿Desea continuar?"))
      return;
    this.GuardarCambios();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.pan1 = new MetroPanel();
    this.pan3 = new MetroPanel();
    this.gridHistorial = new GridControl();
    this.viewHistorial = new GridView();
    this.colPeriOrde = new GridColumn();
    this.colUntrPage = new GridColumn();
    this.colDecaPage = new GridColumn();
    this.colDerePage = new GridColumn();
    this.colFosePage = new GridColumn();
    this.colDicaPage = new GridColumn();
    this.colDiprPage = new GridColumn();
    this.colLepaPage = new GridColumn();
    this.colAltaUsua = new GridColumn();
    this.colAltaFeho = new GridColumn();
    this.pan2 = new MetroPanel();
    this.metroLabel11 = new MetroLabel();
    this.metroPanel1 = new MetroPanel();
    this.btnConfirmar = new MetroButton();
    this.metroLabel10 = new MetroLabel();
    this.metroLabel9 = new MetroLabel();
    this.metroLabel8 = new MetroLabel();
    this.metroLabel7 = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.mtbLepaPage = new MetroTextBox();
    this.mtbDiprPage = new MetroTextBox();
    this.mtbDicaPage = new MetroTextBox();
    this.cboFosePage = new MetroComboBox();
    this.mdbDerePage = new MetroDecimalTextBox();
    this.mdbDecaPage = new MetroDecimalTextBox();
    this.mdbUntrPage = new MetroDecimalTextBox();
    this.mibPeriOrde = new MetroIntTextBox();
    this.metroPanel2 = new MetroPanel();
    this.pan1.SuspendLayout();
    this.pan3.SuspendLayout();
    ((ISupportInitialize) this.gridHistorial).BeginInit();
    ((ISupportInitialize) this.viewHistorial).BeginInit();
    this.pan2.SuspendLayout();
    this.metroPanel1.SuspendLayout();
    this.metroPanel2.SuspendLayout();
    this.SuspendLayout();
    this.pan1.Controls.Add((Control) this.pan3);
    this.pan1.Controls.Add((Control) this.pan2);
    this.pan1.Dock = DockStyle.Bottom;
    this.pan1.Location = new Point(0, 507);
    this.pan1.Name = "pan1";
    this.pan1.Size = new Size(1008, 222);
    this.pan1.TabIndex = 19;
    this.pan3.Controls.Add((Control) this.gridHistorial);
    this.pan3.Dock = DockStyle.Fill;
    this.pan3.Location = new Point(0, 43);
    this.pan3.Name = "pan3";
    this.pan3.Size = new Size(1008, 179);
    this.pan3.TabIndex = 3;
    ((Control) this.gridHistorial).Dock = DockStyle.Fill;
    ((Control) this.gridHistorial).Location = new Point(0, 0);
    this.gridHistorial.MainView = (BaseView) this.viewHistorial;
    ((Control) this.gridHistorial).Name = "gridHistorial";
    ((Control) this.gridHistorial).Size = new Size(1008, 179);
    ((Control) this.gridHistorial).TabIndex = 6;
    this.gridHistorial.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewHistorial
    });
    this.viewHistorial.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewHistorial.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewHistorial).Columns.AddRange(new GridColumn[10]
    {
      this.colPeriOrde,
      this.colUntrPage,
      this.colDecaPage,
      this.colDerePage,
      this.colFosePage,
      this.colDicaPage,
      this.colDiprPage,
      this.colLepaPage,
      this.colAltaUsua,
      this.colAltaFeho
    });
    this.viewHistorial.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.viewHistorial).GridControl = this.gridHistorial;
    ((BaseView) this.viewHistorial).Name = "viewHistorial";
    this.viewHistorial.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewHistorial.OptionsView.ShowGroupPanel = false;
    this.viewHistorial.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colPeriOrde.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeriOrde.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeriOrde.Caption = "Periodo";
    this.colPeriOrde.FieldName = "PeriOrde";
    this.colPeriOrde.MaxWidth = 50;
    this.colPeriOrde.MinWidth = 10;
    this.colPeriOrde.Name = "colPeriOrde";
    this.colPeriOrde.OptionsColumn.AllowEdit = false;
    this.colPeriOrde.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeriOrde.OptionsColumn.AllowMove = false;
    this.colPeriOrde.OptionsColumn.ReadOnly = true;
    this.colPeriOrde.Visible = true;
    this.colPeriOrde.VisibleIndex = 0;
    this.colPeriOrde.Width = 50;
    ((AppearanceOptions) this.colUntrPage.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colUntrPage.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colUntrPage.Caption = "Valor U.T.M.";
    this.colUntrPage.FieldName = "UntrPage";
    this.colUntrPage.MaxWidth = 70;
    this.colUntrPage.MinWidth = 10;
    this.colUntrPage.Name = "colUntrPage";
    this.colUntrPage.OptionsColumn.AllowEdit = false;
    this.colUntrPage.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colUntrPage.OptionsColumn.AllowMove = false;
    this.colUntrPage.OptionsColumn.ReadOnly = true;
    this.colUntrPage.Visible = true;
    this.colUntrPage.VisibleIndex = 1;
    this.colUntrPage.Width = 70;
    ((AppearanceOptions) this.colDecaPage.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDecaPage.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDecaPage.Caption = "Desc. Capital";
    this.colDecaPage.FieldName = "DecaPage";
    this.colDecaPage.MaxWidth = 75;
    this.colDecaPage.MinWidth = 10;
    this.colDecaPage.Name = "colDecaPage";
    this.colDecaPage.OptionsColumn.AllowEdit = false;
    this.colDecaPage.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDecaPage.OptionsColumn.AllowMove = false;
    this.colDecaPage.OptionsColumn.ReadOnly = true;
    this.colDecaPage.Visible = true;
    this.colDecaPage.VisibleIndex = 2;
    ((AppearanceOptions) this.colDerePage.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDerePage.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDerePage.Caption = "Desc. Recargo";
    this.colDerePage.FieldName = "DerePage";
    this.colDerePage.MaxWidth = 80 /*0x50*/;
    this.colDerePage.MinWidth = 10;
    this.colDerePage.Name = "colDerePage";
    this.colDerePage.OptionsColumn.AllowEdit = false;
    this.colDerePage.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDerePage.OptionsColumn.AllowMove = false;
    this.colDerePage.OptionsColumn.ReadOnly = true;
    this.colDerePage.Visible = true;
    this.colDerePage.VisibleIndex = 3;
    ((AppearanceOptions) this.colFosePage.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFosePage.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFosePage.Caption = "Deuda Forma Cons.";
    this.colFosePage.FieldName = "FosePage";
    this.colFosePage.MaxWidth = 110;
    this.colFosePage.MinWidth = 10;
    this.colFosePage.Name = "colFosePage";
    this.colFosePage.OptionsColumn.AllowEdit = false;
    this.colFosePage.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFosePage.OptionsColumn.AllowMove = false;
    this.colFosePage.OptionsColumn.ReadOnly = true;
    this.colFosePage.Visible = true;
    this.colFosePage.VisibleIndex = 4;
    this.colDicaPage.Caption = "Dir. Arch. Pago";
    this.colDicaPage.FieldName = "DicaPage";
    this.colDicaPage.MinWidth = 10;
    this.colDicaPage.Name = "colDicaPage";
    this.colDicaPage.OptionsColumn.AllowEdit = false;
    this.colDicaPage.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDicaPage.OptionsColumn.AllowMove = false;
    this.colDicaPage.OptionsColumn.ReadOnly = true;
    this.colDicaPage.Visible = true;
    this.colDicaPage.VisibleIndex = 5;
    this.colDicaPage.Width = 70;
    this.colDiprPage.Caption = "Dir. Cop. Arch.";
    this.colDiprPage.FieldName = "DiprPage";
    this.colDiprPage.MinWidth = 10;
    this.colDiprPage.Name = "colDiprPage";
    this.colDiprPage.OptionsColumn.AllowEdit = false;
    this.colDiprPage.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDiprPage.OptionsColumn.AllowMove = false;
    this.colDiprPage.OptionsColumn.ReadOnly = true;
    this.colDiprPage.Visible = true;
    this.colDiprPage.VisibleIndex = 6;
    this.colLepaPage.Caption = "Leyenda";
    this.colLepaPage.FieldName = "LepaPage";
    this.colLepaPage.MinWidth = 10;
    this.colLepaPage.Name = "colLepaPage";
    this.colLepaPage.OptionsColumn.AllowEdit = false;
    this.colLepaPage.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colLepaPage.OptionsColumn.AllowMove = false;
    this.colLepaPage.OptionsColumn.ReadOnly = true;
    this.colLepaPage.Visible = true;
    this.colLepaPage.VisibleIndex = 7;
    this.colAltaUsua.Caption = "Usuario Modif.";
    this.colAltaUsua.FieldName = "AltaUsua";
    this.colAltaUsua.MaxWidth = 90;
    this.colAltaUsua.MinWidth = 10;
    this.colAltaUsua.Name = "colAltaUsua";
    this.colAltaUsua.OptionsColumn.AllowEdit = false;
    this.colAltaUsua.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colAltaUsua.OptionsColumn.AllowMove = false;
    this.colAltaUsua.OptionsColumn.ReadOnly = true;
    this.colAltaUsua.Visible = true;
    this.colAltaUsua.VisibleIndex = 8;
    this.colAltaFeho.Caption = "Fecha";
    this.colAltaFeho.DisplayFormat.FormatString = "dd/MM/yyyy hh:mm:ss";
    this.colAltaFeho.DisplayFormat.FormatType = (FormatType) 2;
    this.colAltaFeho.FieldName = "AltaFeho";
    this.colAltaFeho.MaxWidth = 130;
    this.colAltaFeho.MinWidth = 10;
    this.colAltaFeho.Name = "colAltaFeho";
    this.colAltaFeho.OptionsColumn.AllowEdit = false;
    this.colAltaFeho.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colAltaFeho.OptionsColumn.AllowMove = false;
    this.colAltaFeho.OptionsColumn.ReadOnly = true;
    this.colAltaFeho.Visible = true;
    this.colAltaFeho.VisibleIndex = 9;
    this.pan2.Controls.Add((Control) this.metroLabel11);
    this.pan2.Dock = DockStyle.Top;
    this.pan2.Location = new Point(0, 0);
    this.pan2.Name = "pan2";
    this.pan2.Size = new Size(1008, 43);
    this.pan2.TabIndex = 2;
    this.metroLabel11.AutoSize = false;
    this.metroLabel11.Dock = DockStyle.Fill;
    this.metroLabel11.FontSize = 16f;
    this.metroLabel11.FontWeight = MetroFontWeight.Bold;
    this.metroLabel11.Location = new Point(0, 0);
    this.metroLabel11.Name = "metroLabel11";
    this.metroLabel11.Size = new Size(1008, 43);
    this.metroLabel11.TabIndex = 2;
    this.metroLabel11.Text = "HISTORIAL";
    this.metroLabel11.TextAlign = ContentAlignment.MiddleCenter;
    this.metroPanel1.Controls.Add((Control) this.btnConfirmar);
    this.metroPanel1.Controls.Add((Control) this.metroLabel10);
    this.metroPanel1.Controls.Add((Control) this.metroLabel9);
    this.metroPanel1.Controls.Add((Control) this.metroLabel8);
    this.metroPanel1.Controls.Add((Control) this.metroLabel7);
    this.metroPanel1.Controls.Add((Control) this.metroLabel6);
    this.metroPanel1.Controls.Add((Control) this.metroLabel5);
    this.metroPanel1.Controls.Add((Control) this.metroLabel4);
    this.metroPanel1.Controls.Add((Control) this.metroLabel3);
    this.metroPanel1.Controls.Add((Control) this.metroLabel2);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Controls.Add((Control) this.mtbLepaPage);
    this.metroPanel1.Controls.Add((Control) this.mtbDiprPage);
    this.metroPanel1.Controls.Add((Control) this.mtbDicaPage);
    this.metroPanel1.Controls.Add((Control) this.cboFosePage);
    this.metroPanel1.Controls.Add((Control) this.mdbDerePage);
    this.metroPanel1.Controls.Add((Control) this.mdbDecaPage);
    this.metroPanel1.Controls.Add((Control) this.mdbUntrPage);
    this.metroPanel1.Controls.Add((Control) this.mibPeriOrde);
    this.metroPanel1.Dock = DockStyle.Fill;
    this.metroPanel1.Location = new Point(0, 0);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(1008, 507);
    this.metroPanel1.TabIndex = 20;
    this.btnConfirmar.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.btnConfirmar.Location = new Point(455, 351);
    this.btnConfirmar.Name = "btnConfirmar";
    this.btnConfirmar.Size = new Size(111, 32 /*0x20*/);
    this.btnConfirmar.TabIndex = 28;
    this.btnConfirmar.Text = "CONFIRMAR";
    this.btnConfirmar.Click += new EventHandler(this.btnConfirmar_Click);
    this.metroLabel10.AutoSize = false;
    this.metroLabel10.Location = new Point(377, 121);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(20, 19);
    this.metroLabel10.TabIndex = 36;
    this.metroLabel10.Text = "%";
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(377, 86);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(20, 19);
    this.metroLabel9.TabIndex = 35;
    this.metroLabel9.Text = "%";
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(93, 260);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(195, 19);
    this.metroLabel8.TabIndex = 34;
    this.metroLabel8.Text = "Leyenda para todos los boletos:";
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(40, 225);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(248, 19);
    this.metroLabel7.TabIndex = 33;
    this.metroLabel7.Text = "Directorio Donde se Copian los Archivos:";
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(23, 190);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(265, 19);
    this.metroLabel6.TabIndex = 32 /*0x20*/;
    this.metroLabel6.Text = "Directorio de Captura de Archivos de Pago:";
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(39, 155);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(249, 19);
    this.metroLabel5.TabIndex = 31 /*0x1F*/;
    this.metroLabel5.Text = "Selecciona Deuda en Forma Consecutiva:";
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(144 /*0x90*/, 120);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(144 /*0x90*/, 19);
    this.metroLabel4.TabIndex = 30;
    this.metroLabel4.Text = "Descuento de Recargo:";
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(152, 85);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(136, 19);
    this.metroLabel3.TabIndex = 29;
    this.metroLabel3.Text = "Descuento de Capital:";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(50, 50);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(238, 19);
    this.metroLabel2.TabIndex = 27;
    this.metroLabel2.Text = "Valor de la Unidad Tributaria Municipal:";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(30, 15);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(258, 19);
    this.metroLabel1.TabIndex = 26;
    this.metroLabel1.Text = "Periodo Vigente de la Ordenanza Tarifaria:";
    this.mtbLepaPage.Location = new Point(300, 260);
    this.mtbLepaPage.Multiline = true;
    this.mtbLepaPage.Name = "mtbLepaPage";
    this.mtbLepaPage.ScrollBars = ScrollBars.Both;
    this.mtbLepaPage.Size = new Size(549, 66);
    this.mtbLepaPage.TabIndex = 25;
    this.mtbDiprPage.Location = new Point(300, 225);
    this.mtbDiprPage.MaxLength = 100;
    this.mtbDiprPage.Name = "mtbDiprPage";
    this.mtbDiprPage.Size = new Size(549, 23);
    this.mtbDiprPage.TabIndex = 24;
    this.mtbDicaPage.Location = new Point(300, 190);
    this.mtbDicaPage.MaxLength = 100;
    this.mtbDicaPage.Name = "mtbDicaPage";
    this.mtbDicaPage.Size = new Size(549, 23);
    this.mtbDicaPage.TabIndex = 23;
    this.cboFosePage.FormattingEnabled = false;
    this.cboFosePage.Location = new Point(300, 155);
    this.cboFosePage.Name = "cboFosePage";
    this.cboFosePage.Size = new Size(75, 23);
    this.cboFosePage.TabIndex = 22;
    this.mdbDerePage.Location = new Point(300, 120);
    this.mdbDerePage.MaxLength = 6;
    this.mdbDerePage.Name = "mdbDerePage";
    this.mdbDerePage.Size = new Size(75, 23);
    this.mdbDerePage.TabIndex = 21;
    this.mdbDerePage.TextAlign = HorizontalAlignment.Right;
    this.mdbDecaPage.Location = new Point(300, 85);
    this.mdbDecaPage.MaxLength = 6;
    this.mdbDecaPage.Name = "mdbDecaPage";
    this.mdbDecaPage.Size = new Size(75, 23);
    this.mdbDecaPage.TabIndex = 20;
    this.mdbDecaPage.TextAlign = HorizontalAlignment.Right;
    this.mdbUntrPage.Location = new Point(300, 50);
    this.mdbUntrPage.MaxLength = 6;
    this.mdbUntrPage.Name = "mdbUntrPage";
    this.mdbUntrPage.Size = new Size(75, 23);
    this.mdbUntrPage.TabIndex = 19;
    this.mdbUntrPage.TextAlign = HorizontalAlignment.Right;
    this.mibPeriOrde.Enabled = false;
    this.mibPeriOrde.Location = new Point(300, 15);
    this.mibPeriOrde.Name = "mibPeriOrde";
    this.mibPeriOrde.Size = new Size(75, 23);
    this.mibPeriOrde.TabIndex = 18;
    this.mibPeriOrde.TextAlign = HorizontalAlignment.Center;
    this.metroPanel2.Controls.Add((Control) this.metroPanel1);
    this.metroPanel2.Controls.Add((Control) this.pan1);
    this.metroPanel2.Dock = DockStyle.Fill;
    this.metroPanel2.Location = new Point(0, 0);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.Size = new Size(1008, 729);
    this.metroPanel2.TabIndex = 21;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1008, 729);
    this.Controls.Add((Control) this.metroPanel2);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmParametrosGenerales);
    this.ShowIcon = false;
    this.Text = "Parámetros Generales";
    this.pan1.ResumeLayout(false);
    this.pan3.ResumeLayout(false);
    ((ISupportInitialize) this.gridHistorial).EndInit();
    ((ISupportInitialize) this.viewHistorial).EndInit();
    this.pan2.ResumeLayout(false);
    this.metroPanel1.ResumeLayout(false);
    this.metroPanel2.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
