// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmIngresoBoletoGrupo
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Container;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
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

public class frmIngresoBoletoGrupo : FRMForm
{
  private ExpBoletoGrupo expGrupo = new ExpBoletoGrupo();
  private bool eliminar = false;
  private IContainer components = (IContainer) null;
  private MetroPanel panGlobal;
  private MetroPanel panBoletos;
  private MetroPanel panBoletosAgregados;
  private MetroPanel panTotalesBoletos;
  private MetroPanel panAgregarBoleto;
  private MetroPanel panFormulario;
  private MetroPanel panGrupos;
  private MetroLabel lblFechaPago;
  private MetroDateTimePicker dtpFechaPago;
  private MetroLabel lblFechaEnvio;
  private MetroDateTimePicker dtpFechaEnvio;
  private MetroIntTextBox mibGrupo;
  private MetroLabel lblGrupo;
  private MetroEntityBox mebEnteReca;
  private MetroLabel lblEnteReca;
  private MetroIntTextBox mibTotResu;
  private MetroLabel lblTotRes;
  private MetroLabel lblImpoTotal;
  private MetroDecimalTextBox mdbImpoTotal;
  private MetroPanel panGridBoles;
  private GridControl gridBoletos;
  private GridView viewBoletos;
  private GridColumn colPeriBole;
  private GridColumn colNumeBole;
  private GridColumn colCodiOfic;
  private MetroPanel panTituBole;
  private MetroLabel lblDetaBoles;
  private MetroIntTextBox mibCantBole;
  private MetroLabel lblCantBole;
  private MetroDecimalTextBox mdbTotaBole;
  private MetroLabel lblImpoTotDetaBole;
  private GridControl gridGrupos;
  private GridView viewGrupos;
  private GridColumn colFeenAcpa;
  private GridColumn colNumeAcpa;
  private GridColumn colActuAcpa;
  private MetroTextBox mtextCodiBarra;
  private MetroIntTextBox mtextNumeBole;
  private MetroButton btnAgregar;
  private MetroIntTextBox mtextPeriBole;
  private MetroLabel lblBoleManual;
  private MetroLabel lblCodiBarBole;
  private MetroLabel lblManual;
  private MetroLabel lblCodiBar;
  private MetroCheckBox chkCobroTick;
  private MetroLabel lblTickeadora;
  private MetroLabel lblFopa;
  private MetroComboBox mcboFormaPago;
  private GridColumn colDetaEnre;
  private GridColumn colFealAcpa;
  private GridColumn colFepaAcpa;
  private GridColumn colTocoAcpa;
  private GridColumn colImpoAcpa;
  private GridColumn colNoarAcpa;
  private GridColumn colCuenCtct;
  private GridColumn colDetaPers;
  private GridColumn colTipoBole;
  private GridColumn colCapiBole;
  private GridColumn colDecaBole;
  private GridColumn colRecaBole;
  private GridColumn colDereBole;
  private GridColumn colAdicBole;
  private GridColumn colInteBole;
  private GridColumn colExenBole;
  private GridColumn colApreBole;
  private GridColumn colTotaBole;
  private GridColumn colEliminarBoleto;
  private RepositoryItemButtonEdit repositoryItemButtonEdit1;
  private MetroIntTextBox mibCheque;
  private GridColumn colPeriFopa;
  private GridColumn colNumeFopa;
  private MetroButton btnAgregarMulti;

  public frmIngresoBoletoGrupo()
    : base("Ingreso de Boletos", "Boletos por Grupo", typeof (BoletoGrupo))
  {
    this.InitializeComponent();
    ((Control) this.butAnnular).Visible = ((Control) this.butAnnular).Enabled = false;
    this.mebEnteReca.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarEnteReca);
    this.mebEnteReca.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarEnteReca);
    this.LimpiarControles();
    this.MostrarBotonesGuardar(false);
    this.LlenarGridGrupos();
    this.LlenarCbo();
    this.ValidacionesControles();
    this.ConfiguracionesPorMunicipio();
    this.chkCobroTick.Checked = PARAMS.Parameters.GetString("TickeadoraActiva") == "True";
    this.chkCobroTick.Text = this.chkCobroTick.Checked ? "Activo" : "Inactivo";
  }

  private void MostrarBotonesGuardar(bool ocultar)
  {
    ((Control) this.butSave).Visible = ((Control) this.butSave).Enabled = ((Control) this.butCancel).Visible = ((Control) this.butCancel).Enabled = ocultar;
  }

  private void LlenarCbo()
  {
    this.mcboFormaPago.DataSource = (object) this.expGrupo.ObtenerFormasPago();
    this.mcboFormaPago.DisplayMember = "DetaTipa";
    this.mcboFormaPago.ValueMember = "CodiTipa";
  }

  private void LlenarGridGrupos()
  {
    this.gridGrupos.DataSource = (object) this.expGrupo.ObtenerAcrePagos();
    ((Control) this.gridGrupos).Refresh();
  }

  private void ValidacionesControles()
  {
    this.dtpFechaEnvio.MaxDate = this.dtpFechaPago.MaxDate = DateTime.Today;
    this.mibGrupo.MaxLength = this.mibTotResu.MaxLength = this.mibCantBole.MaxLength = 5;
    this.mdbImpoTotal.MaxLength = this.mdbTotaBole.MaxLength = 13;
    this.mdbImpoTotal.DecimalPlaces = this.mdbTotaBole.DecimalPlaces = 2;
  }

  private void LimpiarControles()
  {
    this.dtpFechaEnvio.Value = this.dtpFechaPago.Value = DateTime.Today;
    this.mibGrupo.Text = this.mtextCodiBarra.Text = string.Empty;
    this.mibCantBole.IntText = this.mibTotResu.IntText = this.mtextNumeBole.IntText = 0;
    MetroDecimalTextBox mdbImpoTotal = this.mdbImpoTotal;
    MetroDecimalTextBox mdbTotaBole = this.mdbTotaBole;
    Decimal num1 = new Decimal(0.0);
    Decimal num2 = num1;
    mdbTotaBole.DecimalText = num2;
    Decimal num3 = num1;
    mdbImpoTotal.DecimalText = num3;
    this.mebEnteReca.Entity = (Entity) null;
    if (this.mcboFormaPago.Items.Count > 0)
      this.mcboFormaPago.SelectedIndex = 0;
    this.mtextPeriBole.IntText = DateTime.Now.Year;
  }

  private void CompletarFormulario(BoletoGrupo grupo)
  {
    this.dtpFechaEnvio.Value = grupo.FeenAcpa;
    this.dtpFechaPago.Value = grupo.FepaAcpa;
    this.mibGrupo.IntText = grupo.NumeAcpa;
    this.mibCantBole.IntText = this.mibTotResu.IntText = grupo.TocoAcpa;
    this.mdbImpoTotal.DecimalText = this.mdbTotaBole.DecimalText = grupo.ImpoAcpa;
    this.mebEnteReca.Entity = (Entity) new EnteRecaudador()
    {
      CodiEnre = grupo.CodiEnre,
      DetaEnre = grupo.DetaEnre,
      NumeAcpa = grupo.NumeAcpa
    };
  }

  private void ActivarGrids(bool activar)
  {
    ((Control) this.gridGrupos).Enabled = ((Control) this.gridBoletos).Enabled = activar;
  }

  private void FocusFilaInvalidaGrupo()
  {
    ((ColumnView) this.viewGrupos).FocusInvalidRow();
    ((ColumnView) this.viewGrupos).SelectRow(-1);
  }

  private void FocusFilaInvalidaBoletos()
  {
    ((ColumnView) this.viewBoletos).FocusInvalidRow();
    ((ColumnView) this.viewBoletos).SelectRow(-1);
  }

  private void ConfiguracionesPorMunicipio()
  {
    switch (PARAMS.Municipio)
    {
      case "Alvear":
        this.mtextCodiBarra.MaxLength = 42;
        break;
      case "Lavalle":
      case "SanCarlos":
        this.mtextCodiBarra.MaxLength = 12;
        this.colAdicBole.Visible = false;
        break;
      case "LaPaz":
        this.mtextCodiBarra.MaxLength = 1;
        this.mtextCodiBarra.Enabled = false;
        this.colAdicBole.Visible = false;
        break;
      case "SanMartín":
        this.mtextCodiBarra.MaxLength = 36;
        this.colAdicBole.Visible = false;
        break;
      default:
        this.mtextCodiBarra.MaxLength = 1;
        break;
    }
  }

  private void ActivarIngresoBoleto(bool activar)
  {
    this.mtextCodiBarra.Enabled = this.mtextPeriBole.Enabled = this.mtextNumeBole.Enabled = this.mcboFormaPago.Enabled = this.btnAgregar.Enabled = this.btnAgregarMulti.Enabled = activar;
  }

  private void HabilitarBotones(bool activo)
  {
    ((Control) this.butNew).Enabled = ((Control) this.butEdit).Enabled = ((Control) this.butDelete).Enabled = activo;
  }

  private void ResetearGrupoActual()
  {
    int selectedRow = ((ColumnView) this.viewGrupos).GetSelectedRows()[0];
    this.LlenarGridGrupos();
    this.FocusFilaInvalidaGrupo();
    ((ColumnView) this.viewGrupos).FocusedRowHandle = selectedRow;
    ((ColumnView) this.viewGrupos).SelectRow(selectedRow);
  }

  private void AgregarBoleto(bool codiBar = false)
  {
    if (!this.btnAgregar.Enabled)
      return;
    if (codiBar)
    {
      switch (PARAMS.Municipio)
      {
        case "Alvear":
          this.mtextPeriBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(24, 1)) == 9 ? 2000 + int.Parse(this.mtextCodiBarra.Text.Substring(29, 2)) : 0;
          this.mtextNumeBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(18, 6));
          break;
        case "Lavalle":
        case "SanCarlos":
          this.mtextPeriBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(8, 4));
          this.mtextNumeBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(0, 8));
          break;
        case "LaPaz":
          new frmMensaje((Form) this).mostrarInformación("Código de Barra no habilitado.");
          this.mtextCodiBarra.Text = string.Empty;
          return;
        case "SanMartín":
          this.mtextPeriBole.IntText = 2000 + int.Parse(this.mtextCodiBarra.Text.Substring(22, 2));
          this.mtextNumeBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(7, 8));
          break;
      }
    }
    try
    {
      int NuchFopa = 0;
      if ((int) this.mcboFormaPago.SelectedValue == 2)
      {
        if (string.IsNullOrEmpty(this.mibCheque.Text.Trim()) || this.mibCheque.IntText == 0)
        {
          new frmMensaje((Form) this).mostrarError("El N° de Cheque no es correcto.");
          return;
        }
        NuchFopa = this.mibCheque.IntText;
      }
      this.expGrupo.GrupoActualizado(this.dtpFechaEnvio.Value, this.mibGrupo.IntText);
      this.expGrupo.VerificarBoleto(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
      this.expGrupo.VerificarPago(this.dtpFechaEnvio.Value, this.mibGrupo.IntText, this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
      this.expGrupo.Pagado(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
      if (this.expGrupo.IngresarBoleto(this.dtpFechaEnvio.Value, this.mibGrupo.IntText, this.mtextPeriBole.IntText, this.mtextNumeBole.IntText, (int) this.mcboFormaPago.SelectedValue, NuchFopa, this.dtpFechaPago.Value))
      {
        this.LimpiarControles();
        this.ResetearGrupoActual();
        if (PARAMS.Municipio == "LaPaz")
          this.mtextNumeBole.Focus();
        else
          this.mtextCodiBarra.Focus();
      }
      else
        new frmMensaje((Form) this).mostrarError("El boleto no pudo ser ingresado.");
    }
    catch (Exception ex)
    {
      if (PARAMS.Municipio == "LaPaz")
        this.mtextNumeBole.Focus();
      else
        this.mtextCodiBarra.Focus();
      new frmMensaje((Form) this).mostrarError(ex.Message);
    }
  }

  protected override void OnActionModeChanged(ActionMode mode) => this.eliminar = false;

  protected override void OnNuevoClick()
  {
    this.MostrarBotonesGuardar(true);
    this.LimpiarControles();
    this.HabilitarControles();
    this.ActivarIngresoBoleto(false);
    this.ActivarGrids(false);
  }

  protected override void OnModificarClick()
  {
    this.MostrarBotonesGuardar(true);
    this.HabilitarControles(modificar: true);
    if (this.mebEnteReca.Entity != null)
      this.mebEnteReca.Enabled = !this.expGrupo.GrupoPredefinido(this.mibGrupo.IntText, ((EnteRecaudador) this.mebEnteReca.Entity).CodiEnre);
    else
      this.mebEnteReca.Enabled = false;
    this.ActivarIngresoBoleto(false);
    this.ActivarGrids(false);
  }

  protected override void butDelete_Click(object sender, EventArgs e)
  {
    this.eliminar = true;
    this.MostrarBotonesGuardar(true);
    this.HabilitarBotones(false);
    this.ActivarIngresoBoleto(false);
    this.ActivarGrids(false);
    new frmMensaje((Form) this).mostrarInformación("Al eliminar un grupo, se eliminaran todos los pagos asociados.");
  }

  protected override List<string> ValidarDatos()
  {
    List<string> stringList = new List<string>();
    if (this.mebEnteReca.Entity == null)
      stringList.Add("Debe seleccionar un Ente Recaudador.");
    if (string.IsNullOrEmpty(this.mibGrupo.Text.Trim()))
      stringList.Add("Debe seleccionar un Grupo.");
    else if (this.mibGrupo.IntText == 0)
      stringList.Add("El Grupo seleccionado no es válido.");
    if (stringList.Count > 0 || this.CurrentMode != ActionMode.New)
      return stringList;
    stringList = this.ValidarDatosGrupo(this.dtpFechaEnvio.Value, this.mibGrupo.IntText);
    return stringList;
  }

  protected override string OnGuardarClick()
  {
    string str = string.Empty;
    switch (this.CurrentMode)
    {
      case ActionMode.New:
        if (!this.expGrupo.CrearGrupo(this.dtpFechaEnvio.Value, this.mibGrupo.IntText, ((EnteRecaudador) this.mebEnteReca.Entity).CodiEnre, this.dtpFechaPago.Value))
        {
          str = "Error al guardar nuevo grupo.";
          break;
        }
        break;
      case ActionMode.Edit:
        if (!this.expGrupo.ActualizarGrupo(this.dtpFechaEnvio.Value, this.mibGrupo.IntText, ((EnteRecaudador) this.mebEnteReca.Entity).CodiEnre, this.dtpFechaPago.Value, this.mibTotResu.IntText, this.mdbImpoTotal.DecimalText))
        {
          str = "Error al modificar el grupo.";
          break;
        }
        break;
      case ActionMode.View:
        if (this.eliminar)
        {
          if (!this.expGrupo.EliminarGrupo(this.dtpFechaEnvio.Value, this.mibGrupo.IntText))
          {
            str = "Error al eliminar el grupo.";
            break;
          }
          break;
        }
        str = "No habilitado para eliminar.";
        break;
    }
    if (string.IsNullOrEmpty(str))
    {
      this.LlenarGridGrupos();
      this.MostrarBotonesGuardar(false);
      this.HabilitarBotones(true);
      this.HabilitarControles(false);
      this.ActivarGrids(true);
      this.FocusFilaInvalidaGrupo();
    }
    return str;
  }

  protected override void OnCancelarClick()
  {
    this.MostrarBotonesGuardar(false);
    this.HabilitarBotones(true);
    this.HabilitarControles(false);
    this.ActivarGrids(true);
    this.FocusFilaInvalidaGrupo();
  }

  private List<string> ValidarDatosGrupo(DateTime FeenAcpa, int NumeAcpa)
  {
    return this.expGrupo.ValidarDatosGrupo(FeenAcpa, NumeAcpa);
  }

  private void HabilitarControles(bool habilitar = true, bool modificar = false)
  {
    if (modificar)
    {
      this.mebEnteReca.Enabled = habilitar;
      this.dtpFechaEnvio.Enabled = this.mibGrupo.Enabled = this.dtpFechaPago.Enabled = !habilitar;
    }
    else
      this.dtpFechaEnvio.Enabled = this.dtpFechaPago.Enabled = this.mibGrupo.Enabled = this.mebEnteReca.Enabled = habilitar;
  }

  private Entity BuscarEnteReca(string text)
  {
    bool flag = int.TryParse(text, out int _);
    Filter filter = new Filter();
    if (flag)
      filter.Items.Add(new FilterItem("CodiEnre", "Nº Ente Recaudador", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaEnre", "Detalle Ente", FilterMode.Contains, text));
    return (Entity) this.EM.Search<EnteRecaudador>(filter, false);
  }

  private Entity EncontrarEnteReca(string text, bool useSearch)
  {
    bool flag = int.TryParse(text, out int _);
    Filter filter = new Filter();
    if (flag)
      filter.Items.Add(new FilterItem("CodiEnre", "N° Ente Recaudador", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaEnre", "Detalle Ente", FilterMode.Contains, text));
    return (Entity) this.EM.Find<EnteRecaudador>(filter, false, true);
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

  private void SoloNumerosPunto(object sender, KeyEventArgs e)
  {
    if (e.KeyCode == Keys.Back)
      e.SuppressKeyPress = false;
    else if (e.KeyValue >= 48 /*0x30*/ && e.KeyValue <= 57 || e.KeyValue >= 96 /*0x60*/ && e.KeyValue <= 105)
      e.SuppressKeyPress = false;
    else if (e.KeyCode == Keys.Decimal)
    {
      if (!this.mdbImpoTotal.Text.Contains("."))
        return;
      e.SuppressKeyPress = true;
    }
    else
      e.SuppressKeyPress = true;
  }

  private void viewGrupos_SelectionChanged(object sender, SelectionChangedEventArgs e)
  {
    try
    {
      this.LimpiarControles();
      BoletoGrupo row = (BoletoGrupo) ((BaseView) this.viewGrupos).GetRow(((ColumnView) this.viewGrupos).GetSelectedRows()[0]);
      if (row != null && row.FeenAcpa > DateTime.MinValue && row.NumeAcpa > 0)
      {
        this.ActivarIngresoBoleto(true);
        this.gridBoletos.DataSource = (object) this.expGrupo.BuscarBoletosIngresados(row.FeenAcpa, row.NumeAcpa);
        ((Control) this.gridBoletos).Refresh();
        this.FocusFilaInvalidaBoletos();
        this.CompletarFormulario(row);
      }
      else
        this.ActivarIngresoBoleto(false);
    }
    catch (Exception ex)
    {
      this.ActivarIngresoBoleto(false);
      this.gridBoletos.DataSource = (object) new List<BoletoCaja>();
      ((Control) this.gridBoletos).Refresh();
    }
  }

  private void repositoryItemButtonEdit1_Click(object sender, EventArgs e)
  {
    BoletoCaja focusedRow = (BoletoCaja) ((ColumnView) this.viewBoletos).GetFocusedRow();
    BoletoGrupo row = (BoletoGrupo) ((BaseView) this.viewGrupos).GetRow(((ColumnView) this.viewGrupos).GetSelectedRows()[0]);
    if (focusedRow == null || row == null)
      return;
    if (!this.expGrupo.ValidarExistenciaPago(row.FeenAcpa, row.NumeAcpa, focusedRow.PeriBole, focusedRow.NumeBole))
    {
      new frmMensaje((Form) this).mostrarError("El pago no existe.");
    }
    else
    {
      int num = this.expGrupo.ComprobarCombinacionPagos(focusedRow.PeriFopa, focusedRow.NumeFopa);
      switch (num)
      {
        case 0:
          string MoanBole = XtraInputBox.Show($"Indique el motivo por el cual quiere eliminar el pago del boleto {focusedRow.PeriBole}-{focusedRow.NumeBole}", "Eliminar Pago", "Motivo entre 10 y 30 carácteres").Trim();
          if (!string.IsNullOrEmpty(MoanBole) && MoanBole.Length >= 10 && MoanBole.Length <= 30 && MoanBole != "Motivo entre 10 y 30 carácteres")
          {
            if (this.expGrupo.EliminarPago(row.FeenAcpa, row.NumeAcpa, focusedRow.PeriBole, focusedRow.NumeBole, MoanBole, focusedRow.TotaBole, num))
            {
              this.ResetearGrupoActual();
              new frmMensaje((Form) this).mostrarConfirmación("Pago eliminado.");
              break;
            }
            new frmMensaje((Form) this).mostrarError("No se pudo eliminar el pago.");
            break;
          }
          if (string.IsNullOrEmpty(MoanBole))
          {
            new frmMensaje((Form) this).mostrarInformación("Se cancela la operación");
            break;
          }
          new frmMensaje((Form) this).mostrarError("Debe ingresar un motivo de entre 10 y 30 carácteres. No se eliminó el pago.");
          break;
        case 1:
        case 2:
        case 3:
        case 4:
          if (new frmMostrarFopa(row.FeenAcpa, row.NumeAcpa, focusedRow.PeriBole, focusedRow.NumeBole, focusedRow.TotaBole, focusedRow.PeriFopa, focusedRow.NumeFopa, num).ShowDialog() == DialogResult.OK)
          {
            this.ResetearGrupoActual();
            new frmMensaje((Form) this).mostrarConfirmación("Pago eliminado correctamente.");
            break;
          }
          break;
        default:
          new frmMensaje((Form) this).mostrarError("No se puede eliminar el pago. Verificar los datos del mismo.");
          break;
      }
    }
  }

  private void btnAgregar_Click(object sender, EventArgs e)
  {
    if (this.mtextCodiBarra.Text.Length == this.mtextCodiBarra.MaxLength)
    {
      this.AgregarBoleto(true);
    }
    else
    {
      if (this.mtextPeriBole.IntText <= 1980 || this.mtextNumeBole.IntText <= 0)
        return;
      this.AgregarBoleto();
    }
  }

  private void btnAgregarMulti_Click(object sender, EventArgs e)
  {
    try
    {
      BoletoGrupo row = (BoletoGrupo) ((BaseView) this.viewGrupos).GetRow(((ColumnView) this.viewGrupos).GetSelectedRows()[0]);
      if (row != null && row.FeenAcpa > DateTime.MinValue && row.NumeAcpa > 0)
      {
        if (new frmMostrarIngresoMultiple(row).ShowDialog() != DialogResult.OK)
          return;
        this.ResetearGrupoActual();
        new frmMensaje((Form) this).mostrarConfirmación("Boletos ingresados correctamente.");
      }
      else
        new frmMensaje((Form) this).mostrarError("El grupo seleccionado es incorrecto.");
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
    }
  }

  private void mtextNumeBole_Enter(object sender, EventArgs e)
  {
    if (this.mtextNumeBole.IntText != 0)
      return;
    this.mtextNumeBole.Clear();
  }

  private void mtextNumeBole_Leave(object sender, EventArgs e)
  {
    if (this.mtextNumeBole.IntText != 0)
      return;
    this.mtextNumeBole.IntText = 0;
  }

  private void mcboFormaPago_SelectedValueChanged(object sender, EventArgs e)
  {
    try
    {
      if ((int) this.mcboFormaPago.SelectedValue == 2)
      {
        this.mibCheque.Enabled = this.mibCheque.Visible = true;
        this.mibCheque.Text = string.Empty;
      }
      else
        this.mibCheque.Enabled = this.mibCheque.Visible = false;
    }
    catch (Exception ex)
    {
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmIngresoBoletoGrupo));
    this.panGlobal = new MetroPanel();
    this.panBoletos = new MetroPanel();
    this.panBoletosAgregados = new MetroPanel();
    this.panGridBoles = new MetroPanel();
    this.gridBoletos = new GridControl();
    this.viewBoletos = new GridView();
    this.colPeriBole = new GridColumn();
    this.colNumeBole = new GridColumn();
    this.colCodiOfic = new GridColumn();
    this.colCuenCtct = new GridColumn();
    this.colDetaPers = new GridColumn();
    this.colTipoBole = new GridColumn();
    this.colCapiBole = new GridColumn();
    this.colDecaBole = new GridColumn();
    this.colRecaBole = new GridColumn();
    this.colDereBole = new GridColumn();
    this.colAdicBole = new GridColumn();
    this.colInteBole = new GridColumn();
    this.colExenBole = new GridColumn();
    this.colApreBole = new GridColumn();
    this.colTotaBole = new GridColumn();
    this.colEliminarBoleto = new GridColumn();
    this.repositoryItemButtonEdit1 = new RepositoryItemButtonEdit();
    this.colPeriFopa = new GridColumn();
    this.colNumeFopa = new GridColumn();
    this.panTituBole = new MetroPanel();
    this.lblDetaBoles = new MetroLabel();
    this.panTotalesBoletos = new MetroPanel();
    this.mibCantBole = new MetroIntTextBox();
    this.lblCantBole = new MetroLabel();
    this.mdbTotaBole = new MetroDecimalTextBox();
    this.lblImpoTotDetaBole = new MetroLabel();
    this.panAgregarBoleto = new MetroPanel();
    this.btnAgregarMulti = new MetroButton();
    this.mibCheque = new MetroIntTextBox();
    this.lblFopa = new MetroLabel();
    this.mcboFormaPago = new MetroComboBox();
    this.mtextCodiBarra = new MetroTextBox();
    this.mtextNumeBole = new MetroIntTextBox();
    this.btnAgregar = new MetroButton();
    this.mtextPeriBole = new MetroIntTextBox();
    this.lblBoleManual = new MetroLabel();
    this.lblCodiBarBole = new MetroLabel();
    this.lblManual = new MetroLabel();
    this.lblCodiBar = new MetroLabel();
    this.panFormulario = new MetroPanel();
    this.chkCobroTick = new MetroCheckBox();
    this.lblTickeadora = new MetroLabel();
    this.mdbImpoTotal = new MetroDecimalTextBox();
    this.lblImpoTotal = new MetroLabel();
    this.mibTotResu = new MetroIntTextBox();
    this.lblTotRes = new MetroLabel();
    this.lblEnteReca = new MetroLabel();
    this.mebEnteReca = new MetroEntityBox();
    this.mibGrupo = new MetroIntTextBox();
    this.lblGrupo = new MetroLabel();
    this.lblFechaPago = new MetroLabel();
    this.dtpFechaPago = new MetroDateTimePicker();
    this.lblFechaEnvio = new MetroLabel();
    this.dtpFechaEnvio = new MetroDateTimePicker();
    this.panGrupos = new MetroPanel();
    this.gridGrupos = new GridControl();
    this.viewGrupos = new GridView();
    this.colFeenAcpa = new GridColumn();
    this.colNumeAcpa = new GridColumn();
    this.colActuAcpa = new GridColumn();
    this.colDetaEnre = new GridColumn();
    this.colFealAcpa = new GridColumn();
    this.colFepaAcpa = new GridColumn();
    this.colTocoAcpa = new GridColumn();
    this.colImpoAcpa = new GridColumn();
    this.colNoarAcpa = new GridColumn();
    this.panel1.SuspendLayout();
    this.panGlobal.SuspendLayout();
    this.panBoletos.SuspendLayout();
    this.panBoletosAgregados.SuspendLayout();
    this.panGridBoles.SuspendLayout();
    ((ISupportInitialize) this.gridBoletos).BeginInit();
    ((ISupportInitialize) this.viewBoletos).BeginInit();
    ((ISupportInitialize) this.repositoryItemButtonEdit1).BeginInit();
    this.panTituBole.SuspendLayout();
    this.panTotalesBoletos.SuspendLayout();
    this.panAgregarBoleto.SuspendLayout();
    this.panFormulario.SuspendLayout();
    this.panGrupos.SuspendLayout();
    ((ISupportInitialize) this.gridGrupos).BeginInit();
    ((ISupportInitialize) this.viewGrupos).BeginInit();
    this.SuspendLayout();
    this.panel1.Size = new Size(1344, 68);
    this.panel1.Controls.SetChildIndex((Control) this.separator1, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butEdit, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butNew, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butAnnular, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butDelete, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butCancel, 0);
    this.panel1.Controls.SetChildIndex((Control) this.butSave, 0);
    this.separator1.Size = new Size(17242, 2);
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
    this.panGlobal.Controls.Add((Control) this.panBoletos);
    this.panGlobal.Controls.Add((Control) this.panFormulario);
    this.panGlobal.Controls.Add((Control) this.panGrupos);
    this.panGlobal.Dock = DockStyle.Fill;
    this.panGlobal.Location = new Point(0, 68);
    this.panGlobal.Name = "panGlobal";
    this.panGlobal.Size = new Size(1344, 661);
    this.panGlobal.TabIndex = 2;
    this.panBoletos.Controls.Add((Control) this.panBoletosAgregados);
    this.panBoletos.Controls.Add((Control) this.panTotalesBoletos);
    this.panBoletos.Controls.Add((Control) this.panAgregarBoleto);
    this.panBoletos.Dock = DockStyle.Fill;
    this.panBoletos.Location = new Point(0, 266);
    this.panBoletos.Name = "panBoletos";
    this.panBoletos.Size = new Size(1344, 395);
    this.panBoletos.TabIndex = 4;
    this.panBoletosAgregados.Controls.Add((Control) this.panGridBoles);
    this.panBoletosAgregados.Controls.Add((Control) this.panTituBole);
    this.panBoletosAgregados.Dock = DockStyle.Fill;
    this.panBoletosAgregados.Location = new Point(0, 103);
    this.panBoletosAgregados.Name = "panBoletosAgregados";
    this.panBoletosAgregados.Size = new Size(1344, 256 /*0x0100*/);
    this.panBoletosAgregados.TabIndex = 4;
    this.panGridBoles.Controls.Add((Control) this.gridBoletos);
    this.panGridBoles.Dock = DockStyle.Fill;
    this.panGridBoles.Location = new Point(0, 26);
    this.panGridBoles.Name = "panGridBoles";
    this.panGridBoles.Size = new Size(1344, 230);
    this.panGridBoles.TabIndex = 3;
    ((Control) this.gridBoletos).Dock = DockStyle.Fill;
    ((Control) this.gridBoletos).Location = new Point(0, 0);
    this.gridBoletos.MainView = (BaseView) this.viewBoletos;
    ((Control) this.gridBoletos).Name = "gridBoletos";
    ((EditorContainer) this.gridBoletos).RepositoryItems.AddRange(new RepositoryItem[1]
    {
      (RepositoryItem) this.repositoryItemButtonEdit1
    });
    ((Control) this.gridBoletos).Size = new Size(1344, 230);
    ((Control) this.gridBoletos).TabIndex = 4;
    this.gridBoletos.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewBoletos
    });
    this.viewBoletos.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewBoletos.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewBoletos).Columns.AddRange(new GridColumn[18]
    {
      this.colPeriBole,
      this.colNumeBole,
      this.colCodiOfic,
      this.colCuenCtct,
      this.colDetaPers,
      this.colTipoBole,
      this.colCapiBole,
      this.colDecaBole,
      this.colRecaBole,
      this.colDereBole,
      this.colAdicBole,
      this.colInteBole,
      this.colExenBole,
      this.colApreBole,
      this.colTotaBole,
      this.colEliminarBoleto,
      this.colPeriFopa,
      this.colNumeFopa
    });
    this.viewBoletos.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.viewBoletos).GridControl = this.gridBoletos;
    ((BaseView) this.viewBoletos).Name = "viewBoletos";
    this.viewBoletos.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewBoletos.OptionsView.ShowGroupPanel = false;
    this.viewBoletos.OptionsView.ShowIndicator = false;
    this.colPeriBole.Caption = "Periodo";
    this.colPeriBole.FieldName = "PeriBole";
    this.colPeriBole.MaxWidth = 45;
    this.colPeriBole.MinWidth = 45;
    this.colPeriBole.Name = "colPeriBole";
    this.colPeriBole.OptionsColumn.AllowEdit = false;
    this.colPeriBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeriBole.OptionsColumn.AllowMove = false;
    this.colPeriBole.OptionsColumn.ReadOnly = true;
    this.colPeriBole.Visible = true;
    this.colPeriBole.VisibleIndex = 0;
    this.colPeriBole.Width = 45;
    this.colNumeBole.Caption = "Boleto";
    this.colNumeBole.FieldName = "NumeBole";
    this.colNumeBole.MaxWidth = 60;
    this.colNumeBole.MinWidth = 60;
    this.colNumeBole.Name = "colNumeBole";
    this.colNumeBole.OptionsColumn.AllowEdit = false;
    this.colNumeBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNumeBole.OptionsColumn.AllowMove = false;
    this.colNumeBole.OptionsColumn.ReadOnly = true;
    this.colNumeBole.Visible = true;
    this.colNumeBole.VisibleIndex = 1;
    this.colNumeBole.Width = 60;
    ((AppearanceOptions) this.colCodiOfic.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCodiOfic.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCodiOfic.Caption = "Ofic.";
    this.colCodiOfic.FieldName = "CodiOfic";
    this.colCodiOfic.MaxWidth = 35;
    this.colCodiOfic.MinWidth = 35;
    this.colCodiOfic.Name = "colCodiOfic";
    this.colCodiOfic.OptionsColumn.AllowEdit = false;
    this.colCodiOfic.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCodiOfic.OptionsColumn.AllowMove = false;
    this.colCodiOfic.OptionsColumn.ReadOnly = true;
    this.colCodiOfic.Visible = true;
    this.colCodiOfic.VisibleIndex = 2;
    this.colCodiOfic.Width = 35;
    this.colCuenCtct.Caption = "Cuenta";
    this.colCuenCtct.FieldName = "CuenCtct";
    this.colCuenCtct.MaxWidth = 80 /*0x50*/;
    this.colCuenCtct.MinWidth = 80 /*0x50*/;
    this.colCuenCtct.Name = "colCuenCtct";
    this.colCuenCtct.OptionsColumn.AllowEdit = false;
    this.colCuenCtct.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuenCtct.OptionsColumn.AllowMove = false;
    this.colCuenCtct.OptionsColumn.ReadOnly = true;
    this.colCuenCtct.Visible = true;
    this.colCuenCtct.VisibleIndex = 3;
    this.colCuenCtct.Width = 80 /*0x50*/;
    this.colDetaPers.Caption = "Apellido y Nombre";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.OptionsColumn.AllowEdit = false;
    this.colDetaPers.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetaPers.OptionsColumn.AllowMove = false;
    this.colDetaPers.OptionsColumn.ReadOnly = true;
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 4;
    this.colDetaPers.Width = 267;
    this.colTipoBole.Caption = "Tipo";
    this.colTipoBole.FieldName = "TipoBole";
    this.colTipoBole.MaxWidth = 80 /*0x50*/;
    this.colTipoBole.MinWidth = 80 /*0x50*/;
    this.colTipoBole.Name = "colTipoBole";
    this.colTipoBole.OptionsColumn.AllowEdit = false;
    this.colTipoBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTipoBole.OptionsColumn.AllowMove = false;
    this.colTipoBole.OptionsColumn.ReadOnly = true;
    this.colTipoBole.Visible = true;
    this.colTipoBole.VisibleIndex = 5;
    this.colTipoBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colCapiBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCapiBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCapiBole.Caption = "Capital";
    this.colCapiBole.DisplayFormat.FormatString = "C2";
    this.colCapiBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colCapiBole.FieldName = "CapiBole";
    this.colCapiBole.MaxWidth = 80 /*0x50*/;
    this.colCapiBole.MinWidth = 80 /*0x50*/;
    this.colCapiBole.Name = "colCapiBole";
    this.colCapiBole.OptionsColumn.AllowEdit = false;
    this.colCapiBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCapiBole.OptionsColumn.AllowMove = false;
    this.colCapiBole.OptionsColumn.ReadOnly = true;
    this.colCapiBole.Visible = true;
    this.colCapiBole.VisibleIndex = 6;
    this.colCapiBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colDecaBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDecaBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDecaBole.Caption = "Des. Cap.";
    this.colDecaBole.DisplayFormat.FormatString = "C2";
    this.colDecaBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colDecaBole.FieldName = "DecaBole";
    this.colDecaBole.MaxWidth = 80 /*0x50*/;
    this.colDecaBole.MinWidth = 80 /*0x50*/;
    this.colDecaBole.Name = "colDecaBole";
    this.colDecaBole.OptionsColumn.AllowEdit = false;
    this.colDecaBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDecaBole.OptionsColumn.AllowMove = false;
    this.colDecaBole.OptionsColumn.ReadOnly = true;
    this.colDecaBole.Visible = true;
    this.colDecaBole.VisibleIndex = 7;
    this.colDecaBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colRecaBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colRecaBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colRecaBole.Caption = "Recargo";
    this.colRecaBole.DisplayFormat.FormatString = "C2";
    this.colRecaBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colRecaBole.FieldName = "RecaBole";
    this.colRecaBole.MaxWidth = 80 /*0x50*/;
    this.colRecaBole.MinWidth = 80 /*0x50*/;
    this.colRecaBole.Name = "colRecaBole";
    this.colRecaBole.OptionsColumn.AllowEdit = false;
    this.colRecaBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colRecaBole.OptionsColumn.AllowMove = false;
    this.colRecaBole.OptionsColumn.ReadOnly = true;
    this.colRecaBole.Visible = true;
    this.colRecaBole.VisibleIndex = 8;
    this.colRecaBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colDereBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDereBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDereBole.Caption = "Des. Rec.";
    this.colDereBole.DisplayFormat.FormatString = "C2";
    this.colDereBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colDereBole.FieldName = "DereBole";
    this.colDereBole.MaxWidth = 80 /*0x50*/;
    this.colDereBole.MinWidth = 80 /*0x50*/;
    this.colDereBole.Name = "colDereBole";
    this.colDereBole.OptionsColumn.AllowEdit = false;
    this.colDereBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDereBole.OptionsColumn.AllowMove = false;
    this.colDereBole.OptionsColumn.ReadOnly = true;
    this.colDereBole.Visible = true;
    this.colDereBole.VisibleIndex = 9;
    this.colDereBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colAdicBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colAdicBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colAdicBole.Caption = "Adicional";
    this.colAdicBole.DisplayFormat.FormatString = "C2";
    this.colAdicBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colAdicBole.FieldName = "AdicBole";
    this.colAdicBole.MaxWidth = 80 /*0x50*/;
    this.colAdicBole.MinWidth = 80 /*0x50*/;
    this.colAdicBole.Name = "colAdicBole";
    this.colAdicBole.OptionsColumn.AllowEdit = false;
    this.colAdicBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colAdicBole.OptionsColumn.AllowMove = false;
    this.colAdicBole.OptionsColumn.ReadOnly = true;
    this.colAdicBole.Visible = true;
    this.colAdicBole.VisibleIndex = 10;
    this.colAdicBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colInteBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colInteBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colInteBole.Caption = "Interes";
    this.colInteBole.DisplayFormat.FormatString = "C2";
    this.colInteBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colInteBole.FieldName = "InteBole";
    this.colInteBole.MaxWidth = 80 /*0x50*/;
    this.colInteBole.MinWidth = 80 /*0x50*/;
    this.colInteBole.Name = "colInteBole";
    this.colInteBole.OptionsColumn.AllowEdit = false;
    this.colInteBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colInteBole.OptionsColumn.AllowMove = false;
    this.colInteBole.OptionsColumn.ReadOnly = true;
    this.colInteBole.Visible = true;
    this.colInteBole.VisibleIndex = 11;
    this.colInteBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colExenBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colExenBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colExenBole.Caption = "Exención";
    this.colExenBole.DisplayFormat.FormatString = "C2";
    this.colExenBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colExenBole.FieldName = "ExenBole";
    this.colExenBole.MaxWidth = 80 /*0x50*/;
    this.colExenBole.MinWidth = 80 /*0x50*/;
    this.colExenBole.Name = "colExenBole";
    this.colExenBole.OptionsColumn.AllowEdit = false;
    this.colExenBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colExenBole.OptionsColumn.AllowMove = false;
    this.colExenBole.OptionsColumn.ReadOnly = true;
    this.colExenBole.Visible = true;
    this.colExenBole.VisibleIndex = 12;
    this.colExenBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colApreBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colApreBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colApreBole.Caption = "Apremio";
    this.colApreBole.DisplayFormat.FormatString = "C2";
    this.colApreBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colApreBole.FieldName = "ApreBole";
    this.colApreBole.MaxWidth = 80 /*0x50*/;
    this.colApreBole.MinWidth = 80 /*0x50*/;
    this.colApreBole.Name = "colApreBole";
    this.colApreBole.OptionsColumn.AllowEdit = false;
    this.colApreBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colApreBole.OptionsColumn.AllowMove = false;
    this.colApreBole.OptionsColumn.ReadOnly = true;
    this.colApreBole.Visible = true;
    this.colApreBole.VisibleIndex = 13;
    this.colApreBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colTotaBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotaBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotaBole.Caption = "Total";
    this.colTotaBole.DisplayFormat.FormatString = "C2";
    this.colTotaBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colTotaBole.FieldName = "TotaBole";
    this.colTotaBole.MaxWidth = 80 /*0x50*/;
    this.colTotaBole.MinWidth = 80 /*0x50*/;
    this.colTotaBole.Name = "colTotaBole";
    this.colTotaBole.OptionsColumn.AllowEdit = false;
    this.colTotaBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTotaBole.OptionsColumn.AllowMove = false;
    this.colTotaBole.OptionsColumn.ReadOnly = true;
    this.colTotaBole.Visible = true;
    this.colTotaBole.VisibleIndex = 14;
    this.colTotaBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colEliminarBoleto.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colEliminarBoleto.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    ((AppearanceObject) this.colEliminarBoleto.AppearanceCell).TextOptions.VAlignment = (VertAlignment) 2;
    this.colEliminarBoleto.ColumnEdit = (RepositoryItem) this.repositoryItemButtonEdit1;
    this.colEliminarBoleto.MaxWidth = 30;
    this.colEliminarBoleto.MinWidth = 30;
    this.colEliminarBoleto.Name = "colEliminarBoleto";
    this.colEliminarBoleto.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colEliminarBoleto.OptionsColumn.AllowMove = false;
    this.colEliminarBoleto.ShowButtonMode = (ShowButtonModeEnum) 1;
    this.colEliminarBoleto.Visible = true;
    this.colEliminarBoleto.VisibleIndex = 15;
    this.colEliminarBoleto.Width = 30;
    ((RepositoryItem) this.repositoryItemButtonEdit1).AutoHeight = false;
    this.repositoryItemButtonEdit1.Buttons.AddRange(new EditorButton[1]
    {
      new EditorButton((ButtonPredefines) 2)
    });
    ((RepositoryItem) this.repositoryItemButtonEdit1).Name = "repositoryItemButtonEdit1";
    this.repositoryItemButtonEdit1.TextEditStyle = (TextEditStyles) 1;
    ((RepositoryItem) this.repositoryItemButtonEdit1).Click += new EventHandler(this.repositoryItemButtonEdit1_Click);
    this.colPeriFopa.Caption = "PeriFopa";
    this.colPeriFopa.FieldName = "PeriFopa";
    this.colPeriFopa.Name = "colPeriFopa";
    this.colNumeFopa.Caption = "NumeFopa";
    this.colNumeFopa.FieldName = "NumeFopa";
    this.colNumeFopa.Name = "colNumeFopa";
    this.panTituBole.Controls.Add((Control) this.lblDetaBoles);
    this.panTituBole.Dock = DockStyle.Top;
    this.panTituBole.Location = new Point(0, 0);
    this.panTituBole.Name = "panTituBole";
    this.panTituBole.Size = new Size(1344, 26);
    this.panTituBole.TabIndex = 2;
    this.lblDetaBoles.AutoSize = false;
    this.lblDetaBoles.Dock = DockStyle.Fill;
    this.lblDetaBoles.Location = new Point(0, 0);
    this.lblDetaBoles.Name = "lblDetaBoles";
    this.lblDetaBoles.Size = new Size(1344, 26);
    this.lblDetaBoles.TabIndex = 2;
    this.lblDetaBoles.Text = "Detalle de los Boletos Agregados";
    this.lblDetaBoles.TextAlign = ContentAlignment.MiddleCenter;
    this.panTotalesBoletos.Controls.Add((Control) this.mibCantBole);
    this.panTotalesBoletos.Controls.Add((Control) this.lblCantBole);
    this.panTotalesBoletos.Controls.Add((Control) this.mdbTotaBole);
    this.panTotalesBoletos.Controls.Add((Control) this.lblImpoTotDetaBole);
    this.panTotalesBoletos.Dock = DockStyle.Bottom;
    this.panTotalesBoletos.Location = new Point(0, 359);
    this.panTotalesBoletos.Name = "panTotalesBoletos";
    this.panTotalesBoletos.Size = new Size(1344, 36);
    this.panTotalesBoletos.TabIndex = 3;
    this.mibCantBole.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.mibCantBole.Enabled = false;
    this.mibCantBole.Location = new Point(939, 6);
    this.mibCantBole.Name = "mibCantBole";
    this.mibCantBole.ReadOnly = true;
    this.mibCantBole.Size = new Size(100, 23);
    this.mibCantBole.TabIndex = 15;
    this.lblCantBole.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.lblCantBole.AutoSize = false;
    this.lblCantBole.Location = new Point(865, 6);
    this.lblCantBole.Name = "lblCantBole";
    this.lblCantBole.Size = new Size(62, 19);
    this.lblCantBole.TabIndex = 14;
    this.lblCantBole.Text = "Cantidad";
    this.mdbTotaBole.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.mdbTotaBole.Enabled = false;
    this.mdbTotaBole.Location = new Point(1183, 6);
    this.mdbTotaBole.Name = "mdbTotaBole";
    this.mdbTotaBole.ReadOnly = true;
    this.mdbTotaBole.Size = new Size(155, 23);
    this.mdbTotaBole.TabIndex = 15;
    this.lblImpoTotDetaBole.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.lblImpoTotDetaBole.AutoSize = false;
    this.lblImpoTotDetaBole.Location = new Point(1083, 6);
    this.lblImpoTotDetaBole.Name = "lblImpoTotDetaBole";
    this.lblImpoTotDetaBole.Size = new Size(88, 19);
    this.lblImpoTotDetaBole.TabIndex = 14;
    this.lblImpoTotDetaBole.Text = "Importe Total";
    this.panAgregarBoleto.Controls.Add((Control) this.btnAgregarMulti);
    this.panAgregarBoleto.Controls.Add((Control) this.mibCheque);
    this.panAgregarBoleto.Controls.Add((Control) this.lblFopa);
    this.panAgregarBoleto.Controls.Add((Control) this.mcboFormaPago);
    this.panAgregarBoleto.Controls.Add((Control) this.mtextCodiBarra);
    this.panAgregarBoleto.Controls.Add((Control) this.mtextNumeBole);
    this.panAgregarBoleto.Controls.Add((Control) this.btnAgregar);
    this.panAgregarBoleto.Controls.Add((Control) this.mtextPeriBole);
    this.panAgregarBoleto.Controls.Add((Control) this.lblBoleManual);
    this.panAgregarBoleto.Controls.Add((Control) this.lblCodiBarBole);
    this.panAgregarBoleto.Controls.Add((Control) this.lblManual);
    this.panAgregarBoleto.Controls.Add((Control) this.lblCodiBar);
    this.panAgregarBoleto.Dock = DockStyle.Top;
    this.panAgregarBoleto.Location = new Point(0, 0);
    this.panAgregarBoleto.MaximumSize = new Size(1344, 103);
    this.panAgregarBoleto.Name = "panAgregarBoleto";
    this.panAgregarBoleto.Size = new Size(1344, 103);
    this.panAgregarBoleto.TabIndex = 2;
    this.btnAgregarMulti.Enabled = false;
    this.btnAgregarMulti.Location = new Point(594, 68);
    this.btnAgregarMulti.Name = "btnAgregarMulti";
    this.btnAgregarMulti.Size = new Size(120, 23);
    this.btnAgregarMulti.TabIndex = 18;
    this.btnAgregarMulti.Text = "AGREGAR MÚLTIPLES";
    this.btnAgregarMulti.Click += new EventHandler(this.btnAgregarMulti_Click);
    this.mibCheque.AllowEmpty = true;
    this.mibCheque.Enabled = false;
    this.mibCheque.Location = new Point(638, 23);
    this.mibCheque.MaxLength = 9;
    this.mibCheque.MaxValue = 999999999;
    this.mibCheque.Name = "mibCheque";
    this.mibCheque.PromptText = "N° Cheque";
    this.mibCheque.Size = new Size(76, 23);
    this.mibCheque.TabIndex = 17;
    this.mibCheque.Visible = false;
    this.mibCheque.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.lblFopa.AutoSize = false;
    this.lblFopa.Location = new Point(368, 23);
    this.lblFopa.Name = "lblFopa";
    this.lblFopa.Size = new Size(88, 19);
    this.lblFopa.TabIndex = 16 /*0x10*/;
    this.lblFopa.Text = "Forma Pago";
    this.mcboFormaPago.Enabled = false;
    this.mcboFormaPago.FormattingEnabled = false;
    this.mcboFormaPago.Location = new Point(468, 23);
    this.mcboFormaPago.Name = "mcboFormaPago";
    this.mcboFormaPago.Size = new Size(158, 23);
    this.mcboFormaPago.TabIndex = 14;
    this.mcboFormaPago.SelectedValueChanged += new EventHandler(this.mcboFormaPago_SelectedValueChanged);
    this.mtextCodiBarra.Enabled = false;
    this.mtextCodiBarra.Location = new Point(144 /*0x90*/, 23);
    this.mtextCodiBarra.MaxLength = 12;
    this.mtextCodiBarra.Name = "mtextCodiBarra";
    this.mtextCodiBarra.Size = new Size(174, 23);
    this.mtextCodiBarra.TabIndex = 6;
    this.mtextCodiBarra.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.mtextNumeBole.AllowEmpty = true;
    this.mtextNumeBole.Enabled = false;
    this.mtextNumeBole.Location = new Point(211, 74);
    this.mtextNumeBole.MaxLength = 7;
    this.mtextNumeBole.MaxValue = 9999999;
    this.mtextNumeBole.MinValue = 1;
    this.mtextNumeBole.Name = "mtextNumeBole";
    this.mtextNumeBole.Size = new Size(107, 23);
    this.mtextNumeBole.TabIndex = 9;
    this.mtextNumeBole.Enter += new EventHandler(this.mtextNumeBole_Enter);
    this.mtextNumeBole.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.mtextNumeBole.Leave += new EventHandler(this.mtextNumeBole_Leave);
    this.btnAgregar.Enabled = false;
    this.btnAgregar.Location = new Point(468, 68);
    this.btnAgregar.Name = "btnAgregar";
    this.btnAgregar.Size = new Size(75, 23);
    this.btnAgregar.TabIndex = 11;
    this.btnAgregar.Text = "AGREGAR";
    this.btnAgregar.Click += new EventHandler(this.btnAgregar_Click);
    this.mtextPeriBole.AllowEmpty = true;
    this.mtextPeriBole.Enabled = false;
    this.mtextPeriBole.Location = new Point(144 /*0x90*/, 74);
    this.mtextPeriBole.MaxLength = 4;
    this.mtextPeriBole.MaxValue = 9999;
    this.mtextPeriBole.MinValue = 1980;
    this.mtextPeriBole.Name = "mtextPeriBole";
    this.mtextPeriBole.Size = new Size(55, 23);
    this.mtextPeriBole.TabIndex = 7;
    this.mtextPeriBole.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.lblBoleManual.AutoSize = false;
    this.lblBoleManual.Location = new Point(52, 77);
    this.lblBoleManual.Name = "lblBoleManual";
    this.lblBoleManual.Size = new Size(80 /*0x50*/, 19);
    this.lblBoleManual.TabIndex = 13;
    this.lblBoleManual.Text = "Boleto Nro.:";
    this.lblCodiBarBole.AutoSize = false;
    this.lblCodiBarBole.Location = new Point(52, 27);
    this.lblCodiBarBole.Name = "lblCodiBarBole";
    this.lblCodiBarBole.Size = new Size(80 /*0x50*/, 19);
    this.lblCodiBarBole.TabIndex = 12;
    this.lblCodiBarBole.Text = "Boleto Nro.:";
    this.lblManual.AutoSize = false;
    this.lblManual.Location = new Point(75, 58);
    this.lblManual.Name = "lblManual";
    this.lblManual.Size = new Size(52, 19);
    this.lblManual.TabIndex = 10;
    this.lblManual.Text = "Manual";
    this.lblCodiBar.AutoSize = false;
    this.lblCodiBar.Location = new Point(32 /*0x20*/, 6);
    this.lblCodiBar.Name = "lblCodiBar";
    this.lblCodiBar.Size = new Size(108, 19);
    this.lblCodiBar.TabIndex = 8;
    this.lblCodiBar.Text = "Codigo de Barra";
    this.panFormulario.Controls.Add((Control) this.chkCobroTick);
    this.panFormulario.Controls.Add((Control) this.lblTickeadora);
    this.panFormulario.Controls.Add((Control) this.mdbImpoTotal);
    this.panFormulario.Controls.Add((Control) this.lblImpoTotal);
    this.panFormulario.Controls.Add((Control) this.mibTotResu);
    this.panFormulario.Controls.Add((Control) this.lblTotRes);
    this.panFormulario.Controls.Add((Control) this.lblEnteReca);
    this.panFormulario.Controls.Add((Control) this.mebEnteReca);
    this.panFormulario.Controls.Add((Control) this.mibGrupo);
    this.panFormulario.Controls.Add((Control) this.lblGrupo);
    this.panFormulario.Controls.Add((Control) this.lblFechaPago);
    this.panFormulario.Controls.Add((Control) this.dtpFechaPago);
    this.panFormulario.Controls.Add((Control) this.lblFechaEnvio);
    this.panFormulario.Controls.Add((Control) this.dtpFechaEnvio);
    this.panFormulario.Dock = DockStyle.Top;
    this.panFormulario.Location = new Point(0, 115);
    this.panFormulario.MaximumSize = new Size(1344, 157);
    this.panFormulario.Name = "panFormulario";
    this.panFormulario.Size = new Size(1344, 151);
    this.panFormulario.TabIndex = 3;
    this.chkCobroTick.AutoSize = false;
    this.chkCobroTick.Enabled = false;
    this.chkCobroTick.Location = new Point(726, 21);
    this.chkCobroTick.Name = "chkCobroTick";
    this.chkCobroTick.Size = new Size(69, 19);
    this.chkCobroTick.TabIndex = 15;
    this.chkCobroTick.Text = "Inactivo";
    this.lblTickeadora.AutoSize = false;
    this.lblTickeadora.Location = new Point(574, 21);
    this.lblTickeadora.Name = "lblTickeadora";
    this.lblTickeadora.Size = new Size(157, 19);
    this.lblTickeadora.TabIndex = 14;
    this.lblTickeadora.Text = "Ingreso con Tickeadora:";
    this.mdbImpoTotal.Enabled = false;
    this.mdbImpoTotal.Location = new Point(390, 122);
    this.mdbImpoTotal.Name = "mdbImpoTotal";
    this.mdbImpoTotal.Size = new Size(155, 23);
    this.mdbImpoTotal.TabIndex = 13;
    this.mdbImpoTotal.KeyDown += new KeyEventHandler(this.SoloNumerosPunto);
    this.lblImpoTotal.AutoSize = false;
    this.lblImpoTotal.Location = new Point(290, 122);
    this.lblImpoTotal.Name = "lblImpoTotal";
    this.lblImpoTotal.Size = new Size(88, 19);
    this.lblImpoTotal.TabIndex = 12;
    this.lblImpoTotal.Text = "Importe Total";
    this.mibTotResu.Enabled = false;
    this.mibTotResu.Location = new Point(152, 118);
    this.mibTotResu.Name = "mibTotResu";
    this.mibTotResu.Size = new Size(100, 23);
    this.mibTotResu.TabIndex = 11;
    this.mibTotResu.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.lblTotRes.AutoSize = false;
    this.lblTotRes.Location = new Point(38, 118);
    this.lblTotRes.Name = "lblTotRes";
    this.lblTotRes.Size = new Size(105, 19);
    this.lblTotRes.TabIndex = 10;
    this.lblTotRes.Text = "Total de Boletos";
    this.lblEnteReca.AutoSize = false;
    this.lblEnteReca.Location = new Point(34, 85);
    this.lblEnteReca.Name = "lblEnteReca";
    this.lblEnteReca.Size = new Size(109, 19);
    this.lblEnteReca.TabIndex = 9;
    this.lblEnteReca.Text = "Ente Recaudador";
    this.mebEnteReca.AllowEmpty = false;
    this.mebEnteReca.AllowSqlCharacters = false;
    this.mebEnteReca.BackColor = Color.White;
    this.mebEnteReca.Enabled = false;
    this.mebEnteReca.Entity = (Entity) null;
    this.mebEnteReca.ExternalValidation = (Func<string>) null;
    this.mebEnteReca.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebEnteReca.LabelText = "";
    this.mebEnteReca.Location = new Point(152, 85);
    this.mebEnteReca.MandatoryWrite = false;
    this.mebEnteReca.Margin = new Padding(3, 4, 3, 4);
    this.mebEnteReca.MaximumSize = new Size(3000, 23);
    this.mebEnteReca.MaxLenght = 50;
    this.mebEnteReca.MinimumSize = new Size(100, 23);
    this.mebEnteReca.Name = "mebEnteReca";
    this.mebEnteReca.PropertyDetail = "DetaEnre";
    this.mebEnteReca.PropertyID = "CodiEnre";
    this.mebEnteReca.ShowNewButton = false;
    this.mebEnteReca.ShowSearchButton = false;
    this.mebEnteReca.Size = new Size(555, 23);
    this.mebEnteReca.TabIndex = 8;
    this.mebEnteReca.TextAlign = HorizontalAlignment.Left;
    this.mebEnteReca.TextBoxWidth = 100;
    this.mibGrupo.Enabled = false;
    this.mibGrupo.Location = new Point(152, 52);
    this.mibGrupo.Name = "mibGrupo";
    this.mibGrupo.Size = new Size(100, 23);
    this.mibGrupo.TabIndex = 7;
    this.mibGrupo.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.lblGrupo.AutoSize = false;
    this.lblGrupo.Location = new Point(75, 51);
    this.lblGrupo.Name = "lblGrupo";
    this.lblGrupo.Size = new Size(65, 19);
    this.lblGrupo.TabIndex = 6;
    this.lblGrupo.Text = "N° Grupo";
    this.lblFechaPago.AutoSize = false;
    this.lblFechaPago.Location = new Point(290, 21);
    this.lblFechaPago.Name = "lblFechaPago";
    this.lblFechaPago.Size = new Size(96 /*0x60*/, 19);
    this.lblFechaPago.TabIndex = 5;
    this.lblFechaPago.Text = "Fecha de Pago";
    this.dtpFechaPago.Enabled = false;
    this.dtpFechaPago.Location = new Point(398, 20);
    this.dtpFechaPago.Name = "dtpFechaPago";
    this.dtpFechaPago.Size = new Size(100, 20);
    this.dtpFechaPago.TabIndex = 4;
    this.lblFechaEnvio.AutoSize = false;
    this.lblFechaEnvio.Location = new Point(43, 20);
    this.lblFechaEnvio.Name = "lblFechaEnvio";
    this.lblFechaEnvio.Size = new Size(97, 19);
    this.lblFechaEnvio.TabIndex = 3;
    this.lblFechaEnvio.Text = "Fecha de Envío";
    this.dtpFechaEnvio.Enabled = false;
    this.dtpFechaEnvio.Location = new Point(152, 20);
    this.dtpFechaEnvio.Name = "dtpFechaEnvio";
    this.dtpFechaEnvio.Size = new Size(100, 20);
    this.dtpFechaEnvio.TabIndex = 2;
    this.panGrupos.Controls.Add((Control) this.gridGrupos);
    this.panGrupos.Dock = DockStyle.Top;
    this.panGrupos.Location = new Point(0, 0);
    this.panGrupos.Name = "panGrupos";
    this.panGrupos.Size = new Size(1344, 115);
    this.panGrupos.TabIndex = 2;
    ((Control) this.gridGrupos).Dock = DockStyle.Fill;
    ((Control) this.gridGrupos).Location = new Point(0, 0);
    this.gridGrupos.MainView = (BaseView) this.viewGrupos;
    ((Control) this.gridGrupos).Name = "gridGrupos";
    ((Control) this.gridGrupos).Size = new Size(1344, 115);
    ((Control) this.gridGrupos).TabIndex = 5;
    this.gridGrupos.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewGrupos
    });
    this.viewGrupos.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewGrupos.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewGrupos).Columns.AddRange(new GridColumn[9]
    {
      this.colFeenAcpa,
      this.colNumeAcpa,
      this.colActuAcpa,
      this.colDetaEnre,
      this.colFealAcpa,
      this.colFepaAcpa,
      this.colTocoAcpa,
      this.colImpoAcpa,
      this.colNoarAcpa
    });
    this.viewGrupos.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.viewGrupos).GridControl = this.gridGrupos;
    ((BaseView) this.viewGrupos).Name = "viewGrupos";
    this.viewGrupos.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewGrupos.OptionsView.ShowGroupPanel = false;
    this.viewGrupos.OptionsView.ShowIndicator = false;
    ((ColumnView) this.viewGrupos).SelectionChanged += new SelectionChangedEventHandler(this.viewGrupos_SelectionChanged);
    this.colFeenAcpa.Caption = "Fecha Envio";
    this.colFeenAcpa.FieldName = "FeenAcpa";
    this.colFeenAcpa.Name = "colFeenAcpa";
    this.colFeenAcpa.OptionsColumn.AllowEdit = false;
    this.colFeenAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFeenAcpa.OptionsColumn.AllowMove = false;
    this.colFeenAcpa.OptionsColumn.ReadOnly = true;
    this.colFeenAcpa.Visible = true;
    this.colFeenAcpa.VisibleIndex = 0;
    this.colFeenAcpa.Width = 77;
    this.colNumeAcpa.Caption = "Grupo";
    this.colNumeAcpa.FieldName = "NumeAcpa";
    this.colNumeAcpa.Name = "colNumeAcpa";
    this.colNumeAcpa.OptionsColumn.AllowEdit = false;
    this.colNumeAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNumeAcpa.OptionsColumn.AllowMove = false;
    this.colNumeAcpa.OptionsColumn.ReadOnly = true;
    this.colNumeAcpa.Visible = true;
    this.colNumeAcpa.VisibleIndex = 1;
    this.colNumeAcpa.Width = 41;
    this.colActuAcpa.Caption = "Actualizado";
    this.colActuAcpa.FieldName = "ActuAcpa";
    this.colActuAcpa.Name = "colActuAcpa";
    this.colActuAcpa.OptionsColumn.AllowEdit = false;
    this.colActuAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colActuAcpa.OptionsColumn.AllowMove = false;
    this.colActuAcpa.OptionsColumn.ReadOnly = true;
    this.colActuAcpa.Visible = true;
    this.colActuAcpa.VisibleIndex = 2;
    this.colActuAcpa.Width = 65;
    this.colDetaEnre.Caption = "Ente Recaudador";
    this.colDetaEnre.FieldName = "DetaEnre";
    this.colDetaEnre.Name = "colDetaEnre";
    this.colDetaEnre.OptionsColumn.AllowEdit = false;
    this.colDetaEnre.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetaEnre.OptionsColumn.AllowMove = false;
    this.colDetaEnre.OptionsColumn.ReadOnly = true;
    this.colDetaEnre.Visible = true;
    this.colDetaEnre.VisibleIndex = 3;
    this.colDetaEnre.Width = (int) sbyte.MaxValue;
    this.colFealAcpa.Caption = "Fecha Alta";
    this.colFealAcpa.FieldName = "FealAcpa";
    this.colFealAcpa.Name = "colFealAcpa";
    this.colFealAcpa.OptionsColumn.AllowEdit = false;
    this.colFealAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFealAcpa.OptionsColumn.AllowMove = false;
    this.colFealAcpa.OptionsColumn.ReadOnly = true;
    this.colFealAcpa.Visible = true;
    this.colFealAcpa.VisibleIndex = 4;
    this.colFealAcpa.Width = 72;
    this.colFepaAcpa.Caption = "Fecha de Pago";
    this.colFepaAcpa.FieldName = "FepaAcpa";
    this.colFepaAcpa.Name = "colFepaAcpa";
    this.colFepaAcpa.OptionsColumn.AllowEdit = false;
    this.colFepaAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFepaAcpa.OptionsColumn.AllowMove = false;
    this.colFepaAcpa.OptionsColumn.ReadOnly = true;
    this.colFepaAcpa.Visible = true;
    this.colFepaAcpa.VisibleIndex = 5;
    this.colFepaAcpa.Width = 86;
    this.colTocoAcpa.Caption = "Total Boletos";
    this.colTocoAcpa.FieldName = "TocoAcpa";
    this.colTocoAcpa.Name = "colTocoAcpa";
    this.colTocoAcpa.OptionsColumn.AllowEdit = false;
    this.colTocoAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTocoAcpa.OptionsColumn.AllowMove = false;
    this.colTocoAcpa.OptionsColumn.ReadOnly = true;
    this.colTocoAcpa.Visible = true;
    this.colTocoAcpa.VisibleIndex = 6;
    this.colTocoAcpa.Width = 71;
    ((AppearanceOptions) this.colImpoAcpa.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImpoAcpa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImpoAcpa.Caption = "Importe Total";
    this.colImpoAcpa.DisplayFormat.FormatString = "C2";
    this.colImpoAcpa.DisplayFormat.FormatType = (FormatType) 1;
    this.colImpoAcpa.FieldName = "ImpoAcpa";
    this.colImpoAcpa.Name = "colImpoAcpa";
    this.colImpoAcpa.OptionsColumn.AllowEdit = false;
    this.colImpoAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colImpoAcpa.OptionsColumn.AllowMove = false;
    this.colImpoAcpa.OptionsColumn.ReadOnly = true;
    this.colImpoAcpa.Visible = true;
    this.colImpoAcpa.VisibleIndex = 7;
    this.colImpoAcpa.Width = 115;
    this.colNoarAcpa.Caption = "Archivo";
    this.colNoarAcpa.FieldName = "NoarAcpa";
    this.colNoarAcpa.Name = "colNoarAcpa";
    this.colNoarAcpa.OptionsColumn.AllowEdit = false;
    this.colNoarAcpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNoarAcpa.OptionsColumn.AllowMove = false;
    this.colNoarAcpa.OptionsColumn.ReadOnly = true;
    this.colNoarAcpa.Visible = true;
    this.colNoarAcpa.VisibleIndex = 8;
    this.colNoarAcpa.Width = 54;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1344, 729);
    this.ControlBox = false;
    this.Controls.Add((Control) this.panGlobal);
    this.Name = nameof (frmIngresoBoletoGrupo);
    this.Text = "Ingreso de Boletos";
    this.Controls.SetChildIndex((Control) this.panel1, 0);
    this.Controls.SetChildIndex((Control) this.panGlobal, 0);
    this.panel1.ResumeLayout(false);
    this.panGlobal.ResumeLayout(false);
    this.panBoletos.ResumeLayout(false);
    this.panBoletosAgregados.ResumeLayout(false);
    this.panGridBoles.ResumeLayout(false);
    ((ISupportInitialize) this.gridBoletos).EndInit();
    ((ISupportInitialize) this.viewBoletos).EndInit();
    ((ISupportInitialize) this.repositoryItemButtonEdit1).EndInit();
    this.panTituBole.ResumeLayout(false);
    this.panTotalesBoletos.ResumeLayout(false);
    this.panAgregarBoleto.ResumeLayout(false);
    this.panFormulario.ResumeLayout(false);
    this.panGrupos.ResumeLayout(false);
    ((ISupportInitialize) this.gridGrupos).EndInit();
    ((ISupportInitialize) this.viewGrupos).EndInit();
    this.ResumeLayout(false);
  }
}
