// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.frmEmisionBoleto
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
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Entidades.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Grids.Maipu;
using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Layout;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto;

public class frmEmisionBoleto : BaseForm
{
  private ExpEmiBole experto;
  private ExpCuentaCorriente expCtaCte;
  internal CtaCte ctacte;
  private EmiBole emisionBoleto;
  private DateTime hoy;
  private List<OficinaCtacte> oficinas;
  private IGridEmisionBoleto grid = (IGridEmisionBoleto) null;
  private IContainer components = (IContainer) null;
  private MetroPanel panGeneral;
  private MetroPanel panBusquedaSup;
  private MetroPanel panGrid;
  private MetroLabel metroLabel1;
  private MetroComboBox cboOfic;
  private MetroLabel lblOfic;
  private MetroLabel metroLabel2;
  private MetroDateTextBox dtbFechVenc;
  private SimpleButton btnBuscar;
  private MetroLabel lblDatosDomi;
  private MetroLabel lblDatosPersona;
  private MetroEntityBox mebCuenta;

  public frmEmisionBoleto()
  {
    this.InitializeComponent();
    this.SetControls();
    this.experto = new ExpEmiBole();
    this.expCtaCte = new ExpCuentaCorriente();
    this.ctacte = new CtaCte();
    this.emisionBoleto = new EmiBole();
    this.hoy = Misc.Now();
    this.oficinas = new List<OficinaCtacte>();
    this.lblDatosPersona.DataBindings.Add("Text", (object) this.ctacte, "DetaPers", true, DataSourceUpdateMode.OnPropertyChanged);
    this.lblDatosDomi.DataBindings.Add("Text", (object) this.ctacte, "DetaDomi", true, DataSourceUpdateMode.OnPropertyChanged);
    this.CargarOficinas();
    this.dtbFechVenc.Date = this.hoy;
    this.mebCuenta.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuenta);
    this.mebCuenta.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuenta);
    this.dtbFechVenc.Enabled = this.hasPermissionFor("FechaVencimiento");
  }

  private void SetValues()
  {
    this.ctacte.CodiOfic = short.Parse(((ComboBoxItem) this.cboOfic.SelectedItem).Value.ToString());
    this.ctacte.CuenCtct = this.mebCuenta == null ? string.Empty : (this.mebCuenta.Entity is CCComun entity ? entity.CuenCtct : (string) null) ?? string.Empty;
    this.ctacte.DetaOfic = this.cboOfic.Text.Trim();
    this.ctacte.DetaPers = string.Empty;
    this.ctacte.DetaDomi = string.Empty;
    this.ctacte.FeveCtct = this.dtbFechVenc.Date;
    this.ctacte.FeveCtctBole = this.ctacte.FeveCtct;
    this.ctacte.SoloDeuda = true;
    this.ctacte.Existe = false;
    this.ctacte.TipoResultado = TipoResultadoCtaCte.Ninguno;
  }

  private void SetControls()
  {
    if (PARAMS.Municipio == "Maipú")
      this.grid = (IGridEmisionBoleto) new gridEBMaipu();
    if (this.grid == null)
      return;
    ((Control) this.grid).Dock = DockStyle.Fill;
    this.panGrid.Controls.Add((Control) this.grid);
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
      new frmEsperar((Form) this).procesar(new Action((object) this, __methodptr(\u003CbtnBuscar_Click\u003Eg__EjecutarBusqueda\u007C10_0)));
      if (this.ctacte.TipoResultado == TipoResultadoCtaCte.SinDeuda)
        new frmMensaje((Form) this).mostrarInformación("NO SE ENCONTRÓ DEUDA.");
      this.ActivarGrilla(!string.IsNullOrWhiteSpace(this.ctacte.CuenCtct) && this.ctacte.CodiOfic > (short) 0 && this.ctacte.TipoResultado == TipoResultadoCtaCte.ConDeuda);
    }
  }

  private void ActivarGrilla(bool Activar) => this.panGrid.Enabled = Activar;

  internal void LimpiarControles()
  {
    this.mebCuenta.Entity = (Entity) null;
    this.dtbFechVenc.Date = this.hoy;
    this.ctacte.DetaPers = string.Empty;
    this.ctacte.DetaDomi = string.Empty;
    this.ActivarGrilla(false);
    foreach (Control control in (ArrangedElementCollection) this.panGrid.Controls)
    {
      if (control is IEmisionBoleto emiBole)
        this.EjecutarAccion(emiBole, frmEmisionBoleto.Accion.SoloLimpiar);
    }
    this.mebCuenta.Focus();
  }

  private void EjecutarAccion(IEmisionBoleto emiBole, frmEmisionBoleto.Accion accion)
  {
    switch (accion)
    {
      case frmEmisionBoleto.Accion.BusquedaCompleta:
        emiBole.Limpiar();
        emiBole.Buscar(this.ctacte);
        break;
      case frmEmisionBoleto.Accion.SoloLimpiar:
        emiBole.Limpiar();
        break;
      case frmEmisionBoleto.Accion.SoloBuscar:
        emiBole.Buscar(this.ctacte);
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
      errores.Add("Debe ingresar un número de cuenta.");
    if (this.dtbFechVenc.Date < new DateTime(1980, 1, 1))
      errores.Add("Debe ingresar una fecha de vencimiento.");
    if (errores.Count <= 0)
      return true;
    new dlgErrorList((Form) this).mostarError("Verificar", errores);
    return false;
  }

  private void cboOfic_SelectedValueChanged(object sender, EventArgs e) => this.LimpiarControles();

  private void mebCuenta_Enter(object sender, EventArgs e) => this.LimpiarControles();

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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmEmisionBoleto));
    this.panGeneral = new MetroPanel();
    this.panGrid = new MetroPanel();
    this.panBusquedaSup = new MetroPanel();
    this.mebCuenta = new MetroEntityBox();
    this.lblDatosDomi = new MetroLabel();
    this.lblDatosPersona = new MetroLabel();
    this.btnBuscar = new SimpleButton();
    this.metroLabel2 = new MetroLabel();
    this.dtbFechVenc = new MetroDateTextBox();
    this.metroLabel1 = new MetroLabel();
    this.cboOfic = new MetroComboBox();
    this.lblOfic = new MetroLabel();
    this.panGeneral.SuspendLayout();
    this.panBusquedaSup.SuspendLayout();
    this.SuspendLayout();
    this.panGeneral.Controls.Add((Control) this.panGrid);
    this.panGeneral.Controls.Add((Control) this.panBusquedaSup);
    this.panGeneral.Dock = DockStyle.Fill;
    this.panGeneral.Location = new Point(0, 0);
    this.panGeneral.Name = "panGeneral";
    this.panGeneral.Size = new Size(1360, 768 /*0x0300*/);
    this.panGeneral.TabIndex = 0;
    this.panGrid.Dock = DockStyle.Fill;
    this.panGrid.Location = new Point(0, 98);
    this.panGrid.Name = "panGrid";
    this.panGrid.Size = new Size(1360, 670);
    this.panGrid.TabIndex = 3;
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
    this.panBusquedaSup.TabIndex = 2;
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
    this.mebCuenta.Size = new Size(144 /*0x90*/, 23);
    this.mebCuenta.TabIndex = 2;
    this.mebCuenta.TextAlign = HorizontalAlignment.Center;
    this.mebCuenta.TextBoxWidth = 143;
    this.mebCuenta.Enter += new EventHandler(this.mebCuenta_Enter);
    this.lblDatosDomi.AutoSize = false;
    this.lblDatosDomi.Location = new Point(573, 52);
    this.lblDatosDomi.Name = "lblDatosDomi";
    this.lblDatosDomi.Size = new Size(772, 40);
    this.lblDatosDomi.TabIndex = 18;
    this.lblDatosDomi.Text = "DATOS DEL DOMICILIO \r\nREAL!!!!!!!!!!!!!!!!!!!!!";
    this.lblDatosPersona.AutoSize = false;
    this.lblDatosPersona.Location = new Point(573, 17);
    this.lblDatosPersona.Name = "lblDatosPersona";
    this.lblDatosPersona.Size = new Size(772, 23);
    this.lblDatosPersona.TabIndex = 17;
    this.lblDatosPersona.Text = "DATOS DE LA PERSONA!!!!!!!!!!!!!!!!";
    this.lblDatosPersona.TextAlign = ContentAlignment.MiddleLeft;
    ((BaseStyleControl) this.btnBuscar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnBuscar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnBuscar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnBuscar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscar.ImageOptions.Image");
    ((Control) this.btnBuscar).Location = new Point(431, 49);
    ((Control) this.btnBuscar).Name = "btnBuscar";
    ((Control) this.btnBuscar).Size = new Size(45, 34);
    ((Control) this.btnBuscar).TabIndex = 4;
    ((Control) this.btnBuscar).Click += new EventHandler(this.btnBuscar_Click);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(41, 52);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(98, 25);
    this.metroLabel2.TabIndex = 15;
    this.metroLabel2.Text = "Fecha Consulta";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleLeft;
    this.dtbFechVenc.Location = new Point(151, 52);
    this.dtbFechVenc.MinDate = new DateTime(1980, 1, 1, 0, 0, 0, 0);
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
    this.cboOfic.SelectedValueChanged += new EventHandler(this.cboOfic_SelectedValueChanged);
    this.lblOfic.AutoSize = false;
    this.lblOfic.Location = new Point(89, 17);
    this.lblOfic.Name = "lblOfic";
    this.lblOfic.Size = new Size(50, 19);
    this.lblOfic.TabIndex = 12;
    this.lblOfic.Text = "Oficina";
    this.lblOfic.TextAlign = ContentAlignment.MiddleRight;
    this.AcceptButton = (IButtonControl) this.btnBuscar;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1360, 768 /*0x0300*/);
    this.Controls.Add((Control) this.panGeneral);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.None;
    this.Name = nameof (frmEmisionBoleto);
    this.Text = "Emisión de Boletos";
    this.WindowState = FormWindowState.Maximized;
    this.panGeneral.ResumeLayout(false);
    this.panBusquedaSup.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  private enum Accion
  {
    BusquedaCompleta,
    SoloLimpiar,
    SoloBuscar,
  }
}
