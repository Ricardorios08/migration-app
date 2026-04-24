// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.frmAforosDeudoresVarios
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.AforosDeudoresVarios;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.GridAforos.Malargue;
using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.GridBuqueda.Malargue;
using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.Herencia;
using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.Modals;
using InfoGov.Utils;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Layout;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios;

public class frmAforosDeudoresVarios : BaseForm
{
  private DateTime hoy;
  private ExpCuentaCorriente expCtaCte;
  private CtaCte ctacte;
  private IGridAforos gridAforos = (IGridAforos) null;
  private IGridBusqueda gridBusqueda = (IGridBusqueda) null;
  private IAforoDeudorVario entidad = (IAforoDeudorVario) null;
  internal IExpAforoDV experto = (IExpAforoDV) null;
  private List<string> errores = new List<string>();
  private IContainer components = (IContainer) null;
  private MetroPanel panContenedorCentroTop;
  private MetroPanel panBusquedaSup;
  private SimpleButton btnNuevoDV;
  private MetroEntityBox mebCuenta;
  private MetroLabel lblDatosDomi;
  private MetroLabel lblDatosPersona;
  private SimpleButton btnBuscar;
  private MetroLabel metroLabel2;
  private MetroDateTextBox dtbFechVenc;
  private MetroLabel metroLabel1;
  private MetroComboBox cboOfic;
  private MetroLabel lblOfic;
  private MetroPanel panGrillaDeuda;
  private MetroPanel panInferior;
  private MetroPanel panGrillaServicios;
  private MetroTextBox txtDetalle;
  private SimpleButton btnGenerar;
  private MetroLabel metroLabel3;

  public frmAforosDeudoresVarios()
  {
    this.InitializeComponent();
    this.idPlugin = 28;
    this.SetControls();
    this.hoy = Misc.Now();
    this.expCtaCte = new ExpCuentaCorriente();
    this.ctacte = new CtaCte();
    this.lblDatosPersona.DataBindings.Add("Text", (object) this.ctacte, "DetaPers", true, DataSourceUpdateMode.OnPropertyChanged);
    this.CargarOficinas();
    this.dtbFechVenc.Date = this.hoy;
    this.mebCuenta.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuenta);
    this.mebCuenta.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuenta);
  }

  private void CargarOficinas()
  {
    this.cboOfic.Items.Clear();
    this.cboOfic.DisplayMember = "Text";
    this.cboOfic.ValueMember = "Value";
    this.cboOfic.Items.Add((object) new ComboBoxItem("DEUDORES VARIOS", (object) 3));
    if (this.cboOfic.Items.Count <= 0)
      return;
    this.cboOfic.SelectedIndex = 0;
  }

  private void LimpiarControles()
  {
    this.mebCuenta.Entity = (Entity) null;
    this.dtbFechVenc.Date = this.hoy;
    this.ctacte.DetaPers = string.Empty;
    this.txtDetalle.Text = string.Empty;
    if (this.gridBusqueda is IBuscador gridBusqueda)
      this.EjecutarAccion(gridBusqueda, frmAforosDeudoresVarios.Accion.SoloLimpiar);
    if (this.gridAforos is IBuscador gridAforos)
      this.EjecutarAccion(gridAforos, frmAforosDeudoresVarios.Accion.SoloLimpiar);
    this.mebCuenta.Focus();
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
    this.entidad = this.CrearEntidad();
    if (PARAMS.MunicipioID == Municipio.Malargüe)
    {
      this.experto = (IExpAforoDV) new ExpAforoDVMG();
      this.gridAforos = (IGridAforos) new gridAforoMG(this.experto as ExpAforoDVMG);
      this.gridBusqueda = (IGridBusqueda) new gridBusquedaMG();
    }
    if (this.gridBusqueda != null)
    {
      ((Control) this.gridBusqueda).Dock = DockStyle.Fill;
      this.panGrillaDeuda.Controls.Add((Control) this.gridBusqueda);
    }
    if (this.gridAforos == null)
      return;
    ((Control) this.gridAforos).Dock = DockStyle.Fill;
    this.panGrillaServicios.Controls.Add((Control) this.gridAforos);
  }

  private IAforoDeudorVario CrearEntidad()
  {
    return PARAMS.MunicipioID == Municipio.Malargüe ? (IAforoDeudorVario) new AforoDVMG() : (IAforoDeudorVario) null;
  }

  private bool ValidarDatos()
  {
    List<string> errores = new List<string>();
    if (this.cboOfic.Items.Count == 0)
      errores.Add("No hay oficina seleccionada.");
    if (this.mebCuenta.Entity == null)
      errores.Add("Debe ingresar un número de cuenta.");
    if (this.dtbFechVenc.Date < new DateTime(1980, 1, 1))
      errores.Add("Debe ingresar una fecha de vencimiento.");
    if (errores.Count <= 0)
      return true;
    new dlgErrorList((Form) this).mostarError("Verificar", errores);
    return false;
  }

  private void ValidarAntesGuardar()
  {
    if (this.cboOfic.Items == null || this.cboOfic.Items.Count == 0)
      this.errores.Add("No hay oficina seleccionada.");
    if (this.mebCuenta.Entity == null)
      this.errores.Add("Debe ingresar un número de cuenta.");
    if (string.IsNullOrWhiteSpace(this.txtDetalle.Text.Trim()))
      this.errores.Add("Debe ingresar el detalle del aforo.");
    if (this.gridAforos is IBuscador gridAforos)
      this.EjecutarAccion(gridAforos, frmAforosDeudoresVarios.Accion.ValidarDatos);
    if (!(this.gridBusqueda is IBuscador gridBusqueda))
      return;
    this.EjecutarAccion(gridBusqueda, frmAforosDeudoresVarios.Accion.ValidarDatos);
  }

  private void EjecutarAccion(IBuscador buscador, frmAforosDeudoresVarios.Accion accion)
  {
    switch (accion)
    {
      case frmAforosDeudoresVarios.Accion.BusquedaCompleta:
        buscador.Limpiar();
        buscador.Buscar(this.ctacte);
        break;
      case frmAforosDeudoresVarios.Accion.SoloLimpiar:
        buscador.Limpiar();
        break;
      case frmAforosDeudoresVarios.Accion.SoloBuscar:
        buscador.Buscar(this.ctacte);
        break;
      case frmAforosDeudoresVarios.Accion.ValidarDatos:
        this.errores.AddRange((IEnumerable<string>) buscador.ValidarDatos());
        break;
    }
  }

  private void CargarDatos()
  {
    this.entidad = this.CrearEntidad();
    this.entidad.Detalle = this.txtDetalle.Text.Trim();
    this.entidad.CodiOfic = short.Parse(((ComboBoxItem) this.cboOfic.SelectedItem).Value.ToString());
    this.entidad.CuenCtct = (this.mebCuenta.Entity as CCComun).CuenCtct;
    this.gridAforos?.CargarDatos(this.entidad);
  }

  private void btnBuscar_Click(object sender, EventArgs e)
  {
    if (!this.ValidarDatos())
      return;
    this.SetValues();
    this.expCtaCte.BuscarDatosCuenta(this.ctacte, false);
    if (!this.ctacte.Existe)
    {
      new frmMensaje((Form) this).mostrarError($"La cuenta {this.ctacte.CuenCtct} NO EXISTE en la oficina seleccionada. Verificar...");
      this.LimpiarControles();
    }
    else
    {
      // ISSUE: method pointer
      new frmEsperar((Form) this).procesar(new Action((object) this, __methodptr(\u003CbtnBuscar_Click\u003Eg__EjecutarBusqueda\u007C19_0)));
      if (this.ctacte.TipoResultado == TipoResultadoCtaCte.SinDeuda)
        ToastHelper.ShowOrFallback((Form) this, "No se encontro deuda.", ToastHelper.ToastType.Info, ToastHelper.ToastPosition.TopRight);
    }
  }

  private void btnNuevoDV_Click(object sender, EventArgs e)
  {
    using (mdlDeudorVario mdlDeudorVario = new mdlDeudorVario())
    {
      mdlDeudorVario.StartPosition = FormStartPosition.CenterParent;
      if (mdlDeudorVario.ShowDialog((IWin32Window) this) == DialogResult.OK)
        this.mebCuenta.Entity = (Entity) new CCComun()
        {
          CodiOfic = mdlDeudorVario.deudor.CodiOfic,
          CuenCtct = mdlDeudorVario.deudor.CodiDeva,
          CucuPers = mdlDeudorVario.deudor.CucuPers,
          DetaPers = mdlDeudorVario.deudor.DetaPers
        };
      else
        this.mebCuenta.Entity = (Entity) null;
    }
  }

  private void btnGenerar_Click(object sender, EventArgs e)
  {
    this.errores.Clear();
    this.ValidarAntesGuardar();
    if (this.errores.Count > 0)
    {
      new dlgErrorList((Form) this).mostarError("Verificar", this.errores);
    }
    else
    {
      this.CargarDatos();
      string mensaje = new frmEsperar((Form) this).generar((Func<string>) (() => this.experto.GenerarAforo(this.entidad)));
      if (string.IsNullOrEmpty(mensaje))
      {
        ToastHelper.ShowOrFallback((Form) this, "Aforo generado correctamente.", ToastHelper.ToastType.Success, ToastHelper.ToastPosition.TopRight, 3800);
        this.LimpiarControles();
      }
      else
        new frmMensaje((Form) this).mostrarError(mensaje);
    }
  }

  private void dtbFechVenc_Leave(object sender, EventArgs e)
  {
    if (!(this.dtbFechVenc.Date < new DateTime(1980, 1, 1)))
      return;
    this.dtbFechVenc.Date = this.hoy;
  }

  private void mebCuenta_EntityChangedDone(object source, EntityChangedEventArgs e)
  {
    this.SetValues();
    if (this.gridBusqueda is IBuscador gridBusqueda1)
      gridBusqueda1.TerminoCarga = false;
    foreach (Control control in (ArrangedElementCollection) this.panGrillaDeuda.Controls)
    {
      if (control is IBuscador buscador)
        this.EjecutarAccion(buscador, frmAforosDeudoresVarios.Accion.SoloLimpiar);
    }
    if (!(this.gridBusqueda is IBuscador gridBusqueda2))
      return;
    gridBusqueda2.TerminoCarga = true;
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmAforosDeudoresVarios));
    this.panContenedorCentroTop = new MetroPanel();
    this.panGrillaServicios = new MetroPanel();
    this.panInferior = new MetroPanel();
    this.metroLabel3 = new MetroLabel();
    this.btnGenerar = new SimpleButton();
    this.txtDetalle = new MetroTextBox();
    this.panGrillaDeuda = new MetroPanel();
    this.panBusquedaSup = new MetroPanel();
    this.btnNuevoDV = new SimpleButton();
    this.mebCuenta = new MetroEntityBox();
    this.lblDatosDomi = new MetroLabel();
    this.lblDatosPersona = new MetroLabel();
    this.btnBuscar = new SimpleButton();
    this.metroLabel2 = new MetroLabel();
    this.dtbFechVenc = new MetroDateTextBox();
    this.metroLabel1 = new MetroLabel();
    this.cboOfic = new MetroComboBox();
    this.lblOfic = new MetroLabel();
    this.panContenedorCentroTop.SuspendLayout();
    this.panInferior.SuspendLayout();
    this.panBusquedaSup.SuspendLayout();
    this.SuspendLayout();
    this.panContenedorCentroTop.Controls.Add((Control) this.panGrillaServicios);
    this.panContenedorCentroTop.Controls.Add((Control) this.panInferior);
    this.panContenedorCentroTop.Controls.Add((Control) this.panGrillaDeuda);
    this.panContenedorCentroTop.Controls.Add((Control) this.panBusquedaSup);
    this.panContenedorCentroTop.Dock = DockStyle.Fill;
    this.panContenedorCentroTop.Location = new Point(0, 0);
    this.panContenedorCentroTop.Name = "panContenedorCentroTop";
    this.panContenedorCentroTop.Size = new Size(1360, 630);
    this.panContenedorCentroTop.TabIndex = 2;
    this.panGrillaServicios.Dock = DockStyle.Fill;
    this.panGrillaServicios.Location = new Point(0, 296);
    this.panGrillaServicios.Name = "panGrillaServicios";
    this.panGrillaServicios.Size = new Size(1360, 216);
    this.panGrillaServicios.TabIndex = 5;
    this.panInferior.Controls.Add((Control) this.metroLabel3);
    this.panInferior.Controls.Add((Control) this.btnGenerar);
    this.panInferior.Controls.Add((Control) this.txtDetalle);
    this.panInferior.Dock = DockStyle.Bottom;
    this.panInferior.Location = new Point(0, 512 /*0x0200*/);
    this.panInferior.Name = "panInferior";
    this.panInferior.Size = new Size(1360, 118);
    this.panInferior.TabIndex = 6;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(199, 30);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(91, 19);
    this.metroLabel3.TabIndex = 1001;
    this.metroLabel3.Text = "Detalle Aforo";
    ((BaseStyleControl) this.btnGenerar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnGenerar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnGenerar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnGenerar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnGenerar.ImageOptions.Image");
    ((Control) this.btnGenerar).Location = new Point(617, 74);
    ((Control) this.btnGenerar).Name = "btnGenerar";
    ((Control) this.btnGenerar).Size = new Size(140, 41);
    ((Control) this.btnGenerar).TabIndex = 1000;
    ((Control) this.btnGenerar).Text = "GENERAR AFORO";
    ((Control) this.btnGenerar).Click += new EventHandler(this.btnGenerar_Click);
    this.txtDetalle.FontSize = 16f;
    this.txtDetalle.Location = new Point(302, 14);
    this.txtDetalle.MaxLength = 200;
    this.txtDetalle.Multiline = true;
    this.txtDetalle.Name = "txtDetalle";
    this.txtDetalle.Size = new Size(756, 51);
    this.txtDetalle.TabIndex = 998;
    this.panGrillaDeuda.Dock = DockStyle.Top;
    this.panGrillaDeuda.Location = new Point(0, 98);
    this.panGrillaDeuda.Name = "panGrillaDeuda";
    this.panGrillaDeuda.Size = new Size(1360, 198);
    this.panGrillaDeuda.TabIndex = 4;
    this.panBusquedaSup.Controls.Add((Control) this.btnNuevoDV);
    this.panBusquedaSup.Controls.Add((Control) this.mebCuenta);
    this.panBusquedaSup.Controls.Add((Control) this.lblDatosDomi);
    this.panBusquedaSup.Controls.Add((Control) this.lblDatosPersona);
    this.panBusquedaSup.Controls.Add((Control) this.btnBuscar);
    this.panBusquedaSup.Controls.Add((Control) this.metroLabel2);
    this.panBusquedaSup.Controls.Add((Control) this.dtbFechVenc);
    this.panBusquedaSup.Controls.Add((Control) this.metroLabel1);
    this.panBusquedaSup.Controls.Add((Control) this.cboOfic);
    this.panBusquedaSup.Controls.Add((Control) this.lblOfic);
    this.panBusquedaSup.Dock = DockStyle.Top;
    this.panBusquedaSup.Location = new Point(0, 0);
    this.panBusquedaSup.Name = "panBusquedaSup";
    this.panBusquedaSup.Size = new Size(1360, 98);
    this.panBusquedaSup.TabIndex = 3;
    ((BaseStyleControl) this.btnNuevoDV).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnNuevoDV).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnNuevoDV).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnNuevoDV.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnNuevoDV.ImageOptions.Image");
    ((Control) this.btnNuevoDV).Location = new Point(435, 47);
    ((Control) this.btnNuevoDV).Name = "btnNuevoDV";
    ((Control) this.btnNuevoDV).Size = new Size(112 /*0x70*/, 34);
    ((Control) this.btnNuevoDV).TabIndex = 5;
    ((Control) this.btnNuevoDV).Text = "Nuevo DV";
    ((Control) this.btnNuevoDV).Click += new EventHandler(this.btnNuevoDV_Click);
    this.mebCuenta.AllowEmpty = false;
    this.mebCuenta.AllowSqlCharacters = false;
    this.mebCuenta.BackColor = Color.White;
    this.mebCuenta.Entity = (Entity) null;
    this.mebCuenta.ExternalValidation = (Func<string>) null;
    this.mebCuenta.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebCuenta.LabelText = "";
    this.mebCuenta.Location = new Point(384, 17);
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
    this.mebCuenta.Size = new Size(163, 23);
    this.mebCuenta.TabIndex = 2;
    this.mebCuenta.TextAlign = HorizontalAlignment.Center;
    this.mebCuenta.TextBoxWidth = 160 /*0xA0*/;
    this.mebCuenta.EntityChangedDone += new AfterEntityChange(this.mebCuenta_EntityChangedDone);
    this.lblDatosDomi.AutoSize = false;
    this.lblDatosDomi.Location = new Point(565, 52);
    this.lblDatosDomi.Name = "lblDatosDomi";
    this.lblDatosDomi.Size = new Size(780, 40);
    this.lblDatosDomi.TabIndex = 18;
    this.lblDatosDomi.Text = "DATOS DEL DOMICILIO \r\nREAL!!!!!!!!!!!!!!!!!!!!!";
    this.lblDatosDomi.Visible = false;
    this.lblDatosPersona.AutoSize = false;
    this.lblDatosPersona.Location = new Point(565, 17);
    this.lblDatosPersona.Name = "lblDatosPersona";
    this.lblDatosPersona.Size = new Size(780, 23);
    this.lblDatosPersona.TabIndex = 17;
    this.lblDatosPersona.Text = "DATOS DE LA PERSONA!!!!!!!!!!!!!!!!";
    this.lblDatosPersona.TextAlign = ContentAlignment.MiddleLeft;
    ((BaseStyleControl) this.btnBuscar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnBuscar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnBuscar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnBuscar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscar.ImageOptions.Image");
    ((Control) this.btnBuscar).Location = new Point(384, 47);
    ((Control) this.btnBuscar).Name = "btnBuscar";
    ((Control) this.btnBuscar).Size = new Size(45, 34);
    ((Control) this.btnBuscar).TabIndex = 4;
    ((Control) this.btnBuscar).Click += new EventHandler(this.btnBuscar_Click);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(15, 52);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(124, 25);
    this.metroLabel2.TabIndex = 15;
    this.metroLabel2.Text = "Fecha Vencimiento\r\n";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleCenter;
    this.dtbFechVenc.Location = new Point(151, 52);
    this.dtbFechVenc.MinDate = new DateTime(2010, 1, 1, 0, 0, 0, 0);
    this.dtbFechVenc.Name = "dtbFechVenc";
    this.dtbFechVenc.Size = new Size(103, 25);
    this.dtbFechVenc.TabIndex = 3;
    this.dtbFechVenc.Leave += new EventHandler(this.dtbFechVenc_Leave);
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(325, 19);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(50, 19);
    this.metroLabel1.TabIndex = 13;
    this.metroLabel1.Text = "Cuenta";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.cboOfic.FormattingEnabled = false;
    this.cboOfic.Location = new Point(151, 17);
    this.cboOfic.Name = "cboOfic";
    this.cboOfic.Size = new Size(143, 23);
    this.cboOfic.TabIndex = 1;
    this.lblOfic.AutoSize = false;
    this.lblOfic.Location = new Point(89, 17);
    this.lblOfic.Name = "lblOfic";
    this.lblOfic.Size = new Size(50, 19);
    this.lblOfic.TabIndex = 12;
    this.lblOfic.Text = "Oficina";
    this.lblOfic.TextAlign = ContentAlignment.MiddleRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1360, 630);
    this.ControlBox = false;
    this.Controls.Add((Control) this.panContenedorCentroTop);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.None;
    this.Name = nameof (frmAforosDeudoresVarios);
    this.Text = "Aforos de Deudores Varios";
    this.WindowState = FormWindowState.Maximized;
    this.panContenedorCentroTop.ResumeLayout(false);
    this.panInferior.ResumeLayout(false);
    this.panBusquedaSup.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  private enum Accion
  {
    BusquedaCompleta,
    SoloLimpiar,
    SoloBuscar,
    ValidarDatos,
  }
}
