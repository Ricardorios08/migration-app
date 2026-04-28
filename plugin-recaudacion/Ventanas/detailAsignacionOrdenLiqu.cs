// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailAsignacionOrdenLiqu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Recaudacion.Entidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailAsignacionOrdenLiqu : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroIntTextBox Periodo;
  private MetroIntTextBox OrdenHasta;
  private MetroIntTextBox OrdenDesde;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroIntTextBox NumeLiqu;
  private MetroLabel metroLabel3;
  private MetroEntityBox AgenteEB;

  public detailAsignacionOrdenLiqu()
  {
    this.InitializeComponent();
    this.AgenteEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
    this.AgenteEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.Periodo.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.NumeLiqu.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.OrdenDesde.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.OrdenHasta.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.AgenteEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    if (mode != ActionMode.New)
      return;
    this.Periodo.IntText = PARAMS.Periodo;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    AsignacionOrdenLiqu asignacionOrdenLiqu = (AsignacionOrdenLiqu) enti;
    if (asignacionOrdenLiqu == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.Periodo.IntText = asignacionOrdenLiqu.PeriLiqu;
      this.NumeLiqu.IntText = (int) asignacionOrdenLiqu.NumeLiqu;
      this.OrdenDesde.IntText = asignacionOrdenLiqu.OrdeDesde;
      this.OrdenHasta.IntText = asignacionOrdenLiqu.OrdeHasta;
      this.AgenteEB.Entity = (Entity) this.EM.Get<Persona>(new ID("CucuPers", (object) asignacionOrdenLiqu.CucuAgen));
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new AsignacionOrdenLiqu()
    {
      PeriLiqu = this.Periodo.IntText,
      NumeLiqu = (short) this.NumeLiqu.IntText,
      OrdeDesde = this.OrdenDesde.IntText,
      OrdeHasta = this.OrdenHasta.IntText,
      CucuAgen = ((Persona) this.AgenteEB.Entity).CucuPers
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.Periodo.Text.Length == 0)
      stringList.Add("Ingresar Período");
    if (this.NumeLiqu.Text.Length == 0)
      stringList.Add("Ingresar Nro. Liquidación");
    if (this.OrdenDesde.Text.Length == 0)
      stringList.Add("Ingresar Orden Desde");
    if (this.OrdenHasta.Text.Length == 0)
      stringList.Add("Ingresar Orden Hasta");
    if (this.OrdenDesde.Text.Length > 0 && this.OrdenHasta.Text.Length > 0 && this.OrdenDesde.IntText > this.OrdenHasta.IntText)
      stringList.Add($"Orden desde no puede ser {Environment.NewLine} mayor a orden hasta");
    if (this.AgenteEB.Entity == null)
      stringList.Add("Ingresar Agente");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.Periodo.Text = this.NumeLiqu.Text = "";
    this.OrdenDesde.Text = this.OrdenHasta.Text = "";
    this.AgenteEB.Entity = (Entity) null;
  }

  private Filter filtroPersona(string text)
  {
    if (!Misc.IsNumeric(text))
      return new Filter()
      {
        Items = {
          new FilterItem("DetaPers", "Nombre", FilterMode.Contains, text)
        }
      };
    return new Filter()
    {
      Items = {
        new FilterItem("CucuPers", "Cuit/Cuil", FilterMode.StartsWith, text)
      }
    };
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
    this.tabPane1 = new TabPane();
    this.tabNavigationPage1 = new TabNavigationPage();
    this.AgenteEB = new MetroEntityBox();
    this.OrdenHasta = new MetroIntTextBox();
    this.OrdenDesde = new MetroIntTextBox();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.NumeLiqu = new MetroIntTextBox();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.Periodo = new MetroIntTextBox();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 171);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 171);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.AgenteEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.OrdenHasta);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.OrdenDesde);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel5);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.NumeLiqu);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.Periodo);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 138);
    this.AgenteEB.AllowEmpty = false;
    this.AgenteEB.AllowSqlCharacters = false;
    this.AgenteEB.BackColor = Color.White;
    this.AgenteEB.Entity = (Entity) null;
    this.AgenteEB.ExternalValidation = (Func<string>) null;
    this.AgenteEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.AgenteEB.LabelText = "";
    this.AgenteEB.Location = new Point(126, 90);
    this.AgenteEB.MandatoryWrite = false;
    this.AgenteEB.Margin = new Padding(3, 4, 3, 4);
    this.AgenteEB.MaximumSize = new Size(3000, 23);
    this.AgenteEB.MaxLenght = 50;
    this.AgenteEB.MinimumSize = new Size(100, 23);
    this.AgenteEB.Name = "AgenteEB";
    this.AgenteEB.PropertyDetail = "DetaPers";
    this.AgenteEB.PropertyID = "CucuPers";
    this.AgenteEB.ShowNewButton = false;
    this.AgenteEB.ShowSearchButton = false;
    this.AgenteEB.Size = new Size(371, 23);
    this.AgenteEB.TabIndex = 4;
    this.AgenteEB.TextAlign = HorizontalAlignment.Left;
    this.AgenteEB.TextBoxWidth = 120;
    this.OrdenHasta.Location = new Point(356, 57);
    this.OrdenHasta.MaxLength = 8;
    this.OrdenHasta.MaxValue = 99999999;
    this.OrdenHasta.Name = "OrdenHasta";
    this.OrdenHasta.Size = new Size(80 /*0x50*/, 23);
    this.OrdenHasta.TabIndex = 3;
    this.OrdenDesde.Location = new Point(126, 57);
    this.OrdenDesde.MaxLength = 8;
    this.OrdenDesde.MaxValue = 99999999;
    this.OrdenDesde.Name = "OrdenDesde";
    this.OrdenDesde.Size = new Size(80 /*0x50*/, 23);
    this.OrdenDesde.TabIndex = 2;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(57, 94);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(61, 19);
    this.metroLabel5.TabIndex = 7;
    this.metroLabel5.Text = "Agente";
    this.metroLabel5.TextAlign = ContentAlignment.TopRight;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(261, 61);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(83, 19);
    this.metroLabel4.TabIndex = 6;
    this.metroLabel4.Text = "Hasta Orden";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.NumeLiqu.Location = new Point(356, 26);
    this.NumeLiqu.MaxLength = 2;
    this.NumeLiqu.MaxValue = 99;
    this.NumeLiqu.Name = "NumeLiqu";
    this.NumeLiqu.Size = new Size(80 /*0x50*/, 23);
    this.NumeLiqu.TabIndex = 1;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(233, 26);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(111, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Nro. Liquidación";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(26, 61);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(92, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Desde Orden";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(57, 26);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(61, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Periodo";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.Periodo.Location = new Point(126, 22);
    this.Periodo.MaxLength = 4;
    this.Periodo.MaxValue = 9999;
    this.Periodo.Name = "Periodo";
    this.Periodo.Size = new Size(80 /*0x50*/, 23);
    this.Periodo.TabIndex = 0;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailAsignacionOrdenLiqu);
    this.Size = new Size(700, 171);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
