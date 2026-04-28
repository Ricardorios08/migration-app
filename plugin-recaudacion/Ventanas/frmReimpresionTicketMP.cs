// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmReimpresionTicketMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro;
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

public class frmReimpresionTicketMP : BaseForm
{
  private ExpImpresionTicket expImpTicket;
  private string TickeadoraActiva;
  private IContainer components = (IContainer) null;
  private MetroPanel pan1;
  private MetroPanel panSuperior;
  private MetroPanel panInferior;
  private MetroPanel panTabla;
  private MetroPanel panTituloInferior;
  private MetroButton btnImprimir;
  private MetroIntTextBox mibNumeBole;
  private MetroIntTextBox mibPeriodo;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private GridControl gridTickets;
  private GridView viewTickets;
  private GridColumn colPeriBole;
  private GridColumn colNumeBole;
  private GridColumn colAltaUsua;
  private GridColumn colAltaFeho;
  private MetroCheckBox chkTickAct;
  private MetroLabel metroLabel7;
  private MetroLabel lblTickeadora;

  public frmReimpresionTicketMP()
  {
    this.InitializeComponent();
    try
    {
      this.expImpTicket = new ExpImpresionTicket();
      this.TickeadoraActiva = PARAMS.Parameters.GetString(nameof (TickeadoraActiva));
      this.lblTickeadora.Text = PARAMS.Parameters.GetString("Tickeadora");
      this.chkTickAct.Checked = this.TickeadoraActiva == "True";
      this.chkTickAct.Text = this.chkTickAct.Checked ? "Activa" : "Inactiva";
      this.mibPeriodo.IntText = DateTime.Now.Year;
      if (this.TickeadoraActiva != "True")
        new frmMensaje((Form) this).mostrarError("No está habilitada la tickeadora.");
      this.panSuperior.Enabled = this.panInferior.Enabled = this.TickeadoraActiva == "True";
      this.gridTickets.DataSource = (object) this.expImpTicket.ListarTicketsReimpresos();
      this.mibNumeBole.Focus();
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
    }
  }

  private void btnImprimir_Click(object sender, EventArgs e)
  {
    try
    {
      List<string> errores = new List<string>();
      if (this.mibPeriodo.IntText < 1980)
        errores.Add("Periodo incorrecto.");
      if (this.mibNumeBole.IntText <= 0)
        errores.Add("Número boleto incorrecto.");
      if (errores.Count > 0)
      {
        new dlgErrorList((Form) this).mostarError(errores);
      }
      else
      {
        BoletoCajaMP boleto = this.expImpTicket.ObtenerBoletoImpresionMP(this.mibPeriodo.IntText, this.mibNumeBole.IntText);
        if (boleto.PeriBole != 0 && boleto.NumeBole != 0 && (boleto.EstaBole == "Pagado" || boleto.EstaBole == "Actualizado"))
        {
          this.expImpTicket.ReimprimirTicket(boleto);
          this.gridTickets.DataSource = (object) this.expImpTicket.ListarTicketsReimpresos();
          ((Control) this.gridTickets).Refresh();
          ((BaseView) this.viewTickets).RefreshData();
        }
        else
          new frmMensaje((Form) this).mostrarError("Boleto incorrecto o sin pagar, verificar...");
        this.mibNumeBole.Focus();
      }
    }
    catch (Exception ex)
    {
      new frmMensaje((Form) this).mostrarError(ex.Message);
    }
  }

  private void SoloNumeros(object sender, KeyEventArgs e)
  {
    if (e.KeyCode == Keys.Back)
      e.SuppressKeyPress = false;
    else if (e.KeyValue >= 48 /*0x30*/ && e.KeyValue <= 57 || e.KeyValue >= 96 /*0x60*/ && e.KeyValue <= 105)
      e.SuppressKeyPress = false;
    else
      e.SuppressKeyPress = true;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.pan1 = new MetroPanel();
    this.panInferior = new MetroPanel();
    this.panTabla = new MetroPanel();
    this.gridTickets = new GridControl();
    this.viewTickets = new GridView();
    this.colPeriBole = new GridColumn();
    this.colNumeBole = new GridColumn();
    this.colAltaUsua = new GridColumn();
    this.colAltaFeho = new GridColumn();
    this.panTituloInferior = new MetroPanel();
    this.metroLabel1 = new MetroLabel();
    this.panSuperior = new MetroPanel();
    this.lblTickeadora = new MetroLabel();
    this.chkTickAct = new MetroCheckBox();
    this.metroLabel7 = new MetroLabel();
    this.btnImprimir = new MetroButton();
    this.mibNumeBole = new MetroIntTextBox();
    this.mibPeriodo = new MetroIntTextBox();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.pan1.SuspendLayout();
    this.panInferior.SuspendLayout();
    this.panTabla.SuspendLayout();
    ((ISupportInitialize) this.gridTickets).BeginInit();
    ((ISupportInitialize) this.viewTickets).BeginInit();
    this.panTituloInferior.SuspendLayout();
    this.panSuperior.SuspendLayout();
    this.SuspendLayout();
    this.pan1.Controls.Add((Control) this.panInferior);
    this.pan1.Controls.Add((Control) this.panSuperior);
    this.pan1.Dock = DockStyle.Fill;
    this.pan1.Location = new Point(0, 0);
    this.pan1.Name = "pan1";
    this.pan1.Size = new Size(800, 450);
    this.pan1.TabIndex = 0;
    this.panInferior.Controls.Add((Control) this.panTabla);
    this.panInferior.Controls.Add((Control) this.panTituloInferior);
    this.panInferior.Dock = DockStyle.Fill;
    this.panInferior.Location = new Point(0, 162);
    this.panInferior.Name = "panInferior";
    this.panInferior.Size = new Size(800, 288);
    this.panInferior.TabIndex = 2;
    this.panTabla.Controls.Add((Control) this.gridTickets);
    this.panTabla.Dock = DockStyle.Fill;
    this.panTabla.Location = new Point(0, 38);
    this.panTabla.Name = "panTabla";
    this.panTabla.Size = new Size(800, 250);
    this.panTabla.TabIndex = 3;
    ((Control) this.gridTickets).Dock = DockStyle.Fill;
    ((Control) this.gridTickets).Location = new Point(0, 0);
    this.gridTickets.MainView = (BaseView) this.viewTickets;
    ((Control) this.gridTickets).Name = "gridTickets";
    ((Control) this.gridTickets).Size = new Size(800, 250);
    ((Control) this.gridTickets).TabIndex = 4;
    ((Control) this.gridTickets).TabStop = false;
    this.gridTickets.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewTickets
    });
    this.viewTickets.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewTickets.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewTickets).Columns.AddRange(new GridColumn[4]
    {
      this.colPeriBole,
      this.colNumeBole,
      this.colAltaUsua,
      this.colAltaFeho
    });
    this.viewTickets.FocusRectStyle = (DrawFocusRectStyle) 0;
    ((BaseView) this.viewTickets).GridControl = this.gridTickets;
    ((BaseView) this.viewTickets).Name = "viewTickets";
    this.viewTickets.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.viewTickets.OptionsSelection.EnableAppearanceFocusedRow = false;
    this.viewTickets.OptionsSelection.EnableAppearanceHideSelection = false;
    this.viewTickets.OptionsSelection.UseIndicatorForSelection = false;
    this.viewTickets.OptionsView.ShowGroupPanel = false;
    this.viewTickets.OptionsView.ShowIndicator = false;
    this.colPeriBole.Caption = "Periodo";
    this.colPeriBole.FieldName = "PeriBole";
    this.colPeriBole.MaxWidth = 75;
    this.colPeriBole.Name = "colPeriBole";
    this.colPeriBole.OptionsColumn.AllowEdit = false;
    this.colPeriBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colPeriBole.OptionsColumn.AllowMove = false;
    this.colPeriBole.OptionsColumn.ReadOnly = true;
    this.colPeriBole.Visible = true;
    this.colPeriBole.VisibleIndex = 0;
    this.colPeriBole.Width = 54;
    this.colNumeBole.Caption = "N° Boleto";
    this.colNumeBole.FieldName = "NumeBole";
    this.colNumeBole.MaxWidth = 100;
    this.colNumeBole.Name = "colNumeBole";
    this.colNumeBole.OptionsColumn.AllowEdit = false;
    this.colNumeBole.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colNumeBole.OptionsColumn.AllowMove = false;
    this.colNumeBole.OptionsColumn.ReadOnly = true;
    this.colNumeBole.Visible = true;
    this.colNumeBole.VisibleIndex = 1;
    this.colNumeBole.Width = 54;
    ((AppearanceOptions) this.colAltaUsua.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colAltaUsua.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 1;
    this.colAltaUsua.Caption = "Usuario";
    this.colAltaUsua.FieldName = "AltaUsua";
    this.colAltaUsua.MaxWidth = 100;
    this.colAltaUsua.Name = "colAltaUsua";
    this.colAltaUsua.OptionsColumn.AllowEdit = false;
    this.colAltaUsua.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colAltaUsua.OptionsColumn.AllowMove = false;
    this.colAltaUsua.OptionsColumn.ReadOnly = true;
    this.colAltaUsua.Visible = true;
    this.colAltaUsua.VisibleIndex = 2;
    this.colAltaUsua.Width = 35;
    this.colAltaFeho.Caption = "Fecha / Hora";
    this.colAltaFeho.DisplayFormat.FormatString = "dd/MM/yyyy H:mm:ss";
    this.colAltaFeho.DisplayFormat.FormatType = (FormatType) 3;
    this.colAltaFeho.FieldName = "AltaFeho";
    this.colAltaFeho.MaxWidth = 130;
    this.colAltaFeho.Name = "colAltaFeho";
    this.colAltaFeho.OptionsColumn.AllowEdit = false;
    this.colAltaFeho.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colAltaFeho.OptionsColumn.AllowMove = false;
    this.colAltaFeho.OptionsColumn.ReadOnly = true;
    this.colAltaFeho.Visible = true;
    this.colAltaFeho.VisibleIndex = 3;
    this.colAltaFeho.Width = 54;
    this.panTituloInferior.Controls.Add((Control) this.metroLabel1);
    this.panTituloInferior.Dock = DockStyle.Top;
    this.panTituloInferior.Location = new Point(0, 0);
    this.panTituloInferior.Name = "panTituloInferior";
    this.panTituloInferior.Size = new Size(800, 38);
    this.panTituloInferior.TabIndex = 2;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Dock = DockStyle.Fill;
    this.metroLabel1.FontSize = 18f;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(0, 0);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(800, 38);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Tickets Reimpresos";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleCenter;
    this.panSuperior.Controls.Add((Control) this.lblTickeadora);
    this.panSuperior.Controls.Add((Control) this.chkTickAct);
    this.panSuperior.Controls.Add((Control) this.metroLabel7);
    this.panSuperior.Controls.Add((Control) this.btnImprimir);
    this.panSuperior.Controls.Add((Control) this.mibNumeBole);
    this.panSuperior.Controls.Add((Control) this.mibPeriodo);
    this.panSuperior.Controls.Add((Control) this.metroLabel3);
    this.panSuperior.Controls.Add((Control) this.metroLabel2);
    this.panSuperior.Dock = DockStyle.Top;
    this.panSuperior.Location = new Point(0, 0);
    this.panSuperior.Name = "panSuperior";
    this.panSuperior.Size = new Size(800, 162);
    this.panSuperior.TabIndex = 3;
    this.lblTickeadora.AutoSize = false;
    this.lblTickeadora.Location = new Point(448, 71);
    this.lblTickeadora.Name = "lblTickeadora";
    this.lblTickeadora.Size = new Size(337, 19);
    this.lblTickeadora.TabIndex = 10;
    this.lblTickeadora.Text = "Nombre Tickeadora";
    this.chkTickAct.AutoSize = false;
    this.chkTickAct.Enabled = false;
    this.chkTickAct.Location = new Point(452, 49);
    this.chkTickAct.Name = "chkTickAct";
    this.chkTickAct.Size = new Size(69, 19);
    this.chkTickAct.TabIndex = 9;
    this.chkTickAct.TabStop = false;
    this.chkTickAct.Text = "Inactivo";
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(449, 25);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(76, 19);
    this.metroLabel7.TabIndex = 8;
    this.metroLabel7.Text = "Tickeadora";
    this.btnImprimir.Location = new Point(209, 47);
    this.btnImprimir.Name = "btnImprimir";
    this.btnImprimir.Size = new Size(101, 36);
    this.btnImprimir.TabIndex = 3;
    this.btnImprimir.Text = "IMPRIMIR";
    this.btnImprimir.Click += new EventHandler(this.btnImprimir_Click);
    this.mibNumeBole.Location = new Point(111, 71);
    this.mibNumeBole.MaxLength = 12;
    this.mibNumeBole.Name = "mibNumeBole";
    this.mibNumeBole.Size = new Size(72, 23);
    this.mibNumeBole.TabIndex = 2;
    this.mibNumeBole.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.mibPeriodo.Location = new Point(111, 36);
    this.mibPeriodo.MaxLength = 4;
    this.mibPeriodo.Name = "mibPeriodo";
    this.mibPeriodo.Size = new Size(72, 23);
    this.mibPeriodo.TabIndex = 1;
    this.mibPeriodo.KeyDown += new KeyEventHandler(this.SoloNumeros);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(31 /*0x1F*/, 72);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(66, 19);
    this.metroLabel3.TabIndex = 3;
    this.metroLabel3.Text = "N° Boleto";
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(31 /*0x1F*/, 38);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(55, 19);
    this.metroLabel2.TabIndex = 2;
    this.metroLabel2.Text = "Periodo";
    this.AcceptButton = (IButtonControl) this.btnImprimir;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(800, 450);
    this.ControlBox = false;
    this.Controls.Add((Control) this.pan1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmReimpresionTicketMP);
    this.Text = "Reimpresion de Ticket";
    this.pan1.ResumeLayout(false);
    this.panInferior.ResumeLayout(false);
    this.panTabla.ResumeLayout(false);
    ((ISupportInitialize) this.gridTickets).EndInit();
    ((ISupportInitialize) this.viewTickets).EndInit();
    this.panTituloInferior.ResumeLayout(false);
    this.panSuperior.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
