// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.mdlCajaMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
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
using InfoGov.Utils;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class mdlCajaMP : BaseForm
{
  private DTOAcrePagoMP _dto;
  private List<DTOAcrePagoMP> cajasActivas = new List<DTOAcrePagoMP>();
  private List<EnteRecaMP> entesRecas = new List<EnteRecaMP>();
  private ExpBoletoCajaMP _expBole;
  private DateTime hoy;
  private IContainer components = (IContainer) null;
  private MetroButton btnCerrar;
  private SimpleButton btnAceptar;
  private MetroLabel metroLabel1;
  private GroupBox gpbOpciones;
  private MetroRadioButton rbtnNueva;
  private MetroRadioButton rbtnExistente;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel2;
  private MetroLabel lblUsuario;
  private MetroLabel lblCaja;
  private MetroTextBox txtUsuario;
  private MetroComboBox cboEnteReca;
  private MetroDecimalTextBox mdbMontoInicial;
  private GridControl gridControlCajas;
  private GridView gridViewCajas;
  private GridColumn colFecha;
  private GridColumn colEnteReca;
  private GridColumn colSaldoInicial;
  private MetroDateTextBox dtbFeenAcpa;
  private MetroLabel metroLabel4;
  private GridColumn colGrupo;

  public mdlCajaMP(DTOAcrePagoMP dto, ExpBoletoCajaMP exp)
  {
    this.InitializeComponent();
    this._dto = dto;
    this._expBole = exp;
    this.CargarEnteReca();
    this.CargarCajasActivas();
    this.hoy = Misc.Now();
    this.txtUsuario.Text = Misc.Usuario;
    this.dtbFeenAcpa.Date = this.hoy;
    this.rbtnNueva.Checked = true;
  }

  private void CargarEnteReca()
  {
    this.cboEnteReca.DisplayMember = "Text";
    this.cboEnteReca.ValueMember = "Value";
    this._expBole.EnteRecaUsua(this.entesRecas);
    foreach (EnteRecaMP entesReca in this.entesRecas)
      this.cboEnteReca.Items.Add((object) new ComboBoxItem(entesReca.DetaEnre, (object) entesReca.CodiEnre));
    if (this.cboEnteReca.Items == null || this.cboEnteReca.Items.Count <= 0)
      return;
    this.cboEnteReca.SelectedIndex = 0;
  }

  private void CargarCajasActivas()
  {
    this._expBole.BuscarCajasActivas(this.cajasActivas);
    this.gridControlCajas.DataSource = (object) this.cajasActivas;
    ((BaseView) this.gridViewCajas).RefreshData();
    ((ColumnView) this.gridViewCajas).FocusInvalidRow();
  }

  private void LimpiarCampos(bool ReestablecerFila = true)
  {
    this.dtbFeenAcpa.Date = this.hoy;
    if (this.cboEnteReca.Items != null && this.cboEnteReca.Items.Count > 0)
      this.cboEnteReca.SelectedIndex = 0;
    this.mdbMontoInicial.Text = string.Empty;
    if (!ReestablecerFila)
      return;
    ((ColumnView) this.gridViewCajas).FocusInvalidRow();
  }

  private void CheckedChanged(object sender, EventArgs e)
  {
    this.LimpiarCampos();
    this.dtbFeenAcpa.Enabled = this.cboEnteReca.Enabled = this.mdbMontoInicial.Enabled = this.rbtnNueva.Checked;
    this.lblCaja.Visible = ((Control) this.gridControlCajas).Visible = ((Control) this.gridControlCajas).Enabled = this.rbtnExistente.Checked;
    if (this.rbtnNueva.Checked)
    {
      this.gpbOpciones.Size = new Size(530, 181);
      this.Size = new Size(554, 282);
      this.dtbFeenAcpa.Focus();
    }
    else
    {
      this.gpbOpciones.Size = new Size(530, 293);
      this.Size = new Size(554, 396);
    }
  }

  private void gridViewCajas_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    if (!(((ColumnView) this.gridViewCajas).GetFocusedRow() is DTOAcrePagoMP focusedRow))
    {
      this.LimpiarCampos();
    }
    else
    {
      this.dtbFeenAcpa.Date = focusedRow.FeenAcpa;
      this.cboEnteReca.SelectedValue = (object) focusedRow.CodiEnre;
      this.mdbMontoInicial.Text = focusedRow.MoinAcpa.ToString("C2");
    }
  }

  private void btnAceptar_Click(object sender, EventArgs e)
  {
    bool flag = this.rbtnNueva.Checked;
    List<string> errores = new List<string>();
    if (flag)
    {
      if (string.IsNullOrWhiteSpace(this.txtUsuario.Text))
        errores.Add("Usuario incorrecto.");
      if (this.dtbFeenAcpa.Date == DateTime.MinValue || this.dtbFeenAcpa.Date > this.hoy.Date)
        errores.Add("Fecha incorrecta.");
      if (this.cboEnteReca.Items == null || this.cboEnteReca.Items.Count == 0 || this.cboEnteReca.SelectedItem == null)
        errores.Add("Ente recaudador incorrecto.");
      if (this.mdbMontoInicial.DecimalText <= 0M)
        errores.Add("Importe inicial incorrecto.");
      if (errores.Count == 0 && this._expBole.CajaDiariaAbierta(this.dtbFeenAcpa.Date, short.Parse(((ComboBoxItem) this.cboEnteReca.SelectedItem).Value.ToString())))
        errores.Add("Ya existe una caja abierta para \nel ente seleccionado.");
      if (errores.Count > 0)
      {
        new dlgErrorList((Form) null).mostarError(errores);
      }
      else
      {
        this._dto.UsuaAcpa = this.txtUsuario.Text.Trim();
        this._dto.FeenAcpa = this.dtbFeenAcpa.Date;
        this._dto.CodiEnre = short.Parse(((ComboBoxItem) this.cboEnteReca.SelectedItem).Value.ToString());
        this._dto.DetaEnre = ((ComboBoxItem) this.cboEnteReca.SelectedItem).Text;
        this._dto.MoinAcpa = this.mdbMontoInicial.DecimalText;
        if (!this._expBole.CrearNuevaCaja(this._dto))
          ToastHelper.ShowOrFallback((Form) null, "No se pudo crear la nueva caja. Verificar...", ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
        else
          this.DialogResult = DialogResult.OK;
      }
    }
    else if (!(((ColumnView) this.gridViewCajas).GetFocusedRow() is DTOAcrePagoMP focusedRow))
    {
      ToastHelper.ShowOrFallback((Form) null, "NO se selecciono una caja.", ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
    }
    else
    {
      this._dto.UsuaAcpa = focusedRow.UsuaAcpa;
      this._dto.FeenAcpa = focusedRow.FeenAcpa;
      this._dto.NumeAcpa = focusedRow.NumeAcpa;
      this._dto.CodiEnre = focusedRow.CodiEnre;
      this._dto.DetaEnre = focusedRow.DetaEnre;
      this._dto.MoinAcpa = focusedRow.MoinAcpa;
      this.DialogResult = DialogResult.OK;
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (mdlCajaMP));
    this.btnCerrar = new MetroButton();
    this.btnAceptar = new SimpleButton();
    this.metroLabel1 = new MetroLabel();
    this.gpbOpciones = new GroupBox();
    this.dtbFeenAcpa = new MetroDateTextBox();
    this.metroLabel4 = new MetroLabel();
    this.gridControlCajas = new GridControl();
    this.gridViewCajas = new GridView();
    this.colFecha = new GridColumn();
    this.colGrupo = new GridColumn();
    this.colEnteReca = new GridColumn();
    this.colSaldoInicial = new GridColumn();
    this.mdbMontoInicial = new MetroDecimalTextBox();
    this.txtUsuario = new MetroTextBox();
    this.cboEnteReca = new MetroComboBox();
    this.lblCaja = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.lblUsuario = new MetroLabel();
    this.rbtnExistente = new MetroRadioButton();
    this.rbtnNueva = new MetroRadioButton();
    this.gpbOpciones.SuspendLayout();
    ((ISupportInitialize) this.gridControlCajas).BeginInit();
    ((ISupportInitialize) this.gridViewCajas).BeginInit();
    this.SuspendLayout();
    this.btnCerrar.DialogResult = DialogResult.Cancel;
    this.btnCerrar.Location = new Point(521, 5);
    this.btnCerrar.Name = "btnCerrar";
    this.btnCerrar.Size = new Size(23, 23);
    this.btnCerrar.TabIndex = 5;
    this.btnCerrar.Text = "X";
    ((Control) this.btnAceptar).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((BaseStyleControl) this.btnAceptar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnAceptar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnAceptar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnAceptar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnAceptar.ImageOptions.Image");
    ((Control) this.btnAceptar).Location = new Point(222, 350);
    ((Control) this.btnAceptar).Name = "btnAceptar";
    ((Control) this.btnAceptar).Size = new Size(100, 34);
    ((Control) this.btnAceptar).TabIndex = 6;
    ((Control) this.btnAceptar).TabStop = false;
    ((Control) this.btnAceptar).Text = "ACEPTAR";
    ((Control) this.btnAceptar).Click += new EventHandler(this.btnAceptar_Click);
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Dock = DockStyle.Top;
    this.metroLabel1.FontSize = 16f;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(0, 0);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(554, 30);
    this.metroLabel1.TabIndex = 7;
    this.metroLabel1.Text = "CAJAS";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleCenter;
    this.gpbOpciones.Controls.Add((Control) this.dtbFeenAcpa);
    this.gpbOpciones.Controls.Add((Control) this.metroLabel4);
    this.gpbOpciones.Controls.Add((Control) this.gridControlCajas);
    this.gpbOpciones.Controls.Add((Control) this.mdbMontoInicial);
    this.gpbOpciones.Controls.Add((Control) this.txtUsuario);
    this.gpbOpciones.Controls.Add((Control) this.cboEnteReca);
    this.gpbOpciones.Controls.Add((Control) this.lblCaja);
    this.gpbOpciones.Controls.Add((Control) this.metroLabel3);
    this.gpbOpciones.Controls.Add((Control) this.metroLabel2);
    this.gpbOpciones.Controls.Add((Control) this.lblUsuario);
    this.gpbOpciones.Controls.Add((Control) this.rbtnExistente);
    this.gpbOpciones.Controls.Add((Control) this.rbtnNueva);
    this.gpbOpciones.Location = new Point(12, 51);
    this.gpbOpciones.Name = "gpbOpciones";
    this.gpbOpciones.Size = new Size(530, 293);
    this.gpbOpciones.TabIndex = 8;
    this.gpbOpciones.TabStop = false;
    this.gpbOpciones.Text = "Opciones";
    this.dtbFeenAcpa.Location = new Point(120, 79);
    this.dtbFeenAcpa.Name = "dtbFeenAcpa";
    this.dtbFeenAcpa.Size = new Size(90, 25);
    this.dtbFeenAcpa.TabIndex = 3;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.FontSize = 16f;
    this.metroLabel4.Location = new Point(54, 79);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(53, 21);
    this.metroLabel4.TabIndex = 205;
    this.metroLabel4.Text = "Fecha:";
    ((Control) this.gridControlCajas).Location = new Point(120, 183);
    this.gridControlCajas.MainView = (BaseView) this.gridViewCajas;
    ((Control) this.gridControlCajas).Name = "gridControlCajas";
    ((Control) this.gridControlCajas).Size = new Size(404, 104);
    ((Control) this.gridControlCajas).TabIndex = 204;
    ((Control) this.gridControlCajas).TabStop = false;
    this.gridControlCajas.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewCajas
    });
    this.gridViewCajas.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewCajas.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewCajas.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewCajas).Columns.AddRange(new GridColumn[4]
    {
      this.colFecha,
      this.colGrupo,
      this.colEnteReca,
      this.colSaldoInicial
    });
    this.gridViewCajas.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewCajas).GridControl = this.gridControlCajas;
    ((BaseView) this.gridViewCajas).Name = "gridViewCajas";
    ((ColumnViewOptionsBehavior) this.gridViewCajas.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewCajas.OptionsBehavior).ReadOnly = true;
    this.gridViewCajas.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewCajas.OptionsCustomization.AllowGroup = false;
    this.gridViewCajas.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewCajas.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewCajas.OptionsView.ShowGroupPanel = false;
    this.gridViewCajas.OptionsView.ShowIndicator = false;
    ((ColumnView) this.gridViewCajas).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridViewCajas_FocusedRowChanged);
    ((AppearanceOptions) this.colFecha.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFecha.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFecha.Caption = "Fecha";
    this.colFecha.DisplayFormat.FormatString = "d";
    this.colFecha.DisplayFormat.FormatType = (FormatType) 2;
    this.colFecha.FieldName = "FeenAcpa";
    this.colFecha.MaxWidth = 80 /*0x50*/;
    this.colFecha.Name = "colFecha";
    this.colFecha.OptionsColumn.AllowEdit = false;
    this.colFecha.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFecha.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colFecha.OptionsColumn.AllowMove = false;
    this.colFecha.OptionsColumn.AllowShowHide = false;
    this.colFecha.OptionsColumn.AllowSize = false;
    this.colFecha.OptionsColumn.ReadOnly = true;
    this.colFecha.OptionsColumn.TabStop = false;
    this.colFecha.Visible = true;
    this.colFecha.VisibleIndex = 0;
    this.colFecha.Width = 60;
    ((AppearanceOptions) this.colGrupo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colGrupo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colGrupo.Caption = "Grupo";
    this.colGrupo.FieldName = "NumeAcpa";
    this.colGrupo.MaxWidth = 40;
    this.colGrupo.Name = "colGrupo";
    this.colGrupo.OptionsColumn.AllowEdit = false;
    this.colGrupo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colGrupo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colGrupo.OptionsColumn.AllowMove = false;
    this.colGrupo.OptionsColumn.AllowShowHide = false;
    this.colGrupo.OptionsColumn.ReadOnly = true;
    this.colGrupo.OptionsColumn.TabStop = false;
    this.colGrupo.Visible = true;
    this.colGrupo.VisibleIndex = 1;
    this.colGrupo.Width = 30;
    this.colEnteReca.Caption = "Ente Recaudador";
    this.colEnteReca.FieldName = "DetaEnre";
    this.colEnteReca.Name = "colEnteReca";
    this.colEnteReca.OptionsColumn.AllowEdit = false;
    this.colEnteReca.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colEnteReca.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colEnteReca.OptionsColumn.AllowMove = false;
    this.colEnteReca.OptionsColumn.AllowShowHide = false;
    this.colEnteReca.OptionsColumn.ReadOnly = true;
    this.colEnteReca.OptionsColumn.TabStop = false;
    this.colEnteReca.Visible = true;
    this.colEnteReca.VisibleIndex = 2;
    ((AppearanceOptions) this.colSaldoInicial.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colSaldoInicial.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colSaldoInicial.Caption = "Monto Inicial";
    this.colSaldoInicial.DisplayFormat.FormatString = "{0:C2}";
    this.colSaldoInicial.DisplayFormat.FormatType = (FormatType) 3;
    this.colSaldoInicial.FieldName = "MoinAcpa";
    this.colSaldoInicial.MaxWidth = 100;
    this.colSaldoInicial.Name = "colSaldoInicial";
    this.colSaldoInicial.OptionsColumn.AllowEdit = false;
    this.colSaldoInicial.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colSaldoInicial.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colSaldoInicial.OptionsColumn.AllowMove = false;
    this.colSaldoInicial.OptionsColumn.AllowShowHide = false;
    this.colSaldoInicial.OptionsColumn.ReadOnly = true;
    this.colSaldoInicial.OptionsColumn.TabStop = false;
    this.colSaldoInicial.Visible = true;
    this.colSaldoInicial.VisibleIndex = 3;
    this.mdbMontoInicial.Location = new Point(120, 151);
    this.mdbMontoInicial.MaxLength = 10;
    this.mdbMontoInicial.Name = "mdbMontoInicial";
    this.mdbMontoInicial.Size = new Size(160 /*0xA0*/, 23);
    this.mdbMontoInicial.TabIndex = 5;
    this.mdbMontoInicial.TextAlign = HorizontalAlignment.Right;
    this.txtUsuario.Location = new Point(120, 44);
    this.txtUsuario.Name = "txtUsuario";
    this.txtUsuario.ReadOnly = true;
    this.txtUsuario.Size = new Size(160 /*0xA0*/, 23);
    this.txtUsuario.TabIndex = 10;
    this.txtUsuario.TabStop = false;
    this.txtUsuario.TextAlign = HorizontalAlignment.Center;
    this.cboEnteReca.FormattingEnabled = false;
    this.cboEnteReca.Location = new Point(120, 116);
    this.cboEnteReca.Name = "cboEnteReca";
    this.cboEnteReca.Size = new Size(244, 23);
    this.cboEnteReca.TabIndex = 4;
    this.lblCaja.AutoSize = false;
    this.lblCaja.FontSize = 16f;
    this.lblCaja.Location = new Point(9, 183);
    this.lblCaja.Name = "lblCaja";
    this.lblCaja.Size = new Size(99, 21);
    this.lblCaja.TabIndex = 8;
    this.lblCaja.Text = "Cajas Activas:";
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.FontSize = 16f;
    this.metroLabel3.Location = new Point(8, 149);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(100, 21);
    this.metroLabel3.TabIndex = 7;
    this.metroLabel3.Text = "Monto Inicial:";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.FontSize = 16f;
    this.metroLabel2.Location = new Point(24, 116);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(84, 21);
    this.metroLabel2.TabIndex = 6;
    this.metroLabel2.Text = "Ente Reca.:";
    this.lblUsuario.AutoSize = false;
    this.lblUsuario.FontSize = 16f;
    this.lblUsuario.Location = new Point(40, 44);
    this.lblUsuario.Name = "lblUsuario";
    this.lblUsuario.Size = new Size(68, 21);
    this.lblUsuario.TabIndex = 5;
    this.lblUsuario.Text = "Usuario: ";
    this.rbtnExistente.AutoSize = false;
    this.rbtnExistente.Location = new Point(121, 22);
    this.rbtnExistente.Name = "rbtnExistente";
    this.rbtnExistente.Size = new Size(159, 15);
    this.rbtnExistente.TabIndex = 2;
    this.rbtnExistente.TabStop = true;
    this.rbtnExistente.Text = "SELECCIONAR EXISTENTE";
    this.rbtnExistente.CheckedChanged += new EventHandler(this.CheckedChanged);
    this.rbtnNueva.AutoSize = false;
    this.rbtnNueva.Location = new Point(9, 22);
    this.rbtnNueva.Name = "rbtnNueva";
    this.rbtnNueva.Size = new Size(99, 15);
    this.rbtnNueva.TabIndex = 1;
    this.rbtnNueva.TabStop = true;
    this.rbtnNueva.Text = "CREAR NUEVA";
    this.rbtnNueva.CheckedChanged += new EventHandler(this.CheckedChanged);
    this.AcceptButton = (IButtonControl) this.btnAceptar;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.CancelButton = (IButtonControl) this.btnCerrar;
    this.ClientSize = new Size(554, 396);
    this.ControlBox = false;
    this.Controls.Add((Control) this.gpbOpciones);
    this.Controls.Add((Control) this.btnAceptar);
    this.Controls.Add((Control) this.btnCerrar);
    this.Controls.Add((Control) this.metroLabel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.FixedSingle;
    this.Name = nameof (mdlCajaMP);
    this.StartPosition = FormStartPosition.CenterParent;
    this.gpbOpciones.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlCajas).EndInit();
    ((ISupportInitialize) this.gridViewCajas).EndInit();
    this.ResumeLayout(false);
  }
}
