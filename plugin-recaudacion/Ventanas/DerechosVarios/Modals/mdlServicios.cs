// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Modals.mdlServicios
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
using InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Modals;

public class mdlServicios : BaseForm
{
  private List<ServicioDerechoVarioMP> serviciosDisponibles;
  private IContainer components = (IContainer) null;
  private MetroButton btnCerrar;
  private SimpleButton btnSeleccionar;
  private MetroPanel panSup;
  private MetroPanel panInf;
  private MetroPanel panCentr;
  private MetroLabel metroLabel1;
  private MetroTextBox txtCodigo;
  private MetroLabel metroLabel2;
  private MetroTextBox txtDetalle;
  private MetroLabel metroLabel3;
  private GridControl gridControlServicios;
  private GridView gridViewServicios;
  private GridColumn colCodigo;
  private GridColumn colDetalle;
  private GridColumn colImporte;
  private GridColumn colDetaTiva;
  private GridColumn colVariSede;
  private MetroLabel metroLabel4;
  private MetroEntityBox mebCodPadre;
  private GridColumn colCodiDvpa;

  public ServicioDerechoVarioMP ServicioSeleccionado { get; private set; }

  public mdlServicios(List<ServicioDerechoVarioMP> servicios)
  {
    this.InitializeComponent();
    this.idPlugin = 28;
    this.serviciosDisponibles = servicios ?? new List<ServicioDerechoVarioMP>();
    this.gridControlServicios.DataSource = (object) this.serviciosDisponibles;
    this.txtCodigo.TextChanged += new EventHandler(this.Filtro_TextChanged);
    this.txtDetalle.TextChanged += new EventHandler(this.Filtro_TextChanged);
    this.txtCodigo.Enter += new EventHandler(this.TxtCodigo_Enter);
    this.txtDetalle.Enter += new EventHandler(this.TxtDetalle_Enter);
    ((ColumnView) this.gridViewServicios).FocusedRowChanged += new FocusedRowChangedEventHandler(this.GridViewServicios_FocusedRowChanged);
    ((Control) this.btnSeleccionar).Click += new EventHandler(this.BtnSeleccionar_Click);
    this.btnCerrar.Click += new EventHandler(this.BtnCerrar_Click);
    ((Control) this.btnSeleccionar).Enabled = false;
    this.Disposed += new EventHandler(this.MdlServicios_Disposed);
    this.AplicarFiltroYSeleccionarPrimeraFila();
    this.mebCodPadre.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarDVPadre);
    this.mebCodPadre.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarDVPadre);
  }

  private void TxtCodigo_Enter(object sender, EventArgs e)
  {
    if (!string.IsNullOrEmpty(this.txtDetalle.Text))
      this.txtDetalle.Text = string.Empty;
    this.txtCodigo.SelectAll();
  }

  private void TxtDetalle_Enter(object sender, EventArgs e)
  {
    if (!string.IsNullOrEmpty(this.txtCodigo.Text))
      this.txtCodigo.Text = string.Empty;
    this.txtDetalle.SelectAll();
  }

  private void Filtro_TextChanged(object sender, EventArgs e)
  {
    this.AplicarFiltroYSeleccionarPrimeraFila();
  }

  private void AplicarFiltroYSeleccionarPrimeraFila()
  {
    ((ColumnView) this.gridViewServicios).ActiveFilterString = this.ConstruirFiltroCombinado();
    this.SeleccionarPrimerRegistro();
  }

  private string ConstruirFiltroCombinado()
  {
    List<string> values = new List<string>();
    string input1 = (this.txtCodigo.Text ?? string.Empty).Trim();
    string input2 = (this.txtDetalle.Text ?? string.Empty).Trim();
    string str1 = this.EscapeForFilter(input1);
    string str2 = this.EscapeForFilter(input2);
    if (!string.IsNullOrEmpty(str1))
      values.Add($"[CodiSede] LIKE '{str1}%'");
    else if (!string.IsNullOrEmpty(str2))
      values.Add($"[DetaSede] LIKE '%{str2}%'");
    if (this.mebCodPadre != null && this.mebCodPadre.Entity != null && this.mebCodPadre.Entity is DerechoVarioPadreMP entity)
      values.Add($"[CodiDvpa] = {entity.CodiDvpa}");
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
      int visibleRowHandle = ((ColumnView) this.gridViewServicios).GetVisibleRowHandle(0);
      if (((ColumnView) this.gridViewServicios).IsDataRow(visibleRowHandle))
      {
        ((ColumnView) this.gridViewServicios).FocusedRowHandle = visibleRowHandle;
        try
        {
          this.gridViewServicios.MakeRowVisible(visibleRowHandle);
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
          ((ColumnView) this.gridViewServicios).ClearSelection();
        }
        catch
        {
        }
        try
        {
          ((ColumnView) this.gridViewServicios).FocusedRowHandle = int.MinValue;
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

  private void GridViewServicios_FocusedRowChanged(object sender, FocusedRowChangedEventArgs e)
  {
    ((Control) this.btnSeleccionar).Enabled = ((ColumnView) this.gridViewServicios).IsDataRow(e.FocusedRowHandle);
  }

  public ServicioDerechoVarioMP GetServicioSeleccionado()
  {
    int focusedRowHandle = ((ColumnView) this.gridViewServicios).FocusedRowHandle;
    return !((ColumnView) this.gridViewServicios).IsDataRow(focusedRowHandle) ? (ServicioDerechoVarioMP) null : ((BaseView) this.gridViewServicios).GetRow(focusedRowHandle) as ServicioDerechoVarioMP;
  }

  private void BtnSeleccionar_Click(object sender, EventArgs e)
  {
    ServicioDerechoVarioMP servicioSeleccionado = this.GetServicioSeleccionado();
    if (servicioSeleccionado != null)
    {
      this.ServicioSeleccionado = servicioSeleccionado;
      this.DialogResult = DialogResult.OK;
    }
    else
      this.DialogResult = DialogResult.Cancel;
    this.Close();
  }

  private void BtnCerrar_Click(object sender, EventArgs e)
  {
    this.DialogResult = DialogResult.Cancel;
    this.Close();
  }

  private void MdlServicios_Disposed(object sender, EventArgs e)
  {
    try
    {
      if (this.txtCodigo != null)
      {
        this.txtCodigo.TextChanged -= new EventHandler(this.Filtro_TextChanged);
        this.txtCodigo.Enter -= new EventHandler(this.TxtCodigo_Enter);
      }
      if (this.txtDetalle != null)
      {
        this.txtDetalle.TextChanged -= new EventHandler(this.Filtro_TextChanged);
        this.txtDetalle.Enter -= new EventHandler(this.TxtDetalle_Enter);
      }
      if (this.gridViewServicios != null)
        ((ColumnView) this.gridViewServicios).FocusedRowChanged -= new FocusedRowChangedEventHandler(this.GridViewServicios_FocusedRowChanged);
      if (this.btnSeleccionar != null)
        ((Control) this.btnSeleccionar).Click -= new EventHandler(this.BtnSeleccionar_Click);
      if (this.btnCerrar == null)
        return;
      this.btnCerrar.Click -= new EventHandler(this.BtnCerrar_Click);
    }
    catch
    {
    }
  }

  private Entity BuscarDVPadre(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiDvpa", "Código", FilterMode.Equal, text));
    else if (!string.IsNullOrWhiteSpace(text))
      filter.Items.Add(new FilterItem("DetaDvpa", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<DerechoVarioPadreMP>(filter, true);
  }

  private Entity EncontrarDVPadre(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiDvpa", "Código", FilterMode.Equal, text));
    else if (!string.IsNullOrWhiteSpace(text))
      filter.Items.Add(new FilterItem("DetaDvpa", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<DerechoVarioPadreMP>(filter, true, true);
  }

  private void mebCodPadre_EntityChangedDone(object source, EntityChangedEventArgs e)
  {
    ((ColumnView) this.gridViewServicios).ActiveFilterString = this.ConstruirFiltroCombinado();
    this.SeleccionarPrimerRegistro();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (mdlServicios));
    this.btnCerrar = new MetroButton();
    this.btnSeleccionar = new SimpleButton();
    this.panSup = new MetroPanel();
    this.mebCodPadre = new MetroEntityBox();
    this.metroLabel4 = new MetroLabel();
    this.txtDetalle = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.txtCodigo = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.panInf = new MetroPanel();
    this.panCentr = new MetroPanel();
    this.gridControlServicios = new GridControl();
    this.gridViewServicios = new GridView();
    this.colCodigo = new GridColumn();
    this.colDetalle = new GridColumn();
    this.colImporte = new GridColumn();
    this.colCodiDvpa = new GridColumn();
    this.colDetaTiva = new GridColumn();
    this.colVariSede = new GridColumn();
    this.panSup.SuspendLayout();
    this.panInf.SuspendLayout();
    this.panCentr.SuspendLayout();
    ((ISupportInitialize) this.gridControlServicios).BeginInit();
    ((ISupportInitialize) this.gridViewServicios).BeginInit();
    this.SuspendLayout();
    this.btnCerrar.DialogResult = DialogResult.Cancel;
    this.btnCerrar.Location = new Point(899, 3);
    this.btnCerrar.Name = "btnCerrar";
    this.btnCerrar.Size = new Size(23, 23);
    this.btnCerrar.TabIndex = 5;
    this.btnCerrar.TabStop = false;
    this.btnCerrar.Text = "X";
    ((BaseStyleControl) this.btnSeleccionar).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnSeleccionar).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnSeleccionar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnSeleccionar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnSeleccionar.ImageOptions.Image");
    ((Control) this.btnSeleccionar).Location = new Point(405, 7);
    ((Control) this.btnSeleccionar).Name = "btnSeleccionar";
    ((Control) this.btnSeleccionar).Size = new Size(112 /*0x70*/, 24);
    ((Control) this.btnSeleccionar).TabIndex = 6;
    ((Control) this.btnSeleccionar).TabStop = false;
    ((Control) this.btnSeleccionar).Text = "Seleccionar";
    this.panSup.Controls.Add((Control) this.mebCodPadre);
    this.panSup.Controls.Add((Control) this.metroLabel4);
    this.panSup.Controls.Add((Control) this.txtDetalle);
    this.panSup.Controls.Add((Control) this.metroLabel3);
    this.panSup.Controls.Add((Control) this.txtCodigo);
    this.panSup.Controls.Add((Control) this.metroLabel2);
    this.panSup.Controls.Add((Control) this.btnCerrar);
    this.panSup.Controls.Add((Control) this.metroLabel1);
    this.panSup.Dock = DockStyle.Top;
    this.panSup.Location = new Point(0, 0);
    this.panSup.Name = "panSup";
    this.panSup.Size = new Size(929, 106);
    this.panSup.TabIndex = 7;
    this.mebCodPadre.AllowEmpty = false;
    this.mebCodPadre.AllowSqlCharacters = false;
    this.mebCodPadre.BackColor = Color.White;
    this.mebCodPadre.Entity = (Entity) null;
    this.mebCodPadre.ExternalValidation = (Func<string>) null;
    this.mebCodPadre.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebCodPadre.LabelText = "";
    this.mebCodPadre.Location = new Point(139, 41);
    this.mebCodPadre.MandatoryWrite = false;
    this.mebCodPadre.Margin = new Padding(3, 4, 3, 4);
    this.mebCodPadre.MaximumSize = new Size(3000, 23);
    this.mebCodPadre.MaxLenght = 50;
    this.mebCodPadre.MinimumSize = new Size(100, 23);
    this.mebCodPadre.Name = "mebCodPadre";
    this.mebCodPadre.PropertyDetail = "DetaDvpa";
    this.mebCodPadre.PropertyID = "CodiDvpa";
    this.mebCodPadre.ShowNewButton = false;
    this.mebCodPadre.ShowSearchButton = false;
    this.mebCodPadre.Size = new Size(704, 23);
    this.mebCodPadre.TabIndex = 1;
    this.mebCodPadre.TextAlign = HorizontalAlignment.Left;
    this.mebCodPadre.TextBoxWidth = 120;
    this.mebCodPadre.EntityChangedDone += new AfterEntityChange(this.mebCodPadre_EntityChangedDone);
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(19, 43);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(108, 19);
    this.metroLabel4.TabIndex = 10;
    this.metroLabel4.Text = "CÓDIGO PADRE";
    this.txtDetalle.CausesValidation = false;
    this.txtDetalle.Location = new Point(340, 74);
    this.txtDetalle.MaxLength = 50;
    this.txtDetalle.Name = "txtDetalle";
    this.txtDetalle.Size = new Size(503, 23);
    this.txtDetalle.TabIndex = 3;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(270, 75);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(58, 19);
    this.metroLabel3.TabIndex = 9;
    this.metroLabel3.Text = "DETALLE";
    this.txtCodigo.CausesValidation = false;
    this.txtCodigo.Location = new Point(139, 74);
    this.txtCodigo.MaxLength = 20;
    this.txtCodigo.Name = "txtCodigo";
    this.txtCodigo.Size = new Size(119, 23);
    this.txtCodigo.TabIndex = 2;
    this.txtCodigo.TextAlign = HorizontalAlignment.Center;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(27, 75);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(100, 19);
    this.metroLabel2.TabIndex = 7;
    this.metroLabel2.Text = "CÓDIGO SERV.";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Dock = DockStyle.Top;
    this.metroLabel1.FontSize = 16f;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(0, 0);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(929, 19);
    this.metroLabel1.TabIndex = 6;
    this.metroLabel1.Text = "Servicios Disponibles";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleCenter;
    this.panInf.Controls.Add((Control) this.btnSeleccionar);
    this.panInf.Dock = DockStyle.Bottom;
    this.panInf.Location = new Point(0, 327);
    this.panInf.Name = "panInf";
    this.panInf.Size = new Size(929, 38);
    this.panInf.TabIndex = 8;
    this.panCentr.Controls.Add((Control) this.gridControlServicios);
    this.panCentr.Dock = DockStyle.Fill;
    this.panCentr.Location = new Point(0, 106);
    this.panCentr.Name = "panCentr";
    this.panCentr.Size = new Size(929, 221);
    this.panCentr.TabIndex = 9;
    ((Control) this.gridControlServicios).Dock = DockStyle.Fill;
    ((Control) this.gridControlServicios).Location = new Point(0, 0);
    this.gridControlServicios.MainView = (BaseView) this.gridViewServicios;
    ((Control) this.gridControlServicios).Name = "gridControlServicios";
    ((Control) this.gridControlServicios).Size = new Size(929, 221);
    ((Control) this.gridControlServicios).TabIndex = 5;
    this.gridControlServicios.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewServicios
    });
    this.gridViewServicios.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewServicios.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    this.gridViewServicios.Appearance.HeaderPanel.TextOptions.VAlignment = (VertAlignment) 2;
    ((ColumnView) this.gridViewServicios).Columns.AddRange(new GridColumn[6]
    {
      this.colCodigo,
      this.colDetalle,
      this.colImporte,
      this.colCodiDvpa,
      this.colDetaTiva,
      this.colVariSede
    });
    this.gridViewServicios.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewServicios).GridControl = this.gridControlServicios;
    ((BaseView) this.gridViewServicios).Name = "gridViewServicios";
    ((ColumnViewOptionsBehavior) this.gridViewServicios.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewServicios.OptionsBehavior).FocusLeaveOnTab = true;
    ((ColumnViewOptionsBehavior) this.gridViewServicios.OptionsBehavior).ReadOnly = true;
    this.gridViewServicios.OptionsCustomization.AllowColumnMoving = false;
    this.gridViewServicios.OptionsCustomization.AllowGroup = false;
    this.gridViewServicios.OptionsDetail.EnableMasterViewMode = false;
    this.gridViewServicios.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewServicios.OptionsView.ShowGroupPanel = false;
    this.gridViewServicios.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colCodigo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCodigo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCodigo.Caption = "Código";
    this.colCodigo.FieldName = "CodiSede";
    this.colCodigo.MaxWidth = 100;
    this.colCodigo.Name = "colCodigo";
    this.colCodigo.OptionsColumn.AllowEdit = false;
    this.colCodigo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCodigo.OptionsColumn.AllowIncrementalSearch = false;
    this.colCodigo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCodigo.OptionsColumn.AllowMove = false;
    this.colCodigo.OptionsColumn.AllowShowHide = false;
    this.colCodigo.OptionsColumn.TabStop = false;
    this.colCodigo.Visible = true;
    this.colCodigo.VisibleIndex = 0;
    this.colCodigo.Width = 100;
    this.colDetalle.Caption = "Detalle";
    this.colDetalle.FieldName = "DetaSede";
    this.colDetalle.Name = "colDetalle";
    this.colDetalle.OptionsColumn.AllowEdit = false;
    this.colDetalle.OptionsColumn.AllowFocus = false;
    this.colDetalle.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowIncrementalSearch = false;
    this.colDetalle.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowMove = false;
    this.colDetalle.OptionsColumn.AllowShowHide = false;
    this.colDetalle.OptionsColumn.TabStop = false;
    this.colDetalle.Visible = true;
    this.colDetalle.VisibleIndex = 1;
    this.colDetalle.Width = 200;
    ((AppearanceOptions) this.colImporte.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImporte.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImporte.Caption = "Importe";
    this.colImporte.FieldName = "ImpoSede";
    this.colImporte.MaxWidth = 150;
    this.colImporte.Name = "colImporte";
    this.colImporte.OptionsColumn.AllowEdit = false;
    this.colImporte.OptionsColumn.AllowFocus = false;
    this.colImporte.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowIncrementalSearch = false;
    this.colImporte.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowMove = false;
    this.colImporte.OptionsColumn.AllowShowHide = false;
    this.colImporte.OptionsColumn.TabStop = false;
    this.colImporte.Visible = true;
    this.colImporte.VisibleIndex = 2;
    this.colImporte.Width = 150;
    this.colCodiDvpa.Caption = "Código Padre";
    this.colCodiDvpa.FieldName = "CodiDvpa";
    this.colCodiDvpa.Name = "colCodiDvpa";
    this.colCodiDvpa.OptionsColumn.AllowEdit = false;
    this.colCodiDvpa.OptionsColumn.AllowFocus = false;
    this.colCodiDvpa.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCodiDvpa.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCodiDvpa.OptionsColumn.AllowMove = false;
    this.colCodiDvpa.OptionsColumn.AllowShowHide = false;
    this.colCodiDvpa.OptionsColumn.AllowSize = false;
    this.colCodiDvpa.OptionsColumn.FixedWidth = true;
    this.colCodiDvpa.OptionsColumn.ReadOnly = true;
    this.colCodiDvpa.OptionsColumn.TabStop = false;
    ((AppearanceOptions) this.colDetaTiva.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDetaTiva.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colDetaTiva.Caption = "Tipo Valor";
    this.colDetaTiva.FieldName = "DetaTiva";
    this.colDetaTiva.MaxWidth = 80 /*0x50*/;
    this.colDetaTiva.Name = "colDetaTiva";
    this.colDetaTiva.OptionsColumn.AllowEdit = false;
    this.colDetaTiva.OptionsColumn.AllowFocus = false;
    this.colDetaTiva.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetaTiva.OptionsColumn.AllowIncrementalSearch = false;
    this.colDetaTiva.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDetaTiva.OptionsColumn.AllowMove = false;
    this.colDetaTiva.OptionsColumn.AllowShowHide = false;
    this.colDetaTiva.OptionsColumn.AllowSize = false;
    this.colDetaTiva.OptionsColumn.TabStop = false;
    this.colDetaTiva.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colVariSede.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colVariSede.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colVariSede.Caption = "¿Se puede modificar?";
    this.colVariSede.FieldName = "VariSede";
    this.colVariSede.MaxWidth = 110;
    this.colVariSede.Name = "colVariSede";
    this.colVariSede.OptionsColumn.AllowEdit = false;
    this.colVariSede.OptionsColumn.AllowFocus = false;
    this.colVariSede.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colVariSede.OptionsColumn.AllowIncrementalSearch = false;
    this.colVariSede.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colVariSede.OptionsColumn.AllowMove = false;
    this.colVariSede.OptionsColumn.AllowShowHide = false;
    this.colVariSede.OptionsColumn.AllowSize = false;
    this.colVariSede.OptionsColumn.TabStop = false;
    this.colVariSede.Width = 110;
    this.AcceptButton = (IButtonControl) this.btnSeleccionar;
    this.AutoScaleMode = AutoScaleMode.None;
    this.CancelButton = (IButtonControl) this.btnCerrar;
    this.ClientSize = new Size(929, 365);
    this.ControlBox = false;
    this.Controls.Add((Control) this.panCentr);
    this.Controls.Add((Control) this.panInf);
    this.Controls.Add((Control) this.panSup);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.FormBorderStyle = FormBorderStyle.FixedDialog;
    this.Name = nameof (mdlServicios);
    this.StartPosition = FormStartPosition.CenterParent;
    this.panSup.ResumeLayout(false);
    this.panInf.ResumeLayout(false);
    this.panCentr.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlServicios).EndInit();
    ((ISupportInitialize) this.gridViewServicios).EndInit();
    this.ResumeLayout(false);
  }
}
