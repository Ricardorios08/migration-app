// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Certificados.SanMartin.CertificadoExencion.repCertExenSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Catastro.Expertos;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Certificados.SanMartin.CertificadoExencion;

public class repCertExenSM : InfoGovPrintForm
{
  private ExpInmuebleSM exp;
  private IContainer components = (IContainer) null;
  private MetroEntityBox mebPersona;
  private MetroLabel metroLabel1;
  private MetroIntTextBox mibCuenta;
  private MetroLabel metroLabel2;
  private MetroTextBox txtExpte;
  private MetroLabel metroLabel3;

  public repCertExenSM()
    : base("Certificado de Exención")
  {
    this.InitializeComponent();
    this.exp = new ExpInmuebleSM();
    this.mebPersona.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
    this.mebPersona.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
  }

  protected override string validateControls()
  {
    if (this.mebPersona.Entity == null)
      return "Ingresar persona";
    if (this.mibCuenta.IntText <= 0)
      return "Ingresar cuenta correcta.";
    if (string.IsNullOrWhiteSpace(this.txtExpte.Text))
      return "Ingresar expte";
    return !this.exp.ExisteCuenta(this.mibCuenta.IntText) ? "La cuenta ingresada no existe. Verificar..." : string.Empty;
  }

  protected override InfoGovReport createReport()
  {
    return (InfoGovReport) new irepCertExenSM()
    {
      CucuPers = ((Persona) this.mebPersona.Entity).CucuPers,
      DetaPers = ((Persona) this.mebPersona.Entity).DetaPers,
      CuenCtct = this.mibCuenta.IntText.ToString(),
      Expediente = this.txtExpte.Text.Trim()
    };
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
    this.mebPersona = new MetroEntityBox();
    this.metroLabel1 = new MetroLabel();
    this.mibCuenta = new MetroIntTextBox();
    this.metroLabel2 = new MetroLabel();
    this.txtExpte = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.SuspendLayout();
    this.butClose.Location = new Point(566, 10);
    this.butClose.TabIndex = 5;
    this.butGenerate.Location = new Point(246, 179);
    this.butGenerate.TabIndex = 4;
    this.mebPersona.AllowEmpty = false;
    this.mebPersona.AllowSqlCharacters = false;
    this.mebPersona.BackColor = Color.White;
    this.mebPersona.Entity = (Entity) null;
    this.mebPersona.ExternalValidation = (Func<string>) null;
    this.mebPersona.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebPersona.LabelText = "";
    this.mebPersona.Location = new Point(107, 61);
    this.mebPersona.MandatoryWrite = false;
    this.mebPersona.Margin = new Padding(3, 4, 3, 4);
    this.mebPersona.MaximumSize = new Size(3000, 23);
    this.mebPersona.MaxLenght = 50;
    this.mebPersona.MinimumSize = new Size(100, 23);
    this.mebPersona.Name = "mebPersona";
    this.mebPersona.PropertyDetail = "DetaPers";
    this.mebPersona.PropertyID = "CucuPers";
    this.mebPersona.ShowNewButton = false;
    this.mebPersona.ShowSearchButton = false;
    this.mebPersona.Size = new Size(482, 23);
    this.mebPersona.TabIndex = 1;
    this.mebPersona.TextAlign = HorizontalAlignment.Center;
    this.mebPersona.TextBoxWidth = 100;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(43, 63 /*0x3F*/);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(55, 19);
    this.metroLabel1.TabIndex = 101;
    this.metroLabel1.Text = "Persona";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.mibCuenta.Location = new Point(107, 101);
    this.mibCuenta.MaxLength = 6;
    this.mibCuenta.MaxValue = 999999;
    this.mibCuenta.MinValue = 1;
    this.mibCuenta.Name = "mibCuenta";
    this.mibCuenta.Size = new Size(100, 23);
    this.mibCuenta.TabIndex = 2;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(40, 103);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(55, 19);
    this.metroLabel2.TabIndex = 104;
    this.metroLabel2.Text = "Cuenta";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleRight;
    this.txtExpte.Location = new Point(107, 141);
    this.txtExpte.MaxLength = 20;
    this.txtExpte.Name = "txtExpte";
    this.txtExpte.Size = new Size(136, 23);
    this.txtExpte.TabIndex = 3;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(15, 143);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(80 /*0x50*/, 19);
    this.metroLabel3.TabIndex = 106;
    this.metroLabel3.Text = "Expediente";
    this.metroLabel3.TextAlign = ContentAlignment.MiddleRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(601, 215);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.txtExpte);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.mibCuenta);
    this.Controls.Add((Control) this.mebPersona);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repCertExenSM);
    this.Text = nameof (repCertExenSM);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.mebPersona, 0);
    this.Controls.SetChildIndex((Control) this.mibCuenta, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.txtExpte, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
