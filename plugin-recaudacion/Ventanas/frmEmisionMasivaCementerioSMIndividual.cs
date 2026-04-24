// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmEmisionMasivaCementerioSMIndividual
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraReports.UI;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM;
using InfoGov.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmEmisionMasivaCementerioSMIndividual : BaseForm
{
  private ExpEmisionMasivaCementerioSM experto = new ExpEmisionMasivaCementerioSM();
  private IContainer components = (IContainer) null;
  private MetroPanel metroPanel1;
  private MetroButton btnGenerarPdf;
  private MetroIntTextBox DifuntoText;
  private MetroLabel metroLabel1;

  public frmEmisionMasivaCementerioSMIndividual() => this.InitializeComponent();

  private void btnGenerarPdf_Click(object sender, EventArgs e)
  {
    if (this.DifuntoText.IntText == 0 || this.DifuntoText.Text.Length == 0)
    {
      new frmMensaje((Form) this).mostrarError("Ingresar nro. de cuenta");
      this.DifuntoText.Focus();
    }
    else
    {
      this.generacionCementerioIndiSM();
      this.DifuntoText.Text = "";
      this.DifuntoText.Focus();
    }
  }

  public void generacionCementerioIndiSM()
  {
    EmisionMasivaComercioSM row = this.experto.getOrdenPorCemenSM(this.DifuntoText.IntText);
    if (row.CantOrdeLico == 0)
    {
      new frmMensaje((Form) this).mostrarError("No se encontro boleto para los datos ingresados.");
      this.DifuntoText.Focus();
    }
    else
    {
      List<DTOBoletoCemenSM> dtoBoletoCemenSmList = new frmEsperar((Form) this).calcular<List<DTOBoletoCemenSM>>((Func<List<DTOBoletoCemenSM>>) (() => this.experto.obtenerCuentasCemenSM(row, row.CantOrdeLico, row.CantOrdeLico)), "Consultado Datos...");
      List<DTOBoletoCemenSM> listaRepo = new List<DTOBoletoCemenSM>();
      int num = 0;
      int index = 0;
      foreach (DTOBoletoCemenSM difu in dtoBoletoCemenSmList)
      {
        if (difu.CodiDifu != num)
        {
          num = difu.CodiDifu;
          listaRepo.Add(difu);
          listaRepo[index].cupones = new List<DTOBoletoCemenSM.CuponCemenSM>();
          listaRepo[index].cupones.Add(this.experto.obtenerCuponSM(row, difu, difu.TipoVenc == 2));
          ++index;
        }
        else
          listaRepo[index - 1].cupones.Add(this.experto.obtenerCuponSM(row, difu, difu.TipoVenc == 2));
      }
      new frmEsperar((Form) this).procesar((Action) (() => this.experto.ProcesarDatosCementerioSM(listaRepo)), "Consultando Datos Cementerio...");
      new frmEsperar((Form) this).procesar((Action) (() => this.experto.ProcesarDatosDifuntosSM(listaRepo)), "Consultando Difuntos...");
      irepBoletoCemenSM report = new irepBoletoCemenSM((short) 0);
      ((XtraReportBase) report).DataSource = (object) listaRepo;
      report.createReport((Action<int, string>) null, false);
      this.showInfoGovReport((InfoGovReport) report);
    }
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.metroPanel1 = new MetroPanel();
    this.btnGenerarPdf = new MetroButton();
    this.DifuntoText = new MetroIntTextBox();
    this.metroLabel1 = new MetroLabel();
    this.metroPanel1.SuspendLayout();
    this.SuspendLayout();
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.btnGenerarPdf);
    this.metroPanel1.Controls.Add((Control) this.DifuntoText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Location = new Point(12, 12);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(299, 114);
    this.metroPanel1.TabIndex = 12;
    this.btnGenerarPdf.Location = new Point(171, 61);
    this.btnGenerarPdf.Name = "btnGenerarPdf";
    this.btnGenerarPdf.Size = new Size(105, 32 /*0x20*/);
    this.btnGenerarPdf.TabIndex = 10;
    this.btnGenerarPdf.Text = "IMPRIMIR PDF ";
    this.btnGenerarPdf.Click += new EventHandler(this.btnGenerarPdf_Click);
    this.DifuntoText.Location = new Point(171, 26);
    this.DifuntoText.MaxLength = 10;
    this.DifuntoText.MaxValue = 999999999;
    this.DifuntoText.Name = "DifuntoText";
    this.DifuntoText.Size = new Size(105, 23);
    this.DifuntoText.TabIndex = 9;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(6, 31 /*0x1F*/);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(161, 18);
    this.metroLabel1.TabIndex = 8;
    this.metroLabel1.Text = "Nro. Cuenta Cementerio:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(329, 145);
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmEmisionMasivaCementerioSMIndividual);
    this.Text = "Emisión Individual Cementerio";
    this.metroPanel1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
