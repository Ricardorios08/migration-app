// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.DebitoAutomatico.repDebitoAutomatico
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.DebitoAutomatico;

public class repDebitoAutomatico : PrintForm
{
  private ExpDebitoAutomatico experto = new ExpDebitoAutomatico();
  private DateTime hoy = Misc.Now(false);
  private IContainer components = (IContainer) null;
  private MetroDateTextBox txtFechaDesde;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroDateTextBox txtFechaHasta;
  private SimpleButton btnCancelar;
  private SimpleButton btnExportarTxt;

  public repDebitoAutomatico()
    : base("Débito Automático")
  {
    this.InitializeComponent();
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
      SaveFileDialog saveFileDialog = new SaveFileDialog();
      saveFileDialog.AddExtension = true;
      saveFileDialog.AutoUpgradeEnabled = true;
      saveFileDialog.CheckFileExists = false;
      saveFileDialog.CheckPathExists = true;
      saveFileDialog.CreatePrompt = false;
      saveFileDialog.DefaultExt = "txt";
      saveFileDialog.Filter = "Archivo TXT|*.txt";
      saveFileDialog.FilterIndex = 1;
      saveFileDialog.OverwritePrompt = true;
      saveFileDialog.ShowHelp = false;
      saveFileDialog.SupportMultiDottedExtensions = true;
      saveFileDialog.Title = "Exportar a TXT";
      saveFileDialog.ValidateNames = true;
      if (saveFileDialog.ShowDialog((IWin32Window) this) != DialogResult.OK)
        return;
      List<DTODebitoAutomatico> source = new frmEsperar((Form) this).calcular<List<DTODebitoAutomatico>>((Func<List<DTODebitoAutomatico>>) (() => this.experto.getDebitosAutomaticos(this.txtFechaDesde.Date, this.txtFechaHasta.Date)), "Consultado Datos...");
      StreamWriter streamWriter1 = new StreamWriter(saveFileDialog.FileName);
      Decimal num1 = source.Sum<DTODebitoAutomatico>((Func<DTODebitoAutomatico, Decimal>) (item => item.TotaBole));
      streamWriter1.WriteLine($"100102097{"".PadLeft(10, ' ')}{0.ToString().PadLeft(8, '0')}{this.hoy.ToString("yyyyMMdd")}{num1.ToString().Replace(",", "").PadLeft(18, '0')}08001{0.ToString().PadLeft(98, '0')}{"".PadLeft(69, ' ')}{0.ToString()}");
      foreach (DTODebitoAutomatico debitoAutomatico in source)
      {
        StreamWriter streamWriter2 = streamWriter1;
        string[] strArray = new string[24];
        strArray[0] = "0";
        int num2 = debitoAutomatico.Cobis;
        strArray[1] = num2.ToString().PadLeft(8, '0');
        strArray[2] = "".PadLeft(10, ' ');
        num2 = 0;
        strArray[3] = num2.ToString().PadLeft(8, '0');
        num2 = debitoAutomatico.CodiBanc;
        strArray[4] = num2.ToString().PadLeft(3, '0');
        strArray[5] = debitoAutomatico.NumeSucu.PadLeft(4, '0');
        strArray[6] = debitoAutomatico.TipoCuenta.ToString().PadLeft(1, '0');
        strArray[7] = debitoAutomatico.NumeCuenta.ToString().PadLeft(15, '0');
        strArray[8] = debitoAutomatico.CuenCtct.PadLeft(8, '0').PadRight(22, ' ');
        strArray[9] = debitoAutomatico.NumeBole.PadLeft(15, '0');
        strArray[10] = "".PadLeft(2, ' ');
        strArray[11] = "".PadLeft(4, ' ');
        strArray[12] = debitoAutomatico.FeveBole.ToString("yyyyMMdd");
        strArray[13] = "080";
        strArray[14] = debitoAutomatico.TotaBole.ToString().Replace(",", "").PadLeft(13, '0');
        num2 = 0;
        strArray[15] = num2.ToString().PadLeft(8, '0');
        num2 = 0;
        strArray[16 /*0x10*/] = num2.ToString().PadLeft(13, '0');
        num2 = 0;
        strArray[17] = num2.ToString().PadLeft(4, '0');
        strArray[18] = "0";
        num2 = 0;
        strArray[19] = num2.ToString().PadLeft(15, '0');
        strArray[20] = "".PadLeft(22, ' ');
        strArray[21] = "".PadLeft(40, ' ');
        strArray[22] = "".PadLeft(5, ' ');
        strArray[23] = "0";
        string str = string.Concat(strArray);
        streamWriter2.WriteLine(str);
      }
      streamWriter1.Close();
      new frmMensaje((Form) this).mostrarConfirmación("Archivo Generado Correctamente");
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (repDebitoAutomatico));
    this.txtFechaDesde = new MetroDateTextBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.txtFechaHasta = new MetroDateTextBox();
    this.btnCancelar = new SimpleButton();
    this.btnExportarTxt = new SimpleButton();
    this.SuspendLayout();
    this.butClose.Location = new Point(332, 13);
    this.butGenerate.Location = new Point(146, 216);
    this.butGenerate.Visible = false;
    this.txtFechaDesde.AllowEmpty = true;
    this.txtFechaDesde.Location = new Point((int) sbyte.MaxValue, 65);
    this.txtFechaDesde.Name = "txtFechaDesde";
    this.txtFechaDesde.Size = new Size(121, 25);
    this.txtFechaDesde.TabIndex = 138;
    this.txtFechaDesde.Tag = (object) "Desde";
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(58, 71);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(67, 19);
    this.metroLabel6.TabIndex = 140;
    this.metroLabel6.Text = "Desde:";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(71, 106);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(54, 19);
    this.metroLabel5.TabIndex = 141;
    this.metroLabel5.Text = "Hasta:";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.txtFechaHasta.AllowEmpty = true;
    this.txtFechaHasta.Location = new Point((int) sbyte.MaxValue, 100);
    this.txtFechaHasta.Name = "txtFechaHasta";
    this.txtFechaHasta.Size = new Size(121, 25);
    this.txtFechaHasta.TabIndex = 139;
    this.txtFechaHasta.Tag = (object) "Hasta";
    ((BaseButton) this.btnCancelar).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnCancelar.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnCancelar.ImageOptions.Image");
    ((Control) this.btnCancelar).Location = new Point((int) sbyte.MaxValue, 173);
    ((Control) this.btnCancelar).Name = "btnCancelar";
    ((Control) this.btnCancelar).Size = new Size(116, 23);
    ((Control) this.btnCancelar).TabIndex = 137;
    ((Control) this.btnCancelar).Text = "Salir";
    ((Control) this.btnCancelar).Click += new EventHandler(this.btnCancelar_Click);
    ((BaseButton) this.btnExportarTxt).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnExportarTxt.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnExportarTxt.ImageOptions.Image");
    ((Control) this.btnExportarTxt).Location = new Point((int) sbyte.MaxValue, 144 /*0x90*/);
    ((Control) this.btnExportarTxt).Name = "btnExportarTxt";
    ((Control) this.btnExportarTxt).Size = new Size(116, 23);
    ((Control) this.btnExportarTxt).TabIndex = 136;
    ((Control) this.btnExportarTxt).Text = "Exportar a TXT";
    ((Control) this.btnExportarTxt).Click += new EventHandler(this.btnExportarTxt_Click);
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(367, 252);
    this.Controls.Add((Control) this.txtFechaDesde);
    this.Controls.Add((Control) this.metroLabel6);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.txtFechaHasta);
    this.Controls.Add((Control) this.btnCancelar);
    this.Controls.Add((Control) this.btnExportarTxt);
    this.Name = nameof (repDebitoAutomatico);
    this.Text = "Debitos Automaticos";
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.btnExportarTxt, 0);
    this.Controls.SetChildIndex((Control) this.btnCancelar, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaHasta, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel5, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel6, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaDesde, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
