// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailExcepciones
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailExcepciones : ABMDetailControl
{
  private ExpContacto expContacto;
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox ExpedienteText;
  private MetroIntTextBox CuentaText;
  private MetroEntityBox ExcepcionEB;
  private MetroDateTextBox FechFinText;
  private MetroLabel FechaFinlb;
  private MetroLabel metroLabel44;
  private MetroTextBox MotivoText;
  private MetroLabel metroLabel3;
  private GridControl gridHistorial;
  private GridView viewHistorial;
  private GridColumn colCodiExen;
  private GridColumn colFfex;
  private GridColumn colExpe;
  private GridColumn colMoex;
  private GridColumn colUsuario;
  private GridColumn colFecha;
  private MetroLabel metroLabel4;
  private GridControl gridContactos;
  private GridView viewContactos;
  private MetroLabel lblContactos;
  private GridColumn gridColumn1;
  private GridColumn gridColumn2;

  public detailExcepciones()
  {
    this.InitializeComponent();
    this.idPlugin = 28;
    this.ExcepcionEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarExcepcion);
    this.ExcepcionEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarExcepcion);
    this.lblContactos.Visible = ((Control) this.gridContactos).Visible = ((Control) this.gridContactos).Enabled = PARAMS.Municipio == "SanMartín";
    this.expContacto = new ExpContacto();
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.CuentaText.Enabled = false;
    ((Control) this.gridHistorial).Enabled = mode == ActionMode.View;
    this.ExcepcionEB.Enabled = this.FechFinText.Enabled = this.ExpedienteText.Enabled = this.MotivoText.Enabled = mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    Excepciones excepciones = (Excepciones) enti;
    if (excepciones == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.CuentaText.IntText = excepciones.CodiInmu;
      this.ExcepcionEB.Entity = (Entity) this.EM.Get<Excepcion>(new ID("CodiExce", (object) excepciones.CodiExce));
      this.FechFinText.Date = excepciones.FfexInmu;
      this.ExpedienteText.Text = excepciones.ExexInmu;
      this.MotivoText.Text = excepciones.MoexInmu;
      this.BuscarHistorial(excepciones.CodiInmu);
      if (PARAMS.Municipio == "SanMartín")
        this.BuscarContactos(excepciones.CodiInmu);
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new Excepciones()
    {
      CodiInmu = this.CuentaText.IntText,
      CodiExce = (this.ExcepcionEB.Entity != null ? (short) ((Excepcion) this.ExcepcionEB.Entity).CodiExce : (short) 0),
      FfexInmu = this.FechFinText.Date,
      ExexInmu = this.ExpedienteText.Text,
      MoexInmu = this.MotivoText.Text
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.ExcepcionEB.Entity == null)
      stringList.Add("Ingresar Excepción");
    if (this.FechFinText.Date == DateTime.MinValue)
      stringList.Add("Ingresar Fecha de finalización");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.gridHistorial.DataSource = (object) (this.ExcepcionEB.Entity = (Entity) null);
    this.CuentaText.Text = this.FechFinText.Text = this.ExpedienteText.Text = this.MotivoText.Text = string.Empty;
    ((Control) this.gridHistorial).Refresh();
    if (!(PARAMS.Municipio == "SanMartín"))
      return;
    this.gridContactos.DataSource = (object) null;
    ((Control) this.gridContactos).Refresh();
  }

  private Entity BuscarExcepcion(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiExce", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaExce", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Excepcion>(filter, true);
  }

  private Entity EncontrarExcepcion(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiExce", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaExce", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Excepcion>(filter, true, true);
  }

  private void BuscarHistorial(int CodiInmu)
  {
    this.gridHistorial.DataSource = (object) ((ExpExcepciones) this.Expert).BuscarHistorial(CodiInmu);
    ((Control) this.gridHistorial).Refresh();
  }

  private void BuscarContactos(int CodiInmu)
  {
    this.gridContactos.DataSource = (object) this.expContacto.ListarContactos(1, CodiInmu.ToString());
    ((Control) this.gridContactos).Refresh();
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
    this.gridContactos = new GridControl();
    this.viewContactos = new GridView();
    this.gridColumn1 = new GridColumn();
    this.gridColumn2 = new GridColumn();
    this.lblContactos = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.gridHistorial = new GridControl();
    this.viewHistorial = new GridView();
    this.colCodiExen = new GridColumn();
    this.colFfex = new GridColumn();
    this.colExpe = new GridColumn();
    this.colMoex = new GridColumn();
    this.colUsuario = new GridColumn();
    this.colFecha = new GridColumn();
    this.MotivoText = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.ExcepcionEB = new MetroEntityBox();
    this.FechFinText = new MetroDateTextBox();
    this.FechaFinlb = new MetroLabel();
    this.metroLabel44 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.ExpedienteText = new MetroTextBox();
    this.CuentaText = new MetroIntTextBox();
    ((ISupportInitialize) this.tabPane1).BeginInit();
    ((Control) this.tabPane1).SuspendLayout();
    ((Control) this.tabNavigationPage1).SuspendLayout();
    ((ISupportInitialize) this.gridContactos).BeginInit();
    ((ISupportInitialize) this.viewContactos).BeginInit();
    ((ISupportInitialize) this.gridHistorial).BeginInit();
    ((ISupportInitialize) this.viewHistorial).BeginInit();
    this.SuspendLayout();
    ((Control) this.tabPane1).Controls.Add((Control) this.tabNavigationPage1);
    ((Control) this.tabPane1).Dock = DockStyle.Fill;
    ((Control) this.tabPane1).Location = new Point(0, 0);
    ((Control) this.tabPane1).Name = "tabPane1";
    ((BaseMutableList<NavigationPageBase>) ((NavigationFrame) this.tabPane1).Pages).AddRange(new NavigationPageBase[1]
    {
      (NavigationPageBase) this.tabNavigationPage1
    });
    ((NavigationPane) this.tabPane1).RegularSize = new Size(1200, 229);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(1200, 229);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.gridContactos);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblContactos);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.gridHistorial);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.MotivoText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ExcepcionEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.FechFinText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.FechaFinlb);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel44);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ExpedienteText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.CuentaText);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(1200, 196);
    ((Control) this.gridContactos).Location = new Point(883, 58);
    this.gridContactos.MainView = (BaseView) this.viewContactos;
    ((Control) this.gridContactos).Name = "gridContactos";
    ((Control) this.gridContactos).Size = new Size(311, 135);
    ((Control) this.gridContactos).TabIndex = 95;
    this.gridContactos.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewContactos
    });
    this.viewContactos.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewContactos.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewContactos).Columns.AddRange(new GridColumn[2]
    {
      this.gridColumn1,
      this.gridColumn2
    });
    this.viewContactos.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.viewContactos).GridControl = this.gridContactos;
    ((BaseView) this.viewContactos).Name = "viewContactos";
    ((ColumnViewOptionsBehavior) this.viewContactos.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.viewContactos.OptionsBehavior).ReadOnly = true;
    this.viewContactos.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewContactos.OptionsView.ShowGroupPanel = false;
    this.viewContactos.OptionsView.ShowIndicator = false;
    this.gridColumn1.Caption = "Persona";
    this.gridColumn1.FieldName = "DetaPers";
    this.gridColumn1.Name = "gridColumn1";
    this.gridColumn1.Visible = true;
    this.gridColumn1.VisibleIndex = 0;
    this.gridColumn1.Width = 112 /*0x70*/;
    this.gridColumn2.Caption = "Contacto";
    this.gridColumn2.FieldName = "DetaCont";
    this.gridColumn2.Name = "gridColumn2";
    this.gridColumn2.Visible = true;
    this.gridColumn2.VisibleIndex = 1;
    this.gridColumn2.Width = 197;
    this.lblContactos.AutoSize = false;
    this.lblContactos.Location = new Point(883, 25);
    this.lblContactos.Name = "lblContactos";
    this.lblContactos.Size = new Size(311, 23);
    this.lblContactos.TabIndex = 94;
    this.lblContactos.Text = "CONTACTOS";
    this.lblContactos.TextAlign = ContentAlignment.MiddleCenter;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(405, 25);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(466, 23);
    this.metroLabel4.TabIndex = 93;
    this.metroLabel4.Text = "HISTORIAL";
    this.metroLabel4.TextAlign = ContentAlignment.MiddleCenter;
    ((Control) this.gridHistorial).Location = new Point(405, 58);
    this.gridHistorial.MainView = (BaseView) this.viewHistorial;
    ((Control) this.gridHistorial).Name = "gridHistorial";
    ((Control) this.gridHistorial).Size = new Size(466, 135);
    ((Control) this.gridHistorial).TabIndex = 92;
    this.gridHistorial.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewHistorial
    });
    this.viewHistorial.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewHistorial.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewHistorial).Columns.AddRange(new GridColumn[6]
    {
      this.colCodiExen,
      this.colFfex,
      this.colExpe,
      this.colMoex,
      this.colUsuario,
      this.colFecha
    });
    this.viewHistorial.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.viewHistorial).GridControl = this.gridHistorial;
    ((BaseView) this.viewHistorial).Name = "viewHistorial";
    ((ColumnViewOptionsBehavior) this.viewHistorial.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.viewHistorial.OptionsBehavior).ReadOnly = true;
    this.viewHistorial.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewHistorial.OptionsView.ShowGroupPanel = false;
    this.viewHistorial.OptionsView.ShowIndicator = false;
    this.colCodiExen.Caption = "Cod. Exen.";
    this.colCodiExen.FieldName = "CodiExce";
    this.colCodiExen.Name = "colCodiExen";
    this.colCodiExen.Visible = true;
    this.colCodiExen.VisibleIndex = 0;
    this.colFfex.Caption = "Fin Exen.";
    this.colFfex.FieldName = "FfexInmu";
    this.colFfex.Name = "colFfex";
    this.colFfex.Visible = true;
    this.colFfex.VisibleIndex = 1;
    this.colExpe.Caption = "Expte.";
    this.colExpe.FieldName = "ExexInmu";
    this.colExpe.Name = "colExpe";
    this.colExpe.Visible = true;
    this.colExpe.VisibleIndex = 2;
    this.colMoex.Caption = "Motivo";
    this.colMoex.FieldName = "MoexInmu";
    this.colMoex.Name = "colMoex";
    this.colMoex.Visible = true;
    this.colMoex.VisibleIndex = 3;
    this.colUsuario.Caption = "Usuario Alta";
    this.colUsuario.FieldName = "AltaUsua";
    this.colUsuario.Name = "colUsuario";
    this.colUsuario.Visible = true;
    this.colUsuario.VisibleIndex = 4;
    this.colFecha.Caption = "Fecha Alta";
    this.colFecha.FieldName = "AltaFeho";
    this.colFecha.Name = "colFecha";
    this.colFecha.Visible = true;
    this.colFecha.VisibleIndex = 5;
    this.MotivoText.Location = new Point(126, 167);
    this.MotivoText.MaxLength = 50;
    this.MotivoText.Name = "MotivoText";
    this.MotivoText.Size = new Size(270, 23);
    this.MotivoText.TabIndex = 4;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(30, 171);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(80 /*0x50*/, 19);
    this.metroLabel3.TabIndex = 91;
    this.metroLabel3.Text = "Motivo";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.ExcepcionEB.AllowEmpty = false;
    this.ExcepcionEB.AllowSqlCharacters = false;
    this.ExcepcionEB.BackColor = Color.White;
    this.ExcepcionEB.Entity = (Entity) null;
    this.ExcepcionEB.ExternalValidation = (Func<string>) null;
    this.ExcepcionEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ExcepcionEB.LabelText = "";
    this.ExcepcionEB.Location = new Point(126, 62);
    this.ExcepcionEB.MandatoryWrite = false;
    this.ExcepcionEB.Margin = new Padding(3, 4, 3, 4);
    this.ExcepcionEB.MaximumSize = new Size(3000, 23);
    this.ExcepcionEB.MaxLenght = 50;
    this.ExcepcionEB.MinimumSize = new Size(100, 23);
    this.ExcepcionEB.Name = "ExcepcionEB";
    this.ExcepcionEB.PropertyDetail = "DetaExce";
    this.ExcepcionEB.PropertyID = "CodiExce";
    this.ExcepcionEB.ShowNewButton = false;
    this.ExcepcionEB.ShowSearchButton = false;
    this.ExcepcionEB.Size = new Size(270, 23);
    this.ExcepcionEB.TabIndex = 1;
    this.ExcepcionEB.TextAlign = HorizontalAlignment.Left;
    this.ExcepcionEB.TextBoxWidth = 40;
    this.FechFinText.AllowEmpty = true;
    this.FechFinText.Location = new Point(126, 95);
    this.FechFinText.Name = "FechFinText";
    this.FechFinText.Size = new Size(90, 25);
    this.FechFinText.TabIndex = 2;
    this.FechaFinlb.AutoSize = false;
    this.FechaFinlb.Location = new Point(50, 101);
    this.FechaFinlb.Name = "FechaFinlb";
    this.FechaFinlb.Size = new Size(64 /*0x40*/, 19);
    this.FechaFinlb.TabIndex = 88;
    this.FechaFinlb.Text = "Fecha Fin";
    this.metroLabel44.AutoSize = false;
    this.metroLabel44.Location = new Point(7, 66);
    this.metroLabel44.Name = "metroLabel44";
    this.metroLabel44.Size = new Size(110, 19);
    this.metroLabel44.TabIndex = 87;
    this.metroLabel44.Text = "Código Exención";
    this.metroLabel44.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(30, 136);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(84, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Expediente";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(61, 33);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Cuenta";
    this.ExpedienteText.Location = new Point(126, 132);
    this.ExpedienteText.MaxLength = 15;
    this.ExpedienteText.Name = "ExpedienteText";
    this.ExpedienteText.Size = new Size(142, 23);
    this.ExpedienteText.TabIndex = 3;
    this.CuentaText.Location = new Point(126, 29);
    this.CuentaText.MaxLength = 4;
    this.CuentaText.Name = "CuentaText";
    this.CuentaText.Size = new Size(84, 23);
    this.CuentaText.TabIndex = 0;
    this.CuentaText.TabStop = false;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailExcepciones);
    this.Size = new Size(1200, 229);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    ((ISupportInitialize) this.gridContactos).EndInit();
    ((ISupportInitialize) this.viewContactos).EndInit();
    ((ISupportInitialize) this.gridHistorial).EndInit();
    ((ISupportInitialize) this.viewHistorial).EndInit();
    this.ResumeLayout(false);
  }
}
