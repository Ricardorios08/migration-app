// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmIngresoBoletoCajaMP
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
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.Maipu;
using InfoGov.Plugins.Recaudacion.Reportes.Maipu.CajaDiaria;
using InfoGov.Utils;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmIngresoBoletoCajaMP : BaseForm
{
  private ExpBoletoCajaMP experto;
  private BindingSource bsBoletosCaja;
  private BindingSource bsFormasPagoDisp;
  private BindingSource bsFormasPagoUs;
  private List<BoletoCajaMP> boletosAgregados;
  private List<FormaPagoMP> formasPagoDisponibles;
  private List<FormaPagoMP> formasPagoUsadas;
  private FormaPagoMP TipaSeleccionado;
  private FormaPagoMP FopaSeleccionada;
  private bool pagoEspecial;
  private DTOAcrePagoMP dtoAcrePago;
  private DateTime hoy;
  private IContainer components = (IContainer) null;
  private MetroPanel metroPanel1;
  private MetroPanel metroPanel3;
  private MetroPanel metroPanel4;
  private MetroPanel metroPanel2;
  private MetroLabel metroLabel1;
  private GridControl gridBoletos;
  private GridView viewBoletos;
  private GridColumn colPeriBole;
  private GridColumn colNumeBole;
  private GridColumn colCodiOfic;
  private GridColumn colCuenCtct;
  private GridColumn colDetaPers;
  private GridColumn colTipoBole;
  private GridColumn colCapiBole;
  private GridColumn colDecaBole;
  private GridColumn colRecaBole;
  private GridColumn colDereBole;
  private GridColumn colInteBole;
  private GridColumn colExenBole;
  private GridColumn colApreBole;
  private GridColumn colTotaBole;
  private GridColumn colCodiUsua;
  private MetroIntTextBox mtextPeriBole;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel3;
  private MetroLabel labelRecaudador;
  private MetroLabel metroLabel2;
  private MetroDateTimePicker mdateFecha;
  private MetroIntTextBox mtextNumeBole;
  private MetroTextBox mtextCodiBarra;
  private MetroPanel metroPanel5;
  private MetroPanel metroPanel6;
  private MetroDecimalTextBox mdtVuelto;
  private MetroDecimalTextBox mdtPaga;
  private MetroDecimalTextBox mdtTotal;
  private MetroLabel lblVuelto;
  private MetroLabel lblPaga;
  private MetroLabel lblTotal;
  private GridControl gridFopas;
  private GridView viewFopas;
  private GridColumn colCodiTipaFP;
  private GridColumn colDetaTipaFP;
  private GridColumn colNuchFopa;
  private GridColumn colImpoFopa;
  private GridControl gridTipas;
  private GridView viewTipas;
  private GridColumn colCodiTipa;
  private GridColumn colDetaTipa;
  private Label lblFaltaPago;
  private Label lblFalta;
  private GridColumn colCucuPers;
  private MetroLabel metroLabel7;
  private MetroCheckBox chkCobroTick;
  private GridColumn colQuitarBoleto;
  private RepositoryItemButtonEdit ribQuitarBoleto;
  private MetroLabel lblGrupo;
  private MetroLabel metroLabel9;
  private SimpleButton btnCerrarCaja;
  private SimpleButton btnAgregar;
  private SimpleButton btnConfirmar;
  private RepositoryItemTextEdit TextEditCheque;

  public frmIngresoBoletoCajaMP()
  {
    this.InitializeComponent();
    this.hoy = Misc.Now();
    this.pagoEspecial = false;
    ((Control) this.btnAgregar).Enabled = false;
    this.labelRecaudador.Text = string.Empty;
    this.chkCobroTick.Checked = PARAMS.Parameters.GetString("TickeadoraActiva") == "True";
    this.chkCobroTick.Text = this.chkCobroTick.Checked ? "Activo" : "Inactivo";
    this.bsBoletosCaja = new BindingSource();
    this.bsFormasPagoDisp = new BindingSource();
    this.bsFormasPagoUs = new BindingSource();
    this.boletosAgregados = new List<BoletoCajaMP>();
    this.formasPagoDisponibles = new List<FormaPagoMP>();
    this.formasPagoUsadas = new List<FormaPagoMP>();
    this.bsBoletosCaja.DataSource = (object) this.boletosAgregados;
    this.gridBoletos.DataSource = (object) this.bsBoletosCaja;
    this.bsFormasPagoUs.DataSource = (object) this.formasPagoUsadas;
    this.gridFopas.DataSource = (object) this.bsFormasPagoUs;
    ((ColumnView) this.viewTipas).Columns[0].SortOrder = (ColumnSortOrder) 1;
    ((ColumnView) this.viewFopas).Columns[0].SortOrder = (ColumnSortOrder) 1;
    this.refrescarGridView();
    this.dtoAcrePago = new DTOAcrePagoMP();
    this.experto = new ExpBoletoCajaMP();
    this.experto.caja = this.dtoAcrePago;
  }

  private void AgregarBoleto(bool codiBar = false)
  {
    if (!((Control) this.btnAgregar).Enabled)
      return;
    if (codiBar)
    {
      this.mtextPeriBole.IntText = 2000 + int.Parse(this.mtextCodiBarra.Text.Substring(15, 2));
      this.mtextNumeBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(4, 11));
    }
    if (this.mtextPeriBole.IntText < 1980 || this.mtextNumeBole.IntText <= 0)
    {
      ToastHelper.ShowOrFallback((Form) this, "Ingrese un periodo y número de boleto validos.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
      this.FocusControlIngresoPago();
    }
    else if (this.boletosAgregados.Exists((Predicate<BoletoCajaMP>) (x => x.NumeBole == this.mtextNumeBole.IntText && x.PeriBole == this.mtextPeriBole.IntText)))
    {
      ToastHelper.ShowOrFallback((Form) this, $"El Boleto {this.mtextPeriBole.IntText}-{this.mtextNumeBole.IntText} ya se encuentra en la lista de boletos a pagar.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
      this.mtextNumeBole.Focus();
    }
    else
    {
      string empty = string.Empty;
      string message1 = this.experto.CajaVerificada(this.mdateFecha.Value);
      if (!string.IsNullOrWhiteSpace(message1))
      {
        ToastHelper.ShowOrFallback((Form) this, message1, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
        this.FocusControlIngresoPago();
      }
      else
      {
        string message2 = this.experto.GrupoActualizado(this.mdateFecha.Value);
        if (!string.IsNullOrWhiteSpace(message2))
        {
          ToastHelper.ShowOrFallback((Form) this, message2, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
          this.FocusControlIngresoPago();
        }
        else
        {
          string message3 = this.experto.VerificarBoleto(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
          if (!string.IsNullOrWhiteSpace(message3))
          {
            ToastHelper.ShowOrFallback((Form) this, message3, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
            this.FocusControlIngresoPago();
          }
          else
          {
            string message4 = this.experto.VerificarPago(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
            if (!string.IsNullOrWhiteSpace(message4))
            {
              ToastHelper.ShowOrFallback((Form) this, message4, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
              this.FocusControlIngresoPago();
            }
            else
            {
              string message5 = this.experto.Pagado(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
              if (!string.IsNullOrWhiteSpace(message5))
              {
                ToastHelper.ShowOrFallback((Form) this, message5, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
                this.FocusControlIngresoPago();
              }
              else
              {
                BoletoCajaMP boletoCajaMp = this.experto.ObtenerBoletoCaja(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
                if (boletoCajaMp != null && boletoCajaMp.PeriBole > 0 && boletoCajaMp.NumeBole > 0)
                {
                  this.boletosAgregados.Add(boletoCajaMp);
                  this.CalculoPago(true);
                  this.CalculoVuelto();
                  this.refrescarGridView();
                  this.mtextNumeBole.Clear();
                  this.mtextPeriBole.IntText = this.hoy.Year;
                  this.mtextCodiBarra.Clear();
                  this.FocusControlIngresoPago();
                }
                else
                  ToastHelper.ShowOrFallback((Form) this, "Boleto incorrecto, verificar.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
              }
            }
          }
        }
      }
    }
  }

  private void CalculoPago(bool boletoAgregado = false, Decimal impFP = 0M)
  {
    this.pagoEspecial = this.boletosAgregados.Count > 0 && this.boletosAgregados.All<BoletoCajaMP>((Func<BoletoCajaMP, bool>) (x => x.CapiBole > 0M)) && this.boletosAgregados.All<BoletoCajaMP>((Func<BoletoCajaMP, bool>) (x => x.TotaBole == 0M)) && this.formasPagoUsadas.Count == 1 && this.formasPagoUsadas.All<FormaPagoMP>((Func<FormaPagoMP, bool>) (x => x.CodiTipa == 1)) && this.formasPagoUsadas.All<FormaPagoMP>((Func<FormaPagoMP, bool>) (x => x.ImpoFopa == 0M));
    Decimal num1 = 0.00M;
    if (this.boletosAgregados.Count<BoletoCajaMP>() > 0)
      num1 = Decimal.Round(this.boletosAgregados.Sum<BoletoCajaMP>((Func<BoletoCajaMP, Decimal>) (x => x.TotaBole)), 2);
    if (this.formasPagoUsadas.Count<FormaPagoMP>() == 1 && this.formasPagoUsadas.First<FormaPagoMP>().ImpoFopa == 0M)
      this.formasPagoUsadas.First<FormaPagoMP>().ImpoFopa = num1;
    else if (boletoAgregado)
    {
      foreach (FormaPagoMP formasPagoUsada in this.formasPagoUsadas)
        formasPagoUsada.ImpoFopa = 0.00M;
      this.formasPagoUsadas.First<FormaPagoMP>().ImpoFopa = num1;
    }
    else if (impFP > 0M)
      this.formasPagoUsadas.First<FormaPagoMP>().ImpoFopa += Decimal.Round(impFP, 2);
    Decimal num2 = Decimal.Round(this.formasPagoUsadas.Sum<FormaPagoMP>((Func<FormaPagoMP, Decimal>) (x => x.ImpoFopa)), 2);
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
    ((Control) this.btnConfirmar).Enabled = ((Control) this.btnConfirmar).Visible = num2 - num1 == 0M && num1 > 0M || this.pagoEspecial;
    this.mdtTotal.DecimalText = num1;
  }

  private void CalculoVuelto()
  {
    if (!Decimal.TryParse(this.mdtPaga.Text, out Decimal _))
      this.mdtPaga.DecimalText = 0M;
    Decimal num = Decimal.Round(this.mdtTotal.DecimalText, 2) - Decimal.Round(this.mdtPaga.DecimalText, 2);
    if (num >= 0M)
      this.mdtVuelto.DecimalText = 0M;
    else
      this.mdtVuelto.DecimalText = Math.Abs(num);
  }

  private void FocusControlIngresoPago() => this.mtextCodiBarra.Focus();

  private void RealizarPago()
  {
    string empty = string.Empty;
    string message = this.pagoEspecial ? this.experto.IngresarPago(this.mdateFecha.Value, this.boletosAgregados, this.formasPagoUsadas.Where<FormaPagoMP>((Func<FormaPagoMP, bool>) (x => x.CodiTipa == 1)).ToList<FormaPagoMP>()) : this.experto.IngresarPago(this.mdateFecha.Value, this.boletosAgregados, this.formasPagoUsadas.Where<FormaPagoMP>((Func<FormaPagoMP, bool>) (x => x.ImpoFopa > 0M)).ToList<FormaPagoMP>());
    if (string.IsNullOrWhiteSpace(message))
    {
      ToastHelper.ShowOrFallback((Form) this, "Pago ingresado correctamente.", ToastHelper.ToastType.Success, ToastHelper.ToastPosition.TopRight);
      this.LimpiarControles();
      this.FocusControlIngresoPago();
    }
    else
    {
      ToastHelper.ShowOrFallback((Form) this, message, ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
      this.FocusControlIngresoPago();
    }
  }

  private void CalcularFormasPago()
  {
    if (this.formasPagoUsadas.Count<FormaPagoMP>() > 1)
    {
      int num1 = this.formasPagoUsadas.Where<FormaPagoMP>((Func<FormaPagoMP, bool>) (x => x.ImpoFopa == 0M)).Count<FormaPagoMP>();
      if (num1 > 0)
      {
        Decimal num2 = this.boletosAgregados.Sum<BoletoCajaMP>((Func<BoletoCajaMP, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPagoMP>((Func<FormaPagoMP, Decimal>) (x => x.ImpoFopa));
        if (num2 > 0M)
        {
          Decimal restoAFila = num2 / (Decimal) num1;
          int primerFila = this.formasPagoUsadas.First<FormaPagoMP>((Func<FormaPagoMP, bool>) (x => x.ImpoFopa == 0M)).CodiTipa;
          this.formasPagoUsadas.Where<FormaPagoMP>((Func<FormaPagoMP, bool>) (x => x.ImpoFopa == 0M)).ToList<FormaPagoMP>().ForEach((Action<FormaPagoMP>) (x => x.ImpoFopa = Decimal.Round(restoAFila, 2)));
          Decimal num3 = Decimal.Round(this.boletosAgregados.Sum<BoletoCajaMP>((Func<BoletoCajaMP, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPagoMP>((Func<FormaPagoMP, Decimal>) (x => x.ImpoFopa)), 2);
          if (num3 != 0M)
            this.formasPagoUsadas.Find((Predicate<FormaPagoMP>) (x => x.CodiTipa == primerFila)).ImpoFopa += num3;
        }
      }
    }
    this.CalculoPago();
    this.refrescarGridView();
  }

  private void LimpiarControles()
  {
    ((Control) this.btnConfirmar).Enabled = ((Control) this.btnConfirmar).Visible = false;
    this.lblFalta.Visible = false;
    this.lblFaltaPago.Visible = false;
    this.mtextPeriBole.IntText = this.hoy.Year;
    MetroDecimalTextBox mdtTotal = this.mdtTotal;
    MetroDecimalTextBox mdtPaga = this.mdtPaga;
    MetroDecimalTextBox mdtVuelto = this.mdtVuelto;
    Decimal num1 = 0M;
    Decimal num2 = num1;
    mdtVuelto.DecimalText = num2;
    Decimal num3;
    Decimal num4 = num3 = num1;
    mdtPaga.DecimalText = num3;
    Decimal num5 = num4;
    mdtTotal.DecimalText = num5;
    this.mtextNumeBole.IntText = 0;
    this.boletosAgregados.Clear();
    this.formasPagoUsadas.Clear();
    this.formasPagoDisponibles.Clear();
    this.mtextCodiBarra.Clear();
    this.formasPagoDisponibles = this.experto.ObtenerFormasPago();
    FormaPagoMP formaPagoMp = this.formasPagoDisponibles.First<FormaPagoMP>();
    formaPagoMp.ImpoFopa = 0M;
    this.formasPagoUsadas.Add(formaPagoMp);
    this.formasPagoDisponibles.Remove(formaPagoMp);
    this.bsFormasPagoDisp.DataSource = (object) this.formasPagoDisponibles;
    this.gridTipas.DataSource = (object) this.bsFormasPagoDisp;
    this.refrescarGridView();
  }

  private bool ValidarCodigoBarras()
  {
    return this.mtextCodiBarra.Text.Trim().Length == this.mtextCodiBarra.MaxLength && this.mtextCodiBarra.Text.Trim().StartsWith("5649") && (!(this.mtextCodiBarra.Text.Trim().Substring(17, 3) != "002") || !(this.mtextCodiBarra.Text.Trim().Substring(17, 3) != "117"));
  }

  private void mtextCodiBarra_KeyDown(object sender, KeyEventArgs e)
  {
    if (e.KeyCode == Keys.Back)
      e.SuppressKeyPress = false;
    else if (e.KeyCode == Keys.Left || e.KeyCode == Keys.Right || e.KeyCode == Keys.Up || e.KeyCode == Keys.Down)
      e.SuppressKeyPress = false;
    else if (e.KeyCode == Keys.Home || e.KeyCode == Keys.End || e.KeyCode == Keys.Delete)
      e.SuppressKeyPress = false;
    else if (e.KeyValue >= 48 /*0x30*/ && e.KeyValue <= 57 || e.KeyValue >= 96 /*0x60*/ && e.KeyValue <= 105)
      e.SuppressKeyPress = false;
    else
      e.SuppressKeyPress = true;
  }

  private void mtextCodiBarra_Leave(object sender, EventArgs e)
  {
    this.mtextCodiBarra.Text = string.IsNullOrEmpty(this.mtextCodiBarra.Text) ? "0" : this.mtextCodiBarra.Text;
  }

  private void mtextCodiBarra_Enter(object sender, EventArgs e)
  {
    this.mtextCodiBarra.Text = string.Empty;
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

  private void mdtPaga_Enter(object sender, EventArgs e)
  {
    this.mdtPaga.Focus();
    this.BeginInvoke((Delegate) (() => this.mdtPaga.SelectAll()));
  }

  private void mdtPaga_TextChanged(object sender, EventArgs e) => this.CalculoVuelto();

  private void mtextPeriBole_KeyDown(object sender, KeyEventArgs e)
  {
    if (e.KeyCode == Keys.Back)
      e.SuppressKeyPress = false;
    else if (e.KeyValue >= 48 /*0x30*/ && e.KeyValue <= 57 || e.KeyValue >= 96 /*0x60*/ && e.KeyValue <= 105)
      e.SuppressKeyPress = false;
    else
      e.SuppressKeyPress = true;
  }

  private void mtextNumeBole_KeyDown(object sender, KeyEventArgs e)
  {
    if (e.KeyCode == Keys.Back)
      e.SuppressKeyPress = false;
    else if (e.KeyValue >= 48 /*0x30*/ && e.KeyValue <= 57 || e.KeyValue >= 96 /*0x60*/ && e.KeyValue <= 105)
      e.SuppressKeyPress = false;
    else
      e.SuppressKeyPress = true;
  }

  private void mdtPaga_KeyDown(object sender, KeyEventArgs e)
  {
    if (e.KeyCode == Keys.Back)
      e.SuppressKeyPress = false;
    else if (e.KeyValue >= 48 /*0x30*/ && e.KeyValue <= 57 || e.KeyValue >= 96 /*0x60*/ && e.KeyValue <= 105)
      e.SuppressKeyPress = false;
    else if (e.KeyCode == Keys.Decimal)
    {
      if (!this.mdtPaga.Text.Contains("."))
        return;
      e.SuppressKeyPress = true;
    }
    else
      e.SuppressKeyPress = true;
  }

  private void btnAgregar_Click(object sender, EventArgs e)
  {
    if (this.mtextCodiBarra.Text.Length == this.mtextCodiBarra.MaxLength)
    {
      if (!this.ValidarCodigoBarras())
      {
        ToastHelper.ShowOrFallback((Form) this, "El código de barras ingresado no es válido.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
        this.mtextCodiBarra.Focus();
      }
      else
        this.AgregarBoleto(true);
    }
    else if (this.mtextPeriBole.IntText > 1980 && this.mtextNumeBole.IntText > 0)
      this.AgregarBoleto();
    else
      ToastHelper.ShowOrFallback((Form) this, "Ingrese un boleto valido.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
  }

  private void gridView2_RowClick(object sender, RowClickEventArgs e)
  {
    this.FopaSeleccionada = (FormaPagoMP) ((BaseView) this.viewFopas).GetRow(((ColumnView) this.viewFopas).GetSelectedRows()[0]);
    if (this.FopaSeleccionada == null || this.formasPagoUsadas.Count <= 1)
      return;
    Decimal impoFopa = this.FopaSeleccionada.ImpoFopa;
    this.FopaSeleccionada.ImpoFopa = 0M;
    this.FopaSeleccionada.NuchFopa = string.Empty;
    this.formasPagoDisponibles.Add(this.FopaSeleccionada);
    this.formasPagoUsadas.Remove(this.FopaSeleccionada);
    this.CalculoPago(impFP: impoFopa);
    this.refrescarGridView();
    this.FopaSeleccionada = (FormaPagoMP) null;
  }

  private void gridView3_RowClick(object sender, RowClickEventArgs e)
  {
    this.TipaSeleccionado = (FormaPagoMP) ((BaseView) this.viewTipas).GetRow(((ColumnView) this.viewTipas).GetSelectedRows()[0]);
    if (this.TipaSeleccionado == null || this.formasPagoDisponibles.Count <= 0)
      return;
    Decimal num = this.boletosAgregados.Sum<BoletoCajaMP>((Func<BoletoCajaMP, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPagoMP>((Func<FormaPagoMP, Decimal>) (x => x.ImpoFopa));
    this.TipaSeleccionado.ImpoFopa = num > 0M ? num : 0M;
    this.formasPagoUsadas.Add(this.TipaSeleccionado);
    this.formasPagoDisponibles.Remove(this.TipaSeleccionado);
    this.CalculoPago();
    this.refrescarGridView();
    this.TipaSeleccionado = (FormaPagoMP) null;
  }

  private void gridView2_CellValueChanged(object sender, CellValueChangedEventArgs e)
  {
    FormaPagoMP row = (FormaPagoMP) ((BaseView) this.viewFopas).GetRow(e.RowHandle);
    FormaPagoMP formaPagoMp = this.formasPagoUsadas.Find((Predicate<FormaPagoMP>) (x => x.CodiTipa == row.CodiTipa));
    if (formaPagoMp != null)
      formaPagoMp.NuchFopa = formaPagoMp.NuchFopa?.Trim() ?? string.Empty;
    this.formasPagoUsadas.Find((Predicate<FormaPagoMP>) (x => x.CodiTipa == row.CodiTipa)).ImpoFopa = Math.Abs(Decimal.Round(this.formasPagoUsadas.Find((Predicate<FormaPagoMP>) (x => x.CodiTipa == row.CodiTipa)).ImpoFopa, 2));
    this.CalcularFormasPago();
  }

  private void refrescarGridView()
  {
    ((BaseView) this.viewBoletos).RefreshData();
    ((BaseView) this.viewFopas).RefreshData();
    ((BaseView) this.viewTipas).RefreshData();
  }

  private void btnConfirmar_Click(object sender, EventArgs e)
  {
    if (this.formasPagoUsadas.Exists((Predicate<FormaPagoMP>) (x => x.TipoTipa == 2 && string.IsNullOrWhiteSpace(x.NuchFopa))))
      ToastHelper.ShowOrFallback((Form) this, "El N° de cheque es obligatorio.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
    else if (this.formasPagoUsadas.Sum<FormaPagoMP>((Func<FormaPagoMP, Decimal>) (x => x.ImpoFopa)) - this.boletosAgregados.Sum<BoletoCajaMP>((Func<BoletoCajaMP, Decimal>) (x => x.TotaBole)) == 0M)
      this.RealizarPago();
    else
      ToastHelper.ShowOrFallback((Form) this, "El importe de las Formas de Pago debe coincidir con el del total de los boletos.", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
  }

  private void gridView2_ValidatingEditor(object sender, BaseContainerValidateEditorEventArgs e)
  {
    if (string.IsNullOrWhiteSpace(e.Value.ToString().Trim()) || !e.Value.ToString().Contains("."))
      return;
    e.Value = (object) e.Value.ToString().Replace(".", ",");
  }

  private void ribQuitarBoleto_Click(object sender, EventArgs e)
  {
    BoletoCajaMP row = (BoletoCajaMP) ((ColumnView) this.viewBoletos).GetFocusedRow();
    if (row == null)
      return;
    BoletoCajaMP boletoCajaMp = this.boletosAgregados.Find((Predicate<BoletoCajaMP>) (x => x.PeriBole == row.PeriBole && x.NumeBole == row.NumeBole));
    if (boletoCajaMp != null)
    {
      this.boletosAgregados.Remove(boletoCajaMp);
      this.CalculoPago(true);
    }
    this.mtextPeriBole.IntText = this.hoy.Year;
    this.mtextNumeBole.IntText = 0;
    this.mtextNumeBole.Focus();
    this.refrescarGridView();
    this.CalculoVuelto();
  }

  private void frmIngresoBoletoCajaMP_Shown(object sender, EventArgs e)
  {
    this.Shown -= new EventHandler(this.frmIngresoBoletoCajaMP_Shown);
    using (mdlCajaMP mdlCajaMp = new mdlCajaMP(this.dtoAcrePago, this.experto))
    {
      mdlCajaMp.StartPosition = FormStartPosition.CenterScreen;
      if (mdlCajaMp.ShowDialog((IWin32Window) this) == DialogResult.OK)
      {
        this.labelRecaudador.Text = this.dtoAcrePago.DetaEnre.ToUpper();
        this.lblGrupo.Text = this.dtoAcrePago.NumeAcpa.ToString();
        this.mdateFecha.MaxDate = this.mdateFecha.MinDate = this.mdateFecha.Value = this.dtoAcrePago.FeenAcpa;
        ((Control) this.btnAgregar).Enabled = true;
        this.LimpiarControles();
        this.FocusControlIngresoPago();
      }
      else
        this.BeginInvoke((Delegate) (() => this.Close()));
    }
  }

  private void btnCerrarCaja_Click(object sender, EventArgs e)
  {
    using (mdlCierreCajaMP mdlCierreCajaMp = new mdlCierreCajaMP(this.dtoAcrePago, this.experto))
    {
      mdlCierreCajaMp.StartPosition = FormStartPosition.CenterScreen;
      if (mdlCierreCajaMp.ShowDialog((IWin32Window) this) != DialogResult.OK)
        return;
      new frmMensaje((Form) this).mostrarConfirmación("La caja ha sido CERRADA CORRECTAMENTE.");
      if (new frmPreguntar((Form) this).preguntar("¿Desea imprimir el reporte diario?"))
      {
        string str = string.Empty;
        try
        {
          new frmEsperar((Form) this).procesar((Action) (() =>
          {
            DTORepCajaDiariaMP datos = this.experto.ObtenerDatosRepCajaDiaria(this.dtoAcrePago.FeenAcpa, this.dtoAcrePago.NumeAcpa);
            ExpConfiguracion expConfiguracion = new ExpConfiguracion(true);
            Print.ImprimirHTML(new RepCajaDiariaMP().ReporteCajaDiaria(datos), expConfiguracion.config.ImprRepo);
            if (datos.detallesTiposPagosUtilizados.Count <= 0)
              return;
            Print.ImprimirHTML(new RepCajaDiariaMP().ReporteCajaDiariaFormasPago(datos), expConfiguracion.config.ImprRepo);
          }), "Generando reporte...");
        }
        catch (Exception ex)
        {
          str = ex.Message;
        }
        if (!string.IsNullOrWhiteSpace(str))
          new frmMensaje((Form) this).mostrarError("Ocurrió un error al intentar imprimir el reporte de cierre de caja.\nDetalle: " + str);
      }
      this.BeginInvoke((Delegate) (() => this.Close()));
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmIngresoBoletoCajaMP));
    this.metroPanel1 = new MetroPanel();
    this.metroPanel3 = new MetroPanel();
    this.metroPanel5 = new MetroPanel();
    this.gridTipas = new GridControl();
    this.viewTipas = new GridView();
    this.colCodiTipa = new GridColumn();
    this.colDetaTipa = new GridColumn();
    this.metroPanel6 = new MetroPanel();
    this.lblFaltaPago = new Label();
    this.lblFalta = new Label();
    this.mdtVuelto = new MetroDecimalTextBox();
    this.mdtPaga = new MetroDecimalTextBox();
    this.mdtTotal = new MetroDecimalTextBox();
    this.lblVuelto = new MetroLabel();
    this.lblPaga = new MetroLabel();
    this.lblTotal = new MetroLabel();
    this.btnConfirmar = new SimpleButton();
    this.gridFopas = new GridControl();
    this.viewFopas = new GridView();
    this.colCodiTipaFP = new GridColumn();
    this.colDetaTipaFP = new GridColumn();
    this.colNuchFopa = new GridColumn();
    this.TextEditCheque = new RepositoryItemTextEdit();
    this.colImpoFopa = new GridColumn();
    this.gridBoletos = new GridControl();
    this.viewBoletos = new GridView();
    this.colPeriBole = new GridColumn();
    this.colNumeBole = new GridColumn();
    this.colCodiOfic = new GridColumn();
    this.colCuenCtct = new GridColumn();
    this.colCucuPers = new GridColumn();
    this.colDetaPers = new GridColumn();
    this.colTipoBole = new GridColumn();
    this.colCapiBole = new GridColumn();
    this.colDecaBole = new GridColumn();
    this.colRecaBole = new GridColumn();
    this.colDereBole = new GridColumn();
    this.colInteBole = new GridColumn();
    this.colExenBole = new GridColumn();
    this.colApreBole = new GridColumn();
    this.colTotaBole = new GridColumn();
    this.colCodiUsua = new GridColumn();
    this.colQuitarBoleto = new GridColumn();
    this.ribQuitarBoleto = new RepositoryItemButtonEdit();
    this.metroPanel4 = new MetroPanel();
    this.btnAgregar = new SimpleButton();
    this.mtextCodiBarra = new MetroTextBox();
    this.mtextNumeBole = new MetroIntTextBox();
    this.mtextPeriBole = new MetroIntTextBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.metroPanel2 = new MetroPanel();
    this.btnCerrarCaja = new SimpleButton();
    this.lblGrupo = new MetroLabel();
    this.metroLabel9 = new MetroLabel();
    this.chkCobroTick = new MetroCheckBox();
    this.metroLabel7 = new MetroLabel();
    this.labelRecaudador = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.mdateFecha = new MetroDateTimePicker();
    this.metroLabel1 = new MetroLabel();
    this.metroPanel1.SuspendLayout();
    this.metroPanel3.SuspendLayout();
    this.metroPanel5.SuspendLayout();
    ((ISupportInitialize) this.gridTipas).BeginInit();
    ((ISupportInitialize) this.viewTipas).BeginInit();
    this.metroPanel6.SuspendLayout();
    ((ISupportInitialize) this.gridFopas).BeginInit();
    ((ISupportInitialize) this.viewFopas).BeginInit();
    ((ISupportInitialize) this.TextEditCheque).BeginInit();
    ((ISupportInitialize) this.gridBoletos).BeginInit();
    ((ISupportInitialize) this.viewBoletos).BeginInit();
    ((ISupportInitialize) this.ribQuitarBoleto).BeginInit();
    this.metroPanel4.SuspendLayout();
    this.metroPanel2.SuspendLayout();
    this.SuspendLayout();
    this.metroPanel1.Controls.Add((Control) this.metroPanel3);
    this.metroPanel1.Controls.Add((Control) this.metroPanel2);
    this.metroPanel1.Dock = DockStyle.Fill;
    this.metroPanel1.Location = new Point(0, 0);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(1344, 591);
    this.metroPanel1.TabIndex = 0;
    this.metroPanel3.Controls.Add((Control) this.metroPanel5);
    this.metroPanel3.Controls.Add((Control) this.gridBoletos);
    this.metroPanel3.Controls.Add((Control) this.metroPanel4);
    this.metroPanel3.Dock = DockStyle.Fill;
    this.metroPanel3.Location = new Point(0, 72);
    this.metroPanel3.Name = "metroPanel3";
    this.metroPanel3.Size = new Size(1344, 519);
    this.metroPanel3.TabIndex = 3;
    this.metroPanel5.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.metroPanel5.Controls.Add((Control) this.gridTipas);
    this.metroPanel5.Controls.Add((Control) this.metroPanel6);
    this.metroPanel5.Controls.Add((Control) this.gridFopas);
    this.metroPanel5.Location = new Point(0, 354);
    this.metroPanel5.Name = "metroPanel5";
    this.metroPanel5.Size = new Size(1145, 165);
    this.metroPanel5.TabIndex = 4;
    ((Control) this.gridTipas).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((Control) this.gridTipas).Location = new Point(3, 10);
    this.gridTipas.MainView = (BaseView) this.viewTipas;
    ((Control) this.gridTipas).Name = "gridTipas";
    ((Control) this.gridTipas).Size = new Size(170, 126);
    ((Control) this.gridTipas).TabIndex = 4;
    ((Control) this.gridTipas).TabStop = false;
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
    this.viewTipas.RowClick += new RowClickEventHandler(this.gridView3_RowClick);
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
    this.metroPanel6.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.metroPanel6.Controls.Add((Control) this.lblFaltaPago);
    this.metroPanel6.Controls.Add((Control) this.lblFalta);
    this.metroPanel6.Controls.Add((Control) this.mdtVuelto);
    this.metroPanel6.Controls.Add((Control) this.mdtPaga);
    this.metroPanel6.Controls.Add((Control) this.mdtTotal);
    this.metroPanel6.Controls.Add((Control) this.lblVuelto);
    this.metroPanel6.Controls.Add((Control) this.lblPaga);
    this.metroPanel6.Controls.Add((Control) this.lblTotal);
    this.metroPanel6.Controls.Add((Control) this.btnConfirmar);
    this.metroPanel6.Location = new Point(696, 4);
    this.metroPanel6.Name = "metroPanel6";
    this.metroPanel6.Size = new Size(420, 132);
    this.metroPanel6.TabIndex = 3;
    this.lblFaltaPago.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.lblFaltaPago.Font = new Font("Verdana", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.lblFaltaPago.ForeColor = Color.Red;
    this.lblFaltaPago.Location = new Point(224 /*0xE0*/, 56);
    this.lblFaltaPago.Name = "lblFaltaPago";
    this.lblFaltaPago.Size = new Size(182, 19);
    this.lblFaltaPago.TabIndex = 18;
    this.lblFaltaPago.Text = "$";
    this.lblFaltaPago.TextAlign = ContentAlignment.MiddleLeft;
    this.lblFaltaPago.Visible = false;
    this.lblFalta.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.lblFalta.AutoSize = true;
    this.lblFalta.Font = new Font("Verdana", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.lblFalta.ForeColor = Color.Red;
    this.lblFalta.Location = new Point(224 /*0xE0*/, 32 /*0x20*/);
    this.lblFalta.Name = "lblFalta";
    this.lblFalta.Size = new Size(39, 16 /*0x10*/);
    this.lblFalta.TabIndex = 17;
    this.lblFalta.Text = "Falta";
    this.lblFalta.TextAlign = ContentAlignment.MiddleLeft;
    this.lblFalta.Visible = false;
    this.mdtVuelto.DisplayIcon = false;
    this.mdtVuelto.Location = new Point(66, 87);
    this.mdtVuelto.MaxValue = new Decimal(new int[4]
    {
      99999999,
      0,
      0,
      0
    });
    this.mdtVuelto.Name = "mdtVuelto";
    this.mdtVuelto.ReadOnly = true;
    this.mdtVuelto.Size = new Size(112 /*0x70*/, 23);
    this.mdtVuelto.TabIndex = 16 /*0x10*/;
    this.mdtVuelto.TabStop = false;
    this.mdtVuelto.TextAlign = HorizontalAlignment.Right;
    this.mdtPaga.DisplayIcon = false;
    this.mdtPaga.Location = new Point(66, 56);
    this.mdtPaga.MaxLength = 12;
    this.mdtPaga.MaxValue = new Decimal(new int[4]
    {
      99999999,
      0,
      0,
      0
    });
    this.mdtPaga.Name = "mdtPaga";
    this.mdtPaga.Size = new Size(112 /*0x70*/, 23);
    this.mdtPaga.TabIndex = 15;
    this.mdtPaga.TabStop = false;
    this.mdtPaga.TextAlign = HorizontalAlignment.Right;
    this.mdtPaga.TextChanged += new EventHandler(this.mdtPaga_TextChanged);
    this.mdtPaga.Enter += new EventHandler(this.mdtPaga_Enter);
    this.mdtPaga.KeyDown += new KeyEventHandler(this.mdtPaga_KeyDown);
    this.mdtTotal.DisplayIcon = false;
    this.mdtTotal.Location = new Point(66, 25);
    this.mdtTotal.MaxValue = new Decimal(new int[4]
    {
      99999999,
      0,
      0,
      0
    });
    this.mdtTotal.Name = "mdtTotal";
    this.mdtTotal.ReadOnly = true;
    this.mdtTotal.Size = new Size(112 /*0x70*/, 23);
    this.mdtTotal.TabIndex = 14;
    this.mdtTotal.TabStop = false;
    this.mdtTotal.TextAlign = HorizontalAlignment.Right;
    this.lblVuelto.AutoSize = false;
    this.lblVuelto.Location = new Point(6, 87);
    this.lblVuelto.Name = "lblVuelto";
    this.lblVuelto.Size = new Size(48 /*0x30*/, 19);
    this.lblVuelto.TabIndex = 13;
    this.lblVuelto.Text = "Vuelto:";
    this.lblPaga.AutoSize = false;
    this.lblPaga.Location = new Point(6, 56);
    this.lblPaga.Name = "lblPaga";
    this.lblPaga.Size = new Size(48 /*0x30*/, 19);
    this.lblPaga.TabIndex = 9;
    this.lblPaga.Text = "Paga:";
    this.lblTotal.AutoSize = false;
    this.lblTotal.Location = new Point(6, 25);
    this.lblTotal.Name = "lblTotal";
    this.lblTotal.Size = new Size(48 /*0x30*/, 19);
    this.lblTotal.TabIndex = 7;
    this.lblTotal.Text = "Total:";
    ((BaseStyleControl) this.btnConfirmar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnConfirmar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnConfirmar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnConfirmar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnConfirmar.ImageOptions.Image");
    ((Control) this.btnConfirmar).Location = new Point(227, 51);
    ((Control) this.btnConfirmar).Name = "btnConfirmar";
    ((Control) this.btnConfirmar).Size = new Size(115, 34);
    ((Control) this.btnConfirmar).TabIndex = 19;
    ((Control) this.btnConfirmar).TabStop = false;
    ((Control) this.btnConfirmar).Text = "CONFIRMAR";
    ((Control) this.btnConfirmar).Visible = false;
    ((Control) this.btnConfirmar).Click += new EventHandler(this.btnConfirmar_Click);
    ((Control) this.gridFopas).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((Control) this.gridFopas).Location = new Point((int) byte.MaxValue, 10);
    this.gridFopas.MainView = (BaseView) this.viewFopas;
    ((Control) this.gridFopas).Name = "gridFopas";
    ((EditorContainer) this.gridFopas).RepositoryItems.AddRange(new RepositoryItem[1]
    {
      (RepositoryItem) this.TextEditCheque
    });
    ((Control) this.gridFopas).Size = new Size(387, 126);
    ((Control) this.gridFopas).TabIndex = 2;
    ((Control) this.gridFopas).TabStop = false;
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
    this.viewFopas.RowClick += new RowClickEventHandler(this.gridView2_RowClick);
    ((ColumnView) this.viewFopas).CellValueChanged += new CellValueChangedEventHandler(this.gridView2_CellValueChanged);
    ((BaseView) this.viewFopas).ValidatingEditor += new BaseContainerValidateEditorEventHandler(this.gridView2_ValidatingEditor);
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
    this.colNuchFopa.Caption = "Observación";
    this.colNuchFopa.ColumnEdit = (RepositoryItem) this.TextEditCheque;
    this.colNuchFopa.FieldName = "NuchFopa";
    this.colNuchFopa.Name = "colNuchFopa";
    this.colNuchFopa.UnboundDataType = typeof (string);
    this.colNuchFopa.Visible = true;
    this.colNuchFopa.VisibleIndex = 2;
    this.colNuchFopa.Width = 175;
    ((RepositoryItem) this.TextEditCheque).AutoHeight = false;
    this.TextEditCheque.MaxLength = 50;
    ((RepositoryItem) this.TextEditCheque).Name = "TextEditCheque";
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
    ((Control) this.gridBoletos).Dock = DockStyle.Top;
    ((Control) this.gridBoletos).Location = new Point(0, 84);
    this.gridBoletos.MainView = (BaseView) this.viewBoletos;
    ((Control) this.gridBoletos).Name = "gridBoletos";
    ((EditorContainer) this.gridBoletos).RepositoryItems.AddRange(new RepositoryItem[1]
    {
      (RepositoryItem) this.ribQuitarBoleto
    });
    ((Control) this.gridBoletos).Size = new Size(1344, 176 /*0xB0*/);
    ((Control) this.gridBoletos).TabIndex = 3;
    ((Control) this.gridBoletos).TabStop = false;
    this.gridBoletos.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewBoletos
    });
    this.viewBoletos.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewBoletos.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewBoletos).Columns.AddRange(new GridColumn[17]
    {
      this.colPeriBole,
      this.colNumeBole,
      this.colCodiOfic,
      this.colCuenCtct,
      this.colCucuPers,
      this.colDetaPers,
      this.colTipoBole,
      this.colCapiBole,
      this.colDecaBole,
      this.colRecaBole,
      this.colDereBole,
      this.colInteBole,
      this.colExenBole,
      this.colApreBole,
      this.colTotaBole,
      this.colCodiUsua,
      this.colQuitarBoleto
    });
    this.viewBoletos.FocusRectStyle = (DrawFocusRectStyle) 0;
    ((BaseView) this.viewBoletos).GridControl = this.gridBoletos;
    ((BaseView) this.viewBoletos).Name = "viewBoletos";
    this.viewBoletos.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewBoletos.OptionsSelection.EnableAppearanceFocusedRow = false;
    this.viewBoletos.OptionsSelection.EnableAppearanceHideSelection = false;
    this.viewBoletos.OptionsSelection.UseIndicatorForSelection = false;
    this.viewBoletos.OptionsView.ShowFooter = true;
    this.viewBoletos.OptionsView.ShowGroupPanel = false;
    this.viewBoletos.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colPeriBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeriBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeriBole.Caption = "Periodo";
    this.colPeriBole.FieldName = "PeriBole";
    this.colPeriBole.MaxWidth = 50;
    this.colPeriBole.Name = "colPeriBole";
    this.colPeriBole.OptionsColumn.AllowEdit = false;
    this.colPeriBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeriBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colPeriBole.OptionsColumn.AllowMove = false;
    this.colPeriBole.OptionsColumn.AllowShowHide = false;
    this.colPeriBole.OptionsColumn.ReadOnly = true;
    this.colPeriBole.OptionsColumn.TabStop = false;
    this.colPeriBole.Visible = true;
    this.colPeriBole.VisibleIndex = 0;
    this.colPeriBole.Width = 50;
    ((AppearanceOptions) this.colNumeBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNumeBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNumeBole.Caption = "Boleto";
    this.colNumeBole.FieldName = "NumeBole";
    this.colNumeBole.MaxWidth = 100;
    this.colNumeBole.Name = "colNumeBole";
    this.colNumeBole.OptionsColumn.AllowEdit = false;
    this.colNumeBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNumeBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colNumeBole.OptionsColumn.AllowMove = false;
    this.colNumeBole.OptionsColumn.AllowShowHide = false;
    this.colNumeBole.OptionsColumn.ReadOnly = true;
    this.colNumeBole.OptionsColumn.TabStop = false;
    this.colNumeBole.Visible = true;
    this.colNumeBole.VisibleIndex = 1;
    this.colNumeBole.Width = 54;
    ((AppearanceOptions) this.colCodiOfic.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCodiOfic.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 1;
    this.colCodiOfic.Caption = "Oficina";
    this.colCodiOfic.FieldName = "DetaOfic";
    this.colCodiOfic.MaxWidth = 100;
    this.colCodiOfic.Name = "colCodiOfic";
    this.colCodiOfic.OptionsColumn.AllowEdit = false;
    this.colCodiOfic.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCodiOfic.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCodiOfic.OptionsColumn.AllowMove = false;
    this.colCodiOfic.OptionsColumn.AllowShowHide = false;
    this.colCodiOfic.OptionsColumn.ReadOnly = true;
    this.colCodiOfic.OptionsColumn.TabStop = false;
    this.colCodiOfic.Visible = true;
    this.colCodiOfic.VisibleIndex = 2;
    this.colCodiOfic.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colCuenCtct.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuenCtct.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuenCtct.Caption = "Cuenta";
    this.colCuenCtct.FieldName = "CuenCtct";
    this.colCuenCtct.MaxWidth = 110;
    this.colCuenCtct.Name = "colCuenCtct";
    this.colCuenCtct.OptionsColumn.AllowEdit = false;
    this.colCuenCtct.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuenCtct.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCuenCtct.OptionsColumn.AllowMove = false;
    this.colCuenCtct.OptionsColumn.AllowShowHide = false;
    this.colCuenCtct.OptionsColumn.ReadOnly = true;
    this.colCuenCtct.OptionsColumn.TabStop = false;
    this.colCuenCtct.Visible = true;
    this.colCuenCtct.VisibleIndex = 3;
    this.colCuenCtct.Width = 110;
    ((AppearanceOptions) this.colCucuPers.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCucuPers.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCucuPers.Caption = "CUIL";
    this.colCucuPers.FieldName = "CucuPers";
    this.colCucuPers.MaxWidth = 110;
    this.colCucuPers.Name = "colCucuPers";
    this.colCucuPers.OptionsColumn.AllowEdit = false;
    this.colCucuPers.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCucuPers.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCucuPers.OptionsColumn.AllowMove = false;
    this.colCucuPers.OptionsColumn.AllowShowHide = false;
    this.colCucuPers.OptionsColumn.ReadOnly = true;
    this.colCucuPers.OptionsColumn.TabStop = false;
    this.colCucuPers.Visible = true;
    this.colCucuPers.VisibleIndex = 5;
    this.colCucuPers.Width = 58;
    this.colDetaPers.Caption = "Apellido y Nombre";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.OptionsColumn.AllowEdit = false;
    this.colDetaPers.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetaPers.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDetaPers.OptionsColumn.AllowMove = false;
    this.colDetaPers.OptionsColumn.AllowShowHide = false;
    this.colDetaPers.OptionsColumn.ReadOnly = true;
    this.colDetaPers.OptionsColumn.TabStop = false;
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 4;
    this.colDetaPers.Width = 54;
    ((AppearanceOptions) this.colTipoBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTipoBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colTipoBole.Caption = "Tipo";
    this.colTipoBole.FieldName = "TipoBole";
    this.colTipoBole.MaxWidth = 85;
    this.colTipoBole.Name = "colTipoBole";
    this.colTipoBole.OptionsColumn.AllowEdit = false;
    this.colTipoBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTipoBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTipoBole.OptionsColumn.AllowMove = false;
    this.colTipoBole.OptionsColumn.AllowShowHide = false;
    this.colTipoBole.OptionsColumn.ReadOnly = true;
    this.colTipoBole.OptionsColumn.TabStop = false;
    this.colTipoBole.Visible = true;
    this.colTipoBole.VisibleIndex = 6;
    this.colTipoBole.Width = 51;
    ((AppearanceOptions) this.colCapiBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCapiBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCapiBole.Caption = "Capital";
    this.colCapiBole.DisplayFormat.FormatString = "C2";
    this.colCapiBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colCapiBole.FieldName = "CapiBole";
    this.colCapiBole.MaxWidth = 85;
    this.colCapiBole.Name = "colCapiBole";
    this.colCapiBole.OptionsColumn.AllowEdit = false;
    this.colCapiBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCapiBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCapiBole.OptionsColumn.AllowMove = false;
    this.colCapiBole.OptionsColumn.AllowShowHide = false;
    this.colCapiBole.OptionsColumn.ReadOnly = true;
    this.colCapiBole.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colCapiBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "CapiBole", "{0:C2}")
    });
    this.colCapiBole.Visible = true;
    this.colCapiBole.VisibleIndex = 7;
    this.colCapiBole.Width = 51;
    ((AppearanceOptions) this.colDecaBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDecaBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDecaBole.Caption = "Des. Ca.";
    this.colDecaBole.DisplayFormat.FormatString = "C2";
    this.colDecaBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colDecaBole.FieldName = "DecaBole";
    this.colDecaBole.MaxWidth = 85;
    this.colDecaBole.Name = "colDecaBole";
    this.colDecaBole.OptionsColumn.AllowEdit = false;
    this.colDecaBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDecaBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDecaBole.OptionsColumn.AllowMove = false;
    this.colDecaBole.OptionsColumn.AllowShowHide = false;
    this.colDecaBole.OptionsColumn.ReadOnly = true;
    this.colDecaBole.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colDecaBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "DecaBole", "{0:C2}")
    });
    this.colDecaBole.Visible = true;
    this.colDecaBole.VisibleIndex = 8;
    this.colDecaBole.Width = 51;
    ((AppearanceOptions) this.colRecaBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colRecaBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colRecaBole.Caption = "Recargo";
    this.colRecaBole.DisplayFormat.FormatString = "C2";
    this.colRecaBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colRecaBole.FieldName = "RecaBole";
    this.colRecaBole.MaxWidth = 85;
    this.colRecaBole.Name = "colRecaBole";
    this.colRecaBole.OptionsColumn.AllowEdit = false;
    this.colRecaBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colRecaBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colRecaBole.OptionsColumn.AllowMove = false;
    this.colRecaBole.OptionsColumn.AllowShowHide = false;
    this.colRecaBole.OptionsColumn.ReadOnly = true;
    this.colRecaBole.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colRecaBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "RecaBole", "{0:C2}")
    });
    this.colRecaBole.Visible = true;
    this.colRecaBole.VisibleIndex = 9;
    this.colRecaBole.Width = 51;
    ((AppearanceOptions) this.colDereBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDereBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDereBole.Caption = "Des. Re.";
    this.colDereBole.DisplayFormat.FormatString = "C2";
    this.colDereBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colDereBole.FieldName = "DereBole";
    this.colDereBole.MaxWidth = 85;
    this.colDereBole.Name = "colDereBole";
    this.colDereBole.OptionsColumn.AllowEdit = false;
    this.colDereBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDereBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDereBole.OptionsColumn.AllowMove = false;
    this.colDereBole.OptionsColumn.AllowShowHide = false;
    this.colDereBole.OptionsColumn.ReadOnly = true;
    this.colDereBole.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colDereBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "DereBole", "{0:C2}")
    });
    this.colDereBole.Visible = true;
    this.colDereBole.VisibleIndex = 10;
    this.colDereBole.Width = 53;
    ((AppearanceOptions) this.colInteBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colInteBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colInteBole.Caption = "Interes";
    this.colInteBole.DisplayFormat.FormatString = "C2";
    this.colInteBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colInteBole.FieldName = "InteBole";
    this.colInteBole.MaxWidth = 85;
    this.colInteBole.Name = "colInteBole";
    this.colInteBole.OptionsColumn.AllowEdit = false;
    this.colInteBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colInteBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colInteBole.OptionsColumn.AllowMove = false;
    this.colInteBole.OptionsColumn.AllowShowHide = false;
    this.colInteBole.OptionsColumn.ReadOnly = true;
    this.colInteBole.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colInteBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "InteBole", "{0:C2}")
    });
    this.colInteBole.Visible = true;
    this.colInteBole.VisibleIndex = 11;
    this.colInteBole.Width = 53;
    ((AppearanceOptions) this.colExenBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colExenBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colExenBole.Caption = "Exen.";
    this.colExenBole.DisplayFormat.FormatString = "C2";
    this.colExenBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colExenBole.FieldName = "ExenBole";
    this.colExenBole.MaxWidth = 85;
    this.colExenBole.Name = "colExenBole";
    this.colExenBole.OptionsColumn.AllowEdit = false;
    this.colExenBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colExenBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colExenBole.OptionsColumn.AllowMove = false;
    this.colExenBole.OptionsColumn.AllowShowHide = false;
    this.colExenBole.OptionsColumn.ReadOnly = true;
    this.colExenBole.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colExenBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "ExenBole", "{0:C2}")
    });
    this.colExenBole.Visible = true;
    this.colExenBole.VisibleIndex = 12;
    this.colExenBole.Width = 53;
    ((AppearanceOptions) this.colApreBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colApreBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colApreBole.Caption = "Apremio";
    this.colApreBole.DisplayFormat.FormatString = "C2";
    this.colApreBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colApreBole.FieldName = "ApreBole";
    this.colApreBole.MaxWidth = 100;
    this.colApreBole.Name = "colApreBole";
    this.colApreBole.OptionsColumn.AllowEdit = false;
    this.colApreBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colApreBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colApreBole.OptionsColumn.AllowMove = false;
    this.colApreBole.OptionsColumn.AllowShowHide = false;
    this.colApreBole.OptionsColumn.ReadOnly = true;
    this.colApreBole.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colApreBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "ApreBole", "{0:C2}")
    });
    this.colApreBole.Visible = true;
    this.colApreBole.VisibleIndex = 13;
    this.colApreBole.Width = 86;
    ((AppearanceOptions) this.colTotaBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotaBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotaBole.Caption = "Total";
    this.colTotaBole.DisplayFormat.FormatString = "C2";
    this.colTotaBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colTotaBole.FieldName = "TotaBole";
    this.colTotaBole.MaxWidth = 150;
    this.colTotaBole.Name = "colTotaBole";
    this.colTotaBole.OptionsColumn.AllowEdit = false;
    this.colTotaBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTotaBole.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTotaBole.OptionsColumn.AllowMove = false;
    this.colTotaBole.OptionsColumn.AllowShowHide = false;
    this.colTotaBole.OptionsColumn.ReadOnly = true;
    this.colTotaBole.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colTotaBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaBole", "{0:C2}")
    });
    this.colTotaBole.Visible = true;
    this.colTotaBole.VisibleIndex = 14;
    this.colCodiUsua.Caption = "Usuario";
    this.colCodiUsua.FieldName = "CodiUsua";
    this.colCodiUsua.MaxWidth = 75;
    this.colCodiUsua.Name = "colCodiUsua";
    this.colCodiUsua.OptionsColumn.AllowEdit = false;
    this.colCodiUsua.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCodiUsua.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCodiUsua.OptionsColumn.AllowMove = false;
    this.colCodiUsua.OptionsColumn.AllowShowHide = false;
    this.colCodiUsua.OptionsColumn.ReadOnly = true;
    this.colCodiUsua.OptionsColumn.TabStop = false;
    this.colCodiUsua.Visible = true;
    this.colCodiUsua.VisibleIndex = 15;
    ((AppearanceOptions) this.colQuitarBoleto.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colQuitarBoleto.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    ((AppearanceObject) this.colQuitarBoleto.AppearanceCell).TextOptions.VAlignment = (VertAlignment) 2;
    this.colQuitarBoleto.ColumnEdit = (RepositoryItem) this.ribQuitarBoleto;
    this.colQuitarBoleto.MaxWidth = 30;
    this.colQuitarBoleto.MinWidth = 30;
    this.colQuitarBoleto.Name = "colQuitarBoleto";
    this.colQuitarBoleto.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colQuitarBoleto.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colQuitarBoleto.OptionsColumn.AllowMove = false;
    this.colQuitarBoleto.OptionsColumn.AllowShowHide = false;
    this.colQuitarBoleto.OptionsColumn.ReadOnly = true;
    this.colQuitarBoleto.OptionsColumn.TabStop = false;
    this.colQuitarBoleto.Visible = true;
    this.colQuitarBoleto.VisibleIndex = 16 /*0x10*/;
    this.colQuitarBoleto.Width = 30;
    ((RepositoryItem) this.ribQuitarBoleto).AutoHeight = false;
    this.ribQuitarBoleto.Buttons.AddRange(new EditorButton[1]
    {
      new EditorButton((ButtonPredefines) 2)
    });
    ((RepositoryItem) this.ribQuitarBoleto).Name = "ribQuitarBoleto";
    this.ribQuitarBoleto.TextEditStyle = (TextEditStyles) 1;
    ((RepositoryItem) this.ribQuitarBoleto).Click += new EventHandler(this.ribQuitarBoleto_Click);
    this.metroPanel4.Controls.Add((Control) this.btnAgregar);
    this.metroPanel4.Controls.Add((Control) this.mtextCodiBarra);
    this.metroPanel4.Controls.Add((Control) this.mtextNumeBole);
    this.metroPanel4.Controls.Add((Control) this.mtextPeriBole);
    this.metroPanel4.Controls.Add((Control) this.metroLabel6);
    this.metroPanel4.Controls.Add((Control) this.metroLabel5);
    this.metroPanel4.Controls.Add((Control) this.metroLabel4);
    this.metroPanel4.Controls.Add((Control) this.metroLabel3);
    this.metroPanel4.Dock = DockStyle.Top;
    this.metroPanel4.Location = new Point(0, 0);
    this.metroPanel4.Name = "metroPanel4";
    this.metroPanel4.Size = new Size(1344, 84);
    this.metroPanel4.TabIndex = 2;
    ((BaseStyleControl) this.btnAgregar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnAgregar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnAgregar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnAgregar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnAgregar.ImageOptions.Image");
    ((Control) this.btnAgregar).Location = new Point(676, 43);
    ((Control) this.btnAgregar).Name = "btnAgregar";
    ((Control) this.btnAgregar).Size = new Size(74, 22);
    ((Control) this.btnAgregar).TabIndex = 11;
    ((Control) this.btnAgregar).TabStop = false;
    ((Control) this.btnAgregar).Text = "Agregar";
    ((Control) this.btnAgregar).Click += new EventHandler(this.btnAgregar_Click);
    this.mtextCodiBarra.Location = new Point(113, 43);
    this.mtextCodiBarra.MaxLength = 26;
    this.mtextCodiBarra.Name = "mtextCodiBarra";
    this.mtextCodiBarra.Size = new Size(174, 23);
    this.mtextCodiBarra.TabIndex = 1;
    this.mtextCodiBarra.Enter += new EventHandler(this.mtextCodiBarra_Enter);
    this.mtextCodiBarra.KeyDown += new KeyEventHandler(this.mtextCodiBarra_KeyDown);
    this.mtextCodiBarra.Leave += new EventHandler(this.mtextCodiBarra_Leave);
    this.mtextNumeBole.AllowEmpty = true;
    this.mtextNumeBole.Location = new Point(505, 42);
    this.mtextNumeBole.MaxLength = 7;
    this.mtextNumeBole.MaxValue = 9999999;
    this.mtextNumeBole.Name = "mtextNumeBole";
    this.mtextNumeBole.Size = new Size(137, 23);
    this.mtextNumeBole.TabIndex = 3;
    this.mtextNumeBole.TextAlign = HorizontalAlignment.Center;
    this.mtextNumeBole.Enter += new EventHandler(this.mtextNumeBole_Enter);
    this.mtextNumeBole.KeyDown += new KeyEventHandler(this.mtextNumeBole_KeyDown);
    this.mtextNumeBole.Leave += new EventHandler(this.mtextNumeBole_Leave);
    this.mtextPeriBole.AllowEmpty = true;
    this.mtextPeriBole.Location = new Point(439, 43);
    this.mtextPeriBole.MaxLength = 4;
    this.mtextPeriBole.MaxValue = 9999;
    this.mtextPeriBole.MinValue = 1980;
    this.mtextPeriBole.Name = "mtextPeriBole";
    this.mtextPeriBole.Size = new Size(54, 23);
    this.mtextPeriBole.TabIndex = 2;
    this.mtextPeriBole.TextAlign = HorizontalAlignment.Center;
    this.mtextPeriBole.KeyDown += new KeyEventHandler(this.mtextPeriBole_KeyDown);
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(347, 46);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(80 /*0x50*/, 19);
    this.metroLabel6.TabIndex = 5;
    this.metroLabel6.Text = "Boleto N°:";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(33, 47);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(80 /*0x50*/, 19);
    this.metroLabel5.TabIndex = 4;
    this.metroLabel5.Text = "Boleto:";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.FontWeight = MetroFontWeight.Bold;
    this.metroLabel4.Location = new Point(335, 18);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(66, 19);
    this.metroLabel4.TabIndex = 3;
    this.metroLabel4.Text = "Manual";
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.FontWeight = MetroFontWeight.Bold;
    this.metroLabel3.Location = new Point(15, 18);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(128 /*0x80*/, 19);
    this.metroLabel3.TabIndex = 2;
    this.metroLabel3.Text = "Codigo de Barra";
    this.metroPanel2.BorderColor = Color.DimGray;
    this.metroPanel2.Controls.Add((Control) this.btnCerrarCaja);
    this.metroPanel2.Controls.Add((Control) this.lblGrupo);
    this.metroPanel2.Controls.Add((Control) this.metroLabel9);
    this.metroPanel2.Controls.Add((Control) this.chkCobroTick);
    this.metroPanel2.Controls.Add((Control) this.metroLabel7);
    this.metroPanel2.Controls.Add((Control) this.labelRecaudador);
    this.metroPanel2.Controls.Add((Control) this.metroLabel2);
    this.metroPanel2.Controls.Add((Control) this.mdateFecha);
    this.metroPanel2.Controls.Add((Control) this.metroLabel1);
    this.metroPanel2.Dock = DockStyle.Top;
    this.metroPanel2.Location = new Point(0, 0);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.Size = new Size(1344, 72);
    this.metroPanel2.TabIndex = 2;
    this.metroPanel2.Tag = (object) "";
    ((BaseStyleControl) this.btnCerrarCaja).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnCerrarCaja).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnCerrarCaja).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnCerrarCaja.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnCerrarCaja.ImageOptions.Image");
    ((Control) this.btnCerrarCaja).Location = new Point(1217, 12);
    ((Control) this.btnCerrarCaja).Name = "btnCerrarCaja";
    ((Control) this.btnCerrarCaja).Size = new Size(115, 47);
    ((Control) this.btnCerrarCaja).TabIndex = 10;
    ((Control) this.btnCerrarCaja).TabStop = false;
    ((Control) this.btnCerrarCaja).Text = "CERRAR CAJA";
    ((Control) this.btnCerrarCaja).Click += new EventHandler(this.btnCerrarCaja_Click);
    this.lblGrupo.AutoSize = false;
    this.lblGrupo.FontWeight = MetroFontWeight.Bold;
    this.lblGrupo.Location = new Point(394, 47);
    this.lblGrupo.Name = "lblGrupo";
    this.lblGrupo.Size = new Size(356, 19);
    this.lblGrupo.TabIndex = 9;
    this.lblGrupo.Text = "N° Grupo";
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(272, 47);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(115, 19);
    this.metroLabel9.TabIndex = 8;
    this.metroLabel9.Text = "Grupo:";
    this.metroLabel9.TextAlign = ContentAlignment.MiddleRight;
    this.chkCobroTick.AutoSize = false;
    this.chkCobroTick.Enabled = false;
    this.chkCobroTick.Location = new Point(890, 26);
    this.chkCobroTick.Name = "chkCobroTick";
    this.chkCobroTick.Size = new Size(69, 19);
    this.chkCobroTick.TabIndex = 7;
    this.chkCobroTick.Text = "Inactivo";
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(750, 26);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(145, 19);
    this.metroLabel7.TabIndex = 6;
    this.metroLabel7.Text = "Cobro con Tickeadora:";
    this.labelRecaudador.AutoSize = false;
    this.labelRecaudador.FontWeight = MetroFontWeight.Bold;
    this.labelRecaudador.Location = new Point(394, 25);
    this.labelRecaudador.Name = "labelRecaudador";
    this.labelRecaudador.Size = new Size(356, 19);
    this.labelRecaudador.TabIndex = 5;
    this.labelRecaudador.Text = "Detalle Ente Recaudador";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(272, 25);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(115, 19);
    this.metroLabel2.TabIndex = 4;
    this.metroLabel2.Text = "Ente Recaudador:";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleRight;
    this.mdateFecha.Location = new Point(142, 25);
    this.mdateFecha.Name = "mdateFecha";
    this.mdateFecha.Size = new Size(102, 20);
    this.mdateFecha.TabIndex = 3;
    this.mdateFecha.TabStop = false;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(23, 25);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(107, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Fecha de Envío:";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.AcceptButton = (IButtonControl) this.btnAgregar;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1344, 591);
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmIngresoBoletoCajaMP);
    this.Text = "Ingreso Boleto Caja";
    this.Shown += new EventHandler(this.frmIngresoBoletoCajaMP_Shown);
    this.metroPanel1.ResumeLayout(false);
    this.metroPanel3.ResumeLayout(false);
    this.metroPanel5.ResumeLayout(false);
    ((ISupportInitialize) this.gridTipas).EndInit();
    ((ISupportInitialize) this.viewTipas).EndInit();
    this.metroPanel6.ResumeLayout(false);
    this.metroPanel6.PerformLayout();
    ((ISupportInitialize) this.gridFopas).EndInit();
    ((ISupportInitialize) this.viewFopas).EndInit();
    ((ISupportInitialize) this.TextEditCheque).EndInit();
    ((ISupportInitialize) this.gridBoletos).EndInit();
    ((ISupportInitialize) this.viewBoletos).EndInit();
    ((ISupportInitialize) this.ribQuitarBoleto).EndInit();
    this.metroPanel4.ResumeLayout(false);
    this.metroPanel2.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
