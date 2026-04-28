// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmConfiguraciones
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmConfiguraciones : BaseForm
{
  private string TickeadoraActiva;
  private string Tickeadora;
  private ExpConfiguracion experto;
  private bool ActConfigPersonales = PARAMS.Municipio == "Maipú";
  private IContainer components = (IContainer) null;
  private MetroPanel panGeneral;
  private MetroPanel panTickeadora;
  private MetroLabel lblTickeadora;
  private MetroCheckBox chkTickeadora;
  private MetroTextBox mtbTickeadora;
  private MetroPanel panConfigUsuario;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroComboBox cboImpreBole;
  private MetroLabel metroLabel3;
  private MetroComboBox cboImpreRepo;
  private MetroLabel metroLabel4;
  private MetroComboBox cboImpreWindows;
  private MetroButton btnGuardar;

  public frmConfiguraciones()
  {
    this.InitializeComponent();
    try
    {
      this.experto = new ExpConfiguracion(this.ActConfigPersonales);
      if (this.experto == null)
        throw new Exception("Error de ExpConfiguracion");
      this.TickeadoraActiva = PARAMS.Parameters.GetString(nameof (TickeadoraActiva));
      this.Tickeadora = PARAMS.Parameters.GetString(nameof (Tickeadora));
      this.mtbTickeadora.Text = string.IsNullOrEmpty(this.Tickeadora) ? "Microsoft Print to PDF" : this.Tickeadora;
      this.chkTickeadora.Checked = this.TickeadoraActiva == "True";
      this.ControlesActivos(this.TickeadoraActiva == "True");
      this.panConfigUsuario.Visible = this.panConfigUsuario.Enabled = this.ActConfigPersonales;
      if (!this.ActConfigPersonales)
        return;
      this.EstablecerConfigUsuario();
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
      this.Close();
    }
  }

  private void chkTickeadora_CheckedChanged(object sender, EventArgs e)
  {
    try
    {
      this.ControlesActivos(this.chkTickeadora.Checked);
      this.experto.TickeadoraActiva(this.chkTickeadora.Checked);
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
    }
  }

  private void ControlesActivos(bool activos)
  {
    this.mtbTickeadora.Enabled = this.mtbTickeadora.Visible = activos;
  }

  private void EstablecerConfigUsuario()
  {
    this.cboImpreBole.DataSource = (object) this.experto.config.Impresoras.ToList<string>();
    this.cboImpreRepo.DataSource = (object) this.experto.config.Impresoras.ToList<string>();
    this.cboImpreWindows.DataSource = (object) this.experto.config.Impresoras.ToList<string>();
    if (!string.IsNullOrWhiteSpace(this.experto.config.ImprBole) && this.experto.config.Impresoras.Exists((Predicate<string>) (x => x == this.experto.config.ImprBole)))
      this.cboImpreBole.SelectedIndex = this.experto.config.Impresoras.IndexOf(this.experto.config.ImprBole);
    if (!string.IsNullOrWhiteSpace(this.experto.config.ImprRepo) && this.experto.config.Impresoras.Exists((Predicate<string>) (x => x == this.experto.config.ImprRepo)))
      this.cboImpreRepo.SelectedIndex = this.experto.config.Impresoras.IndexOf(this.experto.config.ImprRepo);
    if (string.IsNullOrWhiteSpace(this.experto.config.ImprSistema) || !this.experto.config.Impresoras.Exists((Predicate<string>) (x => x == this.experto.config.ImprSistema)))
      return;
    this.cboImpreWindows.SelectedIndex = this.experto.config.Impresoras.IndexOf(this.experto.config.ImprSistema);
  }

  private void frmConfiguraciones_Shown(object sender, EventArgs e)
  {
    new frmMensaje((Form) this).mostrarInformación("Algunos cambios solo serán aplicados luego de cerrar y volver a iniciar el sistema.");
  }

  private void frmConfiguraciones_FormClosing(object sender, FormClosingEventArgs e)
  {
    try
    {
      string imp = this.mtbTickeadora.Text.Trim();
      if (string.IsNullOrEmpty(imp))
        throw new Exception("El nombre de la tickeadora no puede estar vacío.");
      if (!this.chkTickeadora.Checked || !(imp != this.Tickeadora))
        return;
      this.experto.TickeadoraActual(imp);
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
      e.Cancel = true;
    }
  }

  private void CargarValores()
  {
    this.experto.config.ImprBole = this.cboImpreBole.DataSource == null || this.cboImpreBole.Items == null || this.cboImpreBole.Items.Count <= 0 ? string.Empty : this.cboImpreBole.SelectedItem.ToString();
    this.experto.config.ImprRepo = this.cboImpreRepo.DataSource == null || this.cboImpreRepo.Items == null || this.cboImpreRepo.Items.Count <= 0 ? string.Empty : this.cboImpreRepo.SelectedItem.ToString();
    this.experto.config.ImprSistema = this.cboImpreWindows.DataSource == null || this.cboImpreWindows.Items == null || this.cboImpreWindows.Items.Count <= 0 ? string.Empty : this.cboImpreWindows.SelectedItem.ToString();
  }

  private void btnGuardar_Click(object sender, EventArgs e)
  {
    this.CargarValores();
    if (this.experto.GuardarConfigUsuario())
      new frmMensaje((Form) this).mostrarConfirmación("Los cambios se han guardado correctamente.");
    else
      new frmMensaje((Form) this).mostrarError("No se han podido guardar los cambios.");
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.panGeneral = new MetroPanel();
    this.panTickeadora = new MetroPanel();
    this.mtbTickeadora = new MetroTextBox();
    this.chkTickeadora = new MetroCheckBox();
    this.lblTickeadora = new MetroLabel();
    this.panConfigUsuario = new MetroPanel();
    this.metroLabel2 = new MetroLabel();
    this.cboImpreBole = new MetroComboBox();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.cboImpreRepo = new MetroComboBox();
    this.metroLabel4 = new MetroLabel();
    this.cboImpreWindows = new MetroComboBox();
    this.btnGuardar = new MetroButton();
    this.panGeneral.SuspendLayout();
    this.panTickeadora.SuspendLayout();
    this.panConfigUsuario.SuspendLayout();
    this.SuspendLayout();
    this.panGeneral.Controls.Add((Control) this.panConfigUsuario);
    this.panGeneral.Controls.Add((Control) this.panTickeadora);
    this.panGeneral.Dock = DockStyle.Fill;
    this.panGeneral.Location = new Point(0, 0);
    this.panGeneral.Name = "panGeneral";
    this.panGeneral.Size = new Size(1008, 681);
    this.panGeneral.TabIndex = 0;
    this.panTickeadora.Controls.Add((Control) this.mtbTickeadora);
    this.panTickeadora.Controls.Add((Control) this.chkTickeadora);
    this.panTickeadora.Controls.Add((Control) this.lblTickeadora);
    this.panTickeadora.Dock = DockStyle.Top;
    this.panTickeadora.Location = new Point(0, 0);
    this.panTickeadora.Name = "panTickeadora";
    this.panTickeadora.Size = new Size(1008, 94);
    this.panTickeadora.TabIndex = 2;
    this.mtbTickeadora.Location = new Point(155, 45);
    this.mtbTickeadora.MaxLength = 200;
    this.mtbTickeadora.Name = "mtbTickeadora";
    this.mtbTickeadora.Size = new Size(242, 23);
    this.mtbTickeadora.TabIndex = 6;
    this.chkTickeadora.AutoSize = false;
    this.chkTickeadora.Location = new Point(15, 43);
    this.chkTickeadora.Name = "chkTickeadora";
    this.chkTickeadora.Size = new Size(128 /*0x80*/, 19);
    this.chkTickeadora.TabIndex = 1;
    this.chkTickeadora.Text = "Tickeadora Activa";
    this.chkTickeadora.CheckedChanged += new EventHandler(this.chkTickeadora_CheckedChanged);
    this.lblTickeadora.AutoSize = false;
    this.lblTickeadora.FontSize = 18f;
    this.lblTickeadora.Location = new Point(6, 6);
    this.lblTickeadora.Name = "lblTickeadora";
    this.lblTickeadora.Size = new Size(180, 25);
    this.lblTickeadora.TabIndex = 2;
    this.lblTickeadora.Text = "Configurar Tickeadora";
    this.panConfigUsuario.Controls.Add((Control) this.btnGuardar);
    this.panConfigUsuario.Controls.Add((Control) this.metroLabel4);
    this.panConfigUsuario.Controls.Add((Control) this.cboImpreWindows);
    this.panConfigUsuario.Controls.Add((Control) this.metroLabel3);
    this.panConfigUsuario.Controls.Add((Control) this.cboImpreRepo);
    this.panConfigUsuario.Controls.Add((Control) this.metroLabel1);
    this.panConfigUsuario.Controls.Add((Control) this.cboImpreBole);
    this.panConfigUsuario.Controls.Add((Control) this.metroLabel2);
    this.panConfigUsuario.Dock = DockStyle.Fill;
    this.panConfigUsuario.Location = new Point(0, 94);
    this.panConfigUsuario.Name = "panConfigUsuario";
    this.panConfigUsuario.Size = new Size(1008, 587);
    this.panConfigUsuario.TabIndex = 3;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.FontSize = 18f;
    this.metroLabel2.Location = new Point(6, 9);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(228, 25);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Configuraciones Personales";
    this.cboImpreBole.CausesValidation = false;
    this.cboImpreBole.Location = new Point(271, 68);
    this.cboImpreBole.Name = "cboImpreBole";
    this.cboImpreBole.Size = new Size(224 /*0xE0*/, 23);
    this.cboImpreBole.TabIndex = 4;
    this.metroLabel1.Location = new Point(113, 70);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(146, 19);
    this.metroLabel1.TabIndex = 5;
    this.metroLabel1.Text = "Impresora Para Boletos";
    this.metroLabel3.Location = new Point(103, 118);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(156, 19);
    this.metroLabel3.TabIndex = 7;
    this.metroLabel3.Text = "Impresora Para Reportes";
    this.cboImpreRepo.CausesValidation = false;
    this.cboImpreRepo.Location = new Point(271, 116);
    this.cboImpreRepo.Name = "cboImpreRepo";
    this.cboImpreRepo.Size = new Size(224 /*0xE0*/, 23);
    this.cboImpreRepo.TabIndex = 6;
    this.metroLabel4.Location = new Point(15, 166);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(244, 19);
    this.metroLabel4.TabIndex = 9;
    this.metroLabel4.Text = "Impresora Predeterminada de Windows";
    this.cboImpreWindows.CausesValidation = false;
    this.cboImpreWindows.Location = new Point(271, 164);
    this.cboImpreWindows.Name = "cboImpreWindows";
    this.cboImpreWindows.Size = new Size(224 /*0xE0*/, 23);
    this.cboImpreWindows.TabIndex = 8;
    this.btnGuardar.Location = new Point(430, 237);
    this.btnGuardar.Name = "btnGuardar";
    this.btnGuardar.Size = new Size(109, 32 /*0x20*/);
    this.btnGuardar.TabIndex = 10;
    this.btnGuardar.Text = "Guardar Cambios";
    this.btnGuardar.Click += new EventHandler(this.btnGuardar_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(1008, 681);
    this.Controls.Add((Control) this.panGeneral);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmConfiguraciones);
    this.Text = "Configuraciones";
    this.FormClosing += new FormClosingEventHandler(this.frmConfiguraciones_FormClosing);
    this.Shown += new EventHandler(this.frmConfiguraciones_Shown);
    this.panGeneral.ResumeLayout(false);
    this.panTickeadora.ResumeLayout(false);
    this.panConfigUsuario.ResumeLayout(false);
    this.panConfigUsuario.PerformLayout();
    this.ResumeLayout(false);
  }
}
