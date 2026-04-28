// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.dlgCargaAforoSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class dlgCargaAforoSM : BaseForm
{
  private ExpAforoComeSM exp;
  internal DTOAforo enti;
  private List<AforoComeSM> aforos;
  private Decimal importeUT;
  internal string serviciosUtilizados;
  private IContainer components = (IContainer) null;
  private MetroPanel metroPanel1;
  private MetroPanel metroPanel3;
  private MetroLabel metroLabel2;
  private MetroPanel metroPanel2;
  private MetroLabel metroLabel1;
  private MetroButton btnCancelar;
  private MetroButton btnConfirmar;
  private MetroDecimalTextBox mdbValor;
  private MetroLabel metroLabel3;
  private MetroPanel metroPanel4;
  private MetroPanel metroPanel5;
  private MetroTextBox txtDetalle;
  private MetroLabel metroLabel5;
  private MetroTextBox txtCodigo;
  private MetroLabel metroLabel4;
  private GridControl gridAforos;
  private GridView viewAforos;
  private GridColumn colCodigo;
  private GridColumn colDeta;
  private GridColumn colValor;
  private GridColumn colUnidadMedida;
  private MetroDecimalTextBox mdbCant;
  private MetroLabel lblValorUt;

  public dlgCargaAforoSM(string servicios, DateTime fecha)
  {
    this.InitializeComponent();
    this.exp = new ExpAforoComeSM();
    this.enti = new DTOAforo();
    this.aforos = new List<AforoComeSM>();
    this.serviciosUtilizados = servicios;
    this.importeUT = this.exp.ImporteUT(fecha);
    this.aforos = this.exp.ObtenerListadoAfco(this.serviciosUtilizados);
    this.gridAforos.DataSource = (object) this.aforos;
    ((Control) this.gridAforos).Refresh();
    this.lblValorUt.UseCustomForeColor = true;
    this.lblValorUt.ForeColor = Color.Red;
    this.lblValorUt.Text = $"Importe UT: {this.importeUT:C6}";
  }

  private bool Validar()
  {
    List<string> errores = new List<string>();
    if (((ColumnView) this.viewAforos).GetSelectedRows() == null || ((ColumnView) this.viewAforos).GetSelectedRows().Length == 0)
      errores.Add("No hay fila seleccionada.");
    if (this.mdbCant.DecimalText <= 0M)
      errores.Add("Cantidad incorrecta.");
    if (this.mdbValor.DecimalText <= 0M)
      errores.Add("Valor incorrecto.");
    if (errores.Count <= 0)
      return true;
    new dlgErrorList((Form) this).mostarError(errores);
    return false;
  }

  private void LimpiarCampos()
  {
    this.txtCodigo.Text = this.txtDetalle.Text = this.mdbValor.Text = string.Empty;
    this.mdbCant.DecimalText = 1M;
    this.mdbValor.Enabled = false;
    this.gridAforos.DataSource = (object) this.aforos;
    ((Control) this.gridAforos).Refresh();
  }

  private void btnConfirmar_Click(object sender, EventArgs e)
  {
    try
    {
      if (!this.Validar())
        return;
      AforoComeSM row = (AforoComeSM) ((BaseView) this.viewAforos).GetRow(((ColumnView) this.viewAforos).GetSelectedRows()[0]);
      this.enti.Cantidad = this.mdbCant.DecimalText;
      this.enti.Codigo = row.CodiSeac;
      this.enti.Detalle = row.DetaSeac;
      this.enti.Valor = this.mdbValor.DecimalText;
      this.enti.UnidadMedida = row.UnmeSeac;
      this.enti.Total = this.enti.Cantidad * this.enti.Valor * (this.enti.UnidadMedida == "UT" ? this.importeUT : 1M);
      this.enti.Periodo = row.PeriOrde;
      this.enti.Concepto = row.CodiConc;
      this.enti.TipoAforo = row.TiafConc;
      this.DialogResult = DialogResult.OK;
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError("No se pudo guardar el servicio. Error: " + ex.Message);
      this.LimpiarCampos();
    }
  }

  private void FiltrarGrilla(object sender, KeyEventArgs e)
  {
    this.gridAforos.DataSource = !(((Control) sender).Tag.ToString() == "Codigo") ? (object) this.aforos.Where<AforoComeSM>((Func<AforoComeSM, bool>) (x => x.DetaSeac.ToUpper().Contains(this.txtDetalle.Text.Trim().ToUpper()))).ToList<AforoComeSM>() : (object) this.aforos.Where<AforoComeSM>((Func<AforoComeSM, bool>) (x => x.CodiSeac.ToString().Contains(this.txtCodigo.Text.Trim()))).ToList<AforoComeSM>();
    ((Control) this.gridAforos).Refresh();
  }

  private void SoloNumeros(object sender, KeyEventArgs e)
  {
    if (e.KeyCode == Keys.Back)
      e.SuppressKeyPress = false;
    else if (e.KeyValue >= 48 /*0x30*/ && e.KeyValue <= 57 || e.KeyValue >= 96 /*0x60*/ && e.KeyValue <= 105)
      e.SuppressKeyPress = false;
    else
      e.SuppressKeyPress = true;
  }

  private void viewAforos_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    try
    {
      int[] selectedRows = ((ColumnView) this.viewAforos).GetSelectedRows();
      if (selectedRows == null || selectedRows.Length != 1 || selectedRows[0] < 0)
        return;
      AforoComeSM row = (AforoComeSM) ((BaseView) this.viewAforos).GetRow(selectedRows[0]);
      this.mdbValor.Enabled = row.VariSeac;
      this.mdbValor.DecimalText = row.ValoSeac;
    }
    catch (Exception ex)
    {
    }
  }

  private void dlgCargaAforoSM_Shown(object sender, EventArgs e) => this.txtDetalle.Focus();

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.metroPanel1 = new MetroPanel();
    this.metroPanel4 = new MetroPanel();
    this.gridAforos = new GridControl();
    this.viewAforos = new GridView();
    this.colCodigo = new GridColumn();
    this.colDeta = new GridColumn();
    this.colValor = new GridColumn();
    this.colUnidadMedida = new GridColumn();
    this.metroPanel5 = new MetroPanel();
    this.txtDetalle = new MetroTextBox();
    this.metroLabel5 = new MetroLabel();
    this.txtCodigo = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.metroPanel3 = new MetroPanel();
    this.btnCancelar = new MetroButton();
    this.btnConfirmar = new MetroButton();
    this.mdbValor = new MetroDecimalTextBox();
    this.metroLabel3 = new MetroLabel();
    this.mdbCant = new MetroDecimalTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroPanel2 = new MetroPanel();
    this.metroLabel1 = new MetroLabel();
    this.lblValorUt = new MetroLabel();
    this.metroPanel1.SuspendLayout();
    this.metroPanel4.SuspendLayout();
    ((ISupportInitialize) this.gridAforos).BeginInit();
    ((ISupportInitialize) this.viewAforos).BeginInit();
    this.metroPanel5.SuspendLayout();
    this.metroPanel3.SuspendLayout();
    this.metroPanel2.SuspendLayout();
    this.SuspendLayout();
    this.metroPanel1.Controls.Add((Control) this.metroPanel4);
    this.metroPanel1.Controls.Add((Control) this.metroPanel3);
    this.metroPanel1.Controls.Add((Control) this.metroPanel2);
    this.metroPanel1.Dock = DockStyle.Fill;
    this.metroPanel1.Location = new Point(0, 0);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(568, 399);
    this.metroPanel1.TabIndex = 0;
    this.metroPanel4.Controls.Add((Control) this.gridAforos);
    this.metroPanel4.Controls.Add((Control) this.metroPanel5);
    this.metroPanel4.Dock = DockStyle.Fill;
    this.metroPanel4.Location = new Point(0, 34);
    this.metroPanel4.Name = "metroPanel4";
    this.metroPanel4.Size = new Size(568, 270);
    this.metroPanel4.TabIndex = 4;
    ((Control) this.gridAforos).Dock = DockStyle.Fill;
    ((Control) this.gridAforos).Location = new Point(0, 42);
    this.gridAforos.MainView = (BaseView) this.viewAforos;
    ((Control) this.gridAforos).Name = "gridAforos";
    ((Control) this.gridAforos).Size = new Size(568, 228);
    ((Control) this.gridAforos).TabIndex = 3;
    this.gridAforos.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewAforos
    });
    this.viewAforos.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewAforos.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewAforos).Columns.AddRange(new GridColumn[4]
    {
      this.colCodigo,
      this.colDeta,
      this.colValor,
      this.colUnidadMedida
    });
    this.viewAforos.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.viewAforos).GridControl = this.gridAforos;
    ((BaseView) this.viewAforos).Name = "viewAforos";
    ((ColumnViewOptionsBehavior) this.viewAforos.OptionsBehavior).ReadOnly = true;
    this.viewAforos.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewAforos.OptionsSelection.EnableAppearanceHideSelection = false;
    this.viewAforos.OptionsSelection.UseIndicatorForSelection = false;
    this.viewAforos.OptionsView.ShowGroupPanel = false;
    this.viewAforos.OptionsView.ShowIndicator = false;
    ((ColumnView) this.viewAforos).FocusedRowChanged += new FocusedRowChangedEventHandler(this.viewAforos_FocusedRowChanged);
    this.colCodigo.Caption = "Código";
    this.colCodigo.FieldName = "CodiSeac";
    this.colCodigo.MaxWidth = 100;
    this.colCodigo.Name = "colCodigo";
    this.colCodigo.OptionsColumn.AllowEdit = false;
    this.colCodigo.Visible = true;
    this.colCodigo.VisibleIndex = 0;
    this.colDeta.Caption = "Detalle";
    this.colDeta.FieldName = "DetaSeac";
    this.colDeta.Name = "colDeta";
    this.colDeta.OptionsColumn.AllowEdit = false;
    this.colDeta.Visible = true;
    this.colDeta.VisibleIndex = 1;
    this.colValor.Caption = "Valor";
    this.colValor.FieldName = "ValoSeac";
    this.colValor.MaxWidth = 75;
    this.colValor.Name = "colValor";
    this.colValor.OptionsColumn.AllowEdit = false;
    this.colValor.Visible = true;
    this.colValor.VisibleIndex = 2;
    this.colUnidadMedida.Caption = "Unidad";
    this.colUnidadMedida.FieldName = "UnmeSeac";
    this.colUnidadMedida.MaxWidth = 70;
    this.colUnidadMedida.Name = "colUnidadMedida";
    this.colUnidadMedida.OptionsColumn.AllowEdit = false;
    this.colUnidadMedida.Visible = true;
    this.colUnidadMedida.VisibleIndex = 3;
    this.colUnidadMedida.Width = 70;
    this.metroPanel5.Controls.Add((Control) this.txtDetalle);
    this.metroPanel5.Controls.Add((Control) this.metroLabel5);
    this.metroPanel5.Controls.Add((Control) this.txtCodigo);
    this.metroPanel5.Controls.Add((Control) this.metroLabel4);
    this.metroPanel5.Dock = DockStyle.Top;
    this.metroPanel5.Location = new Point(0, 0);
    this.metroPanel5.Name = "metroPanel5";
    this.metroPanel5.Size = new Size(568, 42);
    this.metroPanel5.TabIndex = 2;
    this.txtDetalle.Location = new Point(280, 9);
    this.txtDetalle.MaxLength = 100;
    this.txtDetalle.Name = "txtDetalle";
    this.txtDetalle.Size = new Size(273, 23);
    this.txtDetalle.TabIndex = 2;
    this.txtDetalle.Tag = (object) "Detalle";
    this.txtDetalle.KeyUp += new KeyEventHandler(this.FiltrarGrilla);
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(210, 12);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(58, 19);
    this.metroLabel5.TabIndex = 4;
    this.metroLabel5.Text = "DETALLE";
    this.txtCodigo.Location = new Point(80 /*0x50*/, 9);
    this.txtCodigo.MaxLength = 20;
    this.txtCodigo.Name = "txtCodigo";
    this.txtCodigo.Size = new Size(102, 23);
    this.txtCodigo.TabIndex = 1;
    this.txtCodigo.Tag = (object) "Codigo";
    this.txtCodigo.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.txtCodigo.KeyUp += new KeyEventHandler(this.FiltrarGrilla);
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(15, 12);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(61, 19);
    this.metroLabel4.TabIndex = 2;
    this.metroLabel4.Text = "CODIGO";
    this.metroPanel3.Controls.Add((Control) this.lblValorUt);
    this.metroPanel3.Controls.Add((Control) this.btnCancelar);
    this.metroPanel3.Controls.Add((Control) this.btnConfirmar);
    this.metroPanel3.Controls.Add((Control) this.mdbValor);
    this.metroPanel3.Controls.Add((Control) this.metroLabel3);
    this.metroPanel3.Controls.Add((Control) this.mdbCant);
    this.metroPanel3.Controls.Add((Control) this.metroLabel2);
    this.metroPanel3.Dock = DockStyle.Bottom;
    this.metroPanel3.Location = new Point(0, 304);
    this.metroPanel3.Name = "metroPanel3";
    this.metroPanel3.Size = new Size(568, 95);
    this.metroPanel3.TabIndex = 3;
    this.btnCancelar.DialogResult = DialogResult.Cancel;
    this.btnCancelar.Location = new Point(305, 51);
    this.btnCancelar.Name = "btnCancelar";
    this.btnCancelar.Size = new Size(75, 29);
    this.btnCancelar.TabIndex = 7;
    this.btnCancelar.Text = "CANCELAR";
    this.btnConfirmar.Location = new Point(194, 51);
    this.btnConfirmar.Name = "btnConfirmar";
    this.btnConfirmar.Size = new Size(75, 29);
    this.btnConfirmar.TabIndex = 6;
    this.btnConfirmar.Text = "CONFIRMAR";
    this.btnConfirmar.Click += new EventHandler(this.btnConfirmar_Click);
    this.mdbValor.Enabled = false;
    this.mdbValor.Location = new Point(248, 12);
    this.mdbValor.MaxLength = 12;
    this.mdbValor.Name = "mdbValor";
    this.mdbValor.Size = new Size(77, 23);
    this.mdbValor.TabIndex = 5;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(196, 12);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(40, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Valor";
    this.mdbCant.DecimalText = new Decimal(new int[4]
    {
      1,
      0,
      0,
      0
    });
    this.mdbCant.Location = new Point(89, 12);
    this.mdbCant.MaxLength = 8;
    this.mdbCant.Name = "mdbCant";
    this.mdbCant.Size = new Size(59, 23);
    this.mdbCant.TabIndex = 4;
    this.mdbCant.Text = "1";
    this.mdbCant.TextAlign = HorizontalAlignment.Center;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(15, 12);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(62, 19);
    this.metroLabel2.TabIndex = 2;
    this.metroLabel2.Text = "Cantidad";
    this.metroPanel2.Controls.Add((Control) this.metroLabel1);
    this.metroPanel2.Dock = DockStyle.Top;
    this.metroPanel2.Location = new Point(0, 0);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.Size = new Size(568, 34);
    this.metroPanel2.TabIndex = 2;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Dock = DockStyle.Fill;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(0, 0);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(568, 34);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Cargar Nuevo Servicio";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleCenter;
    this.lblValorUt.AutoSize = false;
    this.lblValorUt.Location = new Point(388, 12);
    this.lblValorUt.Name = "lblValorUt";
    this.lblValorUt.Size = new Size(165, 23);
    this.lblValorUt.TabIndex = 8;
    this.lblValorUt.Text = "Importe UT: $0.00";
    this.AcceptButton = (IButtonControl) this.btnConfirmar;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.CancelButton = (IButtonControl) this.btnCancelar;
    this.ClientSize = new Size(568, 399);
    this.ControlBox = false;
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (dlgCargaAforoSM);
    this.ShowIcon = false;
    this.ShowInTaskbar = false;
    this.StartPosition = FormStartPosition.CenterParent;
    this.Text = "Aforos y Servicios";
    this.Shown += new EventHandler(this.dlgCargaAforoSM_Shown);
    this.metroPanel1.ResumeLayout(false);
    this.metroPanel4.ResumeLayout(false);
    ((ISupportInitialize) this.gridAforos).EndInit();
    ((ISupportInitialize) this.viewAforos).EndInit();
    this.metroPanel5.ResumeLayout(false);
    this.metroPanel3.ResumeLayout(false);
    this.metroPanel2.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
