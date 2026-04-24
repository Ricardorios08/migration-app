// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Footers.Maipu.footerPPMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Entidades.PlanPago;
using InfoGov.Plugins.Recaudacion.Expertos.PlanPago;
using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Footers.Maipu;

public class footerPPMP : BuscadorBasePP, IFooterPlanPago
{
  private List<TipoFirmanteMP> tiposFirmantes = new List<TipoFirmanteMP>();
  private ExpPlanPagoMP expPP = new ExpPlanPagoMP();
  private readonly EntityManager EM;
  private readonly ExpConfiguracion expConfig;
  private IPlanPago _plan;
  private IContainer components = (IContainer) null;
  private MetroComboBox cboCaracter;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroEntityBox mebFirmante;
  private MetroCheckBox chkImprimir;
  private MetroComboBox cboImpresora;

  public footerPPMP(IPlanPago pp)
  {
    this.InitializeComponent();
    this.EM = new EntityManager(28);
    this.EstablecerTiposFirmantes();
    this.expConfig = new ExpConfiguracion(true);
    this.mebFirmante.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
    this.mebFirmante.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
    this._plan = pp;
    this.CargarImpresoras();
  }

  public override void Buscar(CtaCte cuenta) => throw new Exception("Sin implementar.");

  public override void Limpiar()
  {
    if (this.cboCaracter.Items != null && this.cboCaracter.Items.Count >= 0)
      this.cboCaracter.SelectedIndex = 0;
    this.mebFirmante.Entity = (Entity) null;
    this.chkImprimir.Checked = false;
    (this._plan as DTOFaciPagoMP).CodiTifp = (short) 0;
    (this._plan as DTOFaciPagoMP).DetaTifp = string.Empty;
    (this._plan as DTOFaciPagoMP).CufiFapa = 0L;
    (this._plan as DTOFaciPagoMP).FirmFapa = string.Empty;
    (this._plan as DTOFaciPagoMP).ImprimirPPCompleto = false;
    (this._plan as DTOFaciPagoMP).Impresora = string.Empty;
  }

  public string ValidarDatos()
  {
    string impresora = this.cboImpresora.Items == null || this.cboImpresora.Items.Count <= 0 || this.cboImpresora.SelectedItem == null ? string.Empty : this.cboImpresora.SelectedItem.ToString();
    if (this.cboCaracter.Items == null || this.cboCaracter.Items.Count <= 0 || this.cboCaracter.SelectedIndex < 0)
      return "Debe seleccionar el carácter del firmante.";
    if (this.mebFirmante.Entity == null)
      return "Debe seleccionar un firmante.";
    return string.IsNullOrWhiteSpace(impresora) || !this.expConfig.ImpresoraActiva(impresora) ? "La impresora seleccionada no se encuentra activa o no es válida. Verificar..." : string.Empty;
  }

  public void CargarDatosFooter()
  {
    (this._plan as DTOFaciPagoMP).CodiTifp = short.Parse(((ComboBoxItem) this.cboCaracter.SelectedItem).Value.ToString());
    (this._plan as DTOFaciPagoMP).DetaTifp = ((ComboBoxItem) this.cboCaracter.SelectedItem).Text;
    (this._plan as DTOFaciPagoMP).CufiFapa = (this.mebFirmante.Entity as Persona).CucuPers;
    (this._plan as DTOFaciPagoMP).FirmFapa = (this.mebFirmante.Entity as Persona).DetaPers;
    (this._plan as DTOFaciPagoMP).ImprimirPPCompleto = this.chkImprimir.Checked;
    (this._plan as DTOFaciPagoMP).Impresora = this.cboImpresora.SelectedItem.ToString();
  }

  private void EstablecerTiposFirmantes()
  {
    this.expPP.ObtenerTiposFirmantes(this.tiposFirmantes);
    this.cboCaracter.ValueMember = "Value";
    this.cboCaracter.DisplayMember = "Text";
    foreach (TipoFirmanteMP tiposFirmante in this.tiposFirmantes)
      this.cboCaracter.Items.Add((object) new ComboBoxItem(tiposFirmante.DetaTifp, (object) tiposFirmante.CodiTifp));
  }

  private void CargarImpresoras()
  {
    this.cboImpresora.DataSource = (object) this.expConfig.config.Impresoras;
    if (string.IsNullOrWhiteSpace(this.expConfig.config.ImprBole) || !this.expConfig.config.Impresoras.Exists((Predicate<string>) (x => x == this.expConfig.config.ImprBole)))
      return;
    this.cboImpresora.SelectedIndex = this.expConfig.config.Impresoras.IndexOf(this.expConfig.config.ImprBole);
  }

  private Filter filtroPersona(string text)
  {
    Filter filter = new Filter();
    if (!Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("DetaPers", "Nombre", FilterMode.Contains, text));
    else
      filter.Items.Add(new FilterItem("CucuPers", "Cuit/Cuil", FilterMode.StartsWith, text));
    return filter;
  }

  private Entity EncontrarPersona(string text, bool usarBuscar)
  {
    return (Entity) this.EM.Find<Persona>(this.filtroPersona(text), true, true);
  }

  private Entity BuscarPersona(string text)
  {
    return (Entity) this.EM.Search<Persona>(this.filtroPersona(text), true);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.cboCaracter = new MetroComboBox();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.mebFirmante = new MetroEntityBox();
    this.chkImprimir = new MetroCheckBox();
    this.cboImpresora = new MetroComboBox();
    this.SuspendLayout();
    this.cboCaracter.FormattingEnabled = false;
    this.cboCaracter.Location = new Point(133, 6);
    this.cboCaracter.Name = "cboCaracter";
    this.cboCaracter.Size = new Size(128 /*0x80*/, 23);
    this.cboCaracter.TabIndex = 1;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(6, 8);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(115, 19);
    this.metroLabel1.TabIndex = 1;
    this.metroLabel1.Text = "Carácter Firmante";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(273, 8);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(61, 19);
    this.metroLabel2.TabIndex = 2;
    this.metroLabel2.Text = "Firmante";
    this.mebFirmante.AllowEmpty = false;
    this.mebFirmante.AllowSqlCharacters = false;
    this.mebFirmante.BackColor = Color.White;
    this.mebFirmante.Entity = (Entity) null;
    this.mebFirmante.ExternalValidation = (Func<string>) null;
    this.mebFirmante.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebFirmante.LabelText = "";
    this.mebFirmante.Location = new Point(343, 6);
    this.mebFirmante.MandatoryWrite = false;
    this.mebFirmante.Margin = new Padding(3, 4, 3, 4);
    this.mebFirmante.MaximumSize = new Size(3000, 23);
    this.mebFirmante.MaxLenght = 11;
    this.mebFirmante.MinimumSize = new Size(100, 23);
    this.mebFirmante.Name = "mebFirmante";
    this.mebFirmante.PropertyDetail = "DetaPers";
    this.mebFirmante.PropertyID = "CucuPers";
    this.mebFirmante.ShowNewButton = false;
    this.mebFirmante.ShowSearchButton = false;
    this.mebFirmante.Size = new Size(322, 23);
    this.mebFirmante.TabIndex = 2;
    this.mebFirmante.TextAlign = HorizontalAlignment.Center;
    this.mebFirmante.TextBoxWidth = 100;
    this.chkImprimir.AutoSize = false;
    this.chkImprimir.Location = new Point(674, 6);
    this.chkImprimir.Name = "chkImprimir";
    this.chkImprimir.Size = new Size(207, 19);
    this.chkImprimir.TabIndex = 3;
    this.chkImprimir.Text = "Imprimir Plan Pago Completo";
    this.cboImpresora.FormattingEnabled = false;
    this.cboImpresora.Location = new Point(893, 6);
    this.cboImpresora.Name = "cboImpresora";
    this.cboImpresora.Size = new Size(169, 23);
    this.cboImpresora.TabIndex = 4;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.cboImpresora);
    this.Controls.Add((Control) this.chkImprimir);
    this.Controls.Add((Control) this.mebFirmante);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.cboCaracter);
    this.Name = nameof (footerPPMP);
    this.Size = new Size(1068, 35);
    this.ResumeLayout(false);
  }
}
