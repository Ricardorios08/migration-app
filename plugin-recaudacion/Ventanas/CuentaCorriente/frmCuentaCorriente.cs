// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.frmCuentaCorriente
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
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Reportes.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Grids.Comun;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Grids.Maipu;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Herencia;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Modals;
using InfoGov.Plugins.Recaudacion.Ventanas.Details.Comun;
using InfoGov.Plugins.Recaudacion.Ventanas.Details.Maipu;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Layout;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente;

public class frmCuentaCorriente : BaseForm
{
  private ExpCuentaCorriente experto;
  private ExpAlerta expAlerta;
  private CtaCte ctacte;
  private DateTime hoy;
  private List<OficinaCtacte> oficinas;
  private List<string> alertas;
  private IGridCuentaCorriente grid = (IGridCuentaCorriente) null;
  private IDetailCuentaCorriente detail = (IDetailCuentaCorriente) null;
  private IContainer components = (IContainer) null;
  private MetroPanel panSuperior;
  private MetroPanel panDetails;
  private MetroPanel panGrid;
  private MetroCheckBox chkSoloDeuda;
  private MetroDateTextBox dtbFechVenc;
  private MetroComboBox cboOfic;
  private MetroLabel lblOfic;
  private MetroLabel lblDatosPersona;
  private MetroLabel metroLabel1;
  private MetroPanel panContenedorCentroTop;
  private MetroLabel metroLabel2;
  private SimpleButton btnBuscar;
  private SimpleButton btnImprimir;
  private MetroLabel lblTituloTitular;
  private MetroCheckBox chkCuentasAsociadas;
  private MetroEntityBox mebCuenta;

  public frmCuentaCorriente()
  {
    this.InitializeComponent();
    this.SetControls();
    this.oficinas = new List<OficinaCtacte>();
    this.alertas = new List<string>();
    this.experto = new ExpCuentaCorriente();
    this.expAlerta = new ExpAlerta();
    this.hoy = Misc.Now();
    this.ctacte = new CtaCte();
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
    this.ctacte.SoloDeuda = this.chkSoloDeuda.Checked;
    this.ctacte.Existe = false;
    this.ctacte.ConCtasAsociadas = this.chkCuentasAsociadas.Checked;
    this.ctacte.TipoResultado = TipoResultadoCtaCte.Ninguno;
  }

  private void SetControls()
  {
    if (PARAMS.Municipio == "Maipú")
    {
      this.grid = (IGridCuentaCorriente) new gridCCMaipu();
      this.detail = (IDetailCuentaCorriente) new detailCCMaipu();
    }
    else
    {
      this.grid = (IGridCuentaCorriente) new gridCCComun();
      this.detail = (IDetailCuentaCorriente) new detailCCComun();
    }
    if (this.grid != null && this.detail != null)
      this.grid.DetalleSeleccionado += (EventHandler<object>) ((s, detalle) => this.detail.MostrarDetalle(detalle));
    if (this.grid != null)
    {
      ((Control) this.grid).Dock = DockStyle.Fill;
      this.panGrid.Controls.Add((Control) this.grid);
    }
    if (this.detail == null)
      return;
    ((Control) this.detail).Dock = DockStyle.Fill;
    this.panDetails.Controls.Add((Control) this.detail);
  }

  private void btnBuscar_Click(object sender, EventArgs e)
  {
    if (!this.ValidarDatos())
      return;
    this.SetValues();
    this.experto.BuscarDatosCuenta(this.ctacte);
    if (!this.ctacte.Existe)
    {
      new frmMensaje((Form) this).mostrarError($"La cuenta {this.ctacte.CuenCtct} NO EXISTE en la oficina seleccionada. Verificar...");
      this.LimpiarControles();
    }
    else
    {
      // ISSUE: method pointer
      new frmEsperar((Form) this).procesar(new Action((object) this, __methodptr(\u003CbtnBuscar_Click\u003Eg__EjecutarBusqueda\u007C11_0)));
      switch (this.ctacte.TipoResultado)
      {
        case TipoResultadoCtaCte.SinMovimientos:
          new frmMensaje((Form) this).mostrarInformación("NO se encontraron movimientos.");
          break;
        case TipoResultadoCtaCte.SinDeuda:
          new frmMensaje((Form) this).mostrarInformación("NO SE ENCONTRÓ DEUDA.");
          break;
      }
      this.ActivarImprimir(true);
      this.MostrarAlertas();
    }
  }

  private void ActivarImprimir(bool activar) => ((Control) this.btnImprimir).Enabled = activar;

  private void LimpiarControles()
  {
    this.mebCuenta.Entity = (Entity) null;
    this.dtbFechVenc.Date = this.hoy;
    this.ctacte.DetaPers = string.Empty;
    this.ActivarImprimir(false);
    foreach (Control control in (ArrangedElementCollection) this.panGrid.Controls)
    {
      if (control is IBuscador buscador)
        this.EjecutarAccion(buscador, frmCuentaCorriente.Accion.SoloLimpiar);
    }
    foreach (Control control in (ArrangedElementCollection) this.panDetails.Controls)
    {
      if (control is IBuscador buscador)
        this.EjecutarAccion(buscador, frmCuentaCorriente.Accion.SoloLimpiar);
    }
  }

  private void EjecutarAccion(IBuscador buscador, frmCuentaCorriente.Accion accion)
  {
    switch (accion)
    {
      case frmCuentaCorriente.Accion.BusquedaCompleta:
        buscador.Limpiar();
        buscador.Buscar(this.ctacte);
        break;
      case frmCuentaCorriente.Accion.SoloLimpiar:
        buscador.Limpiar();
        break;
      case frmCuentaCorriente.Accion.SoloBuscar:
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
    this.experto.BuscarOficinas(this.oficinas);
    this.oficinas.Add(new OficinaCtacte()
    {
      CodiOfic = (short) 99,
      DetaOfic = "CUIL/CUIT"
    });
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

  private void btnImprimir_Click(object sender, EventArgs e)
  {
    DTOReporte datos = new DTOReporte();
    datos.Movimientos = this.grid.ObtenerMovimientos();
    datos.DetallesCuenta = this.detail.ObtenerDetallesCuentaReporte();
    if (datos.Movimientos == null || datos.Movimientos.Count == 0 || datos.DetallesCuenta == null)
      return;
    datos.DatosCuenta = this.ctacte;
    int num = (int) new mdlReporte(datos).ShowDialog((IWin32Window) this);
  }

  private void cboOfic_SelectedValueChanged(object sender, EventArgs e)
  {
    this.LimpiarControles();
    if (this.cboOfic.SelectedItem == null || !((this.cboOfic.SelectedItem is ComboBoxItem selectedItem ? selectedItem.Value.ToString() : (string) null) == "99"))
      return;
    this.chkCuentasAsociadas.Checked = true;
  }

  private void lblDatosPersona_TextChanged(object sender, EventArgs e)
  {
    this.lblTituloTitular.Visible = !string.IsNullOrEmpty(this.lblDatosPersona.Text.Trim());
  }

  private void MostrarAlertas()
  {
    this.expAlerta.BuscarAlertas(this.ctacte.CodiOfic, this.ctacte.CuenCtct, this.alertas);
    if (this.alertas.Count <= 0)
      return;
    new dlgErrorList((Form) this).mostarError("Alertas", this.alertas, height: 300);
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmCuentaCorriente));
    this.panSuperior = new MetroPanel();
    this.mebCuenta = new MetroEntityBox();
    this.chkCuentasAsociadas = new MetroCheckBox();
    this.lblTituloTitular = new MetroLabel();
    this.btnImprimir = new SimpleButton();
    this.btnBuscar = new SimpleButton();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.lblDatosPersona = new MetroLabel();
    this.chkSoloDeuda = new MetroCheckBox();
    this.dtbFechVenc = new MetroDateTextBox();
    this.cboOfic = new MetroComboBox();
    this.lblOfic = new MetroLabel();
    this.panDetails = new MetroPanel();
    this.panGrid = new MetroPanel();
    this.panContenedorCentroTop = new MetroPanel();
    this.panSuperior.SuspendLayout();
    this.panContenedorCentroTop.SuspendLayout();
    this.SuspendLayout();
    this.panSuperior.Controls.Add((Control) this.mebCuenta);
    this.panSuperior.Controls.Add((Control) this.chkCuentasAsociadas);
    this.panSuperior.Controls.Add((Control) this.lblTituloTitular);
    this.panSuperior.Controls.Add((Control) this.btnImprimir);
    this.panSuperior.Controls.Add((Control) this.btnBuscar);
    this.panSuperior.Controls.Add((Control) this.metroLabel2);
    this.panSuperior.Controls.Add((Control) this.metroLabel1);
    this.panSuperior.Controls.Add((Control) this.lblDatosPersona);
    this.panSuperior.Controls.Add((Control) this.chkSoloDeuda);
    this.panSuperior.Controls.Add((Control) this.dtbFechVenc);
    this.panSuperior.Controls.Add((Control) this.cboOfic);
    this.panSuperior.Controls.Add((Control) this.lblOfic);
    this.panSuperior.Dock = DockStyle.Left;
    this.panSuperior.Location = new Point(0, 0);
    this.panSuperior.Name = "panSuperior";
    this.panSuperior.Size = new Size(275, 468);
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
    this.chkCuentasAsociadas.AutoSize = false;
    this.chkCuentasAsociadas.Location = new Point(94, 167);
    this.chkCuentasAsociadas.Name = "chkCuentasAsociadas";
    this.chkCuentasAsociadas.Size = new Size(172, 19);
    this.chkCuentasAsociadas.TabIndex = 5;
    this.chkCuentasAsociadas.Text = "Con Cuentas Asociadas";
    this.lblTituloTitular.AutoSize = false;
    this.lblTituloTitular.FontWeight = MetroFontWeight.Bold;
    this.lblTituloTitular.Location = new Point(94, 248);
    this.lblTituloTitular.Name = "lblTituloTitular";
    this.lblTituloTitular.Size = new Size(65, 19);
    this.lblTituloTitular.TabIndex = 11;
    this.lblTituloTitular.Text = "TITULAR";
    this.lblTituloTitular.TextAlign = ContentAlignment.MiddleCenter;
    ((BaseStyleControl) this.btnImprimir).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnImprimir).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnImprimir).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnImprimir.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnImprimir.ImageOptions.Image");
    ((Control) this.btnImprimir).Location = new Point(152, 205);
    ((Control) this.btnImprimir).Name = "btnImprimir";
    ((Control) this.btnImprimir).Size = new Size(45, 34);
    ((Control) this.btnImprimir).TabIndex = 7;
    ((Control) this.btnImprimir).Click += new EventHandler(this.btnImprimir_Click);
    ((BaseStyleControl) this.btnBuscar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnBuscar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnBuscar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnBuscar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscar.ImageOptions.Image");
    ((Control) this.btnBuscar).Location = new Point(77, 205);
    ((Control) this.btnBuscar).Name = "btnBuscar";
    ((Control) this.btnBuscar).Size = new Size(45, 34);
    ((Control) this.btnBuscar).TabIndex = 6;
    ((Control) this.btnBuscar).Click += new EventHandler(this.btnBuscar_Click);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(6, 97);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(82, 39);
    this.metroLabel2.TabIndex = 10;
    this.metroLabel2.Text = "Fecha \r\nConsulta";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleCenter;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(32 /*0x20*/, 64 /*0x40*/);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(50, 19);
    this.metroLabel1.TabIndex = 9;
    this.metroLabel1.Text = "Cuenta";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.lblDatosPersona.AutoSize = false;
    this.lblDatosPersona.Location = new Point(6, 279);
    this.lblDatosPersona.Name = "lblDatosPersona";
    this.lblDatosPersona.Size = new Size(263, 58);
    this.lblDatosPersona.TabIndex = 7;
    this.lblDatosPersona.Text = "DATOS DE LA PERSONA!!!!!!!!!!!!!!!!";
    this.lblDatosPersona.TextAlign = ContentAlignment.TopCenter;
    this.lblDatosPersona.TextChanged += new EventHandler(this.lblDatosPersona_TextChanged);
    this.chkSoloDeuda.AutoSize = false;
    this.chkSoloDeuda.Checked = true;
    this.chkSoloDeuda.CheckState = CheckState.Checked;
    this.chkSoloDeuda.Location = new Point(94, 136);
    this.chkSoloDeuda.Name = "chkSoloDeuda";
    this.chkSoloDeuda.Size = new Size(93, 19);
    this.chkSoloDeuda.TabIndex = 4;
    this.chkSoloDeuda.Text = "Solo Deuda";
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
    this.panDetails.Location = new Point(0, 468);
    this.panDetails.Name = "panDetails";
    this.panDetails.Size = new Size(1360, 300);
    this.panDetails.TabIndex = 1;
    this.panGrid.Dock = DockStyle.Fill;
    this.panGrid.Location = new Point(275, 0);
    this.panGrid.Name = "panGrid";
    this.panGrid.Size = new Size(1085, 468);
    this.panGrid.TabIndex = 2;
    this.panContenedorCentroTop.Controls.Add((Control) this.panGrid);
    this.panContenedorCentroTop.Controls.Add((Control) this.panSuperior);
    this.panContenedorCentroTop.Dock = DockStyle.Fill;
    this.panContenedorCentroTop.Location = new Point(0, 0);
    this.panContenedorCentroTop.Name = "panContenedorCentroTop";
    this.panContenedorCentroTop.Size = new Size(1360, 468);
    this.panContenedorCentroTop.TabIndex = 2;
    this.AcceptButton = (IButtonControl) this.btnBuscar;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1360, 768 /*0x0300*/);
    this.ControlBox = false;
    this.Controls.Add((Control) this.panContenedorCentroTop);
    this.Controls.Add((Control) this.panDetails);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.None;
    this.Name = nameof (frmCuentaCorriente);
    this.Text = "Cuenta Corriente";
    this.WindowState = FormWindowState.Maximized;
    this.panSuperior.ResumeLayout(false);
    this.panContenedorCentroTop.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  private enum Accion
  {
    BusquedaCompleta,
    SoloLimpiar,
    SoloBuscar,
  }
}
