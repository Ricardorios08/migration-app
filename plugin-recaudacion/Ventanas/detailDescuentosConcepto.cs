// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailDescuentosConcepto
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
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailDescuentosConcepto : ABMDetailControl
{
  private DateTime hoy = Misc.Now();
  private ExpDescuentosConcepto expert = new ExpDescuentosConcepto();
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroIntTextBox PeriodoText;
  private MetroEntityBox ConceptoEB;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel3;
  private MetroDecimalTextBox DescCapitalText;
  private MetroDecimalTextBox DescRecargoText;

  public detailDescuentosConcepto()
  {
    this.InitializeComponent();
    this.idPlugin = 28;
    this.ConceptoEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarConcepto);
    this.ConceptoEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarConcepto);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.PeriodoText.Enabled = false;
    this.ConceptoEB.Enabled = mode == ActionMode.New;
    this.DescRecargoText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.DescCapitalText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    if (mode != ActionMode.New)
      return;
    this.PeriodoText.IntText = this.hoy.Year;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    DescuentosConcepto descuentosConcepto = (DescuentosConcepto) enti;
    if (descuentosConcepto == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.PeriodoText.IntText = descuentosConcepto.PeriInfo;
      ID id = new ID("PeriInfo", (object) descuentosConcepto.PeriInfo);
      id.Add((object) "CodiConc", (object) descuentosConcepto.CodiConc);
      this.ConceptoEB.Entity = descuentosConcepto.CodiConc != "" ? (Entity) this.EM.Get<Concepto>(id) : (Entity) null;
      this.DescRecargoText.DecimalText = descuentosConcepto.DereDeco;
      this.DescCapitalText.DecimalText = descuentosConcepto.DecaDeco;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new DescuentosConcepto()
    {
      PeriInfo = this.PeriodoText.IntText,
      CodiConc = ((Concepto) this.ConceptoEB.Entity).CodiConc,
      DereDeco = this.DescRecargoText.DecimalText,
      DecaDeco = this.DescCapitalText.DecimalText
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.ConceptoEB.Entity == null)
      stringList.Add("Ingresar Concepto");
    else if (this.CurrentMode == ActionMode.New && this.expert.consultardescconcepto(this.PeriodoText.IntText, ((Concepto) this.ConceptoEB.Entity).CodiConc))
      stringList.Add($"La combinación ya se {Environment.NewLine} encuentra ingresada");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.PeriodoText.Text = "";
    this.ConceptoEB.Entity = (Entity) null;
    this.DescCapitalText.Text = "";
    this.DescRecargoText.Text = "";
  }

  private Entity BuscarConcepto(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiConc", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaConc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Concepto>(filter, true);
  }

  private Entity EncontrarConcepto(string text, bool useSearch)
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
    this.DescCapitalText = new MetroDecimalTextBox();
    this.DescRecargoText = new MetroDecimalTextBox();
    this.ConceptoEB = new MetroEntityBox();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.PeriodoText = new MetroIntTextBox();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 221);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 221);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.DescCapitalText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.DescRecargoText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ConceptoEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.PeriodoText);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(690, 184);
    this.DescCapitalText.AllowEmpty = true;
    this.DescCapitalText.Location = new Point(164, 126);
    this.DescCapitalText.MaxLength = 10;
    this.DescCapitalText.MaxValue = new Decimal(new int[4]
    {
      1410065407,
      2,
      0,
      0
    });
    this.DescCapitalText.Name = "DescCapitalText";
    this.DescCapitalText.Size = new Size(75, 23);
    this.DescCapitalText.TabIndex = 8;
    this.DescRecargoText.AllowEmpty = true;
    this.DescRecargoText.Location = new Point(164, 95);
    this.DescRecargoText.MaxLength = 10;
    this.DescRecargoText.MaxValue = new Decimal(new int[4]
    {
      1410065407,
      2,
      0,
      0
    });
    this.DescRecargoText.Name = "DescRecargoText";
    this.DescRecargoText.Size = new Size(75, 23);
    this.DescRecargoText.TabIndex = 7;
    this.ConceptoEB.AllowEmpty = false;
    this.ConceptoEB.AllowSqlCharacters = false;
    this.ConceptoEB.BackColor = Color.White;
    this.ConceptoEB.Entity = (Entity) null;
    this.ConceptoEB.ExternalValidation = (Func<string>) null;
    this.ConceptoEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ConceptoEB.Location = new Point(164, 64 /*0x40*/);
    this.ConceptoEB.MandatoryWrite = false;
    this.ConceptoEB.Margin = new Padding(3, 4, 3, 4);
    this.ConceptoEB.MaximumSize = new Size(3000, 23);
    this.ConceptoEB.MaxLenght = 50;
    this.ConceptoEB.MinimumSize = new Size(100, 23);
    this.ConceptoEB.Name = "ConceptoEB";
    this.ConceptoEB.PropertyDetail = "DetaConc";
    this.ConceptoEB.PropertyID = "CodiConc";
    this.ConceptoEB.ShowNewButton = false;
    this.ConceptoEB.ShowSearchButton = false;
    this.ConceptoEB.Size = new Size(510, 23);
    this.ConceptoEB.TabIndex = 6;
    this.ConceptoEB.TextAlign = HorizontalAlignment.Left;
    this.ConceptoEB.TextBoxWidth = 100;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(17, 131);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(135, 19);
    this.metroLabel4.TabIndex = 5;
    this.metroLabel4.Text = "Descuento Capital:";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(17, 100);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(135, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Descuento Recargo:";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(77, 69);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(75, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Concepto:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(77, 38);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(75, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Periodo:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.PeriodoText.Location = new Point(164, 34);
    this.PeriodoText.MaxLength = 4;
    this.PeriodoText.Name = "PeriodoText";
    this.PeriodoText.Size = new Size(60, 23);
    this.PeriodoText.TabIndex = 0;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailDescuentosConcepto);
    this.Size = new Size(700, 221);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
