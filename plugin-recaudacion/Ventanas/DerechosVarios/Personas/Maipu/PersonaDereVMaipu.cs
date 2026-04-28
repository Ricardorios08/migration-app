// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Personas.Maipu.PersonaDereVMaipu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Ventanas;
using InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Expertos.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Herencia;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Personas.Maipu;

public class PersonaDereVMaipu : BuscadorBase, IPersonaDerechoVario
{
  private readonly EntityManager EM;
  private BindingSource BSBoletos;
  private List<BoletoEmitidoDerechoVarioMP> boletos;
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;
  private MetroEntityBox mebPersona;
  private MetroPanel panBoleEmit;
  private MetroLabel metroLabel2;
  private GridControl gridControlBoleEmit;
  private GridView gridViewBoleEmit;
  private GridColumn colFeal;
  private GridColumn colPeriBole;
  private GridColumn colNumeBole;
  private GridColumn colCodiServ;
  private GridColumn colDetaServ;
  private GridColumn colCant;
  private GridColumn colPrecUnit;
  private GridColumn colDesc;
  private GridColumn colTotal;
  private MetroButton btnCrearPersona;
  private GroupBox groupBox1;
  private MetroTextBox txtNumePers;
  private MetroLabel metroLabel4;
  private MetroTextBox txtCalle;
  private MetroLabel metroLabel3;
  private MetroTextBox txtManzPers;
  private MetroLabel metroLabel5;
  private MetroTextBox txtBarrio;
  private MetroLabel metroLabel6;
  private MetroTextBox txtTelef;
  private MetroLabel metroLabel8;
  private MetroTextBox txtDist;
  private MetroLabel metroLabel7;

  public PersonaDereVMaipu()
  {
    this.InitializeComponent();
    this.EM = new EntityManager(28);
    this.BSBoletos = new BindingSource();
    this.boletos = new List<BoletoEmitidoDerechoVarioMP>();
    this.BSBoletos.DataSource = (object) this.boletos;
    this.mebPersona.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
    this.mebPersona.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
  }

  public void CargarDatosPersona(IEntidadDerechoVario entidad)
  {
    (entidad as DerechoVarioMP).PersonaSeleccionada = this.mebPersona.Entity as Persona;
  }

  public override void Limpiar()
  {
    this.EjecutarEnUI((Action) (() =>
    {
      this.mebPersona.Entity = (Entity) null;
      this.ActualizarGrillaBoletos();
      this.LimpiarCamposPersona();
    }));
  }

  public override List<string> ValidarDatos()
  {
    List<string> stringList = new List<string>();
    if (this.mebPersona.Entity == null)
      stringList.Add("Debe seleccionar una persona.");
    return stringList;
  }

  public void SetFocus()
  {
    try
    {
      if (this.InvokeRequired)
      {
        this.BeginInvoke((Delegate) (() =>
        {
          try
          {
            this.mebPersona.Focus();
          }
          catch
          {
          }
        }));
      }
      else
      {
        try
        {
          this.mebPersona.Focus();
        }
        catch
        {
        }
      }
    }
    catch
    {
    }
  }

  private void BuscarBoletosEmitidos(long CucuPers)
  {
    List<BoletoEmitidoDerechoVarioMP> temp = (((frmDerechosVarios) this.ParentForm).experto as ExpDerechoVarioMP).ObtenerBoletosEmitidos(CucuPers);
    this.EjecutarEnUI((Action) (() => this.ActualizarGrillaBoletos(temp)));
  }

  private void ActualizarGrillaBoletos(List<BoletoEmitidoDerechoVarioMP> bole = null)
  {
    this.boletos.Clear();
    if (bole != null)
      this.boletos.AddRange((IEnumerable<BoletoEmitidoDerechoVarioMP>) bole);
    this.BSBoletos.ResetBindings(false);
    ((BaseView) this.gridViewBoleEmit).RefreshData();
  }

  private void LimpiarCamposPersona()
  {
    this.txtCalle.Text = this.txtNumePers.Text = this.txtManzPers.Text = this.txtBarrio.Text = this.txtTelef.Text = this.txtDist.Text = string.Empty;
  }

  private void ActualizarDatosPersona()
  {
    if (this.mebPersona.Entity != null)
    {
      Persona entity = this.mebPersona.Entity as Persona;
      this.txtCalle.Text = entity.DecrPers;
      this.txtNumePers.Text = entity.NumePers.ToString();
      this.txtManzPers.Text = entity.ManzPers;
      this.txtBarrio.Text = entity.DebaPers;
      this.txtTelef.Text = entity.CeluPers;
      this.txtDist.Text = entity.DediPers;
    }
    else
      this.LimpiarCamposPersona();
  }

  private void btnCrearPersona_Click(object sender, EventArgs e)
  {
    this.mebPersona.Entity = (Entity) new mdlPersona().crearPersona();
    if (this.mebPersona.Entity == null)
      return;
    this.mebPersona.Entity.status = EntityStatus.New;
  }

  private void mebPersona_EntityChangedDone(object source, EntityChangedEventArgs e)
  {
    if (this.mebPersona.Entity != null)
      this.EjecutarEnUI((Action) (() =>
      {
        this.ActualizarDatosPersona();
        new frmEsperar(this.ParentForm).procesar((Action) (() => this.BuscarBoletosEmitidos(((Persona) this.mebPersona.Entity).CucuPers)));
      }));
    else
      this.EjecutarEnUI((Action) (() =>
      {
        this.ActualizarGrillaBoletos();
        this.LimpiarCamposPersona();
      }));
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
    this.metroLabel1 = new MetroLabel();
    this.mebPersona = new MetroEntityBox();
    this.panBoleEmit = new MetroPanel();
    this.gridControlBoleEmit = new GridControl();
    this.gridViewBoleEmit = new GridView();
    this.colFeal = new GridColumn();
    this.colPeriBole = new GridColumn();
    this.colNumeBole = new GridColumn();
    this.colCodiServ = new GridColumn();
    this.colDetaServ = new GridColumn();
    this.colCant = new GridColumn();
    this.colPrecUnit = new GridColumn();
    this.colDesc = new GridColumn();
    this.colTotal = new GridColumn();
    this.metroLabel2 = new MetroLabel();
    this.btnCrearPersona = new MetroButton();
    this.groupBox1 = new GroupBox();
    this.txtTelef = new MetroTextBox();
    this.metroLabel8 = new MetroLabel();
    this.txtDist = new MetroTextBox();
    this.metroLabel7 = new MetroLabel();
    this.txtBarrio = new MetroTextBox();
    this.metroLabel6 = new MetroLabel();
    this.txtManzPers = new MetroTextBox();
    this.metroLabel5 = new MetroLabel();
    this.txtNumePers = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.txtCalle = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.panBoleEmit.SuspendLayout();
    ((ISupportInitialize) this.gridControlBoleEmit).BeginInit();
    ((ISupportInitialize) this.gridViewBoleEmit).BeginInit();
    this.groupBox1.SuspendLayout();
    this.SuspendLayout();
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(6, 19);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(55, 19);
    this.metroLabel1.TabIndex = 0;
    this.metroLabel1.Text = "Persona";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.mebPersona.AllowEmpty = false;
    this.mebPersona.AllowSqlCharacters = false;
    this.mebPersona.BackColor = Color.White;
    this.mebPersona.Entity = (Entity) null;
    this.mebPersona.ExternalValidation = (Func<string>) null;
    this.mebPersona.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebPersona.LabelText = "";
    this.mebPersona.Location = new Point(70, 17);
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
    this.mebPersona.Size = new Size(444, 23);
    this.mebPersona.TabIndex = 100;
    this.mebPersona.TextAlign = HorizontalAlignment.Center;
    this.mebPersona.TextBoxWidth = 100;
    this.mebPersona.EntityChangedDone += new AfterEntityChange(this.mebPersona_EntityChangedDone);
    this.panBoleEmit.Controls.Add((Control) this.gridControlBoleEmit);
    this.panBoleEmit.Controls.Add((Control) this.metroLabel2);
    this.panBoleEmit.Dock = DockStyle.Right;
    this.panBoleEmit.Location = new Point(624, 0);
    this.panBoleEmit.Name = "panBoleEmit";
    this.panBoleEmit.Size = new Size(736, 172);
    this.panBoleEmit.TabIndex = 2;
    ((Control) this.gridControlBoleEmit).Dock = DockStyle.Fill;
    ((Control) this.gridControlBoleEmit).Location = new Point(0, 26);
    this.gridControlBoleEmit.MainView = (BaseView) this.gridViewBoleEmit;
    ((Control) this.gridControlBoleEmit).Name = "gridControlBoleEmit";
    ((Control) this.gridControlBoleEmit).Size = new Size(736, 146);
    ((Control) this.gridControlBoleEmit).TabIndex = 284;
    ((Control) this.gridControlBoleEmit).TabStop = false;
    this.gridControlBoleEmit.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewBoleEmit
    });
    this.gridViewBoleEmit.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewBoleEmit.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewBoleEmit).Columns.AddRange(new GridColumn[9]
    {
      this.colFeal,
      this.colPeriBole,
      this.colNumeBole,
      this.colCodiServ,
      this.colDetaServ,
      this.colCant,
      this.colPrecUnit,
      this.colDesc,
      this.colTotal
    });
    ((BaseView) this.gridViewBoleEmit).GridControl = this.gridControlBoleEmit;
    ((BaseView) this.gridViewBoleEmit).Name = "gridViewBoleEmit";
    ((ColumnViewOptionsBehavior) this.gridViewBoleEmit.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewBoleEmit.OptionsBehavior).FocusLeaveOnTab = true;
    ((ColumnViewOptionsBehavior) this.gridViewBoleEmit.OptionsBehavior).ReadOnly = true;
    this.gridViewBoleEmit.OptionsView.ShowGroupPanel = false;
    this.gridViewBoleEmit.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colFeal.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFeal.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFeal.Caption = "Fecha Alta";
    this.colFeal.FieldName = "FealBoleStr";
    this.colFeal.MaxWidth = 80 /*0x50*/;
    this.colFeal.MinWidth = 80 /*0x50*/;
    this.colFeal.Name = "colFeal";
    this.colFeal.Visible = true;
    this.colFeal.VisibleIndex = 0;
    this.colFeal.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colPeriBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeriBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeriBole.Caption = "Periodo";
    this.colPeriBole.FieldName = "PeriBole";
    this.colPeriBole.MaxWidth = 50;
    this.colPeriBole.Name = "colPeriBole";
    this.colPeriBole.Visible = true;
    this.colPeriBole.VisibleIndex = 1;
    this.colPeriBole.Width = 50;
    ((AppearanceOptions) this.colNumeBole.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNumeBole.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNumeBole.Caption = "Número";
    this.colNumeBole.FieldName = "NumeBole";
    this.colNumeBole.MaxWidth = 100;
    this.colNumeBole.Name = "colNumeBole";
    this.colNumeBole.Visible = true;
    this.colNumeBole.VisibleIndex = 2;
    this.colNumeBole.Width = 100;
    ((AppearanceOptions) this.colCodiServ.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCodiServ.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCodiServ.Caption = "Código";
    this.colCodiServ.FieldName = "CodiSede";
    this.colCodiServ.MaxWidth = 100;
    this.colCodiServ.Name = "colCodiServ";
    this.colCodiServ.Visible = true;
    this.colCodiServ.VisibleIndex = 3;
    this.colDetaServ.Caption = "Detalle Serv.";
    this.colDetaServ.FieldName = "DetaSede";
    this.colDetaServ.Name = "colDetaServ";
    this.colDetaServ.Visible = true;
    this.colDetaServ.VisibleIndex = 4;
    ((AppearanceOptions) this.colCant.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCant.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCant.Caption = "Cantidad";
    this.colCant.FieldName = "CantDede";
    this.colCant.MaxWidth = 60;
    this.colCant.Name = "colCant";
    this.colCant.Visible = true;
    this.colCant.VisibleIndex = 5;
    this.colCant.Width = 60;
    ((AppearanceOptions) this.colPrecUnit.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPrecUnit.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colPrecUnit.Caption = "Precio Un.";
    this.colPrecUnit.DisplayFormat.FormatString = "{0:C2}";
    this.colPrecUnit.DisplayFormat.FormatType = (FormatType) 3;
    this.colPrecUnit.FieldName = "PrunDede";
    this.colPrecUnit.GroupFormat.FormatString = "C2";
    this.colPrecUnit.GroupFormat.FormatType = (FormatType) 1;
    this.colPrecUnit.MaxWidth = 60;
    this.colPrecUnit.Name = "colPrecUnit";
    this.colPrecUnit.Visible = true;
    this.colPrecUnit.VisibleIndex = 6;
    this.colPrecUnit.Width = 60;
    ((AppearanceOptions) this.colDesc.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDesc.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDesc.Caption = "Descuento";
    this.colDesc.DisplayFormat.FormatString = "{0:C2}";
    this.colDesc.DisplayFormat.FormatType = (FormatType) 3;
    this.colDesc.FieldName = "DescDede";
    this.colDesc.GroupFormat.FormatString = "C2";
    this.colDesc.GroupFormat.FormatType = (FormatType) 1;
    this.colDesc.MaxWidth = 60;
    this.colDesc.Name = "colDesc";
    this.colDesc.Visible = true;
    this.colDesc.VisibleIndex = 7;
    this.colDesc.Width = 60;
    ((AppearanceOptions) this.colTotal.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotal.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotal.Caption = "Total";
    this.colTotal.DisplayFormat.FormatString = "{0:C2}";
    this.colTotal.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotal.FieldName = "TotaDede";
    this.colTotal.GroupFormat.FormatString = "C2";
    this.colTotal.GroupFormat.FormatType = (FormatType) 1;
    this.colTotal.MaxWidth = 100;
    this.colTotal.Name = "colTotal";
    this.colTotal.Visible = true;
    this.colTotal.VisibleIndex = 8;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Dock = DockStyle.Top;
    this.metroLabel2.FontSize = 16f;
    this.metroLabel2.Location = new Point(0, 0);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(736, 26);
    this.metroLabel2.TabIndex = 2;
    this.metroLabel2.Text = "Boletos Emitidos";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleCenter;
    this.btnCrearPersona.Location = new Point(526, 17);
    this.btnCrearPersona.Name = "btnCrearPersona";
    this.btnCrearPersona.Size = new Size(89, 23);
    this.btnCrearPersona.TabIndex = 101;
    this.btnCrearPersona.Text = "Crear Persona";
    this.btnCrearPersona.Click += new EventHandler(this.btnCrearPersona_Click);
    this.groupBox1.Controls.Add((Control) this.txtTelef);
    this.groupBox1.Controls.Add((Control) this.metroLabel8);
    this.groupBox1.Controls.Add((Control) this.txtDist);
    this.groupBox1.Controls.Add((Control) this.metroLabel7);
    this.groupBox1.Controls.Add((Control) this.txtBarrio);
    this.groupBox1.Controls.Add((Control) this.metroLabel6);
    this.groupBox1.Controls.Add((Control) this.txtManzPers);
    this.groupBox1.Controls.Add((Control) this.metroLabel5);
    this.groupBox1.Controls.Add((Control) this.txtNumePers);
    this.groupBox1.Controls.Add((Control) this.metroLabel4);
    this.groupBox1.Controls.Add((Control) this.txtCalle);
    this.groupBox1.Controls.Add((Control) this.metroLabel3);
    this.groupBox1.Location = new Point(6, 49);
    this.groupBox1.Name = "groupBox1";
    this.groupBox1.Size = new Size(612, 114);
    this.groupBox1.TabIndex = 102;
    this.groupBox1.TabStop = false;
    this.groupBox1.Text = "Datos Persona Seleccionada";
    this.txtTelef.CausesValidation = false;
    this.txtTelef.Location = new Point(80 /*0x50*/, 85);
    this.txtTelef.Name = "txtTelef";
    this.txtTelef.ReadOnly = true;
    this.txtTelef.Size = new Size(139, 23);
    this.txtTelef.TabIndex = 11;
    this.txtTelef.TabStop = false;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(10, 87);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(58, 19);
    this.metroLabel8.TabIndex = 10;
    this.metroLabel8.Text = "Telefono";
    this.txtDist.CausesValidation = false;
    this.txtDist.Location = new Point(288, 85);
    this.txtDist.Name = "txtDist";
    this.txtDist.ReadOnly = true;
    this.txtDist.Size = new Size(317, 23);
    this.txtDist.TabIndex = 9;
    this.txtDist.TabStop = false;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(226, 87);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(50, 19);
    this.metroLabel7.TabIndex = 8;
    this.metroLabel7.Text = "Distrito";
    this.txtBarrio.CausesValidation = false;
    this.txtBarrio.Location = new Point(288, 50);
    this.txtBarrio.Name = "txtBarrio";
    this.txtBarrio.ReadOnly = true;
    this.txtBarrio.Size = new Size(317, 23);
    this.txtBarrio.TabIndex = 7;
    this.txtBarrio.TabStop = false;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(231, 52);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(45, 19);
    this.metroLabel6.TabIndex = 6;
    this.metroLabel6.Text = "Barrio";
    this.txtManzPers.CausesValidation = false;
    this.txtManzPers.Location = new Point(107, 50);
    this.txtManzPers.Name = "txtManzPers";
    this.txtManzPers.ReadOnly = true;
    this.txtManzPers.Size = new Size(112 /*0x70*/, 23);
    this.txtManzPers.TabIndex = 5;
    this.txtManzPers.TabStop = false;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(10, 52);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(85, 19);
    this.metroLabel5.TabIndex = 4;
    this.metroLabel5.Text = "Manz. / Casa";
    this.txtNumePers.CausesValidation = false;
    this.txtNumePers.Location = new Point(538, 15);
    this.txtNumePers.Name = "txtNumePers";
    this.txtNumePers.ReadOnly = true;
    this.txtNumePers.Size = new Size(67, 23);
    this.txtNumePers.TabIndex = 3;
    this.txtNumePers.TabStop = false;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(502, 17);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(24, 19);
    this.metroLabel4.TabIndex = 2;
    this.metroLabel4.Text = "N°";
    this.txtCalle.CausesValidation = false;
    this.txtCalle.Location = new Point(61, 15);
    this.txtCalle.Name = "txtCalle";
    this.txtCalle.ReadOnly = true;
    this.txtCalle.Size = new Size(429, 23);
    this.txtCalle.TabIndex = 1;
    this.txtCalle.TabStop = false;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(11, 17);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(38, 19);
    this.metroLabel3.TabIndex = 0;
    this.metroLabel3.Text = "Calle";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.groupBox1);
    this.Controls.Add((Control) this.btnCrearPersona);
    this.Controls.Add((Control) this.panBoleEmit);
    this.Controls.Add((Control) this.mebPersona);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (PersonaDereVMaipu);
    this.Size = new Size(1360, 172);
    this.panBoleEmit.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlBoleEmit).EndInit();
    ((ISupportInitialize) this.gridViewBoleEmit).EndInit();
    this.groupBox1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
