// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmEmisionMasivaTasasIndividual
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraReports.UI;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoSM;
using InfoGov.Plugins.Recaudacion.Reportes.Tasas;
using InfoGov.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmEmisionMasivaTasasIndividual : BaseForm
{
  private ExpEmisionMasivaTasas experto = new ExpEmisionMasivaTasas();
  private ExpEmisionMasivaTasasSM experSM = new ExpEmisionMasivaTasasSM();
  private IContainer components = (IContainer) null;
  private MetroButton btnGenerarPdf;
  private MetroIntTextBox PadronText;
  private MetroLabel metroLabel1;
  private MetroPanel metroPanel1;

  public frmEmisionMasivaTasasIndividual() => this.InitializeComponent();

  private void btnGenerarPdf_Click(object sender, EventArgs e)
  {
    if (this.PadronText.IntText == 0 || this.PadronText.Text.Length == 0)
    {
      new frmMensaje((Form) this).mostrarError("Ingresar nro. de padrón");
      this.PadronText.Focus();
    }
    else
    {
      switch (PARAMS.Municipio)
      {
        case "Guaymallén":
          this.generacionTasaIndiGuay();
          break;
        case "SanMartín":
          this.generacionTasaIndiSM();
          break;
      }
      this.PadronText.Text = "";
      this.PadronText.Focus();
    }
  }

  public void agregarQrVinculado(List<DTOTasasRepo> listaRepo)
  {
    foreach (DTOTasasRepo dtoTasasRepo in listaRepo)
    {
      string str1 = "";
      foreach (CuponTasa cupone in dtoTasasRepo.cupones)
        str1 = $"{str1}{cupone.NumeBole.ToString()}-";
      string str2 = str1.TrimEnd('-');
      dtoTasasRepo.EpagosQrVinc = $"https://vps.infogov.com.ar/rentas/guaymallen/V1/index.php/api/epagos/opcionespago/{str2}/{dtoTasasRepo.PeriBole.ToString()}";
    }
  }

  public void generacionTasaIndiGuay()
  {
    EmisionMasivaTasas row = this.experto.getOrdenPorPadron(this.PadronText.IntText);
    List<DTOTasasRepo> dtoTasasRepoList = new frmEsperar((Form) this).calcular<List<DTOTasasRepo>>((Func<List<DTOTasasRepo>>) (() => this.experto.obtenerTasasIndividualGUAY(row, row.CantOrdeLita, row.CantOrdeLita)), "Consultado Datos...");
    if (dtoTasasRepoList.Count == 0)
    {
      new frmMensaje((Form) this).mostrarError("No se encontro boleto para los datos ingresados.");
      this.PadronText.Focus();
    }
    else
    {
      List<DTOTasasRepo> listaRepo = new List<DTOTasasRepo>();
      int num = 0;
      int index = 0;
      foreach (DTOTasasRepo tasa in dtoTasasRepoList)
      {
        if (tasa.CodiInmu != num)
        {
          num = tasa.CodiInmu;
          listaRepo.Add(tasa);
          listaRepo[index].cupones = new List<CuponTasa>();
          listaRepo[index].cupones.Add(this.experto.obtenerCupon(row, tasa, tasa.TipoVenc == 2));
          ++index;
        }
        else
          listaRepo[index - 1].cupones.Add(this.experto.obtenerCupon(row, tasa, tasa.TipoVenc == 2));
      }
      this.agregarQrVinculado(listaRepo);
      new frmEsperar((Form) this).procesar((Action) (() => this.experto.ProcesarCalcularDeudas(listaRepo)), "Calculando Deudas...");
      irepBoletoTasa report = new irepBoletoTasa();
      ((XtraReportBase) report).DataSource = (object) listaRepo;
      report.createReport((Action<int, string>) null, false);
      this.showInfoGovReport((InfoGovReport) report);
    }
  }

  public void generacionTasaIndiSM()
  {
    EmisionMasivaTasas row = this.experSM.getOrdenPorPadronSM(this.PadronText.IntText);
    if (row.CantOrdeLita == 0)
    {
      new frmMensaje((Form) this).mostrarError("No se encontro boleto para los datos ingresados.");
      this.PadronText.Focus();
    }
    else
    {
      List<DTOBoletoInmuSM> dtoBoletoInmuSmList1 = new frmEsperar((Form) this).calcular<List<DTOBoletoInmuSM>>((Func<List<DTOBoletoInmuSM>>) (() => this.experSM.obtenerTasasSM(row, row.CantOrdeLita, row.CantOrdeLita)), "Consultado Datos...");
      List<DTOBoletoInmuSM> dtoBoletoInmuSmList2 = new List<DTOBoletoInmuSM>();
      int num = 0;
      int index = 0;
      foreach (DTOBoletoInmuSM tasa in dtoBoletoInmuSmList1)
      {
        if (tasa.CodiInmu != num)
        {
          num = tasa.CodiInmu;
          dtoBoletoInmuSmList2.Add(tasa);
          dtoBoletoInmuSmList2[index].cupones = new List<DTOBoletoInmuSM.CuponInmuSM>();
          dtoBoletoInmuSmList2[index].cupones.Add(this.experSM.obtenerCuponSM(row, tasa, tasa.TipoVenc == 2));
          ++index;
        }
        else
          dtoBoletoInmuSmList2[index - 1].cupones.Add(this.experSM.obtenerCuponSM(row, tasa, tasa.TipoVenc == 2));
      }
      irepBoletoInmuSM report = new irepBoletoInmuSM((short) 0);
      ((XtraReportBase) report).DataSource = (object) dtoBoletoInmuSmList2;
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
    this.btnGenerarPdf = new MetroButton();
    this.PadronText = new MetroIntTextBox();
    this.metroLabel1 = new MetroLabel();
    this.metroPanel1 = new MetroPanel();
    this.metroPanel1.SuspendLayout();
    this.SuspendLayout();
    this.btnGenerarPdf.Location = new Point(121, 61);
    this.btnGenerarPdf.Name = "btnGenerarPdf";
    this.btnGenerarPdf.Size = new Size(124, 32 /*0x20*/);
    this.btnGenerarPdf.TabIndex = 10;
    this.btnGenerarPdf.Text = "IMPRIMIR PDF ";
    this.btnGenerarPdf.Click += new EventHandler(this.btnGenerarPdf_Click);
    this.PadronText.Location = new Point(121, 26);
    this.PadronText.MaxLength = 10;
    this.PadronText.MaxValue = 999999999;
    this.PadronText.Name = "PadronText";
    this.PadronText.Size = new Size(124, 23);
    this.PadronText.TabIndex = 9;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(22, 31 /*0x1F*/);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(87, 18);
    this.metroLabel1.TabIndex = 8;
    this.metroLabel1.Text = "Nro. Padrón:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.btnGenerarPdf);
    this.metroPanel1.Controls.Add((Control) this.PadronText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Location = new Point(21, 18);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(278, 114);
    this.metroPanel1.TabIndex = 11;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(325, 151);
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmEmisionMasivaTasasIndividual);
    this.Text = "Emision Masiva Individual";
    this.metroPanel1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
