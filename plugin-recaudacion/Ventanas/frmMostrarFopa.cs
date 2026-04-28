// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmMostrarFopa
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.Utils.Extensions;
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
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmMostrarFopa : BaseForm
{
  private readonly List<FormaPago> formasPago;
  private readonly List<FormaPago> formasPagoDisponibles;
  private readonly List<FormaPago> formasPagoUsadas;
  private readonly DateTime FeenAcpa;
  private readonly int NumeAcpa;
  private readonly int PeriBole;
  private readonly int NumeBole;
  private readonly Decimal TotaBole;
  private readonly int PeriFopa;
  private readonly int NumeFopa;
  private readonly int combinacion;
  private string MoanBole;
  private FormaPago TipaSeleccionada;
  private FormaPago FopaSeleccionada;
  private readonly ExpBoletoGrupo expGrupo;
  private List<BoletoAsociado> boletos;
  private IContainer components = (IContainer) null;
  private MetroPanel panButtons;
  private MetroPanel panMoanBole;
  private MetroPanel panCentral;
  private MetroPanel panTitulo;
  private MetroLabel lblTitulo;
  private MetroPanel panDetalle;
  private MetroLabel lblDetalle;
  private GridControl gridTipas;
  private GridView viewTipas;
  private GridColumn colCodiTipa;
  private GridColumn colDetaTipa;
  private GridControl gridBoles;
  private GridView viewBoles;
  private GridColumn colNumeBole;
  private GridColumn colImpoBole;
  private GridControl gridFopas;
  private GridView viewFopas;
  private GridColumn colCodiTipaFP;
  private GridColumn colDetaTipaFP;
  private GridColumn colNuchFopa;
  private GridColumn colImpoFopa;
  private Label lblFalta;
  private Label lblFaltaPago;
  private MetroLabel lblBoleAsoc;
  private MetroLabel lblFopaUsada;
  private MetroLabel lblTipaDisp;
  private MetroTextBox mtbMoanBole;
  private MetroLabel lblMoanBole;
  private MetroButton btnCancelar;
  private MetroButton btnConfirmar;
  private MetroLabel lblImpoPago;

  public frmMostrarFopa(
    DateTime feenAcpa,
    int numeAcpa,
    int periBole,
    int numeBole,
    Decimal totaBole,
    int periFopa,
    int numeFopa,
    int comb)
  {
    this.InitializeComponent();
    this.FeenAcpa = feenAcpa;
    this.NumeAcpa = numeAcpa;
    this.PeriBole = periBole;
    this.NumeBole = numeBole;
    this.TotaBole = totaBole;
    this.PeriFopa = periFopa;
    this.NumeFopa = numeFopa;
    this.combinacion = comb;
    this.formasPagoDisponibles = new List<FormaPago>();
    this.lblTitulo.Text = $"Detalles del pago del boleto {this.PeriBole}-{this.NumeBole} y sus formas de pago";
    this.lblFopaUsada.Text = $"Formas de Pago Usadas del Boleto {this.PeriBole}-{this.NumeBole}";
    this.lblFalta.Visible = this.lblFaltaPago.Visible = false;
    try
    {
      this.expGrupo = new ExpBoletoGrupo();
      switch (this.combinacion)
      {
        case 1:
        case 3:
          this.lblDetalle.Text = $"Se procederá a dar de baja el pago del boleto {this.PeriBole}-{this.NumeBole} y eliminar las formas de pago utilizadas.";
          this.ActivarGrids(false, false, false);
          break;
        case 2:
          this.lblDetalle.Text = $"Se procederá a dar de baja el pago del boleto {this.PeriBole}-{this.NumeBole} y actualizar la forma de pago utilizada, restando el valor del pago\n({totaBole:C2}) a la misma.";
          this.ActivarGrids(false, false, true);
          this.BuscarBoletosAsociados(false);
          break;
        case 4:
          this.lblDetalle.Text = $"Se procederá a dar de baja el pago del boleto {this.PeriBole}-{this.NumeBole}. Debe ingresar una nueva combinación de forma de pago.";
          this.ActivarGrids(true, true, true);
          this.BuscarBoletosAsociados(true);
          break;
      }
      this.formasPago = this.expGrupo.ObtenerFormasPago();
      this.formasPagoUsadas = this.expGrupo.ObtenerFormasPagoUsadas(this.PeriFopa, this.NumeFopa);
      foreach (FormaPago formaPago in this.formasPago)
      {
        FormaPago fp = formaPago;
        if (!this.formasPagoUsadas.Exists((Predicate<FormaPago>) (x => x.CodiTipa == fp.CodiTipa)))
          this.formasPagoDisponibles.Add(fp);
      }
      this.gridTipas.DataSource = (object) this.formasPagoDisponibles;
      this.gridFopas.DataSource = (object) this.formasPagoUsadas;
      if (this.combinacion != 4)
        return;
      this.CalcularFormasPago();
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
      this.DialogResult = DialogResult.Cancel;
      this.Close();
    }
  }

  private void BuscarBoletosAsociados(bool mostrarResto)
  {
    this.boletos = this.expGrupo.ObtenerPagosBoletos(this.PeriFopa, this.NumeFopa, this.NumeBole);
    this.gridBoles.DataSource = (object) this.boletos;
    this.lblImpoPago.Text = "El importe restante a redistribuir es: " + this.boletos.Sum<BoletoAsociado>((Func<BoletoAsociado, Decimal>) (x => x.TotaBole)).ToString("C2");
    this.lblImpoPago.Visible = mostrarResto;
  }

  private void ActivarGrids(bool tipas, bool fopas, bool boles)
  {
    this.lblTipaDisp.Visible = ((Control) this.gridTipas).Visible = ((Control) this.gridTipas).Enabled = tipas;
    this.colNuchFopa.OptionsColumn.AllowEdit = this.colImpoFopa.OptionsColumn.AllowEdit = fopas;
    this.lblBoleAsoc.Visible = ((Control) this.gridBoles).Visible = ((Control) this.gridBoles).Enabled = boles;
  }

  private void btnConfirmar_Click(object sender, EventArgs e)
  {
    FormaPago formaPago = this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == 2));
    this.MoanBole = this.mtbMoanBole.Text.Trim();
    if (formaPago != null && formaPago.NuchFopa == 0L)
      new frmMensaje((Form) this).mostrarInformación("El número de cheque es obligatorio");
    else if (string.IsNullOrEmpty(this.MoanBole) || this.MoanBole.Length <= 10)
      new frmMensaje((Form) this).mostrarError("Debe ingresar un motivo entre 10 y 30 carácteres.");
    else if (this.combinacion != 4)
      this.RealizarCambio();
    else if (this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa)) - this.boletos.Sum<BoletoAsociado>((Func<BoletoAsociado, Decimal>) (x => x.TotaBole)) == 0M)
      this.RealizarCambio();
    else
      new frmMensaje((Form) this).mostrarInformación("El importe de las Formas de Pago debe coincidir con el del total de los pagos restantes.");
  }

  private void RealizarCambio()
  {
    if (this.expGrupo.EliminarPago(this.FeenAcpa, this.NumeAcpa, this.PeriBole, this.NumeBole, this.MoanBole, this.TotaBole, this.combinacion, this.PeriFopa, this.NumeFopa, this.formasPagoUsadas.Where<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa > 0M)).ToList<FormaPago>()))
    {
      this.DialogResult = DialogResult.OK;
      this.Close();
    }
    else
      new frmMensaje((Form) this).mostrarError("No se pudo actualizar el pago.");
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

  private void CalcularFormasPago()
  {
    if (this.formasPagoUsadas.Count<FormaPago>() > 1)
    {
      int num1 = this.formasPagoUsadas.Where<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa == 0M)).Count<FormaPago>();
      if (num1 > 0)
      {
        Decimal num2 = this.boletos.Sum<BoletoAsociado>((Func<BoletoAsociado, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa));
        if (num2 > 0M)
        {
          Decimal restoAFila = num2 / (Decimal) num1;
          int primerFila = this.formasPagoUsadas.First<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa == 0M)).CodiTipa;
          EnumerableExtensions.ForEach<FormaPago>(this.formasPagoUsadas.Where<FormaPago>((Func<FormaPago, bool>) (x => x.ImpoFopa == 0M)), (Action<FormaPago>) (x => x.ImpoFopa = Decimal.Round(restoAFila, 2)));
          Decimal num3 = Decimal.Round(this.boletos.Sum<BoletoAsociado>((Func<BoletoAsociado, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa)), 2);
          if (num3 != 0M)
            this.formasPagoUsadas.Find((Predicate<FormaPago>) (x => x.CodiTipa == primerFila)).ImpoFopa += num3;
        }
      }
    }
    this.CalcularPago();
    this.RefrescarGridViews();
  }

  private void viewFopas_RowClick(object sender, RowClickEventArgs e)
  {
    if (this.combinacion != 4)
      return;
    this.FopaSeleccionada = (FormaPago) ((BaseView) this.viewFopas).GetRow(((ColumnView) this.viewFopas).GetSelectedRows()[0]);
    if (this.FopaSeleccionada == null || this.formasPagoUsadas.Count <= 1)
      return;
    Decimal impoFopa = this.FopaSeleccionada.ImpoFopa;
    this.FopaSeleccionada.ImpoFopa = 0.00M;
    this.FopaSeleccionada.NuchFopa = 0L;
    this.formasPagoDisponibles.Add(this.FopaSeleccionada);
    this.formasPagoUsadas.Remove(this.FopaSeleccionada);
    this.CalcularPago(impoFopa);
    this.RefrescarGridViews();
    this.FopaSeleccionada = (FormaPago) null;
  }

  private void viewFopas_ValidatingEditor(object sender, BaseContainerValidateEditorEventArgs e)
  {
    if (string.IsNullOrEmpty(e.Value.ToString().Trim()) || !e.Value.ToString().Contains("."))
      return;
    e.Value = (object) e.Value.ToString().Replace(".", ",");
  }

  private void viewTipas_RowClick(object sender, RowClickEventArgs e)
  {
    if (this.combinacion != 4)
      return;
    this.TipaSeleccionada = (FormaPago) ((BaseView) this.viewTipas).GetRow(((ColumnView) this.viewTipas).GetSelectedRows()[0]);
    if (this.TipaSeleccionada == null || this.formasPagoDisponibles.Count <= 0)
      return;
    Decimal num = this.boletos.Sum<BoletoAsociado>((Func<BoletoAsociado, Decimal>) (x => x.TotaBole)) - this.formasPagoUsadas.Sum<FormaPago>((Func<FormaPago, Decimal>) (x => x.ImpoFopa));
    this.TipaSeleccionada.ImpoFopa = num > 0M ? num : 0.00M;
    this.formasPagoUsadas.Add(this.TipaSeleccionada);
    this.formasPagoDisponibles.Remove(this.TipaSeleccionada);
    this.CalcularPago();
    this.RefrescarGridViews();
    this.TipaSeleccionada = (FormaPago) null;
  }

  private void RefrescarGridViews()
  {
    ((BaseView) this.viewTipas).RefreshData();
    ((BaseView) this.viewFopas).RefreshData();
  }

  private void CalcularPago(Decimal impFP = 0M)
  {
    Decimal num1 = 0.00M;
    if (this.boletos.Count<BoletoAsociado>() > 0)
      num1 = Decimal.Round(this.boletos.Sum<BoletoAsociado>((Func<BoletoAsociado, Decimal>) (x => x.TotaBole)), 2);
    if (this.formasPagoUsadas.Count<FormaPago>() == 1 && this.formasPagoUsadas.First<FormaPago>().ImpoFopa == 0M)
      this.formasPagoUsadas.First<FormaPago>().ImpoFopa = num1;
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
    this.btnConfirmar.Enabled = this.btnConfirmar.Visible = num2 - num1 == 0M && num1 > 0M;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.panButtons = new MetroPanel();
    this.btnCancelar = new MetroButton();
    this.btnConfirmar = new MetroButton();
    this.panMoanBole = new MetroPanel();
    this.mtbMoanBole = new MetroTextBox();
    this.lblMoanBole = new MetroLabel();
    this.panCentral = new MetroPanel();
    this.lblImpoPago = new MetroLabel();
    this.lblBoleAsoc = new MetroLabel();
    this.lblFopaUsada = new MetroLabel();
    this.lblTipaDisp = new MetroLabel();
    this.lblFaltaPago = new Label();
    this.lblFalta = new Label();
    this.gridBoles = new GridControl();
    this.viewBoles = new GridView();
    this.colNumeBole = new GridColumn();
    this.colImpoBole = new GridColumn();
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
    this.panDetalle = new MetroPanel();
    this.lblDetalle = new MetroLabel();
    this.panTitulo = new MetroPanel();
    this.lblTitulo = new MetroLabel();
    this.panButtons.SuspendLayout();
    this.panMoanBole.SuspendLayout();
    this.panCentral.SuspendLayout();
    ((ISupportInitialize) this.gridBoles).BeginInit();
    ((ISupportInitialize) this.viewBoles).BeginInit();
    ((ISupportInitialize) this.gridFopas).BeginInit();
    ((ISupportInitialize) this.viewFopas).BeginInit();
    ((ISupportInitialize) this.gridTipas).BeginInit();
    ((ISupportInitialize) this.viewTipas).BeginInit();
    this.panDetalle.SuspendLayout();
    this.panTitulo.SuspendLayout();
    this.SuspendLayout();
    this.panButtons.Controls.Add((Control) this.btnCancelar);
    this.panButtons.Controls.Add((Control) this.btnConfirmar);
    this.panButtons.Dock = DockStyle.Bottom;
    this.panButtons.Location = new Point(0, 347);
    this.panButtons.Name = "panButtons";
    this.panButtons.Size = new Size(791, 41);
    this.panButtons.TabIndex = 0;
    this.btnCancelar.DialogResult = DialogResult.Cancel;
    this.btnCancelar.ForeColor = SystemColors.ControlText;
    this.btnCancelar.Location = new Point(405, 9);
    this.btnCancelar.Name = "btnCancelar";
    this.btnCancelar.Size = new Size(92, 24);
    this.btnCancelar.TabIndex = 3;
    this.btnCancelar.Text = "CANCELAR";
    this.btnConfirmar.Location = new Point(301, 9);
    this.btnConfirmar.Name = "btnConfirmar";
    this.btnConfirmar.Size = new Size(92, 24);
    this.btnConfirmar.TabIndex = 2;
    this.btnConfirmar.Text = "CONFIRMAR";
    this.btnConfirmar.Click += new EventHandler(this.btnConfirmar_Click);
    this.panMoanBole.Controls.Add((Control) this.mtbMoanBole);
    this.panMoanBole.Controls.Add((Control) this.lblMoanBole);
    this.panMoanBole.Dock = DockStyle.Bottom;
    this.panMoanBole.Location = new Point(0, 306);
    this.panMoanBole.Name = "panMoanBole";
    this.panMoanBole.Size = new Size(791, 41);
    this.panMoanBole.TabIndex = 1;
    this.mtbMoanBole.Location = new Point(179, 8);
    this.mtbMoanBole.MaxLength = 30;
    this.mtbMoanBole.Name = "mtbMoanBole";
    this.mtbMoanBole.PromptText = "Motivo entre 10 y 30 carácteres";
    this.mtbMoanBole.Size = new Size(606, 23);
    this.mtbMoanBole.TabIndex = 3;
    this.lblMoanBole.AutoSize = false;
    this.lblMoanBole.Location = new Point(9, 10);
    this.lblMoanBole.Name = "lblMoanBole";
    this.lblMoanBole.Size = new Size(161, 19);
    this.lblMoanBole.TabIndex = 2;
    this.lblMoanBole.Text = "MOTIVO DE ANULACIÓN";
    this.panCentral.Controls.Add((Control) this.lblImpoPago);
    this.panCentral.Controls.Add((Control) this.lblBoleAsoc);
    this.panCentral.Controls.Add((Control) this.lblFopaUsada);
    this.panCentral.Controls.Add((Control) this.lblTipaDisp);
    this.panCentral.Controls.Add((Control) this.lblFaltaPago);
    this.panCentral.Controls.Add((Control) this.lblFalta);
    this.panCentral.Controls.Add((Control) this.gridBoles);
    this.panCentral.Controls.Add((Control) this.gridFopas);
    this.panCentral.Controls.Add((Control) this.gridTipas);
    this.panCentral.Controls.Add((Control) this.panDetalle);
    this.panCentral.Controls.Add((Control) this.panTitulo);
    this.panCentral.Dock = DockStyle.Fill;
    this.panCentral.Location = new Point(0, 0);
    this.panCentral.Name = "panCentral";
    this.panCentral.Size = new Size(791, 306);
    this.panCentral.TabIndex = 2;
    this.lblImpoPago.AutoSize = false;
    this.lblImpoPago.FontWeight = MetroFontWeight.Bold;
    this.lblImpoPago.Location = new Point(201, 259);
    this.lblImpoPago.Name = "lblImpoPago";
    this.lblImpoPago.Size = new Size(365, 19);
    this.lblImpoPago.TabIndex = 23;
    this.lblImpoPago.Text = "El importe restante a redistribuir es: $458215.25";
    this.lblImpoPago.Visible = false;
    this.lblBoleAsoc.AutoSize = false;
    this.lblBoleAsoc.Location = new Point(603, 96 /*0x60*/);
    this.lblBoleAsoc.Name = "lblBoleAsoc";
    this.lblBoleAsoc.Size = new Size(152, 19);
    this.lblBoleAsoc.TabIndex = 22;
    this.lblBoleAsoc.Text = "Otros Boletos Asociados";
    this.lblBoleAsoc.Visible = false;
    this.lblFopaUsada.AutoSize = false;
    this.lblFopaUsada.FontWeight = MetroFontWeight.Bold;
    this.lblFopaUsada.Location = new Point(195, 96 /*0x60*/);
    this.lblFopaUsada.Name = "lblFopaUsada";
    this.lblFopaUsada.Size = new Size(365, 19);
    this.lblFopaUsada.TabIndex = 21;
    this.lblFopaUsada.Text = "Formas de Pago Usadas del Boleto 2023-1254894";
    this.lblFopaUsada.TextAlign = ContentAlignment.MiddleCenter;
    this.lblTipaDisp.AutoSize = false;
    this.lblTipaDisp.Location = new Point(21, 96 /*0x60*/);
    this.lblTipaDisp.Name = "lblTipaDisp";
    this.lblTipaDisp.Size = new Size(149, 19);
    this.lblTipaDisp.TabIndex = 20;
    this.lblTipaDisp.Text = "Tipos Pagos Disponibles";
    this.lblTipaDisp.Visible = false;
    this.lblFaltaPago.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.lblFaltaPago.AutoSize = true;
    this.lblFaltaPago.Font = new Font("Verdana", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.lblFaltaPago.ForeColor = Color.Red;
    this.lblFaltaPago.Location = new Point(399, 284);
    this.lblFaltaPago.Name = "lblFaltaPago";
    this.lblFaltaPago.Size = new Size(15, 16 /*0x10*/);
    this.lblFaltaPago.TabIndex = 19;
    this.lblFaltaPago.Text = "$";
    this.lblFaltaPago.TextAlign = ContentAlignment.MiddleLeft;
    this.lblFaltaPago.Visible = false;
    this.lblFalta.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.lblFalta.AutoSize = true;
    this.lblFalta.Font = new Font("Verdana", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.lblFalta.ForeColor = Color.Red;
    this.lblFalta.Location = new Point(354, 284);
    this.lblFalta.Name = "lblFalta";
    this.lblFalta.Size = new Size(39, 16 /*0x10*/);
    this.lblFalta.TabIndex = 18;
    this.lblFalta.Text = "Falta";
    this.lblFalta.TextAlign = ContentAlignment.MiddleLeft;
    this.lblFalta.Visible = false;
    ((Control) this.gridBoles).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((Control) this.gridBoles).Location = new Point(572, 124);
    this.gridBoles.MainView = (BaseView) this.viewBoles;
    ((Control) this.gridBoles).Name = "gridBoles";
    ((Control) this.gridBoles).Size = new Size(207, 126);
    ((Control) this.gridBoles).TabIndex = 7;
    this.gridBoles.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewBoles
    });
    ((Control) this.gridBoles).Visible = false;
    this.viewBoles.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewBoles.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewBoles).Columns.AddRange(new GridColumn[2]
    {
      this.colNumeBole,
      this.colImpoBole
    });
    this.viewBoles.FocusRectStyle = (DrawFocusRectStyle) 0;
    ((BaseView) this.viewBoles).GridControl = this.gridBoles;
    ((BaseView) this.viewBoles).Name = "viewBoles";
    this.viewBoles.OptionsMenu.EnableColumnMenu = false;
    this.viewBoles.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewBoles.OptionsSelection.EnableAppearanceFocusedRow = false;
    this.viewBoles.OptionsSelection.EnableAppearanceHideSelection = false;
    this.viewBoles.OptionsView.ShowFooter = true;
    this.viewBoles.OptionsView.ShowGroupPanel = false;
    this.viewBoles.OptionsView.ShowIndicator = false;
    this.colNumeBole.Caption = "N° Boleto";
    this.colNumeBole.FieldName = "NumeBole";
    this.colNumeBole.Name = "colNumeBole";
    this.colNumeBole.OptionsColumn.AllowEdit = false;
    this.colNumeBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNumeBole.OptionsColumn.AllowMove = false;
    this.colNumeBole.OptionsColumn.ReadOnly = true;
    this.colNumeBole.Visible = true;
    this.colNumeBole.VisibleIndex = 0;
    this.colNumeBole.Width = 88;
    ((AppearanceOptions) this.colImpoBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImpoBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImpoBole.Caption = "Importe";
    this.colImpoBole.DisplayFormat.FormatString = "C2";
    this.colImpoBole.DisplayFormat.FormatType = (FormatType) 1;
    this.colImpoBole.FieldName = "TotaBole";
    this.colImpoBole.Name = "colImpoBole";
    this.colImpoBole.OptionsColumn.AllowEdit = false;
    this.colImpoBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colImpoBole.OptionsColumn.AllowMove = false;
    this.colImpoBole.OptionsColumn.ReadOnly = true;
    ((GridSummaryItemCollection) this.colImpoBole.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaBole", "Total: {0:C2}")
    });
    this.colImpoBole.Visible = true;
    this.colImpoBole.VisibleIndex = 1;
    this.colImpoBole.Width = 117;
    ((Control) this.gridFopas).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((Control) this.gridFopas).Location = new Point(195, 124);
    this.gridFopas.MainView = (BaseView) this.viewFopas;
    ((Control) this.gridFopas).Name = "gridFopas";
    ((Control) this.gridFopas).Size = new Size(365, 126);
    ((Control) this.gridFopas).TabIndex = 6;
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
    this.viewFopas.OptionsMenu.EnableColumnMenu = false;
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
    this.colCodiTipaFP.Width = 41;
    this.colDetaTipaFP.Caption = "Forma Pago";
    this.colDetaTipaFP.FieldName = "DetaTipa";
    this.colDetaTipaFP.Name = "colDetaTipaFP";
    this.colDetaTipaFP.OptionsColumn.AllowEdit = false;
    this.colDetaTipaFP.OptionsColumn.ReadOnly = true;
    this.colDetaTipaFP.Visible = true;
    this.colDetaTipaFP.VisibleIndex = 1;
    this.colDetaTipaFP.Width = 97;
    this.colNuchFopa.Caption = "Nº Cheque";
    this.colNuchFopa.FieldName = "NuchFopa";
    this.colNuchFopa.Name = "colNuchFopa";
    this.colNuchFopa.UnboundDataType = typeof (long);
    this.colNuchFopa.Visible = true;
    this.colNuchFopa.VisibleIndex = 2;
    this.colNuchFopa.Width = 84;
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
    this.colImpoFopa.Width = 141;
    ((Control) this.gridTipas).Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    ((Control) this.gridTipas).Location = new Point(12, 124);
    this.gridTipas.MainView = (BaseView) this.viewTipas;
    ((Control) this.gridTipas).Name = "gridTipas";
    ((Control) this.gridTipas).Size = new Size(170, 126);
    ((Control) this.gridTipas).TabIndex = 5;
    this.gridTipas.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewTipas
    });
    ((Control) this.gridTipas).Visible = false;
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
    this.viewTipas.OptionsMenu.EnableColumnMenu = false;
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
    this.panDetalle.Controls.Add((Control) this.lblDetalle);
    this.panDetalle.Dock = DockStyle.Top;
    this.panDetalle.Location = new Point(0, 31 /*0x1F*/);
    this.panDetalle.Name = "panDetalle";
    this.panDetalle.Size = new Size(791, 42);
    this.panDetalle.TabIndex = 3;
    this.lblDetalle.AutoSize = false;
    this.lblDetalle.Dock = DockStyle.Fill;
    this.lblDetalle.Location = new Point(0, 0);
    this.lblDetalle.Name = "lblDetalle";
    this.lblDetalle.Size = new Size(791, 42);
    this.lblDetalle.TabIndex = 2;
    this.lblDetalle.Text = "Detalle de la operación";
    this.lblDetalle.TextAlign = ContentAlignment.MiddleLeft;
    this.panTitulo.Controls.Add((Control) this.lblTitulo);
    this.panTitulo.Dock = DockStyle.Top;
    this.panTitulo.Location = new Point(0, 0);
    this.panTitulo.Name = "panTitulo";
    this.panTitulo.Size = new Size(791, 31 /*0x1F*/);
    this.panTitulo.TabIndex = 2;
    this.lblTitulo.AutoSize = false;
    this.lblTitulo.Dock = DockStyle.Fill;
    this.lblTitulo.FontWeight = MetroFontWeight.Bold;
    this.lblTitulo.Location = new Point(0, 0);
    this.lblTitulo.Name = "lblTitulo";
    this.lblTitulo.Size = new Size(791, 31 /*0x1F*/);
    this.lblTitulo.TabIndex = 2;
    this.lblTitulo.Text = "Título del Detalle";
    this.lblTitulo.TextAlign = ContentAlignment.MiddleCenter;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(791, 388);
    this.ControlBox = false;
    this.Controls.Add((Control) this.panCentral);
    this.Controls.Add((Control) this.panMoanBole);
    this.Controls.Add((Control) this.panButtons);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.FixedDialog;
    this.Name = nameof (frmMostrarFopa);
    this.ShowIcon = false;
    this.StartPosition = FormStartPosition.CenterParent;
    this.panButtons.ResumeLayout(false);
    this.panMoanBole.ResumeLayout(false);
    this.panCentral.ResumeLayout(false);
    this.panCentral.PerformLayout();
    ((ISupportInitialize) this.gridBoles).EndInit();
    ((ISupportInitialize) this.viewBoles).EndInit();
    ((ISupportInitialize) this.gridFopas).EndInit();
    ((ISupportInitialize) this.viewFopas).EndInit();
    ((ISupportInitialize) this.gridTipas).EndInit();
    ((ISupportInitialize) this.viewTipas).EndInit();
    this.panDetalle.ResumeLayout(false);
    this.panTitulo.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
