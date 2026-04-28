// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.frmUnificacionCuit
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class frmUnificacionCuit : BaseForm
{
  private List<UnificacionCuit> ListPerso;
  private BindingSource BsPersonas;
  private IContainer components = (IContainer) null;
  private MetroEntityBox NuevoContribuyenteEB;
  private MetroLabel metroLabel4;
  private SimpleButton btnGuardarUnificacion;
  private GridControl gridPersonas;
  private GridView gridView1;
  private GridColumn gridColumn1;
  private GridColumn gridColumn2;
  private GridColumn gridColumn3;
  private GridColumn gridColumn4;
  private GridColumn gridColumn5;
  private GridColumn gridColumn6;
  private SimpleButton btnBuscarPersonas;

  public frmUnificacionCuit()
  {
    this.InitializeComponent();
    this.NuevoContribuyenteEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
    this.NuevoContribuyenteEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
    this.ListPerso = new List<UnificacionCuit>();
    this.BsPersonas = new BindingSource();
    this.gridPersonas.DataSource = (object) this.ListPerso;
    this.BsPersonas.DataSource = (object) this.ListPerso;
  }

  private void btnBuscarPersonas_Click(object sender, EventArgs e)
  {
    this.ListPerso = new mdlBuscarContribuyenteUni().getPersona();
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
        new FilterItem("CucuPers", "Cuit/Cuil", FilterMode.Contains, text)
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmUnificacionCuit));
    this.NuevoContribuyenteEB = new MetroEntityBox();
    this.metroLabel4 = new MetroLabel();
    this.btnGuardarUnificacion = new SimpleButton();
    this.gridPersonas = new GridControl();
    this.gridView1 = new GridView();
    this.gridColumn1 = new GridColumn();
    this.gridColumn2 = new GridColumn();
    this.gridColumn3 = new GridColumn();
    this.gridColumn4 = new GridColumn();
    this.gridColumn5 = new GridColumn();
    this.gridColumn6 = new GridColumn();
    this.btnBuscarPersonas = new SimpleButton();
    ((ISupportInitialize) this.gridPersonas).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
    this.NuevoContribuyenteEB.AllowEmpty = false;
    this.NuevoContribuyenteEB.AllowSqlCharacters = false;
    this.NuevoContribuyenteEB.BackColor = Color.White;
    this.NuevoContribuyenteEB.Entity = (Entity) null;
    this.NuevoContribuyenteEB.ExternalValidation = (Func<string>) null;
    this.NuevoContribuyenteEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.NuevoContribuyenteEB.LabelText = "";
    this.NuevoContribuyenteEB.Location = new Point(274, 309);
    this.NuevoContribuyenteEB.MandatoryWrite = false;
    this.NuevoContribuyenteEB.Margin = new Padding(3, 4, 3, 4);
    this.NuevoContribuyenteEB.MaximumSize = new Size(3000, 23);
    this.NuevoContribuyenteEB.MaxLenght = 50;
    this.NuevoContribuyenteEB.MinimumSize = new Size(100, 23);
    this.NuevoContribuyenteEB.Name = "NuevoContribuyenteEB";
    this.NuevoContribuyenteEB.PropertyDetail = "DetaPers";
    this.NuevoContribuyenteEB.PropertyID = "CucuPers";
    this.NuevoContribuyenteEB.ShowNewButton = false;
    this.NuevoContribuyenteEB.ShowSearchButton = false;
    this.NuevoContribuyenteEB.Size = new Size(384, 23);
    this.NuevoContribuyenteEB.TabIndex = 10;
    this.NuevoContribuyenteEB.TextAlign = HorizontalAlignment.Left;
    this.NuevoContribuyenteEB.TextBoxWidth = 120;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.FontWeight = MetroFontWeight.Bold;
    this.metroLabel4.Location = new Point(13, 313);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(252, 19);
    this.metroLabel4.TabIndex = 11;
    this.metroLabel4.Text = "CUIT/CUIL de Nuevo Contribuyente";
    this.metroLabel4.TextAlign = ContentAlignment.MiddleRight;
    ((Control) this.btnGuardarUnificacion).Anchor = AnchorStyles.Top | AnchorStyles.Right;
    ((ImageOptions) this.btnGuardarUnificacion.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnGuardarUnificacion.ImageOptions.Image");
    ((Control) this.btnGuardarUnificacion).Location = new Point(274, 350);
    ((Control) this.btnGuardarUnificacion).Name = "btnGuardarUnificacion";
    ((Control) this.btnGuardarUnificacion).Size = new Size(79, 23);
    ((Control) this.btnGuardarUnificacion).TabIndex = 12;
    ((Control) this.btnGuardarUnificacion).Text = "Guardar";
    ((Control) this.gridPersonas).Anchor = AnchorStyles.Left | AnchorStyles.Right;
    ((Control) this.gridPersonas).Location = new Point(0, 86);
    this.gridPersonas.MainView = (BaseView) this.gridView1;
    ((Control) this.gridPersonas).Name = "gridPersonas";
    ((Control) this.gridPersonas).Size = new Size(798, 200);
    ((Control) this.gridPersonas).TabIndex = 13;
    this.gridPersonas.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[6]
    {
      this.gridColumn1,
      this.gridColumn2,
      this.gridColumn3,
      this.gridColumn4,
      this.gridColumn5,
      this.gridColumn6
    });
    ((BaseView) this.gridView1).GridControl = this.gridPersonas;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.gridColumn1.Caption = "Oficina";
    this.gridColumn1.Name = "gridColumn1";
    this.gridColumn1.Visible = true;
    this.gridColumn1.VisibleIndex = 0;
    this.gridColumn2.Caption = "Cuenta";
    this.gridColumn2.Name = "gridColumn2";
    this.gridColumn2.Visible = true;
    this.gridColumn2.VisibleIndex = 1;
    this.gridColumn3.Caption = "Apellido y Nombre";
    this.gridColumn3.Name = "gridColumn3";
    this.gridColumn3.Visible = true;
    this.gridColumn3.VisibleIndex = 2;
    this.gridColumn4.Caption = "Tipo";
    this.gridColumn4.Name = "gridColumn4";
    this.gridColumn4.Visible = true;
    this.gridColumn4.VisibleIndex = 3;
    this.gridColumn5.Caption = "Fecha de Alta";
    this.gridColumn5.Name = "gridColumn5";
    this.gridColumn5.Visible = true;
    this.gridColumn5.VisibleIndex = 4;
    this.gridColumn6.Caption = "Fecha de Baja";
    this.gridColumn6.Name = "gridColumn6";
    this.gridColumn6.Visible = true;
    this.gridColumn6.VisibleIndex = 5;
    ((Control) this.btnBuscarPersonas).Anchor = AnchorStyles.Top | AnchorStyles.Right;
    ((ImageOptions) this.btnBuscarPersonas.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnBuscarPersonas.ImageOptions.Image");
    ((Control) this.btnBuscarPersonas).Location = new Point(302, 29);
    ((Control) this.btnBuscarPersonas).Name = "btnBuscarPersonas";
    ((Control) this.btnBuscarPersonas).Size = new Size(160 /*0xA0*/, 30);
    ((Control) this.btnBuscarPersonas).TabIndex = 14;
    ((Control) this.btnBuscarPersonas).Text = "Buscar Personas";
    ((Control) this.btnBuscarPersonas).Click += new EventHandler(this.btnBuscarPersonas_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(800, 403);
    this.Controls.Add((Control) this.btnBuscarPersonas);
    this.Controls.Add((Control) this.gridPersonas);
    this.Controls.Add((Control) this.btnGuardarUnificacion);
    this.Controls.Add((Control) this.NuevoContribuyenteEB);
    this.Controls.Add((Control) this.metroLabel4);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmUnificacionCuit);
    this.Text = "Unificación de Personas";
    ((ISupportInitialize) this.gridPersonas).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
