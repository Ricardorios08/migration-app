// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.GridDerechos.Maipu.GridDerechosMaipu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Data.Mask.Internal;
using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Container;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraEditors.Mask;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Common;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Expertos.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Herencia;
using InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Modals;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.GridDerechos.Maipu;

public class GridDerechosMaipu : BuscadorBase, IDerechosVarios
{
  private List<ServicioDerechoVarioMP> serviciosDisponibles = new List<ServicioDerechoVarioMP>();
  private BindingList<SevicioDerechoVarioSeleccionadoMP> serviciosSeleccionados = new BindingList<SevicioDerechoVarioSeleccionadoMP>();
  private BindingSource bsServiciosSeleccionados = new BindingSource();
  private Decimal UTActual = 1M;
  private ExpDerechoVarioMP _experto;
  private DateTime hoy;
  private bool _openingModal = false;
  private IContainer components = (IContainer) null;
  private MetroPanel panSuperior;
  private MetroLabel metroLabel1;
  private MetroPanel panCentral;
  private GridControl gridControlServicios;
  private GridView gridViewServicios;
  private GridColumn colCant;
  private GridColumn colCodigo;
  private GridColumn colDetalle;
  private GridColumn colImporte;
  private GridColumn colSubTotal;
  private MetroCheckBox chkDescuento;
  private MetroPanel panInferior;
  private MetroPanel panDescuento;
  private MetroDecimalTextBox mdbTotalConDesc;
  private MetroDecimalTextBox mdbDescuento;
  private MetroRadioButton rbtnPorcentaje;
  private MetroRadioButton rbtnImporte;
  private MetroLabel metroLabel2;
  private MetroDateTextBox dtbFechBole;
  private MetroTextBox txtExpeBole;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private GridColumn colDetaTiva;
  private RepositoryItemSpinEdit spinEditCant;
  private RepositoryItemSpinEdit spinEditImporte;

  public GridDerechosMaipu(ExpDerechoVarioMP experto, bool modificarFecha)
  {
    this.InitializeComponent();
    this.bsServiciosSeleccionados.DataSource = (object) this.serviciosSeleccionados;
    this.gridControlServicios.DataSource = (object) this.bsServiciosSeleccionados;
    this.ReestablecerServiciosSeleccionados();
    this.Disposed += new EventHandler(this.GridDerechosMaipu_Disposed);
    this._experto = experto;
    this._experto.ObtenerServiciosDisponibles(this.serviciosDisponibles);
    this.UTActual = this._experto.ObtenerValorUTActual();
    this.hoy = Misc.Now();
    this.hoy = this._experto.CalcularFechaVencimiento(this.hoy, (short) 3);
    this.dtbFechBole.Date = this.hoy;
    this.chkDescuento.Checked = false;
    this.dtbFechBole.Enabled = modificarFecha;
  }

  public void CargarDerechosVariosSeleccionados(IEntidadDerechoVario entidad)
  {
    if (!(entidad is DerechoVarioMP derechoVarioMp))
      return;
    derechoVarioMp.FechBole = this.dtbFechBole.Date;
    derechoVarioMp.ExpeBole = this.txtExpeBole.Text.Trim();
    derechoVarioMp.SeviciosSeleccionados = this.serviciosSeleccionados.ToList<SevicioDerechoVarioSeleccionadoMP>();
  }

  public override void Limpiar()
  {
    this.dtbFechBole.Date = this.hoy;
    this.txtExpeBole.Text = string.Empty;
    this.chkDescuento.Checked = false;
    this.ReestablecerServiciosSeleccionados();
  }

  public override List<string> ValidarDatos()
  {
    List<string> stringList = new List<string>();
    if (this.dtbFechBole.Date == DateTime.MinValue)
      stringList.Add("La fecha de boleto es obligatoria.");
    if (this.serviciosSeleccionados.Count == 0)
    {
      stringList.Add("Debe seleccionar al menos un servicio.");
    }
    else
    {
      if (this.serviciosSeleccionados.ToList<SevicioDerechoVarioSeleccionadoMP>().Exists((Predicate<SevicioDerechoVarioSeleccionadoMP>) (s => s.CantDede <= 0M)))
        stringList.Add("La cantidad de un servicio no puede ser cero o negativa.");
      if (this.serviciosSeleccionados.ToList<SevicioDerechoVarioSeleccionadoMP>().Exists((Predicate<SevicioDerechoVarioSeleccionadoMP>) (s => s.CodiSede <= 0L)))
        stringList.Add("El código de un servicio es incorrecto.");
    }
    return stringList;
  }

  private void ReestablecerServiciosSeleccionados()
  {
    this.serviciosSeleccionados.Clear();
    this.serviciosSeleccionados.Add(new SevicioDerechoVarioSeleccionadoMP()
    {
      CantDede = 1M
    });
  }

  private void gridViewServicios_CellValueChanged(object sender, CellValueChangedEventArgs e)
  {
    if (!(((BaseView) this.gridViewServicios).GetRow(e.RowHandle) is SevicioDerechoVarioSeleccionadoMP row))
      return;
    string str = e.Column?.FieldName ?? string.Empty;
    if (str.Equals("CodiSede", StringComparison.OrdinalIgnoreCase))
    {
      string codigo = e.Value?.ToString();
      if (!string.IsNullOrWhiteSpace(codigo))
      {
        this.BuscarYAsignarPorCodigo(codigo, row);
        ((ColumnView) this.gridViewServicios).RefreshRow(e.RowHandle);
      }
    }
    else if (str.Equals("CantDede", StringComparison.OrdinalIgnoreCase) || str.Equals("PrunDede", StringComparison.OrdinalIgnoreCase))
    {
      this.RecalcularSubTotal(row);
      ((ColumnView) this.gridViewServicios).RefreshRow(e.RowHandle);
    }
    this.gridViewServicios.UpdateSummary();
  }

  private void RecalcularSubTotal(SevicioDerechoVarioSeleccionadoMP seleccionado)
  {
    if (seleccionado == null)
      return;
    Decimal num = 0M;
    switch (seleccionado.CodiTiva)
    {
      case 1:
        num = seleccionado.CantDede * seleccionado.PrunDede;
        break;
      case 2:
        num = seleccionado.CantDede * seleccionado.PrunDede * this.UTActual;
        break;
      case 3:
        num = seleccionado.CantDede / 100M * seleccionado.PrunDede;
        break;
    }
    seleccionado.SubtDede = num;
  }

  private void BuscarYAsignarPorCodigo(string codigo, SevicioDerechoVarioSeleccionadoMP destino)
  {
    if (string.IsNullOrWhiteSpace(codigo) || destino == null)
      return;
    codigo = codigo.Trim();
    long codiSedeBuscado;
    if (!long.TryParse(codigo, out codiSedeBuscado))
    {
      ReestablecerDestino();
    }
    else
    {
      ServicioDerechoVarioMP encontrado = this.serviciosDisponibles.FirstOrDefault<ServicioDerechoVarioMP>((Func<ServicioDerechoVarioMP, bool>) (s => s.CodiSede == codiSedeBuscado));
      if (encontrado == null)
        ReestablecerDestino();
      else if (this.serviciosSeleccionados.Any<SevicioDerechoVarioSeleccionadoMP>((Func<SevicioDerechoVarioSeleccionadoMP, bool>) (s => s != destino && (int) s.PeriOrde == (int) encontrado.PeriOrde && s.CodiSede == encontrado.CodiSede)))
      {
        ReestablecerDestino();
      }
      else
      {
        destino.PeriOrde = encontrado.PeriOrde;
        destino.CodiSede = encontrado.CodiSede;
        destino.DetaSede = encontrado.DetaSede;
        destino.CodiDvpa = encontrado.CodiDvpa;
        destino.DetaDvpa = encontrado.DetaDvpa;
        destino.PeriInfo = encontrado.PeriInfo;
        destino.CodiConc = encontrado.CodiConc;
        destino.CodiTiva = encontrado.CodiTiva;
        destino.DetaTiva = encontrado.DetaTiva;
        destino.PrunDede = encontrado.ImpoSede;
        destino.VariSede = encontrado.VariSede;
        this.RecalcularSubTotal(destino);
      }
    }

    void ReestablecerDestino()
    {
      destino.PeriOrde = (short) 0;
      destino.CodiSede = 0L;
      destino.DetaSede = string.Empty;
      destino.CodiDvpa = 0L;
      destino.DetaDvpa = string.Empty;
      destino.PeriInfo = (short) 0;
      destino.CodiConc = string.Empty;
      destino.CantDede = 1M;
      destino.CodiTiva = (short) 1;
      destino.DetaTiva = string.Empty;
      destino.PrunDede = 0M;
      destino.DescDede = 0M;
      destino.SubtDede = 0M;
      destino.TotaDede = 0M;
      destino.VariSede = false;
      this.RecalcularSubTotal(destino);
    }
  }

  private void gridViewServicios_KeyDown(object sender, KeyEventArgs e)
  {
    if (((ColumnView) this.gridViewServicios)?.FocusedColumn == null)
      return;
    if (e.KeyCode == Keys.Insert)
    {
      e.SuppressKeyPress = true;
      this.serviciosSeleccionados.Add(new SevicioDerechoVarioSeleccionadoMP()
      {
        CantDede = 1M
      });
      ((ColumnView) this.gridViewServicios).FocusedRowHandle = ((ColumnView) this.gridViewServicios).GetRowHandle(this.serviciosSeleccionados.Count - 1);
      ((ColumnView) this.gridViewServicios).FocusedColumn = ((ColumnView) this.gridViewServicios).Columns[0];
      ((BaseView) this.gridViewServicios).ShowEditor();
    }
    else if (e.KeyCode == Keys.Tab && (e.Modifiers & Keys.Shift) == Keys.None)
    {
      this.FindForm()?.SelectNextControl((Control) this, true, true, true, true);
      e.SuppressKeyPress = true;
    }
    else if (e.KeyCode == Keys.Delete)
    {
      e.SuppressKeyPress = true;
      if (!(((ColumnView) this.gridViewServicios).GetFocusedRow() is SevicioDerechoVarioSeleccionadoMP focusedRow))
        return;
      this.QuitarServicioSeleccionado(focusedRow);
    }
    else
    {
      if (((BaseView) this.gridViewServicios).ActiveEditor != null)
        return;
      bool flag1 = e.KeyCode == Keys.Add || e.KeyCode == Keys.Oemplus;
      bool flag2 = e.KeyCode == Keys.Space;
      if ((string.Equals(((ColumnView) this.gridViewServicios).FocusedColumn?.FieldName, "CodiSede", StringComparison.OrdinalIgnoreCase) || ((ColumnView) this.gridViewServicios).FocusedColumn == this.colCodigo) && flag2 | flag1)
      {
        e.SuppressKeyPress = true;
        this.AbrirBuscadorParaFilaActual();
      }
    }
  }

  private void gridViewServicios_ShownEditor(object sender, EventArgs e)
  {
    BaseEdit activeEditor = ((BaseView) this.gridViewServicios).ActiveEditor;
    if (activeEditor == null)
      return;
    Control control = (Control) (activeEditor ?? activeEditor ?? (BaseEdit) null);
    if (control == null)
    {
      try
      {
        control = activeEditor.GetType().GetProperty("Control")?.GetValue((object) activeEditor) as Control;
      }
      catch
      {
        control = (Control) null;
      }
    }
    if (control == null)
      return;
    control.KeyDown -= new KeyEventHandler(this.ActiveEditor_KeyDown);
    control.KeyDown += new KeyEventHandler(this.ActiveEditor_KeyDown);
  }

  private void ActiveEditor_KeyDown(object sender, KeyEventArgs e)
  {
    bool flag1 = e.KeyCode == Keys.Add || e.KeyCode == Keys.Oemplus;
    bool flag2 = e.KeyCode == Keys.Space;
    if (!string.Equals(((ColumnView) this.gridViewServicios).FocusedColumn?.FieldName, "CodiSede", StringComparison.OrdinalIgnoreCase) && ((ColumnView) this.gridViewServicios).FocusedColumn != this.colCodigo || !(flag2 | flag1))
      return;
    e.SuppressKeyPress = true;
    e.Handled = true;
    this.AbrirBuscadorParaFilaActual();
    if (this._openingModal)
    {
      e.SuppressKeyPress = true;
      e.Handled = true;
    }
    else
    {
      e.SuppressKeyPress = true;
      e.Handled = true;
      try
      {
        this._openingModal = true;
        this.AbrirBuscadorParaFilaActual();
      }
      finally
      {
        this._openingModal = false;
      }
    }
  }

  private void AbrirBuscadorParaFilaActual()
  {
    if (this._openingModal)
      return;
    if (!(((ColumnView) this.gridViewServicios).GetFocusedRow() is SevicioDerechoVarioSeleccionadoMP focusedRow))
      return;
    try
    {
      this._openingModal = true;
      ServicioDerechoVarioMP servicioDerechoVarioMp = this.AbrirBuscadorModal();
      if (servicioDerechoVarioMp != null)
      {
        this.BuscarYAsignarPorCodigo(servicioDerechoVarioMp.CodiSede.ToString(), focusedRow);
        ((ColumnView) this.gridViewServicios).RefreshRow(((ColumnView) this.gridViewServicios).FocusedRowHandle);
      }
      else
      {
        focusedRow.PeriOrde = (short) 0;
        focusedRow.CodiSede = 0L;
        focusedRow.DetaSede = string.Empty;
        focusedRow.CodiTiva = (short) 0;
        focusedRow.DetaTiva = string.Empty;
        focusedRow.PeriInfo = (short) 0;
        focusedRow.CodiConc = string.Empty;
        focusedRow.VariSede = false;
        focusedRow.PrunDede = 0M;
        focusedRow.SubtDede = 0M;
        focusedRow.DescDede = 0M;
        focusedRow.TotaDede = 0M;
        ((ColumnView) this.gridViewServicios).RefreshRow(((ColumnView) this.gridViewServicios).FocusedRowHandle);
      }
    }
    finally
    {
      this._openingModal = false;
    }
  }

  protected ServicioDerechoVarioMP AbrirBuscadorModal()
  {
    HashSet<(short, long)> seleccionadosKeys = new HashSet<(short, long)>(this.serviciosSeleccionados.Select<SevicioDerechoVarioSeleccionadoMP, (short, long)>((Func<SevicioDerechoVarioSeleccionadoMP, (short, long)>) (s => (s.PeriOrde, s.CodiSede))));
    using (mdlServicios mdlServicios = new mdlServicios(this.serviciosDisponibles.Where<ServicioDerechoVarioMP>((Func<ServicioDerechoVarioMP, bool>) (d => !seleccionadosKeys.Contains((d.PeriOrde, d.CodiSede)))).ToList<ServicioDerechoVarioMP>()))
      return mdlServicios.ShowDialog((IWin32Window) this.FindForm()) == DialogResult.OK ? mdlServicios.ServicioSeleccionado : (ServicioDerechoVarioMP) null;
  }

  public void QuitarServicioSeleccionado(SevicioDerechoVarioSeleccionadoMP servicio)
  {
    if (servicio == null)
      return;
    this.serviciosSeleccionados.Remove(servicio);
  }

  private void GridDerechosMaipu_Disposed(object sender, EventArgs e)
  {
    this.bsServiciosSeleccionados?.Dispose();
    this.bsServiciosSeleccionados = (BindingSource) null;
  }

  private void gridViewServicios_RowCellStyle(object sender, RowCellStyleEventArgs e)
  {
    if (!string.Equals(((CustomRowCellEventArgs) e).Column.FieldName, "PrunDede", StringComparison.OrdinalIgnoreCase) || !(((BaseView) this.gridViewServicios).GetRow(((CustomRowCellEventArgs) e).RowHandle) is SevicioDerechoVarioSeleccionadoMP row) || row.VariSede)
      return;
    e.Appearance.ForeColor = Color.Gray;
    e.Appearance.BackColor = Color.FromArgb(250, 250, 250);
  }

  private void gridViewServicios_ShowingEditor(object sender, CancelEventArgs e)
  {
    GridColumn focusedColumn = ((ColumnView) this.gridViewServicios).FocusedColumn;
    if (focusedColumn == null || !string.Equals(focusedColumn.FieldName, "PrunDede", StringComparison.OrdinalIgnoreCase) || !(((ColumnView) this.gridViewServicios).GetFocusedRow() is SevicioDerechoVarioSeleccionadoMP focusedRow) || focusedRow.VariSede)
      return;
    e.Cancel = true;
  }

  private void chkDescuento_CheckedChanged(object sender, EventArgs e)
  {
    this.panDescuento.Visible = this.chkDescuento.Checked;
    Point location = this.chkDescuento.Location;
    location.X = this.chkDescuento.Checked ? location.X - 320 : location.X + 320;
    this.chkDescuento.Location = location;
    this.ReestablecerPanelDescuento();
  }

  private void ReestablecerPanelDescuento()
  {
    this.rbtnImporte.Checked = true;
    this.rbtnPorcentaje.Checked = false;
    this.mdbDescuento.Text = this.mdbTotalConDesc.Text = string.Empty;
  }

  private void gridViewServicios_ValidatingEditor(
    object sender,
    BaseContainerValidateEditorEventArgs e)
  {
    GridColumn focusedColumn = ((ColumnView) this.gridViewServicios).FocusedColumn;
    if (focusedColumn == null)
      return;
    bool flag1 = string.Equals(focusedColumn.FieldName, "CantDede", StringComparison.OrdinalIgnoreCase);
    bool flag2 = string.Equals(focusedColumn.FieldName, "PrunDede", StringComparison.OrdinalIgnoreCase);
    if (!flag1 && !flag2)
      return;
    string s = e.Value?.ToString() ?? string.Empty;
    if (string.IsNullOrWhiteSpace(s))
      return;
    if (s.Contains("."))
      s = s.Replace(".", ",");
    int num = s.IndexOf(',');
    if (num >= 0 && s.IndexOf(',', num + 1) >= 0)
    {
      StringBuilder stringBuilder = new StringBuilder(s.Length);
      bool flag3 = false;
      foreach (char ch in s)
      {
        if (ch == ',')
        {
          if (!flag3)
          {
            stringBuilder.Append(ch);
            flag3 = true;
          }
        }
        else
          stringBuilder.Append(ch);
      }
      s = stringBuilder.ToString();
    }
    e.Value = (object) s;
    if (Decimal.TryParse(s, out Decimal _))
      return;
    e.Valid = false;
    e.ErrorText = "Ingrese un número válido.";
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.panSuperior = new MetroPanel();
    this.txtExpeBole = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.dtbFechBole = new MetroDateTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.panCentral = new MetroPanel();
    this.gridControlServicios = new GridControl();
    this.gridViewServicios = new GridView();
    this.colCant = new GridColumn();
    this.spinEditCant = new RepositoryItemSpinEdit();
    this.colCodigo = new GridColumn();
    this.colDetalle = new GridColumn();
    this.colDetaTiva = new GridColumn();
    this.colImporte = new GridColumn();
    this.spinEditImporte = new RepositoryItemSpinEdit();
    this.colSubTotal = new GridColumn();
    this.chkDescuento = new MetroCheckBox();
    this.panInferior = new MetroPanel();
    this.panDescuento = new MetroPanel();
    this.rbtnPorcentaje = new MetroRadioButton();
    this.rbtnImporte = new MetroRadioButton();
    this.mdbTotalConDesc = new MetroDecimalTextBox();
    this.mdbDescuento = new MetroDecimalTextBox();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.panSuperior.SuspendLayout();
    this.panCentral.SuspendLayout();
    ((ISupportInitialize) this.gridControlServicios).BeginInit();
    ((ISupportInitialize) this.gridViewServicios).BeginInit();
    ((ISupportInitialize) this.spinEditCant).BeginInit();
    ((ISupportInitialize) this.spinEditImporte).BeginInit();
    this.panInferior.SuspendLayout();
    this.panDescuento.SuspendLayout();
    this.SuspendLayout();
    this.panSuperior.Controls.Add((Control) this.txtExpeBole);
    this.panSuperior.Controls.Add((Control) this.metroLabel3);
    this.panSuperior.Controls.Add((Control) this.dtbFechBole);
    this.panSuperior.Controls.Add((Control) this.metroLabel2);
    this.panSuperior.Controls.Add((Control) this.metroLabel1);
    this.panSuperior.Dock = DockStyle.Top;
    this.panSuperior.Location = new Point(0, 0);
    this.panSuperior.Name = "panSuperior";
    this.panSuperior.Size = new Size(1360, 73);
    this.panSuperior.TabIndex = 0;
    this.txtExpeBole.CausesValidation = false;
    this.txtExpeBole.Location = new Point(346, 36);
    this.txtExpeBole.MaxLength = 50;
    this.txtExpeBole.Name = "txtExpeBole";
    this.txtExpeBole.Size = new Size(174, 25);
    this.txtExpeBole.TabIndex = 201;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.FontSize = 16f;
    this.metroLabel3.Location = new Point(250, 38);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(84, 21);
    this.metroLabel3.TabIndex = 5;
    this.metroLabel3.Text = "Expediente";
    this.dtbFechBole.Location = new Point(114, 36);
    this.dtbFechBole.Name = "dtbFechBole";
    this.dtbFechBole.Size = new Size(102, 25);
    this.dtbFechBole.TabIndex = 200;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.FontSize = 16f;
    this.metroLabel2.Location = new Point(6, 38);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(96 /*0x60*/, 21);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Fecha Boleto";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.BackColor = SystemColors.ScrollBar;
    this.metroLabel1.Dock = DockStyle.Top;
    this.metroLabel1.FontSize = 16f;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(0, 0);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(1360, 28);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Servicios de Derechos Varios";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleCenter;
    this.panCentral.Controls.Add((Control) this.gridControlServicios);
    this.panCentral.Dock = DockStyle.Fill;
    this.panCentral.Location = new Point(0, 73);
    this.panCentral.Name = "panCentral";
    this.panCentral.Size = new Size(1360, 184);
    this.panCentral.TabIndex = 2;
    ((Control) this.gridControlServicios).Dock = DockStyle.Fill;
    ((Control) this.gridControlServicios).Location = new Point(0, 0);
    this.gridControlServicios.MainView = (BaseView) this.gridViewServicios;
    ((Control) this.gridControlServicios).Name = "gridControlServicios";
    ((EditorContainer) this.gridControlServicios).RepositoryItems.AddRange(new RepositoryItem[2]
    {
      (RepositoryItem) this.spinEditCant,
      (RepositoryItem) this.spinEditImporte
    });
    ((Control) this.gridControlServicios).Size = new Size(1360, 184);
    ((Control) this.gridControlServicios).TabIndex = 202;
    this.gridControlServicios.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewServicios
    });
    this.gridViewServicios.Appearance.FooterPanel.Font = new Font("Tahoma", 12f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    this.gridViewServicios.Appearance.FooterPanel.Options.UseFont = true;
    this.gridViewServicios.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewServicios.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewServicios).Columns.AddRange(new GridColumn[6]
    {
      this.colCant,
      this.colCodigo,
      this.colDetalle,
      this.colDetaTiva,
      this.colImporte,
      this.colSubTotal
    });
    ((BaseView) this.gridViewServicios).GridControl = this.gridControlServicios;
    ((BaseView) this.gridViewServicios).Name = "gridViewServicios";
    ((ColumnViewOptionsBehavior) this.gridViewServicios.OptionsBehavior).FocusLeaveOnTab = true;
    this.gridViewServicios.OptionsView.ShowFooter = true;
    this.gridViewServicios.OptionsView.ShowGroupPanel = false;
    this.gridViewServicios.OptionsView.ShowIndicator = false;
    this.gridViewServicios.RowCellStyle += new RowCellStyleEventHandler(this.gridViewServicios_RowCellStyle);
    ((ColumnView) this.gridViewServicios).ShowingEditor += new CancelEventHandler(this.gridViewServicios_ShowingEditor);
    ((ColumnView) this.gridViewServicios).ShownEditor += new EventHandler(this.gridViewServicios_ShownEditor);
    ((ColumnView) this.gridViewServicios).CellValueChanged += new CellValueChangedEventHandler(this.gridViewServicios_CellValueChanged);
    ((BaseView) this.gridViewServicios).KeyDown += new KeyEventHandler(this.gridViewServicios_KeyDown);
    ((BaseView) this.gridViewServicios).ValidatingEditor += new BaseContainerValidateEditorEventHandler(this.gridViewServicios_ValidatingEditor);
    this.colCant.Caption = "Cantidad";
    this.colCant.ColumnEdit = (RepositoryItem) this.spinEditCant;
    this.colCant.FieldName = "CantDede";
    this.colCant.MaxWidth = 100;
    this.colCant.Name = "colCant";
    this.colCant.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCant.OptionsColumn.AllowIncrementalSearch = false;
    this.colCant.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCant.OptionsColumn.AllowMove = false;
    this.colCant.OptionsColumn.AllowShowHide = false;
    this.colCant.OptionsColumn.AllowSize = false;
    this.colCant.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colCant.OptionsColumn.TabStop = false;
    this.colCant.Visible = true;
    this.colCant.VisibleIndex = 0;
    ((RepositoryItem) this.spinEditCant).AutoHeight = false;
    ((RepositoryItemButtonEdit) this.spinEditCant).Buttons.AddRange(new EditorButton[1]
    {
      new EditorButton((ButtonPredefines) -5)
    });
    this.spinEditCant.Increment = new Decimal(new int[4]
    {
      1,
      0,
      0,
      131072 /*0x020000*/
    });
    ((MaskSettings<MaskType>) ((RepositoryItemTextEdit) this.spinEditCant).MaskSettings).Set("mask", (object) "n2");
    ((RepositoryItemTextEdit) this.spinEditCant).MaxLength = 10;
    this.spinEditCant.MaxValue = new Decimal(new int[4]
    {
      999999999,
      0,
      0,
      131072 /*0x020000*/
    });
    this.spinEditCant.MinValue = new Decimal(new int[4]
    {
      1,
      0,
      0,
      131072 /*0x020000*/
    });
    ((RepositoryItem) this.spinEditCant).Name = "spinEditCant";
    ((RepositoryItemTextEdit) this.spinEditCant).UseMaskAsDisplayFormat = true;
    ((AppearanceOptions) this.colCodigo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCodigo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCodigo.Caption = "Código";
    this.colCodigo.FieldName = "CodiSede";
    this.colCodigo.MaxWidth = 200;
    this.colCodigo.Name = "colCodigo";
    this.colCodigo.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colCodigo.OptionsColumn.AllowIncrementalSearch = false;
    this.colCodigo.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colCodigo.OptionsColumn.AllowMove = false;
    this.colCodigo.OptionsColumn.AllowShowHide = false;
    this.colCodigo.OptionsColumn.AllowSize = false;
    this.colCodigo.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colCodigo.OptionsColumn.TabStop = false;
    this.colCodigo.Visible = true;
    this.colCodigo.VisibleIndex = 1;
    this.colDetalle.Caption = "Detalle del Servicio";
    this.colDetalle.FieldName = "DetaSede";
    this.colDetalle.Name = "colDetalle";
    this.colDetalle.OptionsColumn.AllowEdit = false;
    this.colDetalle.OptionsColumn.AllowFocus = false;
    this.colDetalle.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowIncrementalSearch = false;
    this.colDetalle.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.AllowMove = false;
    this.colDetalle.OptionsColumn.AllowShowHide = false;
    this.colDetalle.OptionsColumn.AllowSize = false;
    this.colDetalle.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colDetalle.OptionsColumn.TabStop = false;
    this.colDetalle.Visible = true;
    this.colDetalle.VisibleIndex = 2;
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
    this.colDetaTiva.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colDetaTiva.OptionsColumn.TabStop = false;
    this.colDetaTiva.Width = 50;
    ((AppearanceOptions) this.colImporte.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImporte.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImporte.Caption = "Importe";
    this.colImporte.ColumnEdit = (RepositoryItem) this.spinEditImporte;
    this.colImporte.FieldName = "PrunDede";
    this.colImporte.MaxWidth = 200;
    this.colImporte.Name = "colImporte";
    this.colImporte.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowIncrementalSearch = false;
    this.colImporte.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.AllowMove = false;
    this.colImporte.OptionsColumn.AllowShowHide = false;
    this.colImporte.OptionsColumn.AllowSize = false;
    this.colImporte.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colImporte.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colImporte.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "PrunDede", "TOTAL:")
    });
    this.colImporte.Visible = true;
    this.colImporte.VisibleIndex = 3;
    ((RepositoryItem) this.spinEditImporte).AutoHeight = false;
    ((RepositoryItemButtonEdit) this.spinEditImporte).Buttons.AddRange(new EditorButton[1]
    {
      new EditorButton((ButtonPredefines) -5)
    });
    this.spinEditImporte.Increment = new Decimal(new int[4]
    {
      1,
      0,
      0,
      131072 /*0x020000*/
    });
    ((MaskSettings<MaskType>) ((RepositoryItemTextEdit) this.spinEditImporte).MaskSettings).Set("mask", (object) "n2");
    ((RepositoryItemTextEdit) this.spinEditImporte).MaxLength = 11;
    this.spinEditImporte.MaxValue = new Decimal(new int[4]
    {
      1410065407,
      2,
      0,
      131072 /*0x020000*/
    });
    ((RepositoryItem) this.spinEditImporte).Name = "spinEditImporte";
    ((RepositoryItemTextEdit) this.spinEditImporte).UseMaskAsDisplayFormat = true;
    ((AppearanceObject) this.colSubTotal.AppearanceCell).Font = new Font("Tahoma", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((AppearanceOptions) this.colSubTotal.AppearanceCell.Options).UseFont = true;
    ((AppearanceOptions) this.colSubTotal.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colSubTotal.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colSubTotal.AppearanceHeader.Font = new Font("Tahoma", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    this.colSubTotal.AppearanceHeader.Options.UseFont = true;
    this.colSubTotal.Caption = "Sub Total";
    this.colSubTotal.DisplayFormat.FormatString = "{0:C2}";
    this.colSubTotal.DisplayFormat.FormatType = (FormatType) 3;
    this.colSubTotal.FieldName = "SubtDede";
    this.colSubTotal.MaxWidth = 200;
    this.colSubTotal.Name = "colSubTotal";
    this.colSubTotal.OptionsColumn.AllowEdit = false;
    this.colSubTotal.OptionsColumn.AllowFocus = false;
    this.colSubTotal.OptionsColumn.AllowGroup = (DefaultBoolean) 1;
    this.colSubTotal.OptionsColumn.AllowIncrementalSearch = false;
    this.colSubTotal.OptionsColumn.AllowMerge = (DefaultBoolean) 1;
    this.colSubTotal.OptionsColumn.AllowMove = false;
    this.colSubTotal.OptionsColumn.AllowShowHide = false;
    this.colSubTotal.OptionsColumn.AllowSize = false;
    this.colSubTotal.OptionsColumn.AllowSort = (DefaultBoolean) 1;
    this.colSubTotal.OptionsColumn.TabStop = false;
    ((GridSummaryItemCollection) this.colSubTotal.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "SubtDede", "{0:C2}")
    });
    this.colSubTotal.Visible = true;
    this.colSubTotal.VisibleIndex = 4;
    this.chkDescuento.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.chkDescuento.AutoSize = false;
    this.chkDescuento.Checked = true;
    this.chkDescuento.CheckState = CheckState.Checked;
    this.chkDescuento.FontSize = 16f;
    this.chkDescuento.Location = new Point(607, 4);
    this.chkDescuento.Name = "chkDescuento";
    this.chkDescuento.Size = new Size(147, 21);
    this.chkDescuento.TabIndex = 203;
    this.chkDescuento.Text = "Aplicar Descuento";
    this.chkDescuento.Visible = false;
    this.chkDescuento.CheckedChanged += new EventHandler(this.chkDescuento_CheckedChanged);
    this.panInferior.Controls.Add((Control) this.panDescuento);
    this.panInferior.Controls.Add((Control) this.chkDescuento);
    this.panInferior.Dock = DockStyle.Bottom;
    this.panInferior.Location = new Point(0, 257);
    this.panInferior.Name = "panInferior";
    this.panInferior.Size = new Size(1360, 53);
    this.panInferior.TabIndex = 203;
    this.panDescuento.Controls.Add((Control) this.rbtnPorcentaje);
    this.panDescuento.Controls.Add((Control) this.rbtnImporte);
    this.panDescuento.Controls.Add((Control) this.mdbTotalConDesc);
    this.panDescuento.Controls.Add((Control) this.mdbDescuento);
    this.panDescuento.Controls.Add((Control) this.metroLabel5);
    this.panDescuento.Controls.Add((Control) this.metroLabel4);
    this.panDescuento.Dock = DockStyle.Right;
    this.panDescuento.Location = new Point(759, 0);
    this.panDescuento.Name = "panDescuento";
    this.panDescuento.Size = new Size(601, 53);
    this.panDescuento.TabIndex = 204;
    this.rbtnPorcentaje.AutoSize = false;
    this.rbtnPorcentaje.Location = new Point(206, 3);
    this.rbtnPorcentaje.Name = "rbtnPorcentaje";
    this.rbtnPorcentaje.Size = new Size(94, 15);
    this.rbtnPorcentaje.TabIndex = 205;
    this.rbtnPorcentaje.Text = "PORCENTAJE";
    this.rbtnImporte.AutoSize = false;
    this.rbtnImporte.Checked = true;
    this.rbtnImporte.Location = new Point(122, 3);
    this.rbtnImporte.Name = "rbtnImporte";
    this.rbtnImporte.Size = new Size(72, 15);
    this.rbtnImporte.TabIndex = 204;
    this.rbtnImporte.TabStop = true;
    this.rbtnImporte.Text = "IMPORTE";
    this.mdbTotalConDesc.FontSize = 16f;
    this.mdbTotalConDesc.Location = new Point(449, 22);
    this.mdbTotalConDesc.MaxLength = 10;
    this.mdbTotalConDesc.Name = "mdbTotalConDesc";
    this.mdbTotalConDesc.ReadOnly = true;
    this.mdbTotalConDesc.Size = new Size(147, 25);
    this.mdbTotalConDesc.TabIndex = 207;
    this.mdbTotalConDesc.TabStop = false;
    this.mdbTotalConDesc.TextAlign = HorizontalAlignment.Right;
    this.mdbDescuento.Location = new Point(120, 22);
    this.mdbDescuento.MaxLength = 10;
    this.mdbDescuento.Name = "mdbDescuento";
    this.mdbDescuento.Size = new Size(147, 25);
    this.mdbDescuento.TabIndex = 206;
    this.mdbDescuento.TextAlign = HorizontalAlignment.Right;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(279, 28);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(158, 19);
    this.metroLabel5.TabIndex = 8;
    this.metroLabel5.Text = "TOTAL CON DESCUENTO";
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(24, 28);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(84, 19);
    this.metroLabel4.TabIndex = 7;
    this.metroLabel4.Text = "DESCUENTO";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.panCentral);
    this.Controls.Add((Control) this.panSuperior);
    this.Controls.Add((Control) this.panInferior);
    this.Name = nameof (GridDerechosMaipu);
    this.Size = new Size(1360, 310);
    this.panSuperior.ResumeLayout(false);
    this.panCentral.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlServicios).EndInit();
    ((ISupportInitialize) this.gridViewServicios).EndInit();
    ((ISupportInitialize) this.spinEditCant).EndInit();
    ((ISupportInitialize) this.spinEditImporte).EndInit();
    this.panInferior.ResumeLayout(false);
    this.panDescuento.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
