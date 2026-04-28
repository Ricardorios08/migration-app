// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmEmisionMasivaComercioGUAYIndividual
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraReports.UI;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioGuay;
using InfoGov.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmEmisionMasivaComercioGUAYIndividual : BaseForm
{
  private BindingSource bsEmison = new BindingSource();
  private ExpEmisionMasivaComerciosGUAY experto = new ExpEmisionMasivaComerciosGUAY();
  private IContainer components = (IContainer) null;
  private MetroPanel metroPanel1;
  private MetroButton btnGenerarPdf;
  private MetroIntTextBox ComercioText;
  private MetroLabel metroLabel1;

  public frmEmisionMasivaComercioGUAYIndividual() => this.InitializeComponent();

  private void btnGenerarPdf_Click(object sender, EventArgs e)
  {
    if (this.ComercioText.IntText == 0 || this.ComercioText.Text.Length == 0)
    {
      new frmMensaje((Form) this).mostrarError("Ingresar nro. de comercio");
      this.ComercioText.Focus();
    }
    else
    {
      this.generacionComercioIndi();
      this.ComercioText.Text = "";
      this.ComercioText.Focus();
    }
  }

  public void generacionComercioIndi()
  {
    EmisionMasivaComercios row = this.experto.getOrdenPorComer(this.ComercioText.IntText);
    if (row.CantOrdeLico == 0)
    {
      new frmMensaje((Form) this).mostrarError("No se encontro boleto para los datos ingresados.");
      this.ComercioText.Focus();
    }
    else
    {
      List<DTOBoletoComercioGuay> boletoComercioGuayList = new frmEsperar((Form) this).calcular<List<DTOBoletoComercioGuay>>((Func<List<DTOBoletoComercioGuay>>) (() => this.experto.obtenerLiquComercios(row, row.CantOrdeLico, row.CantOrdeLico)), "Consultado Datos...");
      List<DTOBoletoComercioGuay> listaRepo = new List<DTOBoletoComercioGuay>();
      int num = 0;
      int index = 0;
      foreach (DTOBoletoComercioGuay comer in boletoComercioGuayList)
      {
        if (comer.CodiCome != num)
        {
          num = comer.CodiCome;
          listaRepo.Add(comer);
          listaRepo[index].cupones = new List<CuponComercio>();
          listaRepo[index].cupones.Add(this.experto.obtenerCupon(row, comer, comer.TipoVenc == 2));
          ++index;
        }
        else
          listaRepo[index - 1].cupones.Add(this.experto.obtenerCupon(row, comer, comer.TipoVenc == 2));
      }
      this.agregarQrVinculado(listaRepo);
      new frmEsperar((Form) this).procesar((Action) (() => this.experto.ProcesarCalcularDeudas(listaRepo)), "Calculando Deudas...");
      irepBoletoComercioGuay report = new irepBoletoComercioGuay();
      ((XtraReportBase) report).DataSource = (object) listaRepo;
      report.createReport((Action<int, string>) null, false);
      this.showInfoGovReport((InfoGovReport) report);
    }
  }

  public void agregarQrVinculado(List<DTOBoletoComercioGuay> listaRepo)
  {
    foreach (DTOBoletoComercioGuay boletoComercioGuay in listaRepo)
    {
      string str1 = "";
      foreach (CuponComercio cupone in boletoComercioGuay.cupones)
        str1 = $"{str1}{cupone.NumeBole.ToString()}-";
      string str2 = str1.TrimEnd('-');
      boletoComercioGuay.EpagosQrVinc = $"https://vps.infogov.com.ar/rentas/guaymallen/V1/index.php/api/epagos/opcionespago/{str2}/{boletoComercioGuay.PeriBole.ToString()}";
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
    this.ComercioText = new MetroIntTextBox();
    this.metroLabel1 = new MetroLabel();
    this.metroPanel1.SuspendLayout();
    this.SuspendLayout();
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.btnGenerarPdf);
    this.metroPanel1.Controls.Add((Control) this.ComercioText);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Location = new Point(12, 12);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(263, 114);
    this.metroPanel1.TabIndex = 13;
    this.btnGenerarPdf.Location = new Point(121, 61);
    this.btnGenerarPdf.Name = "btnGenerarPdf";
    this.btnGenerarPdf.Size = new Size(105, 32 /*0x20*/);
    this.btnGenerarPdf.TabIndex = 10;
    this.btnGenerarPdf.Text = "IMPRIMIR PDF ";
    this.btnGenerarPdf.Click += new EventHandler(this.btnGenerarPdf_Click);
    this.ComercioText.Location = new Point(121, 26);
    this.ComercioText.MaxLength = 10;
    this.ComercioText.MaxValue = 999999999;
    this.ComercioText.Name = "ComercioText";
    this.ComercioText.Size = new Size(105, 23);
    this.ComercioText.TabIndex = 9;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(6, 31 /*0x1F*/);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(103, 18);
    this.metroLabel1.TabIndex = 8;
    this.metroLabel1.Text = "Nro. Comercio:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(303, 142);
    this.Controls.Add((Control) this.metroPanel1);
    this.Name = nameof (frmEmisionMasivaComercioGUAYIndividual);
    this.Text = "Emisión Masiva Individual";
    this.metroPanel1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
