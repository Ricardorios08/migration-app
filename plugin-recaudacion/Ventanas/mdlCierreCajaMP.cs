// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.mdlCierreCajaMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
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
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class mdlCierreCajaMP : BaseForm
{
  private ExpBoletoCajaMP expertoBoleto;
  private DTOAcrePagoMP cajaActual;
  private List<ResumenCajaMP> resumenCaja = new List<ResumenCajaMP>();
  private List<ResumenBoletoPagoMP> resumenBoletos = new List<ResumenBoletoPagoMP>();
  private List<ResumenFormaPagoMP> resumenFormasPago = new List<ResumenFormaPagoMP>();
  private List<ResumenFinalCajaMP> resumenFinalCajaMP = new List<ResumenFinalCajaMP>();
  private ResumenFinalCajaMP itemExistencia;
  private Font footerFont;
  private Decimal sumaCajaActual = 0M;
  private Decimal sumaPagoMontoInicio = 0M;
  private Decimal sumaDiferencia = 0M;
  private IContainer components = (IContainer) null;
  private MetroButton btnCerrar;
  private MetroLabel metroLabel1;
  private SimpleButton btnAceptar;
  private GroupBox gpbDatosCaja;
  private GroupBox gpbRecuento;
  private GroupBox gpbBoletos;
  private GroupBox gpbResumenPago;
  private MetroTextBox txtNumeAcpa;
  private MetroLabel metroLabel4;
  private MetroDateTextBox dtbFeenAcpa;
  private MetroLabel metroLabel3;
  private MetroTextBox txtUsuario;
  private MetroLabel metroLabel2;
  private MetroTextBox txtImpoInicial;
  private MetroTextBox txtDetaEnre;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private GridControl gridControlBolePago;
  private GridView gridViewBolePago;
  private GridControl gridControlResuFopa;
  private GridView gridViewResuFopa;
  private GridControl gridControlRecuento;
  private GridView gridViewRecuento;
  private GridColumn colDenominacion;
  private GridColumn colCantidad;
  private GridColumn colImporte;
  private GridColumn colPeri;
  private GridColumn colNume;
  private GridColumn colOfic;
  private GridColumn colCuenta;
  private GridColumn colTotal;
  private GridColumn colDetaFopa;
  private GridColumn colTotaFopa;
  private GroupBox gpbResuFinal;
  private GridControl gridControlResuFinal;
  private GridView gridViewResuFinal;
  private GridColumn colDetalle;
  private GridColumn colTota;

  public mdlCierreCajaMP(DTOAcrePagoMP caja, ExpBoletoCajaMP exp)
  {
    this.InitializeComponent();
    this.expertoBoleto = exp;
    this.cajaActual = caja;
    this.footerFont = new Font("Arial", 9f, FontStyle.Bold);
    this.CargarDatosCajaActual();
    this.CargarItemsRecuento();
    this.CargarBoletosPagados();
    this.CargarFormasPagoUtilizadas();
    this.CargarResumenFinalCaja();
    this.gridViewRecuento.CustomDrawFooterCell += new FooterCellCustomDrawEventHandler(this.CustomDrawFooterCell);
    this.gridViewBolePago.CustomDrawFooterCell += new FooterCellCustomDrawEventHandler(this.CustomDrawFooterCell);
    this.gridViewResuFopa.CustomDrawFooterCell += new FooterCellCustomDrawEventHandler(this.CustomDrawFooterCell);
    this.gridViewResuFinal.CustomDrawFooterCell += new FooterCellCustomDrawEventHandler(this.CustomDrawFooterCell);
    this.gridViewResuFinal.CustomSummaryCalculate += new CustomSummaryEventHandler(this.CustomSummaryCalculate);
  }

  private void CargarDatosCajaActual()
  {
    this.txtUsuario.Text = this.cajaActual.UsuaAcpa;
    this.txtImpoInicial.Text = this.cajaActual.MoinAcpa.ToString("C2");
    this.dtbFeenAcpa.Date = this.cajaActual.FeenAcpa;
    this.txtNumeAcpa.Text = this.cajaActual.NumeAcpa.ToString();
    this.txtDetaEnre.Text = this.cajaActual.DetaEnre;
  }

  private void CargarItemsRecuento()
  {
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Monedas {1:C0}",
      ValorPredeterminado = 1M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {2:C0}",
      ValorPredeterminado = 2M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {5:C0}",
      ValorPredeterminado = 5M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {10:C0}",
      ValorPredeterminado = 10M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {20:C0}",
      ValorPredeterminado = 20M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {50:C0}",
      ValorPredeterminado = 50M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {100:C0}",
      ValorPredeterminado = 100M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {200:C0}",
      ValorPredeterminado = 200M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {500:C0}",
      ValorPredeterminado = 500M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {1000:C0}",
      ValorPredeterminado = 1000M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {2000:C0}",
      ValorPredeterminado = 2000M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {10000:C0}",
      ValorPredeterminado = 10000M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = $"Billetes {20000:C0}",
      ValorPredeterminado = 20000M
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = "Tarjetas",
      ValorPredeterminado = 1M,
      TipoTipa = (short) 1
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = "Cheques",
      ValorPredeterminado = 1M,
      TipoTipa = (short) 2
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = "eCheq",
      ValorPredeterminado = 1M,
      TipoTipa = (short) 2
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = "Transferencias",
      ValorPredeterminado = 1M,
      TipoTipa = (short) 4
    });
    this.resumenCaja.Add(new ResumenCajaMP()
    {
      DetaRecu = "QR",
      ValorPredeterminado = 1M,
      TipoTipa = (short) 4
    });
    this.gridControlRecuento.DataSource = (object) this.resumenCaja;
  }

  private void CargarBoletosPagados()
  {
    this.expertoBoleto.ObtenerPagosCaja(this.resumenBoletos, this.cajaActual.FeenAcpa, this.cajaActual.NumeAcpa);
    this.gridControlBolePago.DataSource = (object) this.resumenBoletos;
  }

  private void CargarFormasPagoUtilizadas()
  {
    this.expertoBoleto.ObtenerFormasPagoUtilizadas(this.resumenFormasPago, this.cajaActual.FeenAcpa, this.cajaActual.NumeAcpa);
    this.gridControlResuFopa.DataSource = (object) this.resumenFormasPago;
  }

  private void CargarResumenFinalCaja()
  {
    this.resumenFinalCajaMP.Add(new ResumenFinalCajaMP()
    {
      DetaResu = "EXISTENCIA CAJA",
      TotaResu = 0M,
      TipoResu = (short) 0
    });
    this.resumenFinalCajaMP.Add(new ResumenFinalCajaMP()
    {
      DetaResu = "IMPORTE INICIAL",
      TotaResu = this.cajaActual.MoinAcpa,
      TipoResu = (short) 1
    });
    this.resumenFinalCajaMP.Add(new ResumenFinalCajaMP()
    {
      DetaResu = "IMPORTE COBRADO",
      TotaResu = this.resumenBoletos.Sum<ResumenBoletoPagoMP>((Func<ResumenBoletoPagoMP, Decimal>) (x => x.TotaPago)),
      TipoResu = (short) 2
    });
    this.itemExistencia = this.resumenFinalCajaMP.First<ResumenFinalCajaMP>((Func<ResumenFinalCajaMP, bool>) (x => x.TipoResu == (short) 0));
    this.gridControlResuFinal.DataSource = (object) this.resumenFinalCajaMP;
  }

  private void btnAceptar_Click(object sender, EventArgs e)
  {
    if (!new frmPreguntar((Form) this).preguntar("Cerrará la caja con los VALORES ACTUALES. ¿Confirma el cierre de caja?", "CONFIRMAR", "CANCELAR"))
      return;
    if (this.expertoBoleto.CajaDiariaSinVerificar(this.cajaActual.FeenAcpa, this.cajaActual.NumeAcpa))
    {
      if (this.resumenCaja.All<ResumenCajaMP>((Func<ResumenCajaMP, bool>) (x => x.ImpoRecu == 0M)))
      {
        ToastHelper.ShowOrFallback((Form) this, "No se ha ingresado ningún valor de recuento. Verificar...", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight);
      }
      else
      {
        this.cajaActual.ImcaCierre = this.itemExistencia.TotaResu;
        this.cajaActual.ImcoCierre = this.resumenBoletos.Sum<ResumenBoletoPagoMP>((Func<ResumenBoletoPagoMP, Decimal>) (x => x.TotaPago));
        this.cajaActual.DifeCierre = this.sumaDiferencia;
        if (this.expertoBoleto.CerrarCajaDiaria(this.cajaActual, this.resumenCaja.Where<ResumenCajaMP>((Func<ResumenCajaMP, bool>) (x => x.ImpoRecu > 0M)).ToList<ResumenCajaMP>()))
        {
          this.DialogResult = DialogResult.OK;
          this.Close();
        }
        else
          ToastHelper.ShowOrFallback((Form) this, "Ocurrio un error al cerrar la caja.", ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
      }
    }
    else
      ToastHelper.ShowOrFallback((Form) this, "La caja YA ha sido CERRADA. Verificar...", ToastHelper.ToastType.Danger, ToastHelper.ToastPosition.TopRight);
  }

  private void gridViewRecuento_ValidatingEditor(
    object sender,
    BaseContainerValidateEditorEventArgs e)
  {
    string fieldName = ((ColumnView) this.gridViewRecuento).FocusedColumn?.FieldName;
    int num;
    switch (fieldName)
    {
      case null:
        num = 0;
        break;
      case "CantRecu":
        num = 1;
        break;
      default:
        num = fieldName == "ImpoRecu" ? 1 : 0;
        break;
    }
    if (num == 0)
      return;
    string s = (e.Value?.ToString() ?? "0").Replace(".", ",");
    if (s.Split(',').Length > 2)
    {
      e.Valid = false;
      e.ErrorText = "Formato inválido. Solo se permite un separador decimal";
    }
    else
    {
      Decimal result;
      if (Decimal.TryParse(s, out result))
      {
        if (result < 0M)
        {
          e.Valid = false;
          e.ErrorText = "El valor no puede ser negativo. Mínimo: 0";
        }
        else
        {
          if (fieldName == "ImpoRecu")
            result = Decimal.Round(result, 2);
          e.Value = (object) result;
        }
      }
      else
      {
        e.Valid = false;
        e.ErrorText = "Ingrese un valor numérico válido";
      }
    }
  }

  private void gridViewRecuento_CellValueChanged(object sender, CellValueChangedEventArgs e)
  {
    ResumenCajaMP row = (ResumenCajaMP) ((BaseView) this.gridViewRecuento).GetRow(e.RowHandle);
    if (row == null)
      return;
    string fieldName = e.Column.FieldName;
    if (fieldName == "CantRecu")
    {
      if (row.CantRecu < (short) 0)
      {
        row.CantRecu = (short) 0;
        ((ColumnView) this.gridViewRecuento).RefreshRow(e.RowHandle);
        return;
      }
      if (row.TipoTipa == (short) 0)
        row.ImpoRecu = (Decimal) row.CantRecu * row.ValorPredeterminado;
    }
    if (fieldName == "ImpoRecu")
    {
      if (row.ImpoRecu < 0M)
        row.ImpoRecu = 0M;
      row.ImpoRecu = Decimal.Round(row.ImpoRecu, 2);
      if (row.TipoTipa == (short) 0)
        row.ImpoRecu = (Decimal) row.CantRecu * row.ValorPredeterminado;
    }
    ((ColumnView) this.gridViewRecuento).RefreshRow(e.RowHandle);
    if (this.itemExistencia != null)
      this.itemExistencia.TotaResu = this.resumenCaja.Sum<ResumenCajaMP>((Func<ResumenCajaMP, Decimal>) (x => x.ImpoRecu));
    ((BaseView) this.gridViewRecuento).RefreshData();
    ((BaseView) this.gridViewResuFinal).RefreshData();
    this.gridViewResuFinal.UpdateSummary();
  }

  private void CustomDrawFooterCell(object sender, FooterCellCustomDrawEventArgs e)
  {
    ((CustomDrawEventArgs) e).Appearance.Font = this.footerFont;
    ((CustomDrawEventArgs) e).DefaultDraw();
  }

  private void gridViewResuFinal_CustomDrawCell(object sender, RowCellCustomDrawEventArgs e)
  {
    if (e.RowHandle >= 0)
    {
      ResumenFinalCajaMP row = (ResumenFinalCajaMP) ((BaseView) sender).GetRow(e.RowHandle);
      if (row != null)
      {
        switch (row.TipoResu)
        {
          case 0:
            ((CustomDrawEventArgs) e).Appearance.BackColor = Color.LightYellow;
            break;
          case 1:
          case 2:
            ((CustomDrawEventArgs) e).Appearance.BackColor = Color.LightGreen;
            break;
        }
      }
    }
    ((CustomDrawEventArgs) e).DefaultDraw();
  }

  private void CustomSummaryCalculate(object sender, CustomSummaryEventArgs e)
  {
    if (e.SummaryProcess == 0)
    {
      this.sumaCajaActual = 0M;
      this.sumaPagoMontoInicio = 0M;
      this.sumaDiferencia = 0M;
    }
    if (e.SummaryProcess == 1)
    {
      ResumenFinalCajaMP row = (ResumenFinalCajaMP) e.Row;
      if (row.TipoResu == (short) 0)
        this.sumaCajaActual += row.TotaResu;
      if (row.TipoResu == (short) 1 || row.TipoResu == (short) 2)
        this.sumaPagoMontoInicio += row.TotaResu;
    }
    if (e.SummaryProcess != 2)
      return;
    e.TotalValue = (object) (this.sumaDiferencia = Math.Abs(this.sumaCajaActual - this.sumaPagoMontoInicio));
  }

  private void mdlCierreCajaMP_Shown(object sender, EventArgs e)
  {
    ((BaseView) this.gridViewResuFinal).RefreshData();
    this.gridViewResuFinal.UpdateSummary();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (mdlCierreCajaMP));
    this.btnCerrar = new MetroButton();
    this.metroLabel1 = new MetroLabel();
    this.btnAceptar = new SimpleButton();
    this.gpbDatosCaja = new GroupBox();
    this.txtDetaEnre = new MetroTextBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.txtImpoInicial = new MetroTextBox();
    this.txtNumeAcpa = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.dtbFeenAcpa = new MetroDateTextBox();
    this.metroLabel3 = new MetroLabel();
    this.txtUsuario = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.gpbRecuento = new GroupBox();
    this.gridControlRecuento = new GridControl();
    this.gridViewRecuento = new GridView();
    this.colDenominacion = new GridColumn();
    this.colCantidad = new GridColumn();
    this.colImporte = new GridColumn();
    this.gpbBoletos = new GroupBox();
    this.gridControlBolePago = new GridControl();
    this.gridViewBolePago = new GridView();
    this.colPeri = new GridColumn();
    this.colNume = new GridColumn();
    this.colOfic = new GridColumn();
    this.colCuenta = new GridColumn();
    this.colTotal = new GridColumn();
    this.gpbResumenPago = new GroupBox();
    this.gridControlResuFopa = new GridControl();
    this.gridViewResuFopa = new GridView();
    this.colDetaFopa = new GridColumn();
    this.colTotaFopa = new GridColumn();
    this.gpbResuFinal = new GroupBox();
    this.gridControlResuFinal = new GridControl();
    this.gridViewResuFinal = new GridView();
    this.colDetalle = new GridColumn();
    this.colTota = new GridColumn();
    this.gpbDatosCaja.SuspendLayout();
    this.gpbRecuento.SuspendLayout();
    ((ISupportInitialize) this.gridControlRecuento).BeginInit();
    ((ISupportInitialize) this.gridViewRecuento).BeginInit();
    this.gpbBoletos.SuspendLayout();
    ((ISupportInitialize) this.gridControlBolePago).BeginInit();
    ((ISupportInitialize) this.gridViewBolePago).BeginInit();
    this.gpbResumenPago.SuspendLayout();
    ((ISupportInitialize) this.gridControlResuFopa).BeginInit();
    ((ISupportInitialize) this.gridViewResuFopa).BeginInit();
    this.gpbResuFinal.SuspendLayout();
    ((ISupportInitialize) this.gridControlResuFinal).BeginInit();
    ((ISupportInitialize) this.gridViewResuFinal).BeginInit();
    this.SuspendLayout();
    this.btnCerrar.DialogResult = DialogResult.Cancel;
    this.btnCerrar.Location = new Point(904, 5);
    this.btnCerrar.Name = "btnCerrar";
    this.btnCerrar.Size = new Size(23, 23);
    this.btnCerrar.TabIndex = 8;
    this.btnCerrar.Text = "X";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Dock = DockStyle.Top;
    this.metroLabel1.FontSize = 16f;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(0, 0);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(934, 30);
    this.metroLabel1.TabIndex = 9;
    this.metroLabel1.Text = "CIERRE DE CAJA";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleCenter;
    ((Control) this.btnAceptar).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((BaseStyleControl) this.btnAceptar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnAceptar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnAceptar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnAceptar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnAceptar.ImageOptions.Image");
    ((Control) this.btnAceptar).Location = new Point(411, 565);
    ((Control) this.btnAceptar).Name = "btnAceptar";
    ((Control) this.btnAceptar).Size = new Size(100, 34);
    ((Control) this.btnAceptar).TabIndex = 10;
    ((Control) this.btnAceptar).TabStop = false;
    ((Control) this.btnAceptar).Text = "ACEPTAR";
    ((Control) this.btnAceptar).Click += new EventHandler(this.btnAceptar_Click);
    this.gpbDatosCaja.Controls.Add((Control) this.txtDetaEnre);
    this.gpbDatosCaja.Controls.Add((Control) this.metroLabel6);
    this.gpbDatosCaja.Controls.Add((Control) this.metroLabel5);
    this.gpbDatosCaja.Controls.Add((Control) this.txtImpoInicial);
    this.gpbDatosCaja.Controls.Add((Control) this.txtNumeAcpa);
    this.gpbDatosCaja.Controls.Add((Control) this.metroLabel4);
    this.gpbDatosCaja.Controls.Add((Control) this.dtbFeenAcpa);
    this.gpbDatosCaja.Controls.Add((Control) this.metroLabel3);
    this.gpbDatosCaja.Controls.Add((Control) this.txtUsuario);
    this.gpbDatosCaja.Controls.Add((Control) this.metroLabel2);
    this.gpbDatosCaja.Location = new Point(12, 39);
    this.gpbDatosCaja.Name = "gpbDatosCaja";
    this.gpbDatosCaja.Size = new Size(425, 126);
    this.gpbDatosCaja.TabIndex = 11;
    this.gpbDatosCaja.TabStop = false;
    this.gpbDatosCaja.Text = "Datos Caja";
    this.txtDetaEnre.Location = new Point(97, 94);
    this.txtDetaEnre.Name = "txtDetaEnre";
    this.txtDetaEnre.ReadOnly = true;
    this.txtDetaEnre.Size = new Size(319, 23);
    this.txtDetaEnre.TabIndex = 9;
    this.txtDetaEnre.TabStop = false;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(13, 96 /*0x60*/);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(72, 19);
    this.metroLabel6.TabIndex = 8;
    this.metroLabel6.Text = "Ente Reca.:";
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(187, 24);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(94, 19);
    this.metroLabel5.TabIndex = 7;
    this.metroLabel5.Text = "Importe Inicio:";
    this.txtImpoInicial.Location = new Point(293, 24);
    this.txtImpoInicial.Name = "txtImpoInicial";
    this.txtImpoInicial.ReadOnly = true;
    this.txtImpoInicial.Size = new Size(123, 23);
    this.txtImpoInicial.TabIndex = 6;
    this.txtImpoInicial.TabStop = false;
    this.txtImpoInicial.TextAlign = HorizontalAlignment.Right;
    this.txtNumeAcpa.Location = new Point(293, 59);
    this.txtNumeAcpa.Name = "txtNumeAcpa";
    this.txtNumeAcpa.ReadOnly = true;
    this.txtNumeAcpa.Size = new Size(49, 23);
    this.txtNumeAcpa.TabIndex = 5;
    this.txtNumeAcpa.TabStop = false;
    this.txtNumeAcpa.TextAlign = HorizontalAlignment.Center;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(232, 61);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(49, 19);
    this.metroLabel4.TabIndex = 4;
    this.metroLabel4.Text = "Grupo:";
    this.dtbFeenAcpa.Date = new DateTime(2000, 1, 1, 0, 0, 0, 0);
    this.dtbFeenAcpa.Location = new Point(97, 57);
    this.dtbFeenAcpa.Name = "dtbFeenAcpa";
    this.dtbFeenAcpa.ReadOnly = true;
    this.dtbFeenAcpa.Size = new Size(89, 25);
    this.dtbFeenAcpa.TabIndex = 3;
    this.dtbFeenAcpa.TabStop = false;
    this.dtbFeenAcpa.Text = "01/01/2000";
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(9, 60);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(76, 19);
    this.metroLabel3.TabIndex = 2;
    this.metroLabel3.Text = "Fecha Caja:";
    this.txtUsuario.Location = new Point(97, 22);
    this.txtUsuario.Name = "txtUsuario";
    this.txtUsuario.ReadOnly = true;
    this.txtUsuario.Size = new Size(78, 23);
    this.txtUsuario.TabIndex = 1;
    this.txtUsuario.TabStop = false;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(29, 24);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(56, 19);
    this.metroLabel2.TabIndex = 0;
    this.metroLabel2.Text = "Usuario:";
    this.gpbRecuento.Controls.Add((Control) this.gridControlRecuento);
    this.gpbRecuento.Location = new Point(12, 171);
    this.gpbRecuento.Name = "gpbRecuento";
    this.gpbRecuento.Size = new Size(425, 388);
    this.gpbRecuento.TabIndex = 12;
    this.gpbRecuento.TabStop = false;
    this.gpbRecuento.Text = "Recuento";
    ((Control) this.gridControlRecuento).Dock = DockStyle.Fill;
    ((Control) this.gridControlRecuento).Location = new Point(3, 16 /*0x10*/);
    this.gridControlRecuento.MainView = (BaseView) this.gridViewRecuento;
    ((Control) this.gridControlRecuento).Name = "gridControlRecuento";
    ((Control) this.gridControlRecuento).Size = new Size(419, 369);
    ((Control) this.gridControlRecuento).TabIndex = 3;
    ((Control) this.gridControlRecuento).TabStop = false;
    this.gridControlRecuento.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewRecuento
    });
    this.gridViewRecuento.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewRecuento.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewRecuento).Columns.AddRange(new GridColumn[3]
    {
      this.colDenominacion,
      this.colCantidad,
      this.colImporte
    });
    this.gridViewRecuento.FocusRectStyle = (DrawFocusRectStyle) 0;
    ((BaseView) this.gridViewRecuento).GridControl = this.gridControlRecuento;
    ((BaseView) this.gridViewRecuento).Name = "gridViewRecuento";
    this.gridViewRecuento.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewRecuento.OptionsSelection.EnableAppearanceFocusedRow = false;
    this.gridViewRecuento.OptionsSelection.EnableAppearanceHideSelection = false;
    this.gridViewRecuento.OptionsView.ShowFooter = true;
    this.gridViewRecuento.OptionsView.ShowGroupPanel = false;
    this.gridViewRecuento.OptionsView.ShowIndicator = false;
    ((ColumnView) this.gridViewRecuento).CellValueChanged += new CellValueChangedEventHandler(this.gridViewRecuento_CellValueChanged);
    ((BaseView) this.gridViewRecuento).ValidatingEditor += new BaseContainerValidateEditorEventHandler(this.gridViewRecuento_ValidatingEditor);
    this.colDenominacion.Caption = "Denominación";
    this.colDenominacion.FieldName = "DetaRecu";
    this.colDenominacion.Name = "colDenominacion";
    this.colDenominacion.OptionsColumn.AllowEdit = false;
    this.colDenominacion.OptionsColumn.AllowFocus = false;
    this.colDenominacion.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDenominacion.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDenominacion.OptionsColumn.AllowMove = false;
    this.colDenominacion.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colDenominacion.OptionsColumn.ReadOnly = true;
    this.colDenominacion.OptionsColumn.TabStop = false;
    this.colDenominacion.Visible = true;
    this.colDenominacion.VisibleIndex = 0;
    this.colDenominacion.Width = 184;
    this.colCantidad.Caption = "Cantidad";
    this.colCantidad.FieldName = "CantRecu";
    this.colCantidad.MaxWidth = 100;
    this.colCantidad.Name = "colCantidad";
    this.colCantidad.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCantidad.OptionsColumn.AllowIncrementalSearch = false;
    this.colCantidad.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCantidad.OptionsColumn.AllowMove = false;
    this.colCantidad.OptionsColumn.AllowShowHide = false;
    this.colCantidad.OptionsColumn.AllowSize = false;
    this.colCantidad.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colCantidad.UnboundDataType = typeof (int);
    this.colCantidad.Visible = true;
    this.colCantidad.VisibleIndex = 1;
    this.colCantidad.Width = 100;
    ((AppearanceOptions) this.colImporte.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImporte.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImporte.Caption = "Importe";
    this.colImporte.DisplayFormat.FormatString = "C2";
    this.colImporte.DisplayFormat.FormatType = (FormatType) 1;
    this.colImporte.FieldName = "ImpoRecu";
    this.colImporte.MaxWidth = 160 /*0xA0*/;
    this.colImporte.Name = "colImporte";
    this.colImporte.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowIncrementalSearch = false;
    this.colImporte.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowMove = false;
    this.colImporte.OptionsColumn.AllowShowHide = false;
    this.colImporte.OptionsColumn.AllowSize = false;
    this.colImporte.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    ((GridSummaryItemCollection) this.colImporte.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "ImpoRecu", "Total: {0:C2}")
    });
    this.colImporte.UnboundType = (UnboundColumnType) 2;
    this.colImporte.Visible = true;
    this.colImporte.VisibleIndex = 2;
    this.colImporte.Width = 160 /*0xA0*/;
    this.gpbBoletos.Controls.Add((Control) this.gridControlBolePago);
    this.gpbBoletos.Location = new Point(443, 39);
    this.gpbBoletos.Name = "gpbBoletos";
    this.gpbBoletos.Size = new Size(484, 79);
    this.gpbBoletos.TabIndex = 13;
    this.gpbBoletos.TabStop = false;
    this.gpbBoletos.Text = "Boletos Pagados";
    this.gpbBoletos.Visible = false;
    ((Control) this.gridControlBolePago).Dock = DockStyle.Fill;
    ((Control) this.gridControlBolePago).Location = new Point(3, 16 /*0x10*/);
    this.gridControlBolePago.MainView = (BaseView) this.gridViewBolePago;
    ((Control) this.gridControlBolePago).Name = "gridControlBolePago";
    ((Control) this.gridControlBolePago).Size = new Size(478, 60);
    ((Control) this.gridControlBolePago).TabIndex = 205;
    ((Control) this.gridControlBolePago).TabStop = false;
    this.gridControlBolePago.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewBolePago
    });
    this.gridViewBolePago.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewBolePago.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewBolePago.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewBolePago).Columns.AddRange(new GridColumn[5]
    {
      this.colPeri,
      this.colNume,
      this.colOfic,
      this.colCuenta,
      this.colTotal
    });
    this.gridViewBolePago.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewBolePago).GridControl = this.gridControlBolePago;
    ((BaseView) this.gridViewBolePago).Name = "gridViewBolePago";
    ((ColumnViewOptionsBehavior) this.gridViewBolePago.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewBolePago.OptionsBehavior).ReadOnly = true;
    this.gridViewBolePago.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewBolePago.OptionsCustomization.AllowGroup = false;
    this.gridViewBolePago.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewBolePago.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewBolePago.OptionsView.ShowFooter = true;
    this.gridViewBolePago.OptionsView.ShowGroupPanel = false;
    this.gridViewBolePago.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colPeri.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeri.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeri.Caption = "Periodo";
    this.colPeri.FieldName = "PeriBole";
    this.colPeri.MaxWidth = 55;
    this.colPeri.Name = "colPeri";
    this.colPeri.OptionsColumn.AllowEdit = false;
    this.colPeri.OptionsColumn.AllowFocus = false;
    this.colPeri.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeri.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colPeri.OptionsColumn.AllowMove = false;
    this.colPeri.OptionsColumn.ReadOnly = true;
    this.colPeri.OptionsColumn.TabStop = false;
    this.colPeri.Visible = true;
    this.colPeri.VisibleIndex = 0;
    this.colPeri.Width = 55;
    ((AppearanceOptions) this.colNume.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNume.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNume.Caption = "N°";
    this.colNume.FieldName = "NumeBole";
    this.colNume.MaxWidth = 70;
    this.colNume.Name = "colNume";
    this.colNume.OptionsColumn.AllowEdit = false;
    this.colNume.OptionsColumn.AllowFocus = false;
    this.colNume.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNume.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colNume.OptionsColumn.AllowMove = false;
    this.colNume.OptionsColumn.ReadOnly = true;
    this.colNume.OptionsColumn.TabStop = false;
    this.colNume.Visible = true;
    this.colNume.VisibleIndex = 1;
    this.colNume.Width = 70;
    this.colOfic.Caption = "Oficina";
    this.colOfic.FieldName = "DetaOfic";
    this.colOfic.Name = "colOfic";
    this.colOfic.OptionsColumn.AllowEdit = false;
    this.colOfic.OptionsColumn.AllowFocus = false;
    this.colOfic.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colOfic.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colOfic.OptionsColumn.AllowMove = false;
    this.colOfic.OptionsColumn.ReadOnly = true;
    this.colOfic.OptionsColumn.TabStop = false;
    this.colOfic.Visible = true;
    this.colOfic.VisibleIndex = 2;
    ((AppearanceOptions) this.colCuenta.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuenta.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuenta.Caption = "Cuenta";
    this.colCuenta.FieldName = "CuenCtct";
    this.colCuenta.MaxWidth = 95;
    this.colCuenta.Name = "colCuenta";
    this.colCuenta.OptionsColumn.AllowEdit = false;
    this.colCuenta.OptionsColumn.AllowFocus = false;
    this.colCuenta.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuenta.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCuenta.OptionsColumn.AllowMove = false;
    this.colCuenta.OptionsColumn.ReadOnly = true;
    this.colCuenta.OptionsColumn.TabStop = false;
    this.colCuenta.Visible = true;
    this.colCuenta.VisibleIndex = 3;
    this.colCuenta.Width = 70;
    ((AppearanceOptions) this.colTotal.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotal.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotal.Caption = "Total";
    this.colTotal.DisplayFormat.FormatString = "{0:C2}";
    this.colTotal.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotal.FieldName = "TotaPago";
    this.colTotal.MaxWidth = 120;
    this.colTotal.Name = "colTotal";
    this.colTotal.OptionsColumn.AllowEdit = false;
    this.colTotal.OptionsColumn.AllowFocus = false;
    this.colTotal.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTotal.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTotal.OptionsColumn.AllowMove = false;
    this.colTotal.OptionsColumn.ReadOnly = true;
    this.colTotal.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colTotal.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaPago", "{0:C2}")
    });
    this.colTotal.Visible = true;
    this.colTotal.VisibleIndex = 4;
    this.gpbResumenPago.Controls.Add((Control) this.gridControlResuFopa);
    this.gpbResumenPago.Location = new Point(443, 237);
    this.gpbResumenPago.Name = "gpbResumenPago";
    this.gpbResumenPago.Size = new Size(484, 74);
    this.gpbResumenPago.TabIndex = 14;
    this.gpbResumenPago.TabStop = false;
    this.gpbResumenPago.Text = "Resumen Formas Pagos";
    this.gpbResumenPago.Visible = false;
    ((Control) this.gridControlResuFopa).Dock = DockStyle.Fill;
    ((Control) this.gridControlResuFopa).Location = new Point(3, 16 /*0x10*/);
    this.gridControlResuFopa.MainView = (BaseView) this.gridViewResuFopa;
    ((Control) this.gridControlResuFopa).Name = "gridControlResuFopa";
    ((Control) this.gridControlResuFopa).Size = new Size(478, 55);
    ((Control) this.gridControlResuFopa).TabIndex = 206;
    ((Control) this.gridControlResuFopa).TabStop = false;
    this.gridControlResuFopa.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewResuFopa
    });
    this.gridViewResuFopa.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewResuFopa.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewResuFopa.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewResuFopa).Columns.AddRange(new GridColumn[2]
    {
      this.colDetaFopa,
      this.colTotaFopa
    });
    this.gridViewResuFopa.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewResuFopa).GridControl = this.gridControlResuFopa;
    ((BaseView) this.gridViewResuFopa).Name = "gridViewResuFopa";
    ((ColumnViewOptionsBehavior) this.gridViewResuFopa.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewResuFopa.OptionsBehavior).ReadOnly = true;
    this.gridViewResuFopa.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewResuFopa.OptionsCustomization.AllowGroup = false;
    this.gridViewResuFopa.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewResuFopa.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewResuFopa.OptionsView.ShowFooter = true;
    this.gridViewResuFopa.OptionsView.ShowGroupPanel = false;
    this.gridViewResuFopa.OptionsView.ShowIndicator = false;
    this.colDetaFopa.Caption = "Forma Pago";
    this.colDetaFopa.FieldName = "DetaFopa";
    this.colDetaFopa.Name = "colDetaFopa";
    this.colDetaFopa.OptionsColumn.AllowEdit = false;
    this.colDetaFopa.OptionsColumn.AllowFocus = false;
    this.colDetaFopa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetaFopa.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDetaFopa.OptionsColumn.AllowMove = false;
    this.colDetaFopa.OptionsColumn.ReadOnly = true;
    this.colDetaFopa.OptionsColumn.TabStop = false;
    this.colDetaFopa.Visible = true;
    this.colDetaFopa.VisibleIndex = 0;
    ((AppearanceOptions) this.colTotaFopa.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotaFopa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotaFopa.Caption = "Total";
    this.colTotaFopa.DisplayFormat.FormatString = "{0:C2}";
    this.colTotaFopa.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotaFopa.FieldName = "TotaFopa";
    this.colTotaFopa.MaxWidth = 150;
    this.colTotaFopa.Name = "colTotaFopa";
    this.colTotaFopa.OptionsColumn.AllowEdit = false;
    this.colTotaFopa.OptionsColumn.AllowFocus = false;
    this.colTotaFopa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTotaFopa.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTotaFopa.OptionsColumn.AllowMove = false;
    this.colTotaFopa.OptionsColumn.ReadOnly = true;
    this.colTotaFopa.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colTotaFopa.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaFopa", "{0:C2}")
    });
    this.colTotaFopa.Visible = true;
    this.colTotaFopa.VisibleIndex = 1;
    this.gpbResuFinal.Controls.Add((Control) this.gridControlResuFinal);
    this.gpbResuFinal.Location = new Point(443, 317);
    this.gpbResuFinal.Name = "gpbResuFinal";
    this.gpbResuFinal.Size = new Size(484, 239);
    this.gpbResuFinal.TabIndex = 15;
    this.gpbResuFinal.TabStop = false;
    this.gpbResuFinal.Text = "RESUMEN FINAL";
    ((Control) this.gridControlResuFinal).Dock = DockStyle.Fill;
    ((Control) this.gridControlResuFinal).Location = new Point(3, 16 /*0x10*/);
    this.gridControlResuFinal.MainView = (BaseView) this.gridViewResuFinal;
    ((Control) this.gridControlResuFinal).Name = "gridControlResuFinal";
    ((Control) this.gridControlResuFinal).Size = new Size(478, 220);
    ((Control) this.gridControlResuFinal).TabIndex = 206;
    ((Control) this.gridControlResuFinal).TabStop = false;
    this.gridControlResuFinal.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewResuFinal
    });
    this.gridViewResuFinal.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewResuFinal.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewResuFinal.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewResuFinal).Columns.AddRange(new GridColumn[2]
    {
      this.colDetalle,
      this.colTota
    });
    this.gridViewResuFinal.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewResuFinal).GridControl = this.gridControlResuFinal;
    ((BaseView) this.gridViewResuFinal).Name = "gridViewResuFinal";
    ((ColumnViewOptionsBehavior) this.gridViewResuFinal.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewResuFinal.OptionsBehavior).ReadOnly = true;
    this.gridViewResuFinal.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewResuFinal.OptionsCustomization.AllowGroup = false;
    this.gridViewResuFinal.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewResuFinal.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewResuFinal.OptionsView.ShowFooter = true;
    this.gridViewResuFinal.OptionsView.ShowGroupPanel = false;
    this.gridViewResuFinal.OptionsView.ShowIndicator = false;
    this.gridViewResuFinal.CustomDrawCell += new RowCellCustomDrawEventHandler(this.gridViewResuFinal_CustomDrawCell);
    this.colDetalle.Caption = "DETALLE";
    this.colDetalle.FieldName = "DetaResu";
    this.colDetalle.Name = "colDetalle";
    this.colDetalle.OptionsColumn.AllowEdit = false;
    this.colDetalle.OptionsColumn.AllowFocus = false;
    this.colDetalle.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowMove = false;
    this.colDetalle.OptionsColumn.ReadOnly = true;
    this.colDetalle.OptionsColumn.TabStop = false;
    this.colDetalle.Visible = true;
    this.colDetalle.VisibleIndex = 0;
    ((AppearanceOptions) this.colTota.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTota.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTota.Caption = "TOTAL";
    this.colTota.DisplayFormat.FormatString = "{0:C2}";
    this.colTota.DisplayFormat.FormatType = (FormatType) 3;
    this.colTota.FieldName = "TotaResu";
    this.colTota.MaxWidth = 200;
    this.colTota.Name = "colTota";
    this.colTota.OptionsColumn.AllowEdit = false;
    this.colTota.OptionsColumn.AllowFocus = false;
    this.colTota.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTota.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colTota.OptionsColumn.AllowMove = false;
    this.colTota.OptionsColumn.ReadOnly = true;
    this.colTota.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colTota.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 5, "TotaResu", "DIF.: {0:C2}")
    });
    this.colTota.Visible = true;
    this.colTota.VisibleIndex = 1;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(934, 611);
    this.ControlBox = false;
    this.Controls.Add((Control) this.gpbResuFinal);
    this.Controls.Add((Control) this.gpbResumenPago);
    this.Controls.Add((Control) this.gpbBoletos);
    this.Controls.Add((Control) this.gpbRecuento);
    this.Controls.Add((Control) this.gpbDatosCaja);
    this.Controls.Add((Control) this.btnAceptar);
    this.Controls.Add((Control) this.btnCerrar);
    this.Controls.Add((Control) this.metroLabel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.FixedSingle;
    this.Name = nameof (mdlCierreCajaMP);
    this.Shown += new EventHandler(this.mdlCierreCajaMP_Shown);
    this.gpbDatosCaja.ResumeLayout(false);
    this.gpbRecuento.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlRecuento).EndInit();
    ((ISupportInitialize) this.gridViewRecuento).EndInit();
    this.gpbBoletos.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlBolePago).EndInit();
    ((ISupportInitialize) this.gridViewBolePago).EndInit();
    this.gpbResumenPago.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlResuFopa).EndInit();
    ((ISupportInitialize) this.gridViewResuFopa).EndInit();
    this.gpbResuFinal.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlResuFinal).EndInit();
    ((ISupportInitialize) this.gridViewResuFinal).EndInit();
    this.ResumeLayout(false);
  }
}
