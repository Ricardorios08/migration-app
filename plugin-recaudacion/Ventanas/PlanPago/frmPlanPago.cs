// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.frmPlanPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Entidades.PlanPago;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.PlanPago;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Details.Maipu;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Footers.Maipu;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Grids.Maipu;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia;
using InfoGov.Utils;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Layout;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.PlanPago;

public class frmPlanPago : BaseForm
{
  private ExpCuentaCorriente expCtaCte;
  private CtaCte ctacte;
  private List<OficinaCtacte> oficinas;
  private DateTime hoy;
  private IGridPlanPago grid = (IGridPlanPago) null;
  private IDetailPlanPago detail = (IDetailPlanPago) null;
  private IFooterPlanPago footer = (IFooterPlanPago) null;
  private IPlanPago plan = (IPlanPago) null;
  private IExpertoPlanPago experto = (IExpertoPlanPago) null;
  private IContainer components = (IContainer) null;
  private MetroPanel panSuperior;
  private MetroPanel panDetails;
  private MetroPanel panGrid;
  private MetroDateTextBox dtbFechVenc;
  private MetroComboBox cboOfic;
  private MetroLabel lblOfic;
  private MetroLabel lblDatosPersona;
  private MetroLabel metroLabel1;
  private MetroPanel panContenedorCentroTop;
  private MetroLabel metroLabel2;
  private SimpleButton btnBuscar;
  private MetroLabel lblTituloTitular;
  private MetroEntityBox mebCuenta;
  private MetroPanel panBoton;
  private SimpleButton btnGenerar;
  private MetroPanel panFooter;

  public frmPlanPago()
  {
    this.InitializeComponent();
    this.SetControls();
    this.expCtaCte = new ExpCuentaCorriente();
    this.ctacte = new CtaCte();
    this.oficinas = new List<OficinaCtacte>();
    this.hoy = Misc.Now();
    this.lblDatosPersona.DataBindings.Add("Text", (object) this.ctacte, "DetaPers", true, DataSourceUpdateMode.OnPropertyChanged);
    this.CargarOficinas();
    this.dtbFechVenc.Date = this.hoy;
    this.mebCuenta.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuenta);
    this.mebCuenta.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuenta);
  }

  private void SetValues()
  {
    this.ctacte.CodiOfic = short.Parse(((ComboBoxItem) this.cboOfic.SelectedItem).Value.ToString());
    this.ctacte.CuenCtct = this.mebCuenta == null ? string.Empty : (this.mebCuenta.Entity is CCComun entity ? entity.CuenCtct : (string) null) ?? string.Empty;
    this.ctacte.DetaOfic = this.cboOfic.Text.Trim();
    this.ctacte.DetaPers = string.Empty;
    this.ctacte.FeveCtct = this.dtbFechVenc.Date;
    this.ctacte.SoloDeuda = true;
    this.ctacte.Existe = false;
    this.ctacte.ConCtasAsociadas = false;
    this.ctacte.TipoResultado = TipoResultadoCtaCte.Ninguno;
  }

  private void SetControls()
  {
    if (PARAMS.Municipio == "Maipú")
    {
      this.plan = (IPlanPago) new DTOFaciPagoMP();
      this.grid = (IGridPlanPago) new gridPPMP(this.plan);
      this.detail = (IDetailPlanPago) new detailPPMP(this.plan, this.hasPermissionFor("FechaVencimientoPP"));
      this.footer = (IFooterPlanPago) new footerPPMP(this.plan);
      this.experto = (IExpertoPlanPago) new ExpPlanPagoMP();
    }
    if (this.grid != null)
    {
      ((Control) this.grid).Dock = DockStyle.Fill;
      this.panGrid.Controls.Add((Control) this.grid);
    }
    if (this.detail != null)
    {
      ((Control) this.detail).Dock = DockStyle.Fill;
      this.panDetails.Controls.Add((Control) this.detail);
    }
    if (this.footer != null)
    {
      ((Control) this.footer).Dock = DockStyle.Fill;
      this.panFooter.Controls.Add((Control) this.footer);
    }
    if (this.grid == null || this.detail == null)
      return;
    this.grid.RegistroSeleccionado += (EventHandler<object>) ((s, x) => this.detail.CambioDeudaSeleccionada());
  }

  private void btnBuscar_Click(object sender, EventArgs e)
  {
    if (!this.ValidarDatos())
      return;
    this.SetValues();
    this.expCtaCte.BuscarDatosCuenta(this.ctacte);
    if (!this.ctacte.Existe)
    {
      ToastHelper.ShowOrFallback((Form) this, $"La cuenta {this.ctacte.CuenCtct} NO EXISTE en la oficina seleccionada. Verificar...", ToastHelper.ToastType.Warning, ToastHelper.ToastPosition.TopRight, 3800);
      this.LimpiarControles();
    }
    else
    {
      // ISSUE: method pointer
      new frmEsperar((Form) this).procesar(new Action((object) this, __methodptr(\u003CbtnBuscar_Click\u003Eg__EjecutarBusqueda\u007C12_0)));
      if (this.ctacte.TipoResultado == TipoResultadoCtaCte.SinDeuda)
        ToastHelper.ShowOrFallback((Form) this, "NO SE ENCONTRÓ DEUDA.", ToastHelper.ToastType.Info, ToastHelper.ToastPosition.TopRight, 3800);
    }
  }

  private void LimpiarControles(bool limpiarEntidad = true)
  {
    if (limpiarEntidad)
      this.mebCuenta.Entity = (Entity) null;
    this.dtbFechVenc.Date = this.hoy;
    this.ctacte.DetaPers = string.Empty;
    foreach (Control control in (ArrangedElementCollection) this.panGrid.Controls)
    {
      if (control is IBuscadorPP buscador)
        this.EjecutarAccion(buscador, frmPlanPago.Accion.SoloLimpiar);
    }
    foreach (Control control in (ArrangedElementCollection) this.panDetails.Controls)
    {
      if (control is IBuscadorPP buscador)
        this.EjecutarAccion(buscador, frmPlanPago.Accion.SoloLimpiar);
    }
    foreach (Control control in (ArrangedElementCollection) this.panFooter.Controls)
    {
      if (control is IBuscadorPP buscador)
        this.EjecutarAccion(buscador, frmPlanPago.Accion.SoloLimpiar);
    }
  }

  private void EjecutarAccion(IBuscadorPP buscador, frmPlanPago.Accion accion)
  {
    switch (accion)
    {
      case frmPlanPago.Accion.BusquedaCompleta:
        buscador.Limpiar();
        buscador.Buscar(this.ctacte);
        break;
      case frmPlanPago.Accion.SoloLimpiar:
        buscador.Limpiar();
        break;
      case frmPlanPago.Accion.SoloBuscar:
        buscador.Buscar(this.ctacte);
        break;
    }
  }

  private void dtbFechVenc_Leave(object sender, EventArgs e)
  {
    if (!(this.dtbFechVenc.Date < new DateTime(1980, 1, 1)))
      return;
    this.dtbFechVenc.Date = this.hoy;
  }

  private void CargarOficinas()
  {
    this.cboOfic.Items.Clear();
    this.cboOfic.DisplayMember = "Text";
    this.cboOfic.ValueMember = "Value";
    this.expCtaCte.BuscarOficinas(this.oficinas);
    this.oficinas.ForEach((Action<OficinaCtacte>) (of => this.cboOfic.Items.Add((object) new ComboBoxItem(of.DetaOfic, (object) of.CodiOfic))));
    if (this.cboOfic.Items.Count <= 0)
      return;
    this.cboOfic.SelectedIndex = 0;
  }

  private bool ValidarDatos()
  {
    List<string> errores = new List<string>();
    if (this.cboOfic.Items.Count == 0)
      errores.Add("No hay oficina seleccionada.");
    if (this.mebCuenta.Entity == null)
      errores.Add("Debe seleccionar una cuenta.");
    if (this.dtbFechVenc.Date < new DateTime(1980, 1, 1))
      errores.Add("Debe ingresar una fecha de vencimiento.");
    if (errores.Count <= 0)
      return true;
    new dlgErrorList((Form) this).mostarError("Verificar", errores);
    return false;
  }

  private bool ValidarAntesGenerar()
  {
    List<string> errores = new List<string>();
    if (this.ctacte.CodiOfic <= (short) 0 || string.IsNullOrEmpty(this.ctacte.CuenCtct))
      errores.Add("No hay una cuenta válida seleccionada.");
    IGridPlanPago grid = this.grid;
    if (grid != null)
      errores.Add(grid.ValidarDatos());
    IDetailPlanPago detail = this.detail;
    if (detail != null)
      errores.Add(detail.ValidarDatos());
    IFooterPlanPago footer = this.footer;
    if (footer != null)
      errores.Add(footer.ValidarDatos());
    errores.RemoveAll(new Predicate<string>(string.IsNullOrEmpty));
    if (errores.Count <= 0)
      return true;
    new dlgErrorList((Form) this).mostarError("Verificar", errores);
    return false;
  }

  private void CargarDatos()
  {
    this.plan.Cuenta = this.ctacte;
    this.detail?.CargarDetallePlanPago();
    this.footer?.CargarDatosFooter();
  }

  private void btnGenerar_Click(object sender, EventArgs e)
  {
    if (!this.ValidarAntesGenerar())
      return;
    this.CargarDatos();
    string mensaje1 = new frmEsperar((Form) this).generar((Func<string>) (() => this.experto.GenerarPlanPago(this.plan)));
    if (string.IsNullOrEmpty(mensaje1))
    {
      string mensaje2 = new frmEsperar((Form) this).generar((Func<string>) (() => this.experto.ImprimirPlanPago(this.plan)), "Imprimiendo...");
      if (string.IsNullOrEmpty(mensaje2))
      {
        ToastHelper.ShowOrFallback((Form) this, "Plan generado correctamente.", ToastHelper.ToastType.Success, ToastHelper.ToastPosition.TopRight, 3800);
        this.LimpiarControles();
      }
      else
        new frmMensaje((Form) this).mostrarError(mensaje2);
    }
    else
      new frmMensaje((Form) this).mostrarError(mensaje1);
  }

  private void cboOfic_SelectedValueChanged(object sender, EventArgs e) => this.LimpiarControles();

  private void mebCuenta_EntityChangedDone(object source, EntityChangedEventArgs e)
  {
    this.LimpiarControles(false);
  }

  private void lblDatosPersona_TextChanged(object sender, EventArgs e)
  {
    this.lblTituloTitular.Visible = !string.IsNullOrEmpty(this.lblDatosPersona.Text.Trim());
  }

  private void EstablecerFiltroBusqueda(Filter f, string text)
  {
    int num = this.cboOfic.Items == null ? 0 : (int) short.Parse(this.cboOfic.SelectedItem is ComboBoxItem selectedItem ? selectedItem.Value.ToString() : (string) null);
    f.Items.Add(new FilterItem("CodiOfic", "Oficina", FilterMode.Equal, num.ToString()));
    if (Misc.IsNumeric(text))
    {
      f.Items.Add(new FilterItem("Cuenta", "Cuenta", FilterMode.Equal, text));
    }
    else
    {
      if (string.IsNullOrEmpty(text.Trim()))
        return;
      f.Items.Add(new FilterItem("p.DetaPers", "Nombre titular", FilterMode.Contains, text));
    }
  }

  private Entity BuscarCuenta(string text)
  {
    Filter filter = new Filter();
    this.EstablecerFiltroBusqueda(filter, text);
    return (Entity) this.EM.Search<CCComun>(filter, true);
  }

  private Entity EncontrarCuenta(string text, bool useSearch)
  {
    Filter filter = new Filter();
    this.EstablecerFiltroBusqueda(filter, text);
    return (Entity) this.EM.Find<CCComun>(filter, true, true);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmPlanPago));
    this.panSuperior = new MetroPanel();
    this.mebCuenta = new MetroEntityBox();
    this.lblTituloTitular = new MetroLabel();
    this.btnBuscar = new SimpleButton();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.lblDatosPersona = new MetroLabel();
    this.dtbFechVenc = new MetroDateTextBox();
    this.cboOfic = new MetroComboBox();
    this.lblOfic = new MetroLabel();
    this.panDetails = new MetroPanel();
    this.panGrid = new MetroPanel();
    this.panContenedorCentroTop = new MetroPanel();
    this.panBoton = new MetroPanel();
    this.panFooter = new MetroPanel();
    this.btnGenerar = new SimpleButton();
    this.panSuperior.SuspendLayout();
    this.panContenedorCentroTop.SuspendLayout();
    this.panBoton.SuspendLayout();
    this.SuspendLayout();
    this.panSuperior.Controls.Add((Control) this.mebCuenta);
    this.panSuperior.Controls.Add((Control) this.lblTituloTitular);
    this.panSuperior.Controls.Add((Control) this.btnBuscar);
    this.panSuperior.Controls.Add((Control) this.metroLabel2);
    this.panSuperior.Controls.Add((Control) this.metroLabel1);
    this.panSuperior.Controls.Add((Control) this.lblDatosPersona);
    this.panSuperior.Controls.Add((Control) this.dtbFechVenc);
    this.panSuperior.Controls.Add((Control) this.cboOfic);
    this.panSuperior.Controls.Add((Control) this.lblOfic);
    this.panSuperior.Dock = DockStyle.Left;
    this.panSuperior.Location = new Point(0, 0);
    this.panSuperior.Name = "panSuperior";
    this.panSuperior.Size = new Size(275, 289);
    this.panSuperior.TabIndex = 0;
    this.mebCuenta.AllowEmpty = false;
    this.mebCuenta.AllowSqlCharacters = false;
    this.mebCuenta.BackColor = Color.White;
    this.mebCuenta.Entity = (Entity) null;
    this.mebCuenta.ExternalValidation = (Func<string>) null;
    this.mebCuenta.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebCuenta.LabelText = "";
    this.mebCuenta.Location = new Point(94, 62);
    this.mebCuenta.MandatoryWrite = false;
    this.mebCuenta.Margin = new Padding(3, 4, 3, 4);
    this.mebCuenta.MaximumSize = new Size(3000, 23);
    this.mebCuenta.MaxLenght = 11;
    this.mebCuenta.MinimumSize = new Size(100, 23);
    this.mebCuenta.Name = "mebCuenta";
    this.mebCuenta.PropertyDetail = "DetaPers";
    this.mebCuenta.PropertyID = "CuenCtct";
    this.mebCuenta.ShowNewButton = false;
    this.mebCuenta.ShowSearchButton = false;
    this.mebCuenta.Size = new Size(144 /*0x90*/, 23);
    this.mebCuenta.TabIndex = 2;
    this.mebCuenta.TextAlign = HorizontalAlignment.Center;
    this.mebCuenta.TextBoxWidth = 143;
    this.mebCuenta.EntityChangedDone += new AfterEntityChange(this.mebCuenta_EntityChangedDone);
    this.lblTituloTitular.AutoSize = false;
    this.lblTituloTitular.FontWeight = MetroFontWeight.Bold;
    this.lblTituloTitular.Location = new Point(94, 190);
    this.lblTituloTitular.Name = "lblTituloTitular";
    this.lblTituloTitular.Size = new Size(65, 19);
    this.lblTituloTitular.TabIndex = 11;
    this.lblTituloTitular.Text = "TITULAR";
    this.lblTituloTitular.TextAlign = ContentAlignment.MiddleCenter;
    ((BaseStyleControl) this.btnBuscar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnBuscar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnBuscar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnBuscar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscar.ImageOptions.Image");
    ((Control) this.btnBuscar).Location = new Point(124, 147);
    ((Control) this.btnBuscar).Name = "btnBuscar";
    ((Control) this.btnBuscar).Size = new Size(45, 34);
    ((Control) this.btnBuscar).TabIndex = 6;
    ((Control) this.btnBuscar).Click += new EventHandler(this.btnBuscar_Click);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(6, 97);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(82, 39);
    this.metroLabel2.TabIndex = 10;
    this.metroLabel2.Text = "Fecha\r\nConsulta\r\n";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleCenter;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(32 /*0x20*/, 64 /*0x40*/);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(50, 19);
    this.metroLabel1.TabIndex = 9;
    this.metroLabel1.Text = "Cuenta";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.lblDatosPersona.AutoSize = false;
    this.lblDatosPersona.Location = new Point(6, 221);
    this.lblDatosPersona.Name = "lblDatosPersona";
    this.lblDatosPersona.Size = new Size(263, 58);
    this.lblDatosPersona.TabIndex = 7;
    this.lblDatosPersona.Text = "DATOS DE LA PERSONA!!!!!!!!!!!!!!!!";
    this.lblDatosPersona.TextAlign = ContentAlignment.TopCenter;
    this.lblDatosPersona.TextChanged += new EventHandler(this.lblDatosPersona_TextChanged);
    this.dtbFechVenc.Location = new Point(94, 99);
    this.dtbFechVenc.MinDate = new DateTime(1980, 1, 1, 0, 0, 0, 0);
    this.dtbFechVenc.Name = "dtbFechVenc";
    this.dtbFechVenc.Size = new Size(103, 25);
    this.dtbFechVenc.TabIndex = 3;
    this.dtbFechVenc.Leave += new EventHandler(this.dtbFechVenc_Leave);
    this.cboOfic.FormattingEnabled = false;
    this.cboOfic.Location = new Point(94, 29);
    this.cboOfic.Name = "cboOfic";
    this.cboOfic.Size = new Size(143, 23);
    this.cboOfic.TabIndex = 1;
    this.cboOfic.SelectedValueChanged += new EventHandler(this.cboOfic_SelectedValueChanged);
    this.lblOfic.AutoSize = false;
    this.lblOfic.Location = new Point(32 /*0x20*/, 31 /*0x1F*/);
    this.lblOfic.Name = "lblOfic";
    this.lblOfic.Size = new Size(50, 19);
    this.lblOfic.TabIndex = 4;
    this.lblOfic.Text = "Oficina";
    this.lblOfic.TextAlign = ContentAlignment.MiddleRight;
    this.panDetails.Dock = DockStyle.Bottom;
    this.panDetails.Location = new Point(0, 289);
    this.panDetails.Name = "panDetails";
    this.panDetails.Size = new Size(1360, 306);
    this.panDetails.TabIndex = 1;
    this.panGrid.Dock = DockStyle.Fill;
    this.panGrid.Location = new Point(275, 0);
    this.panGrid.Name = "panGrid";
    this.panGrid.Size = new Size(1085, 289);
    this.panGrid.TabIndex = 2;
    this.panContenedorCentroTop.Controls.Add((Control) this.panGrid);
    this.panContenedorCentroTop.Controls.Add((Control) this.panSuperior);
    this.panContenedorCentroTop.Controls.Add((Control) this.panDetails);
    this.panContenedorCentroTop.Controls.Add((Control) this.panBoton);
    this.panContenedorCentroTop.Dock = DockStyle.Fill;
    this.panContenedorCentroTop.Location = new Point(0, 0);
    this.panContenedorCentroTop.Name = "panContenedorCentroTop";
    this.panContenedorCentroTop.Size = new Size(1360, 630);
    this.panContenedorCentroTop.TabIndex = 2;
    this.panBoton.Controls.Add((Control) this.panFooter);
    this.panBoton.Controls.Add((Control) this.btnGenerar);
    this.panBoton.Dock = DockStyle.Bottom;
    this.panBoton.Location = new Point(0, 595);
    this.panBoton.Name = "panBoton";
    this.panBoton.Size = new Size(1360, 35);
    this.panBoton.TabIndex = 3;
    this.panFooter.Dock = DockStyle.Left;
    this.panFooter.Location = new Point(0, 0);
    this.panFooter.Name = "panFooter";
    this.panFooter.Size = new Size(1150, 35);
    this.panFooter.TabIndex = 1001;
    ((Control) this.btnGenerar).Anchor = AnchorStyles.Top | AnchorStyles.Right;
    ((BaseStyleControl) this.btnGenerar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnGenerar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnGenerar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnGenerar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnGenerar.ImageOptions.Image");
    ((Control) this.btnGenerar).Location = new Point(1156, 6);
    ((Control) this.btnGenerar).Name = "btnGenerar";
    ((Control) this.btnGenerar).Size = new Size(192 /*0xC0*/, 25);
    ((Control) this.btnGenerar).TabIndex = 1000;
    ((Control) this.btnGenerar).Text = "Generar Plan de Pago";
    ((Control) this.btnGenerar).Click += new EventHandler(this.btnGenerar_Click);
    this.AcceptButton = (IButtonControl) this.btnBuscar;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1360, 630);
    this.ControlBox = false;
    this.Controls.Add((Control) this.panContenedorCentroTop);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.None;
    this.Name = nameof (frmPlanPago);
    this.Text = "Generar Plan Pago";
    this.WindowState = FormWindowState.Maximized;
    this.panSuperior.ResumeLayout(false);
    this.panContenedorCentroTop.ResumeLayout(false);
    this.panBoton.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  private enum Accion
  {
    BusquedaCompleta,
    SoloLimpiar,
    SoloBuscar,
  }
}
