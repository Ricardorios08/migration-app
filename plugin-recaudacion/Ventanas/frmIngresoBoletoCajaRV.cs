// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmIngresoBoletoCajaRV
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
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmIngresoBoletoCajaRV : BaseForm
{
  private ExpBoletoCajaRV experto;
  private BindingSource bsBoletosCaja;
  private BindingSource bsFormasPagoDisp;
  private BindingSource bsFormasPagoUs;
  private List<BoletoCaja> boletosAgregados;
  private List<FormaPago> formasPagoDisponibles;
  private List<FormaPago> formasPagoUsadas;
  private FormaPago TipaSeleccionado;
  private FormaPago FopaSeleccionada;
  private bool pagoEspecial;
  private DateTime hoy;
  private List<EnteReca> entes;
  private int CodiEnre;
  private int IndexEnre;
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
  private MetroButton btnAgregar;
  private MetroIntTextBox mtextPeriBole;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel3;
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
  private MetroButton btnConfirmar;
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
  private MetroLabel metroLabel2;
  private MetroComboBox cboEnteReca;

  public frmIngresoBoletoCajaRV()
  {
    this.InitializeComponent();
    this.Configuraciones();
    this.pagoEspecial = false;
    this.btnAgregar.Enabled = false;
    this.mdateFecha.MaxDate = DateTime.Today;
    this.chkCobroTick.Checked = PARAMS.Parameters.GetString("TickeadoraActiva") == "True";
    this.chkCobroTick.Text = this.chkCobroTick.Checked ? "Activo" : "Inactivo";
    this.hoy = Misc.Now(false);
    this.bsBoletosCaja = new BindingSource();
    this.bsFormasPagoDisp = new BindingSource();
    this.bsFormasPagoUs = new BindingSource();
    this.boletosAgregados = new List<BoletoCaja>();
    this.formasPagoDisponibles = new List<FormaPago>();
    this.formasPagoUsadas = new List<FormaPago>();
    this.bsBoletosCaja.DataSource = (object) this.boletosAgregados;
    this.gridBoletos.DataSource = (object) this.bsBoletosCaja;
    this.bsFormasPagoUs.DataSource = (object) this.formasPagoUsadas;
    this.gridFopas.DataSource = (object) this.bsFormasPagoUs;
    try
    {
      this.experto = new ExpBoletoCajaRV();
      this.btnAgregar.Enabled = true;
      this.CodiEnre = this.experto.ObtenerCodiEnreUsua();
      this.LlenarCbo();
      this.limpiarControles();
      this.FocusControlIngresoPago();
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
      this.Close();
    }
  }

  private void AgregarBoleto(bool codiBar = false)
  {
    if (!this.btnAgregar.Enabled)
      return;
    try
    {
      this.experto.grupoActualizado(this.mdateFecha.Value);
    }
    catch (Exception ex)
    {
      this.FocusControlIngresoPago();
      new frmMensaje((Form) this).mostrarError(ex.Message);
      return;
    }
    if (codiBar)
    {
      if (this.mtextCodiBarra.Text.Length == 42)
      {
        if (this.mtextCodiBarra.Text.Substring(0, 4) == "5555" && this.mtextCodiBarra.Text.Substring(14, 2) == "06")
        {
          int num1 = this.experto.BuscarCodiInte();
          string CodiConc = string.Empty;
          if (num1 != 0)
            CodiConc = this.experto.BuscarCodiConcInte(num1);
          int num2 = int.Parse(this.mtextCodiBarra.Text.Substring(16 /*0x10*/, 2));
          int num3 = num2 <= 0 || num2 > 50 ? 1900 + num2 : 2000 + num2;
          if (num3 != this.hoy.Year)
          {
            new frmMensaje((Form) this).mostrarError($"El periodo actual ({this.hoy.Year}) y el del boleto ({num3}) son distintos.");
            this.FocusControlIngresoPago();
            return;
          }
          string empty = string.Empty;
          string mensaje1 = this.experto.ComprobarCodiDeva(this.mtextCodiBarra.Text.Substring(4, 8));
          if (!string.IsNullOrEmpty(mensaje1))
          {
            new frmMensaje((Form) this).mostrarError(mensaje1);
            this.FocusControlIngresoPago();
            return;
          }
          long CucuPers = this.experto.BuscarCPDV(this.mtextCodiBarra.Text.Substring(4, 8));
          string mensaje2 = this.experto.ComprobarCucuPers(CucuPers);
          if (!string.IsNullOrEmpty(mensaje2))
          {
            new frmMensaje((Form) this).mostrarError(mensaje2);
            this.FocusControlIngresoPago();
            return;
          }
          int num4 = int.Parse(this.mtextCodiBarra.Text.Substring(20, 2));
          int num5 = num4 < 15 ? num3 : (num4 <= 0 || num4 > 50 ? 1900 + num4 : 2000 + num4);
          if (int.Parse(this.mtextCodiBarra.Text.Substring(20, 2)) >= 15)
          {
            string mensaje3 = this.experto.PagadoInternetRivadavia(CucuPers, this.mtextCodiBarra.Text.Substring(4, 8), num5, int.Parse(this.mtextCodiBarra.Text.Substring(22, 2)), int.Parse(this.mtextCodiBarra.Text.Substring(24, 2)), num1);
            if (!string.IsNullOrEmpty(mensaje3))
            {
              new frmMensaje((Form) this).mostrarError(mensaje3);
              this.FocusControlIngresoPago();
              return;
            }
          }
          int NumeBole = this.experto.NuevoNumeBole(num3);
          string FeveBole = $"{(int.Parse(this.mtextCodiBarra.Text.Substring(34, 2)) <= 0 || int.Parse(this.mtextCodiBarra.Text.Substring(34, 2)) > 50 ? "19" : "20")}{this.mtextCodiBarra.Text.Substring(34, 2)}-{this.mtextCodiBarra.Text.Substring(36, 2)}-{this.mtextCodiBarra.Text.Substring(38, 2)}";
          string DetaBoleInternet = string.Empty;
          if (int.Parse(this.mtextCodiBarra.Text.Substring(20, 2)) >= 15)
            DetaBoleInternet = "SERVICIO DE CONECTIVIDAD";
          else if (int.Parse(this.mtextCodiBarra.Text.Substring(20, 2)) == 0)
          {
            switch (this.mtextCodiBarra.Text.Substring(22, 4))
            {
              case "0121":
                DetaBoleInternet = "RECONEXIÓN DE INTERNET";
                break;
              case "0122":
                DetaBoleInternet = "SERVICIO A DOMICILIO";
                break;
              case "0123":
                DetaBoleInternet = "INSTALACION DE EQUIPOS EN COMODATO";
                break;
            }
          }
          string mensaje4 = this.experto.CrearNuevoBoleto(num3, NumeBole, CucuPers, FeveBole, DetaBoleInternet, num5, CodiConc, num1, this.mtextCodiBarra.Text);
          if (!string.IsNullOrEmpty(mensaje4))
          {
            new frmMensaje((Form) this).mostrarError(mensaje4);
            return;
          }
          this.mtextPeriBole.IntText = num3;
          this.mtextNumeBole.IntText = NumeBole;
        }
        else
        {
          new frmMensaje((Form) this).mostrarError("Tipo de código de barra incorrecto.");
          return;
        }
      }
      else if (this.mtextCodiBarra.Text.Length == 8)
      {
        string CodiBarra = this.experto.BuscarCodiBoleCone(this.mtextCodiBarra.Text);
        if (string.IsNullOrEmpty(CodiBarra))
        {
          new frmMensaje((Form) this).mostrarError("Código de 8 dígitos incorrecto.");
          return;
        }
        if (CodiBarra.Substring(0, 4) == "5555" && CodiBarra.Substring(14, 2) == "06")
        {
          int num6 = this.experto.BuscarCodiInte();
          string CodiConc = string.Empty;
          if (num6 != 0)
            CodiConc = this.experto.BuscarCodiConcInte(num6);
          int num7 = int.Parse(CodiBarra.Substring(16 /*0x10*/, 2));
          int num8 = num7 <= 0 || num7 > 50 ? 1900 + num7 : 2000 + num7;
          if (num8 != this.hoy.Year)
          {
            new frmMensaje((Form) this).mostrarError($"El periodo actual ({this.hoy.Year}) y el del boleto ({num8}) son distintos.");
            this.FocusControlIngresoPago();
            return;
          }
          string empty = string.Empty;
          string mensaje5 = this.experto.ComprobarCodiDeva(CodiBarra.Substring(4, 8));
          if (!string.IsNullOrEmpty(mensaje5))
          {
            new frmMensaje((Form) this).mostrarError(mensaje5);
            this.FocusControlIngresoPago();
            return;
          }
          long CucuPers = this.experto.BuscarCPDV(CodiBarra.Substring(4, 8));
          string mensaje6 = this.experto.ComprobarCucuPers(CucuPers);
          if (!string.IsNullOrEmpty(mensaje6))
          {
            new frmMensaje((Form) this).mostrarError(mensaje6);
            this.FocusControlIngresoPago();
            return;
          }
          if (int.Parse(CodiBarra.Substring(20, 2)) >= 15)
          {
            string mensaje7 = this.experto.PagadoInternetRivadavia(CucuPers, CodiBarra.Substring(4, 8), num8, int.Parse(CodiBarra.Substring(22, 2)), int.Parse(CodiBarra.Substring(24, 2)), num6);
            if (!string.IsNullOrEmpty(mensaje7))
            {
              new frmMensaje((Form) this).mostrarError(mensaje7);
              this.FocusControlIngresoPago();
              return;
            }
          }
          int NumeBole = this.experto.NuevoNumeBole(num8);
          string FeveBole = $"{(int.Parse(CodiBarra.Substring(34, 2)) <= 0 || int.Parse(CodiBarra.Substring(34, 2)) > 50 ? "19" : "20")}{CodiBarra.Substring(34, 2)}-{CodiBarra.Substring(36, 2)}-{CodiBarra.Substring(38, 2)}";
          string DetaBoleInternet = string.Empty;
          if (int.Parse(CodiBarra.Substring(20, 2)) >= 15)
            DetaBoleInternet = "SERVICIO DE CONECTIVIDAD";
          else if (int.Parse(CodiBarra.Substring(20, 2)) == 0)
          {
            switch (CodiBarra.Substring(22, 4))
            {
              case "0121":
                DetaBoleInternet = "RECONEXIÓN DE INTERNET";
                break;
              case "0122":
                DetaBoleInternet = "SERVICIO A DOMICILIO";
                break;
              case "0123":
                DetaBoleInternet = "INSTALACION DE EQUIPOS EN COMODATO";
                break;
            }
          }
          string mensaje8 = this.experto.CrearNuevoBoleto(num8, NumeBole, CucuPers, FeveBole, DetaBoleInternet, num8, CodiConc, num6, CodiBarra);
          if (!string.IsNullOrEmpty(mensaje8))
          {
            new frmMensaje((Form) this).mostrarError(mensaje8);
            return;
          }
          this.mtextPeriBole.IntText = num8;
          this.mtextNumeBole.IntText = NumeBole;
        }
        else if (CodiBarra.Substring(0, 4) == "5555" && CodiBarra.Substring(15, 1) == "8")
        {
          int CodiCort = int.Parse(this.mtextCodiBarra.Text);
          int CodiInte = int.Parse(CodiBarra.Substring(20, 6));
          string empty = string.Empty;
          string mensaje9 = this.experto.ComprobarCodiSede(CodiInte);
          if (!string.IsNullOrEmpty(mensaje9))
          {
            new frmMensaje((Form) this).mostrarError(mensaje9);
            this.FocusControlIngresoPago();
            return;
          }
          string CodiConc = string.Empty;
          if (CodiInte != 0)
            CodiConc = this.experto.BuscarCodiConcInte(CodiInte);
          int num9 = int.Parse(CodiBarra.Substring(16 /*0x10*/, 2));
          int num10 = num9 <= 0 || num9 > 50 ? 1900 + num9 : 2000 + num9;
          long CucuPers = long.Parse(CodiBarra.Substring(4, 11));
          string mensaje10 = this.experto.ComprobarCucuPers(CucuPers);
          if (!string.IsNullOrEmpty(mensaje10))
          {
            new frmMensaje((Form) this).mostrarError(mensaje10);
            this.FocusControlIngresoPago();
            return;
          }
          string mensaje11 = this.experto.BoletoPagadoCodigoCortoRivadavia(CodiCort);
          if (!string.IsNullOrEmpty(mensaje11))
          {
            new frmMensaje((Form) this).mostrarError(mensaje11);
            this.FocusControlIngresoPago();
            return;
          }
          int NumeBole = this.experto.NuevoNumeBole(num10);
          string FeveBole = $"{(int.Parse(CodiBarra.Substring(34, 2)) <= 0 || int.Parse(CodiBarra.Substring(34, 2)) > 50 ? "19" : "20")}{CodiBarra.Substring(34, 2)}-{CodiBarra.Substring(36, 2)}-{CodiBarra.Substring(38, 2)}";
          int num11 = int.Parse(CodiBarra.Substring(34, 2));
          if (this.hoy.Date > new DateTime(num11 <= 0 || num11 > 50 ? 1900 + num11 : 2000 + num11, int.Parse(CodiBarra.Substring(36, 2)), int.Parse(CodiBarra.Substring(38, 2))).Date)
          {
            new frmMensaje((Form) this).mostrarError("El boleto se encuentra vencido, no se puede cobrar.");
            this.FocusControlIngresoPago();
            return;
          }
          string DetaBoleInternet = this.experto.BuscarDetaSede(CodiInte);
          string mensaje12 = this.experto.CrearNuevoBoleto(num10, NumeBole, CucuPers, FeveBole, DetaBoleInternet, num10, CodiConc, CodiInte, CodiBarra, true, CodiCort);
          if (!string.IsNullOrEmpty(mensaje12))
          {
            new frmMensaje((Form) this).mostrarError(mensaje12);
            return;
          }
          this.mtextPeriBole.IntText = num10;
          this.mtextNumeBole.IntText = NumeBole;
        }
        else
        {
          new frmMensaje((Form) this).mostrarError("TIPO de código de 8 dígitos incorrecto.");
          return;
        }
      }
      else if (this.mtextCodiBarra.Text.Length == 12)
      {
        this.mtextPeriBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(8, 4));
        this.mtextNumeBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(0, 8));
      }
      else if (this.mtextCodiBarra.Text.Length == 18)
      {
        this.mtextPeriBole.IntText = 2000 + int.Parse(this.mtextCodiBarra.Text.Substring(0, 2));
        this.mtextNumeBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(4, 6));
      }
      else if (this.mtextCodiBarra.Text.Length == 43)
      {
        this.mtextPeriBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(4, 4));
        this.mtextNumeBole.IntText = int.Parse(this.mtextCodiBarra.Text.Substring(8, 8));
      }
      else
      {
        new frmMensaje((Form) this).mostrarError("Codigo de Barras Incorrecto.");
        return;
      }
    }
    if (this.boletosAgregados.Exists((Predicate<BoletoCaja>) (x => x.NumeBole == this.mtextNumeBole.IntText && x.PeriBole == this.mtextPeriBole.IntText)))
    {
      new frmMensaje((Form) this).mostrarError($"El Boleto {this.mtextPeriBole.IntText}-{this.mtextNumeBole.IntText} ya se encuentra en la lista de boletos a pagar.");
      this.mtextNumeBole.Focus();
    }
    else
    {
      try
      {
        this.experto.verificarBoleto(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
        this.experto.verificarPago(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
        this.experto.pagado(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
        BoletoCaja boletoCaja = this.experto.getBoletoCaja(this.mtextPeriBole.IntText, this.mtextNumeBole.IntText);
        if (boletoCaja != null && boletoCaja.PeriBole > 0 && boletoCaja.NumeBole > 0)
        {
          this.boletosAgregados.Add(boletoCaja);
          this.calculoPago(true);
          this.CalculoVuelto();
          this.refrescarGridView();
          this.mtextNumeBole.Clear();
          this.mtextPeriBole.IntText = DateTime.Today.Year;
          this.mtextCodiBarra.Clear();
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

  private void calculoPago(bool boletoAgregado = false, Decimal impFP = 0M)
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
      this.lblFaltaPago.Text = $"${num3}";
    }
    else if (num3 < 0M)
    {
      this.lblFalta.Visible = this.lblFaltaPago.Visible = true;
      this.lblFalta.Text = "Sobra";
      this.lblFaltaPago.Text = $"${Math.Abs(num3)}";
    }
    else
      this.lblFalta.Visible = this.lblFaltaPago.Visible = false;
    this.btnConfirmar.Enabled = this.btnConfirmar.Visible = num2 - num1 == 0M && num1 > 0M || this.pagoEspecial;
    this.mdtTotal.DecimalText = num1;
  }

  private void CalculoVuelto()
  {
    if (!Decimal.TryParse(this.mdtPaga.Text, out Decimal _))
      this.mdtPaga.Text = "0.00";
    Decimal num = Decimal.Round(this.mdtTotal.DecimalText, 2) - Decimal.Round(this.mdtPaga.DecimalText, 2);
    if (num >= 0M)
      this.mdtVuelto.Text = "0.00";
    else
      this.mdtVuelto.DecimalText = Math.Abs(num);
  }

  private void FocusControlIngresoPago() => this.mtextCodiBarra.Focus();

  private void realizarPago()
  {
    try
    {
      if (!this.pagoEspecial)
        this.experto.ingresarPago(this.mdateFecha.Value, this.boletosAgregados, this.formasPagoUsadas.Where<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa > 0M)).ToList<FormaPago>());
      else
        this.experto.ingresarPago(this.mdateFecha.Value, this.boletosAgregados, this.formasPagoUsadas.Where<FormaPago>((Func<FormaPago, bool>) (x => x.CodiTipa == 1)).ToList<FormaPago>());
      this.limpiarControles();
      this.FocusControlIngresoPago();
      new frmMensaje((Form) this).mostrarConfirmación("Pago ingresado correctamente.");
    }
    catch (Exception ex)
    {
      this.FocusControlIngresoPago();
      new frmMensaje((Form) this).mostrarError(ex.Message);
    }
  }

  private void calcularFormasPago()
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
    this.calculoPago();
    this.refrescarGridView();
  }

  private void limpiarControles()
  {
    this.btnConfirmar.Enabled = this.btnConfirmar.Visible = false;
    this.lblFalta.Visible = false;
    this.lblFaltaPago.Visible = false;
    this.mtextPeriBole.IntText = DateTime.Now.Year;
    this.mdtTotal.DecimalText = 0.00M;
    this.mdtPaga.DecimalText = 0.00M;
    this.mdtVuelto.DecimalText = 0.00M;
    this.mdateFecha.Value = DateTime.Today;
    this.mtextNumeBole.IntText = 0;
    this.cboEnteReca.SelectedIndex = this.IndexEnre;
    this.boletosAgregados.Clear();
    this.formasPagoUsadas.Clear();
    this.formasPagoDisponibles.Clear();
    this.formasPagoDisponibles = this.experto.getFormasPago();
    FormaPago formaPago = this.formasPagoDisponibles.First<FormaPago>();
    formaPago.ImpoFopa = 0.00M;
    this.formasPagoUsadas.Add(formaPago);
    this.formasPagoDisponibles.Remove(formaPago);
    this.bsFormasPagoDisp.DataSource = (object) this.formasPagoDisponibles;
    this.gridTipas.DataSource = (object) this.bsFormasPagoDisp;
    this.refrescarGridView();
  }

  private void Configuraciones() => this.mtextCodiBarra.MaxLength = 43;

  private void LlenarCbo()
  {
    this.cboEnteReca.DisplayMember = "Text";
    this.cboEnteReca.ValueMember = "Value";
    this.entes = this.experto.ObtenerEnteRecas();
    foreach (EnteReca ente in this.entes)
      this.cboEnteReca.Items.Add((object) new ComboBoxItem(ente.DetaEnre, (object) ente.CodiEnre.ToString()));
    this.IndexEnre = this.entes.IndexOf(this.entes.Find((Predicate<EnteReca>) (x => x.CodiEnre == this.CodiEnre)));
    this.cboEnteReca.SelectedIndex = this.IndexEnre;
  }

  private void mtextCodiBarra_Leave(object sender, EventArgs e)
  {
    this.mtextCodiBarra.Text = string.IsNullOrEmpty(this.mtextCodiBarra.Text) ? "0" : this.mtextCodiBarra.Text;
  }

  private void mtextCodiBarra_KeyDown(object sender, KeyEventArgs e)
  {
    if (e.KeyCode == Keys.Back)
      e.SuppressKeyPress = false;
    else if (e.KeyValue >= 48 /*0x30*/ && e.KeyValue <= 57 || e.KeyValue >= 96 /*0x60*/ && e.KeyValue <= 105)
      e.SuppressKeyPress = false;
    else
      e.SuppressKeyPress = true;
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
    if (!(this.mdtPaga.DecimalText == 0M))
      return;
    this.mdtPaga.Text = string.Empty;
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
    int length = this.mtextCodiBarra.Text.Length;
    int num;
    switch (length)
    {
      case 8:
      case 12:
      case 18:
      case 42:
        num = 1;
        break;
      default:
        num = length == 43 ? 1 : 0;
        break;
    }
    if (num != 0)
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

  private void gridView2_RowClick(object sender, RowClickEventArgs e)
  {
    this.FopaSeleccionada = (FormaPago) ((BaseView) this.viewFopas).GetRow(((ColumnView) this.viewFopas).GetSelectedRows()[0]);
    if (this.FopaSeleccionada == null || this.formasPagoUsadas.Count <= 1)
      return;
    Decimal impoFopa = this.FopaSeleccionada.ImpoFopa;
    this.FopaSeleccionada.ImpoFopa = 0.00M;
    this.FopaSeleccionada.NuchFopa = 0L;
    this.formasPagoDisponibles.Add(this.FopaSeleccionada);
    this.formasPagoUsadas.Remove(this.FopaSeleccionada);
    this.calculoPago(impFP: impoFopa);
    this.refrescarGridView();
    this.FopaSeleccionada = (FormaPago) null;
  }

  private void gridView3_RowClick(object sender, RowClickEventArgs e)
  {
    this.TipaSeleccionado = (FormaPago) ((BaseView) this.viewTipas).GetRow(((ColumnView) this.viewTipas).GetSelectedRows()[0]);
    if (this.TipaSeleccionado == null || this.formasPagoDisponibles.Count <= 0)
      return;
    Decimal num = this.boletosAgregados.Sum<BoletoCaja>((Func<BoletoCaja, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa));
    this.TipaSeleccionado.ImpoFopa = num > 0M ? num : 0.00M;
    this.formasPagoUsadas.Add(this.TipaSeleccionado);
    this.formasPagoDisponibles.Remove(this.TipaSeleccionado);
    this.calculoPago();
    this.refrescarGridView();
    this.TipaSeleccionado = (FormaPago) null;
  }

  private void gridView2_CellValueChanged(object sender, CellValueChangedEventArgs e)
  {
    FormaPago row = (FormaPago) ((BaseView) this.viewFopas).GetRow(e.RowHandle);
    if (row.CodiTipa != 2)
      this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).NuchFopa = 0L;
    else
      this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).NuchFopa = Math.Abs(this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).NuchFopa);
    this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).ImpoFopa = Math.Abs(Decimal.Round(this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == row.CodiTipa)).ImpoFopa, 2));
    this.calcularFormasPago();
  }

  private void refrescarGridView()
  {
    ((BaseView) this.viewBoletos).RefreshData();
    ((BaseView) this.viewFopas).RefreshData();
    ((BaseView) this.viewTipas).RefreshData();
  }

  private void btnConfirmar_Click(object sender, EventArgs e)
  {
    FormaPago formaPago = this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == 2));
    if (formaPago != null && formaPago.NuchFopa == 0L)
      new frmMensaje((Form) this).mostrarInformación("El numero de cheque es obligatorio");
    else if (this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa)) - this.boletosAgregados.Sum<BoletoCaja>((Func<BoletoCaja, Decimal>) (x => x.TotaBole)) == 0M)
      this.realizarPago();
    else
      new frmMensaje((Form) this).mostrarInformación("El importe de las Formas de Pago debe coincidir con el del total de los boletos.");
  }

  private void gridView2_ValidatingEditor(object sender, BaseContainerValidateEditorEventArgs e)
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
      this.calculoPago(true);
    }
    this.mtextPeriBole.IntText = DateTime.Today.Year;
    this.mtextNumeBole.IntText = 0;
    this.mtextNumeBole.Focus();
    this.refrescarGridView();
    this.CalculoVuelto();
  }

  private void cboEnteReca_SelectedValueChanged(object sender, EventArgs e)
  {
    if (this.entes == null || this.entes.Count <= 0)
      return;
    this.experto.uo.CodiEnre = int.Parse(((ComboBoxItem) this.cboEnteReca.SelectedItem).Value.ToString());
    this.experto.uo.NumeAcpa = this.entes.Find((Predicate<EnteReca>) (x => x.CodiEnre == this.experto.uo.CodiEnre)).NumeAcpa;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
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
    this.btnConfirmar = new MetroButton();
    this.lblTotal = new MetroLabel();
    this.gridFopas = new GridControl();
    this.viewFopas = new GridView();
    this.colCodiTipaFP = new GridColumn();
    this.colDetaTipaFP = new GridColumn();
    this.colNuchFopa = new GridColumn();
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
    this.mtextCodiBarra = new MetroTextBox();
    this.mtextNumeBole = new MetroIntTextBox();
    this.btnAgregar = new MetroButton();
    this.mtextPeriBole = new MetroIntTextBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.metroPanel2 = new MetroPanel();
    this.cboEnteReca = new MetroComboBox();
    this.chkCobroTick = new MetroCheckBox();
    this.metroLabel7 = new MetroLabel();
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
    this.metroPanel1.Size = new Size(1008, 681);
    this.metroPanel1.TabIndex = 0;
    this.metroPanel3.Controls.Add((Control) this.metroPanel5);
    this.metroPanel3.Controls.Add((Control) this.gridBoletos);
    this.metroPanel3.Controls.Add((Control) this.metroPanel4);
    this.metroPanel3.Dock = DockStyle.Fill;
    this.metroPanel3.Location = new Point(0, 72);
    this.metroPanel3.Name = "metroPanel3";
    this.metroPanel3.Size = new Size(1008, 609);
    this.metroPanel3.TabIndex = 3;
    this.metroPanel5.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.metroPanel5.Controls.Add((Control) this.gridTipas);
    this.metroPanel5.Controls.Add((Control) this.metroPanel6);
    this.metroPanel5.Controls.Add((Control) this.gridFopas);
    this.metroPanel5.Location = new Point(0, 444);
    this.metroPanel5.Name = "metroPanel5";
    this.metroPanel5.Size = new Size(1008, 165);
    this.metroPanel5.TabIndex = 4;
    ((Control) this.gridTipas).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((Control) this.gridTipas).Location = new Point(3, 10);
    this.gridTipas.MainView = (BaseView) this.viewTipas;
    ((Control) this.gridTipas).Name = "gridTipas";
    ((Control) this.gridTipas).Size = new Size(170, 126);
    ((Control) this.gridTipas).TabIndex = 4;
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
    this.metroPanel6.Controls.Add((Control) this.btnConfirmar);
    this.metroPanel6.Controls.Add((Control) this.lblTotal);
    this.metroPanel6.Location = new Point(696, 4);
    this.metroPanel6.Name = "metroPanel6";
    this.metroPanel6.Size = new Size(309, 132);
    this.metroPanel6.TabIndex = 3;
    this.lblFaltaPago.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.lblFaltaPago.AutoSize = true;
    this.lblFaltaPago.Font = new Font("Verdana", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.lblFaltaPago.ForeColor = Color.Red;
    this.lblFaltaPago.Location = new Point(224 /*0xE0*/, 56);
    this.lblFaltaPago.Name = "lblFaltaPago";
    this.lblFaltaPago.Size = new Size(15, 16 /*0x10*/);
    this.lblFaltaPago.TabIndex = 18;
    this.lblFaltaPago.Text = "$";
    this.lblFaltaPago.TextAlign = ContentAlignment.MiddleLeft;
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
    this.mdtVuelto.TextAlign = HorizontalAlignment.Right;
    this.mdtPaga.DisplayIcon = false;
    this.mdtPaga.Location = new Point(66, 56);
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
    this.btnConfirmar.Location = new Point(207, 47);
    this.btnConfirmar.Name = "btnConfirmar";
    this.btnConfirmar.Size = new Size(77, 32 /*0x20*/);
    this.btnConfirmar.TabIndex = 6;
    this.btnConfirmar.Text = "CONFIRMAR";
    this.btnConfirmar.Click += new EventHandler(this.btnConfirmar_Click);
    this.lblTotal.AutoSize = false;
    this.lblTotal.Location = new Point(6, 25);
    this.lblTotal.Name = "lblTotal";
    this.lblTotal.Size = new Size(48 /*0x30*/, 19);
    this.lblTotal.TabIndex = 7;
    this.lblTotal.Text = "Total:";
    ((Control) this.gridFopas).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((Control) this.gridFopas).Location = new Point((int) byte.MaxValue, 10);
    this.gridFopas.MainView = (BaseView) this.viewFopas;
    ((Control) this.gridFopas).Name = "gridFopas";
    ((Control) this.gridFopas).Size = new Size(387, 126);
    ((Control) this.gridFopas).TabIndex = 2;
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
    ((Control) this.gridBoletos).Dock = DockStyle.Top;
    ((Control) this.gridBoletos).Location = new Point(0, 84);
    this.gridBoletos.MainView = (BaseView) this.viewBoletos;
    ((Control) this.gridBoletos).Name = "gridBoletos";
    ((EditorContainer) this.gridBoletos).RepositoryItems.AddRange(new RepositoryItem[1]
    {
      (RepositoryItem) this.ribQuitarBoleto
    });
    ((Control) this.gridBoletos).Size = new Size(1008, 176 /*0xB0*/);
    ((Control) this.gridBoletos).TabIndex = 3;
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
    this.colPeriBole.MaxWidth = 75;
    this.colPeriBole.Name = "colPeriBole";
    this.colPeriBole.OptionsColumn.AllowEdit = false;
    this.colPeriBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeriBole.OptionsColumn.AllowMove = false;
    this.colPeriBole.OptionsColumn.ReadOnly = true;
    this.colPeriBole.Visible = true;
    this.colPeriBole.VisibleIndex = 0;
    this.colPeriBole.Width = 54;
    ((AppearanceOptions) this.colNumeBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNumeBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNumeBole.Caption = "Boleto";
    this.colNumeBole.FieldName = "NumeBole";
    this.colNumeBole.MaxWidth = 100;
    this.colNumeBole.Name = "colNumeBole";
    this.colNumeBole.OptionsColumn.AllowEdit = false;
    this.colNumeBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNumeBole.OptionsColumn.AllowMove = false;
    this.colNumeBole.OptionsColumn.ReadOnly = true;
    this.colNumeBole.Visible = true;
    this.colNumeBole.VisibleIndex = 1;
    this.colNumeBole.Width = 54;
    ((AppearanceOptions) this.colCodiOfic.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCodiOfic.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCodiOfic.Caption = "Ofic.";
    this.colCodiOfic.FieldName = "CodiOfic";
    this.colCodiOfic.MaxWidth = 50;
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
    this.colCuenCtct.MaxWidth = 100;
    this.colCuenCtct.Name = "colCuenCtct";
    this.colCuenCtct.OptionsColumn.AllowEdit = false;
    this.colCuenCtct.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuenCtct.OptionsColumn.AllowMove = false;
    this.colCuenCtct.OptionsColumn.ReadOnly = true;
    this.colCuenCtct.Visible = true;
    this.colCuenCtct.VisibleIndex = 3;
    this.colCuenCtct.Width = 54;
    ((AppearanceOptions) this.colCucuPers.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCucuPers.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCucuPers.Caption = "CUIL";
    this.colCucuPers.FieldName = "CucuPers";
    this.colCucuPers.Name = "colCucuPers";
    this.colCucuPers.OptionsColumn.AllowEdit = false;
    this.colCucuPers.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCucuPers.OptionsColumn.AllowMove = false;
    this.colCucuPers.OptionsColumn.ReadOnly = true;
    this.colCucuPers.Visible = true;
    this.colCucuPers.VisibleIndex = 5;
    this.colCucuPers.Width = 58;
    this.colDetaPers.Caption = "Apellido y Nombre";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.MaxWidth = 200;
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.OptionsColumn.AllowEdit = false;
    this.colDetaPers.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetaPers.OptionsColumn.AllowMove = false;
    this.colDetaPers.OptionsColumn.ReadOnly = true;
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 4;
    this.colDetaPers.Width = 54;
    ((AppearanceOptions) this.colTipoBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTipoBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colTipoBole.Caption = "Tipo";
    this.colTipoBole.FieldName = "TipoBole";
    this.colTipoBole.MaxWidth = 75;
    this.colTipoBole.Name = "colTipoBole";
    this.colTipoBole.OptionsColumn.AllowEdit = false;
    this.colTipoBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTipoBole.OptionsColumn.AllowMove = false;
    this.colTipoBole.OptionsColumn.ReadOnly = true;
    this.colTipoBole.Visible = true;
    this.colTipoBole.VisibleIndex = 6;
    this.colTipoBole.Width = 51;
    ((AppearanceOptions) this.colCapiBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCapiBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCapiBole.Caption = "Capital";
    this.colCapiBole.DisplayFormat.FormatString = "C2";
    this.colCapiBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colCapiBole.FieldName = "CapiBole";
    this.colCapiBole.MaxWidth = 75;
    this.colCapiBole.Name = "colCapiBole";
    this.colCapiBole.OptionsColumn.AllowEdit = false;
    this.colCapiBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCapiBole.OptionsColumn.AllowMove = false;
    this.colCapiBole.OptionsColumn.ReadOnly = true;
    this.colCapiBole.Visible = true;
    this.colCapiBole.VisibleIndex = 7;
    this.colCapiBole.Width = 51;
    ((AppearanceOptions) this.colDecaBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDecaBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDecaBole.Caption = "Des. Ca.";
    this.colDecaBole.DisplayFormat.FormatString = "C2";
    this.colDecaBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colDecaBole.FieldName = "DecaBole";
    this.colDecaBole.MaxWidth = 75;
    this.colDecaBole.Name = "colDecaBole";
    this.colDecaBole.OptionsColumn.AllowEdit = false;
    this.colDecaBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDecaBole.OptionsColumn.AllowMove = false;
    this.colDecaBole.OptionsColumn.ReadOnly = true;
    this.colDecaBole.Visible = true;
    this.colDecaBole.VisibleIndex = 8;
    this.colDecaBole.Width = 51;
    ((AppearanceOptions) this.colRecaBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colRecaBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colRecaBole.Caption = "Recargo";
    this.colRecaBole.DisplayFormat.FormatString = "C2";
    this.colRecaBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colRecaBole.FieldName = "RecaBole";
    this.colRecaBole.MaxWidth = 75;
    this.colRecaBole.Name = "colRecaBole";
    this.colRecaBole.OptionsColumn.AllowEdit = false;
    this.colRecaBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colRecaBole.OptionsColumn.AllowMove = false;
    this.colRecaBole.OptionsColumn.ReadOnly = true;
    this.colRecaBole.Visible = true;
    this.colRecaBole.VisibleIndex = 9;
    this.colRecaBole.Width = 51;
    ((AppearanceOptions) this.colDereBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDereBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDereBole.Caption = "Des. Re.";
    this.colDereBole.DisplayFormat.FormatString = "C2";
    this.colDereBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colDereBole.FieldName = "DereBole";
    this.colDereBole.MaxWidth = 75;
    this.colDereBole.Name = "colDereBole";
    this.colDereBole.OptionsColumn.AllowEdit = false;
    this.colDereBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDereBole.OptionsColumn.AllowMove = false;
    this.colDereBole.OptionsColumn.ReadOnly = true;
    this.colDereBole.Visible = true;
    this.colDereBole.VisibleIndex = 10;
    this.colDereBole.Width = 53;
    ((AppearanceOptions) this.colInteBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colInteBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colInteBole.Caption = "Interes";
    this.colInteBole.DisplayFormat.FormatString = "C2";
    this.colInteBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colInteBole.FieldName = "InteBole";
    this.colInteBole.MaxWidth = 75;
    this.colInteBole.Name = "colInteBole";
    this.colInteBole.OptionsColumn.AllowEdit = false;
    this.colInteBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colInteBole.OptionsColumn.AllowMove = false;
    this.colInteBole.OptionsColumn.ReadOnly = true;
    this.colInteBole.Visible = true;
    this.colInteBole.VisibleIndex = 11;
    this.colInteBole.Width = 53;
    ((AppearanceOptions) this.colExenBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colExenBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colExenBole.Caption = "Exen.";
    this.colExenBole.DisplayFormat.FormatString = "C2";
    this.colExenBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colExenBole.FieldName = "ExenBole";
    this.colExenBole.MaxWidth = 75;
    this.colExenBole.Name = "colExenBole";
    this.colExenBole.OptionsColumn.AllowEdit = false;
    this.colExenBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colExenBole.OptionsColumn.AllowMove = false;
    this.colExenBole.OptionsColumn.ReadOnly = true;
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
    this.colApreBole.OptionsColumn.AllowMove = false;
    this.colApreBole.OptionsColumn.ReadOnly = true;
    ((GridSummaryItemCollection) this.colApreBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 5, "ApreBole", "TOTAL:")
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
    this.colTotaBole.OptionsColumn.AllowMove = false;
    this.colTotaBole.OptionsColumn.ReadOnly = true;
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
    this.colCodiUsua.OptionsColumn.AllowMove = false;
    this.colCodiUsua.OptionsColumn.ReadOnly = true;
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
    this.colQuitarBoleto.OptionsColumn.AllowMove = false;
    this.colQuitarBoleto.OptionsColumn.ReadOnly = true;
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
    this.metroPanel4.Controls.Add((Control) this.mtextCodiBarra);
    this.metroPanel4.Controls.Add((Control) this.mtextNumeBole);
    this.metroPanel4.Controls.Add((Control) this.btnAgregar);
    this.metroPanel4.Controls.Add((Control) this.mtextPeriBole);
    this.metroPanel4.Controls.Add((Control) this.metroLabel6);
    this.metroPanel4.Controls.Add((Control) this.metroLabel5);
    this.metroPanel4.Controls.Add((Control) this.metroLabel4);
    this.metroPanel4.Controls.Add((Control) this.metroLabel3);
    this.metroPanel4.Dock = DockStyle.Top;
    this.metroPanel4.Location = new Point(0, 0);
    this.metroPanel4.Name = "metroPanel4";
    this.metroPanel4.Size = new Size(1008, 84);
    this.metroPanel4.TabIndex = 2;
    this.mtextCodiBarra.FontSize = 20f;
    this.mtextCodiBarra.Location = new Point(131, 37);
    this.mtextCodiBarra.MaxLength = 12;
    this.mtextCodiBarra.Name = "mtextCodiBarra";
    this.mtextCodiBarra.Size = new Size(278, 23);
    this.mtextCodiBarra.TabIndex = 1;
    this.mtextCodiBarra.Enter += new EventHandler(this.mtextCodiBarra_Enter);
    this.mtextCodiBarra.KeyDown += new KeyEventHandler(this.mtextCodiBarra_KeyDown);
    this.mtextCodiBarra.Leave += new EventHandler(this.mtextCodiBarra_Leave);
    this.mtextNumeBole.AllowEmpty = true;
    this.mtextNumeBole.FontSize = 20f;
    this.mtextNumeBole.Location = new Point(689, 35);
    this.mtextNumeBole.MaxLength = 7;
    this.mtextNumeBole.MaxValue = 9999999;
    this.mtextNumeBole.MinValue = 1;
    this.mtextNumeBole.Name = "mtextNumeBole";
    this.mtextNumeBole.Size = new Size(156, 28);
    this.mtextNumeBole.TabIndex = 1;
    this.mtextNumeBole.Enter += new EventHandler(this.mtextNumeBole_Enter);
    this.mtextNumeBole.KeyDown += new KeyEventHandler(this.mtextNumeBole_KeyDown);
    this.mtextNumeBole.Leave += new EventHandler(this.mtextNumeBole_Leave);
    this.btnAgregar.Location = new Point(874, 35);
    this.btnAgregar.Name = "btnAgregar";
    this.btnAgregar.Size = new Size(75, 28);
    this.btnAgregar.TabIndex = 4;
    this.btnAgregar.Text = "AGREGAR";
    this.btnAgregar.Click += new EventHandler(this.btnAgregar_Click);
    this.mtextPeriBole.AllowEmpty = true;
    this.mtextPeriBole.FontSize = 20f;
    this.mtextPeriBole.Location = new Point(572, 35);
    this.mtextPeriBole.MaxLength = 4;
    this.mtextPeriBole.MaxValue = 9999;
    this.mtextPeriBole.MinValue = 1980;
    this.mtextPeriBole.Name = "mtextPeriBole";
    this.mtextPeriBole.Size = new Size(105, 28);
    this.mtextPeriBole.TabIndex = 2;
    this.mtextPeriBole.KeyDown += new KeyEventHandler(this.mtextPeriBole_KeyDown);
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.FontSize = 20f;
    this.metroLabel6.Location = new Point(447, 34);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(113, 29);
    this.metroLabel6.TabIndex = 5;
    this.metroLabel6.Text = "Boleto Nro.:";
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.FontSize = 20f;
    this.metroLabel5.Location = new Point(6, 34);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(113, 29);
    this.metroLabel5.TabIndex = 4;
    this.metroLabel5.Text = "Boleto Nro.:";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleLeft;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.FontSize = 16f;
    this.metroLabel4.Location = new Point(644, 7);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(77, 19);
    this.metroLabel4.TabIndex = 3;
    this.metroLabel4.Text = "Manual";
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.FontSize = 16f;
    this.metroLabel3.Location = new Point(128 /*0x80*/, 6);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(130, 19);
    this.metroLabel3.TabIndex = 2;
    this.metroLabel3.Text = "Codigo de Barra";
    this.metroPanel2.BorderColor = Color.DimGray;
    this.metroPanel2.Controls.Add((Control) this.cboEnteReca);
    this.metroPanel2.Controls.Add((Control) this.chkCobroTick);
    this.metroPanel2.Controls.Add((Control) this.metroLabel7);
    this.metroPanel2.Controls.Add((Control) this.metroLabel2);
    this.metroPanel2.Controls.Add((Control) this.mdateFecha);
    this.metroPanel2.Controls.Add((Control) this.metroLabel1);
    this.metroPanel2.Dock = DockStyle.Top;
    this.metroPanel2.Location = new Point(0, 0);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.Size = new Size(1008, 72);
    this.metroPanel2.TabIndex = 2;
    this.metroPanel2.Tag = (object) "";
    this.cboEnteReca.FormattingEnabled = false;
    this.cboEnteReca.Location = new Point(399, 25);
    this.cboEnteReca.Name = "cboEnteReca";
    this.cboEnteReca.Size = new Size(263, 23);
    this.cboEnteReca.TabIndex = 8;
    this.cboEnteReca.SelectedValueChanged += new EventHandler(this.cboEnteReca_SelectedValueChanged);
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
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(272, 25);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(115, 19);
    this.metroLabel2.TabIndex = 4;
    this.metroLabel2.Text = "Ente Recaudador:";
    this.mdateFecha.Location = new Point(142, 25);
    this.mdateFecha.Name = "mdateFecha";
    this.mdateFecha.Size = new Size(102, 20);
    this.mdateFecha.TabIndex = 3;
    this.mdateFecha.TabStop = false;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(16 /*0x10*/, 25);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(107, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Fecha de Envío";
    this.AcceptButton = (IButtonControl) this.btnAgregar;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1008, 681);
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmIngresoBoletoCajaRV);
    this.Text = "Ingreso Boleto Caja";
    this.metroPanel1.ResumeLayout(false);
    this.metroPanel3.ResumeLayout(false);
    this.metroPanel5.ResumeLayout(false);
    ((ISupportInitialize) this.gridTipas).EndInit();
    ((ISupportInitialize) this.viewTipas).EndInit();
    this.metroPanel6.ResumeLayout(false);
    this.metroPanel6.PerformLayout();
    ((ISupportInitialize) this.gridFopas).EndInit();
    ((ISupportInitialize) this.viewFopas).EndInit();
    ((ISupportInitialize) this.gridBoletos).EndInit();
    ((ISupportInitialize) this.viewBoletos).EndInit();
    ((ISupportInitialize) this.ribQuitarBoleto).EndInit();
    this.metroPanel4.ResumeLayout(false);
    this.metroPanel2.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
