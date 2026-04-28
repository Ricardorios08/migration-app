// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.gridParametroInicioEjercicio
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

public class gridParametroInicioEjercicio : ABMForm
{
  private IContainer components = (IContainer) null;
  private GridControl gridControl1;
  private GridView gridView1;
  private GridColumn colPeriodo;
  private GridColumn colErogaciones;
  private GridColumn colProveedores;
  private GridColumn colDeudaExigible;
  private GridColumn colChequessinRemitir;
  private GridColumn colCargosTesorero;
  private GridColumn colCaja;
  private GridColumn colDebitosVarios;
  private GridColumn colCalculoRecurso;
  private GridColumn colPatrimonio;
  private GridColumn colResultadoEjercicio;
  private GridColumn colProveedorAnterior;
  private GridColumn colUsuario;
  private GridColumn colPartida;

  public gridParametroInicioEjercicio()
    : base((ABMDetailControl) new detailParametroInicioEjercicio(), (ABMExpert) new ExpParametroInicioEjercicio(), typeof (ParametroInicioEjercicio))
  {
    this.InitializeComponent();
    this.inicializar(this.gridView1, "Parámetros al Inicio de Ejercicio", "Parámetros al Inicio de Ejercicio");
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
    this.colErogaciones = new GridColumn();
    this.colProveedores = new GridColumn();
    this.colDeudaExigible = new GridColumn();
    this.colChequessinRemitir = new GridColumn();
    this.colCargosTesorero = new GridColumn();
    this.colCaja = new GridColumn();
    this.colDebitosVarios = new GridColumn();
    this.colCalculoRecurso = new GridColumn();
    this.colPatrimonio = new GridColumn();
    this.colResultadoEjercicio = new GridColumn();
    this.colProveedorAnterior = new GridColumn();
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
      this.colErogaciones,
      this.colProveedores,
      this.colDeudaExigible,
      this.colChequessinRemitir,
      this.colCargosTesorero,
      this.colCaja,
      this.colDebitosVarios,
      this.colCalculoRecurso,
      this.colPatrimonio,
      this.colResultadoEjercicio,
      this.colProveedorAnterior,
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
    this.colErogaciones.Caption = "Cálculo de Erogaciones";
    this.colErogaciones.FieldName = "CaerPaco";
    this.colErogaciones.Name = "colErogaciones";
    this.colErogaciones.Visible = true;
    this.colErogaciones.VisibleIndex = 1;
    this.colProveedores.Caption = "Proveedores Varios";
    this.colProveedores.FieldName = "ProvPaco";
    this.colProveedores.Name = "colProveedores";
    this.colProveedores.Visible = true;
    this.colProveedores.VisibleIndex = 2;
    this.colDeudaExigible.Caption = "Deuda Exigible";
    this.colDeudaExigible.FieldName = "DeexPaco";
    this.colDeudaExigible.Name = "colDeudaExigible";
    this.colDeudaExigible.Visible = true;
    this.colDeudaExigible.VisibleIndex = 3;
    this.colChequessinRemitir.Caption = "Cheques sin Remitir";
    this.colChequessinRemitir.FieldName = "ChsrPaco";
    this.colChequessinRemitir.Name = "colChequessinRemitir";
    this.colChequessinRemitir.Visible = true;
    this.colChequessinRemitir.VisibleIndex = 4;
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
    this.colDebitosVarios.Caption = "Débitos Varios";
    this.colDebitosVarios.FieldName = "DebiPaco";
    this.colDebitosVarios.Name = "colDebitosVarios";
    this.colDebitosVarios.Visible = true;
    this.colDebitosVarios.VisibleIndex = 7;
    this.colCalculoRecurso.Caption = "Cálculo de Recursos";
    this.colCalculoRecurso.FieldName = "CarePaco";
    this.colCalculoRecurso.Name = "colCalculoRecurso";
    this.colCalculoRecurso.Visible = true;
    this.colCalculoRecurso.VisibleIndex = 8;
    this.colPatrimonio.Caption = "Patrimonio";
    this.colPatrimonio.FieldName = "PatrPaco";
    this.colPatrimonio.Name = "colPatrimonio";
    this.colPatrimonio.Visible = true;
    this.colPatrimonio.VisibleIndex = 9;
    this.colResultadoEjercicio.Caption = "Resultado del Ejercicio";
    this.colResultadoEjercicio.FieldName = "ReejPaco";
    this.colResultadoEjercicio.Name = "colResultadoEjercicio";
    this.colResultadoEjercicio.Visible = true;
    this.colResultadoEjercicio.VisibleIndex = 10;
    this.colProveedorAnterior.Caption = "Proveedores Vs Ej. Anterior";
    this.colProveedorAnterior.FieldName = "CcrpPaco";
    this.colProveedorAnterior.Name = "colProveedorAnterior";
    this.colProveedorAnterior.Visible = true;
    this.colProveedorAnterior.VisibleIndex = 11;
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
    this.Name = nameof (gridParametroInicioEjercicio);
    this.Text = "gridParametroInicioCierre";
    this.Controls.SetChildIndex((Control) this.gridControl1, 0);
    ((ISupportInitialize) this.gridControl1).EndInit();
    ((ISupportInitialize) this.gridView1).EndInit();
    this.ResumeLayout(false);
  }
}
