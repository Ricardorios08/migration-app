// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.gridParametroCierreEjercicio
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.Plugins.Contabilidad.Expertos;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class gridParametroCierreEjercicio : ABMForm, ObsPeriodo
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colPeriodo;
  private GridColumn colCalculoErogaciones;
  private GridColumn colProveedoresVarios;
  private GridColumn colDeudaExigible;
  private GridColumn colChequesinRemitir;
  private GridColumn colCargosTesorero;
  private GridColumn colCaja;
  private GridColumn colDebitoVarios;
  private GridColumn colCalculoRecursos;
  private GridColumn colPatrimonio;
  private GridColumn colResulEjercicio;
  private GridColumn colProveeAnterior;
  private GridColumn colUsuario;
  private GridColumn colPartida;

  public gridParametroCierreEjercicio()
    : base((ABMDetailControl) new detailParametroCierreEjercicio(), (ABMExpert) new ExpParametroCierreEjercicio(), typeof (ParametroCierreEjercicio))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Parámetros al Cierre de Ejercicio", "Parámetros al Cierre de Ejercicio");
  }

  public void PeriodoChanged(int periodo)
  {
    new frmMensaje((Form) this).mostrarInformación("Se cerrarán todas las pantallas");
    this.Close();
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.gridControl1 = new GridControl();
    this.gridView1 = new GridView();
    this.colPeriodo = new GridColumn();
    this.colCalculoErogaciones = new GridColumn();
    this.colProveedoresVarios = new GridColumn();
    this.colDeudaExigible = new GridColumn();
    this.colChequesinRemitir = new GridColumn();
    this.colCargosTesorero = new GridColumn();
    this.colCaja = new GridColumn();
    this.colDebitoVarios = new GridColumn();
    this.colCalculoRecursos = new GridColumn();
    this.colPatrimonio = new GridColumn();
    this.colResulEjercicio = new GridColumn();
    this.colProveeAnterior = new GridColumn();
    this.colUsuario = new GridColumn();
    this.colPartida = new GridColumn();
    ((ISupportInitialize) this.gridControl1).BeginInit();
    ((ISupportInitialize) this.gridView1).BeginInit();
    this.SuspendLayout();
    ((Control) this.gridControl1).Dock = DockStyle.Fill;
    ((Control) this.gridControl1).Location = new Point(0, 68);
    this.gridControl1.MainView = (BaseView) this.gridView1;
    ((Control) this.gridControl1).Name = "gridControl1";
    ((Control) this.gridControl1).Size = new Size(777, 209);
    ((Control) this.gridControl1).TabIndex = 6;
    this.gridControl1.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridView1
    });
    ((ColumnView) this.gridView1).Columns.AddRange(new GridColumn[14]
    {
      this.colPeriodo,
      this.colCalculoErogaciones,
      this.colProveedoresVarios,
      this.colDeudaExigible,
      this.colChequesinRemitir,
      this.colCargosTesorero,
      this.colCaja,
      this.colDebitoVarios,
      this.colCalculoRecursos,
      this.colPatrimonio,
      this.colResulEjercicio,
      this.colProveeAnterior,
      this.colPartida,
      this.colUsuario
    });
    ((BaseView) this.gridView1).GridControl = this.gridControl1;
    ((BaseView) this.gridView1).Name = "gridView1";
    this.colPeriodo.Caption = "Periodo";
    this.colPeriodo.FieldName = "PeriInfo";
    this.colPeriodo.Name = "colPeriodo";
    this.colPeriodo.Visible = true;
    this.colPeriodo.VisibleIndex = 0;
    this.colCalculoErogaciones.Caption = "Cálculo de Erogaciones";
    this.colCalculoErogaciones.FieldName = "CaerPaco";
    this.colCalculoErogaciones.Name = "colCalculoErogaciones";
    this.colCalculoErogaciones.Visible = true;
    this.colCalculoErogaciones.VisibleIndex = 1;
    this.colProveedoresVarios.Caption = "Proveedores Varios";
    this.colProveedoresVarios.FieldName = "ProvPaco";
    this.colProveedoresVarios.Name = "colProveedoresVarios";
    this.colProveedoresVarios.Visible = true;
    this.colProveedoresVarios.VisibleIndex = 2;
    this.colDeudaExigible.Caption = "Deuda Exigible";
    this.colDeudaExigible.FieldName = "DeexPaco";
    this.colDeudaExigible.Name = "colDeudaExigible";
    this.colDeudaExigible.Visible = true;
    this.colDeudaExigible.VisibleIndex = 3;
    this.colChequesinRemitir.Caption = "Cheques sin Remitir";
    this.colChequesinRemitir.FieldName = "ChsrPaco";
    this.colChequesinRemitir.Name = "colChequesinRemitir";
    this.colChequesinRemitir.Visible = true;
    this.colChequesinRemitir.VisibleIndex = 4;
    this.colCargosTesorero.Caption = "Cargos al Tesorero";
    this.colCargosTesorero.FieldName = "CatePaco";
    this.colCargosTesorero.Name = "colCargosTesorero";
    this.colCargosTesorero.Visible = true;
    this.colCargosTesorero.VisibleIndex = 5;
    this.colCaja.Caption = "Caja";
    this.colCaja.FieldName = "CajaPaco";
    this.colCaja.Name = "colCaja";
    this.colCaja.Visible = true;
    this.colCaja.VisibleIndex = 6;
    this.colDebitoVarios.Caption = "Débitos Varios";
    this.colDebitoVarios.FieldName = "DebiPaco";
    this.colDebitoVarios.Name = "colDebitoVarios";
    this.colDebitoVarios.Visible = true;
    this.colDebitoVarios.VisibleIndex = 7;
    this.colCalculoRecursos.Caption = "Cálculo de Recursos";
    this.colCalculoRecursos.FieldName = "CarePaco";
    this.colCalculoRecursos.Name = "colCalculoRecursos";
    this.colCalculoRecursos.Visible = true;
    this.colCalculoRecursos.VisibleIndex = 8;
    this.colPatrimonio.Caption = "Patrimonio";
    this.colPatrimonio.FieldName = "PatrPaco";
    this.colPatrimonio.Name = "colPatrimonio";
    this.colPatrimonio.Visible = true;
    this.colPatrimonio.VisibleIndex = 9;
    this.colResulEjercicio.Caption = "Resultado del Ejercio";
    this.colResulEjercicio.FieldName = "ReejPaco";
    this.colResulEjercicio.Name = "colResulEjercicio";
    this.colResulEjercicio.Visible = true;
    this.colResulEjercicio.VisibleIndex = 10;
    this.colProveeAnterior.Caption = "Proveedores Vs Ej. Anterior";
    this.colProveeAnterior.FieldName = "CcrpPaco";
    this.colProveeAnterior.Name = "colProveeAnterior";
    this.colProveeAnterior.Visible = true;
    this.colProveeAnterior.VisibleIndex = 11;
    this.colUsuario.Caption = "Usuario";
    this.colUsuario.FieldName = "CodiUsua";
    this.colUsuario.Name = "colUsuario";
    this.colUsuario.Visible = true;
    this.colUsuario.VisibleIndex = 13;
    this.colPartida.Caption = "Partida";
    this.colPartida.FieldName = "ParpPaco";
    this.colPartida.Name = "colPartida";
    this.colPartida.Visible = true;
    this.colPartida.VisibleIndex = 12;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(777, 519);
    this.Controls.Add((Control) this.gridControl1);
    this.Name = nameof (gridParametroCierreEjercicio);
    this.Text = nameof (gridParametroCierreEjercicio);
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
