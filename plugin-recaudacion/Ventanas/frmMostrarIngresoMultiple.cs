// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmMostrarIngresoMultiple
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.Utils.Extensions;
using DevExpress.XtraEditors.Container;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Core;
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

public class frmMostrarIngresoMultiple : BaseForm
{
  private readonly BoletoGrupo grupo;
  private ExpIngresoMultiple expIngreso;
  private List<BoletoCaja> boletosAgregados;
  private List<FormaPago> formasPagoDisponibles;
  private List<FormaPago> formasPagoUsadas;
  private FormaPago TipaSeleccionado;
  private FormaPago FopaSeleccionada;
  private bool pagoEspecial;
  private IContainer components = (IContainer) null;
  private MetroPanel panSuperior;
  private MetroLabel lblTitulo;
  private MetroPanel panIngresos;
  private MetroPanel panCentral;
  private MetroTextBox mtbCodiBarra;
  private MetroLabel lblCodiBarBole;
  private MetroLabel lblCodiBar;
  private MetroIntTextBox mtbNumeBole;
  private MetroIntTextBox mtbPeriBole;
  private MetroLabel lblBoleManual;
  private MetroLabel lblManual;
  private MetroButton btnAgregar;
  private MetroLabel lblDetalleBole;
  private GridControl gridBoletos;
  private GridView viewBoletos;
  private GridColumn colPeriBole;
  private GridColumn colNumeBole;
  private GridColumn colCodiOfic;
  private GridColumn colCuenCtct;
  private GridColumn colCapiBole;
  private GridColumn colDecaBole;
  private GridColumn colRecaBole;
  private GridColumn colDereBole;
  private GridColumn colApreBole;
  private GridColumn colTotaBole;
  private GridColumn colEliminarBoleto;
  private RepositoryItemButtonEdit repositoryItemButtonEdit1;
  private MetroLabel lblFopas;
  private GridControl gridTipas;
  private GridView viewTipas;
  private GridColumn colCodiTipa;
  private GridColumn colDetaTipa;
  private GridControl gridFopas;
  private GridView viewFopas;
  private GridColumn colCodiTipaFP;
  private GridColumn colDetaTipaFP;
  private GridColumn colNuchFopa;
  private GridColumn colImpoFopa;
  private MetroButton btnCancelar;
  private MetroButton btnConfirmar;
  private Label lblFaltaPago;
  private Label lblFalta;
  private MetroLabel lblCodiEnre;
  private MetroLabel lblEnte;
  private MetroLabel lblNumeAcpa;
  private MetroLabel lblGrupo;
  private MetroLabel lblFeenAcpa;
  private MetroLabel lblFechaEnvio;
  private MetroCheckBox chkCobroTick;
  private MetroLabel lblTickeadora;

  public frmMostrarIngresoMultiple(BoletoGrupo gp)
  {
    this.InitializeComponent();
    this.grupo = gp;
    this.expIngreso = new ExpIngresoMultiple();
    this.lblFeenAcpa.Text = this.grupo.FeenAcpa.ToShortDateString();
    this.lblNumeAcpa.Text = this.grupo.NumeAcpa.ToString();
    this.lblCodiEnre.Text = $"{this.grupo.CodiEnre} - {this.grupo.DetaEnre}";
    this.boletosAgregados = new List<BoletoCaja>();
    this.formasPagoDisponibles = new List<FormaPago>();
    this.formasPagoUsadas = new List<FormaPago>();
    this.gridBoletos.DataSource = (object) this.boletosAgregados;
    this.gridFopas.DataSource = (object) this.formasPagoUsadas;
    this.LimpiarControles();
    this.ConfiguracionesPorMunicipio();
    this.chkCobroTick.Checked = PARAMS.Parameters.GetString("TickeadoraActiva") == "True";
    this.chkCobroTick.Text = this.chkCobroTick.Checked ? "Activo" : "Inactivo";
    this.FocusControlIngresoPago();
  }

  private void LimpiarControles()
  {
    this.mtbCodiBarra.Text = string.Empty;
    this.mtbPeriBole.IntText = PARAMS.Periodo;
    this.mtbNumeBole.IntText = 0;
    this.btnConfirmar.Enabled = this.btnConfirmar.Visible = false;
    this.lblFalta.Visible = false;
    this.lblFaltaPago.Visible = false;
    this.mtbPeriBole.IntText = DateTime.Now.Year;
    this.mtbNumeBole.IntText = 0;
    this.boletosAgregados.Clear();
    this.formasPagoUsadas.Clear();
    this.formasPagoDisponibles.Clear();
    this.formasPagoDisponibles = this.expIngreso.ObtenerFormasPago();
    FormaPago formaPago = this.formasPagoDisponibles.First<FormaPago>();
    formaPago.ImpoFopa = 0.00M;
    this.formasPagoUsadas.Add(formaPago);
    this.formasPagoDisponibles.Remove(formaPago);
    this.gridTipas.DataSource = (object) this.formasPagoDisponibles;
    this.RefrescarGridViews();
  }

  private void ConfiguracionesPorMunicipio()
  {
    switch (PARAMS.Municipio)
    {
      case "Alvear":
        this.mtbCodiBarra.MaxLength = 42;
        break;
      case "Lavalle":
      case "SanCarlos":
        this.mtbCodiBarra.MaxLength = 12;
        break;
      case "LaPaz":
        this.mtbCodiBarra.MaxLength = 1;
        this.mtbCodiBarra.Enabled = false;
        break;
      case "SanMartín":
        this.mtbCodiBarra.MaxLength = 36;
        break;
      default:
        this.mtbCodiBarra.MaxLength = 1;
        break;
    }
  }

  private void FocusControlIngresoPago()
  {
    if (PARAMS.Municipio == "LaPaz")
      this.mtbNumeBole.Focus();
    else
      this.mtbCodiBarra.Focus();
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

  private void mtbCodiBarra_Leave(object sender, EventArgs e)
  {
    this.mtbCodiBarra.Text = string.IsNullOrEmpty(this.mtbCodiBarra.Text) ? "0" : this.mtbCodiBarra.Text;
  }

  private void RefrescarGridViews()
  {
    ((BaseView) this.viewBoletos).RefreshData();
    ((BaseView) this.viewFopas).RefreshData();
    ((BaseView) this.viewTipas).RefreshData();
  }

  private void AgregarBoleto(bool codiBar = false)
  {
    if (codiBar)
    {
      switch (PARAMS.Municipio)
      {
        case "Alvear":
          this.mtbPeriBole.IntText = int.Parse(this.mtbCodiBarra.Text.Substring(24, 1)) == 9 ? 2000 + int.Parse(this.mtbCodiBarra.Text.Substring(29, 2)) : 0;
          this.mtbNumeBole.IntText = int.Parse(this.mtbCodiBarra.Text.Substring(18, 6));
          break;
        case "Lavalle":
        case "SanCarlos":
          this.mtbPeriBole.IntText = int.Parse(this.mtbCodiBarra.Text.Substring(8, 4));
          this.mtbNumeBole.IntText = int.Parse(this.mtbCodiBarra.Text.Substring(0, 8));
          break;
        case "SanMartín":
          this.mtbPeriBole.IntText = 2000 + int.Parse(this.mtbCodiBarra.Text.Substring(22, 2));
          this.mtbNumeBole.IntText = int.Parse(this.mtbCodiBarra.Text.Substring(7, 8));
          break;
      }
    }
    if (this.boletosAgregados.Exists((Predicate<BoletoCaja>) (x => x.NumeBole == this.mtbNumeBole.IntText && x.PeriBole == this.mtbPeriBole.IntText)))
    {
      new frmMensaje((Form) this).mostrarError($"El Boleto {this.mtbPeriBole.IntText}-{this.mtbNumeBole.IntText} ya se encuentra en la lista de boletos a pagar.");
      this.mtbNumeBole.Focus();
    }
    else
    {
      try
      {
        this.expIngreso.GrupoActualizado(this.grupo.FeenAcpa, this.grupo.NumeAcpa);
        this.expIngreso.VerificarBoleto(this.mtbPeriBole.IntText, this.mtbNumeBole.IntText);
        this.expIngreso.VerificarPago(this.grupo.FeenAcpa, this.grupo.NumeAcpa, this.mtbPeriBole.IntText, this.mtbNumeBole.IntText);
        this.expIngreso.Pagado(this.mtbPeriBole.IntText, this.mtbNumeBole.IntText);
        BoletoCaja boletoCaja = this.expIngreso.ObtenerBoleto(this.mtbPeriBole.IntText, this.mtbNumeBole.IntText);
        if (boletoCaja != null && boletoCaja.PeriBole > 0 && boletoCaja.NumeBole > 0)
        {
          this.boletosAgregados.Add(boletoCaja);
          this.CalculoPago(true);
          this.RefrescarGridViews();
          this.mtbNumeBole.Clear();
          this.mtbPeriBole.IntText = DateTime.Today.Year;
          this.mtbCodiBarra.Clear();
          this.FocusControlIngresoPago();
        }
        else
          new frmMensaje((Form) this).mostrarError("Boleto nulo, incorrecta su seleccion.");
      }
      catch (Exception ex)
      {
        this.FocusControlIngresoPago();
        new frmMensaje((Form) this).mostrarError(ex.Message);
      }
    }
  }

  private void CalculoPago(bool boletoAgregado = false, Decimal impFP = 0M)
  {
    this.pagoEspecial = this.boletosAgregados.Count > 0 && this.boletosAgregados.All<BoletoCaja>((Func<BoletoCaja, bool>) (x => x.CapiBole > 0M)) && this.boletosAgregados.All<BoletoCaja>((Func<BoletoCaja, bool>) (x => x.TotaBole == 0M)) && this.formasPagoUsadas.Count == 1 && this.formasPagoUsadas.All<FormaPago>((Func<FormaPago, bool>) (x => x.CodiTipa == 1)) && this.formasPagoUsadas.All<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa == 0M));
    Decimal num1 = 0.00M;
    if (this.boletosAgregados.Count<BoletoCaja>() > 0)
      num1 = Decimal.Round(this.boletosAgregados.Sum<BoletoCaja>((Func<BoletoCaja, Decimal>) (x => x.TotaBole)), 2);
    if (this.formasPagoUsadas.Count<FormaPago>() == 1 && this.formasPagoUsadas.First<FormaPago>().ImpoFopa == 0M)
      this.formasPagoUsadas.First<FormaPago>().ImpoFopa = num1;
    else if (boletoAgregado)
    {
      foreach (FormaPago formasPagoUsada in this.formasPagoUsadas)
        formasPagoUsada.ImpoFopa = 0.00M;
      this.formasPagoUsadas.First<FormaPago>().ImpoFopa = num1;
    }
    else if (impFP > 0M)
      this.formasPagoUsadas.First<FormaPago>().ImpoFopa += Decimal.Round(impFP, 2);
    Decimal num2 = Decimal.Round(this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa)), 2);
    Decimal num3 = Decimal.Round(num1 - num2, 2);
    if (num3 > 0M)
    {
      this.lblFalta.Visible = this.lblFaltaPago.Visible = true;
      this.lblFalta.Text = "Falta";
      this.lblFaltaPago.Text = $"{num3:C2}";
    }
    else if (num3 < 0M)
    {
      this.lblFalta.Visible = this.lblFaltaPago.Visible = true;
      this.lblFalta.Text = "Sobra";
      this.lblFaltaPago.Text = $"{Math.Abs(num3):C2}";
    }
    else
      this.lblFalta.Visible = this.lblFaltaPago.Visible = false;
    this.btnConfirmar.Enabled = this.btnConfirmar.Visible = num2 - num1 == 0M && num1 > 0M || this.pagoEspecial;
  }

  private void RealizarPago()
  {
    try
    {
      if (!this.pagoEspecial)
        this.expIngreso.IngresarPagos(this.grupo.FeenAcpa, this.boletosAgregados, this.formasPagoUsadas.Where<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa > 0M)).ToList<FormaPago>(), this.grupo.NumeAcpa, this.grupo.CodiEnre, this.grupo.FepaAcpa);
      else
        this.expIngreso.IngresarPagos(this.grupo.FeenAcpa, this.boletosAgregados, this.formasPagoUsadas.Where<FormaPago>((Func<FormaPago, bool>) (x => x.CodiTipa == 1)).ToList<FormaPago>(), this.grupo.NumeAcpa, this.grupo.CodiEnre, this.grupo.FepaAcpa);
      this.DialogResult = DialogResult.OK;
      this.Close();
    }
    catch (Exception ex)
    {
      this.FocusControlIngresoPago();
      new frmMensaje((Form) this).mostrarError(ex.Message);
    }
  }

  private void CalcularFormasPago()
  {
    if (this.formasPagoUsadas.Count<FormaPago>() > 1)
    {
      int num1 = this.formasPagoUsadas.Where<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa == 0M)).Count<FormaPago>();
      if (num1 > 0)
      {
        Decimal num2 = this.boletosAgregados.Sum<BoletoCaja>((Func<BoletoCaja, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa));
        if (num2 > 0M)
        {
          Decimal restoAFila = num2 / (Decimal) num1;
          int primerFila = this.formasPagoUsadas.First<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa == 0M)).CodiTipa;
          EnumerableExtensions.ForEach<FormaPago>(this.formasPagoUsadas.Where<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa == 0M)), (Action<FormaPago>) (x => x.ImpoFopa = Decimal.Round(restoAFila, 2)));
          Decimal num3 = Decimal.Round(this.boletosAgregados.Sum<BoletoCaja>((Func<BoletoCaja, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa)), 2);
          if (num3 != 0M)
            this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == primerFila)).ImpoFopa += num3;
        }
      }
    }
    this.CalculoPago();
    this.RefrescarGridViews();
  }

  private void mtbNumeBole_Enter(object sender, EventArgs e)
  {
    if (this.mtbNumeBole.IntText != 0)
      return;
    this.mtbNumeBole.Clear();
  }

  private void mtbNumeBole_Leave(object sender, EventArgs e)
  {
    if (this.mtbNumeBole.IntText != 0)
      return;
    this.mtbNumeBole.IntText = 0;
  }

  private void btnAgregar_Click(object sender, EventArgs e)
  {
    if (this.mtbCodiBarra.Text.Length == this.mtbCodiBarra.MaxLength)
    {
      this.AgregarBoleto(true);
    }
    else
    {
      if (this.mtbPeriBole.IntText <= 1980 || this.mtbNumeBole.IntText <= 0)
        return;
      this.AgregarBoleto();
    }
  }

  private void viewFopas_RowClick(object sender, RowClickEventArgs e)
  {
    this.FopaSeleccionada = (FormaPago) ((BaseView) this.viewFopas).GetRow(((ColumnView) this.viewFopas).GetSelectedRows()[0]);
    if (this.FopaSeleccionada == null || this.formasPagoUsadas.Count <= 1)
      return;
    Decimal impoFopa = this.FopaSeleccionada.ImpoFopa;
    this.FopaSeleccionada.ImpoFopa = 0.00M;
    this.FopaSeleccionada.NuchFopa = 0L;
    this.formasPagoDisponibles.Add(this.FopaSeleccionada);
    this.formasPagoUsadas.Remove(this.FopaSeleccionada);
    this.CalculoPago(impFP: impoFopa);
    this.RefrescarGridViews();
    this.FopaSeleccionada = (FormaPago) null;
  }

  private void viewTipas_RowClick(object sender, RowClickEventArgs e)
  {
    this.TipaSeleccionado = (FormaPago) ((BaseView) this.viewTipas).GetRow(((ColumnView) this.viewTipas).GetSelectedRows()[0]);
    if (this.TipaSeleccionado == null || this.formasPagoDisponibles.Count <= 0)
      return;
    Decimal num = this.boletosAgregados.Sum<BoletoCaja>((Func<BoletoCaja, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa));
    this.TipaSeleccionado.ImpoFopa = num > 0M ? num : 0.00M;
    this.formasPagoUsadas.Add(this.TipaSeleccionado);
    this.formasPagoDisponibles.Remove(this.TipaSeleccionado);
    this.CalculoPago();
    this.RefrescarGridViews();
    this.TipaSeleccionado = (FormaPago) null;
  }

  private void viewFopas_CellValueChanged(object sender, CellValueChangedEventArgs e)
  {
    FormaPago row = (FormaPago) ((BaseView) this.viewFopas).GetRow(e.RowHandle);
    if (row.CodiTipa != 2)
      this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).NuchFopa = 0L;
    else
      this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).NuchFopa = Math.Abs(this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).NuchFopa);
    this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).ImpoFopa = Math.Abs(Decimal.Round(this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).ImpoFopa, 2));
    this.CalcularFormasPago();
  }

  private void btnConfirmar_Click(object sender, EventArgs e)
  {
    FormaPago formaPago = this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == 2));
    if (formaPago != null && formaPago.NuchFopa == 0L)
      new frmMensaje((Form) this).mostrarInformación("El numero de cheque es obligatorio");
    else if (this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa)) - this.boletosAgregados.Sum<BoletoCaja>((Func<BoletoCaja, Decimal>) (x => x.TotaBole)) == 0M)
      this.RealizarPago();
    else
      new frmMensaje((Form) this).mostrarInformación("El importe de las Formas de Pago debe coincidir con el del total de los boletos.");
  }

  private void viewFopas_ValidatingEditor(object sender, BaseContainerValidateEditorEventArgs e)
  {
    if (string.IsNullOrEmpty(e.Value.ToString().Trim()) || !e.Value.ToString().Contains("."))
      return;
    e.Value = (object) e.Value.ToString().Replace(".", ",");
  }

  private void ribQuitarBoleto_Click(object sender, EventArgs e)
  {
    BoletoCaja row = (BoletoCaja) ((ColumnView) this.viewBoletos).GetFocusedRow();
    if (row == null)
      return;
    BoletoCaja boletoCaja = this.boletosAgregados.Find((Predicate<BoletoCaja>) (x => x.PeriBole == row.PeriBole && x.NumeBole == row.NumeBole));
    if (boletoCaja != null)
    {
      this.boletosAgregados.Remove(boletoCaja);
      this.CalculoPago(true);
    }
    this.mtbPeriBole.IntText = DateTime.Today.Year;
    this.mtbNumeBole.IntText = 0;
    this.mtbNumeBole.Focus();
    this.RefrescarGridViews();
  }

  private void mtbCodiBarra_Enter(object sender, EventArgs e)
  {
    this.mtbCodiBarra.Text = string.Empty;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.panSuperior = new MetroPanel();
    this.lblTitulo = new MetroLabel();
    this.panIngresos = new MetroPanel();
    this.chkCobroTick = new MetroCheckBox();
    this.lblTickeadora = new MetroLabel();
    this.lblCodiEnre = new MetroLabel();
    this.lblEnte = new MetroLabel();
    this.lblNumeAcpa = new MetroLabel();
    this.lblGrupo = new MetroLabel();
    this.lblFeenAcpa = new MetroLabel();
    this.lblFechaEnvio = new MetroLabel();
    this.btnAgregar = new MetroButton();
    this.mtbNumeBole = new MetroIntTextBox();
    this.mtbPeriBole = new MetroIntTextBox();
    this.lblBoleManual = new MetroLabel();
    this.lblManual = new MetroLabel();
    this.lblCodiBar = new MetroLabel();
    this.mtbCodiBarra = new MetroTextBox();
    this.lblCodiBarBole = new MetroLabel();
    this.panCentral = new MetroPanel();
    this.lblFaltaPago = new Label();
    this.lblFalta = new Label();
    this.btnCancelar = new MetroButton();
    this.btnConfirmar = new MetroButton();
    this.gridFopas = new GridControl();
    this.viewFopas = new GridView();
    this.colCodiTipaFP = new GridColumn();
    this.colDetaTipaFP = new GridColumn();
    this.colNuchFopa = new GridColumn();
    this.colImpoFopa = new GridColumn();
    this.gridTipas = new GridControl();
    this.viewTipas = new GridView();
    this.colCodiTipa = new GridColumn();
    this.colDetaTipa = new GridColumn();
    this.lblFopas = new MetroLabel();
    this.gridBoletos = new GridControl();
    this.viewBoletos = new GridView();
    this.colPeriBole = new GridColumn();
    this.colNumeBole = new GridColumn();
    this.colCodiOfic = new GridColumn();
    this.colCuenCtct = new GridColumn();
    this.colCapiBole = new GridColumn();
    this.colDecaBole = new GridColumn();
    this.colRecaBole = new GridColumn();
    this.colDereBole = new GridColumn();
    this.colApreBole = new GridColumn();
    this.colTotaBole = new GridColumn();
    this.colEliminarBoleto = new GridColumn();
    this.repositoryItemButtonEdit1 = new RepositoryItemButtonEdit();
    this.lblDetalleBole = new MetroLabel();
    this.panSuperior.SuspendLayout();
    this.panIngresos.SuspendLayout();
    this.panCentral.SuspendLayout();
    ((ISupportInitialize) this.gridFopas).BeginInit();
    ((ISupportInitialize) this.viewFopas).BeginInit();
    ((ISupportInitialize) this.gridTipas).BeginInit();
    ((ISupportInitialize) this.viewTipas).BeginInit();
    ((ISupportInitialize) this.gridBoletos).BeginInit();
    ((ISupportInitialize) this.viewBoletos).BeginInit();
    ((ISupportInitialize) this.repositoryItemButtonEdit1).BeginInit();
    this.SuspendLayout();
    this.panSuperior.Controls.Add((Control) this.lblTitulo);
    this.panSuperior.Dock = DockStyle.Top;
    this.panSuperior.Location = new Point(0, 0);
    this.panSuperior.Name = "panSuperior";
    this.panSuperior.Size = new Size(781, 31 /*0x1F*/);
    this.panSuperior.TabIndex = 0;
    this.lblTitulo.AutoSize = false;
    this.lblTitulo.Dock = DockStyle.Fill;
    this.lblTitulo.FontWeight = MetroFontWeight.Bold;
    this.lblTitulo.Location = new Point(0, 0);
    this.lblTitulo.Name = "lblTitulo";
    this.lblTitulo.Size = new Size(781, 31 /*0x1F*/);
    this.lblTitulo.TabIndex = 3;
    this.lblTitulo.Text = "Ingreso de Múltiples Boletos";
    this.lblTitulo.TextAlign = ContentAlignment.MiddleCenter;
    this.panIngresos.Controls.Add((Control) this.chkCobroTick);
    this.panIngresos.Controls.Add((Control) this.lblTickeadora);
    this.panIngresos.Controls.Add((Control) this.lblCodiEnre);
    this.panIngresos.Controls.Add((Control) this.lblEnte);
    this.panIngresos.Controls.Add((Control) this.lblNumeAcpa);
    this.panIngresos.Controls.Add((Control) this.lblGrupo);
    this.panIngresos.Controls.Add((Control) this.lblFeenAcpa);
    this.panIngresos.Controls.Add((Control) this.lblFechaEnvio);
    this.panIngresos.Controls.Add((Control) this.btnAgregar);
    this.panIngresos.Controls.Add((Control) this.mtbNumeBole);
    this.panIngresos.Controls.Add((Control) this.mtbPeriBole);
    this.panIngresos.Controls.Add((Control) this.lblBoleManual);
    this.panIngresos.Controls.Add((Control) this.lblManual);
    this.panIngresos.Controls.Add((Control) this.lblCodiBar);
    this.panIngresos.Controls.Add((Control) this.mtbCodiBarra);
    this.panIngresos.Controls.Add((Control) this.lblCodiBarBole);
    this.panIngresos.Dock = DockStyle.Top;
    this.panIngresos.Location = new Point(0, 31 /*0x1F*/);
    this.panIngresos.Name = "panIngresos";
    this.panIngresos.Size = new Size(781, 117);
    this.panIngresos.TabIndex = 1;
    this.chkCobroTick.AutoSize = false;
    this.chkCobroTick.Enabled = false;
    this.chkCobroTick.Location = new Point(562, 95);
    this.chkCobroTick.Name = "chkCobroTick";
    this.chkCobroTick.Size = new Size(69, 19);
    this.chkCobroTick.TabIndex = 28;
    this.chkCobroTick.Text = "Inactivo";
    this.lblTickeadora.AutoSize = false;
    this.lblTickeadora.Location = new Point(413, 94);
    this.lblTickeadora.Name = "lblTickeadora";
    this.lblTickeadora.Size = new Size(157, 19);
    this.lblTickeadora.TabIndex = 27;
    this.lblTickeadora.Text = "Ingreso con Tickeadora:";
    this.lblCodiEnre.AutoSize = false;
    this.lblCodiEnre.FontWeight = MetroFontWeight.Bold;
    this.lblCodiEnre.Location = new Point(555, 69);
    this.lblCodiEnre.Name = "lblCodiEnre";
    this.lblCodiEnre.Size = new Size(223, 19);
    this.lblCodiEnre.TabIndex = 26;
    this.lblCodiEnre.Text = "6 - JOCOLI";
    this.lblEnte.AutoSize = false;
    this.lblEnte.Location = new Point(447, 69);
    this.lblEnte.Name = "lblEnte";
    this.lblEnte.Size = new Size(113, 19);
    this.lblEnte.TabIndex = 25;
    this.lblEnte.Text = "Ente Recaudador:";
    this.lblNumeAcpa.AutoSize = false;
    this.lblNumeAcpa.FontWeight = MetroFontWeight.Bold;
    this.lblNumeAcpa.Location = new Point(555, 38);
    this.lblNumeAcpa.Name = "lblNumeAcpa";
    this.lblNumeAcpa.Size = new Size(223, 19);
    this.lblNumeAcpa.TabIndex = 24;
    this.lblNumeAcpa.Text = "901";
    this.lblGrupo.AutoSize = false;
    this.lblGrupo.Location = new Point(492, 38);
    this.lblGrupo.Name = "lblGrupo";
    this.lblGrupo.Size = new Size(68, 19);
    this.lblGrupo.TabIndex = 23;
    this.lblGrupo.Text = "Grupo N°:";
    this.lblFeenAcpa.AutoSize = false;
    this.lblFeenAcpa.FontWeight = MetroFontWeight.Bold;
    this.lblFeenAcpa.Location = new Point(555, 7);
    this.lblFeenAcpa.Name = "lblFeenAcpa";
    this.lblFeenAcpa.Size = new Size(223, 19);
    this.lblFeenAcpa.TabIndex = 22;
    this.lblFeenAcpa.Text = "15/06/2023";
    this.lblFechaEnvio.AutoSize = false;
    this.lblFechaEnvio.Location = new Point(461, 7);
    this.lblFechaEnvio.Name = "lblFechaEnvio";
    this.lblFechaEnvio.Size = new Size(100, 19);
    this.lblFechaEnvio.TabIndex = 21;
    this.lblFechaEnvio.Text = "Fecha de Envío:";
    this.btnAgregar.Location = new Point(308, 58);
    this.btnAgregar.Name = "btnAgregar";
    this.btnAgregar.Size = new Size(75, 23);
    this.btnAgregar.TabIndex = 20;
    this.btnAgregar.Text = "AGREGAR";
    this.btnAgregar.Click += new EventHandler(this.btnAgregar_Click);
    this.mtbNumeBole.AllowEmpty = true;
    this.mtbNumeBole.Location = new Point(184, 86);
    this.mtbNumeBole.MaxLength = 7;
    this.mtbNumeBole.MaxValue = 9999999;
    this.mtbNumeBole.MinValue = 1;
    this.mtbNumeBole.Name = "mtbNumeBole";
    this.mtbNumeBole.Size = new Size(107, 23);
    this.mtbNumeBole.TabIndex = 17;
    this.mtbNumeBole.Enter += new EventHandler(this.mtbNumeBole_Enter);
    this.mtbNumeBole.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.mtbNumeBole.Leave += new EventHandler(this.mtbNumeBole_Leave);
    this.mtbPeriBole.AllowEmpty = true;
    this.mtbPeriBole.Location = new Point(117, 86);
    this.mtbPeriBole.MaxLength = 4;
    this.mtbPeriBole.MaxValue = 9999;
    this.mtbPeriBole.MinValue = 1980;
    this.mtbPeriBole.Name = "mtbPeriBole";
    this.mtbPeriBole.Size = new Size(55, 23);
    this.mtbPeriBole.TabIndex = 16 /*0x10*/;
    this.mtbPeriBole.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.lblBoleManual.AutoSize = false;
    this.lblBoleManual.Location = new Point(31 /*0x1F*/, 87);
    this.lblBoleManual.Name = "lblBoleManual";
    this.lblBoleManual.Size = new Size(80 /*0x50*/, 19);
    this.lblBoleManual.TabIndex = 19;
    this.lblBoleManual.Text = "Boleto Nro.:";
    this.lblManual.AutoSize = false;
    this.lblManual.Location = new Point(170, 62);
    this.lblManual.Name = "lblManual";
    this.lblManual.Size = new Size(52, 19);
    this.lblManual.TabIndex = 18;
    this.lblManual.Text = "Manual";
    this.lblCodiBar.AutoSize = false;
    this.lblCodiBar.Location = new Point(146, 4);
    this.lblCodiBar.Name = "lblCodiBar";
    this.lblCodiBar.Size = new Size(108, 19);
    this.lblCodiBar.TabIndex = 15;
    this.lblCodiBar.Text = "Codigo de Barra";
    this.mtbCodiBarra.Location = new Point(117, 27);
    this.mtbCodiBarra.MaxLength = 12;
    this.mtbCodiBarra.Name = "mtbCodiBarra";
    this.mtbCodiBarra.Size = new Size(174, 23);
    this.mtbCodiBarra.TabIndex = 13;
    this.mtbCodiBarra.Enter += new EventHandler(this.mtbCodiBarra_Enter);
    this.mtbCodiBarra.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.mtbCodiBarra.Leave += new EventHandler(this.mtbCodiBarra_Leave);
    this.lblCodiBarBole.AutoSize = false;
    this.lblCodiBarBole.Location = new Point(31 /*0x1F*/, 29);
    this.lblCodiBarBole.Name = "lblCodiBarBole";
    this.lblCodiBarBole.Size = new Size(80 /*0x50*/, 19);
    this.lblCodiBarBole.TabIndex = 14;
    this.lblCodiBarBole.Text = "Boleto Nro.:";
    this.panCentral.Controls.Add((Control) this.lblFaltaPago);
    this.panCentral.Controls.Add((Control) this.lblFalta);
    this.panCentral.Controls.Add((Control) this.btnCancelar);
    this.panCentral.Controls.Add((Control) this.btnConfirmar);
    this.panCentral.Controls.Add((Control) this.gridFopas);
    this.panCentral.Controls.Add((Control) this.gridTipas);
    this.panCentral.Controls.Add((Control) this.lblFopas);
    this.panCentral.Controls.Add((Control) this.gridBoletos);
    this.panCentral.Controls.Add((Control) this.lblDetalleBole);
    this.panCentral.Dock = DockStyle.Fill;
    this.panCentral.Location = new Point(0, 148);
    this.panCentral.Name = "panCentral";
    this.panCentral.Size = new Size(781, 276);
    this.panCentral.TabIndex = 2;
    this.lblFaltaPago.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.lblFaltaPago.Font = new Font("Verdana", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.lblFaltaPago.ForeColor = Color.Red;
    this.lblFaltaPago.Location = new Point(604, 206);
    this.lblFaltaPago.Name = "lblFaltaPago";
    this.lblFaltaPago.Size = new Size(174, 16 /*0x10*/);
    this.lblFaltaPago.TabIndex = 21;
    this.lblFaltaPago.Text = "$";
    this.lblFaltaPago.TextAlign = ContentAlignment.MiddleCenter;
    this.lblFaltaPago.Visible = false;
    this.lblFalta.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.lblFalta.Font = new Font("Verdana", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.lblFalta.ForeColor = Color.Red;
    this.lblFalta.Location = new Point(607, 182);
    this.lblFalta.Name = "lblFalta";
    this.lblFalta.Size = new Size(171, 16 /*0x10*/);
    this.lblFalta.TabIndex = 20;
    this.lblFalta.Text = "Falta";
    this.lblFalta.TextAlign = ContentAlignment.MiddleCenter;
    this.lblFalta.Visible = false;
    this.btnCancelar.DialogResult = DialogResult.Cancel;
    this.btnCancelar.ForeColor = SystemColors.ControlText;
    this.btnCancelar.Location = new Point(651, 230);
    this.btnCancelar.Name = "btnCancelar";
    this.btnCancelar.Size = new Size(92, 24);
    this.btnCancelar.TabIndex = 10;
    this.btnCancelar.Text = "CANCELAR";
    this.btnConfirmar.Location = new Point(651, 194);
    this.btnConfirmar.Name = "btnConfirmar";
    this.btnConfirmar.Size = new Size(92, 24);
    this.btnConfirmar.TabIndex = 9;
    this.btnConfirmar.Text = "CONFIRMAR";
    this.btnConfirmar.Click += new EventHandler(this.btnConfirmar_Click);
    ((Control) this.gridFopas).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((Control) this.gridFopas).Location = new Point(211, 169);
    this.gridFopas.MainView = (BaseView) this.viewFopas;
    ((Control) this.gridFopas).Name = "gridFopas";
    ((Control) this.gridFopas).Size = new Size(387, 104);
    ((Control) this.gridFopas).TabIndex = 8;
    this.gridFopas.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewFopas
    });
    this.viewFopas.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewFopas.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewFopas).Columns.AddRange(new GridColumn[4]
    {
      this.colCodiTipaFP,
      this.colDetaTipaFP,
      this.colNuchFopa,
      this.colImpoFopa
    });
    this.viewFopas.FocusRectStyle = (DrawFocusRectStyle) 0;
    ((BaseView) this.viewFopas).GridControl = this.gridFopas;
    ((BaseView) this.viewFopas).Name = "viewFopas";
    this.viewFopas.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewFopas.OptionsSelection.EnableAppearanceFocusedRow = false;
    this.viewFopas.OptionsSelection.EnableAppearanceHideSelection = false;
    this.viewFopas.OptionsView.ShowFooter = true;
    this.viewFopas.OptionsView.ShowGroupPanel = false;
    this.viewFopas.OptionsView.ShowIndicator = false;
    this.viewFopas.RowClick += new RowClickEventHandler(this.viewFopas_RowClick);
    ((ColumnView) this.viewFopas).CellValueChanged += new CellValueChangedEventHandler(this.viewFopas_CellValueChanged);
    ((BaseView) this.viewFopas).ValidatingEditor += new BaseContainerValidateEditorEventHandler(this.viewFopas_ValidatingEditor);
    ((AppearanceOptions) this.colCodiTipaFP.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCodiTipaFP.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCodiTipaFP.Caption = "#";
    this.colCodiTipaFP.FieldName = "CodiTipa";
    this.colCodiTipaFP.Name = "colCodiTipaFP";
    this.colCodiTipaFP.OptionsColumn.AllowEdit = false;
    this.colCodiTipaFP.OptionsColumn.ReadOnly = true;
    this.colCodiTipaFP.Visible = true;
    this.colCodiTipaFP.VisibleIndex = 0;
    this.colCodiTipaFP.Width = 53;
    this.colDetaTipaFP.Caption = "Forma Pago";
    this.colDetaTipaFP.FieldName = "DetaTipa";
    this.colDetaTipaFP.Name = "colDetaTipaFP";
    this.colDetaTipaFP.OptionsColumn.AllowEdit = false;
    this.colDetaTipaFP.OptionsColumn.ReadOnly = true;
    this.colDetaTipaFP.Visible = true;
    this.colDetaTipaFP.VisibleIndex = 1;
    this.colDetaTipaFP.Width = 184;
    this.colNuchFopa.Caption = "Nº Cheque";
    this.colNuchFopa.FieldName = "NuchFopa";
    this.colNuchFopa.Name = "colNuchFopa";
    this.colNuchFopa.UnboundDataType = typeof (long);
    this.colNuchFopa.Visible = true;
    this.colNuchFopa.VisibleIndex = 2;
    this.colNuchFopa.Width = 175;
    ((AppearanceOptions) this.colImpoFopa.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImpoFopa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImpoFopa.Caption = "Importe";
    this.colImpoFopa.DisplayFormat.FormatString = "C2";
    this.colImpoFopa.DisplayFormat.FormatType = (FormatType) 1;
    this.colImpoFopa.FieldName = "ImpoFopa";
    this.colImpoFopa.Name = "colImpoFopa";
    ((GridSummaryItemCollection) this.colImpoFopa.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "ImpoFopa", "Total: {0:C2}")
    });
    this.colImpoFopa.UnboundType = (UnboundColumnType) 2;
    this.colImpoFopa.Visible = true;
    this.colImpoFopa.VisibleIndex = 3;
    this.colImpoFopa.Width = 273;
    ((Control) this.gridTipas).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((Control) this.gridTipas).Location = new Point(12, 169);
    this.gridTipas.MainView = (BaseView) this.viewTipas;
    ((Control) this.gridTipas).Name = "gridTipas";
    ((Control) this.gridTipas).Size = new Size(170, 104);
    ((Control) this.gridTipas).TabIndex = 7;
    this.gridTipas.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewTipas
    });
    this.viewTipas.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewTipas.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewTipas).Columns.AddRange(new GridColumn[2]
    {
      this.colCodiTipa,
      this.colDetaTipa
    });
    this.viewTipas.FocusRectStyle = (DrawFocusRectStyle) 0;
    ((BaseView) this.viewTipas).GridControl = this.gridTipas;
    ((BaseView) this.viewTipas).Name = "viewTipas";
    this.viewTipas.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewTipas.OptionsSelection.EnableAppearanceFocusedRow = false;
    this.viewTipas.OptionsSelection.EnableAppearanceHideSelection = false;
    this.viewTipas.OptionsView.ShowGroupPanel = false;
    this.viewTipas.OptionsView.ShowIndicator = false;
    this.viewTipas.RowClick += new RowClickEventHandler(this.viewTipas_RowClick);
    ((AppearanceOptions) this.colCodiTipa.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCodiTipa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCodiTipa.Caption = "#";
    this.colCodiTipa.FieldName = "CodiTipa";
    this.colCodiTipa.Name = "colCodiTipa";
    this.colCodiTipa.OptionsColumn.AllowEdit = false;
    this.colCodiTipa.OptionsColumn.ReadOnly = true;
    this.colCodiTipa.Visible = true;
    this.colCodiTipa.VisibleIndex = 0;
    this.colCodiTipa.Width = 53;
    this.colDetaTipa.Caption = "Tipo Pago";
    this.colDetaTipa.FieldName = "DetaTipa";
    this.colDetaTipa.Name = "colDetaTipa";
    this.colDetaTipa.OptionsColumn.AllowEdit = false;
    this.colDetaTipa.OptionsColumn.ReadOnly = true;
    this.colDetaTipa.Visible = true;
    this.colDetaTipa.VisibleIndex = 1;
    this.colDetaTipa.Width = 184;
    this.lblFopas.AutoSize = false;
    this.lblFopas.Dock = DockStyle.Top;
    this.lblFopas.Location = new Point(0, 130);
    this.lblFopas.Name = "lblFopas";
    this.lblFopas.Size = new Size(781, 25);
    this.lblFopas.TabIndex = 6;
    this.lblFopas.Text = "Formas de Pago";
    this.lblFopas.TextAlign = ContentAlignment.MiddleCenter;
    ((Control) this.gridBoletos).Dock = DockStyle.Top;
    ((Control) this.gridBoletos).Location = new Point(0, 26);
    this.gridBoletos.MainView = (BaseView) this.viewBoletos;
    ((Control) this.gridBoletos).Name = "gridBoletos";
    ((EditorContainer) this.gridBoletos).RepositoryItems.AddRange(new RepositoryItem[1]
    {
      (RepositoryItem) this.repositoryItemButtonEdit1
    });
    ((Control) this.gridBoletos).Size = new Size(781, 104);
    ((Control) this.gridBoletos).TabIndex = 5;
    this.gridBoletos.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewBoletos
    });
    this.viewBoletos.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewBoletos.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewBoletos).Columns.AddRange(new GridColumn[11]
    {
      this.colPeriBole,
      this.colNumeBole,
      this.colCodiOfic,
      this.colCuenCtct,
      this.colCapiBole,
      this.colDecaBole,
      this.colRecaBole,
      this.colDereBole,
      this.colApreBole,
      this.colTotaBole,
      this.colEliminarBoleto
    });
    this.viewBoletos.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.viewBoletos).GridControl = this.gridBoletos;
    ((BaseView) this.viewBoletos).Name = "viewBoletos";
    this.viewBoletos.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewBoletos.OptionsView.ShowFooter = true;
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
    this.colCuenCtct.MaxWidth = 75;
    this.colCuenCtct.MinWidth = 75;
    this.colCuenCtct.Name = "colCuenCtct";
    this.colCuenCtct.OptionsColumn.AllowEdit = false;
    this.colCuenCtct.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuenCtct.OptionsColumn.AllowMove = false;
    this.colCuenCtct.OptionsColumn.ReadOnly = true;
    this.colCuenCtct.Visible = true;
    this.colCuenCtct.VisibleIndex = 3;
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
    this.colCapiBole.VisibleIndex = 4;
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
    this.colDecaBole.VisibleIndex = 5;
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
    this.colRecaBole.VisibleIndex = 6;
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
    this.colDereBole.VisibleIndex = 7;
    this.colDereBole.Width = 80 /*0x50*/;
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
    this.colApreBole.VisibleIndex = 8;
    this.colApreBole.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colTotaBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotaBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotaBole.Caption = "Total";
    this.colTotaBole.DisplayFormat.FormatString = "C2";
    this.colTotaBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colTotaBole.FieldName = "TotaBole";
    this.colTotaBole.MinWidth = 10;
    this.colTotaBole.Name = "colTotaBole";
    this.colTotaBole.OptionsColumn.AllowEdit = false;
    this.colTotaBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTotaBole.OptionsColumn.AllowMove = false;
    this.colTotaBole.OptionsColumn.ReadOnly = true;
    ((GridSummaryItemCollection) this.colTotaBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaBole", "Total: {0:C2}")
    });
    this.colTotaBole.Visible = true;
    this.colTotaBole.VisibleIndex = 9;
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
    this.colEliminarBoleto.VisibleIndex = 10;
    this.colEliminarBoleto.Width = 30;
    ((RepositoryItem) this.repositoryItemButtonEdit1).AutoHeight = false;
    this.repositoryItemButtonEdit1.Buttons.AddRange(new EditorButton[1]
    {
      new EditorButton((ButtonPredefines) 2)
    });
    ((RepositoryItem) this.repositoryItemButtonEdit1).Name = "repositoryItemButtonEdit1";
    this.repositoryItemButtonEdit1.TextEditStyle = (TextEditStyles) 1;
    ((RepositoryItem) this.repositoryItemButtonEdit1).Click += new EventHandler(this.ribQuitarBoleto_Click);
    this.lblDetalleBole.AutoSize = false;
    this.lblDetalleBole.Dock = DockStyle.Top;
    this.lblDetalleBole.Location = new Point(0, 0);
    this.lblDetalleBole.Name = "lblDetalleBole";
    this.lblDetalleBole.Size = new Size(781, 26);
    this.lblDetalleBole.TabIndex = 2;
    this.lblDetalleBole.Text = "Boletos Agregados";
    this.lblDetalleBole.TextAlign = ContentAlignment.MiddleCenter;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(781, 424);
    this.ControlBox = false;
    this.Controls.Add((Control) this.panCentral);
    this.Controls.Add((Control) this.panIngresos);
    this.Controls.Add((Control) this.panSuperior);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.FixedDialog;
    this.Name = nameof (frmMostrarIngresoMultiple);
    this.ShowIcon = false;
    this.StartPosition = FormStartPosition.CenterParent;
    this.panSuperior.ResumeLayout(false);
    this.panIngresos.ResumeLayout(false);
    this.panCentral.ResumeLayout(false);
    ((ISupportInitialize) this.gridFopas).EndInit();
    ((ISupportInitialize) this.viewFopas).EndInit();
    ((ISupportInitialize) this.gridTipas).EndInit();
    ((ISupportInitialize) this.viewTipas).EndInit();
    ((ISupportInitialize) this.gridBoletos).EndInit();
    ((ISupportInitialize) this.viewBoletos).EndInit();
    ((ISupportInitialize) this.repositoryItemButtonEdit1).EndInit();
    this.ResumeLayout(false);
  }
}
