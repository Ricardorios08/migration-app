// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.GeneracionArchivoBanelcoLink.repGeneracionArchivoBanelcoLink
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Reports;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.GeneracionArchivoBanelcoLink;

public class repGeneracionArchivoBanelcoLink : InfoGovPrintForm
{
  private DateTime hoy = Misc.Now(false);
  private ExpGeneracionArchivoBanelcoLink expert = new ExpGeneracionArchivoBanelcoLink();
  private IContainer components = (IContainer) null;
  private MetroDateTextBox txtFechaDesde;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroDateTextBox txtFechaHasta;
  private SimpleButton btnCancelar;
  private SimpleButton btnExportarTxt;
  private MetroRadioButton RadioButtonBanelco;
  private MetroRadioButton RadioButtonLink;

  public repGeneracionArchivoBanelcoLink()
    : base("Generación Archivo Banelco Link")
  {
    this.InitializeComponent();
    if (!(PARAMS.Municipio == "Tupungato"))
      return;
    this.RadioButtonBanelco.Enabled = false;
    this.RadioButtonLink.Enabled = true;
    this.RadioButtonLink.Checked = true;
  }

  private void btnCancelar_Click(object sender, EventArgs e) => this.Close();

  private void btnExportarTxt_Click(object sender, EventArgs e)
  {
    if (this.txtFechaDesde.Date == DateTime.MinValue || this.txtFechaHasta.Date == DateTime.MinValue)
    {
      new frmMensaje((Form) this).mostrarError("Debe ingresar fechas");
    }
    else
    {
      int num1;
      if (PARAMS.Municipio == "SanMartín")
      {
        if (this.RadioButtonBanelco.Checked)
        {
          SaveFileDialog saveFileDialog = new SaveFileDialog();
          saveFileDialog.AddExtension = false;
          saveFileDialog.AutoUpgradeEnabled = true;
          saveFileDialog.CheckFileExists = false;
          saveFileDialog.CheckPathExists = true;
          saveFileDialog.CreatePrompt = false;
          saveFileDialog.FilterIndex = 1;
          saveFileDialog.OverwritePrompt = true;
          saveFileDialog.ShowHelp = false;
          saveFileDialog.SupportMultiDottedExtensions = true;
          saveFileDialog.Title = "Exportar a TXT";
          saveFileDialog.FileName = "FAC4416." + this.hoy.ToString("ddMMyy");
          saveFileDialog.ValidateNames = true;
          List<DTOGeneracionArchivoBanelcoLink> archivoBanelcoLinkList = new frmEsperar((Form) this).calcular<List<DTOGeneracionArchivoBanelcoLink>>((Func<List<DTOGeneracionArchivoBanelcoLink>>) (() => this.expert.getArchivoBanelcoSM(this.txtFechaDesde.Date, this.txtFechaHasta.Date)), "Consultado Datos...");
          if (archivoBanelcoLinkList.Count == 0)
          {
            new frmMensaje((Form) this).mostrarError("No se encontraron registros");
            return;
          }
          if (saveFileDialog.ShowDialog((IWin32Window) this) == DialogResult.OK)
          {
            StreamWriter streamWriter1 = new StreamWriter(saveFileDialog.FileName);
            Decimal num2 = 0M;
            streamWriter1.WriteLine("04004416" + this.hoy.ToString("yyyyMMdd").PadRight(272, ' '));
            foreach (DTOGeneracionArchivoBanelcoLink archivoBanelcoLink in archivoBanelcoLinkList)
            {
              num2 += archivoBanelcoLink.TotaBole;
              streamWriter1.WriteLine($"5{archivoBanelcoLink.Referencia.PadRight(19, ' ')}{archivoBanelcoLink.Factura}0{archivoBanelcoLink.Venc1}{archivoBanelcoLink.Importe}{archivoBanelcoLink.Venc2}{archivoBanelcoLink.Importe}{"0".PadRight(8, '0')}{"0".PadRight(14, '0')}{"0".PadRight(14, '0')}{"0".PadRight(8, '0')}{archivoBanelcoLink.Referencia.PadRight(19, ' ')}{archivoBanelcoLink.Leyenda.PadRight(40, ' ')}{archivoBanelcoLink.LeyendaP.PadRight(15, ' ')}{archivoBanelcoLink.CodBarra.PadRight(60, ' ')}{" ".PadRight(17, ' ')}");
            }
            string str1 = num2.ToString("N2").Replace(".", "").Replace(",", "");
            StreamWriter streamWriter2 = streamWriter1;
            string[] strArray = new string[7];
            strArray[0] = "94004416";
            strArray[1] = this.hoy.ToString("yyyyMMdd");
            num1 = archivoBanelcoLinkList.Count;
            strArray[2] = num1.ToString().PadLeft(7, '0');
            strArray[3] = "0".PadRight(7, '0');
            strArray[4] = str1.PadLeft(19, '0');
            strArray[5] = "0".PadRight(19, '0');
            strArray[6] = "".PadRight(212, ' ');
            string str2 = string.Concat(strArray);
            streamWriter2.Write(str2);
            streamWriter1.Close();
            new frmMensaje((Form) this).mostrarConfirmación("Archivo Generado Correctamente");
          }
        }
        if (this.RadioButtonLink.Checked)
        {
          Decimal num3 = 0M;
          string str3 = "";
          string str4 = "";
          num1 = this.hoy.Month;
          string str5 = num1.ToString();
          if (this.hoy.Month >= 10)
          {
            switch (this.hoy.Month)
            {
              case 10:
                str5 = "A";
                break;
              case 11:
                str5 = "B";
                break;
              case 12:
                str5 = "C";
                break;
            }
          }
          SaveFileDialog saveFileDialog1 = new SaveFileDialog();
          saveFileDialog1.AddExtension = false;
          saveFileDialog1.AutoUpgradeEnabled = true;
          saveFileDialog1.CheckFileExists = false;
          saveFileDialog1.CheckPathExists = true;
          saveFileDialog1.CreatePrompt = false;
          saveFileDialog1.FilterIndex = 1;
          saveFileDialog1.OverwritePrompt = true;
          saveFileDialog1.ShowHelp = false;
          saveFileDialog1.SupportMultiDottedExtensions = true;
          saveFileDialog1.Title = "Exportar a TXT";
          saveFileDialog1.FileName = $"PAT31{str5}{this.hoy.ToString("dd")}";
          string str6 = $"PAT31{str5}{this.hoy.ToString("dd")}";
          saveFileDialog1.ValidateNames = true;
          List<DTOGeneracionArchivoBanelcoLink> archivoBanelcoLinkList = new frmEsperar((Form) this).calcular<List<DTOGeneracionArchivoBanelcoLink>>((Func<List<DTOGeneracionArchivoBanelcoLink>>) (() => this.expert.getArchivoLinkSM(this.txtFechaDesde.Date, this.txtFechaHasta.Date)), "Consultado Datos...");
          if (archivoBanelcoLinkList.Count == 0)
          {
            new frmMensaje((Form) this).mostrarError("No se encontraron registros");
            return;
          }
          if (saveFileDialog1.ShowDialog((IWin32Window) this) == DialogResult.OK)
          {
            StreamWriter streamWriter3 = new StreamWriter(saveFileDialog1.FileName);
            streamWriter3.WriteLine($"HRFACTURACIONAT3{this.hoy.ToString("yyMMdd")}00001{"".PadRight(104, ' ')}");
            foreach (DTOGeneracionArchivoBanelcoLink archivoBanelcoLink in archivoBanelcoLinkList)
            {
              num3 += archivoBanelcoLink.TotaBole;
              str4 = archivoBanelcoLink.UltimoVenc;
              StreamWriter streamWriter4 = streamWriter3;
              string[] strArray = new string[10];
              strArray[0] = archivoBanelcoLink.BimeCtct.ToString().PadLeft(3, '0');
              num1 = archivoBanelcoLink.PeriBole;
              strArray[1] = num1.ToString().Substring(2, 2);
              strArray[2] = archivoBanelcoLink.Oficina.PadLeft(3, '0');
              strArray[3] = archivoBanelcoLink.Referencia.PadRight(19, ' ');
              strArray[4] = archivoBanelcoLink.Venc1;
              strArray[5] = archivoBanelcoLink.Importe.PadLeft(12, '0');
              strArray[6] = archivoBanelcoLink.Venc2;
              strArray[7] = archivoBanelcoLink.Importe.PadLeft(12, '0');
              strArray[8] = "000000000000000000";
              strArray[9] = archivoBanelcoLink.Leyenda.PadRight(50, ' ');
              string str7 = string.Concat(strArray);
              streamWriter4.WriteLine(str7);
            }
            str3 = num3.ToString("N2").Replace(".", "").Replace(",", "");
            StreamWriter streamWriter5 = streamWriter3;
            string[] strArray1 = new string[5]
            {
              "TRFACTURACION",
              null,
              null,
              null,
              null
            };
            num1 = archivoBanelcoLinkList.Count + 2;
            strArray1[1] = num1.ToString().PadLeft(8, '0');
            strArray1[2] = str3.PadLeft(18, '0');
            strArray1[3] = str3.PadLeft(18, '0');
            strArray1[4] = "000000000000000000".PadRight(74, ' ');
            string str8 = string.Concat(strArray1);
            streamWriter5.Write(str8);
            streamWriter3.Close();
          }
          long num4 = (long) ((archivoBanelcoLinkList.Count + 2) * 133);
          SaveFileDialog saveFileDialog2 = new SaveFileDialog();
          saveFileDialog2.AddExtension = false;
          saveFileDialog2.AutoUpgradeEnabled = true;
          saveFileDialog2.CheckFileExists = false;
          saveFileDialog2.CheckPathExists = true;
          saveFileDialog2.CreatePrompt = false;
          saveFileDialog2.FilterIndex = 1;
          saveFileDialog2.OverwritePrompt = true;
          saveFileDialog2.ShowHelp = false;
          saveFileDialog2.SupportMultiDottedExtensions = true;
          saveFileDialog2.Title = "Exportar a TXT";
          saveFileDialog2.FileName = $"CAT31{str5}{this.hoy.ToString("dd")}";
          saveFileDialog2.ValidateNames = true;
          if (saveFileDialog2.ShowDialog((IWin32Window) this) == DialogResult.OK)
          {
            StreamWriter streamWriter6 = new StreamWriter(saveFileDialog2.FileName);
            streamWriter6.WriteLine($"HRPASCTRL{this.hoy.ToString("yyyyMMdd")}AT3{str6}{num4.ToString().PadLeft(10, '0')}".PadRight(75, ' '));
            StreamWriter streamWriter7 = streamWriter6;
            string[] strArray2 = new string[5]
            {
              "LOTES00001",
              null,
              null,
              null,
              null
            };
            num1 = archivoBanelcoLinkList.Count + 2;
            strArray2[1] = num1.ToString().PadLeft(8, '0');
            strArray2[2] = str3.PadLeft(18, '0');
            strArray2[3] = str3.PadLeft(18, '0');
            strArray2[4] = "000000000000000000";
            string str9 = string.Concat(strArray2).PadRight(75, ' ');
            streamWriter7.WriteLine(str9);
            StreamWriter streamWriter8 = streamWriter6;
            string[] strArray3 = new string[6];
            strArray3[0] = "FINAL";
            num1 = archivoBanelcoLinkList.Count + 2;
            strArray3[1] = num1.ToString().PadLeft(8, '0');
            strArray3[2] = str3.PadLeft(18, '0');
            strArray3[3] = str3.PadLeft(18, '0');
            strArray3[4] = "000000000000000000";
            strArray3[5] = str4;
            string str10 = string.Concat(strArray3);
            streamWriter8.WriteLine(str10);
            streamWriter6.Close();
            new frmMensaje((Form) this).mostrarConfirmación("Archivo Generado Correctamente");
          }
        }
      }
      if (!(PARAMS.Municipio == "Tupungato") || !this.RadioButtonLink.Checked)
        return;
      Decimal num5 = 0M;
      string str11 = "";
      string str12 = "";
      num1 = this.hoy.Month;
      string str13 = num1.ToString();
      if (this.hoy.Month >= 10)
      {
        switch (this.hoy.Month)
        {
          case 10:
            str13 = "A";
            break;
          case 11:
            str13 = "B";
            break;
          case 12:
            str13 = "C";
            break;
        }
      }
      SaveFileDialog saveFileDialog3 = new SaveFileDialog();
      saveFileDialog3.AddExtension = false;
      saveFileDialog3.AutoUpgradeEnabled = true;
      saveFileDialog3.CheckFileExists = false;
      saveFileDialog3.CheckPathExists = true;
      saveFileDialog3.CreatePrompt = false;
      saveFileDialog3.FilterIndex = 1;
      saveFileDialog3.OverwritePrompt = true;
      saveFileDialog3.ShowHelp = false;
      saveFileDialog3.SupportMultiDottedExtensions = true;
      saveFileDialog3.Title = "Exportar a TXT";
      saveFileDialog3.FileName = $"PBVQ1{str13}{this.hoy.ToString("dd")}";
      string str14 = $"PBVQ1{str13}{this.hoy.ToString("dd")}";
      saveFileDialog3.ValidateNames = true;
      List<DTOGeneracionArchivoBanelcoLink> archivoBanelcoLinkList1 = new frmEsperar((Form) this).calcular<List<DTOGeneracionArchivoBanelcoLink>>((Func<List<DTOGeneracionArchivoBanelcoLink>>) (() => this.expert.getArchivoLinkTupungato(this.txtFechaDesde.Date, this.txtFechaHasta.Date)), "Consultado Datos...");
      if (archivoBanelcoLinkList1.Count == 0)
      {
        new frmMensaje((Form) this).mostrarError("No se encontraron registros");
      }
      else
      {
        if (saveFileDialog3.ShowDialog((IWin32Window) this) == DialogResult.OK)
        {
          StreamWriter streamWriter9 = new StreamWriter(saveFileDialog3.FileName);
          streamWriter9.Write($"HRFACTURACIONBVQ{this.hoy.ToString("yyMMdd")}00001{"".PadRight(110, ' ')}\r\n");
          foreach (DTOGeneracionArchivoBanelcoLink archivoBanelcoLink in archivoBanelcoLinkList1)
          {
            num5 += archivoBanelcoLink.TotaBole;
            str12 = archivoBanelcoLink.UltimoVenc;
            StreamWriter streamWriter10 = streamWriter9;
            string[] strArray = new string[12];
            strArray[0] = archivoBanelcoLink.BimeCtct.ToString().PadLeft(3, '0');
            num1 = archivoBanelcoLink.PeriBole;
            strArray[1] = num1.ToString().Substring(2, 2);
            strArray[2] = archivoBanelcoLink.Oficina.PadLeft(3, '0');
            strArray[3] = archivoBanelcoLink.Referencia.PadLeft(19, '0');
            strArray[4] = archivoBanelcoLink.Venc1;
            strArray[5] = archivoBanelcoLink.Importe.PadLeft(12, '0');
            strArray[6] = "000000000000000000000000000000000000";
            strArray[7] = archivoBanelcoLink.Leyenda.PadRight(50, ' ');
            strArray[8] = archivoBanelcoLink.CuotaAnual;
            num1 = this.hoy.Year;
            strArray[9] = num1.ToString().Substring(2, 2);
            strArray[10] = "".PadRight(3, ' ');
            strArray[11] = "\r\n";
            string str15 = string.Concat(strArray);
            streamWriter10.Write(str15);
          }
          str11 = num5.ToString("N2").Replace(".", "").Replace(",", "");
          StreamWriter streamWriter11 = streamWriter9;
          string[] strArray4 = new string[7];
          strArray4[0] = "TRFACTURACION";
          num1 = archivoBanelcoLinkList1.Count + 2;
          strArray4[1] = num1.ToString().PadLeft(8, '0');
          strArray4[2] = str11.PadLeft(18, '0');
          strArray4[3] = "0".PadLeft(18, '0');
          strArray4[4] = "0".PadLeft(18, '0');
          strArray4[5] = "".PadRight(62, ' ');
          strArray4[6] = "\r\n";
          string str16 = string.Concat(strArray4);
          streamWriter11.Write(str16);
          streamWriter9.Close();
        }
        long num6 = (long) ((archivoBanelcoLinkList1.Count + 2) * 139);
        SaveFileDialog saveFileDialog4 = new SaveFileDialog();
        saveFileDialog4.AddExtension = false;
        saveFileDialog4.AutoUpgradeEnabled = true;
        saveFileDialog4.CheckFileExists = false;
        saveFileDialog4.CheckPathExists = true;
        saveFileDialog4.CreatePrompt = false;
        saveFileDialog4.FilterIndex = 1;
        saveFileDialog4.OverwritePrompt = true;
        saveFileDialog4.ShowHelp = false;
        saveFileDialog4.SupportMultiDottedExtensions = true;
        saveFileDialog4.Title = "Exportar a TXT";
        saveFileDialog4.FileName = $"CBVQ1{str13}{this.hoy.ToString("dd")}";
        saveFileDialog4.ValidateNames = true;
        if (saveFileDialog4.ShowDialog((IWin32Window) this) == DialogResult.OK)
        {
          StreamWriter streamWriter12 = new StreamWriter(saveFileDialog4.FileName);
          streamWriter12.Write($"HRPASCTRL{this.hoy.ToString("yyyyMMdd")}BVQ{str14}{num6.ToString().PadLeft(10, '0')}".PadRight(75, ' ') + "\r\n");
          StreamWriter streamWriter13 = streamWriter12;
          string[] strArray5 = new string[7];
          strArray5[0] = "LOTES00001";
          num1 = archivoBanelcoLinkList1.Count + 2;
          strArray5[1] = num1.ToString().PadLeft(8, '0');
          strArray5[2] = str11.PadLeft(18, '0');
          strArray5[3] = "0".PadLeft(18, '0');
          strArray5[4] = "0".PadLeft(18, '0');
          strArray5[5] = "".PadRight(3, ' ');
          strArray5[6] = "\r\n";
          string str17 = string.Concat(strArray5);
          streamWriter13.Write(str17);
          StreamWriter streamWriter14 = streamWriter12;
          string[] strArray6 = new string[7];
          strArray6[0] = "FINAL";
          num1 = archivoBanelcoLinkList1.Count + 2;
          strArray6[1] = num1.ToString().PadLeft(8, '0');
          strArray6[2] = str11.PadLeft(18, '0');
          strArray6[3] = "0".PadLeft(18, '0');
          strArray6[4] = "0".PadLeft(18, '0');
          strArray6[5] = str12;
          strArray6[6] = "\r\n";
          string str18 = string.Concat(strArray6);
          streamWriter14.Write(str18);
          streamWriter12.Close();
          new frmMensaje((Form) this).mostrarConfirmación("Archivo Generado Correctamente");
        }
      }
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (repGeneracionArchivoBanelcoLink));
    this.txtFechaDesde = new MetroDateTextBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.txtFechaHasta = new MetroDateTextBox();
    this.btnCancelar = new SimpleButton();
    this.btnExportarTxt = new SimpleButton();
    this.RadioButtonBanelco = new MetroRadioButton();
    this.RadioButtonLink = new MetroRadioButton();
    this.SuspendLayout();
    this.butClose.Location = new Point(392, 13);
    this.butGenerate.Location = new Point(176 /*0xB0*/, 280);
    this.butGenerate.Visible = false;
    this.txtFechaDesde.AllowEmpty = true;
    this.txtFechaDesde.Location = new Point(152, 105);
    this.txtFechaDesde.Name = "txtFechaDesde";
    this.txtFechaDesde.Size = new Size(121, 25);
    this.txtFechaDesde.TabIndex = 138;
    this.txtFechaDesde.Tag = (object) "Desde";
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(83, 111);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(67, 19);
    this.metroLabel6.TabIndex = 140;
    this.metroLabel6.Text = "Desde:";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(96 /*0x60*/, 146);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(54, 19);
    this.metroLabel5.TabIndex = 141;
    this.metroLabel5.Text = "Hasta:";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.txtFechaHasta.AllowEmpty = true;
    this.txtFechaHasta.Location = new Point(152, 140);
    this.txtFechaHasta.Name = "txtFechaHasta";
    this.txtFechaHasta.Size = new Size(121, 25);
    this.txtFechaHasta.TabIndex = 139;
    this.txtFechaHasta.Tag = (object) "Hasta";
    ((BaseButton) this.btnCancelar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnCancelar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnCancelar.ImageOptions.Image");
    ((Control) this.btnCancelar).Location = new Point(152, 213);
    ((Control) this.btnCancelar).Name = "btnCancelar";
    ((Control) this.btnCancelar).Size = new Size(116, 23);
    ((Control) this.btnCancelar).TabIndex = 137;
    ((Control) this.btnCancelar).Text = "Salir";
    ((Control) this.btnCancelar).Click += new EventHandler(this.btnCancelar_Click);
    ((BaseButton) this.btnExportarTxt).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnExportarTxt.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnExportarTxt.ImageOptions.Image");
    ((Control) this.btnExportarTxt).Location = new Point(152, 184);
    ((Control) this.btnExportarTxt).Name = "btnExportarTxt";
    ((Control) this.btnExportarTxt).Size = new Size(116, 23);
    ((Control) this.btnExportarTxt).TabIndex = 136;
    ((Control) this.btnExportarTxt).Text = "Exportar a TXT";
    ((Control) this.btnExportarTxt).Click += new EventHandler(this.btnExportarTxt_Click);
    this.RadioButtonBanelco.AutoSize = false;
    this.RadioButtonBanelco.Checked = true;
    this.RadioButtonBanelco.Location = new Point(137, 68);
    this.RadioButtonBanelco.Name = "RadioButtonBanelco";
    this.RadioButtonBanelco.Size = new Size(65, 15);
    this.RadioButtonBanelco.TabIndex = 142;
    this.RadioButtonBanelco.TabStop = true;
    this.RadioButtonBanelco.Text = "Banelco";
    this.RadioButtonLink.AutoSize = false;
    this.RadioButtonLink.Location = new Point(228, 68);
    this.RadioButtonLink.Name = "RadioButtonLink";
    this.RadioButtonLink.Size = new Size(45, 15);
    this.RadioButtonLink.TabIndex = 143;
    this.RadioButtonLink.Text = "Link";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(427, 325);
    this.Controls.Add((Control) this.RadioButtonLink);
    this.Controls.Add((Control) this.RadioButtonBanelco);
    this.Controls.Add((Control) this.txtFechaDesde);
    this.Controls.Add((Control) this.metroLabel6);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.txtFechaHasta);
    this.Controls.Add((Control) this.btnCancelar);
    this.Controls.Add((Control) this.btnExportarTxt);
    this.Name = nameof (repGeneracionArchivoBanelcoLink);
    this.Text = nameof (repGeneracionArchivoBanelcoLink);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.btnExportarTxt, 0);
    this.Controls.SetChildIndex((Control) this.btnCancelar, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaHasta, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel5, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel6, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaDesde, 0);
    this.Controls.SetChildIndex((Control) this.RadioButtonBanelco, 0);
    this.Controls.SetChildIndex((Control) this.RadioButtonLink, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
