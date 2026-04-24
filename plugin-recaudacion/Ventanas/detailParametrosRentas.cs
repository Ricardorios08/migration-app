// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailParametrosRentas
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailParametrosRentas : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroIntTextBox PeriInfoText;
  private MetroEntityBox ConceptoRecargoEB;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel3;
  private MetroEntityBox ConceptoGastosApremioEB;
  private MetroEntityBox ConceptoComiAdmEB;
  private MetroEntityBox ConceptoInteresEB;
  private MetroEntityBox ConceptoImpApremioEB;
  private MetroLabel metroLabel6;

  public detailParametrosRentas()
  {
    this.InitializeComponent();
    this.idPlugin = 28;
    this.ConceptoRecargoEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarConceptoRecargo);
    this.ConceptoRecargoEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarConceptoRecargo);
    this.ConceptoInteresEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarConceptoInteres);
    this.ConceptoInteresEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarConceptoInteres);
    this.ConceptoComiAdmEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarConceptoComiAdm);
    this.ConceptoComiAdmEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarConceptoComiAdm);
    this.ConceptoGastosApremioEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarConceptoGastosApremio);
    this.ConceptoGastosApremioEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarConceptoGastosApremio);
    this.ConceptoImpApremioEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarImpApremio);
    this.ConceptoImpApremioEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarImpApremio);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.PeriInfoText.Enabled = false;
    this.ConceptoRecargoEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ConceptoInteresEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ConceptoComiAdmEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ConceptoGastosApremioEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ConceptoImpApremioEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    ParametrosRentas parametrosRentas = (ParametrosRentas) enti;
    if (parametrosRentas == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.PeriInfoText.IntText = parametrosRentas.PeriInfo;
      ID id1 = new ID("PeriInfo", (object) parametrosRentas.PeriInfo);
      id1.Add((object) "CodiConc", (object) parametrosRentas.CorePare);
      this.ConceptoRecargoEB.Entity = parametrosRentas.CorePare != "" ? (Entity) this.EM.Get<Concepto>(id1) : (Entity) null;
      ID id2 = new ID("PeriInfo", (object) parametrosRentas.PeriInfo);
      id2.Add((object) "CodiConc", (object) parametrosRentas.CoinPare);
      this.ConceptoInteresEB.Entity = parametrosRentas.CoinPare != "" ? (Entity) this.EM.Get<Concepto>(id2) : (Entity) null;
      ID id3 = new ID("PeriInfo", (object) parametrosRentas.PeriInfo);
      id3.Add((object) "CodiConc", (object) parametrosRentas.CoadPare);
      this.ConceptoComiAdmEB.Entity = parametrosRentas.CoadPare != "" ? (Entity) this.EM.Get<Concepto>(id3) : (Entity) null;
      ID id4 = new ID("PeriInfo", (object) parametrosRentas.PeriInfo);
      id4.Add((object) "CodiConc", (object) parametrosRentas.CoapPare);
      this.ConceptoGastosApremioEB.Entity = parametrosRentas.CoapPare != "" ? (Entity) this.EM.Get<Concepto>(id4) : (Entity) null;
      ID id5 = new ID("PeriInfo", (object) parametrosRentas.PeriInfo);
      id5.Add((object) "CodiConc", (object) parametrosRentas.CoimPare);
      this.ConceptoImpApremioEB.Entity = parametrosRentas.CoimPare != "" ? (Entity) this.EM.Get<Concepto>(id5) : (Entity) null;
    }
  }

  protected override Entity LoadEntity() => (Entity) new ParametrosRentas();

  protected override List<string> IsDataValid() => new List<string>();

  protected override void LimpiarCampos()
  {
    this.PeriInfoText.Text = "";
    this.ConceptoRecargoEB.Entity = (Entity) null;
    this.ConceptoInteresEB.Entity = (Entity) null;
    this.ConceptoComiAdmEB.Entity = (Entity) null;
    this.ConceptoGastosApremioEB.Entity = (Entity) null;
    this.ConceptoImpApremioEB.Entity = (Entity) null;
  }

  private Entity BuscarConceptoRecargo(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Concepto>(filter, true);
  }

  private Entity EncontrarConceptoRecargo(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Concepto>(filter, true, true);
  }

  private Entity BuscarConceptoInteres(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Concepto>(filter, true);
  }

  private Entity EncontrarConceptoInteres(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Concepto>(filter, true, true);
  }

  private Entity BuscarConceptoComiAdm(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Concepto>(filter, true);
  }

  private Entity EncontrarConceptoComiAdm(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Concepto>(filter, true, true);
  }

  private Entity BuscarConceptoGastosApremio(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Concepto>(filter, true);
  }

  private Entity EncontrarConceptoGastosApremio(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Concepto>(filter, true, true);
  }

  private Entity BuscarImpApremio(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Concepto>(filter, true);
  }

  private Entity EncontrarImpApremio(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Concepto>(filter, true, true);
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
    this.tabNavigationPage1 = new TabNavigationPage();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.ConceptoGastosApremioEB = new MetroEntityBox();
    this.ConceptoComiAdmEB = new MetroEntityBox();
    this.ConceptoInteresEB = new MetroEntityBox();
    this.ConceptoRecargoEB = new MetroEntityBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.PeriInfoText = new MetroIntTextBox();
    this.metroLabel6 = new MetroLabel();
    this.ConceptoImpApremioEB = new MetroEntityBox();
    ((ISupportInitialize) this.tabPane1).BeginInit();
    ((Control) this.tabPane1).SuspendLayout();
    ((Control) this.tabNavigationPage1).SuspendLayout();
    this.SuspendLayout();
    ((Control) this.tabPane1).Controls.Add((Control) this.tabNavigationPage1);
    ((Control) this.tabPane1).Dock = DockStyle.Fill;
    ((Control) this.tabPane1).Location = new Point(0, 0);
    ((Control) this.tabPane1).Name = "tabPane1";
    ((BaseMutableList<NavigationPageBase>) ((NavigationFrame) this.tabPane1).Pages).AddRange(new NavigationPageBase[1]
    {
      (NavigationPageBase) this.tabNavigationPage1
    });
    ((NavigationPane) this.tabPane1).RegularSize = new Size(804, 259);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(804, 259);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ConceptoImpApremioEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel6);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel5);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ConceptoGastosApremioEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ConceptoComiAdmEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ConceptoInteresEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ConceptoRecargoEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.PeriInfoText);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(794, 222);
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(51, 151);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(210, 19);
    this.metroLabel5.TabIndex = 10;
    this.metroLabel5.Text = "Concepto de Gastos de Apremio:";
    this.metroLabel5.TextAlign = ContentAlignment.TopRight;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(17, 120);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(244, 19);
    this.metroLabel4.TabIndex = 9;
    this.metroLabel4.Text = "Concepto de Comisión Administrativos:";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(118, 90);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(143, 19);
    this.metroLabel3.TabIndex = 8;
    this.metroLabel3.Text = "Concepto de Interes:";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.ConceptoGastosApremioEB.AllowEmpty = false;
    this.ConceptoGastosApremioEB.AllowSqlCharacters = false;
    this.ConceptoGastosApremioEB.BackColor = Color.White;
    this.ConceptoGastosApremioEB.Entity = (Entity) null;
    this.ConceptoGastosApremioEB.ExternalValidation = (Func<string>) null;
    this.ConceptoGastosApremioEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ConceptoGastosApremioEB.Location = new Point(270, 147);
    this.ConceptoGastosApremioEB.MandatoryWrite = false;
    this.ConceptoGastosApremioEB.Margin = new Padding(3, 4, 3, 4);
    this.ConceptoGastosApremioEB.MaximumSize = new Size(3000, 23);
    this.ConceptoGastosApremioEB.MaxLenght = 50;
    this.ConceptoGastosApremioEB.MinimumSize = new Size(100, 23);
    this.ConceptoGastosApremioEB.Name = "ConceptoGastosApremioEB";
    this.ConceptoGastosApremioEB.PropertyDetail = "DetaConc";
    this.ConceptoGastosApremioEB.PropertyID = "CodiConc";
    this.ConceptoGastosApremioEB.ShowNewButton = false;
    this.ConceptoGastosApremioEB.ShowSearchButton = false;
    this.ConceptoGastosApremioEB.Size = new Size(484, 23);
    this.ConceptoGastosApremioEB.TabIndex = 7;
    this.ConceptoGastosApremioEB.TextAlign = HorizontalAlignment.Left;
    this.ConceptoGastosApremioEB.TextBoxWidth = 120;
    this.ConceptoComiAdmEB.AllowEmpty = false;
    this.ConceptoComiAdmEB.AllowSqlCharacters = false;
    this.ConceptoComiAdmEB.BackColor = Color.White;
    this.ConceptoComiAdmEB.Entity = (Entity) null;
    this.ConceptoComiAdmEB.ExternalValidation = (Func<string>) null;
    this.ConceptoComiAdmEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ConceptoComiAdmEB.Location = new Point(270, 116);
    this.ConceptoComiAdmEB.MandatoryWrite = false;
    this.ConceptoComiAdmEB.Margin = new Padding(3, 4, 3, 4);
    this.ConceptoComiAdmEB.MaximumSize = new Size(3000, 23);
    this.ConceptoComiAdmEB.MaxLenght = 50;
    this.ConceptoComiAdmEB.MinimumSize = new Size(100, 23);
    this.ConceptoComiAdmEB.Name = "ConceptoComiAdmEB";
    this.ConceptoComiAdmEB.PropertyDetail = "DetaConc";
    this.ConceptoComiAdmEB.PropertyID = "CodiConc";
    this.ConceptoComiAdmEB.ShowNewButton = false;
    this.ConceptoComiAdmEB.ShowSearchButton = false;
    this.ConceptoComiAdmEB.Size = new Size(484, 23);
    this.ConceptoComiAdmEB.TabIndex = 6;
    this.ConceptoComiAdmEB.TextAlign = HorizontalAlignment.Left;
    this.ConceptoComiAdmEB.TextBoxWidth = 120;
    this.ConceptoInteresEB.AllowEmpty = false;
    this.ConceptoInteresEB.AllowSqlCharacters = false;
    this.ConceptoInteresEB.BackColor = Color.White;
    this.ConceptoInteresEB.Entity = (Entity) null;
    this.ConceptoInteresEB.ExternalValidation = (Func<string>) null;
    this.ConceptoInteresEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ConceptoInteresEB.Location = new Point(270, 86);
    this.ConceptoInteresEB.MandatoryWrite = false;
    this.ConceptoInteresEB.Margin = new Padding(3, 4, 3, 4);
    this.ConceptoInteresEB.MaximumSize = new Size(3000, 23);
    this.ConceptoInteresEB.MaxLenght = 50;
    this.ConceptoInteresEB.MinimumSize = new Size(100, 23);
    this.ConceptoInteresEB.Name = "ConceptoInteresEB";
    this.ConceptoInteresEB.PropertyDetail = "DetaConc";
    this.ConceptoInteresEB.PropertyID = "CodiConc";
    this.ConceptoInteresEB.ShowNewButton = false;
    this.ConceptoInteresEB.ShowSearchButton = false;
    this.ConceptoInteresEB.Size = new Size(484, 23);
    this.ConceptoInteresEB.TabIndex = 5;
    this.ConceptoInteresEB.TextAlign = HorizontalAlignment.Left;
    this.ConceptoInteresEB.TextBoxWidth = 120;
    this.ConceptoRecargoEB.AllowEmpty = false;
    this.ConceptoRecargoEB.AllowSqlCharacters = false;
    this.ConceptoRecargoEB.BackColor = Color.White;
    this.ConceptoRecargoEB.Entity = (Entity) null;
    this.ConceptoRecargoEB.ExternalValidation = (Func<string>) null;
    this.ConceptoRecargoEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ConceptoRecargoEB.Location = new Point(270, 55);
    this.ConceptoRecargoEB.MandatoryWrite = false;
    this.ConceptoRecargoEB.Margin = new Padding(3, 4, 3, 4);
    this.ConceptoRecargoEB.MaximumSize = new Size(3000, 23);
    this.ConceptoRecargoEB.MaxLenght = 50;
    this.ConceptoRecargoEB.MinimumSize = new Size(100, 23);
    this.ConceptoRecargoEB.Name = "ConceptoRecargoEB";
    this.ConceptoRecargoEB.PropertyDetail = "DetaConc";
    this.ConceptoRecargoEB.PropertyID = "CodiConc";
    this.ConceptoRecargoEB.ShowNewButton = false;
    this.ConceptoRecargoEB.ShowSearchButton = false;
    this.ConceptoRecargoEB.Size = new Size(484, 23);
    this.ConceptoRecargoEB.TabIndex = 4;
    this.ConceptoRecargoEB.TextAlign = HorizontalAlignment.Left;
    this.ConceptoRecargoEB.TextBoxWidth = 120;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(118, 59);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(143, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Concepto de Recargo:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(200, 28);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(61, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Periodo:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.PeriInfoText.Location = new Point(270, 24);
    this.PeriInfoText.MaxLength = 4;
    this.PeriInfoText.Name = "PeriInfoText";
    this.PeriInfoText.Size = new Size(60, 23);
    this.PeriInfoText.TabIndex = 0;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(33, 182);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(228, 19);
    this.metroLabel6.TabIndex = 11;
    this.metroLabel6.Text = "Concepto de Impuesto de Apremio:";
    this.metroLabel6.TextAlign = ContentAlignment.TopRight;
    this.ConceptoImpApremioEB.AllowEmpty = false;
    this.ConceptoImpApremioEB.AllowSqlCharacters = false;
    this.ConceptoImpApremioEB.BackColor = Color.White;
    this.ConceptoImpApremioEB.Entity = (Entity) null;
    this.ConceptoImpApremioEB.ExternalValidation = (Func<string>) null;
    this.ConceptoImpApremioEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ConceptoImpApremioEB.Location = new Point(270, 178);
    this.ConceptoImpApremioEB.MandatoryWrite = false;
    this.ConceptoImpApremioEB.Margin = new Padding(3, 4, 3, 4);
    this.ConceptoImpApremioEB.MaximumSize = new Size(3000, 23);
    this.ConceptoImpApremioEB.MaxLenght = 50;
    this.ConceptoImpApremioEB.MinimumSize = new Size(100, 23);
    this.ConceptoImpApremioEB.Name = "ConceptoImpApremioEB";
    this.ConceptoImpApremioEB.PropertyDetail = "DetaConc";
    this.ConceptoImpApremioEB.PropertyID = "CodiConc";
    this.ConceptoImpApremioEB.ShowNewButton = false;
    this.ConceptoImpApremioEB.ShowSearchButton = false;
    this.ConceptoImpApremioEB.Size = new Size(484, 23);
    this.ConceptoImpApremioEB.TabIndex = 12;
    this.ConceptoImpApremioEB.TextAlign = HorizontalAlignment.Left;
    this.ConceptoImpApremioEB.TextBoxWidth = 120;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailParametrosRentas);
    this.Size = new Size(804, 259);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
