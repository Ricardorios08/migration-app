// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.frmEmisionMasivaComercioSMIndividual
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraReports.UI;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioSM;
using InfoGov.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class frmEmisionMasivaComercioSMIndividual : BaseForm
{
  private ExpEmisionMasivaComercioSM experto = new ExpEmisionMasivaComercioSM();
  private IContainer components = (IContainer) null;
  private MetroPanel metroPanel1;
  private MetroButton btnGenerarPdf;
  private MetroIntTextBox ComercioText;
  private MetroLabel metroLabel1;

  public frmEmisionMasivaComercioSMIndividual() => this.InitializeComponent();

  private void btnGenerarPdf_Click(object sender, EventArgs e)
  {
    if (this.ComercioText.IntText == 0 || this.ComercioText.Text.Length == 0)
    {
      new frmMensaje((Form) this).mostrarError("Ingresar nro. de comercio");
      this.ComercioText.Focus();
    }
    else
    {
      this.generacionComercioIndiSM();
      this.ComercioText.Text = "";
      this.ComercioText.Focus();
    }
  }

  public void generacionComercioIndiSM()
  {
    EmisionMasivaComercioSM row = this.experto.getOrdenPorComerSM(this.ComercioText.IntText);
    if (row.CantOrdeLico == 0)
    {
      new frmMensaje((Form) this).mostrarError("No se encontro boleto para los datos ingresados.");
      this.ComercioText.Focus();
    }
    else
    {
      List<DTOBoletoComerSM> dtoBoletoComerSmList1 = new frmEsperar((Form) this).calcular<List<DTOBoletoComerSM>>((Func<List<DTOBoletoComerSM>>) (() => this.experto.obtenerComerciosSM(row, row.CantOrdeLico, row.CantOrdeLico)), "Consultado Datos...");
      List<DTOBoletoComerSM> dtoBoletoComerSmList2 = new List<DTOBoletoComerSM>();
      int num = 0;
      int index = 0;
      foreach (DTOBoletoComerSM come in dtoBoletoComerSmList1)
      {
        if (come.CodiCome != num)
        {
          num = come.CodiCome;
          dtoBoletoComerSmList2.Add(come);
          dtoBoletoComerSmList2[index].cupones = new List<DTOBoletoComerSM.CuponComerSM>();
          dtoBoletoComerSmList2[index].cupones.Add(this.experto.obtenerCuponSM(row, come, come.TipoVenc == 2));
          ++index;
        }
        else
          dtoBoletoComerSmList2[index - 1].cupones.Add(this.experto.obtenerCuponSM(row, come, come.TipoVenc == 2));
      }
      irepBoletoComerSM report = new irepBoletoComerSM((short) 0);
      ((XtraReportBase) report).DataSource = (object) dtoBoletoComerSmList2;
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
    this.metroPanel1.TabIndex = 12;
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
    this.ClientSize = new Size(302, 145);
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmEmisionMasivaComercioSMIndividual);
    this.Text = "Emisión Individual Comercio";
    this.metroPanel1.ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
