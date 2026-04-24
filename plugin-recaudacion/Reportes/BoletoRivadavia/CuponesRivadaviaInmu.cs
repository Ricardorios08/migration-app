// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoRivadavia.CuponesRivadaviaInmu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraPrinting.BarCode;
using DevExpress.XtraReports.Expressions;
using DevExpress.XtraReports.UI;
using InfoGov.Reports;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoRivadavia;

public class CuponesRivadaviaInmu : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ObjectDataSource objectDataSource1;
  private XRBarCode xrBarCode1;
  private XRLabel xrLabel1;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;

  public CuponesRivadaviaInmu()
    : base(nameof (CuponesRivadaviaInmu), "Boleto Tasa")
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
    this.components = (IContainer) new Container();
    Code128Generator code128Generator = new Code128Generator();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrLabel1 = new XRLabel();
    this.xrBarCode1 = new XRBarCode();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 5f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 0.0f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrTable1,
      (XRControl) this.xrLabel1,
      (XRControl) this.xrBarCode1
    });
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.xrTable1).BackColor = Color.Silver;
    ((XRControl) this.xrTable1).Font = new Font("Calibri", 9.75f, FontStyle.Italic);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(749f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "1° Bimestre";
    this.xrTableCell1.Weight = 1.0;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Vencimiento:";
    this.xrTableCell2.Weight = 1.0;
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Importe a pagar:";
    this.xrTableCell3.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel1).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodigoBarraCupon]")
    });
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(203.9583f, 72.50001f);
    this.xrLabel1.Multiline = true;
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(396.8749f, 23f);
    ((XRControl) this.xrLabel1).Text = "xrLabel1";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrBarCode1).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodigoBarraCupon]")
    });
    ((XRControl) this.xrBarCode1).LocationFloat = new PointFloat(148.75f, 30.83334f);
    ((XRControl) this.xrBarCode1).Name = "xrBarCode1";
    ((XRControl) this.xrBarCode1).Padding = new PaddingInfo(10, 10, 0, 0, 100f);
    ((XRControl) this.xrBarCode1).SizeF = new SizeF(495.8333f, 41.66667f);
    code128Generator.CharacterSet = (Code128Charset) 105;
    this.xrBarCode1.Symbology = (BarCodeGeneratorBase) code128Generator;
    this.objectDataSource1.DataSource = (object) typeof (DTOBoletoRivadaviaInmu.Cupon);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this).Bands.AddRange(new Band[3]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(20, 48 /*0x30*/, 5, 0);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
