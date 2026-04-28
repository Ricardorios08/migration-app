// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.mdlGenerarEpagosQr
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Plugins.Recaudacion.Reportes.Tasas;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class mdlGenerarEpagosQr : InfoGovModalForm
{
  private ExpEmisionMasivaTasas experto = new ExpEmisionMasivaTasas();
  private EmisionMasivaTasas Tasas;
  private IContainer components = (IContainer) null;
  private MetroIntTextBox HastaText;
  private MetroIntTextBox DesdeText;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroButton btnGenerarEpagosQr;
  private MetroButton btnCerrar;
  private MetroLabel metroLabel4;
  private MetroLabel Cantidad;
  private ucGenerarQR ucqr;

  public mdlGenerarEpagosQr()
    : base()
  {
    this.InitializeComponent();
  }

  public void Mostrar(int desde, int hasta, EmisionMasivaTasas emi)
  {
    this.Tasas = emi;
    this.DesdeText.IntText = desde;
    this.HastaText.IntText = hasta;
    this.Cantidad.Text = emi.PendEpQr.ToString();
    int num = (int) this.ShowDialog();
  }

  private void btnCerrar_Click(object sender, EventArgs e) => this.Close();

  private void btnGenerarEpagosQr_Click(object sender, EventArgs e)
  {
    Misc.Now();
    List<DTOTasasRepo> locations = new frmEsperar((Form) this).calcular<List<DTOTasasRepo>>((Func<List<DTOTasasRepo>>) (() => this.experto.ObtenerTasaparaEpagosQr(this.Tasas, this.DesdeText.IntText, this.HastaText.IntText)), "Consultado Datos...");
    if (locations.Count == 0)
      new frmMensaje((Form) this).mostrarError("No existen tasas sin Qr para los datos ingresados");
    else
      this.ucqr.iniciarProceso(this.splitListxCupones(locations, 50));
  }

  public List<List<DTOTasasRepo>> splitListxCupones(List<DTOTasasRepo> locations, int nSize = 250)
  {
    List<List<DTOTasasRepo>> dtoTasasRepoListList = new List<List<DTOTasasRepo>>();
    int val1 = nSize / locations[0].cupones.Count;
    for (int index = 0; index < locations.Count; index += val1)
      dtoTasasRepoListList.Add(locations.GetRange(index, Math.Min(val1, locations.Count - index)));
    return dtoTasasRepoListList;
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.HastaText = new MetroIntTextBox();
    this.DesdeText = new MetroIntTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.btnGenerarEpagosQr = new MetroButton();
    this.btnCerrar = new MetroButton();
    this.metroLabel4 = new MetroLabel();
    this.Cantidad = new MetroLabel();
    this.ucqr = new ucGenerarQR();
    this.SuspendLayout();
    this.HastaText.Location = new Point(145, 45);
    this.HastaText.MaxLength = 10;
    this.HastaText.MaxValue = 999999999;
    this.HastaText.Name = "HastaText";
    this.HastaText.Size = new Size(88, 23);
    this.HastaText.TabIndex = 9;
    this.DesdeText.Location = new Point(145, 15);
    this.DesdeText.MaxLength = 10;
    this.DesdeText.MaxValue = 999999999;
    this.DesdeText.Name = "DesdeText";
    this.DesdeText.Size = new Size(88, 23);
    this.DesdeText.TabIndex = 8;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(76, 49);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(57, 19);
    this.metroLabel2.TabIndex = 7;
    this.metroLabel2.Text = "Hasta";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(74, 19);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(59, 19);
    this.metroLabel1.TabIndex = 6;
    this.metroLabel1.Text = "Desde";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.btnGenerarEpagosQr.Location = new Point(287, 15);
    this.btnGenerarEpagosQr.Name = "btnGenerarEpagosQr";
    this.btnGenerarEpagosQr.Size = new Size(107, 53);
    this.btnGenerarEpagosQr.TabIndex = 10;
    this.btnGenerarEpagosQr.Text = "GENERAR";
    this.btnGenerarEpagosQr.Click += new EventHandler(this.btnGenerarEpagosQr_Click);
    this.btnCerrar.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.btnCerrar.Location = new Point(464, 15);
    this.btnCerrar.Name = "btnCerrar";
    this.btnCerrar.Size = new Size(75, 23);
    this.btnCerrar.TabIndex = 11;
    this.btnCerrar.Text = "Cerrar";
    this.btnCerrar.Click += new EventHandler(this.btnCerrar_Click);
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(13, 80 /*0x50*/);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(120, 19);
    this.metroLabel4.TabIndex = 15;
    this.metroLabel4.Text = "Pendientes sin Qr";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.Cantidad.AutoSize = false;
    this.Cantidad.FontWeight = MetroFontWeight.Bold;
    this.Cantidad.Location = new Point(145, 80 /*0x50*/);
    this.Cantidad.Name = "Cantidad";
    this.Cantidad.Size = new Size(94, 19);
    this.Cantidad.TabIndex = 17;
    this.Cantidad.Text = "metroLabel6";
    this.ucqr.Location = new Point(70, 179);
    this.ucqr.Name = "ucqr";
    this.ucqr.Size = new Size(333, 99);
    this.ucqr.TabIndex = 18;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(554, 438);
    this.Controls.Add((Control) this.ucqr);
    this.Controls.Add((Control) this.Cantidad);
    this.Controls.Add((Control) this.metroLabel4);
    this.Controls.Add((Control) this.btnCerrar);
    this.Controls.Add((Control) this.btnGenerarEpagosQr);
    this.Controls.Add((Control) this.HastaText);
    this.Controls.Add((Control) this.DesdeText);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (mdlGenerarEpagosQr);
    this.Text = nameof (mdlGenerarEpagosQr);
    this.ResumeLayout(false);
  }
}
