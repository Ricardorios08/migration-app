// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.GridAforos.Malargue.gridAforoMG
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
using InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.AforosDeudoresVarios;
using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.Herencia;
using InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.Modals.Malargue;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.AforosDeudoresVarios.GridAforos.Malargue;

public class gridAforoMG : BuscadorBase, IGridAforos
{
  private ExpAforoDVMG _experto;
  private List<ServicioAforoDVMG> serviciosDisponibles;
  private BindingList<ServicioAforoDVMGSeleccionado> serviciosSeleccionados;
  private BindingSource bsServiciosSeleccionados;
  private DateTime hoy;
  private Decimal UVAActual = 0M;
  private bool _openingModal = false;
  private IContainer components = (IContainer) null;
  private MetroPanel panSuperior;
  private MetroTextBox txtExpediente;
  private MetroLabel metroLabel3;
  private MetroDateTextBox dtbFechBole;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroIntTextBox mibPeriodo;
  private MetroIntTextBox mibBimestre;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroPanel panCentral;
  private GridControl gridControlServicios;
  private GridView gridViewServicios;
  private GridColumn colCant;
  private RepositoryItemSpinEdit spinEditCant;
  private GridColumn colCodigo;
  private GridColumn colDetalle;
  private GridColumn colImporte;
  private RepositoryItemSpinEdit spinEditImporte;
  private GridColumn colSubTotal;
  private MetroLabel lblValorUVA;

  public gridAforoMG(ExpAforoDVMG experto)
  {
    this.InitializeComponent();
    this.serviciosDisponibles = new List<ServicioAforoDVMG>();
    this.serviciosSeleccionados = new BindingList<ServicioAforoDVMGSeleccionado>();
    this.bsServiciosSeleccionados = new BindingSource();
    this.bsServiciosSeleccionados.DataSource = (object) this.serviciosSeleccionados;
    this.gridControlServicios.DataSource = (object) this.bsServiciosSeleccionados;
    this.ReestablecerServiciosSeleccionados();
    this.Disposed += new EventHandler(this.GridAforoMG_Disposed);
    this._experto = experto;
    this._experto.ObtenerServiciosDisponibles(this.serviciosDisponibles);
    this.UVAActual = this._experto.ObtenerValorUVAActual();
    this.lblValorUVA.UseCustomForeColor = true;
    this.lblValorUVA.ForeColor = Color.Red;
    this.lblValorUVA.Text = $"Valor UVA Actual: {this.UVAActual:C4}";
    this.hoy = Misc.Now();
    this.Limpiar();
  }

  public override void Buscar(CtaCte cuenta)
  {
  }

  public override void Limpiar()
  {
    this.EjecutarEnUI((Action) (() =>
    {
      this.dtbFechBole.Date = this.hoy;
      this.mibPeriodo.IntText = this.hoy.Year;
      this.mibBimestre.IntText = this.hoy.Month;
      this.txtExpediente.Text = string.Empty;
      this.ReestablecerServiciosSeleccionados();
    }));
  }

  public override List<string> ValidarDatos()
  {
    List<string> stringList = new List<string>();
    if (this.dtbFechBole.Date == DateTime.MinValue)
      stringList.Add("La fecha de vencimiento es obligatoria.");
    else if (this.dtbFechBole.Date < new DateTime(2000, 1, 1))
      stringList.Add("La fecha de vencimiento no puede ser anterior al 1 de enero \nde 2000.");
    if (this.mibPeriodo.IntText < 2000)
      stringList.Add("El período es incorrecto.");
    if (this.mibBimestre.IntText < 1 || this.mibBimestre.IntText > 12)
      stringList.Add("El bimestre es incorrecto.");
    if (this.serviciosSeleccionados.Count == 0)
      stringList.Add("Debe seleccionar un servicio.");
    else if (this.serviciosSeleccionados.Count > 1)
    {
      stringList.Add("Solo se puede seleccionar uno de los servicios.");
    }
    else
    {
      if (this.serviciosSeleccionados.ToList<ServicioAforoDVMGSeleccionado>().Exists((Predicate<ServicioAforoDVMGSeleccionado>) (s => s.CantDede <= 0M)))
        stringList.Add("La cantidad de un servicio no puede ser cero \no negativa.");
      if (this.serviciosSeleccionados.ToList<ServicioAforoDVMGSeleccionado>().Exists((Predicate<ServicioAforoDVMGSeleccionado>) (s => s.CodiSede <= 0L)))
        stringList.Add("El código de un servicio es incorrecto.");
    }
    return stringList;
  }

  public void CargarDatos(IAforoDeudorVario entidad)
  {
    if (!(entidad is AforoDVMG aforoDvmg))
      return;
    aforoDvmg.FechaVencimiento = this.dtbFechBole.Date;
    aforoDvmg.Periodo = this.mibPeriodo.ShortText;
    aforoDvmg.Bimestre = this.mibBimestre.ShortText;
    aforoDvmg.Expte = this.txtExpediente.Text;
    aforoDvmg.ServiciosSeleccionados = this.serviciosSeleccionados.ToList<ServicioAforoDVMGSeleccionado>();
  }

  private void gridViewServicios_RowCellStyle(object sender, RowCellStyleEventArgs e)
  {
    if (!string.Equals(((CustomRowCellEventArgs) e).Column.FieldName, "ImpoSede", StringComparison.OrdinalIgnoreCase) || !(((BaseView) this.gridViewServicios).GetRow(((CustomRowCellEventArgs) e).RowHandle) is ServicioAforoDVMGSeleccionado row) || row.VariSede)
      return;
    e.Appearance.ForeColor = Color.Gray;
    e.Appearance.BackColor = Color.FromArgb(250, 250, 250);
  }

  private void gridViewServicios_ShowingEditor(object sender, CancelEventArgs e)
  {
    GridColumn focusedColumn = ((ColumnView) this.gridViewServicios).FocusedColumn;
    if (focusedColumn == null || !string.Equals(focusedColumn.FieldName, "ImpoSede", StringComparison.OrdinalIgnoreCase) || !(((ColumnView) this.gridViewServicios).GetFocusedRow() is ServicioAforoDVMGSeleccionado focusedRow) || focusedRow.VariSede)
      return;
    e.Cancel = true;
  }

  private void GridAforoMG_Disposed(object sender, EventArgs e)
  {
    this.bsServiciosSeleccionados?.Dispose();
    this.bsServiciosSeleccionados = (BindingSource) null;
  }

  private void gridViewServicios_ValidatingEditor(
    object sender,
    BaseContainerValidateEditorEventArgs e)
  {
    GridColumn focusedColumn = ((ColumnView) this.gridViewServicios).FocusedColumn;
    if (focusedColumn == null || !string.Equals(focusedColumn.FieldName, "CantDede", StringComparison.OrdinalIgnoreCase))
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
      bool flag = false;
      foreach (char ch in s)
      {
        if (ch == ',')
        {
          if (!flag)
          {
            stringBuilder.Append(ch);
            flag = true;
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

  private void ReestablecerServiciosSeleccionados()
  {
    this.serviciosSeleccionados.Clear();
    this.serviciosSeleccionados.Add(new ServicioAforoDVMGSeleccionado()
    {
      CantDede = 1M
    });
  }

  private void gridViewServicios_CellValueChanged(object sender, CellValueChangedEventArgs e)
  {
    if (!(((BaseView) this.gridViewServicios).GetRow(e.RowHandle) is ServicioAforoDVMGSeleccionado row))
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
    else if (str.Equals("CantDede", StringComparison.OrdinalIgnoreCase))
    {
      this.RecalcularSubTotal(row);
      ((ColumnView) this.gridViewServicios).RefreshRow(e.RowHandle);
    }
    this.gridViewServicios.UpdateSummary();
  }

  private void RecalcularSubTotal(ServicioAforoDVMGSeleccionado seleccionado)
  {
    if (seleccionado == null)
      return;
    seleccionado.SubtDede = seleccionado.CantDede * seleccionado.ImpoSede * this.UVAActual;
  }

  private void BuscarYAsignarPorCodigo(string codigo, ServicioAforoDVMGSeleccionado destino)
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
      ServicioAforoDVMG encontrado = this.serviciosDisponibles.FirstOrDefault<ServicioAforoDVMG>((Func<ServicioAforoDVMG, bool>) (s => s.CodiSede == codiSedeBuscado));
      if (encontrado == null)
        ReestablecerDestino();
      else if (this.serviciosSeleccionados.Any<ServicioAforoDVMGSeleccionado>((Func<ServicioAforoDVMGSeleccionado, bool>) (s => s != destino && (int) s.PeriOrde == (int) encontrado.PeriOrde && s.CodiSede == encontrado.CodiSede)))
      {
        ReestablecerDestino();
      }
      else
      {
        destino.PeriOrde = encontrado.PeriOrde;
        destino.CodiSede = encontrado.CodiSede;
        destino.DetaSede = encontrado.DetaSede;
        destino.PeriInfo = encontrado.PeriInfo;
        destino.CodiConc = encontrado.CodiConc;
        destino.ImpoSede = encontrado.ImpoSede;
        destino.VariSede = encontrado.VariSede;
        this.RecalcularSubTotal(destino);
      }
    }

    void ReestablecerDestino()
    {
      destino.PeriOrde = (short) 0;
      destino.CodiSede = 0L;
      destino.DetaSede = string.Empty;
      destino.PeriInfo = (short) 0;
      destino.CodiConc = string.Empty;
      destino.CantDede = 1M;
      destino.VariSede = false;
      destino.ImpoSede = 0M;
      destino.SubtDede = 0M;
      destino.DescDede = 0M;
      destino.TotaDede = 0M;
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
      this.serviciosSeleccionados.Add(new ServicioAforoDVMGSeleccionado()
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
      if (!(((ColumnView) this.gridViewServicios).GetFocusedRow() is ServicioAforoDVMGSeleccionado focusedRow))
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
    if (!(((ColumnView) this.gridViewServicios).GetFocusedRow() is ServicioAforoDVMGSeleccionado focusedRow))
      return;
    try
    {
      this._openingModal = true;
      ServicioAforoDVMG servicioAforoDvmg = this.AbrirBuscadorModal();
      if (servicioAforoDvmg != null)
      {
        this.BuscarYAsignarPorCodigo(servicioAforoDvmg.CodiSede.ToString(), focusedRow);
        ((ColumnView) this.gridViewServicios).RefreshRow(((ColumnView) this.gridViewServicios).FocusedRowHandle);
      }
      else
      {
        focusedRow.PeriOrde = (short) 0;
        focusedRow.CodiSede = 0L;
        focusedRow.DetaSede = string.Empty;
        focusedRow.PeriInfo = (short) 0;
        focusedRow.CodiConc = string.Empty;
        focusedRow.VariSede = false;
        focusedRow.ImpoSede = 0M;
        focusedRow.SubtDede = 0M;
        focusedRow.DescDede = 0M;
        focusedRow.TotaDede = 0M;
        ((ColumnView) this.gridViewServicios).RefreshRow(((ColumnView) this.gridViewServicios).FocusedRowHandle);
      }
      this.gridViewServicios.UpdateSummary();
    }
    finally
    {
      this._openingModal = false;
    }
  }

  protected ServicioAforoDVMG AbrirBuscadorModal()
  {
    HashSet<(short, long)> seleccionadosKeys = new HashSet<(short, long)>(this.serviciosSeleccionados.Select<ServicioAforoDVMGSeleccionado, (short, long)>((Func<ServicioAforoDVMGSeleccionado, (short, long)>) (s => (s.PeriOrde, s.CodiSede))));
    using (mdlServiciosAforosDVMG serviciosAforosDvmg = new mdlServiciosAforosDVMG(this.serviciosDisponibles.Where<ServicioAforoDVMG>((Func<ServicioAforoDVMG, bool>) (d => !seleccionadosKeys.Contains((d.PeriOrde, d.CodiSede)))).ToList<ServicioAforoDVMG>()))
      return serviciosAforosDvmg.ShowDialog((IWin32Window) this.FindForm()) == DialogResult.OK ? serviciosAforosDvmg.ServicioSeleccionado : (ServicioAforoDVMG) null;
  }

  public void QuitarServicioSeleccionado(ServicioAforoDVMGSeleccionado servicio)
  {
    if (servicio == null)
      return;
    this.serviciosSeleccionados.Remove(servicio);
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
    this.lblValorUVA = new MetroLabel();
    this.mibBimestre = new MetroIntTextBox();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.mibPeriodo = new MetroIntTextBox();
    this.txtExpediente = new MetroTextBox();
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
    this.colImporte = new GridColumn();
    this.spinEditImporte = new RepositoryItemSpinEdit();
    this.colSubTotal = new GridColumn();
    this.panSuperior.SuspendLayout();
    this.panCentral.SuspendLayout();
    ((ISupportInitialize) this.gridControlServicios).BeginInit();
    ((ISupportInitialize) this.gridViewServicios).BeginInit();
    ((ISupportInitialize) this.spinEditCant).BeginInit();
    ((ISupportInitialize) this.spinEditImporte).BeginInit();
    this.SuspendLayout();
    this.panSuperior.Controls.Add((Control) this.lblValorUVA);
    this.panSuperior.Controls.Add((Control) this.mibBimestre);
    this.panSuperior.Controls.Add((Control) this.metroLabel5);
    this.panSuperior.Controls.Add((Control) this.metroLabel4);
    this.panSuperior.Controls.Add((Control) this.mibPeriodo);
    this.panSuperior.Controls.Add((Control) this.txtExpediente);
    this.panSuperior.Controls.Add((Control) this.metroLabel3);
    this.panSuperior.Controls.Add((Control) this.dtbFechBole);
    this.panSuperior.Controls.Add((Control) this.metroLabel2);
    this.panSuperior.Controls.Add((Control) this.metroLabel1);
    this.panSuperior.Dock = DockStyle.Top;
    this.panSuperior.Location = new Point(0, 0);
    this.panSuperior.Name = "panSuperior";
    this.panSuperior.Size = new Size(1360, 73);
    this.panSuperior.TabIndex = 1;
    this.lblValorUVA.AutoSize = false;
    this.lblValorUVA.FontSize = 16f;
    this.lblValorUVA.Location = new Point(777, 38);
    this.lblValorUVA.Name = "lblValorUVA";
    this.lblValorUVA.Size = new Size(265, 21);
    this.lblValorUVA.TabIndex = 205;
    this.lblValorUVA.Text = "VALOR UVA";
    this.mibBimestre.IntText = 12;
    this.mibBimestre.Location = new Point(405, 36);
    this.mibBimestre.LongText = 12L;
    this.mibBimestre.MaxLength = 2;
    this.mibBimestre.MaxValue = 12;
    this.mibBimestre.Name = "mibBimestre";
    this.mibBimestre.ShortText = (short) 12;
    this.mibBimestre.Size = new Size(27, 23);
    this.mibBimestre.TabIndex = 202;
    this.mibBimestre.Text = "12";
    this.mibBimestre.TextAlign = HorizontalAlignment.Center;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.FontSize = 16f;
    this.metroLabel5.Location = new Point(389, 37);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(16 /*0x10*/, 21);
    this.metroLabel5.TabIndex = 204;
    this.metroLabel5.Text = "/";
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.FontSize = 16f;
    this.metroLabel4.Location = new Point(270, 37);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(62, 21);
    this.metroLabel4.TabIndex = 203;
    this.metroLabel4.Text = "Periodo";
    this.mibPeriodo.IntText = 2026;
    this.mibPeriodo.Location = new Point(344, 36);
    this.mibPeriodo.LongText = 2026L;
    this.mibPeriodo.MaxLength = 4;
    this.mibPeriodo.MaxValue = 2099;
    this.mibPeriodo.Name = "mibPeriodo";
    this.mibPeriodo.ShortText = (short) 2026;
    this.mibPeriodo.Size = new Size(42, 23);
    this.mibPeriodo.TabIndex = 201;
    this.mibPeriodo.Text = "2026";
    this.mibPeriodo.TextAlign = HorizontalAlignment.Center;
    this.txtExpediente.CausesValidation = false;
    this.txtExpediente.Location = new Point(549, 36);
    this.txtExpediente.MaxLength = 50;
    this.txtExpediente.Name = "txtExpediente";
    this.txtExpediente.Size = new Size(174, 25);
    this.txtExpediente.TabIndex = 203;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.FontSize = 16f;
    this.metroLabel3.Location = new Point(453, 38);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(84, 21);
    this.metroLabel3.TabIndex = 5;
    this.metroLabel3.Text = "Expediente";
    this.dtbFechBole.Location = new Point(156, 36);
    this.dtbFechBole.MinDate = new DateTime(2000, 1, 1, 0, 0, 0, 0);
    this.dtbFechBole.Name = "dtbFechBole";
    this.dtbFechBole.Size = new Size(102, 25);
    this.dtbFechBole.TabIndex = 200;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.FontSize = 16f;
    this.metroLabel2.Location = new Point(6, 38);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(138, 21);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Fecha Vencimiento";
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.BackColor = SystemColors.ScrollBar;
    this.metroLabel1.Dock = DockStyle.Top;
    this.metroLabel1.FontSize = 16f;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(0, 0);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(1360, 28);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Servicios";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleCenter;
    this.panCentral.Controls.Add((Control) this.gridControlServicios);
    this.panCentral.Dock = DockStyle.Fill;
    this.panCentral.Location = new Point(0, 73);
    this.panCentral.Name = "panCentral";
    this.panCentral.Size = new Size(1360, 237);
    this.panCentral.TabIndex = 3;
    ((Control) this.gridControlServicios).Dock = DockStyle.Fill;
    ((Control) this.gridControlServicios).Location = new Point(0, 0);
    this.gridControlServicios.MainView = (BaseView) this.gridViewServicios;
    ((Control) this.gridControlServicios).Name = "gridControlServicios";
    ((EditorContainer) this.gridControlServicios).RepositoryItems.AddRange(new RepositoryItem[2]
    {
      (RepositoryItem) this.spinEditCant,
      (RepositoryItem) this.spinEditImporte
    });
    ((Control) this.gridControlServicios).Size = new Size(1360, 237);
    ((Control) this.gridControlServicios).TabIndex = 205;
    this.gridControlServicios.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewServicios
    });
    this.gridViewServicios.Appearance.FooterPanel.Font = new Font("Tahoma", 12f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    this.gridViewServicios.Appearance.FooterPanel.Options.UseFont = true;
    this.gridViewServicios.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewServicios.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewServicios).Columns.AddRange(new GridColumn[5]
    {
      this.colCant,
      this.colCodigo,
      this.colDetalle,
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
    ((AppearanceOptions) this.colImporte.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImporte.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImporte.Caption = "Importe";
    this.colImporte.ColumnEdit = (RepositoryItem) this.spinEditImporte;
    this.colImporte.FieldName = "ImpoSede";
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
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.panCentral);
    this.Controls.Add((Control) this.panSuperior);
    this.Name = nameof (gridAforoMG);
    this.Size = new Size(1360, 310);
    this.panSuperior.ResumeLayout(false);
    this.panCentral.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlServicios).EndInit();
    ((ISupportInitialize) this.gridViewServicios).EndInit();
    ((ISupportInitialize) this.spinEditCant).EndInit();
    ((ISupportInitialize) this.spinEditImporte).EndInit();
    this.ResumeLayout(false);
  }
}
