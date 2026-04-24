// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.Modals.mdlDeudorVario
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Infogov.Ventanas;
using InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios;
using InfoGov.Plugins.Recaudacion.Expertos.AforosDeudoresVarios;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.Modals;

public class mdlDeudorVario : BaseForm
{
  private List<Persona> listaPersonas;
  public DeudorVario deudor;
  private ExpPersona expPersona;
  private ExpDeudorVario expDV;
  private IContainer components = (IContainer) null;
  private MetroButton btnCerrar;
  private MetroLabel lblResumen;
  private SimpleButton btnSeleccionar;
  private MetroTextBox txtCucuPers;
  private MetroLabel metroLabel2;
  private MetroTextBox txtNombre;
  private MetroLabel metroLabel3;
  private SimpleButton btnNuevaPersona;
  private GridControl gridControlPersonas;
  private GridView gridViewPersonas;
  private GridColumn colCucuPers;
  private GridColumn colDetaPers;

  public mdlDeudorVario()
  {
    this.InitializeComponent();
    this.listaPersonas = new List<Persona>();
    this.deudor = new DeudorVario();
    this.expPersona = new ExpPersona();
    this.expDV = new ExpDeudorVario();
    this.expPersona.ObtenerPersonasMgue(this.listaPersonas);
    ((Control) this.btnSeleccionar).Enabled = false;
    this.gridControlPersonas.DataSource = (object) this.listaPersonas;
    ((ColumnView) this.gridViewPersonas).FocusInvalidRow();
    this.txtCucuPers.Focus();
  }

  private bool Validar()
  {
    if (this.deudor.Persona == null)
    {
      new frmMensaje((Form) this).mostrarError("No se ha seleccionado ninguna persona como deudor.");
      return false;
    }
    if (!this.expDV.ExisteDeudorVario(this.deudor))
      return true;
    new frmMensaje((Form) this).mostrarError("El deudor vario que trata de crear YA EXISTE.");
    return false;
  }

  private void btnSeleccionar_Click(object sender, EventArgs e)
  {
    if (this.deudor.Persona != null)
    {
      this.deudor.CodiDeva = this.deudor.Persona.CucuPers.ToString();
      this.deudor.CucuPers = this.deudor.Persona.CucuPers;
      this.deudor.DetaPers = this.deudor.Persona.DetaPers;
    }
    if (!this.Validar())
      return;
    if (!this.expDV.GuardarNuevoDeudorVario(this.deudor))
    {
      new frmMensaje((Form) this).mostrarError("No se pudo crear el nuevo registro. Verificar...");
    }
    else
    {
      this.DialogResult = DialogResult.OK;
      this.Close();
    }
  }

  private void btnNuevaPersona_Click(object sender, EventArgs e)
  {
    this.deudor.Persona = new mdlPersona().crearPersona();
    if (this.deudor.Persona != null)
    {
      this.deudor.Persona.status = EntityStatus.New;
      if (!this.listaPersonas.Any<Persona>((Func<Persona, bool>) (p => p.CucuPers == this.deudor.Persona.CucuPers)))
        this.listaPersonas.Add(this.deudor.Persona);
      this.txtCucuPers.Text = this.deudor.Persona.CucuPers.ToString();
      this.gridControlPersonas.RefreshDataSource();
      ((BaseView) this.gridViewPersonas).RefreshData();
    }
    else
    {
      this.txtCucuPers.Text = this.txtNombre.Text = string.Empty;
      ((ColumnView) this.gridViewPersonas).FocusInvalidRow();
    }
  }

  private void gridViewPersonas_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    this.deudor.Persona = ((ColumnView) this.gridViewPersonas).GetFocusedRow() as Persona;
    ((Control) this.btnSeleccionar).Enabled = this.deudor.Persona != null;
  }

  private void Filtro_TextChanged(object sender, EventArgs e)
  {
    this.AplicarFiltroYSeleccionarPrimeraFila();
  }

  private void AplicarFiltroYSeleccionarPrimeraFila()
  {
    ((ColumnView) this.gridViewPersonas).ActiveFilterString = this.ConstruirFiltroCombinado();
    this.SeleccionarPrimerRegistro();
  }

  private string ConstruirFiltroCombinado()
  {
    List<string> values = new List<string>();
    string input1 = (this.txtCucuPers.Text ?? string.Empty).Trim();
    string input2 = (this.txtNombre.Text ?? string.Empty).Trim();
    string str1 = this.EscapeForFilter(input1);
    string str2 = this.EscapeForFilter(input2);
    if (!string.IsNullOrEmpty(str1))
      values.Add($"[CucuPers] LIKE '{str1}%'");
    else if (!string.IsNullOrEmpty(str2))
      values.Add($"[DetaPers] LIKE '%{str2}%'");
    return values.Count == 0 ? string.Empty : string.Join(" AND ", (IEnumerable<string>) values);
  }

  private string EscapeForFilter(string input)
  {
    return string.IsNullOrEmpty(input) ? input : input.Replace("'", "''");
  }

  private void SeleccionarPrimerRegistro()
  {
    try
    {
      int visibleRowHandle = ((ColumnView) this.gridViewPersonas).GetVisibleRowHandle(0);
      if (((ColumnView) this.gridViewPersonas).IsDataRow(visibleRowHandle))
      {
        ((ColumnView) this.gridViewPersonas).FocusedRowHandle = visibleRowHandle;
        try
        {
          this.gridViewPersonas.MakeRowVisible(visibleRowHandle);
        }
        catch
        {
        }
        ((Control) this.btnSeleccionar).Enabled = true;
      }
      else
      {
        ((Control) this.btnSeleccionar).Enabled = false;
        try
        {
          ((ColumnView) this.gridViewPersonas).ClearSelection();
        }
        catch
        {
        }
        try
        {
          ((ColumnView) this.gridViewPersonas).FocusedRowHandle = int.MinValue;
        }
        catch
        {
        }
      }
    }
    catch
    {
      ((Control) this.btnSeleccionar).Enabled = false;
    }
  }

  private void txtCucuPers_Enter(object sender, EventArgs e)
  {
    if (!string.IsNullOrEmpty(this.txtNombre.Text))
      this.txtNombre.Text = string.Empty;
    this.txtCucuPers.SelectAll();
  }

  private void txtNombre_Enter(object sender, EventArgs e)
  {
    if (!string.IsNullOrEmpty(this.txtCucuPers.Text))
      this.txtCucuPers.Text = string.Empty;
    this.txtNombre.SelectAll();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (mdlDeudorVario));
    this.btnCerrar = new MetroButton();
    this.lblResumen = new MetroLabel();
    this.btnSeleccionar = new SimpleButton();
    this.txtCucuPers = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.txtNombre = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.btnNuevaPersona = new SimpleButton();
    this.gridControlPersonas = new GridControl();
    this.gridViewPersonas = new GridView();
    this.colCucuPers = new GridColumn();
    this.colDetaPers = new GridColumn();
    ((ISupportInitialize) this.gridControlPersonas).BeginInit();
    ((ISupportInitialize) this.gridViewPersonas).BeginInit();
    this.SuspendLayout();
    this.btnCerrar.DialogResult = DialogResult.Cancel;
    this.btnCerrar.Location = new Point(436, 5);
    this.btnCerrar.Name = "btnCerrar";
    this.btnCerrar.Size = new Size(23, 23);
    this.btnCerrar.TabIndex = 5;
    this.btnCerrar.Text = "X";
    this.lblResumen.AutoSize = false;
    this.lblResumen.Dock = DockStyle.Top;
    this.lblResumen.FontSize = 18f;
    this.lblResumen.FontWeight = MetroFontWeight.Bold;
    this.lblResumen.Location = new Point(0, 0);
    this.lblResumen.Name = "lblResumen";
    this.lblResumen.Size = new Size(466, 34);
    this.lblResumen.TabIndex = 5;
    this.lblResumen.Text = "Crear Deudor Vario";
    this.lblResumen.TextAlign = ContentAlignment.MiddleCenter;
    ((BaseStyleControl) this.btnSeleccionar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnSeleccionar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnSeleccionar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnSeleccionar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnSeleccionar.ImageOptions.Image");
    ((Control) this.btnSeleccionar).Location = new Point(156, 414);
    ((Control) this.btnSeleccionar).Name = "btnSeleccionar";
    ((Control) this.btnSeleccionar).Size = new Size(164, 24);
    ((Control) this.btnSeleccionar).TabIndex = 4;
    ((Control) this.btnSeleccionar).TabStop = false;
    ((Control) this.btnSeleccionar).Text = "CREAR SELECCIONADO";
    ((Control) this.btnSeleccionar).Click += new EventHandler(this.btnSeleccionar_Click);
    this.txtCucuPers.CausesValidation = false;
    this.txtCucuPers.Location = new Point(100, 47);
    this.txtCucuPers.MaxLength = 11;
    this.txtCucuPers.Name = "txtCucuPers";
    this.txtCucuPers.Size = new Size(128 /*0x80*/, 23);
    this.txtCucuPers.TabIndex = 1;
    this.txtCucuPers.TextAlign = HorizontalAlignment.Center;
    this.txtCucuPers.TextChanged += new EventHandler(this.Filtro_TextChanged);
    this.txtCucuPers.Enter += new EventHandler(this.txtCucuPers_Enter);
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(15, 49);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(69, 19);
    this.metroLabel2.TabIndex = 9;
    this.metroLabel2.Text = "CUIL/CUIT";
    this.txtNombre.CausesValidation = false;
    this.txtNombre.Location = new Point(100, 82);
    this.txtNombre.MaxLength = 50;
    this.txtNombre.Name = "txtNombre";
    this.txtNombre.Size = new Size(351, 23);
    this.txtNombre.TabIndex = 2;
    this.txtNombre.TextChanged += new EventHandler(this.Filtro_TextChanged);
    this.txtNombre.Enter += new EventHandler(this.txtNombre_Enter);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(21, 84);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(67, 19);
    this.metroLabel3.TabIndex = 11;
    this.metroLabel3.Text = "NOMBRE";
    ((BaseStyleControl) this.btnNuevaPersona).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnNuevaPersona).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnNuevaPersona).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnNuevaPersona.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnNuevaPersona.ImageOptions.Image");
    ((Control) this.btnNuevaPersona).Location = new Point(326, 47);
    ((Control) this.btnNuevaPersona).Name = "btnNuevaPersona";
    ((Control) this.btnNuevaPersona).Size = new Size(125, 24);
    ((Control) this.btnNuevaPersona).TabIndex = 3;
    ((Control) this.btnNuevaPersona).TabStop = false;
    ((Control) this.btnNuevaPersona).Text = "NUEVA PERSONA";
    ((Control) this.btnNuevaPersona).Click += new EventHandler(this.btnNuevaPersona_Click);
    ((Control) this.gridControlPersonas).Location = new Point(21, 126);
    this.gridControlPersonas.MainView = (BaseView) this.gridViewPersonas;
    ((Control) this.gridControlPersonas).Name = "gridControlPersonas";
    ((Control) this.gridControlPersonas).Size = new Size(430, 282);
    ((Control) this.gridControlPersonas).TabIndex = 204;
    ((Control) this.gridControlPersonas).TabStop = false;
    this.gridControlPersonas.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewPersonas
    });
    this.gridViewPersonas.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewPersonas.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewPersonas.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewPersonas).Columns.AddRange(new GridColumn[2]
    {
      this.colCucuPers,
      this.colDetaPers
    });
    this.gridViewPersonas.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewPersonas).GridControl = this.gridControlPersonas;
    ((BaseView) this.gridViewPersonas).Name = "gridViewPersonas";
    ((ColumnViewOptionsBehavior) this.gridViewPersonas.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewPersonas.OptionsBehavior).ReadOnly = true;
    this.gridViewPersonas.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewPersonas.OptionsCustomization.AllowGroup = false;
    this.gridViewPersonas.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewPersonas.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewPersonas.OptionsView.ShowGroupPanel = false;
    this.gridViewPersonas.OptionsView.ShowIndicator = false;
    ((ColumnView) this.gridViewPersonas).FocusedRowChanged += new FocusedRowChangedEventHandler(this.gridViewPersonas_FocusedRowChanged);
    ((AppearanceOptions) this.colCucuPers.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCucuPers.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCucuPers.Caption = "CUIL/CUIT";
    this.colCucuPers.FieldName = "CucuPers";
    this.colCucuPers.MaxWidth = 120;
    this.colCucuPers.Name = "colCucuPers";
    this.colCucuPers.OptionsColumn.AllowEdit = false;
    this.colCucuPers.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCucuPers.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCucuPers.OptionsColumn.AllowMove = false;
    this.colCucuPers.OptionsColumn.AllowShowHide = false;
    this.colCucuPers.OptionsColumn.AllowSize = false;
    this.colCucuPers.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colCucuPers.OptionsColumn.ReadOnly = true;
    this.colCucuPers.OptionsColumn.TabStop = false;
    this.colCucuPers.Visible = true;
    this.colCucuPers.VisibleIndex = 0;
    this.colCucuPers.Width = 60;
    this.colDetaPers.Caption = "Nombre";
    this.colDetaPers.FieldName = "DetaPers";
    this.colDetaPers.Name = "colDetaPers";
    this.colDetaPers.OptionsColumn.AllowEdit = false;
    this.colDetaPers.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetaPers.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDetaPers.OptionsColumn.AllowMove = false;
    this.colDetaPers.OptionsColumn.AllowShowHide = false;
    this.colDetaPers.OptionsColumn.AllowSize = false;
    this.colDetaPers.OptionsColumn.ReadOnly = true;
    this.colDetaPers.OptionsColumn.TabStop = false;
    this.colDetaPers.Visible = true;
    this.colDetaPers.VisibleIndex = 1;
    this.AcceptButton = (IButtonControl) this.btnSeleccionar;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(466, 450);
    this.ControlBox = false;
    this.Controls.Add((Control) this.gridControlPersonas);
    this.Controls.Add((Control) this.btnNuevaPersona);
    this.Controls.Add((Control) this.txtNombre);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.txtCucuPers);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.btnSeleccionar);
    this.Controls.Add((Control) this.btnCerrar);
    this.Controls.Add((Control) this.lblResumen);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.FixedSingle;
    this.Name = nameof (mdlDeudorVario);
    this.StartPosition = FormStartPosition.CenterParent;
    ((ISupportInitialize) this.gridControlPersonas).EndInit();
    ((ISupportInitialize) this.gridViewPersonas).EndInit();
    this.ResumeLayout(false);
  }
}
