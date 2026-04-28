// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmAforoComeSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
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
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmAforoComeSM : BaseForm
{
  private List<DTOAforo> aforos;
  private List<DetaCuentaCome> detalles;
  private ExpAforoComeSM exp;
  private DateTime hoy;
  private IContainer components = (IContainer) null;
  private MetroPanel panPrincipal;
  private MetroPanel panSuperior;
  private MetroPanel panCentral;
  private MetroPanel panInferior;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroEntityBox mebCuenta;
  private MetroLabel metroLabel3;
  private MetroDateTextBox dtbFecha;
  private MetroButton btnBuscar;
  private MetroLabel lblDomiCome;
  private MetroPanel metroPanel2;
  private GridControl gridCuenta;
  private GridView viewCuenta;
  private GridColumn colOfic;
  private GridColumn colCuenta;
  private GridColumn colPeriodo;
  private GridColumn colBoleto;
  private GridColumn colEmision;
  private GridColumn colVenc;
  private GridColumn conConcepto;
  private GridColumn colFaci;
  private GridColumn colApre;
  private GridColumn colExpeComp;
  private GridColumn colTipoMov;
  private GridColumn colDebito;
  private GridColumn colReca;
  private GridColumn colSaldo;
  private MetroPanel metroPanel1;
  private MetroLabel metroLabel7;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroTextBox txtTotal;
  private MetroTextBox txtApre;
  private MetroTextBox txtDerecho;
  private MetroTextBox txtRecargo;
  private MetroPanel panInfSupe;
  private MetroPanel panInfIzq;
  private MetroPanel panIISup;
  private MetroPanel panInfDer;
  private MetroPanel metroPanel3;
  private GridControl gridAforos;
  private GridView viewAforos;
  private GridColumn colCant;
  private GridColumn colCodigo;
  private GridColumn colDeta;
  private GridColumn colValor;
  private GridColumn colTotal;
  private MetroLabel metroLabel8;
  private MetroLabel metroLabel11;
  private MetroIntTextBox mibPeriodo;
  private MetroLabel metroLabel10;
  private MetroDateTextBox dtbFeve;
  private MetroLabel metroLabel9;
  private MetroIntTextBox mibPeriBime;
  private MetroLabel metroLabel12;
  private MetroTextBox txtExpe;
  private MetroCheckBox chkDesc;
  private MetroDecimalTextBox mdbDesc;
  private MetroLabel metroLabel13;
  private MetroDecimalTextBox mdbTotaDesc;
  private MetroLabel metroLabel14;
  private MetroTextBox txtDetalle;
  private MetroComboBox cboEmite;
  private MetroLabel metroLabel15;
  private MetroButton btnGenerar;
  private GridColumn colUM;

  public frmAforoComeSM()
  {
    this.InitializeComponent();
    this.aforos = new List<DTOAforo>();
    this.exp = new ExpAforoComeSM();
    this.detalles = new List<DetaCuentaCome>();
    this.mebCuenta.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuenta);
    this.mebCuenta.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuenta);
    this.hoy = Misc.Now();
    this.gridCuenta.DataSource = (object) this.detalles;
    this.gridAforos.DataSource = (object) this.aforos;
    this.CargarEmite();
    this.LimpiarCampos();
  }

  private void LimpiarCampos(bool BorraEnti = true)
  {
    if (BorraEnti)
      this.mebCuenta.Entity = (Entity) null;
    this.dtbFecha.Date = this.dtbFeve.Date = this.hoy;
    this.mibPeriodo.IntText = this.hoy.Year;
    this.mibPeriBime.IntText = this.hoy.Month;
    this.cboEmite.SelectedIndex = 1;
    this.detalles.Clear();
    this.gridCuenta.RefreshDataSource();
    this.aforos.Clear();
    this.gridAforos.RefreshDataSource();
    this.lblDomiCome.Text = this.txtDetalle.Text = this.txtExpe.Text = string.Empty;
    this.CalcularTotales();
  }

  private void CalcularTotales()
  {
    this.txtApre.Text = $"{0:C2}";
    this.txtDerecho.Text = this.detalles.Sum<DetaCuentaCome>((Func<DetaCuentaCome, Decimal>) (x => x.Debito)).ToString("C2");
    this.txtRecargo.Text = this.detalles.Sum<DetaCuentaCome>((Func<DetaCuentaCome, Decimal>) (x => x.Recargo)).ToString("C2");
    this.txtTotal.Text = this.detalles.Sum<DetaCuentaCome>((Func<DetaCuentaCome, Decimal>) (x => x.Saldo)).ToString("C2");
  }

  private bool ValidarDatos()
  {
    List<string> er = new List<string>();
    if (this.mebCuenta.Entity == null)
      er.Add("No hay una cuenta seleccionada.");
    if (this.dtbFeve.Date == DateTime.MinValue)
      er.Add("Fecha de vencimiento incorrecta.");
    if (this.mibPeriodo.IntText < 1900 || this.mibPeriodo.IntText > 2099)
      er.Add("Periodo incorrecto.");
    if (this.mibPeriBime.IntText < 1 || this.mibPeriBime.IntText > 12)
      er.Add("Bimestre incorrecto.");
    if (this.dtbFeve.Date.Year != this.mibPeriodo.IntText)
      er.Add("El periodo y la fecha no coinciden.");
    if (this.txtExpe.Text.Trim().Length > 15)
      er.Add("El detalle de expediente debe ser menor.");
    if (this.aforos.Count == 0)
      er.Add("No hay ningún servicio cargado.");
    else if (this.aforos.Sum<DTOAforo>((Func<DTOAforo, Decimal>) (x => x.Total)) <= 0M)
      er.Add("El importe de los aforos debe ser mayor \na 0.");
    this.aforos.ForEach((Action<DTOAforo>) (x =>
    {
      if (!(x.Total <= 0M))
        return;
      er.Add($"El aforo \"{x.Codigo}\" no puede tener \nimporte 0.");
    }));
    if (string.IsNullOrEmpty(this.txtDetalle.Text.Trim()))
      er.Add("Debe ingresar un detalle.");
    if (er.Count <= 0)
      return true;
    new dlgErrorList((Form) this).mostarError(er);
    return false;
  }

  private void CargarEmite()
  {
    this.cboEmite.Items.Clear();
    this.cboEmite.DisplayMember = "Text";
    this.cboEmite.ValueMember = "Value";
    this.cboEmite.Items.Add((object) new ComboBoxItem("OTROS RECAUDADORES", (object) 0));
    this.cboEmite.Items.Add((object) new ComboBoxItem("CAJA MUNICIPAL", (object) 1));
    this.cboEmite.SelectedIndex = 1;
  }

  private void viewAforos_KeyUp(object sender, KeyEventArgs e)
  {
    try
    {
      if (e.KeyValue == 107)
      {
        string servicios = string.Empty;
        if (this.aforos.Count > 0)
        {
          short num = 0;
          foreach (DTOAforo aforo in this.aforos)
          {
            ++num;
            servicios = (int) num != this.aforos.Count ? servicios + $"'{aforo.Codigo}'," : servicios + $"'{aforo.Codigo}'";
          }
        }
        dlgCargaAforoSM dlgCargaAforoSm = new dlgCargaAforoSM(servicios, this.dtbFeve.Date);
        if (dlgCargaAforoSm.ShowDialog((IWin32Window) this) == DialogResult.OK)
        {
          this.aforos.Add(dlgCargaAforoSm.enti);
          this.gridAforos.RefreshDataSource();
        }
        dlgCargaAforoSm.Dispose();
      }
      else
      {
        if (e.KeyValue != 46 || this.aforos.Count <= 0)
          return;
        int[] selectedRows = ((ColumnView) this.viewAforos).GetSelectedRows();
        if (selectedRows != null && selectedRows.Length == 1 && selectedRows[0] >= 0)
        {
          this.aforos.RemoveAt(((ColumnView) this.viewAforos).FocusedRowHandle);
          this.gridAforos.RefreshDataSource();
        }
      }
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
    }
  }

  private void frmAforoComeSM_Shown(object sender, EventArgs e) => this.mebCuenta.Focus();

  private void mebCuenta_EntityChangedDone(object source, EntityChangedEventArgs e)
  {
    this.LimpiarCampos(false);
    if (this.mebCuenta.Entity != null)
    {
      this.lblDomiCome.Text = ((CuentaCome) this.mebCuenta.Entity).DireCome;
      this.btnBuscar.Enabled = this.panInferior.Enabled = true;
    }
    else
      this.btnBuscar.Enabled = this.panInferior.Enabled = false;
  }

  private void btnBuscar_Click(object sender, EventArgs e)
  {
    if (this.mebCuenta.Entity != null && this.dtbFecha.Date != DateTime.MinValue)
    {
      this.detalles.Clear();
      this.detalles = this.exp.ObtenerDetallesCuenta(((CuentaCome) this.mebCuenta.Entity).CodiCome, this.dtbFecha.Date);
      this.gridCuenta.DataSource = (object) this.detalles;
      this.gridCuenta.RefreshDataSource();
      this.CalcularTotales();
    }
    else
      this.LimpiarCampos(false);
  }

  private void btnGenerar_Click(object sender, EventArgs e)
  {
    try
    {
      if (!this.ValidarDatos())
        return;
      if (this.exp.CargarAforo(new DTOCargaAforo()
      {
        CodiCome = ((CuentaCome) this.mebCuenta.Entity).CodiCome,
        FeveAforo = this.dtbFeve.Date,
        Periodo = this.mibPeriodo.IntText,
        Bimestre = this.mibPeriBime.IntText,
        ExpeAforo = this.txtExpe.Text.Trim(),
        DetaAforo = this.txtDetalle.Text.Trim(),
        EmiteAforo = (int) ((ComboBoxItem) this.cboEmite.SelectedItem).Value,
        aforos = this.aforos.Where<DTOAforo>((Func<DTOAforo, bool>) (x => x.Total > 0M)).ToList<DTOAforo>()
      }))
      {
        DateTime date = this.dtbFecha.Date;
        this.LimpiarCampos(false);
        this.dtbFecha.Date = date;
        this.detalles = this.exp.ObtenerDetallesCuenta(((CuentaCome) this.mebCuenta.Entity).CodiCome, this.dtbFecha.Date);
        this.gridCuenta.DataSource = (object) this.detalles;
        this.gridCuenta.RefreshDataSource();
        new frmMensaje((Form) this).mostrarConfirmación("Aforo cargado correctamente.");
      }
      else
        new frmMensaje((Form) this).mostrarError("No se pudieron guardar los datos. Verificar...");
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError("No se pudieron guardar los datos. Error: " + ex.Message);
    }
  }

  private void dtbFeve_Leave(object sender, EventArgs e)
  {
    if (!(this.dtbFeve.Date == DateTime.MinValue) && !(this.dtbFeve.Date < new DateTime(1900, 1, 1)))
      return;
    this.dtbFeve.Date = this.hoy;
  }

  private void dtbFeve_TextChanged(object sender, EventArgs e)
  {
    this.aforos.Clear();
    this.gridAforos.RefreshDataSource();
  }

  private Entity BuscarCuenta(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCome", "Código", FilterMode.Equal, text));
    else if (!string.IsNullOrEmpty(text.Trim()))
      filter.Items.Add(new FilterItem("DetaPers", "Titular", FilterMode.Contains, text));
    return (Entity) this.EM.Search<CuentaCome>(filter, true);
  }

  private Entity EncontrarCuenta(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCome", "Código", FilterMode.Equal, text));
    else if (!string.IsNullOrEmpty(text.Trim()))
      filter.Items.Add(new FilterItem("DetaPers", "Titular", FilterMode.Contains, text));
    return (Entity) this.EM.Find<CuentaCome>(filter, true, true);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.panPrincipal = new MetroPanel();
    this.panCentral = new MetroPanel();
    this.metroPanel2 = new MetroPanel();
    this.gridCuenta = new GridControl();
    this.viewCuenta = new GridView();
    this.colOfic = new GridColumn();
    this.colCuenta = new GridColumn();
    this.colPeriodo = new GridColumn();
    this.colBoleto = new GridColumn();
    this.colEmision = new GridColumn();
    this.colVenc = new GridColumn();
    this.conConcepto = new GridColumn();
    this.colFaci = new GridColumn();
    this.colApre = new GridColumn();
    this.colExpeComp = new GridColumn();
    this.colTipoMov = new GridColumn();
    this.colDebito = new GridColumn();
    this.colReca = new GridColumn();
    this.colSaldo = new GridColumn();
    this.metroPanel1 = new MetroPanel();
    this.txtApre = new MetroTextBox();
    this.txtDerecho = new MetroTextBox();
    this.txtRecargo = new MetroTextBox();
    this.txtTotal = new MetroTextBox();
    this.metroLabel7 = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.panInferior = new MetroPanel();
    this.panInfDer = new MetroPanel();
    this.btnGenerar = new MetroButton();
    this.cboEmite = new MetroComboBox();
    this.metroLabel15 = new MetroLabel();
    this.txtDetalle = new MetroTextBox();
    this.metroLabel14 = new MetroLabel();
    this.panInfIzq = new MetroPanel();
    this.gridAforos = new GridControl();
    this.viewAforos = new GridView();
    this.colCant = new GridColumn();
    this.colCodigo = new GridColumn();
    this.colDeta = new GridColumn();
    this.colValor = new GridColumn();
    this.colUM = new GridColumn();
    this.colTotal = new GridColumn();
    this.metroPanel3 = new MetroPanel();
    this.metroLabel13 = new MetroLabel();
    this.chkDesc = new MetroCheckBox();
    this.mdbTotaDesc = new MetroDecimalTextBox();
    this.mdbDesc = new MetroDecimalTextBox();
    this.panIISup = new MetroPanel();
    this.metroLabel8 = new MetroLabel();
    this.panInfSupe = new MetroPanel();
    this.txtExpe = new MetroTextBox();
    this.metroLabel12 = new MetroLabel();
    this.mibPeriBime = new MetroIntTextBox();
    this.metroLabel11 = new MetroLabel();
    this.mibPeriodo = new MetroIntTextBox();
    this.metroLabel10 = new MetroLabel();
    this.dtbFeve = new MetroDateTextBox();
    this.metroLabel9 = new MetroLabel();
    this.panSuperior = new MetroPanel();
    this.lblDomiCome = new MetroLabel();
    this.btnBuscar = new MetroButton();
    this.dtbFecha = new MetroDateTextBox();
    this.metroLabel3 = new MetroLabel();
    this.mebCuenta = new MetroEntityBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.panPrincipal.SuspendLayout();
    this.panCentral.SuspendLayout();
    this.metroPanel2.SuspendLayout();
    ((ISupportInitialize) this.gridCuenta).BeginInit();
    ((ISupportInitialize) this.viewCuenta).BeginInit();
    this.metroPanel1.SuspendLayout();
    this.panInferior.SuspendLayout();
    this.panInfDer.SuspendLayout();
    this.panInfIzq.SuspendLayout();
    ((ISupportInitialize) this.gridAforos).BeginInit();
    ((ISupportInitialize) this.viewAforos).BeginInit();
    this.metroPanel3.SuspendLayout();
    this.panIISup.SuspendLayout();
    this.panInfSupe.SuspendLayout();
    this.panSuperior.SuspendLayout();
    this.SuspendLayout();
    this.panPrincipal.Controls.Add((Control) this.panCentral);
    this.panPrincipal.Controls.Add((Control) this.panInferior);
    this.panPrincipal.Controls.Add((Control) this.panSuperior);
    this.panPrincipal.Dock = DockStyle.Fill;
    this.panPrincipal.Location = new Point(0, 0);
    this.panPrincipal.Name = "panPrincipal";
    this.panPrincipal.Size = new Size(1344, 729);
    this.panPrincipal.TabIndex = 0;
    this.panCentral.Controls.Add((Control) this.metroPanel2);
    this.panCentral.Controls.Add((Control) this.metroPanel1);
    this.panCentral.Dock = DockStyle.Fill;
    this.panCentral.Location = new Point(0, 109);
    this.panCentral.Name = "panCentral";
    this.panCentral.Size = new Size(1344, 286);
    this.panCentral.TabIndex = 4;
    this.metroPanel2.Controls.Add((Control) this.gridCuenta);
    this.metroPanel2.Dock = DockStyle.Fill;
    this.metroPanel2.Location = new Point(0, 0);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.Size = new Size(1344, 246);
    this.metroPanel2.TabIndex = 3;
    ((Control) this.gridCuenta).Dock = DockStyle.Fill;
    ((Control) this.gridCuenta).Location = new Point(0, 0);
    this.gridCuenta.MainView = (BaseView) this.viewCuenta;
    ((Control) this.gridCuenta).Name = "gridCuenta";
    ((Control) this.gridCuenta).Size = new Size(1344, 246);
    ((Control) this.gridCuenta).TabIndex = 5;
    ((Control) this.gridCuenta).TabStop = false;
    this.gridCuenta.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewCuenta
    });
    this.viewCuenta.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewCuenta.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewCuenta).Columns.AddRange(new GridColumn[14]
    {
      this.colOfic,
      this.colCuenta,
      this.colPeriodo,
      this.colBoleto,
      this.colEmision,
      this.colVenc,
      this.conConcepto,
      this.colFaci,
      this.colApre,
      this.colExpeComp,
      this.colTipoMov,
      this.colDebito,
      this.colReca,
      this.colSaldo
    });
    this.viewCuenta.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.viewCuenta).GridControl = this.gridCuenta;
    ((BaseView) this.viewCuenta).Name = "viewCuenta";
    ((ColumnViewOptionsBehavior) this.viewCuenta.OptionsBehavior).ReadOnly = true;
    this.viewCuenta.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewCuenta.OptionsSelection.EnableAppearanceHideSelection = false;
    this.viewCuenta.OptionsSelection.UseIndicatorForSelection = false;
    this.viewCuenta.OptionsView.ShowGroupPanel = false;
    this.viewCuenta.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colOfic.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colOfic.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colOfic.Caption = "Oficina";
    this.colOfic.FieldName = "Oficina";
    this.colOfic.MaxWidth = 70;
    this.colOfic.Name = "colOfic";
    this.colOfic.OptionsColumn.AllowEdit = false;
    this.colOfic.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colOfic.OptionsColumn.AllowMove = false;
    this.colOfic.OptionsColumn.ReadOnly = true;
    this.colOfic.Visible = true;
    this.colOfic.VisibleIndex = 0;
    this.colOfic.Width = 69;
    ((AppearanceOptions) this.colCuenta.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuenta.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuenta.Caption = "Cuenta";
    this.colCuenta.FieldName = "Cuenta";
    this.colCuenta.MaxWidth = 100;
    this.colCuenta.Name = "colCuenta";
    this.colCuenta.OptionsColumn.AllowEdit = false;
    this.colCuenta.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCuenta.OptionsColumn.AllowMove = false;
    this.colCuenta.OptionsColumn.ReadOnly = true;
    this.colCuenta.Visible = true;
    this.colCuenta.VisibleIndex = 1;
    this.colCuenta.Width = 99;
    ((AppearanceOptions) this.colPeriodo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeriodo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeriodo.Caption = "Periodo";
    this.colPeriodo.FieldName = "Periodo";
    this.colPeriodo.MaxWidth = 60;
    this.colPeriodo.Name = "colPeriodo";
    this.colPeriodo.OptionsColumn.AllowEdit = false;
    this.colPeriodo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeriodo.OptionsColumn.AllowMove = false;
    this.colPeriodo.OptionsColumn.ReadOnly = true;
    this.colPeriodo.Visible = true;
    this.colPeriodo.VisibleIndex = 2;
    this.colPeriodo.Width = 59;
    ((AppearanceOptions) this.colBoleto.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colBoleto.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colBoleto.Caption = "Boleto";
    this.colBoleto.FieldName = "Boleto";
    this.colBoleto.MaxWidth = 100;
    this.colBoleto.Name = "colBoleto";
    this.colBoleto.OptionsColumn.AllowEdit = false;
    this.colBoleto.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colBoleto.OptionsColumn.AllowMove = false;
    this.colBoleto.OptionsColumn.ReadOnly = true;
    this.colBoleto.Visible = true;
    this.colBoleto.VisibleIndex = 3;
    this.colBoleto.Width = 99;
    ((AppearanceOptions) this.colEmision.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colEmision.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colEmision.Caption = "Emisión";
    this.colEmision.FieldName = "FechaEmisionStr";
    this.colEmision.MaxWidth = 100;
    this.colEmision.Name = "colEmision";
    this.colEmision.OptionsColumn.AllowEdit = false;
    this.colEmision.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colEmision.OptionsColumn.AllowMove = false;
    this.colEmision.OptionsColumn.ReadOnly = true;
    this.colEmision.Visible = true;
    this.colEmision.VisibleIndex = 4;
    this.colEmision.Width = 100;
    ((AppearanceOptions) this.colVenc.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colVenc.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colVenc.Caption = "Vencimiento";
    this.colVenc.FieldName = "FechaVencimientoStr";
    this.colVenc.MaxWidth = 100;
    this.colVenc.Name = "colVenc";
    this.colVenc.OptionsColumn.AllowEdit = false;
    this.colVenc.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colVenc.OptionsColumn.AllowMove = false;
    this.colVenc.OptionsColumn.ReadOnly = true;
    this.colVenc.Visible = true;
    this.colVenc.VisibleIndex = 5;
    this.colVenc.Width = 99;
    this.conConcepto.Caption = "Concepto";
    this.conConcepto.FieldName = "Concepto";
    this.conConcepto.MaxWidth = 100;
    this.conConcepto.Name = "conConcepto";
    this.conConcepto.OptionsColumn.AllowEdit = false;
    this.conConcepto.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.conConcepto.OptionsColumn.AllowMove = false;
    this.conConcepto.OptionsColumn.ReadOnly = true;
    this.conConcepto.Visible = true;
    this.conConcepto.VisibleIndex = 6;
    this.conConcepto.Width = 67;
    ((AppearanceOptions) this.colFaci.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFaci.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFaci.Caption = "Facilidad";
    this.colFaci.FieldName = "Facilidad";
    this.colFaci.MaxWidth = 75;
    this.colFaci.Name = "colFaci";
    this.colFaci.OptionsColumn.AllowEdit = false;
    this.colFaci.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colFaci.OptionsColumn.AllowMove = false;
    this.colFaci.OptionsColumn.ReadOnly = true;
    this.colFaci.Visible = true;
    this.colFaci.VisibleIndex = 7;
    this.colFaci.Width = 67;
    ((AppearanceOptions) this.colApre.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colApre.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colApre.Caption = "Apremio";
    this.colApre.FieldName = "Apremio";
    this.colApre.MaxWidth = 75;
    this.colApre.Name = "colApre";
    this.colApre.OptionsColumn.AllowEdit = false;
    this.colApre.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colApre.OptionsColumn.AllowMove = false;
    this.colApre.OptionsColumn.ReadOnly = true;
    this.colApre.Visible = true;
    this.colApre.VisibleIndex = 8;
    this.colApre.Width = 67;
    this.colExpeComp.Caption = "Expte/Comp.";
    this.colExpeComp.FieldName = "ExpeComp";
    this.colExpeComp.Name = "colExpeComp";
    this.colExpeComp.OptionsColumn.AllowEdit = false;
    this.colExpeComp.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colExpeComp.OptionsColumn.AllowMove = false;
    this.colExpeComp.OptionsColumn.ReadOnly = true;
    this.colExpeComp.Visible = true;
    this.colExpeComp.VisibleIndex = 9;
    this.colExpeComp.Width = 342;
    ((AppearanceOptions) this.colTipoMov.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTipoMov.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colTipoMov.Caption = "Tipo Mov.";
    this.colTipoMov.FieldName = "TipoMovi";
    this.colTipoMov.MaxWidth = 75;
    this.colTipoMov.Name = "colTipoMov";
    this.colTipoMov.OptionsColumn.AllowEdit = false;
    this.colTipoMov.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colTipoMov.OptionsColumn.AllowMove = false;
    this.colTipoMov.OptionsColumn.ReadOnly = true;
    this.colTipoMov.Visible = true;
    this.colTipoMov.VisibleIndex = 10;
    this.colTipoMov.Width = 67;
    ((AppearanceOptions) this.colDebito.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDebito.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDebito.Caption = "Débito";
    this.colDebito.DisplayFormat.FormatString = "C2";
    this.colDebito.DisplayFormat.FormatType = (FormatType) 1;
    this.colDebito.FieldName = "Debito";
    this.colDebito.MaxWidth = 75;
    this.colDebito.Name = "colDebito";
    this.colDebito.OptionsColumn.AllowEdit = false;
    this.colDebito.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDebito.OptionsColumn.AllowMove = false;
    this.colDebito.OptionsColumn.ReadOnly = true;
    this.colDebito.Visible = true;
    this.colDebito.VisibleIndex = 11;
    this.colDebito.Width = 68;
    ((AppearanceOptions) this.colReca.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colReca.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colReca.Caption = "Recargo";
    this.colReca.DisplayFormat.FormatString = "C2";
    this.colReca.DisplayFormat.FormatType = (FormatType) 1;
    this.colReca.FieldName = "Recargo";
    this.colReca.MaxWidth = 75;
    this.colReca.Name = "colReca";
    this.colReca.OptionsColumn.AllowEdit = false;
    this.colReca.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colReca.OptionsColumn.AllowMove = false;
    this.colReca.OptionsColumn.ReadOnly = true;
    this.colReca.Visible = true;
    this.colReca.VisibleIndex = 12;
    this.colReca.Width = 68;
    ((AppearanceOptions) this.colSaldo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colSaldo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colSaldo.Caption = "Saldo";
    this.colSaldo.DisplayFormat.FormatString = "C2";
    this.colSaldo.DisplayFormat.FormatType = (FormatType) 1;
    this.colSaldo.FieldName = "Saldo";
    this.colSaldo.MaxWidth = 75;
    this.colSaldo.Name = "colSaldo";
    this.colSaldo.OptionsColumn.AllowEdit = false;
    this.colSaldo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colSaldo.OptionsColumn.AllowMove = false;
    this.colSaldo.OptionsColumn.ReadOnly = true;
    this.colSaldo.Visible = true;
    this.colSaldo.VisibleIndex = 13;
    this.colSaldo.Width = 71;
    this.metroPanel1.Controls.Add((Control) this.txtApre);
    this.metroPanel1.Controls.Add((Control) this.txtDerecho);
    this.metroPanel1.Controls.Add((Control) this.txtRecargo);
    this.metroPanel1.Controls.Add((Control) this.txtTotal);
    this.metroPanel1.Controls.Add((Control) this.metroLabel7);
    this.metroPanel1.Controls.Add((Control) this.metroLabel6);
    this.metroPanel1.Controls.Add((Control) this.metroLabel5);
    this.metroPanel1.Controls.Add((Control) this.metroLabel4);
    this.metroPanel1.Dock = DockStyle.Bottom;
    this.metroPanel1.Location = new Point(0, 246);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(1344, 40);
    this.metroPanel1.TabIndex = 2;
    this.txtApre.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.txtApre.Enabled = false;
    this.txtApre.Location = new Point(533, 11);
    this.txtApre.Name = "txtApre";
    this.txtApre.Size = new Size(108, 23);
    this.txtApre.TabIndex = 9;
    this.txtApre.TabStop = false;
    this.txtApre.TextAlign = HorizontalAlignment.Right;
    this.txtApre.Visible = false;
    this.txtDerecho.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.txtDerecho.Enabled = false;
    this.txtDerecho.Location = new Point(781, 11);
    this.txtDerecho.Name = "txtDerecho";
    this.txtDerecho.Size = new Size(108, 23);
    this.txtDerecho.TabIndex = 8;
    this.txtDerecho.TabStop = false;
    this.txtDerecho.TextAlign = HorizontalAlignment.Right;
    this.txtRecargo.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.txtRecargo.Enabled = false;
    this.txtRecargo.Location = new Point(1021, 11);
    this.txtRecargo.Name = "txtRecargo";
    this.txtRecargo.Size = new Size(108, 23);
    this.txtRecargo.TabIndex = 7;
    this.txtRecargo.TabStop = false;
    this.txtRecargo.TextAlign = HorizontalAlignment.Right;
    this.txtTotal.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.txtTotal.Enabled = false;
    this.txtTotal.Location = new Point(1221, 11);
    this.txtTotal.Name = "txtTotal";
    this.txtTotal.Size = new Size(108, 23);
    this.txtTotal.TabIndex = 6;
    this.txtTotal.TabStop = false;
    this.txtTotal.TextAlign = HorizontalAlignment.Right;
    this.metroLabel7.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(1161, 12);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(48 /*0x30*/, 19);
    this.metroLabel7.TabIndex = 5;
    this.metroLabel7.Text = "TOTAL:";
    this.metroLabel6.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(919, 13);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(92, 19);
    this.metroLabel6.TabIndex = 4;
    this.metroLabel6.Text = "Total Recargo:";
    this.metroLabel5.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(679, 13);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(92, 19);
    this.metroLabel5.TabIndex = 3;
    this.metroLabel5.Text = "Total Derecho:";
    this.metroLabel4.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(428, 13);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(95, 19);
    this.metroLabel4.TabIndex = 2;
    this.metroLabel4.Text = "Total Apremio:";
    this.metroLabel4.Visible = false;
    this.panInferior.Controls.Add((Control) this.panInfDer);
    this.panInferior.Controls.Add((Control) this.panInfIzq);
    this.panInferior.Controls.Add((Control) this.panInfSupe);
    this.panInferior.Dock = DockStyle.Bottom;
    this.panInferior.Enabled = false;
    this.panInferior.Location = new Point(0, 395);
    this.panInferior.Name = "panInferior";
    this.panInferior.Size = new Size(1344, 334);
    this.panInferior.TabIndex = 3;
    this.panInfDer.Controls.Add((Control) this.btnGenerar);
    this.panInfDer.Controls.Add((Control) this.cboEmite);
    this.panInfDer.Controls.Add((Control) this.metroLabel15);
    this.panInfDer.Controls.Add((Control) this.txtDetalle);
    this.panInfDer.Controls.Add((Control) this.metroLabel14);
    this.panInfDer.Dock = DockStyle.Fill;
    this.panInfDer.Location = new Point(641, 40);
    this.panInfDer.Name = "panInfDer";
    this.panInfDer.Size = new Size(703, 294);
    this.panInfDer.TabIndex = 4;
    this.btnGenerar.Location = new Point(128 /*0x80*/, 258);
    this.btnGenerar.Name = "btnGenerar";
    this.btnGenerar.Size = new Size(179, 23);
    this.btnGenerar.TabIndex = 13;
    this.btnGenerar.Text = "CONFIRMAR";
    this.btnGenerar.Click += new EventHandler(this.btnGenerar_Click);
    this.cboEmite.Enabled = false;
    this.cboEmite.FormattingEnabled = false;
    this.cboEmite.ItemHeight = 15;
    this.cboEmite.Location = new Point(128 /*0x80*/, 223);
    this.cboEmite.Name = "cboEmite";
    this.cboEmite.Size = new Size(179, 21);
    this.cboEmite.TabIndex = 12;
    this.cboEmite.Visible = false;
    this.metroLabel15.AutoSize = false;
    this.metroLabel15.Enabled = false;
    this.metroLabel15.Location = new Point(22, 223);
    this.metroLabel15.Name = "metroLabel15";
    this.metroLabel15.Size = new Size(94, 19);
    this.metroLabel15.TabIndex = 12;
    this.metroLabel15.Text = "Se emite para:";
    this.metroLabel15.Visible = false;
    this.txtDetalle.Location = new Point(22, 71);
    this.txtDetalle.MaxLength = 100;
    this.txtDetalle.Multiline = true;
    this.txtDetalle.Name = "txtDetalle";
    this.txtDetalle.Size = new Size(443, 132);
    this.txtDetalle.TabIndex = 11;
    this.metroLabel14.AutoSize = false;
    this.metroLabel14.Location = new Point(22, 40);
    this.metroLabel14.Name = "metroLabel14";
    this.metroLabel14.Size = new Size(116, 19);
    this.metroLabel14.TabIndex = 10;
    this.metroLabel14.Text = "Detalle del Boleto:";
    this.panInfIzq.Controls.Add((Control) this.gridAforos);
    this.panInfIzq.Controls.Add((Control) this.metroPanel3);
    this.panInfIzq.Controls.Add((Control) this.panIISup);
    this.panInfIzq.Dock = DockStyle.Left;
    this.panInfIzq.Location = new Point(0, 40);
    this.panInfIzq.Name = "panInfIzq";
    this.panInfIzq.Size = new Size(641, 294);
    this.panInfIzq.TabIndex = 3;
    ((Control) this.gridAforos).Dock = DockStyle.Fill;
    ((Control) this.gridAforos).Location = new Point(0, 40);
    this.gridAforos.MainView = (BaseView) this.viewAforos;
    ((Control) this.gridAforos).Name = "gridAforos";
    ((Control) this.gridAforos).Size = new Size(641, 183);
    ((Control) this.gridAforos).TabIndex = 8;
    this.gridAforos.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewAforos
    });
    this.viewAforos.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewAforos.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewAforos).Columns.AddRange(new GridColumn[6]
    {
      this.colCant,
      this.colCodigo,
      this.colDeta,
      this.colValor,
      this.colUM,
      this.colTotal
    });
    this.viewAforos.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.viewAforos).GridControl = this.gridAforos;
    ((BaseView) this.viewAforos).Name = "viewAforos";
    ((ColumnViewOptionsBehavior) this.viewAforos.OptionsBehavior).FocusLeaveOnTab = true;
    this.viewAforos.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewAforos.OptionsSelection.EnableAppearanceHideSelection = false;
    this.viewAforos.OptionsSelection.UseIndicatorForSelection = false;
    this.viewAforos.OptionsView.ShowFooter = true;
    this.viewAforos.OptionsView.ShowGroupPanel = false;
    this.viewAforos.OptionsView.ShowIndicator = false;
    ((BaseView) this.viewAforos).KeyUp += new KeyEventHandler(this.viewAforos_KeyUp);
    this.colCant.Caption = "Cantidad";
    this.colCant.FieldName = "Cantidad";
    this.colCant.MaxWidth = 75;
    this.colCant.Name = "colCant";
    this.colCant.OptionsColumn.AllowEdit = false;
    this.colCant.Visible = true;
    this.colCant.VisibleIndex = 0;
    this.colCodigo.Caption = "Código";
    this.colCodigo.FieldName = "Codigo";
    this.colCodigo.MaxWidth = 100;
    this.colCodigo.Name = "colCodigo";
    this.colCodigo.OptionsColumn.AllowEdit = false;
    this.colCodigo.Visible = true;
    this.colCodigo.VisibleIndex = 1;
    this.colDeta.Caption = "Detalle";
    this.colDeta.FieldName = "Detalle";
    this.colDeta.Name = "colDeta";
    this.colDeta.OptionsColumn.AllowEdit = false;
    this.colDeta.Visible = true;
    this.colDeta.VisibleIndex = 2;
    ((AppearanceOptions) this.colValor.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colValor.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colValor.Caption = "Valor";
    this.colValor.DisplayFormat.FormatString = "{0:D2}";
    this.colValor.DisplayFormat.FormatType = (FormatType) 3;
    this.colValor.FieldName = "Valor";
    this.colValor.MaxWidth = 75;
    this.colValor.Name = "colValor";
    this.colValor.OptionsColumn.AllowEdit = false;
    this.colValor.Visible = true;
    this.colValor.VisibleIndex = 3;
    ((AppearanceOptions) this.colUM.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colUM.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colUM.Caption = "U.M.";
    this.colUM.FieldName = "UnidadMedida";
    this.colUM.MaxWidth = 60;
    this.colUM.Name = "colUM";
    this.colUM.OptionsColumn.AllowEdit = false;
    this.colUM.Visible = true;
    this.colUM.VisibleIndex = 4;
    this.colUM.Width = 50;
    ((AppearanceOptions) this.colTotal.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotal.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotal.Caption = "TOTAL";
    this.colTotal.DisplayFormat.FormatString = "{0:C2}";
    this.colTotal.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotal.FieldName = "Total";
    this.colTotal.MaxWidth = 90;
    this.colTotal.Name = "colTotal";
    this.colTotal.OptionsColumn.AllowEdit = false;
    ((GridSummaryItemCollection) this.colTotal.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "Total", "{0:C2}")
    });
    this.colTotal.Visible = true;
    this.colTotal.VisibleIndex = 5;
    this.metroPanel3.Controls.Add((Control) this.metroLabel13);
    this.metroPanel3.Controls.Add((Control) this.chkDesc);
    this.metroPanel3.Controls.Add((Control) this.mdbTotaDesc);
    this.metroPanel3.Controls.Add((Control) this.mdbDesc);
    this.metroPanel3.Dock = DockStyle.Bottom;
    this.metroPanel3.Location = new Point(0, 223);
    this.metroPanel3.Name = "metroPanel3";
    this.metroPanel3.Size = new Size(641, 71);
    this.metroPanel3.TabIndex = 3;
    this.metroLabel13.AutoSize = false;
    this.metroLabel13.Enabled = false;
    this.metroLabel13.FontSize = 13f;
    this.metroLabel13.FontWeight = MetroFontWeight.Bold;
    this.metroLabel13.Location = new Point(423, 41);
    this.metroLabel13.Name = "metroLabel13";
    this.metroLabel13.Size = new Size(111, 17);
    this.metroLabel13.TabIndex = 5;
    this.metroLabel13.Text = "TOTAL con Desc.";
    this.metroLabel13.Visible = false;
    this.chkDesc.AutoSize = false;
    this.chkDesc.Enabled = false;
    this.chkDesc.Location = new Point(424, 9);
    this.chkDesc.Name = "chkDesc";
    this.chkDesc.Size = new Size(113, 19);
    this.chkDesc.TabIndex = 9;
    this.chkDesc.Text = "Con Descuento";
    this.chkDesc.Visible = false;
    this.mdbTotaDesc.Enabled = false;
    this.mdbTotaDesc.Location = new Point(540, 40);
    this.mdbTotaDesc.MaxLength = 10;
    this.mdbTotaDesc.Name = "mdbTotaDesc";
    this.mdbTotaDesc.Size = new Size(92, 23);
    this.mdbTotaDesc.TabIndex = 4;
    this.mdbTotaDesc.Visible = false;
    this.mdbDesc.Enabled = false;
    this.mdbDesc.Location = new Point(540, 9);
    this.mdbDesc.MaxLength = 10;
    this.mdbDesc.Name = "mdbDesc";
    this.mdbDesc.Size = new Size(92, 23);
    this.mdbDesc.TabIndex = 10;
    this.mdbDesc.Visible = false;
    this.panIISup.Controls.Add((Control) this.metroLabel8);
    this.panIISup.Dock = DockStyle.Top;
    this.panIISup.Location = new Point(0, 0);
    this.panIISup.Name = "panIISup";
    this.panIISup.Size = new Size(641, 40);
    this.panIISup.TabIndex = 2;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Dock = DockStyle.Fill;
    this.metroLabel8.FontWeight = MetroFontWeight.Bold;
    this.metroLabel8.Location = new Point(0, 0);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(641, 40);
    this.metroLabel8.TabIndex = 3;
    this.metroLabel8.Text = "SERVICIOS A CARGAR";
    this.metroLabel8.TextAlign = ContentAlignment.MiddleCenter;
    this.panInfSupe.Controls.Add((Control) this.txtExpe);
    this.panInfSupe.Controls.Add((Control) this.metroLabel12);
    this.panInfSupe.Controls.Add((Control) this.mibPeriBime);
    this.panInfSupe.Controls.Add((Control) this.metroLabel11);
    this.panInfSupe.Controls.Add((Control) this.mibPeriodo);
    this.panInfSupe.Controls.Add((Control) this.metroLabel10);
    this.panInfSupe.Controls.Add((Control) this.dtbFeve);
    this.panInfSupe.Controls.Add((Control) this.metroLabel9);
    this.panInfSupe.Dock = DockStyle.Top;
    this.panInfSupe.Location = new Point(0, 0);
    this.panInfSupe.Name = "panInfSupe";
    this.panInfSupe.Size = new Size(1344, 40);
    this.panInfSupe.TabIndex = 2;
    this.txtExpe.Location = new Point(870, 11);
    this.txtExpe.MaxLength = 15;
    this.txtExpe.Name = "txtExpe";
    this.txtExpe.Size = new Size(141, 23);
    this.txtExpe.TabIndex = 7;
    this.metroLabel12.AutoSize = false;
    this.metroLabel12.Location = new Point(775, 12);
    this.metroLabel12.Name = "metroLabel12";
    this.metroLabel12.Size = new Size(76, 19);
    this.metroLabel12.TabIndex = 9;
    this.metroLabel12.Text = "Expediente:";
    this.mibPeriBime.IntText = 12;
    this.mibPeriBime.Location = new Point(700, 11);
    this.mibPeriBime.LongText = 12L;
    this.mibPeriBime.MaxLength = 2;
    this.mibPeriBime.MaxValue = 12;
    this.mibPeriBime.MinValue = 1;
    this.mibPeriBime.Name = "mibPeriBime";
    this.mibPeriBime.ShortText = (short) 12;
    this.mibPeriBime.Size = new Size(35, 23);
    this.mibPeriBime.TabIndex = 6;
    this.mibPeriBime.Text = "12";
    this.mibPeriBime.TextAlign = HorizontalAlignment.Center;
    this.metroLabel11.AutoSize = false;
    this.metroLabel11.Location = new Point(683, 13);
    this.metroLabel11.Name = "metroLabel11";
    this.metroLabel11.Size = new Size(14, 19);
    this.metroLabel11.TabIndex = 7;
    this.metroLabel11.Text = "/";
    this.mibPeriodo.IntText = 2024;
    this.mibPeriodo.Location = new Point(626, 11);
    this.mibPeriodo.LongText = 2024L;
    this.mibPeriodo.MaxLength = 4;
    this.mibPeriodo.MaxValue = 2099;
    this.mibPeriodo.MinValue = 1900;
    this.mibPeriodo.Name = "mibPeriodo";
    this.mibPeriodo.ShortText = (short) 2024;
    this.mibPeriodo.Size = new Size(53, 23);
    this.mibPeriodo.TabIndex = 5;
    this.mibPeriodo.Text = "2024";
    this.mibPeriodo.TextAlign = HorizontalAlignment.Center;
    this.metroLabel10.AutoSize = false;
    this.metroLabel10.Location = new Point(556, 12);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(58, 19);
    this.metroLabel10.TabIndex = 5;
    this.metroLabel10.Text = "Periodo:";
    this.dtbFeve.Location = new Point(407, 9);
    this.dtbFeve.Name = "dtbFeve";
    this.dtbFeve.Size = new Size(90, 25);
    this.dtbFeve.TabIndex = 4;
    this.dtbFeve.TextChanged += new EventHandler(this.dtbFeve_TextChanged);
    this.dtbFeve.Leave += new EventHandler(this.dtbFeve_Leave);
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point((int) byte.MaxValue, 12);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(140, 19);
    this.metroLabel9.TabIndex = 3;
    this.metroLabel9.Text = "Fecha de Vencimiento:";
    this.panSuperior.Controls.Add((Control) this.lblDomiCome);
    this.panSuperior.Controls.Add((Control) this.btnBuscar);
    this.panSuperior.Controls.Add((Control) this.dtbFecha);
    this.panSuperior.Controls.Add((Control) this.metroLabel3);
    this.panSuperior.Controls.Add((Control) this.mebCuenta);
    this.panSuperior.Controls.Add((Control) this.metroLabel2);
    this.panSuperior.Controls.Add((Control) this.metroLabel1);
    this.panSuperior.Dock = DockStyle.Top;
    this.panSuperior.Location = new Point(0, 0);
    this.panSuperior.Name = "panSuperior";
    this.panSuperior.Size = new Size(1344, 109);
    this.panSuperior.TabIndex = 2;
    this.lblDomiCome.AutoSize = false;
    this.lblDomiCome.Location = new Point(327, 50);
    this.lblDomiCome.Name = "lblDomiCome";
    this.lblDomiCome.Size = new Size(603, 23);
    this.lblDomiCome.TabIndex = 8;
    this.lblDomiCome.Text = "ACA VAN LOS DATOS DEL DOMICILIO DEL COMERCIO";
    this.btnBuscar.Location = new Point(216, 80 /*0x50*/);
    this.btnBuscar.Name = "btnBuscar";
    this.btnBuscar.Size = new Size(99, 23);
    this.btnBuscar.TabIndex = 3;
    this.btnBuscar.Text = "BUSCAR";
    this.btnBuscar.Click += new EventHandler(this.btnBuscar_Click);
    this.dtbFecha.Location = new Point(216, 46);
    this.dtbFecha.Name = "dtbFecha";
    this.dtbFecha.Size = new Size(99, 25);
    this.dtbFecha.TabIndex = 2;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(161, 50);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(46, 19);
    this.metroLabel3.TabIndex = 5;
    this.metroLabel3.Text = "Fecha:";
    this.mebCuenta.AllowEmpty = false;
    this.mebCuenta.AllowSqlCharacters = false;
    this.mebCuenta.BackColor = Color.White;
    this.mebCuenta.Entity = (Entity) null;
    this.mebCuenta.ExternalValidation = (Func<string>) null;
    this.mebCuenta.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebCuenta.LabelText = "";
    this.mebCuenta.Location = new Point(216, 13);
    this.mebCuenta.MandatoryWrite = false;
    this.mebCuenta.Margin = new Padding(3, 4, 3, 4);
    this.mebCuenta.MaximumSize = new Size(3000, 23);
    this.mebCuenta.MaxLenght = 50;
    this.mebCuenta.MinimumSize = new Size(100, 23);
    this.mebCuenta.Name = "mebCuenta";
    this.mebCuenta.PropertyDetail = "DetaPers";
    this.mebCuenta.PropertyID = "CodiCome";
    this.mebCuenta.ShowNewButton = false;
    this.mebCuenta.ShowSearchButton = false;
    this.mebCuenta.Size = new Size(714, 23);
    this.mebCuenta.TabIndex = 1;
    this.mebCuenta.TextAlign = HorizontalAlignment.Left;
    this.mebCuenta.TextBoxWidth = 100;
    this.mebCuenta.EntityChangedDone += new AfterEntityChange(this.mebCuenta_EntityChangedDone);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(154, 15);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(53, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Cuenta:";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(15, 15);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(139, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Oficina: COMERCIO";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1344, 729);
    this.Controls.Add((Control) this.panPrincipal);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmAforoComeSM);
    this.Text = "Aforos de Comercio";
    this.Shown += new EventHandler(this.frmAforoComeSM_Shown);
    this.panPrincipal.ResumeLayout(false);
    this.panCentral.ResumeLayout(false);
    this.metroPanel2.ResumeLayout(false);
    ((ISupportInitialize) this.gridCuenta).EndInit();
    ((ISupportInitialize) this.viewCuenta).EndInit();
    this.metroPanel1.ResumeLayout(false);
    this.panInferior.ResumeLayout(false);
    this.panInfDer.ResumeLayout(false);
    this.panInfIzq.ResumeLayout(false);
    ((ISupportInitialize) this.gridAforos).EndInit();
    ((ISupportInitialize) this.viewAforos).EndInit();
    this.metroPanel3.ResumeLayout(false);
    this.panIISup.ResumeLayout(false);
    this.panInfSupe.ResumeLayout(false);
    this.panSuperior.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
