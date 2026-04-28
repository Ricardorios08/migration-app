// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.detailParametroCierreEjercicio
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

public class detailParametroCierreEjercicio : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel3;
  private MetroIntTextBox textPeriodo;
  private MetroEntityBox ResulEjercicioEB;
  private MetroLabel metroLabel4;
  private MetroDateTextBox FechaText;
  private MetroLabel metroLabel1;
  private MetroDateTextBox FechaMaxText;
  private MetroLabel metroLabel2;

  public detailParametroCierreEjercicio()
  {
    this.InitializeComponent();
    this.ResulEjercicioEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuentaContable);
    this.ResulEjercicioEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuentaContable);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.textPeriodo.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ResulEjercicioEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.FechaText.Enabled = this.FechaMaxText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    ParametroCierreEjercicio parametroCierreEjercicio = (ParametroCierreEjercicio) enti;
    if (parametroCierreEjercicio == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.textPeriodo.IntText = parametroCierreEjercicio.PeriInfo;
      this.ResulEjercicioEB.Entity = parametroCierreEjercicio.ReejPaco != "" ? (Entity) this.EM.Get<CuentaContable>(new ID("CodiCuco", (object) parametroCierreEjercicio.ReejPaco)) : (Entity) null;
      this.FechaText.Date = parametroCierreEjercicio.FedePaco;
      this.FechaMaxText.Date = parametroCierreEjercicio.FemaxPaco;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new ParametroCierreEjercicio()
    {
      PeriInfo = this.textPeriodo.IntText,
      FedePaco = this.FechaText.Date,
      FemaxPaco = this.FechaMaxText.Date
    };
  }

  protected override void LimpiarCampos()
  {
    this.textPeriodo.Text = "";
    this.ResulEjercicioEB.Entity = (Entity) null;
    this.FechaText.Text = "";
    this.FechaMaxText.Text = "";
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.FechaMaxText.Date > new DateTime(PARAMS.Periodo, 12, 31 /*0x1F*/) || this.FechaMaxText.Date < new DateTime(PARAMS.Periodo, 1, 1))
      stringList.Add("Fecha maxima de trabajo invalida");
    return stringList;
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
    this.tabNavigationPage1 = new TabNavigationPage();
    this.FechaText = new MetroDateTextBox();
    this.metroLabel1 = new MetroLabel();
    this.ResulEjercicioEB = new MetroEntityBox();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.textPeriodo = new MetroIntTextBox();
    this.FechaMaxText = new MetroDateTextBox();
    this.metroLabel2 = new MetroLabel();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 209);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 209);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.FechaMaxText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.FechaText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ResulEjercicioEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.textPeriodo);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(690, 172);
    this.FechaText.Location = new Point(178, 85);
    this.FechaText.Name = "FechaText";
    this.FechaText.Size = new Size(90, 25);
    this.FechaText.TabIndex = 21;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(6, 91);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(162, 19);
    this.metroLabel1.TabIndex = 20;
    this.metroLabel1.Text = "Fecha decl. retenciones:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.ResulEjercicioEB.AllowEmpty = false;
    this.ResulEjercicioEB.AllowSqlCharacters = false;
    this.ResulEjercicioEB.BackColor = Color.White;
    this.ResulEjercicioEB.Entity = (Entity) null;
    this.ResulEjercicioEB.ExternalValidation = (Func<string>) null;
    this.ResulEjercicioEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ResulEjercicioEB.Location = new Point(177, 50);
    this.ResulEjercicioEB.MandatoryWrite = false;
    this.ResulEjercicioEB.Margin = new Padding(3, 4, 3, 4);
    this.ResulEjercicioEB.MaximumSize = new Size(3000, 23);
    this.ResulEjercicioEB.MaxLenght = 50;
    this.ResulEjercicioEB.MinimumSize = new Size(100, 23);
    this.ResulEjercicioEB.Name = "ResulEjercicioEB";
    this.ResulEjercicioEB.PropertyDetail = "DetaCuco";
    this.ResulEjercicioEB.PropertyID = "CodiCuco";
    this.ResulEjercicioEB.ShowNewButton = false;
    this.ResulEjercicioEB.ShowSearchButton = false;
    this.ResulEjercicioEB.Size = new Size(400, 23);
    this.ResulEjercicioEB.TabIndex = 19;
    this.ResulEjercicioEB.TextAlign = HorizontalAlignment.Left;
    this.ResulEjercicioEB.TextBoxWidth = 120;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(18, 54);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(150, 19);
    this.metroLabel4.TabIndex = 18;
    this.metroLabel4.Text = "Resultado del Ejercicio:";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(102, 20);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(66, 19);
    this.metroLabel3.TabIndex = 5;
    this.metroLabel3.Text = "Periodo:";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.textPeriodo.Location = new Point(177, 16 /*0x10*/);
    this.textPeriodo.MaxLength = 4;
    this.textPeriodo.Name = "textPeriodo";
    this.textPeriodo.Size = new Size(75, 23);
    this.textPeriodo.TabIndex = 4;
    this.FechaMaxText.Location = new Point(178, 122);
    this.FechaMaxText.Name = "FechaMaxText";
    this.FechaMaxText.Size = new Size(90, 25);
    this.FechaMaxText.TabIndex = 23;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(6, 128 /*0x80*/);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(162, 19);
    this.metroLabel2.TabIndex = 22;
    this.metroLabel2.Text = "Fecha maxima de trabajo:";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailParametroCierreEjercicio);
    this.Size = new Size(700, 209);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
