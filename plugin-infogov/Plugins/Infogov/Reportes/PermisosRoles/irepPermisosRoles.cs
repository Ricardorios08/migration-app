// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Reportes.PermisosRoles.irepPermisosRoles
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraReports.UI;
using InfoGov.Reports;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Infogov.Reportes.PermisosRoles;

public class irepPermisosRoles : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;

  public irepPermisosRoles()
    : base(nameof (irepPermisosRoles), "Permisos y Roles")
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
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Version = "21.2";
    ((ISupportInitialize) this).EndInit();
  }
}
