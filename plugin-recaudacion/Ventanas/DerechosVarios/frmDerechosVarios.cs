// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.frmDerechosVarios
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
using InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Expertos.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.GridDerechos.Maipu;
using InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Herencia;
using InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Personas.Maipu;
using InfoGov.Utils;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios;

public class frmDerechosVarios : BaseForm
{
  private IEntidadDerechoVario entidad;
  internal IExpertoDerechoVario experto;
  private IPersonaDerechoVario busquedaPersona;
  private IDerechosVarios busquedaDerechos;
  private List<string> errores = new List<string>();
  private IContainer components = (IContainer) null;
  private MetroPanel panPersona;
  private MetroPanel panDerechos;
  private MetroPanel panInferior;
  private MetroTextBox txtDetalle;
  private MetroLabel metroLabel1;
  private SimpleButton btnImprimir;

  public frmDerechosVarios()
  {
    this.InitializeComponent();
    this.idPlugin = 28;
    this.SetControls();
  }

  private void SetControls()
  {
    this.entidad = this.CrearEntidad();
    if (PARAMS.MunicipioID == Municipio.Maipú)
    {
      this.experto = (IExpertoDerechoVario) new ExpDerechoVarioMP();
      this.busquedaPersona = (IPersonaDerechoVario) new PersonaDereVMaipu();
      this.busquedaDerechos = (IDerechosVarios) new GridDerechosMaipu(this.experto as ExpDerechoVarioMP, this.hasPermissionFor("FechaBoleto"));
    }
    else
    {
      this.experto = (IExpertoDerechoVario) null;
      this.busquedaPersona = (IPersonaDerechoVario) null;
      this.busquedaDerechos = (IDerechosVarios) null;
    }
    if (this.busquedaPersona != null)
    {
      ((Control) this.busquedaPersona).Dock = DockStyle.Fill;
      this.panPersona.Controls.Add((Control) this.busquedaPersona);
    }
    if (this.busquedaDerechos == null)
      return;
    ((Control) this.busquedaDerechos).Dock = DockStyle.Fill;
    this.panDerechos.Controls.Add((Control) this.busquedaDerechos);
  }

  private void LimpiarControles()
  {
    this.txtDetalle.Text = string.Empty;
    if (this.busquedaPersona is IBuscador busquedaPersona)
      this.EjecutarAccion(busquedaPersona, frmDerechosVarios.Accion.SoloLimpiar);
    if (this.busquedaDerechos is IBuscador busquedaDerechos)
      this.EjecutarAccion(busquedaDerechos, frmDerechosVarios.Accion.SoloLimpiar);
    try
    {
      this.busquedaPersona?.SetFocus();
    }
    catch
    {
    }
  }

  private void EjecutarAccion(IBuscador buscador, frmDerechosVarios.Accion accion)
  {
    if (accion == frmDerechosVarios.Accion.SoloLimpiar)
    {
      buscador.Limpiar();
    }
    else
    {
      if (accion != frmDerechosVarios.Accion.ValidarDatos)
        return;
      this.errores.AddRange((IEnumerable<string>) buscador.ValidarDatos());
    }
  }

  private void ValidarDatos()
  {
    if (!string.IsNullOrWhiteSpace(this.txtDetalle.Text.Trim()))
      return;
    this.errores.Add("Debe ingresar el detalle del boleto.");
  }

  private void CargarDatos()
  {
    this.entidad = this.CrearEntidad();
    this.entidad.Detalle = this.txtDetalle.Text.Trim();
    this.busquedaPersona?.CargarDatosPersona(this.entidad);
    this.busquedaDerechos?.CargarDerechosVariosSeleccionados(this.entidad);
  }

  private IEntidadDerechoVario CrearEntidad()
  {
    return PARAMS.MunicipioID == Municipio.Maipú ? (IEntidadDerechoVario) new DerechoVarioMP() : (IEntidadDerechoVario) null;
  }

  private void btnImprimir_Click(object sender, EventArgs e)
  {
    this.errores.Clear();
    this.ValidarDatos();
    if (this.busquedaPersona is IBuscador busquedaPersona)
      this.EjecutarAccion(busquedaPersona, frmDerechosVarios.Accion.ValidarDatos);
    if (this.busquedaDerechos is IBuscador busquedaDerechos)
      this.EjecutarAccion(busquedaDerechos, frmDerechosVarios.Accion.ValidarDatos);
    if (this.errores.Count > 0)
    {
      new dlgErrorList((Form) this).mostarError("Verificar", this.errores);
    }
    else
    {
      this.CargarDatos();
      string mensaje1 = new frmEsperar((Form) this).generar((Func<string>) (() => this.experto.GenerarBoleto(this.entidad)));
      if (string.IsNullOrEmpty(mensaje1))
      {
        string mensaje2 = new frmEsperar((Form) this).generar((Func<string>) (() => this.experto.ImprimirBoleto(this.entidad)), "Imprimiendo...");
        if (string.IsNullOrEmpty(mensaje2))
        {
          ToastHelper.ShowOrFallback((Form) this, "Boleto generado correctamente.", ToastHelper.ToastType.Success, ToastHelper.ToastPosition.TopRight, 3800);
          this.LimpiarControles();
        }
        else
          new frmMensaje((Form) this).mostrarError(mensaje2);
      }
      else
        new frmMensaje((Form) this).mostrarError(mensaje1);
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmDerechosVarios));
    this.panPersona = new MetroPanel();
    this.panDerechos = new MetroPanel();
    this.panInferior = new MetroPanel();
    this.btnImprimir = new SimpleButton();
    this.metroLabel1 = new MetroLabel();
    this.txtDetalle = new MetroTextBox();
    this.panInferior.SuspendLayout();
    this.SuspendLayout();
    this.panPersona.Dock = DockStyle.Top;
    this.panPersona.Location = new Point(0, 0);
    this.panPersona.Name = "panPersona";
    this.panPersona.Size = new Size(1360, 172);
    this.panPersona.TabIndex = 0;
    this.panDerechos.Dock = DockStyle.Fill;
    this.panDerechos.Location = new Point(0, 172);
    this.panDerechos.Name = "panDerechos";
    this.panDerechos.Size = new Size(1360, 310);
    this.panDerechos.TabIndex = 1;
    this.panInferior.Controls.Add((Control) this.btnImprimir);
    this.panInferior.Controls.Add((Control) this.metroLabel1);
    this.panInferior.Controls.Add((Control) this.txtDetalle);
    this.panInferior.Dock = DockStyle.Bottom;
    this.panInferior.Location = new Point(0, 482);
    this.panInferior.Name = "panInferior";
    this.panInferior.Size = new Size(1360, 148);
    this.panInferior.TabIndex = 2;
    ((BaseStyleControl) this.btnImprimir).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnImprimir).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnImprimir).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnImprimir.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnImprimir.ImageOptions.Image");
    ((Control) this.btnImprimir).Location = new Point(625, 83);
    ((Control) this.btnImprimir).Name = "btnImprimir";
    ((Control) this.btnImprimir).Size = new Size(94, 41);
    ((Control) this.btnImprimir).TabIndex = 999;
    ((Control) this.btnImprimir).Text = "Imprimir";
    ((Control) this.btnImprimir).Click += new EventHandler(this.btnImprimir_Click);
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(187, 29);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(91, 19);
    this.metroLabel1.TabIndex = 3;
    this.metroLabel1.Text = "Detalle Boleto";
    this.txtDetalle.FontSize = 16f;
    this.txtDetalle.Location = new Point(290, 6);
    this.txtDetalle.MaxLength = 200;
    this.txtDetalle.Multiline = true;
    this.txtDetalle.Name = "txtDetalle";
    this.txtDetalle.Size = new Size(756, 65);
    this.txtDetalle.TabIndex = 997;
    this.AcceptButton = (IButtonControl) this.btnImprimir;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1360, 630);
    this.Controls.Add((Control) this.panDerechos);
    this.Controls.Add((Control) this.panPersona);
    this.Controls.Add((Control) this.panInferior);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.None;
    this.Name = nameof (frmDerechosVarios);
    this.Text = "Derechos Varios";
    this.panInferior.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  private enum Accion
  {
    SoloLimpiar = 1,
    ValidarDatos = 2,
  }
}
