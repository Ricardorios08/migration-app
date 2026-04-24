// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoRivadavia.irepBoletoRivadaviaInmu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraReports.Expressions;
using DevExpress.XtraReports.UI;
using InfoGov.Reports;
using InfoGov.Resources;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoRivadavia;

public class irepBoletoRivadaviaInmu : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ReportHeaderBand ReportHeader;
  private XRPanel xrPanel1;
  private XRPictureBox xrpblogo2;
  private XRPictureBox xrpblogo1;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell8;
  private XRRichText xrRichText1;
  private XRTable xrTable2;
  private XRTableRow xrTableRow3;
  private XRTableCell xrTableCell9;
  private XRTableCell xrTableCell11;
  private XRTableRow xrTableRow4;
  private XRTableCell xrTableCell12;
  private ObjectDataSource objectDataSource1;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private XRTable xrTable3;
  private XRTableRow xrTableRow13;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell13;
  private GroupFooterBand GroupFooter2;
  private XRTable xrTable4;
  private XRTableRow xrTableRow19;
  private XRTableCell xrTableCell42;
  private XRTableCell xrTableCell44;
  private XRTableRow xrTableRow20;
  private XRTableCell xrTableCell45;
  private XRTableCell xrTableCell46;
  private XRTableCell xrTableCell47;
  private XRTableRow xrTableRow21;
  private XRTableCell xrTableCell48;
  private XRTableCell xrTableCell49;
  private XRTableCell xrTableCell50;
  private XRTableRow xrTableRow22;
  private XRTableCell xrTableCell51;
  private XRTableCell xrTableCell52;
  private XRTableCell xrTableCell53;
  private XRTableRow xrTableRow23;
  private XRTableCell xrTableCell54;
  private XRTableCell xrTableCell55;
  private XRTableCell xrTableCell56;
  private XRTableRow xrTableRow24;
  private XRTableCell xrTableCell57;
  private XRTableCell xrTableCell58;
  private XRTableCell xrTableCell59;
  private XRTableRow xrTableRow25;
  private XRTableCell xrTableCell60;
  private DetailReportBand DetailReport1;
  private DetailBand Detail2;
  private XRSubreport xrSubreport1;

  public irepBoletoRivadaviaInmu()
    : base(nameof (irepBoletoRivadaviaInmu), "Boleto Inmueble")
  {
    this.InitializeComponent();
    this.xrpblogo1.Image = ImagesManager.getInstance().getLogoMunicipio("Rivadavia");
    this.xrpblogo2.Image = ImagesManager.getInstance().getLogoMunicipio("Rivadavia");
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (irepBoletoRivadaviaInmu));
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.ReportHeader = new ReportHeaderBand();
    this.xrTable2 = new XRTable();
    this.xrTableRow3 = new XRTableRow();
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableRow4 = new XRTableRow();
    this.xrTableCell12 = new XRTableCell();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.xrPanel1 = new XRPanel();
    this.xrRichText1 = new XRRichText();
    this.xrpblogo1 = new XRPictureBox();
    this.xrpblogo2 = new XRPictureBox();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.xrTable3 = new XRTable();
    this.xrTableRow13 = new XRTableRow();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell13 = new XRTableCell();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.DetailReport1 = new DetailReportBand();
    this.Detail2 = new DetailBand();
    this.GroupFooter2 = new GroupFooterBand();
    this.xrTable4 = new XRTable();
    this.xrTableRow19 = new XRTableRow();
    this.xrTableCell42 = new XRTableCell();
    this.xrTableCell44 = new XRTableCell();
    this.xrTableRow20 = new XRTableRow();
    this.xrTableCell45 = new XRTableCell();
    this.xrTableCell46 = new XRTableCell();
    this.xrTableCell47 = new XRTableCell();
    this.xrTableRow21 = new XRTableRow();
    this.xrTableCell48 = new XRTableCell();
    this.xrTableCell49 = new XRTableCell();
    this.xrTableCell50 = new XRTableCell();
    this.xrTableRow22 = new XRTableRow();
    this.xrTableCell51 = new XRTableCell();
    this.xrTableCell52 = new XRTableCell();
    this.xrTableCell53 = new XRTableCell();
    this.xrTableRow23 = new XRTableRow();
    this.xrTableCell54 = new XRTableCell();
    this.xrTableCell55 = new XRTableCell();
    this.xrTableCell56 = new XRTableCell();
    this.xrTableRow24 = new XRTableRow();
    this.xrTableCell57 = new XRTableCell();
    this.xrTableCell58 = new XRTableCell();
    this.xrTableCell59 = new XRTableCell();
    this.xrTableRow25 = new XRTableRow();
    this.xrTableCell60 = new XRTableCell();
    this.xrSubreport1 = new XRSubreport();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.xrRichText1).BeginInit();
    ((ISupportInitialize) this.xrTable3).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this.xrTable4).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 25f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 50f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((Band) this.Detail).Expanded = false;
    ((XRControl) this.Detail).HeightF = 0.0f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrTable2,
      (XRControl) this.xrTable1,
      (XRControl) this.xrPanel1
    });
    ((XRControl) this.ReportHeader).HeightF = 266.2693f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).Font = new Font("Calibri", 9f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(2.45997f, 216.2693f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[2]
    {
      this.xrTableRow3,
      this.xrTableRow4
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(721.54f, 50f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTableRow3).BackColor = Color.Silver;
    this.xrTableRow3.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell9,
      this.xrTableCell11
    });
    ((XRControl) this.xrTableRow3).Name = "xrTableRow3";
    ((XRControl) this.xrTableRow3).StylePriority.UseBackColor = false;
    this.xrTableRow3.Weight = 1.0;
    ((XRLabel) this.xrTableCell9).Multiline = true;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell9).Text = "CONCEPTO";
    ((XRControl) this.xrTableCell9).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell9.Weight = 2.0;
    ((XRLabel) this.xrTableCell11).Multiline = true;
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell11).Text = "IMPORTE";
    ((XRControl) this.xrTableCell11).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell11.Weight = 0.47270647437313251;
    this.xrTableRow4.Cells.AddRange(new XRTableCell[1]
    {
      this.xrTableCell12
    });
    ((XRControl) this.xrTableRow4).Name = "xrTableRow4";
    this.xrTableRow4.Weight = 1.0;
    ((XRControl) this.xrTableCell12).Font = new Font("Calibri", 9f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell12).Multiline = true;
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell12).Text = "PERIODO: 2023 BIMESTRE: 1, 2, 3";
    ((XRControl) this.xrTableCell12).TextAlignment = (TextAlignment) 16 /*0x10*/;
    this.xrTableCell12.Weight = 2.4727064743731324;
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Arial", 9f);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(2.45997f, 91.26934f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[2]
    {
      this.xrTableRow1,
      this.xrTableRow2
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(721.54f, 125f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[4]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell4
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCell1).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell1).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell1).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell1).Text = "Concepto:";
    ((XRControl) this.xrTableCell1).TextAlignment = (TextAlignment) 4;
    this.xrTableCell1.Weight = 0.52665130058996523;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "xrTableCell2";
    this.xrTableCell2.Weight = 1.3859244752367508;
    ((XRControl) this.xrTableCell3).BackColor = Color.LightGray;
    ((XRControl) this.xrTableCell3).Borders = (BorderSide) 15;
    ((XRControl) this.xrTableCell3).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    this.xrTableCell3.RowSpan = 2;
    ((XRControl) this.xrTableCell3).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell3).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell3).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell3).Text = "Datos del Objeto \r\nImponible:";
    ((XRControl) this.xrTableCell3).TextAlignment = (TextAlignment) 4;
    this.xrTableCell3.Weight = 0.60916303831458585;
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    this.xrTableCell4.RowSpan = 2;
    ((XRControl) this.xrTableCell4).Text = "xrTableCell4";
    this.xrTableCell4.Weight = 1.478261185858698;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[4]
    {
      this.xrTableCell5,
      this.xrTableCell6,
      this.xrTableCell7,
      this.xrTableCell8
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 3.9999994913737753;
    ((XRControl) this.xrTableCell5).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell5).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell5).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell5).Text = "Datos del\r\nContribuyente:";
    ((XRControl) this.xrTableCell5).TextAlignment = (TextAlignment) 4;
    this.xrTableCell5.Weight = 0.52665130058996523;
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "xrTableCell6";
    this.xrTableCell6.Weight = 1.3859244752367508;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    this.xrTableCell7.Weight = 0.60916303831458585;
    ((XRLabel) this.xrTableCell8).Multiline = true;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).Text = "xrTableCell8";
    this.xrTableCell8.Weight = 1.478261185858698;
    ((XRControl) this.xrPanel1).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel1).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrRichText1,
      (XRControl) this.xrpblogo1,
      (XRControl) this.xrpblogo2
    });
    ((XRControl) this.xrPanel1).LocationFloat = new PointFloat(2.459971f, 1.269341f);
    ((XRControl) this.xrPanel1).Name = "xrPanel1";
    ((XRControl) this.xrPanel1).SizeF = new SizeF(721.54f, 90f);
    ((XRControl) this.xrPanel1).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText1).Borders = (BorderSide) 0;
    ((XRControl) this.xrRichText1).Font = new Font("Calibri", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrRichText1).LocationFloat = new PointFloat(185.2972f, 7.208305f);
    ((XRControl) this.xrRichText1).Name = "xrRichText1";
    ((XRControl) this.xrRichText1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRRichTextBase) this.xrRichText1).SerializableRtfString = componentResourceManager.GetString("xrRichText1.SerializableRtfString");
    ((XRControl) this.xrRichText1).SizeF = new SizeF(418.2091f, 75.79169f);
    ((XRControl) this.xrRichText1).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText1).StylePriority.UseFont = false;
    ((XRControl) this.xrpblogo1).Borders = (BorderSide) 0;
    ((XRControl) this.xrpblogo1).LocationFloat = new PointFloat(617.9312f, 4.208306f);
    ((XRControl) this.xrpblogo1).Name = "xrpblogo1";
    ((XRControl) this.xrpblogo1).SizeF = new SizeF(93.60889f, 80.37503f);
    this.xrpblogo1.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrpblogo1).StylePriority.UseBorders = false;
    ((XRControl) this.xrpblogo2).Borders = (BorderSide) 0;
    ((XRControl) this.xrpblogo2).LocationFloat = new PointFloat(7.103773f, 4.208306f);
    ((XRControl) this.xrpblogo2).Name = "xrpblogo2";
    ((XRControl) this.xrpblogo2).SizeF = new SizeF(161.1407f, 80.37503f);
    this.xrpblogo2.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrpblogo2).StylePriority.UseBorders = false;
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[2]
    {
      (Band) this.Detail1,
      (Band) this.GroupFooter2
    });
    ((XtraReportBase) this.DetailReport).DataMember = "servicios";
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    ((Band) this.DetailReport).Expanded = false;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((XRControl) this.Detail1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable3
    });
    ((XRControl) this.Detail1).HeightF = 25f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.xrTable3).LocationFloat = new PointFloat(2.459961f, 0.0f);
    ((XRControl) this.xrTable3).Name = "xrTable3";
    ((XRControl) this.xrTable3).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable3.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow13
    });
    ((XRControl) this.xrTable3).SizeF = new SizeF(721.54f, 25f);
    ((XRControl) this.xrTableRow13).Borders = (BorderSide) 15;
    this.xrTableRow13.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell10,
      this.xrTableCell13
    });
    ((XRControl) this.xrTableRow13).Name = "xrTableRow13";
    ((XRControl) this.xrTableRow13).StylePriority.UseBorders = false;
    this.xrTableRow13.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[detaserv]")
    });
    ((XRLabel) this.xrTableCell10).Multiline = true;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell10).Text = "xrTableCell10";
    ((XRControl) this.xrTableCell10).TextAlignment = (TextAlignment) 16 /*0x10*/;
    this.xrTableCell10.Weight = 1.6121640378974398;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell13).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[imposerv]")
    });
    ((XRLabel) this.xrTableCell13).Multiline = true;
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    ((XRControl) this.xrTableCell13).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell13).Text = "xrTableCell13";
    ((XRControl) this.xrTableCell13).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell13).TextFormatString = "{0:N2}";
    this.xrTableCell13.Weight = 0.3810404893266448;
    this.objectDataSource1.DataSource = (object) typeof (DTOBoletoRivadaviaInmu);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this.DetailReport1).Bands.AddRange(new Band[1]
    {
      (Band) this.Detail2
    });
    ((XtraReportBase) this.DetailReport1).DataMember = "cupones";
    ((XtraReportBase) this.DetailReport1).DataSource = (object) this.objectDataSource1;
    this.DetailReport1.Level = 1;
    ((XRControl) this.DetailReport1).Name = "DetailReport1";
    ((XRControl) this.Detail2).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrSubreport1
    });
    ((XRControl) this.Detail2).HeightF = 60.69336f;
    ((XRControl) this.Detail2).Name = "Detail2";
    ((XRControl) this.GroupFooter2).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable4
    });
    ((XRControl) this.GroupFooter2).HeightF = 175f;
    ((XRControl) this.GroupFooter2).Name = "GroupFooter2";
    ((XRControl) this.xrTable4).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable4).Font = new Font("Calibri", 9f);
    ((XRControl) this.xrTable4).LocationFloat = new PointFloat(2.45997f, 0.0f);
    ((XRControl) this.xrTable4).Name = "xrTable4";
    ((XRControl) this.xrTable4).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable4.Rows.AddRange(new XRTableRow[7]
    {
      this.xrTableRow19,
      this.xrTableRow20,
      this.xrTableRow21,
      this.xrTableRow22,
      this.xrTableRow23,
      this.xrTableRow24,
      this.xrTableRow25
    });
    ((XRControl) this.xrTable4).SizeF = new SizeF(721.54f, 175f);
    ((XRControl) this.xrTable4).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable4).StylePriority.UseFont = false;
    this.xrTableRow19.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell42,
      this.xrTableCell44
    });
    ((XRControl) this.xrTableRow19).Name = "xrTableRow19";
    this.xrTableRow19.Weight = 1.0;
    ((XRLabel) this.xrTableCell42).Multiline = true;
    ((XRControl) this.xrTableCell42).Name = "xrTableCell42";
    ((XRControl) this.xrTableCell42).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell42).Text = "GASTOS DE ENVIO";
    ((XRControl) this.xrTableCell42).TextAlignment = (TextAlignment) 16 /*0x10*/;
    this.xrTableCell42.Weight = 2.0;
    ((XRLabel) this.xrTableCell44).Multiline = true;
    ((XRControl) this.xrTableCell44).Name = "xrTableCell44";
    ((XRControl) this.xrTableCell44).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell44).Text = "50";
    ((XRControl) this.xrTableCell44).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell44).TextFormatString = "{0:#.00}";
    this.xrTableCell44.Weight = 0.47270647437313251;
    this.xrTableRow20.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell45,
      this.xrTableCell46,
      this.xrTableCell47
    });
    ((XRControl) this.xrTableRow20).Name = "xrTableRow20";
    this.xrTableRow20.Weight = 1.0;
    ((XRControl) this.xrTableCell45).Borders = (BorderSide) 15;
    ((XRLabel) this.xrTableCell45).Multiline = true;
    ((XRControl) this.xrTableCell45).Name = "xrTableCell45";
    this.xrTableCell45.RowSpan = 5;
    ((XRControl) this.xrTableCell45).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell45).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell45).Text = componentResourceManager.GetString("xrTableCell45.Text");
    ((XRControl) this.xrTableCell45).TextAlignment = (TextAlignment) 2048 /*0x0800*/;
    this.xrTableCell45.Weight = 1.3918961688552456;
    ((XRControl) this.xrTableCell45).WordWrap = false;
    ((XRControl) this.xrTableCell46).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell46).KeepTogether = true;
    ((XRLabel) this.xrTableCell46).Multiline = true;
    ((XRControl) this.xrTableCell46).Name = "xrTableCell46";
    ((XRControl) this.xrTableCell46).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell46).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell46).Text = "SUBTOTAL:";
    ((XRControl) this.xrTableCell46).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell46.Weight = 0.60810383114475441;
    ((XRControl) this.xrTableCell47).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell47).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTableCell47).KeepTogether = true;
    ((XRLabel) this.xrTableCell47).Multiline = true;
    ((XRControl) this.xrTableCell47).Name = "xrTableCell47";
    ((XRControl) this.xrTableCell47).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell47).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell47).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell47).Text = "1489,72";
    ((XRControl) this.xrTableCell47).TextAlignment = (TextAlignment) 64 /*0x40*/;
    this.xrTableCell47.Weight = 0.47270647437313251;
    this.xrTableRow21.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell48,
      this.xrTableCell49,
      this.xrTableCell50
    });
    ((XRControl) this.xrTableRow21).Name = "xrTableRow21";
    this.xrTableRow21.Weight = 1.0;
    ((XRControl) this.xrTableCell48).Borders = (BorderSide) 15;
    ((XRLabel) this.xrTableCell48).Multiline = true;
    ((XRControl) this.xrTableCell48).Name = "xrTableCell48";
    ((XRControl) this.xrTableCell48).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell48).Text = "xrTableCell27";
    this.xrTableCell48.Weight = 1.3918961688552456;
    ((XRControl) this.xrTableCell49).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell49).KeepTogether = true;
    ((XRLabel) this.xrTableCell49).Multiline = true;
    ((XRControl) this.xrTableCell49).Name = "xrTableCell49";
    ((XRControl) this.xrTableCell49).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell49).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell49).Text = "DESCUENTO CONTRIBUYENTE \r\nAL DIA:";
    ((XRControl) this.xrTableCell49).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell49.Weight = 0.60810383114475441;
    ((XRControl) this.xrTableCell50).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell50).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTableCell50).KeepTogether = true;
    ((XRLabel) this.xrTableCell50).Multiline = true;
    ((XRControl) this.xrTableCell50).Name = "xrTableCell50";
    ((XRControl) this.xrTableCell50).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell50).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell50).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell50).Text = "0";
    ((XRControl) this.xrTableCell50).TextAlignment = (TextAlignment) 64 /*0x40*/;
    this.xrTableCell50.Weight = 0.47270647437313251;
    this.xrTableRow22.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell51,
      this.xrTableCell52,
      this.xrTableCell53
    });
    ((XRControl) this.xrTableRow22).Name = "xrTableRow22";
    this.xrTableRow22.Weight = 1.0;
    ((XRControl) this.xrTableCell51).Borders = (BorderSide) 15;
    ((XRLabel) this.xrTableCell51).Multiline = true;
    ((XRControl) this.xrTableCell51).Name = "xrTableCell51";
    ((XRControl) this.xrTableCell51).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell51).Text = "xrTableCell30";
    this.xrTableCell51.Weight = 1.3918959596886982;
    ((XRControl) this.xrTableCell52).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell52).KeepTogether = true;
    ((XRLabel) this.xrTableCell52).Multiline = true;
    ((XRControl) this.xrTableCell52).Name = "xrTableCell52";
    ((XRControl) this.xrTableCell52).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell52).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell52).Text = "EXENCIÓN:";
    ((XRControl) this.xrTableCell52).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell52.Weight = 0.60810404031130183;
    ((XRControl) this.xrTableCell53).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell53).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTableCell53).KeepTogether = true;
    ((XRLabel) this.xrTableCell53).Multiline = true;
    ((XRControl) this.xrTableCell53).Name = "xrTableCell53";
    ((XRControl) this.xrTableCell53).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell53).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell53).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell53).Text = "0";
    ((XRControl) this.xrTableCell53).TextAlignment = (TextAlignment) 64 /*0x40*/;
    this.xrTableCell53.Weight = 0.47270647437313251;
    this.xrTableRow23.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell54,
      this.xrTableCell55,
      this.xrTableCell56
    });
    ((XRControl) this.xrTableRow23).Name = "xrTableRow23";
    this.xrTableRow23.Weight = 1.0;
    ((XRControl) this.xrTableCell54).Borders = (BorderSide) 15;
    ((XRLabel) this.xrTableCell54).Multiline = true;
    ((XRControl) this.xrTableCell54).Name = "xrTableCell54";
    ((XRControl) this.xrTableCell54).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell54).Text = "xrTableCell33";
    this.xrTableCell54.Weight = 1.3918959596886982;
    ((XRControl) this.xrTableCell55).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell55).KeepTogether = true;
    ((XRLabel) this.xrTableCell55).Multiline = true;
    ((XRControl) this.xrTableCell55).Name = "xrTableCell55";
    ((XRControl) this.xrTableCell55).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell55).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell55).Text = "CRÉDITOS:";
    ((XRControl) this.xrTableCell55).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell55.Weight = 0.60810404031130183;
    ((XRControl) this.xrTableCell56).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell56).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTableCell56).KeepTogether = true;
    ((XRLabel) this.xrTableCell56).Multiline = true;
    ((XRControl) this.xrTableCell56).Name = "xrTableCell56";
    ((XRControl) this.xrTableCell56).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell56).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell56).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell56).Text = "0";
    ((XRControl) this.xrTableCell56).TextAlignment = (TextAlignment) 64 /*0x40*/;
    this.xrTableCell56.Weight = 0.47270647437313251;
    this.xrTableRow24.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell57,
      this.xrTableCell58,
      this.xrTableCell59
    });
    ((XRControl) this.xrTableRow24).Name = "xrTableRow24";
    this.xrTableRow24.Weight = 1.0;
    ((XRControl) this.xrTableCell57).Borders = (BorderSide) 15;
    ((XRLabel) this.xrTableCell57).Multiline = true;
    ((XRControl) this.xrTableCell57).Name = "xrTableCell57";
    ((XRControl) this.xrTableCell57).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell57).Text = "xrTableCell36";
    this.xrTableCell57.Weight = 1.3918959596886982;
    ((XRControl) this.xrTableCell58).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell58).KeepTogether = true;
    ((XRLabel) this.xrTableCell58).Multiline = true;
    ((XRControl) this.xrTableCell58).Name = "xrTableCell58";
    ((XRControl) this.xrTableCell58).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell58).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell58).Text = "TOTAL:";
    ((XRControl) this.xrTableCell58).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell58.Weight = 0.60810404031130183;
    ((XRControl) this.xrTableCell59).BackColor = Color.Silver;
    ((XRControl) this.xrTableCell59).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTableCell59).KeepTogether = true;
    ((XRLabel) this.xrTableCell59).Multiline = true;
    ((XRControl) this.xrTableCell59).Name = "xrTableCell59";
    ((XRControl) this.xrTableCell59).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell59).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell59).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell59).Text = "1489,92";
    ((XRControl) this.xrTableCell59).TextAlignment = (TextAlignment) 64 /*0x40*/;
    this.xrTableCell59.Weight = 0.47270647437313251;
    this.xrTableRow25.Cells.AddRange(new XRTableCell[1]
    {
      this.xrTableCell60
    });
    ((XRControl) this.xrTableRow25).Name = "xrTableRow25";
    this.xrTableRow25.Weight = 1.0;
    ((XRLabel) this.xrTableCell60).Multiline = true;
    ((XRControl) this.xrTableCell60).Name = "xrTableCell60";
    ((XRControl) this.xrTableCell60).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell60).Text = "SON PESOS:";
    ((XRControl) this.xrTableCell60).TextAlignment = (TextAlignment) 16 /*0x10*/;
    this.xrTableCell60.Weight = 2.4727064743731324;
    ((XRControl) this.xrSubreport1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrSubreport1).Name = "xrSubreport1";
    ((SubreportBase) this.xrSubreport1).ReportSource = (XtraReport) new CuponesRivadaviaInmu();
    ((XRControl) this.xrSubreport1).SizeF = new SizeF(723.9999f, 60.69336f);
    ((XtraReportBase) this).Bands.AddRange(new Band[6]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.ReportHeader,
      (Band) this.DetailReport,
      (Band) this.DetailReport1
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(48 /*0x30*/, 55, 25, 50);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.xrRichText1).EndInit();
    ((ISupportInitialize) this.xrTable3).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this.xrTable4).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
