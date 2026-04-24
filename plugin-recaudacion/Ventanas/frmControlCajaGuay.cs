// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmControlCajaGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraEditors.Container;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraEditors.Repository;
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

public class frmControlCajaGuay : BaseForm
{
  private ExpControlCajaGuay experto;
  private List<ControlCajaGuay> pagos;
  private BindingSource bsPagos;
  private bool primerIngreso = true;
  private IContainer components = (IContainer) null;
  private MetroPanel panSup;
  private MetroPanel panInf;
  private MetroPanel panCentral;
  private MetroPanel panCentCent;
  private MetroPanel panCentSup;
  private MetroButton btnConfirmarControl;
  private MetroLabel lblPagos;
  private MetroLabel lblGrupo;
  private MetroLabel metroLabel3;
  private MetroLabel lblReca;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroComboBox cboFeenAcpa;
  private GridControl gridPagos;
  private GridView viewPagos;
  private GridColumn colFeenAcpa;
  private GridColumn colNumeAcpa;
  private GridColumn colPeriBole;
  private GridColumn colNumeBole;
  private GridColumn colDetaFopa;
  private GridColumn colDetaOfic;
  private GridColumn colCuenCtct;
  private GridColumn colFaciPago;
  private GridColumn colTotaPago;
  private GridColumn colCodiUsua;
  private GridColumn colQuitarPago;
  private RepositoryItemButtonEdit ribQuitarPago;
  private GridColumn colObsePago;
  private GridColumn colNuchFopa;
  private MetroButton btnEliminarPago;

  public frmControlCajaGuay()
  {
    this.InitializeComponent();
    try
    {
      this.experto = new ExpControlCajaGuay();
      this.pagos = new List<ControlCajaGuay>();
      this.bsPagos = new BindingSource();
      this.bsPagos.DataSource = (object) this.pagos;
      this.gridPagos.DataSource = (object) this.bsPagos;
      this.lblReca.Text = this.experto.ObtenerEntidadRecaudadora().ToUpper();
      this.lblGrupo.Text = this.experto.ObtenerGrupo();
      this.cboFeenAcpa.Enabled = this.btnConfirmarControl.Enabled = this.btnConfirmarControl.Visible = this.btnEliminarPago.Enabled = this.btnEliminarPago.Visible = false;
      this.cboFeenAcpa.DisplayMember = "Text";
      this.cboFeenAcpa.ValueMember = "Value";
      this.btnEliminarPago.ForeColor = Color.Red;
      this.LimpiarControles();
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
      this.Close();
    }
  }

  private void LimpiarControles()
  {
    this.cboFeenAcpa.Items.Clear();
    this.pagos.Clear();
    this.bsPagos.Clear();
    ((ColumnView) this.viewPagos).ClearSelection();
    this.RefrescarGrid();
    this.cboFeenAcpa.Enabled = ((Control) this.gridPagos).Enabled = this.panInf.Enabled = this.LlenarCboFeenAcpa();
  }

  private bool LlenarCboFeenAcpa()
  {
    List<DateTime> dateTimeList = this.experto.ObtenerFechasEnvio();
    if (dateTimeList != null && dateTimeList.Count > 0)
    {
      foreach (DateTime dateTime in dateTimeList)
        this.cboFeenAcpa.Items.Add((object) new ComboBoxItem(dateTime.ToShortDateString(), (object) dateTime));
      this.cboFeenAcpa.SelectedIndexSelectedValue = (object) -1;
      return true;
    }
    this.cboFeenAcpa.SelectedIndexSelectedValue = (object) -1;
    new frmMensaje((Form) this).mostrarError("No hay fechas disponibles.");
    return false;
  }

  private void LlenarGridPagos(DateTime FeenAcpa)
  {
    this.pagos.Clear();
    this.bsPagos.Clear();
    this.RefrescarGrid();
    this.pagos = this.experto.ObtenerPagosRealizados(FeenAcpa);
    this.bsPagos.DataSource = (object) this.pagos;
    this.RefrescarGrid();
  }

  private void RefrescarGrid()
  {
    ((Control) this.gridPagos).Refresh();
    ((BaseView) this.viewPagos).RefreshData();
  }

  private void ReestablecerPagos()
  {
    this.pagos.Clear();
    this.bsPagos.Clear();
    this.RefrescarGrid();
  }

  private void cboFeenAcpa_SelectedValueChanged(object sender, EventArgs e)
  {
    if (this.cboFeenAcpa.Enabled && this.cboFeenAcpa.Items.Count > 0 && this.cboFeenAcpa.SelectedIndex >= 0)
    {
      DateTime FeenAcpa = (DateTime) ((ComboBoxItem) this.cboFeenAcpa.SelectedItem).Value;
      if (FeenAcpa > DateTime.MinValue)
        this.LlenarGridPagos(FeenAcpa);
      else
        this.ReestablecerPagos();
    }
    else
      this.ReestablecerPagos();
  }

  private void viewPagos_SelectionChanged(object sender, SelectionChangedEventArgs e)
  {
    int selectedRowsCount = ((ColumnView) this.viewPagos).SelectedRowsCount;
    if (selectedRowsCount > 0 && selectedRowsCount == this.pagos.Count)
      this.btnConfirmarControl.Enabled = this.btnConfirmarControl.Visible = true;
    else
      this.btnConfirmarControl.Enabled = this.btnConfirmarControl.Visible = false;
    if (selectedRowsCount > 0 && selectedRowsCount == 1)
      this.btnEliminarPago.Enabled = this.btnEliminarPago.Visible = true;
    else
      this.btnEliminarPago.Enabled = this.btnEliminarPago.Visible = false;
  }

  private void viewPagos_ValidatingEditor(object sender, BaseContainerValidateEditorEventArgs e)
  {
    e.Value = (object) e.Value.ToString().Trim();
  }

  private void btnConfirmarControl_Click(object sender, EventArgs e)
  {
    if (((ColumnView) this.viewPagos).SelectedRowsCount > 0 && ((ColumnView) this.viewPagos).SelectedRowsCount == this.pagos.Count)
    {
      DateTime FeenAcpa = (DateTime) ((ComboBoxItem) this.cboFeenAcpa.SelectedItem).Value;
      string mensaje = this.experto.ActualizarControlCaja(FeenAcpa, this.pagos);
      if (string.IsNullOrEmpty(mensaje))
      {
        new frmMensaje((Form) this).mostrarConfirmación($"Caja del día {FeenAcpa.ToShortDateString()} controlada de manera exitosa.");
        this.LimpiarControles();
      }
      else
        new frmMensaje((Form) this).mostrarError(mensaje);
    }
    else
      new frmMensaje((Form) this).mostrarError("Debe seleccionar todos los registros.");
  }

  private void frmControlCajaGuay_Activated(object sender, EventArgs e)
  {
    if (!this.primerIngreso)
      this.LimpiarControles();
    else
      this.primerIngreso = false;
  }

  private void btnEliminarPago_Click(object sender, EventArgs e)
  {
    int[] selectedRows = ((ColumnView) this.viewPagos).GetSelectedRows();
    if (selectedRows == null || selectedRows.Length != 1)
    {
      new frmMensaje((Form) this).mostrarError("Cantidad de filas seleccionadas incorrectas. Verificar...");
    }
    else
    {
      ControlCajaGuay fila = (ControlCajaGuay) ((BaseView) this.viewPagos).GetRow(selectedRows[0]);
      if (fila == null)
        return;
      if (string.IsNullOrEmpty(fila.ObsePago.Trim()))
        new frmMensaje((Form) this).mostrarError("Colocar motivo de baja del pago.");
      else if (!new frmPreguntar((Form) this).preguntar($"¿Está seguro de eliminar el pago del boleto {fila.PeriBole}-{fila.NumeBole}?"))
      {
        new frmMensaje((Form) this).mostrarInformación("Operación Cancelada");
      }
      else
      {
        ControlCajaGuay pago = this.pagos.Find((Predicate<ControlCajaGuay>) (x => x.FeenAcpa == fila.FeenAcpa && x.NumeAcpa == fila.NumeAcpa && x.PeriBole == fila.PeriBole && x.NumeBole == fila.NumeBole));
        if (pago != null)
        {
          string mensaje = new frmEsperar((Form) this).generar((Func<string>) (() => this.experto.EliminarPago(pago.FeenAcpa, pago.NumeAcpa, pago.PeriBole, pago.NumeBole, pago.PeriFopa, pago.NumeFopa, pago.TotaPago, pago.ObsePago.Trim(), pago.NuchFopa)), "Eliminando...");
          if (string.IsNullOrEmpty(mensaje))
          {
            this.pagos.Remove(pago);
            ((ColumnView) this.viewPagos).ClearSelection();
            this.RefrescarGrid();
            new frmMensaje((Form) this).mostrarConfirmación("Pago eliminado.");
          }
          else
            new frmMensaje((Form) this).mostrarError(mensaje);
        }
        else
          new frmMensaje((Form) this).mostrarError("El pago no existe en la grilla.");
      }
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
    this.panSup = new MetroPanel();
    this.cboFeenAcpa = new MetroComboBox();
    this.lblGrupo = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.lblReca = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.panInf = new MetroPanel();
    this.btnConfirmarControl = new MetroButton();
    this.panCentral = new MetroPanel();
    this.panCentCent = new MetroPanel();
    this.gridPagos = new GridControl();
    this.viewPagos = new GridView();
    this.colFeenAcpa = new GridColumn();
    this.colNumeAcpa = new GridColumn();
    this.colPeriBole = new GridColumn();
    this.colNumeBole = new GridColumn();
    this.colDetaFopa = new GridColumn();
    this.colNuchFopa = new GridColumn();
    this.colDetaOfic = new GridColumn();
    this.colCuenCtct = new GridColumn();
    this.colFaciPago = new GridColumn();
    this.colTotaPago = new GridColumn();
    this.colCodiUsua = new GridColumn();
    this.colObsePago = new GridColumn();
    this.colQuitarPago = new GridColumn();
    this.ribQuitarPago = new RepositoryItemButtonEdit();
    this.panCentSup = new MetroPanel();
    this.lblPagos = new MetroLabel();
    this.btnEliminarPago = new MetroButton();
    this.panSup.SuspendLayout();
    this.panInf.SuspendLayout();
    this.panCentral.SuspendLayout();
    this.panCentCent.SuspendLayout();
    ((ISupportInitialize) this.gridPagos).BeginInit();
    ((ISupportInitialize) this.viewPagos).BeginInit();
    ((ISupportInitialize) this.ribQuitarPago).BeginInit();
    this.panCentSup.SuspendLayout();
    this.SuspendLayout();
    this.panSup.Controls.Add((Control) this.cboFeenAcpa);
    this.panSup.Controls.Add((Control) this.lblGrupo);
    this.panSup.Controls.Add((Control) this.metroLabel3);
    this.panSup.Controls.Add((Control) this.lblReca);
    this.panSup.Controls.Add((Control) this.metroLabel2);
    this.panSup.Controls.Add((Control) this.metroLabel1);
    this.panSup.Dock = DockStyle.Top;
    this.panSup.Location = new Point(0, 0);
    this.panSup.Name = "panSup";
    this.panSup.Size = new Size(800, 80 /*0x50*/);
    this.panSup.TabIndex = 0;
    this.cboFeenAcpa.FormattingEnabled = false;
    this.cboFeenAcpa.Location = new Point(142, 46);
    this.cboFeenAcpa.Name = "cboFeenAcpa";
    this.cboFeenAcpa.Size = new Size(133, 23);
    this.cboFeenAcpa.TabIndex = 1;
    this.cboFeenAcpa.SelectedValueChanged += new EventHandler(this.cboFeenAcpa_SelectedValueChanged);
    this.lblGrupo.AutoSize = false;
    this.lblGrupo.FontWeight = MetroFontWeight.Bold;
    this.lblGrupo.Location = new Point(572, 15);
    this.lblGrupo.Name = "lblGrupo";
    this.lblGrupo.Size = new Size(99, 19);
    this.lblGrupo.TabIndex = 10;
    this.lblGrupo.Text = "123";
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(510, 15);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(50, 19);
    this.metroLabel3.TabIndex = 9;
    this.metroLabel3.Text = "Grupo:";
    this.lblReca.AutoSize = false;
    this.lblReca.FontWeight = MetroFontWeight.Bold;
    this.lblReca.Location = new Point(142, 15);
    this.lblReca.Name = "lblReca";
    this.lblReca.Size = new Size(356, 19);
    this.lblReca.TabIndex = 8;
    this.lblReca.Text = "ENTE RECA";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(15, 15);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(115, 19);
    this.metroLabel2.TabIndex = 7;
    this.metroLabel2.Text = "Ente Recaudador:";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(15, 46);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(115, 19);
    this.metroLabel1.TabIndex = 6;
    this.metroLabel1.Text = "Fecha de Envío:";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.panInf.Controls.Add((Control) this.btnEliminarPago);
    this.panInf.Controls.Add((Control) this.btnConfirmarControl);
    this.panInf.Dock = DockStyle.Bottom;
    this.panInf.Location = new Point(0, 401);
    this.panInf.Name = "panInf";
    this.panInf.Size = new Size(800, 49);
    this.panInf.TabIndex = 1;
    this.btnConfirmarControl.Location = new Point(142, 9);
    this.btnConfirmarControl.Name = "btnConfirmarControl";
    this.btnConfirmarControl.Size = new Size(162, 34);
    this.btnConfirmarControl.TabIndex = 2;
    this.btnConfirmarControl.Text = "CONFIRMAR CONTROL CAJA";
    this.btnConfirmarControl.Click += new EventHandler(this.btnConfirmarControl_Click);
    this.panCentral.Controls.Add((Control) this.panCentCent);
    this.panCentral.Controls.Add((Control) this.panCentSup);
    this.panCentral.Dock = DockStyle.Fill;
    this.panCentral.Location = new Point(0, 80 /*0x50*/);
    this.panCentral.Name = "panCentral";
    this.panCentral.Size = new Size(800, 321);
    this.panCentral.TabIndex = 2;
    this.panCentCent.Controls.Add((Control) this.gridPagos);
    this.panCentCent.Dock = DockStyle.Fill;
    this.panCentCent.Location = new Point(0, 30);
    this.panCentCent.Name = "panCentCent";
    this.panCentCent.Size = new Size(800, 291);
    this.panCentCent.TabIndex = 3;
    ((Control) this.gridPagos).Dock = DockStyle.Fill;
    ((Control) this.gridPagos).Location = new Point(0, 0);
    this.gridPagos.MainView = (BaseView) this.viewPagos;
    ((Control) this.gridPagos).Name = "gridPagos";
    ((EditorContainer) this.gridPagos).RepositoryItems.AddRange(new RepositoryItem[1]
    {
      (RepositoryItem) this.ribQuitarPago
    });
    ((Control) this.gridPagos).Size = new Size(800, 291);
    ((Control) this.gridPagos).TabIndex = 4;
    this.gridPagos.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewPagos
    });
    this.viewPagos.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewPagos.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.viewPagos.Appearance.Row.Font = new Font("Tahoma", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.viewPagos.Appearance.Row.Options.UseFont = true;
    ((ColumnView) this.viewPagos).Columns.AddRange(new GridColumn[13]
    {
      this.colFeenAcpa,
      this.colNumeAcpa,
      this.colPeriBole,
      this.colNumeBole,
      this.colDetaFopa,
      this.colNuchFopa,
      this.colDetaOfic,
      this.colCuenCtct,
      this.colFaciPago,
      this.colTotaPago,
      this.colCodiUsua,
      this.colObsePago,
      this.colQuitarPago
    });
    this.viewPagos.FocusRectStyle = (DrawFocusRectStyle) 0;
    ((BaseView) this.viewPagos).GridControl = this.gridPagos;
    ((BaseView) this.viewPagos).Name = "viewPagos";
    this.viewPagos.OptionsSelection.CheckBoxSelectorColumnWidth = 30;
    this.viewPagos.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewPagos.OptionsSelection.EnableAppearanceFocusedRow = false;
    this.viewPagos.OptionsSelection.EnableAppearanceHideSelection = false;
    this.viewPagos.OptionsSelection.EnableAppearanceHotTrackedRow = (DefaultBoolean) 1;
    ((ColumnViewOptionsSelection) this.viewPagos.OptionsSelection).MultiSelect = true;
    this.viewPagos.OptionsSelection.MultiSelectMode = (GridMultiSelectMode) 2;
    this.viewPagos.OptionsSelection.ShowCheckBoxSelectorInGroupRow = (DefaultBoolean) 1;
    this.viewPagos.OptionsSelection.UseIndicatorForSelection = false;
    this.viewPagos.OptionsView.ShowFooter = true;
    this.viewPagos.OptionsView.ShowGroupPanel = false;
    this.viewPagos.OptionsView.ShowIndicator = false;
    this.viewPagos.RowHeight = 40;
    this.viewPagos.RowSeparatorHeight = 15;
    ((ColumnView) this.viewPagos).SelectionChanged += new SelectionChangedEventHandler(this.viewPagos_SelectionChanged);
    ((BaseView) this.viewPagos).ValidatingEditor += new BaseContainerValidateEditorEventHandler(this.viewPagos_ValidatingEditor);
    ((AppearanceOptions) this.colFeenAcpa.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFeenAcpa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFeenAcpa.Caption = "Fecha Envío";
    this.colFeenAcpa.FieldName = "FeenAcpa";
    this.colFeenAcpa.MaxWidth = 90;
    this.colFeenAcpa.Name = "colFeenAcpa";
    this.colFeenAcpa.OptionsColumn.AllowEdit = false;
    this.colFeenAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFeenAcpa.OptionsColumn.AllowMove = false;
    this.colFeenAcpa.OptionsColumn.ReadOnly = true;
    this.colFeenAcpa.Visible = true;
    this.colFeenAcpa.VisibleIndex = 1;
    this.colFeenAcpa.Width = 54;
    ((AppearanceOptions) this.colNumeAcpa.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNumeAcpa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNumeAcpa.Caption = "Grupo";
    this.colNumeAcpa.FieldName = "NumeAcpa";
    this.colNumeAcpa.MaxWidth = 75;
    this.colNumeAcpa.Name = "colNumeAcpa";
    this.colNumeAcpa.OptionsColumn.AllowEdit = false;
    this.colNumeAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNumeAcpa.OptionsColumn.AllowMove = false;
    this.colNumeAcpa.OptionsColumn.ReadOnly = true;
    this.colNumeAcpa.Visible = true;
    this.colNumeAcpa.VisibleIndex = 2;
    this.colNumeAcpa.Width = 54;
    ((AppearanceOptions) this.colPeriBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeriBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeriBole.Caption = "Periodo";
    this.colPeriBole.FieldName = "PeriBole";
    this.colPeriBole.MaxWidth = 75;
    this.colPeriBole.Name = "colPeriBole";
    this.colPeriBole.OptionsColumn.AllowEdit = false;
    this.colPeriBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeriBole.OptionsColumn.AllowMove = false;
    this.colPeriBole.OptionsColumn.ReadOnly = true;
    this.colPeriBole.Visible = true;
    this.colPeriBole.VisibleIndex = 3;
    this.colPeriBole.Width = 35;
    ((AppearanceOptions) this.colNumeBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNumeBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNumeBole.Caption = "N° Boleto";
    this.colNumeBole.FieldName = "NumeBole";
    this.colNumeBole.MaxWidth = 100;
    this.colNumeBole.Name = "colNumeBole";
    this.colNumeBole.OptionsColumn.AllowEdit = false;
    this.colNumeBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNumeBole.OptionsColumn.AllowMove = false;
    this.colNumeBole.OptionsColumn.ReadOnly = true;
    this.colNumeBole.Visible = true;
    this.colNumeBole.VisibleIndex = 4;
    this.colNumeBole.Width = 54;
    this.colDetaFopa.Caption = "Forma Pago";
    this.colDetaFopa.FieldName = "DetaFopa";
    this.colDetaFopa.Name = "colDetaFopa";
    this.colDetaFopa.OptionsColumn.AllowEdit = false;
    this.colDetaFopa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetaFopa.OptionsColumn.AllowMove = false;
    this.colDetaFopa.OptionsColumn.ReadOnly = true;
    this.colDetaFopa.Visible = true;
    this.colDetaFopa.VisibleIndex = 7;
    this.colDetaFopa.Width = 58;
    this.colNuchFopa.Caption = "N° Operación";
    this.colNuchFopa.FieldName = "NuchFopa";
    this.colNuchFopa.Name = "colNuchFopa";
    this.colNuchFopa.OptionsColumn.AllowEdit = false;
    this.colNuchFopa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNuchFopa.OptionsColumn.AllowMove = false;
    this.colNuchFopa.OptionsColumn.ReadOnly = true;
    this.colNuchFopa.Visible = true;
    this.colNuchFopa.VisibleIndex = 5;
    this.colDetaOfic.Caption = "Oficina";
    this.colDetaOfic.FieldName = "DetaOfic";
    this.colDetaOfic.MaxWidth = 100;
    this.colDetaOfic.Name = "colDetaOfic";
    this.colDetaOfic.OptionsColumn.AllowEdit = false;
    this.colDetaOfic.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetaOfic.OptionsColumn.AllowMove = false;
    this.colDetaOfic.OptionsColumn.ReadOnly = true;
    this.colDetaOfic.Visible = true;
    this.colDetaOfic.VisibleIndex = 6;
    this.colDetaOfic.Width = 54;
    ((AppearanceOptions) this.colCuenCtct.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuenCtct.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuenCtct.Caption = "Cuenta";
    this.colCuenCtct.FieldName = "CuenCtct";
    this.colCuenCtct.MaxWidth = 120;
    this.colCuenCtct.Name = "colCuenCtct";
    this.colCuenCtct.OptionsColumn.AllowEdit = false;
    this.colCuenCtct.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuenCtct.OptionsColumn.AllowMove = false;
    this.colCuenCtct.OptionsColumn.ReadOnly = true;
    this.colCuenCtct.Visible = true;
    this.colCuenCtct.VisibleIndex = 8;
    this.colCuenCtct.Width = 51;
    ((AppearanceOptions) this.colFaciPago.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFaciPago.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFaciPago.Caption = "Facilidad";
    this.colFaciPago.FieldName = "FaciPago";
    this.colFaciPago.MaxWidth = 120;
    this.colFaciPago.Name = "colFaciPago";
    this.colFaciPago.OptionsColumn.AllowEdit = false;
    this.colFaciPago.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFaciPago.OptionsColumn.AllowMove = false;
    this.colFaciPago.OptionsColumn.ReadOnly = true;
    ((GridSummaryItemCollection) this.colFaciPago.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 5, "ApreBole", "TOTAL:")
    });
    this.colFaciPago.Visible = true;
    this.colFaciPago.VisibleIndex = 9;
    this.colFaciPago.Width = 86;
    ((AppearanceOptions) this.colTotaPago.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotaPago.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotaPago.Caption = "Total";
    this.colTotaPago.DisplayFormat.FormatString = "C2";
    this.colTotaPago.DisplayFormat.FormatType = (FormatType) 1;
    this.colTotaPago.FieldName = "TotaPago";
    this.colTotaPago.MaxWidth = 150;
    this.colTotaPago.Name = "colTotaPago";
    this.colTotaPago.OptionsColumn.AllowEdit = false;
    this.colTotaPago.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTotaPago.OptionsColumn.AllowMove = false;
    this.colTotaPago.OptionsColumn.ReadOnly = true;
    ((GridSummaryItemCollection) this.colTotaPago.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaPago", "{0:C2}")
    });
    this.colTotaPago.Visible = true;
    this.colTotaPago.VisibleIndex = 10;
    this.colCodiUsua.Caption = "Usuario";
    this.colCodiUsua.FieldName = "CodiUsua";
    this.colCodiUsua.MaxWidth = 75;
    this.colCodiUsua.Name = "colCodiUsua";
    this.colCodiUsua.OptionsColumn.AllowEdit = false;
    this.colCodiUsua.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCodiUsua.OptionsColumn.AllowMove = false;
    this.colCodiUsua.OptionsColumn.ReadOnly = true;
    this.colCodiUsua.Visible = true;
    this.colCodiUsua.VisibleIndex = 11;
    this.colObsePago.Caption = "Observación";
    this.colObsePago.FieldName = "ObsePago";
    this.colObsePago.MaxWidth = 200;
    this.colObsePago.Name = "colObsePago";
    this.colObsePago.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colObsePago.OptionsColumn.AllowMove = false;
    this.colObsePago.Visible = true;
    this.colObsePago.VisibleIndex = 12;
    ((AppearanceOptions) this.colQuitarPago.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colQuitarPago.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    ((AppearanceObject) this.colQuitarPago.AppearanceCell).TextOptions.VAlignment = (VertAlignment) 2;
    this.colQuitarPago.ColumnEdit = (RepositoryItem) this.ribQuitarPago;
    this.colQuitarPago.MaxWidth = 30;
    this.colQuitarPago.MinWidth = 30;
    this.colQuitarPago.Name = "colQuitarPago";
    this.colQuitarPago.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colQuitarPago.OptionsColumn.AllowMove = false;
    this.colQuitarPago.OptionsColumn.ReadOnly = true;
    this.colQuitarPago.Width = 30;
    ((RepositoryItem) this.ribQuitarPago).AutoHeight = false;
    this.ribQuitarPago.Buttons.AddRange(new EditorButton[1]
    {
      new EditorButton((ButtonPredefines) 2)
    });
    ((RepositoryItem) this.ribQuitarPago).Name = "ribQuitarPago";
    this.ribQuitarPago.TextEditStyle = (TextEditStyles) 1;
    this.panCentSup.Controls.Add((Control) this.lblPagos);
    this.panCentSup.Dock = DockStyle.Top;
    this.panCentSup.Location = new Point(0, 0);
    this.panCentSup.Name = "panCentSup";
    this.panCentSup.Size = new Size(800, 30);
    this.panCentSup.TabIndex = 2;
    this.lblPagos.AutoSize = false;
    this.lblPagos.Dock = DockStyle.Fill;
    this.lblPagos.FontWeight = MetroFontWeight.Bold;
    this.lblPagos.Location = new Point(0, 0);
    this.lblPagos.Name = "lblPagos";
    this.lblPagos.Size = new Size(800, 30);
    this.lblPagos.TabIndex = 2;
    this.lblPagos.Text = "PAGOS INGRESADOS";
    this.lblPagos.TextAlign = ContentAlignment.MiddleCenter;
    this.btnEliminarPago.ForeColor = SystemColors.ControlText;
    this.btnEliminarPago.Location = new Point(510, 9);
    this.btnEliminarPago.Name = "btnEliminarPago";
    this.btnEliminarPago.Size = new Size(162, 34);
    this.btnEliminarPago.TabIndex = 3;
    this.btnEliminarPago.Text = "ELIMINAR PAGO";
    this.btnEliminarPago.Click += new EventHandler(this.btnEliminarPago_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(800, 450);
    this.Controls.Add((Control) this.panCentral);
    this.Controls.Add((Control) this.panInf);
    this.Controls.Add((Control) this.panSup);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmControlCajaGuay);
    this.Text = "Control de Cajas";
    this.Activated += new EventHandler(this.frmControlCajaGuay_Activated);
    this.panSup.ResumeLayout(false);
    this.panInf.ResumeLayout(false);
    this.panCentral.ResumeLayout(false);
    this.panCentCent.ResumeLayout(false);
    ((ISupportInitialize) this.gridPagos).EndInit();
    ((ISupportInitialize) this.viewPagos).EndInit();
    ((ISupportInitialize) this.ribQuitarPago).EndInit();
    this.panCentSup.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
