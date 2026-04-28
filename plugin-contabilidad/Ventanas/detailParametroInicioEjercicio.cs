// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.detailParametroInicioEjercicio
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.Plugins.Infogov.Entidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class detailParametroInicioEjercicio : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabnavigartion;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroIntTextBox textPeriodo;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroTextBox CtaDebitoText;
  private MetroTextBox ControlCtaSaldoText;
  private MetroEntityBox PatrimonioEB;
  private MetroEntityBox CalculoRecursosEB;
  private MetroEntityBox CajaEB;
  private MetroEntityBox CargosTesoreroEB;
  private MetroEntityBox ChequesSinRemiEB;
  private MetroEntityBox DeudaExigPresuEB;
  private MetroEntityBox ProvVariosPresuEB;
  private MetroEntityBox CalculoErogacionesEB;
  private MetroLabel metroLabel13;
  private MetroLabel metroLabel12;
  private MetroLabel metroLabel11;
  private MetroLabel metroLabel10;
  private MetroLabel metroLabel9;
  private MetroLabel metroLabel8;
  private MetroLabel metroLabel7;
  private MetroLabel metroLabel6;
  private MetroDecimalTextBox ImpoMinimoInveText;
  private MetroTextBox primerdigitoExtraText;

  public detailParametroInicioEjercicio()
  {
    this.InitializeComponent();
    this.CalculoErogacionesEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuentaContable);
    this.CalculoErogacionesEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuentaContable);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.textPeriodo.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.primerdigitoExtraText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ImpoMinimoInveText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.CalculoErogacionesEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ProvVariosPresuEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.DeudaExigPresuEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ChequesSinRemiEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.CargosTesoreroEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.CajaEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.CalculoRecursosEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.PatrimonioEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ControlCtaSaldoText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.CtaDebitoText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    ParametroInicioEjercicio parametroInicioEjercicio = (ParametroInicioEjercicio) enti;
    if (parametroInicioEjercicio == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.textPeriodo.IntText = parametroInicioEjercicio.PeriInfo;
      this.primerdigitoExtraText.Text = parametroInicioEjercicio.PaexPaco;
      this.ImpoMinimoInveText.DecimalText = parametroInicioEjercicio.MiinPaco;
      this.CalculoErogacionesEB.Entity = parametroInicioEjercicio.CaerPaco != "" ? (Entity) this.EM.Get<CuentaContable>(new ID("CodiCuco", (object) parametroInicioEjercicio.CaerPaco)) : (Entity) null;
      this.ProvVariosPresuEB.Entity = parametroInicioEjercicio.ProvPaco != "" ? (Entity) this.EM.Get<CuentaContable>(new ID("CodiCuco", (object) parametroInicioEjercicio.ProvPaco)) : (Entity) null;
      this.DeudaExigPresuEB.Entity = parametroInicioEjercicio.DeexPaco != "" ? (Entity) this.EM.Get<CuentaContable>(new ID("CodiCuco", (object) parametroInicioEjercicio.DeexPaco)) : (Entity) null;
      this.ChequesSinRemiEB.Entity = parametroInicioEjercicio.ChsrPaco != "" ? (Entity) this.EM.Get<CuentaContable>(new ID("CodiCuco", (object) parametroInicioEjercicio.ChsrPaco)) : (Entity) null;
      this.CargosTesoreroEB.Entity = parametroInicioEjercicio.CatePaco != "" ? (Entity) this.EM.Get<CuentaContable>(new ID("CodiCuco", (object) parametroInicioEjercicio.CatePaco)) : (Entity) null;
      this.CajaEB.Entity = parametroInicioEjercicio.CajaPaco != "" ? (Entity) this.EM.Get<CuentaContable>(new ID("CodiCuco", (object) parametroInicioEjercicio.CajaPaco)) : (Entity) null;
      this.CalculoRecursosEB.Entity = parametroInicioEjercicio.CarePaco != "" ? (Entity) this.EM.Get<CuentaContable>(new ID("CodiCuco", (object) parametroInicioEjercicio.CarePaco)) : (Entity) null;
      this.PatrimonioEB.Entity = parametroInicioEjercicio.PatrPaco != "" ? (Entity) this.EM.Get<CuentaContable>(new ID("CodiCuco", (object) parametroInicioEjercicio.PatrPaco)) : (Entity) null;
      this.ControlCtaSaldoText.Text = parametroInicioEjercicio.SacePaco;
      this.CtaDebitoText.Text = parametroInicioEjercicio.DefaPaco;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new ParametroInicioEjercicio()
    {
      PeriInfo = this.textPeriodo.IntText,
      PaexPaco = this.primerdigitoExtraText.Text,
      MiinPaco = this.ImpoMinimoInveText.DecimalText
    };
  }

  protected override List<string> IsDataValid()
  {
    return new List<string>()
    {
      "Validación no implementada."
    };
  }

  protected override void LimpiarCampos()
  {
    this.textPeriodo.Text = "";
    this.primerdigitoExtraText.Text = "";
    this.ImpoMinimoInveText.Text = "";
    this.CalculoErogacionesEB.Entity = (Entity) null;
    this.ProvVariosPresuEB.Entity = (Entity) null;
    this.DeudaExigPresuEB.Entity = (Entity) null;
    this.ChequesSinRemiEB.Entity = (Entity) null;
    this.CargosTesoreroEB.Entity = (Entity) null;
    this.CajaEB.Entity = (Entity) null;
    this.CalculoRecursosEB.Entity = (Entity) null;
    this.PatrimonioEB.Entity = (Entity) null;
    this.ControlCtaSaldoText.Text = "";
    this.CtaDebitoText.Text = "";
  }

  private Entity BuscarCuentaContable(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("c.PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCuco", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<CuentaContable>(filter, true);
  }

  private Entity EncontrarCuentaContable(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("c.PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCuco", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<CuentaContable>(filter, true, true);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.tabPane1 = new TabPane();
    this.tabnavigartion = new TabNavigationPage();
    this.CtaDebitoText = new MetroTextBox();
    this.ControlCtaSaldoText = new MetroTextBox();
    this.PatrimonioEB = new MetroEntityBox();
    this.CalculoRecursosEB = new MetroEntityBox();
    this.CajaEB = new MetroEntityBox();
    this.CargosTesoreroEB = new MetroEntityBox();
    this.ChequesSinRemiEB = new MetroEntityBox();
    this.DeudaExigPresuEB = new MetroEntityBox();
    this.ProvVariosPresuEB = new MetroEntityBox();
    this.CalculoErogacionesEB = new MetroEntityBox();
    this.metroLabel13 = new MetroLabel();
    this.metroLabel12 = new MetroLabel();
    this.metroLabel11 = new MetroLabel();
    this.metroLabel10 = new MetroLabel();
    this.metroLabel9 = new MetroLabel();
    this.metroLabel8 = new MetroLabel();
    this.metroLabel7 = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.textPeriodo = new MetroIntTextBox();
    this.ImpoMinimoInveText = new MetroDecimalTextBox();
    this.primerdigitoExtraText = new MetroTextBox();
    ((ISupportInitialize) this.tabPane1).BeginInit();
    ((Control) this.tabPane1).SuspendLayout();
    ((Control) this.tabnavigartion).SuspendLayout();
    this.SuspendLayout();
    ((Control) this.tabPane1).Controls.Add((Control) this.tabnavigartion);
    ((Control) this.tabPane1).Dock = DockStyle.Fill;
    ((Control) this.tabPane1).Location = new Point(0, 0);
    ((Control) this.tabPane1).Name = "tabPane1";
    ((BaseMutableList<NavigationPageBase>) ((NavigationFrame) this.tabPane1).Pages).AddRange(new NavigationPageBase[1]
    {
      (NavigationPageBase) this.tabnavigartion
    });
    ((NavigationPane) this.tabPane1).RegularSize = new Size(910, 411);
    this.tabPane1.SelectedPage = this.tabnavigartion;
    ((Control) this.tabPane1).Size = new Size(910, 411);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabnavigartion).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabnavigartion).Caption = "Detalles";
    ((Control) this.tabnavigartion).Controls.Add((Control) this.primerdigitoExtraText);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.ImpoMinimoInveText);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.CtaDebitoText);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.ControlCtaSaldoText);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.PatrimonioEB);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.CalculoRecursosEB);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.CajaEB);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.CargosTesoreroEB);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.ChequesSinRemiEB);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.DeudaExigPresuEB);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.ProvVariosPresuEB);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.CalculoErogacionesEB);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel13);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel12);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel11);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel10);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel9);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel8);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel7);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel6);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel5);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabnavigartion).Controls.Add((Control) this.textPeriodo);
    ((Control) this.tabnavigartion).Name = "tabnavigartion";
    ((NavigationPageBase) this.tabnavigartion).Size = new Size(900, 374);
    this.CtaDebitoText.Location = new Point(253, 322);
    this.CtaDebitoText.Name = "CtaDebitoText";
    this.CtaDebitoText.Size = new Size(612, 23);
    this.CtaDebitoText.TabIndex = 26;
    this.ControlCtaSaldoText.Location = new Point(253, 292);
    this.ControlCtaSaldoText.Name = "ControlCtaSaldoText";
    this.ControlCtaSaldoText.Size = new Size(612, 23);
    this.ControlCtaSaldoText.TabIndex = 25;
    this.PatrimonioEB.AllowEmpty = false;
    this.PatrimonioEB.AllowSqlCharacters = false;
    this.PatrimonioEB.BackColor = Color.White;
    this.PatrimonioEB.Entity = (Entity) null;
    this.PatrimonioEB.ExternalValidation = (Func<string>) null;
    this.PatrimonioEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.PatrimonioEB.Location = new Point(253, 259);
    this.PatrimonioEB.MandatoryWrite = false;
    this.PatrimonioEB.Margin = new Padding(3, 4, 3, 4);
    this.PatrimonioEB.MaximumSize = new Size(3000, 23);
    this.PatrimonioEB.MaxLenght = 50;
    this.PatrimonioEB.MinimumSize = new Size(100, 23);
    this.PatrimonioEB.Name = "PatrimonioEB";
    this.PatrimonioEB.PropertyDetail = "DetaCuco";
    this.PatrimonioEB.PropertyID = "CodiCuco";
    this.PatrimonioEB.ShowNewButton = false;
    this.PatrimonioEB.ShowSearchButton = false;
    this.PatrimonioEB.Size = new Size(400, 23);
    this.PatrimonioEB.TabIndex = 24;
    this.PatrimonioEB.TextAlign = HorizontalAlignment.Left;
    this.PatrimonioEB.TextBoxWidth = 120;
    this.CalculoRecursosEB.AllowEmpty = false;
    this.CalculoRecursosEB.AllowSqlCharacters = false;
    this.CalculoRecursosEB.BackColor = Color.White;
    this.CalculoRecursosEB.Entity = (Entity) null;
    this.CalculoRecursosEB.ExternalValidation = (Func<string>) null;
    this.CalculoRecursosEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CalculoRecursosEB.Location = new Point(253, 228);
    this.CalculoRecursosEB.MandatoryWrite = false;
    this.CalculoRecursosEB.Margin = new Padding(3, 4, 3, 4);
    this.CalculoRecursosEB.MaximumSize = new Size(3000, 23);
    this.CalculoRecursosEB.MaxLenght = 50;
    this.CalculoRecursosEB.MinimumSize = new Size(100, 23);
    this.CalculoRecursosEB.Name = "CalculoRecursosEB";
    this.CalculoRecursosEB.PropertyDetail = "DetaCuco";
    this.CalculoRecursosEB.PropertyID = "CodiCuco";
    this.CalculoRecursosEB.ShowNewButton = false;
    this.CalculoRecursosEB.ShowSearchButton = false;
    this.CalculoRecursosEB.Size = new Size(400, 23);
    this.CalculoRecursosEB.TabIndex = 23;
    this.CalculoRecursosEB.TextAlign = HorizontalAlignment.Left;
    this.CalculoRecursosEB.TextBoxWidth = 120;
    this.CajaEB.AllowEmpty = false;
    this.CajaEB.AllowSqlCharacters = false;
    this.CajaEB.BackColor = Color.White;
    this.CajaEB.Entity = (Entity) null;
    this.CajaEB.ExternalValidation = (Func<string>) null;
    this.CajaEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CajaEB.Location = new Point(253, 197);
    this.CajaEB.MandatoryWrite = false;
    this.CajaEB.Margin = new Padding(3, 4, 3, 4);
    this.CajaEB.MaximumSize = new Size(3000, 23);
    this.CajaEB.MaxLenght = 50;
    this.CajaEB.MinimumSize = new Size(100, 23);
    this.CajaEB.Name = "CajaEB";
    this.CajaEB.PropertyDetail = "DetaCuco";
    this.CajaEB.PropertyID = "CodiCuco";
    this.CajaEB.ShowNewButton = false;
    this.CajaEB.ShowSearchButton = false;
    this.CajaEB.Size = new Size(400, 23);
    this.CajaEB.TabIndex = 22;
    this.CajaEB.TextAlign = HorizontalAlignment.Left;
    this.CajaEB.TextBoxWidth = 120;
    this.CargosTesoreroEB.AllowEmpty = false;
    this.CargosTesoreroEB.AllowSqlCharacters = false;
    this.CargosTesoreroEB.BackColor = Color.White;
    this.CargosTesoreroEB.Entity = (Entity) null;
    this.CargosTesoreroEB.ExternalValidation = (Func<string>) null;
    this.CargosTesoreroEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CargosTesoreroEB.Location = new Point(253, 166);
    this.CargosTesoreroEB.MandatoryWrite = false;
    this.CargosTesoreroEB.Margin = new Padding(3, 4, 3, 4);
    this.CargosTesoreroEB.MaximumSize = new Size(3000, 23);
    this.CargosTesoreroEB.MaxLenght = 50;
    this.CargosTesoreroEB.MinimumSize = new Size(100, 23);
    this.CargosTesoreroEB.Name = "CargosTesoreroEB";
    this.CargosTesoreroEB.PropertyDetail = "DetaCuco";
    this.CargosTesoreroEB.PropertyID = "CodiCuco";
    this.CargosTesoreroEB.ShowNewButton = false;
    this.CargosTesoreroEB.ShowSearchButton = false;
    this.CargosTesoreroEB.Size = new Size(400, 23);
    this.CargosTesoreroEB.TabIndex = 21;
    this.CargosTesoreroEB.TextAlign = HorizontalAlignment.Left;
    this.CargosTesoreroEB.TextBoxWidth = 120;
    this.ChequesSinRemiEB.AllowEmpty = false;
    this.ChequesSinRemiEB.AllowSqlCharacters = false;
    this.ChequesSinRemiEB.BackColor = Color.White;
    this.ChequesSinRemiEB.Entity = (Entity) null;
    this.ChequesSinRemiEB.ExternalValidation = (Func<string>) null;
    this.ChequesSinRemiEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ChequesSinRemiEB.Location = new Point(253, 135);
    this.ChequesSinRemiEB.MandatoryWrite = false;
    this.ChequesSinRemiEB.Margin = new Padding(3, 4, 3, 4);
    this.ChequesSinRemiEB.MaximumSize = new Size(3000, 23);
    this.ChequesSinRemiEB.MaxLenght = 50;
    this.ChequesSinRemiEB.MinimumSize = new Size(100, 23);
    this.ChequesSinRemiEB.Name = "ChequesSinRemiEB";
    this.ChequesSinRemiEB.PropertyDetail = "DetaCuco";
    this.ChequesSinRemiEB.PropertyID = "CodiCuco";
    this.ChequesSinRemiEB.ShowNewButton = false;
    this.ChequesSinRemiEB.ShowSearchButton = false;
    this.ChequesSinRemiEB.Size = new Size(400, 23);
    this.ChequesSinRemiEB.TabIndex = 20;
    this.ChequesSinRemiEB.TextAlign = HorizontalAlignment.Left;
    this.ChequesSinRemiEB.TextBoxWidth = 120;
    this.DeudaExigPresuEB.AllowEmpty = false;
    this.DeudaExigPresuEB.AllowSqlCharacters = false;
    this.DeudaExigPresuEB.BackColor = Color.White;
    this.DeudaExigPresuEB.Entity = (Entity) null;
    this.DeudaExigPresuEB.ExternalValidation = (Func<string>) null;
    this.DeudaExigPresuEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.DeudaExigPresuEB.Location = new Point(253, 104);
    this.DeudaExigPresuEB.MandatoryWrite = false;
    this.DeudaExigPresuEB.Margin = new Padding(3, 4, 3, 4);
    this.DeudaExigPresuEB.MaximumSize = new Size(3000, 23);
    this.DeudaExigPresuEB.MaxLenght = 50;
    this.DeudaExigPresuEB.MinimumSize = new Size(100, 23);
    this.DeudaExigPresuEB.Name = "DeudaExigPresuEB";
    this.DeudaExigPresuEB.PropertyDetail = "DetaCuco";
    this.DeudaExigPresuEB.PropertyID = "CodiCuco";
    this.DeudaExigPresuEB.ShowNewButton = false;
    this.DeudaExigPresuEB.ShowSearchButton = false;
    this.DeudaExigPresuEB.Size = new Size(400, 23);
    this.DeudaExigPresuEB.TabIndex = 19;
    this.DeudaExigPresuEB.TextAlign = HorizontalAlignment.Left;
    this.DeudaExigPresuEB.TextBoxWidth = 120;
    this.ProvVariosPresuEB.AllowEmpty = false;
    this.ProvVariosPresuEB.AllowSqlCharacters = false;
    this.ProvVariosPresuEB.BackColor = Color.White;
    this.ProvVariosPresuEB.Entity = (Entity) null;
    this.ProvVariosPresuEB.ExternalValidation = (Func<string>) null;
    this.ProvVariosPresuEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ProvVariosPresuEB.Location = new Point(253, 73);
    this.ProvVariosPresuEB.MandatoryWrite = false;
    this.ProvVariosPresuEB.Margin = new Padding(3, 4, 3, 4);
    this.ProvVariosPresuEB.MaximumSize = new Size(3000, 23);
    this.ProvVariosPresuEB.MaxLenght = 50;
    this.ProvVariosPresuEB.MinimumSize = new Size(100, 23);
    this.ProvVariosPresuEB.Name = "ProvVariosPresuEB";
    this.ProvVariosPresuEB.PropertyDetail = "DetaCuco";
    this.ProvVariosPresuEB.PropertyID = "CodiCuco";
    this.ProvVariosPresuEB.ShowNewButton = false;
    this.ProvVariosPresuEB.ShowSearchButton = false;
    this.ProvVariosPresuEB.Size = new Size(400, 23);
    this.ProvVariosPresuEB.TabIndex = 18;
    this.ProvVariosPresuEB.TextAlign = HorizontalAlignment.Left;
    this.ProvVariosPresuEB.TextBoxWidth = 120;
    this.CalculoErogacionesEB.AllowEmpty = false;
    this.CalculoErogacionesEB.AllowSqlCharacters = false;
    this.CalculoErogacionesEB.BackColor = Color.White;
    this.CalculoErogacionesEB.Entity = (Entity) null;
    this.CalculoErogacionesEB.ExternalValidation = (Func<string>) null;
    this.CalculoErogacionesEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CalculoErogacionesEB.Location = new Point(253, 42);
    this.CalculoErogacionesEB.MandatoryWrite = false;
    this.CalculoErogacionesEB.Margin = new Padding(3, 4, 3, 4);
    this.CalculoErogacionesEB.MaximumSize = new Size(3000, 23);
    this.CalculoErogacionesEB.MaxLenght = 50;
    this.CalculoErogacionesEB.MinimumSize = new Size(100, 23);
    this.CalculoErogacionesEB.Name = "CalculoErogacionesEB";
    this.CalculoErogacionesEB.PropertyDetail = "DetaCuco";
    this.CalculoErogacionesEB.PropertyID = "CodiCuco";
    this.CalculoErogacionesEB.ShowNewButton = false;
    this.CalculoErogacionesEB.ShowSearchButton = false;
    this.CalculoErogacionesEB.Size = new Size(400, 23);
    this.CalculoErogacionesEB.TabIndex = 17;
    this.CalculoErogacionesEB.TextAlign = HorizontalAlignment.Left;
    this.CalculoErogacionesEB.TextBoxWidth = 120;
    this.metroLabel13.AutoSize = false;
    this.metroLabel13.Location = new Point(17, 326);
    this.metroLabel13.Name = "metroLabel13";
    this.metroLabel13.Size = new Size(226, 19);
    this.metroLabel13.TabIndex = 16 /*0x10*/;
    this.metroLabel13.Text = "Ctas de débito c/factura:";
    this.metroLabel13.TextAlign = ContentAlignment.TopRight;
    this.metroLabel12.AutoSize = false;
    this.metroLabel12.Location = new Point(17, 295);
    this.metroLabel12.Name = "metroLabel12";
    this.metroLabel12.Size = new Size(226, 19);
    this.metroLabel12.TabIndex = 15;
    this.metroLabel12.Text = "Control de Cuentas Saldo Cero:";
    this.metroLabel12.TextAlign = ContentAlignment.TopRight;
    this.metroLabel11.AutoSize = false;
    this.metroLabel11.Location = new Point(17, 264);
    this.metroLabel11.Name = "metroLabel11";
    this.metroLabel11.Size = new Size(226, 19);
    this.metroLabel11.TabIndex = 14;
    this.metroLabel11.Text = "Patrimonio:";
    this.metroLabel11.TextAlign = ContentAlignment.TopRight;
    this.metroLabel10.AutoSize = false;
    this.metroLabel10.Location = new Point(17, 233);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(226, 19);
    this.metroLabel10.TabIndex = 13;
    this.metroLabel10.Text = "Cálculo de Recursos:";
    this.metroLabel10.TextAlign = ContentAlignment.TopRight;
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(17, 202);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(226, 19);
    this.metroLabel9.TabIndex = 12;
    this.metroLabel9.Text = "Caja:";
    this.metroLabel9.TextAlign = ContentAlignment.TopRight;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(17, 171);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(226, 19);
    this.metroLabel8.TabIndex = 11;
    this.metroLabel8.Text = "Cargos al Tesorero:";
    this.metroLabel8.TextAlign = ContentAlignment.TopRight;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(17, 140);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(226, 19);
    this.metroLabel7.TabIndex = 10;
    this.metroLabel7.Text = "Cheque sin Remitir:";
    this.metroLabel7.TextAlign = ContentAlignment.TopRight;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(17, 109);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(226, 19);
    this.metroLabel6.TabIndex = 9;
    this.metroLabel6.Text = "Deuda Exigible Presupuestaria:";
    this.metroLabel6.TextAlign = ContentAlignment.TopRight;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(17, 78);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(226, 19);
    this.metroLabel5.TabIndex = 8;
    this.metroLabel5.Text = "Proveedores Varios Presupuestarios:";
    this.metroLabel5.TextAlign = ContentAlignment.TopRight;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(93, 47);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(150, 19);
    this.metroLabel4.TabIndex = 7;
    this.metroLabel4.Text = "Cálculo de Erogaciones:";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(584, 15);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(202, 19);
    this.metroLabel3.TabIndex = 5;
    this.metroLabel3.Text = "Importe Mínimo para Inventario:";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(180, 15);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(311, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Primer dígito de las partidas EXTRApresupuestaria:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(17, 16 /*0x10*/);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(66, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Periodo:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.textPeriodo.Location = new Point(93, 12);
    this.textPeriodo.MaxLength = 4;
    this.textPeriodo.Name = "textPeriodo";
    this.textPeriodo.Size = new Size(75, 23);
    this.textPeriodo.TabIndex = 0;
    this.ImpoMinimoInveText.Location = new Point(790, 11);
    this.ImpoMinimoInveText.Name = "ImpoMinimoInveText";
    this.ImpoMinimoInveText.Size = new Size(75, 23);
    this.ImpoMinimoInveText.TabIndex = 27;
    this.primerdigitoExtraText.Location = new Point(501, 10);
    this.primerdigitoExtraText.Name = "primerdigitoExtraText";
    this.primerdigitoExtraText.Size = new Size(75, 23);
    this.primerdigitoExtraText.TabIndex = 28;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailParametroInicioEjercicio);
    this.Size = new Size(910, 411);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabnavigartion).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
