// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioGuay.irepBoletoComenterioGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraPrinting.BarCode;
using DevExpress.XtraPrinting.Drawing;
using DevExpress.XtraReports.Expressions;
using DevExpress.XtraReports.UI;
using InfoGov.Plugins.Recaudacion.Reportes.Tasas;
using InfoGov.Reports;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioGuay;

public class irepBoletoComenterioGuay : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private PageHeaderBand PageHeader;
  private XRPanel xrPanel2;
  private XRLabel xrLabel18;
  private XRLabel xrLabel17;
  private XRLabel xrLabel16;
  private XRLabel xrLabel15;
  private XRLabel xrLabel14;
  private XRBarCode xrBarCode1;
  private XRLabel xrLabel2;
  private XRLabel xrLabel12;
  private XRLabel xrLabel11;
  private XRLabel xrLabel10;
  private XRLabel xrLabel9;
  private XRLabel xrLabel8;
  private XRLabel xrLabel7;
  private XRLabel xrLabel6;
  private XRLabel xrLabel5;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private XRLabel xrLabel13;
  private XRLabel xrLabel20;
  private XRPanel xrPanel1;
  private XRLabel xrLabel21;
  private XRBarCode xrBarCode3;
  private PageFooterBand PageFooter;
  private XRRichText xrRichText3;
  private XRBarCode xrBarCode2;
  private XRPanel xrPanel3;
  private XRLabel xrLabel22;
  private XRRichText xrRichText2;
  private XRPanel xrPanel4;
  private XRRichText xrRichText1;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private XRSubreport xrSubreport1;
  private GroupHeaderBand GroupHeader1;
  private XRPictureBox xrPictureBox4;
  private XRLabel xrLabel1;
  private XRPanel xrPanel5;
  private XRPictureBox xrPictureBox2;
  private XRPictureBox xrPictureBox7;
  private ObjectDataSource objectDataSource1;

  public irepBoletoComenterioGuay()
    : base(nameof (irepBoletoComenterioGuay), "Boleto Cementerio")
  {
    this.InitializeComponent();
  }

  private void GroupHeader1_BeforePrint(object sender, PrintEventArgs e)
  {
    ((XtraReportBase) ((SubreportBase) this.xrSubreport1).ReportSource).DataSource = (object) ((DTOBoletoCementerioGuay) ((XtraReportBase) this).GetCurrentRow()).cupones;
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
    QRCodeGenerator qrCodeGenerator1 = new QRCodeGenerator();
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (irepBoletoComenterioGuay));
    Interleaved2of5Generator interleaved2of5Generator = new Interleaved2of5Generator();
    QRCodeGenerator qrCodeGenerator2 = new QRCodeGenerator();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.PageHeader = new PageHeaderBand();
    this.xrPanel5 = new XRPanel();
    this.xrLabel21 = new XRLabel();
    this.xrBarCode3 = new XRBarCode();
    this.xrPanel3 = new XRPanel();
    this.xrLabel22 = new XRLabel();
    this.xrRichText2 = new XRRichText();
    this.xrPanel4 = new XRPanel();
    this.xrRichText1 = new XRRichText();
    this.xrPanel1 = new XRPanel();
    this.xrPictureBox4 = new XRPictureBox();
    this.xrLabel1 = new XRLabel();
    this.xrLabel12 = new XRLabel();
    this.xrLabel11 = new XRLabel();
    this.xrLabel10 = new XRLabel();
    this.xrLabel9 = new XRLabel();
    this.xrLabel8 = new XRLabel();
    this.xrLabel7 = new XRLabel();
    this.xrLabel6 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrLabel13 = new XRLabel();
    this.xrLabel20 = new XRLabel();
    this.xrPanel2 = new XRPanel();
    this.xrLabel18 = new XRLabel();
    this.xrLabel17 = new XRLabel();
    this.xrLabel16 = new XRLabel();
    this.xrLabel15 = new XRLabel();
    this.xrLabel14 = new XRLabel();
    this.xrBarCode1 = new XRBarCode();
    this.xrLabel2 = new XRLabel();
    this.PageFooter = new PageFooterBand();
    this.xrPictureBox7 = new XRPictureBox();
    this.xrPictureBox2 = new XRPictureBox();
    this.xrRichText3 = new XRRichText();
    this.xrBarCode2 = new XRBarCode();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrSubreport1 = new XRSubreport();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrRichText2).BeginInit();
    ((ISupportInitialize) this.xrRichText1).BeginInit();
    ((ISupportInitialize) this.xrRichText3).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 11f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 35f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).HeightF = 0.0f;
    ((XRControl) this.Detail).KeepTogether = true;
    this.Detail.KeepTogetherWithDetailReports = true;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[17]
    {
      (XRControl) this.xrPanel5,
      (XRControl) this.xrPanel3,
      (XRControl) this.xrPanel4,
      (XRControl) this.xrPanel1,
      (XRControl) this.xrLabel12,
      (XRControl) this.xrLabel11,
      (XRControl) this.xrLabel10,
      (XRControl) this.xrLabel9,
      (XRControl) this.xrLabel8,
      (XRControl) this.xrLabel7,
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLabel13,
      (XRControl) this.xrLabel20,
      (XRControl) this.xrPanel2
    });
    ((XRControl) this.PageHeader).HeightF = 474.9659f;
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((XRControl) this.xrPanel5).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel5).CanGrow = false;
    ((XRControl) this.xrPanel5).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrLabel21,
      (XRControl) this.xrBarCode3
    });
    ((XRControl) this.xrPanel5).LocationFloat = new PointFloat(614.5977f, 137.2693f);
    ((XRControl) this.xrPanel5).Name = "xrPanel5";
    ((XRControl) this.xrPanel5).SizeF = new SizeF(162.4f, 112.6965f);
    ((XRControl) this.xrPanel5).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel21).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel21).Font = new Font("Calibri", 8f, FontStyle.Bold);
    ((XRControl) this.xrLabel21).LocationFloat = new PointFloat(4.402283f, 32.69647f);
    this.xrLabel21.Multiline = true;
    ((XRControl) this.xrLabel21).Name = "xrLabel21";
    ((XRControl) this.xrLabel21).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel21).SizeF = new SizeF(51.0528f, 38.17363f);
    ((XRControl) this.xrLabel21).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel21).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel21).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel21).Text = "PAGO SIN \r\nFACTURA";
    ((XRControl) this.xrLabel21).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrBarCode3.AutoModule = true;
    ((XRControl) this.xrBarCode3).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrBarCode3).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[EpagosQrVinc]")
    });
    ((XRControl) this.xrBarCode3).LocationFloat = new PointFloat(51.0528f, 10f);
    ((XRControl) this.xrBarCode3).Name = "xrBarCode3";
    ((XRControl) this.xrBarCode3).Padding = new PaddingInfo(10, 10, 0, 0, 100f);
    this.xrBarCode3.ShowText = false;
    ((XRControl) this.xrBarCode3).SizeF = new SizeF(108.6836f, 92.69652f);
    ((XRControl) this.xrBarCode3).StylePriority.UseBorders = false;
    ((XRControl) this.xrBarCode3).StylePriority.UseTextAlignment = false;
    qrCodeGenerator1.CompactionMode = (QRCodeCompactionMode) 2;
    qrCodeGenerator1.Logo = new ImageSource("img", componentResourceManager.GetString("qrCodeGenerator1.Logo"));
    qrCodeGenerator1.Version = (QRCodeVersion) 1;
    this.xrBarCode3.Symbology = (BarCodeGeneratorBase) qrCodeGenerator1;
    ((XRControl) this.xrBarCode3).TextAlignment = (TextAlignment) 512 /*0x0200*/;
    ((XRControl) this.xrPanel3).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel3).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrLabel22,
      (XRControl) this.xrRichText2
    });
    ((XRControl) this.xrPanel3).LocationFloat = new PointFloat(2.459991f, 249.9658f);
    ((XRControl) this.xrPanel3).Name = "xrPanel3";
    ((XRControl) this.xrPanel3).SizeF = new SizeF(389.89f, 225f);
    ((XRControl) this.xrPanel3).StylePriority.UseBorders = false;
    this.xrLabel22.AutoWidth = true;
    ((XRControl) this.xrLabel22).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel22).CanGrow = false;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel22).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DeudLicoStr]")
    });
    ((XRControl) this.xrLabel22).Font = new Font("Arial", 8f);
    ((XRControl) this.xrLabel22).LocationFloat = new PointFloat(7.000045f, 99.97514f);
    this.xrLabel22.Multiline = true;
    ((XRControl) this.xrLabel22).Name = "xrLabel22";
    ((XRControl) this.xrLabel22).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.xrLabel22).SizeF = new SizeF(374.9999f, 110.0249f);
    ((XRControl) this.xrLabel22).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel22).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel22).StylePriority.UsePadding = false;
    ((XRControl) this.xrLabel22).Text = "xrLabel22";
    ((XRControl) this.xrRichText2).Borders = (BorderSide) 0;
    ((XRControl) this.xrRichText2).CanGrow = false;
    ((XRControl) this.xrRichText2).Font = new Font("Arial", 8f);
    ((XRControl) this.xrRichText2).LocationFloat = new PointFloat(7.000013f, 4.999985f);
    ((XRControl) this.xrRichText2).Name = "xrRichText2";
    ((XRRichTextBase) this.xrRichText2).SerializableRtfString = componentResourceManager.GetString("xrRichText2.SerializableRtfString");
    ((XRControl) this.xrRichText2).SizeF = new SizeF(375f, 94.97516f);
    ((XRControl) this.xrRichText2).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText2).StylePriority.UseFont = false;
    ((XRControl) this.xrPanel4).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel4).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrRichText1
    });
    ((XRControl) this.xrPanel4).LocationFloat = new PointFloat(392.7f, 249.9659f);
    ((XRControl) this.xrPanel4).Name = "xrPanel4";
    ((XRControl) this.xrPanel4).SizeF = new SizeF(384.3f, 225f);
    ((XRControl) this.xrPanel4).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText1).Borders = (BorderSide) 0;
    ((XRControl) this.xrRichText1).CanGrow = false;
    ((XRControl) this.xrRichText1).CanShrink = true;
    ((XRControl) this.xrRichText1).Font = new Font("Arial", 8f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrRichText1).LocationFloat = new PointFloat(10.12494f, 4.999893f);
    ((XRControl) this.xrRichText1).Name = "xrRichText1";
    ((XRRichTextBase) this.xrRichText1).SerializableRtfString = componentResourceManager.GetString("xrRichText1.SerializableRtfString");
    ((XRControl) this.xrRichText1).SizeF = new SizeF(367.3234f, 210.9832f);
    ((XRControl) this.xrRichText1).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText1).StylePriority.UseFont = false;
    ((XRControl) this.xrPanel1).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel1).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrPictureBox4,
      (XRControl) this.xrLabel1
    });
    ((XRControl) this.xrPanel1).LocationFloat = new PointFloat(2.460004f, 0.0f);
    ((XRControl) this.xrPanel1).Name = "xrPanel1";
    ((XRControl) this.xrPanel1).SizeF = new SizeF(612.1377f, 81.26933f);
    ((XRControl) this.xrPanel1).StylePriority.UseBorders = false;
    ((XRControl) this.xrPictureBox4).Borders = (BorderSide) 0;
    this.xrPictureBox4.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox4.ImageSource"));
    ((XRControl) this.xrPictureBox4).LocationFloat = new PointFloat(25f, 10.75946f);
    ((XRControl) this.xrPictureBox4).Name = "xrPictureBox4";
    ((XRControl) this.xrPictureBox4).SizeF = new SizeF(230.8108f, 55.02027f);
    this.xrPictureBox4.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrPictureBox4).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel1).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel1).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(287.8108f, 18.75946f);
    this.xrLabel1.Multiline = true;
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(291.8377f, 31.80001f);
    ((XRControl) this.xrLabel1).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Dirección de Rentas - Municipalidad de Guaymallén\r\nLibertad 720, Villa Nueva - CUIT 30-99914707-7";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrLabel12).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel12).Font = new Font("Calibri", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel12).LocationFloat = new PointFloat(2.460003f, 177.9658f);
    this.xrLabel12.Multiline = true;
    ((XRControl) this.xrLabel12).Name = "xrLabel12";
    ((XRControl) this.xrLabel12).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel12).SizeF = new SizeF(63.5f, 72f);
    ((XRControl) this.xrLabel12).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel12).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel12).Text = "Domicilio Real:";
    ((XRControl) this.xrLabel12).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel11).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel11).CanGrow = false;
    ((XRControl) this.xrLabel11).Font = new Font("Calibri", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel11).LocationFloat = new PointFloat(65.97001f, 137.2693f);
    this.xrLabel11.Multiline = true;
    ((XRControl) this.xrLabel11).Name = "xrLabel11";
    ((XRControl) this.xrLabel11).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel11).SizeF = new SizeF(548.6276f, 40.69646f);
    ((XRControl) this.xrLabel11).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel11).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel11).Text = "Calle: [CallLico] Nro: [NucaLico] Barrio: [BarrLico] Mza: [ManzLico] Casa: [CasaLico][UbicLico]\r\nLoc: [LocaLico] CP: [CopoLico]";
    this.xrLabel11.TextFitMode = (TextFitMode) 2;
    ((XRControl) this.xrLabel10).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel10).Font = new Font("Calibri", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel10).LocationFloat = new PointFloat(2.460003f, 137.2693f);
    this.xrLabel10.Multiline = true;
    ((XRControl) this.xrLabel10).Name = "xrLabel10";
    ((XRControl) this.xrLabel10).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel10).SizeF = new SizeF(63.5f, 40.69645f);
    ((XRControl) this.xrLabel10).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel10).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel10).Text = "Domicilio\r\nPostal:";
    ((XRControl) this.xrLabel10).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel9).Borders = (BorderSide) 7;
    ((XRControl) this.xrLabel9).CanGrow = false;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel9).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaPers]")
    });
    ((XRControl) this.xrLabel9).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(185.7004f, 100.2693f);
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(428.8973f, 18.99999f);
    ((XRControl) this.xrLabel9).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel9).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel9).Text = "xrLabel9";
    this.xrLabel9.TextFitMode = (TextFitMode) 2;
    ((XRControl) this.xrLabel8).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel8).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel8).LocationFloat = new PointFloat(129.5097f, 100.2694f);
    ((XRControl) this.xrLabel8).Name = "xrLabel8";
    ((XRControl) this.xrLabel8).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel8).SizeF = new SizeF(56.17366f, 37f);
    ((XRControl) this.xrLabel8).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel8).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel8).Text = "Titular:";
    ((XRControl) this.xrLabel8).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel7).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodiCome]")
    });
    ((XRControl) this.xrLabel7).Font = new Font("Arial", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(65.96999f, 100.2693f);
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(63.4f, 37f);
    ((XRControl) this.xrLabel7).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel7).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel7).Text = "xrLabel7";
    ((XRControl) this.xrLabel7).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel6).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel6).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(2.46f, 100.2693f);
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(63.5f, 37f);
    ((XRControl) this.xrLabel6).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "Cuenta:";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel5).Borders = (BorderSide) 14;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[OrdeLico]")
    });
    ((XRControl) this.xrLabel5).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(515.3469f, 81.26933f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(99.25079f, 19f);
    ((XRControl) this.xrLabel5).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).Text = "xrLabel5";
    ((XRControl) this.xrLabel4).Borders = (BorderSide) 14;
    ((XRControl) this.xrLabel4).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(454.4408f, 81.26933f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(60.90613f, 19f);
    ((XRControl) this.xrLabel4).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "Orden:";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel3).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel3).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(2.46f, 81.26933f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(451.5988f, 19f);
    ((XRControl) this.xrLabel3).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "DERECHOS DE COMERCIO";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel13).Borders = (BorderSide) 13;
    ((XRControl) this.xrLabel13).CanGrow = false;
    ((XRControl) this.xrLabel13).Font = new Font("Calibri", 9f);
    ((XRControl) this.xrLabel13).LocationFloat = new PointFloat(65.96664f, 177.9658f);
    this.xrLabel13.Multiline = true;
    ((XRControl) this.xrLabel13).Name = "xrLabel13";
    ((XRControl) this.xrLabel13).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel13).SizeF = new SizeF(548.631f, 72.00002f);
    ((XRControl) this.xrLabel13).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel13).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel13).Text = "Calle: [CallLicoReal] Nro: [NucaLicoReal] Barrio: [BarrLicoReal] Mza: [ManzLicoReal]\r\nCasa: [CasaLicoReal][UbicLicoReal]\r\nLoc: [LocaLicoReal] CP: [CopoLicoReal]\r\n";
    this.xrLabel13.TextFitMode = (TextFitMode) 2;
    ((XRControl) this.xrLabel20).Borders = (BorderSide) 13;
    ((XRControl) this.xrLabel20).CanGrow = false;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel20).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Vinculo]")
    });
    ((XRControl) this.xrLabel20).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel20).LocationFloat = new PointFloat(185.6833f, 119.2692f);
    ((XRControl) this.xrLabel20).Name = "xrLabel20";
    ((XRControl) this.xrLabel20).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel20).SizeF = new SizeF(428.9144f, 18f);
    ((XRControl) this.xrLabel20).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel20).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel20).Text = "xrLabel20";
    this.xrLabel20.TextFitMode = (TextFitMode) 2;
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
    ((XRControl) this.xrPanel2).LocationFloat = new PointFloat(614.5977f, 0.0f);
    ((XRControl) this.xrPanel2).Name = "xrPanel2";
    ((XRControl) this.xrPanel2).SizeF = new SizeF(162.4f, 137.2692f);
    ((XRControl) this.xrPanel2).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel18).Font = new Font("Calibri", 5f);
    ((XRControl) this.xrLabel18).LocationFloat = new PointFloat(29.05278f, 10.75946f);
    this.xrLabel18.Multiline = true;
    ((XRControl) this.xrLabel18).Name = "xrLabel18";
    ((XRControl) this.xrLabel18).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel18).SizeF = new SizeF(20f, 41.7f);
    ((XRControl) this.xrLabel18).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel18).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel18).Text = "CO\r\nOF\r\nRI\r\nRC";
    ((XRControl) this.xrLabel18).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel17).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel17).Font = new Font("Calibri", 5f);
    ((XRControl) this.xrLabel17).LocationFloat = new PointFloat(49.0528f, 38.55946f);
    ((XRControl) this.xrLabel17).Name = "xrLabel17";
    ((XRControl) this.xrLabel17).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel17).SizeF = new SizeF(87.63f, 13.9f);
    ((XRControl) this.xrLabel17).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel17).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel17).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel17).Text = "CUIT : 30-99914707-7";
    ((XRControl) this.xrLabel17).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel16).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel16).Font = new Font("Calibri", 5f);
    ((XRControl) this.xrLabel16).LocationFloat = new PointFloat(49.0528f, 24.65946f);
    ((XRControl) this.xrLabel16).Name = "xrLabel16";
    ((XRControl) this.xrLabel16).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel16).SizeF = new SizeF(87.67f, 13.9f);
    ((XRControl) this.xrLabel16).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel16).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel16).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel16).Text = "CT A CT E N° 17438";
    ((XRControl) this.xrLabel16).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel15).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel15).Font = new Font("Calibri", 5f);
    ((XRControl) this.xrLabel15).LocationFloat = new PointFloat(49.0528f, 10.75946f);
    ((XRControl) this.xrLabel15).Name = "xrLabel15";
    ((XRControl) this.xrLabel15).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel15).SizeF = new SizeF(87.74f, 13.9f);
    ((XRControl) this.xrLabel15).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel15).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel15).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel15).Text = "F RANQ UEO A PAG AR";
    ((XRControl) this.xrLabel15).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel14).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Barrita]")
    });
    ((XRControl) this.xrLabel14).Font = new Font("Calibri", 8f);
    ((XRControl) this.xrLabel14).LocationFloat = new PointFloat(29.05273f, 97.98499f);
    ((XRControl) this.xrLabel14).Name = "xrLabel14";
    ((XRControl) this.xrLabel14).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel14).SizeF = new SizeF(110f, 12f);
    ((XRControl) this.xrLabel14).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel14).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel14).TextAlignment = (TextAlignment) 2;
    this.xrBarCode1.AutoModule = true;
    ((XRControl) this.xrBarCode1).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrBarCode1).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Barrita]")
    });
    ((XRControl) this.xrBarCode1).Font = new Font("Trebuchet MS", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrBarCode1).LocationFloat = new PointFloat(12.40228f, 67.77975f);
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
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(29.05273f, 52.45947f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(107.6301f, 12.02027f);
    ((XRControl) this.xrLabel2).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Devolver a Admisión Mendoza";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.PageFooter).Controls.AddRange(new XRControl[4]
    {
      (XRControl) this.xrPictureBox7,
      (XRControl) this.xrPictureBox2,
      (XRControl) this.xrRichText3,
      (XRControl) this.xrBarCode2
    });
    ((XRControl) this.PageFooter).HeightF = 136.6005f;
    ((XRControl) this.PageFooter).Name = "PageFooter";
    this.xrPictureBox7.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox7.ImageSource"));
    ((XRControl) this.xrPictureBox7).LocationFloat = new PointFloat(8.999989f, 87.7187f);
    ((XRControl) this.xrPictureBox7).Name = "xrPictureBox7";
    ((XRControl) this.xrPictureBox7).SizeF = new SizeF(311.3445f, 30f);
    ((XRControl) this.xrPictureBox2).Borders = (BorderSide) 10;
    this.xrPictureBox2.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox2.ImageSource"));
    ((XRControl) this.xrPictureBox2).LocationFloat = new PointFloat(416.4801f, 0.0f);
    ((XRControl) this.xrPictureBox2).Name = "xrPictureBox2";
    ((XRControl) this.xrPictureBox2).SizeF = new SizeF(198.1175f, 136.6005f);
    this.xrPictureBox2.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrPictureBox2).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText3).Borders = (BorderSide) 15;
    ((XRControl) this.xrRichText3).Font = new Font("Arial", 8f);
    ((XRControl) this.xrRichText3).LocationFloat = new PointFloat(2.460015f, 0.0f);
    ((XRControl) this.xrRichText3).Name = "xrRichText3";
    ((XRRichTextBase) this.xrRichText3).SerializableRtfString = componentResourceManager.GetString("xrRichText3.SerializableRtfString");
    ((XRControl) this.xrRichText3).SizeF = new SizeF(414.0201f, 136.6005f);
    ((XRControl) this.xrRichText3).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText3).StylePriority.UseFont = false;
    this.xrBarCode2.Alignment = (TextAlignment) 32 /*0x20*/;
    this.xrBarCode2.AutoModule = true;
    ((XRControl) this.xrBarCode2).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrBarCode2).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DireccionQr]")
    });
    ((XRControl) this.xrBarCode2).LocationFloat = new PointFloat(614.5977f, 0.0f);
    ((XRControl) this.xrBarCode2).Name = "xrBarCode2";
    ((XRControl) this.xrBarCode2).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    this.xrBarCode2.ShowText = false;
    ((XRControl) this.xrBarCode2).SizeF = new SizeF(159.7364f, 136.6005f);
    ((XRControl) this.xrBarCode2).StylePriority.UseBorders = false;
    ((XRControl) this.xrBarCode2).StylePriority.UsePadding = false;
    ((XRControl) this.xrBarCode2).StylePriority.UseTextAlignment = false;
    qrCodeGenerator2.CompactionMode = (QRCodeCompactionMode) 2;
    qrCodeGenerator2.Version = (QRCodeVersion) 1;
    this.xrBarCode2.Symbology = (BarCodeGeneratorBase) qrCodeGenerator2;
    ((XRControl) this.xrBarCode2).TextAlignment = (TextAlignment) 512 /*0x0200*/;
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[2]
    {
      (Band) this.Detail1,
      (Band) this.GroupHeader1
    });
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((XRControl) this.Detail1).HeightF = 0.0f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrSubreport1
    });
    ((XRControl) this.GroupHeader1).HeightF = 23f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.GroupHeader1).BeforePrint += new PrintEventHandler(this.GroupHeader1_BeforePrint);
    ((XRControl) this.xrSubreport1).LocationFloat = new PointFloat(2.460016f, 0.0f);
    ((XRControl) this.xrSubreport1).Name = "xrSubreport1";
    ((SubreportBase) this.xrSubreport1).ReportSource = (XtraReport) new CuponesComercio();
    ((XRControl) this.xrSubreport1).SizeF = new SizeF(771.8741f, 23f);
    this.objectDataSource1.DataSource = (object) typeof (DTOBoletoCementerioGuay);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this).Bands.AddRange(new Band[6]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.PageHeader,
      (Band) this.PageFooter,
      (Band) this.DetailReport
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(23, 21, 11, 35);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Version = "21.2";
    ((ISupportInitialize) this.xrRichText2).EndInit();
    ((ISupportInitialize) this.xrRichText1).EndInit();
    ((ISupportInitialize) this.xrRichText3).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
