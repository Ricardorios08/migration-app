// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Tasas.irepBoletoTasa1
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.Utils.Filtering;
using DevExpress.XtraPrinting;
using DevExpress.XtraPrinting.BarCode;
using DevExpress.XtraPrinting.Drawing;
using DevExpress.XtraReports.UI;
using InfoGov.Reports;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Tasas;

public class irepBoletoTasa1 : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private DetailBand Detail;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private XRLabel xrLabel1;
  private XRPanel xrPanel1;
  private XRPanel xrPanel2;
  private XRLabel xrLabel2;
  private XRLabel xrLabel3;
  private XRLabel xrLabel4;
  private XRLabel xrLabel5;
  private XRLabel xrLabel6;
  private XRLabel xrLabel7;
  private XRLabel xrLabel8;
  private XRLabel xrLabel9;
  private XRLabel xrLabel10;
  private XRLabel xrLabel11;
  private XRLabel xrLabel12;
  private XRLabel xrLabel13;
  private XRLabel xrLabel18;
  private XRLabel xrLabel17;
  private XRLabel xrLabel16;
  private XRLabel xrLabel15;
  private XRLabel xrLabel14;
  private XRBarCode xrBarCode1;
  private XRPanel xrPanel4;
  private XRPanel xrPanel3;
  private XRBarCode xrBarCode2;
  private ObjectDataSource objectDataSource1;
  private PageFooterBand PageFooter;
  private XRSubreport xrSubreport1;
  private PageHeaderBand PageHeader;
  private XRRichText xrRichText1;
  private XRRichText xrRichText2;
  private XRRichText xrRichText3;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private GroupHeaderBand GroupHeader1;
  private FilteringUIContext filteringUIContext1;
  private FormattingRule formattingRule1;
  private FormattingRule PoseeDeuda;
  private FormattingRule NoPoseeDeuda;
  private GroupFooterBand GroupFooter1;
  private XRLabel xrLabel20;
  private XRLabel xrLabel21;
  private XRBarCode xrBarCode3;
  private DPIAwareImageCollection dpiAwareImageCollection1;
  private XRLabel xrLabel19;
  private XRLabel xrLabel22;
  private XRLabel xrLabel23;
  private XRPictureBox xrPictureBox4;
  private XRPictureBox xrPictureBox2;
  private XRPanel xrPanel5;
  private XRPictureBox xrPictureBox5;
  private XRPictureBox xrPictureBox6;
  private XRPictureBox xrPictureBox7;
  private XRPictureBox xrPictureBox1;

  public irepBoletoTasa1()
    : base("irepBoletoTasa", "Boleto Tasa")
  {
    this.InitializeComponent();
  }

  private void GroupHeader1_BeforePrint(object sender, PrintEventArgs e)
  {
    ((XtraReportBase) ((SubreportBase) this.xrSubreport1).ReportSource).DataSource = (object) ((DTOTasasRepo) ((XtraReportBase) this).GetCurrentRow()).cupones;
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (irepBoletoTasa1));
    Interleaved2of5Generator interleaved2of5Generator = new Interleaved2of5Generator();
    QRCodeGenerator qrCodeGenerator1 = new QRCodeGenerator();
    QRCodeGenerator qrCodeGenerator2 = new QRCodeGenerator();
    this.Detail = new DetailBand();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.xrPanel4 = new XRPanel();
    this.xrRichText1 = new XRRichText();
    this.xrPanel3 = new XRPanel();
    this.xrLabel22 = new XRLabel();
    this.xrRichText2 = new XRRichText();
    this.formattingRule1 = new FormattingRule();
    this.xrPanel1 = new XRPanel();
    this.xrPictureBox4 = new XRPictureBox();
    this.xrLabel1 = new XRLabel();
    this.xrPanel2 = new XRPanel();
    this.xrLabel18 = new XRLabel();
    this.xrLabel17 = new XRLabel();
    this.xrLabel16 = new XRLabel();
    this.xrLabel15 = new XRLabel();
    this.xrLabel14 = new XRLabel();
    this.xrBarCode1 = new XRBarCode();
    this.xrLabel2 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLabel6 = new XRLabel();
    this.xrLabel7 = new XRLabel();
    this.xrLabel8 = new XRLabel();
    this.xrLabel9 = new XRLabel();
    this.xrLabel10 = new XRLabel();
    this.xrLabel11 = new XRLabel();
    this.xrLabel12 = new XRLabel();
    this.xrLabel13 = new XRLabel();
    this.xrBarCode2 = new XRBarCode();
    this.PageFooter = new PageFooterBand();
    this.xrRichText3 = new XRRichText();
    this.xrPictureBox2 = new XRPictureBox();
    this.xrPictureBox1 = new XRPictureBox();
    this.xrPictureBox7 = new XRPictureBox();
    this.PageHeader = new PageHeaderBand();
    this.xrPanel5 = new XRPanel();
    this.xrLabel21 = new XRLabel();
    this.xrBarCode3 = new XRBarCode();
    this.xrLabel23 = new XRLabel();
    this.xrLabel20 = new XRLabel();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrSubreport1 = new XRSubreport();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.filteringUIContext1 = new FilteringUIContext(this.components);
    this.PoseeDeuda = new FormattingRule();
    this.NoPoseeDeuda = new FormattingRule();
    this.GroupFooter1 = new GroupFooterBand();
    this.xrPictureBox6 = new XRPictureBox();
    this.xrPictureBox5 = new XRPictureBox();
    this.xrLabel19 = new XRLabel();
    this.dpiAwareImageCollection1 = new DPIAwareImageCollection(this.components);
    ((ISupportInitialize) this.xrRichText1).BeginInit();
    ((ISupportInitialize) this.xrRichText2).BeginInit();
    ((ISupportInitialize) this.xrRichText3).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this.filteringUIContext1).BeginInit();
    ((ISupportInitialize) this.dpiAwareImageCollection1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((Band) this.Detail).Expanded = false;
    ((XRControl) this.Detail).HeightF = 0.0f;
    ((XRControl) this.Detail).KeepTogether = true;
    this.Detail.KeepTogetherWithDetailReports = true;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.Detail).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.Detail).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.TopMargin).HeightF = 10f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.TopMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.TopMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.BottomMargin).BorderDashStyle = (BorderDashStyle) 0;
    ((XRControl) this.BottomMargin).Borders = (BorderSide) 15;
    ((XRControl) this.BottomMargin).BorderWidth = 1f;
    ((XRControl) this.BottomMargin).HeightF = 38f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.BottomMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.BottomMargin).StylePriority.UseBorderDashStyle = false;
    ((XRControl) this.BottomMargin).StylePriority.UseBorders = false;
    ((XRControl) this.BottomMargin).StylePriority.UseBorderWidth = false;
    ((XRControl) this.BottomMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrPanel4).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel4).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrRichText1
    });
    ((XRControl) this.xrPanel4).LocationFloat = new PointFloat(392.8015f, 259.2693f);
    ((XRControl) this.xrPanel4).Name = "xrPanel4";
    ((XRControl) this.xrPanel4).SizeF = new SizeF(384.3f, 230f);
    ((XRControl) this.xrPanel4).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText1).Borders = (BorderSide) 0;
    ((XRControl) this.xrRichText1).CanGrow = false;
    ((XRControl) this.xrRichText1).Font = new Font("Arial", 8f);
    ((XRControl) this.xrRichText1).LocationFloat = new PointFloat(10.12503f, 19.99998f);
    ((XRControl) this.xrRichText1).Name = "xrRichText1";
    ((XRRichTextBase) this.xrRichText1).SerializableRtfString = componentResourceManager.GetString("xrRichText1.SerializableRtfString");
    ((XRControl) this.xrRichText1).SizeF = new SizeF(367.32f, 178f);
    ((XRControl) this.xrRichText1).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText1).StylePriority.UseFont = false;
    ((XRControl) this.xrPanel3).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel3).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrLabel22,
      (XRControl) this.xrRichText2
    });
    ((XRControl) this.xrPanel3).LocationFloat = new PointFloat(2.459985f, 259.2693f);
    ((XRControl) this.xrPanel3).Name = "xrPanel3";
    ((XRControl) this.xrPanel3).SizeF = new SizeF(390.34f, 230f);
    ((XRControl) this.xrPanel3).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel22).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel22).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "DeudaStr")
    });
    ((XRControl) this.xrLabel22).Font = new Font("Arial", 8f, FontStyle.Bold);
    ((XRControl) this.xrLabel22).LocationFloat = new PointFloat(7.000019f, 88.12508f);
    this.xrLabel22.Multiline = true;
    ((XRControl) this.xrLabel22).Name = "xrLabel22";
    ((XRControl) this.xrLabel22).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.xrLabel22).SizeF = new SizeF(374.9999f, 101.5034f);
    ((XRControl) this.xrLabel22).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel22).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel22).StylePriority.UsePadding = false;
    ((XRControl) this.xrLabel22).Text = "xrLabel22";
    ((XRControl) this.xrRichText2).Borders = (BorderSide) 0;
    ((XRControl) this.xrRichText2).CanGrow = false;
    ((XRControl) this.xrRichText2).Font = new Font("Arial", 8f);
    ((XRControl) this.xrRichText2).LocationFloat = new PointFloat(7.000019f, 19.99998f);
    ((XRControl) this.xrRichText2).Name = "xrRichText2";
    ((XRRichTextBase) this.xrRichText2).SerializableRtfString = componentResourceManager.GetString("xrRichText2.SerializableRtfString");
    ((XRControl) this.xrRichText2).SizeF = new SizeF(375f, 68.12509f);
    ((XRControl) this.xrRichText2).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText2).StylePriority.UseFont = false;
    this.formattingRule1.Condition = "[DeudLita] > 0";
    this.formattingRule1.Formatting.Visible = (DefaultBoolean) 0;
    this.formattingRule1.Name = "formattingRule1";
    ((XRControl) this.xrPanel1).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel1).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrPictureBox4,
      (XRControl) this.xrLabel1
    });
    ((XRControl) this.xrPanel1).LocationFloat = new PointFloat(2.46f, 1.269343f);
    ((XRControl) this.xrPanel1).Name = "xrPanel1";
    ((XRControl) this.xrPanel1).SizeF = new SizeF(594.3428f, 70f);
    ((XRControl) this.xrPanel1).StylePriority.UseBorders = false;
    ((XRControl) this.xrPictureBox4).Borders = (BorderSide) 0;
    this.xrPictureBox4.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox4.ImageSource"));
    ((XRControl) this.xrPictureBox4).LocationFloat = new PointFloat(29f, 6.759461f);
    ((XRControl) this.xrPictureBox4).Name = "xrPictureBox4";
    ((XRControl) this.xrPictureBox4).SizeF = new SizeF(230.8108f, 55.02027f);
    this.xrPictureBox4.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrPictureBox4).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel1).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel1).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(291.4855f, 17.2083f);
    this.xrLabel1.Multiline = true;
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(291.8377f, 31.97007f);
    ((XRControl) this.xrLabel1).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Dirección de Rentas - Municipalidad de Guaymallén\r\nLibertad 720, Villa Nueva - CUIT 30-99914707-7\r\n";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrPanel2).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel2).CanGrow = false;
    ((XRControl) this.xrPanel2).Controls.AddRange(new XRControl[7]
    {
      (XRControl) this.xrLabel18,
      (XRControl) this.xrLabel17,
      (XRControl) this.xrLabel16,
      (XRControl) this.xrLabel15,
      (XRControl) this.xrLabel14,
      (XRControl) this.xrBarCode1,
      (XRControl) this.xrLabel2
    });
    ((XRControl) this.xrPanel2).LocationFloat = new PointFloat(596.8029f, 1.269337f);
    ((XRControl) this.xrPanel2).Name = "xrPanel2";
    ((XRControl) this.xrPanel2).SizeF = new SizeF(180.14f, 136f);
    ((XRControl) this.xrPanel2).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel18).Font = new Font("Calibri", 6f);
    ((XRControl) this.xrLabel18).LocationFloat = new PointFloat(36.94846f, 6.759462f);
    this.xrLabel18.Multiline = true;
    ((XRControl) this.xrLabel18).Name = "xrLabel18";
    ((XRControl) this.xrLabel18).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel18).SizeF = new SizeF(20f, 43f);
    ((XRControl) this.xrLabel18).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel18).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel18).Text = "CO\r\nOF\r\nRI\r\nRC";
    ((XRControl) this.xrLabel18).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel17).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel17).Font = new Font("Calibri", 6f);
    ((XRControl) this.xrLabel17).LocationFloat = new PointFloat(57.94646f, 34.17838f);
    ((XRControl) this.xrLabel17).Name = "xrLabel17";
    ((XRControl) this.xrLabel17).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel17).SizeF = new SizeF(87.6296f, 13.70946f);
    ((XRControl) this.xrLabel17).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel17).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel17).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel17).Text = "CUIT : 30-99914707-7";
    ((XRControl) this.xrLabel17).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel16).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel16).Font = new Font("Calibri", 6f);
    ((XRControl) this.xrLabel16).LocationFloat = new PointFloat(57.90589f, 20.46892f);
    ((XRControl) this.xrLabel16).Name = "xrLabel16";
    ((XRControl) this.xrLabel16).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel16).SizeF = new SizeF(87.67014f, 13.70946f);
    ((XRControl) this.xrLabel16).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel16).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel16).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel16).Text = "CT A CT E N° 17438";
    ((XRControl) this.xrLabel16).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel15).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel15).Font = new Font("Calibri", 6f);
    ((XRControl) this.xrLabel15).LocationFloat = new PointFloat(57.88976f, 6.759462f);
    ((XRControl) this.xrLabel15).Name = "xrLabel15";
    ((XRControl) this.xrLabel15).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel15).SizeF = new SizeF(87.74498f, 13.70946f);
    ((XRControl) this.xrLabel15).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel15).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel15).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel15).Text = "F RANQ UEO A PAG AR";
    ((XRControl) this.xrLabel15).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel14).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel14).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Barrita")
    });
    ((XRControl) this.xrLabel14).Font = new Font("Calibri", 8f);
    ((XRControl) this.xrLabel14).LocationFloat = new PointFloat(38.91338f, 93.98499f);
    ((XRControl) this.xrLabel14).Name = "xrLabel14";
    ((XRControl) this.xrLabel14).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel14).SizeF = new SizeF(100f, 12f);
    ((XRControl) this.xrLabel14).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel14).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel14).TextAlignment = (TextAlignment) 2;
    this.xrBarCode1.AutoModule = true;
    ((XRControl) this.xrBarCode1).Borders = (BorderSide) 0;
    ((XRControl) this.xrBarCode1).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Barrita")
    });
    ((XRControl) this.xrBarCode1).Font = new Font("Trebuchet MS", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrBarCode1).LocationFloat = new PointFloat(20.29796f, 63.77975f);
    this.xrBarCode1.Module = 0.984252f;
    ((XRControl) this.xrBarCode1).Name = "xrBarCode1";
    ((XRControl) this.xrBarCode1).Padding = new PaddingInfo(10, 10, 0, 0, 100f);
    this.xrBarCode1.ShowText = false;
    ((XRControl) this.xrBarCode1).SizeF = new SizeF(140f, 28.20522f);
    ((XRControl) this.xrBarCode1).StylePriority.UseBorders = false;
    ((XRControl) this.xrBarCode1).StylePriority.UseFont = false;
    ((XRControl) this.xrBarCode1).StylePriority.UseTextAlignment = false;
    ((BarCodeGeneratorBase) interleaved2of5Generator).CalcCheckSum = false;
    interleaved2of5Generator.WideNarrowRatio = 3f;
    this.xrBarCode1.Symbology = (BarCodeGeneratorBase) interleaved2of5Generator;
    ((XRControl) this.xrBarCode1).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel2).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel2).Font = new Font("Calibri", 6f);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(37.00733f, 49.75946f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(108.5686f, 12.02027f);
    ((XRControl) this.xrLabel2).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Devolver a Admisión Mendoza";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel3).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel3).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(2.46f, 71.26935f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(451.5988f, 19f);
    ((XRControl) this.xrLabel3).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "TASAS POR SERVICIOS";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel4).Borders = (BorderSide) 14;
    ((XRControl) this.xrLabel4).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(454.4408f, 71.26935f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(60.90613f, 19f);
    ((XRControl) this.xrLabel4).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "Orden:";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel5).Borders = (BorderSide) 14;
    ((XRControl) this.xrLabel5).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "OrdeLita")
    });
    ((XRControl) this.xrLabel5).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(515.3469f, 71.26935f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(81.45587f, 19f);
    ((XRControl) this.xrLabel5).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).Text = "xrLabel5";
    ((XRControl) this.xrLabel6).BackColor = Color.LightGray;
    ((XRControl) this.xrLabel6).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel6).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(2.45996f, 90.26936f);
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(63.5f, 46.99993f);
    ((XRControl) this.xrLabel6).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel6).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "PADRÓN";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel7).BackColor = Color.LightGray;
    ((XRControl) this.xrLabel7).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel7).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "CodiInmu")
    });
    ((XRControl) this.xrLabel7).Font = new Font("Arial", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(65.96999f, 90.26936f);
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(63.40001f, 46.99993f);
    ((XRControl) this.xrLabel7).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel7).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel7).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel7).Text = "xrLabel7";
    ((XRControl) this.xrLabel7).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel8).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel8).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel8).LocationFloat = new PointFloat(129.5097f, 90.26936f);
    ((XRControl) this.xrLabel8).Name = "xrLabel8";
    ((XRControl) this.xrLabel8).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel8).SizeF = new SizeF(56.17365f, 47.00007f);
    ((XRControl) this.xrLabel8).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel8).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel8).Text = "Titular:";
    ((XRControl) this.xrLabel8).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel9).Borders = (BorderSide) 7;
    ((XRControl) this.xrLabel9).CanGrow = false;
    ((XRControl) this.xrLabel9).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "DetaPers")
    });
    ((XRControl) this.xrLabel9).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(185.7004f, 90.2693f);
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(411.1024f, 16f);
    ((XRControl) this.xrLabel9).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel9).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel9).Text = "xrLabel9";
    this.xrLabel9.TextFitMode = (TextFitMode) 2;
    ((XRControl) this.xrLabel10).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel10).Font = new Font("Calibri", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel10).LocationFloat = new PointFloat(2.46f, 137.2693f);
    this.xrLabel10.Multiline = true;
    ((XRControl) this.xrLabel10).Name = "xrLabel10";
    ((XRControl) this.xrLabel10).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel10).SizeF = new SizeF(63.5f, 50f);
    ((XRControl) this.xrLabel10).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel10).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel10).Text = "Domicilio\r\nPostal:";
    ((XRControl) this.xrLabel10).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel11).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel11).CanGrow = false;
    ((XRControl) this.xrLabel11).Font = new Font("Calibri", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel11).LocationFloat = new PointFloat(65.97003f, 137.2693f);
    this.xrLabel11.Multiline = true;
    ((XRControl) this.xrLabel11).Name = "xrLabel11";
    ((XRControl) this.xrLabel11).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel11).SizeF = new SizeF(530.8329f, 49.99998f);
    ((XRControl) this.xrLabel11).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel11).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel11).Text = "Calle: [CallLita] Nro: [NucaLita] Barrio: [BarrLita] Mza: [ManzLita] Casa: [CasaLita][UbicLita]\r\nLoc: [LocaLita] CP: [CopoLita]";
    this.xrLabel11.TextFitMode = (TextFitMode) 2;
    ((XRControl) this.xrLabel12).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel12).Font = new Font("Calibri", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel12).LocationFloat = new PointFloat(2.46f, 187.2693f);
    this.xrLabel12.Multiline = true;
    ((XRControl) this.xrLabel12).Name = "xrLabel12";
    ((XRControl) this.xrLabel12).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel12).SizeF = new SizeF(63.5f, 72f);
    ((XRControl) this.xrLabel12).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel12).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel12).Text = "Domicilio Real:";
    ((XRControl) this.xrLabel12).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel13).Borders = (BorderSide) 13;
    ((XRControl) this.xrLabel13).CanGrow = false;
    ((XRControl) this.xrLabel13).Font = new Font("Calibri", 9f);
    ((XRControl) this.xrLabel13).LocationFloat = new PointFloat(65.96662f, 187.2693f);
    this.xrLabel13.Multiline = true;
    ((XRControl) this.xrLabel13).Name = "xrLabel13";
    ((XRControl) this.xrLabel13).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel13).SizeF = new SizeF(530.8362f, 72f);
    ((XRControl) this.xrLabel13).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel13).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel13).Text = "Calle: [CallLitaReal] Nro: [NucaLitaReal] Barrio: [BarrLitaReal] Mza: [ManzLitaReal]\r\nCasa: [CasaLitaReal][UbicLitaReal]\r\nLoc: [LocaLitaReal] CP: [CopoLitaReal]\r\nNomenclatura catastral: [NomeLita]";
    this.xrLabel13.TextFitMode = (TextFitMode) 2;
    this.xrBarCode2.Alignment = (TextAlignment) 32 /*0x20*/;
    this.xrBarCode2.AutoModule = true;
    ((XRControl) this.xrBarCode2).Borders = (BorderSide) 15;
    ((XRControl) this.xrBarCode2).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "DireccionQr")
    });
    ((XRControl) this.xrBarCode2).LocationFloat = new PointFloat(617.0241f, 198.0417f);
    ((XRControl) this.xrBarCode2).Name = "xrBarCode2";
    ((XRControl) this.xrBarCode2).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    this.xrBarCode2.ShowText = false;
    ((XRControl) this.xrBarCode2).SizeF = new SizeF(159.8f, 153f);
    ((XRControl) this.xrBarCode2).StylePriority.UseBorders = false;
    ((XRControl) this.xrBarCode2).StylePriority.UsePadding = false;
    ((XRControl) this.xrBarCode2).StylePriority.UseTextAlignment = false;
    qrCodeGenerator1.CompactionMode = (QRCodeCompactionMode) 2;
    qrCodeGenerator1.Version = (QRCodeVersion) 1;
    this.xrBarCode2.Symbology = (BarCodeGeneratorBase) qrCodeGenerator1;
    ((XRControl) this.xrBarCode2).TextAlignment = (TextAlignment) 512 /*0x0200*/;
    ((XRControl) this.PageFooter).Controls.AddRange(new XRControl[5]
    {
      (XRControl) this.xrBarCode2,
      (XRControl) this.xrRichText3,
      (XRControl) this.xrPictureBox2,
      (XRControl) this.xrPictureBox1,
      (XRControl) this.xrPictureBox7
    });
    ((XRControl) this.PageFooter).HeightF = 351.0417f;
    ((XRControl) this.PageFooter).Name = "PageFooter";
    ((XRControl) this.xrRichText3).Borders = (BorderSide) 15;
    ((XRControl) this.xrRichText3).Font = new Font("Arial", 8f);
    ((XRControl) this.xrRichText3).LocationFloat = new PointFloat(2.000003f, 198.04f);
    ((XRControl) this.xrRichText3).Name = "xrRichText3";
    ((XRRichTextBase) this.xrRichText3).SerializableRtfString = componentResourceManager.GetString("xrRichText3.SerializableRtfString");
    ((XRControl) this.xrRichText3).SizeF = new SizeF(382.0335f, 153.0017f);
    ((XRControl) this.xrRichText3).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText3).StylePriority.UseFont = false;
    ((XRControl) this.xrPictureBox2).Borders = (BorderSide) 10;
    this.xrPictureBox2.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox2.ImageSource"));
    ((XRControl) this.xrPictureBox2).LocationFloat = new PointFloat(384.46f, 198.0417f);
    ((XRControl) this.xrPictureBox2).Name = "xrPictureBox2";
    ((XRControl) this.xrPictureBox2).SizeF = new SizeF(232.56f, 153f);
    this.xrPictureBox2.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrPictureBox2).StylePriority.UseBorders = false;
    this.xrPictureBox1.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox1.ImageSource"));
    ((XRControl) this.xrPictureBox1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrPictureBox1).Name = "xrPictureBox1";
    ((XRControl) this.xrPictureBox1).SizeF = new SizeF(779.9999f, 201.0417f);
    this.xrPictureBox1.Sizing = (ImageSizeMode) 1;
    this.xrPictureBox7.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox7.ImageSource"));
    ((XRControl) this.xrPictureBox7).LocationFloat = new PointFloat(9.999989f, 287.7604f);
    ((XRControl) this.xrPictureBox7).Name = "xrPictureBox7";
    ((XRControl) this.xrPictureBox7).SizeF = new SizeF(311.3445f, 31.72269f);
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[18]
    {
      (XRControl) this.xrPanel5,
      (XRControl) this.xrLabel23,
      (XRControl) this.xrLabel20,
      (XRControl) this.xrLabel13,
      (XRControl) this.xrPanel4,
      (XRControl) this.xrPanel1,
      (XRControl) this.xrPanel2,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel7,
      (XRControl) this.xrLabel8,
      (XRControl) this.xrLabel9,
      (XRControl) this.xrLabel10,
      (XRControl) this.xrLabel11,
      (XRControl) this.xrLabel12,
      (XRControl) this.xrPanel3
    });
    ((XRControl) this.PageHeader).HeightF = 489.2693f;
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((XRControl) this.xrPanel5).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel5).CanGrow = false;
    ((XRControl) this.xrPanel5).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrLabel21,
      (XRControl) this.xrBarCode3
    });
    ((XRControl) this.xrPanel5).LocationFloat = new PointFloat(596.8029f, 137.2693f);
    ((XRControl) this.xrPanel5).Name = "xrPanel5";
    ((XRControl) this.xrPanel5).SizeF = new SizeF(180.2f, 122f);
    ((XRControl) this.xrPanel5).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel21).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel21).Font = new Font("Calibri", 8f, FontStyle.Bold);
    ((XRControl) this.xrLabel21).LocationFloat = new PointFloat(2.447083f, 39.44637f);
    this.xrLabel21.Multiline = true;
    ((XRControl) this.xrLabel21).Name = "xrLabel21";
    ((XRControl) this.xrLabel21).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel21).SizeF = new SizeF(60f, 33.25005f);
    ((XRControl) this.xrLabel21).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel21).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel21).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel21).Text = "PAGO SIN \r\nFACTURA";
    ((XRControl) this.xrLabel21).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrBarCode3.AutoModule = true;
    ((XRControl) this.xrBarCode3).Borders = (BorderSide) 0;
    ((XRControl) this.xrBarCode3).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "EpagosQrVinc")
    });
    ((XRControl) this.xrBarCode3).LocationFloat = new PointFloat(63.44708f, 10.99995f);
    ((XRControl) this.xrBarCode3).Name = "xrBarCode3";
    ((XRControl) this.xrBarCode3).Padding = new PaddingInfo(10, 10, 0, 0, 100f);
    this.xrBarCode3.ShowText = false;
    ((XRControl) this.xrBarCode3).SizeF = new SizeF(111f, 96f);
    ((XRControl) this.xrBarCode3).StylePriority.UseBorders = false;
    qrCodeGenerator2.CompactionMode = (QRCodeCompactionMode) 2;
    qrCodeGenerator2.Logo = new ImageSource("img", componentResourceManager.GetString("qrCodeGenerator2.Logo"));
    qrCodeGenerator2.Version = (QRCodeVersion) 1;
    this.xrBarCode3.Symbology = (BarCodeGeneratorBase) qrCodeGenerator2;
    ((XRControl) this.xrLabel23).Borders = (BorderSide) 13;
    ((XRControl) this.xrLabel23).CanGrow = false;
    ((XRControl) this.xrLabel23).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Fiduciario")
    });
    ((XRControl) this.xrLabel23).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel23).LocationFloat = new PointFloat(185.6833f, 121.2694f);
    ((XRControl) this.xrLabel23).Name = "xrLabel23";
    ((XRControl) this.xrLabel23).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel23).SizeF = new SizeF(411.1196f, 16.00001f);
    ((XRControl) this.xrLabel23).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel23).StylePriority.UseFont = false;
    this.xrLabel23.TextFitMode = (TextFitMode) 2;
    ((XRControl) this.xrLabel20).Borders = (BorderSide) 5;
    ((XRControl) this.xrLabel20).CanGrow = false;
    ((XRControl) this.xrLabel20).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Vinculo")
    });
    ((XRControl) this.xrLabel20).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel20).LocationFloat = new PointFloat(185.6833f, 106.2692f);
    ((XRControl) this.xrLabel20).Name = "xrLabel20";
    ((XRControl) this.xrLabel20).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel20).SizeF = new SizeF(411.1196f, 15.99999f);
    ((XRControl) this.xrLabel20).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel20).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel20).Text = "xrLabel20";
    this.xrLabel20.TextFitMode = (TextFitMode) 2;
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[2]
    {
      (Band) this.Detail1,
      (Band) this.GroupHeader1
    });
    ((XtraReportBase) this.DetailReport).DataMember = "cupones";
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((Band) this.DetailReport).PageBreak = (PageBreak) 3;
    ((XRControl) this.Detail1).HeightF = 0.0f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrSubreport1
    });
    this.GroupHeader1.GroupUnion = (GroupUnion) 1;
    ((XRControl) this.GroupHeader1).HeightF = 13.95832f;
    ((XRControl) this.GroupHeader1).KeepTogether = true;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.GroupHeader1).BeforePrint += new PrintEventHandler(this.GroupHeader1_BeforePrint);
    ((XRControl) this.xrSubreport1).LocationFloat = new PointFloat(2.45978f, 0.0f);
    ((XRControl) this.xrSubreport1).Name = "xrSubreport1";
    ((SubreportBase) this.xrSubreport1).ReportSource = (XtraReport) new Cupones();
    ((XRControl) this.xrSubreport1).SizeF = new SizeF(774f, 13.95832f);
    this.objectDataSource1.DataSource = (object) typeof (DTOTasasRepo);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    this.PoseeDeuda.Condition = "[Deuda] > 0";
    this.PoseeDeuda.Formatting.Visible = (DefaultBoolean) 0;
    this.PoseeDeuda.Name = "PoseeDeuda";
    this.NoPoseeDeuda.Condition = "[Deuda] == 0";
    this.NoPoseeDeuda.Formatting.Visible = (DefaultBoolean) 0;
    this.NoPoseeDeuda.Name = "NoPoseeDeuda";
    ((XRControl) this.GroupFooter1).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrPictureBox6,
      (XRControl) this.xrPictureBox5,
      (XRControl) this.xrLabel19
    });
    ((XRControl) this.GroupFooter1).HeightF = 25f;
    ((XRControl) this.GroupFooter1).Name = "GroupFooter1";
    ((GroupBand) this.GroupFooter1).RepeatEveryPage = true;
    ((XRControl) this.GroupFooter1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.GroupFooter1).TextAlignment = (TextAlignment) 2;
    this.xrPictureBox6.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox6.ImageSource"));
    ((XRControl) this.xrPictureBox6).LocationFloat = new PointFloat(507.302f, 1.999992f);
    ((XRControl) this.xrPictureBox6).Name = "xrPictureBox6";
    ((XRControl) this.xrPictureBox6).SizeF = new SizeF(14f, 13f);
    this.xrPictureBox6.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrPictureBox5).Borders = (BorderSide) 0;
    this.xrPictureBox5.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox5.ImageSource"));
    ((XRControl) this.xrPictureBox5).LocationFloat = new PointFloat(433.9265f, 1.999995f);
    ((XRControl) this.xrPictureBox5).Name = "xrPictureBox5";
    ((XRControl) this.xrPictureBox5).SizeF = new SizeF(13f, 13f);
    this.xrPictureBox5.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrPictureBox5).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel19).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel19).Font = new Font("Arial", 8.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel19).LocationFloat = new PointFloat(2.426491f, 0.0f);
    this.xrLabel19.Multiline = true;
    ((XRControl) this.xrLabel19).Name = "xrLabel19";
    ((XRControl) this.xrLabel19).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel19).SizeF = new SizeF(774.6751f, 25f);
    ((XRControl) this.xrLabel19).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel19).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel19).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel19).Text = "¡ADHERITE A TU DOMICILIO FISCAL ELECTRÓNICO!  Podes hacerlo      4498225 /      sistema.integrado@guaymallen.gob.ar";
    ((XRControl) this.xrLabel19).TextAlignment = (TextAlignment) 2;
    this.dpiAwareImageCollection1.Stream = (DPIAwareImageCollectionStreamer) componentResourceManager.GetObject("dpiAwareImageCollection1.Stream");
    ((XtraReportBase) this).Bands.AddRange(new Band[7]
    {
      (Band) this.Detail,
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.PageFooter,
      (Band) this.PageHeader,
      (Band) this.DetailReport,
      (Band) this.GroupFooter1
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    this.FormattingRuleSheet.AddRange(new FormattingRule[3]
    {
      this.formattingRule1,
      this.PoseeDeuda,
      this.NoPoseeDeuda
    });
    this.Margins = new Margins(22, 25, 10, 38);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Version = "21.2";
    ((ISupportInitialize) this.xrRichText1).EndInit();
    ((ISupportInitialize) this.xrRichText2).EndInit();
    ((ISupportInitialize) this.xrRichText3).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this.filteringUIContext1).EndInit();
    ((ISupportInitialize) this.dpiAwareImageCollection1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
