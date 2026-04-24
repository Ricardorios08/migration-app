// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.GeneracionArchivoBanelcoLink.irepGeneracionArchivoBanelcoLink
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraReports.UI;
using InfoGov.Reports;
using System.ComponentModel;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.GeneracionArchivoBanelcoLink;

public class irepGeneracionArchivoBanelcoLink : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;

  public irepGeneracionArchivoBanelcoLink()
    : base(nameof (irepGeneracionArchivoBanelcoLink), "Generación Archivo")
  {
    this.InitializeComponent();
  }

  protected virtual void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Name = "Detail";
    ((XtraReportBase) this).Bands.AddRange(new Band[3]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail
    });
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Version = "21.2";
    ((ISupportInitialize) this).EndInit();
  }
}
