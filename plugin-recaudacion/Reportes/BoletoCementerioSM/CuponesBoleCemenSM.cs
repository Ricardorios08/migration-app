// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM.CuponesBoleCemenSM
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
using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM;

public class CuponesBoleCemenSM : XtraReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private XRLabel xrLabel1;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTable xrTable2;
  private XRTableRow xrTableRow3;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRTableRow xrTableRow7;
  private XRTableCell xrTableCell13;
  private XRTableCell xrTableCell14;
  private XRTableRow xrTableRow8;
  private XRTableCell xrTableCell15;
  private XRTableCell xrTableCell16;
  private XRTableRow xrTableRow9;
  private XRTableCell xrTableCell17;
  private XRTableCell xrTableCell18;
  private XRLabel xrLabel8;
  private XRLabel xrLabel7;
  private XRLabel xrLabel6;
  private XRLabel xrLabel5;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private XRLabel xrLabel2;
  private XRPanel xrPanel1;
  private XRBarCode xrBarCode3;
  private XRLabel xrLabel9;
  private ObjectDataSource objectDataSource1;
  private XRTableRow xrTableRow4;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell8;
  private XRTableRow xrTableRow5;
  private XRTableCell xrTableCell9;
  private XRTableCell xrTableCell10;
  private XRBarCode xrBarCode1;
  private XRLine xrLine1;

  public CuponesBoleCemenSM() => this.InitializeComponent();

  private void xrBarCode1_BeforePrint(object sender, PrintEventArgs e)
  {
    if (string.IsNullOrEmpty(Convert.ToString(((XtraReportBase) this).GetCurrentColumnValue("EpagosQrText"))))
      ((XRControl) this.xrBarCode1).Visible = false;
    else
      ((XRControl) this.xrBarCode1).Visible = true;
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
    QRCodeGenerator qrCodeGenerator = new QRCodeGenerator();
    Code128Generator code128Generator = new Code128Generator();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.xrPanel1 = new XRPanel();
    this.xrLine1 = new XRLine();
    this.xrBarCode1 = new XRBarCode();
    this.xrLabel9 = new XRLabel();
    this.xrBarCode3 = new XRBarCode();
    this.xrLabel1 = new XRLabel();
    this.xrLabel8 = new XRLabel();
    this.xrLabel7 = new XRLabel();
    this.xrLabel6 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTable2 = new XRTable();
    this.xrTableRow4 = new XRTableRow();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.xrTableRow3 = new XRTableRow();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableRow7 = new XRTableRow();
    this.xrTableCell13 = new XRTableCell();
    this.xrTableCell14 = new XRTableCell();
    this.xrTableRow8 = new XRTableRow();
    this.xrTableCell15 = new XRTableCell();
    this.xrTableCell16 = new XRTableCell();
    this.xrTableRow9 = new XRTableRow();
    this.xrTableCell17 = new XRTableCell();
    this.xrTableCell18 = new XRTableCell();
    this.xrTableRow5 = new XRTableRow();
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.xrLabel2 = new XRLabel();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 0.0f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 5.041631f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrPanel1
    });
    ((XRControl) this.Detail).HeightF = 139.6667f;
    ((XRControl) this.Detail).KeepTogether = true;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.xrPanel1).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel1).Controls.AddRange(new XRControl[14]
    {
      (XRControl) this.xrLine1,
      (XRControl) this.xrLabel9,
      (XRControl) this.xrBarCode3,
      (XRControl) this.xrLabel1,
      (XRControl) this.xrLabel8,
      (XRControl) this.xrLabel7,
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrTable1,
      (XRControl) this.xrTable2,
      (XRControl) this.xrLabel2,
      (XRControl) this.xrBarCode1
    });
    ((XRControl) this.xrPanel1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrPanel1).Name = "xrPanel1";
    ((XRControl) this.xrPanel1).SizeF = new SizeF(765f, 134.6667f);
    ((XRControl) this.xrPanel1).StylePriority.UseBorders = false;
    ((XRControl) this.xrLine1).Borders = (BorderSide) 0;
    this.xrLine1.LineDirection = (LineDirection) 3;
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(556.6652f, 0.0f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(25.03259f, 134.1667f);
    ((XRControl) this.xrLine1).StylePriority.UseBorders = false;
    this.xrBarCode1.AutoModule = true;
    ((XRControl) this.xrBarCode1).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrBarCode1).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[EpagosQrText]")
    });
    ((XRControl) this.xrBarCode1).LocationFloat = new PointFloat(718.3334f, 107.2084f);
    ((XRControl) this.xrBarCode1).Name = "xrBarCode1";
    ((XRControl) this.xrBarCode1).Padding = new PaddingInfo(10, 10, 0, 0, 100f);
    this.xrBarCode1.ShowText = false;
    ((XRControl) this.xrBarCode1).SizeF = new SizeF(28.125f, 22.45833f);
    ((XRControl) this.xrBarCode1).StylePriority.UseBorders = false;
    qrCodeGenerator.CompactionMode = (QRCodeCompactionMode) 2;
    qrCodeGenerator.ErrorCorrectionLevel = (QRCodeErrorCorrectionLevel) 3;
    qrCodeGenerator.Version = (QRCodeVersion) 1;
    this.xrBarCode1.Symbology = (BarCodeGeneratorBase) qrCodeGenerator;
    ((XRControl) this.xrBarCode1).Visible = false;
    ((XRControl) this.xrBarCode1).BeforePrint += new PrintEventHandler(this.xrBarCode1_BeforePrint);
    ((XRControl) this.xrLabel9).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel9).CanGrow = false;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel9).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CuenCtct]")
    });
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(664.625f, 2f);
    this.xrLabel9.Multiline = true;
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(92.54f, 15f);
    ((XRControl) this.xrLabel9).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel9).Text = "xrLabel9";
    this.xrBarCode3.AutoModule = true;
    ((XRControl) this.xrBarCode3).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrBarCode3).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodigoBarraCupon]")
    });
    ((XRControl) this.xrBarCode3).Font = new Font("Trebuchet MS", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrBarCode3).LocationFloat = new PointFloat(7.00001f, 53f);
    this.xrBarCode3.Module = 0.984252f;
    ((XRControl) this.xrBarCode3).Name = "xrBarCode3";
    ((XRControl) this.xrBarCode3).Padding = new PaddingInfo(10, 10, 0, 0, 100f);
    this.xrBarCode3.ShowText = false;
    ((XRControl) this.xrBarCode3).SizeF = new SizeF(365.0852f, 39.91541f);
    ((XRControl) this.xrBarCode3).StylePriority.UseBorders = false;
    ((XRControl) this.xrBarCode3).StylePriority.UseFont = false;
    ((XRControl) this.xrBarCode3).StylePriority.UseTextAlignment = false;
    code128Generator.CharacterSet = (Code128Charset) 105;
    this.xrBarCode3.Symbology = (BarCodeGeneratorBase) code128Generator;
    ((XRControl) this.xrBarCode3).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel1).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel1).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodigoBarraCupon]")
    });
    ((XRControl) this.xrLabel1).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(40.58337f, 94.99999f);
    this.xrLabel1.Multiline = true;
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(295.8333f, 23.00001f);
    ((XRControl) this.xrLabel1).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "xrLabel1";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel8).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel8).CanGrow = false;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FeveLice]")
    });
    ((XRControl) this.xrLabel8).LocationFloat = new PointFloat(671.4584f, 57.57143f);
    this.xrLabel8.Multiline = true;
    ((XRControl) this.xrLabel8).Name = "xrLabel8";
    ((XRControl) this.xrLabel8).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel8).SizeF = new SizeF(91f, 15f);
    ((XRControl) this.xrLabel8).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel8).Text = "12/08/2024";
    ((XRControl) this.xrLabel8).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel8).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.xrLabel7).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel7).CanGrow = false;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[PeriodoStr]")
    });
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(575.625f, 95.54166f);
    this.xrLabel7.Multiline = true;
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(170.8334f, 15f);
    ((XRControl) this.xrLabel7).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel7).Text = "Bimestre: 4 de 2024";
    ((XRControl) this.xrLabel7).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel6).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel6).CanGrow = false;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TotaBole]")
    });
    ((XRControl) this.xrLabel6).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(618.5f, 75.11311f);
    this.xrLabel6.Multiline = true;
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(100f, 18f);
    ((XRControl) this.xrLabel6).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "$ 9550,00";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel6).TextFormatString = "{0:$0.00}";
    ((XRControl) this.xrLabel5).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel5).CanGrow = false;
    ((XRControl) this.xrLabel5).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(575.625f, 57.57143f);
    this.xrLabel5.Multiline = true;
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(95.83344f, 15f);
    ((XRControl) this.xrLabel5).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "Vencimiento";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel4).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel4).CanGrow = false;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NumeBole]")
    });
    ((XRControl) this.xrLabel4).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(618.5f, 37.42857f);
    this.xrLabel4.Multiline = true;
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(100f, 18f);
    ((XRControl) this.xrLabel4).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "49359735";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel3).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel3).CanGrow = false;
    ((XRControl) this.xrLabel3).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(618.5f, 19.49998f);
    this.xrLabel3.Multiline = true;
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(100f, 15f);
    ((XRControl) this.xrLabel3).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "Boleto";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(52.7083f, 15f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[2]
    {
      this.xrTableRow1,
      this.xrTableRow2
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(282.7084f, 35f);
    this.xrTableRow1.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell1,
      this.xrTableCell2
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell1).Text = "Boleto";
    ((XRControl) this.xrTableCell1).TextAlignment = (TextAlignment) 2;
    this.xrTableCell1.Weight = 0.68284034649951764;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell2).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[PeriodoStr]")
    });
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell2).Text = "Bimestre 4de 2024";
    ((XRControl) this.xrTableCell2).TextAlignment = (TextAlignment) 2;
    this.xrTableCell2.Weight = 0.92307697298551961;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell3,
      this.xrTableCell4
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell3).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NumeBole]")
    });
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell3).Text = "49359735";
    ((XRControl) this.xrTableCell3).TextAlignment = (TextAlignment) 2;
    this.xrTableCell3.Weight = 0.68284034649951764;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FeveLiceStr]")
    });
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell4).Text = "Vencimiento 12/08/2024";
    ((XRControl) this.xrTableCell4).TextAlignment = (TextAlignment) 2;
    this.xrTableCell4.Weight = 0.92307697298551961;
    ((XRControl) this.xrTable2).Borders = (BorderSide) 0;
    ((XRControl) this.xrTable2).Font = new Font("Arial", 8f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(375.0852f, 6f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[6]
    {
      this.xrTableRow4,
      this.xrTableRow3,
      this.xrTableRow7,
      this.xrTableRow8,
      this.xrTableRow9,
      this.xrTableRow5
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(194.58f, 118f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    this.xrTableRow4.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell7,
      this.xrTableCell8
    });
    ((XRControl) this.xrTableRow4).Name = "xrTableRow4";
    this.xrTableRow4.Weight = 0.63265317800093668;
    ((XRControl) this.xrTableCell7).Font = new Font("Arial", 9f);
    ((XRLabel) this.xrTableCell7).Multiline = true;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).StylePriority.UseFont = false;
    this.xrTableCell7.Weight = 1.1458334350585937;
    ((XRControl) this.xrTableCell8).Borders = (BorderSide) 0;
    ((XRControl) this.xrTableCell8).Font = new Font("Arial", 9f);
    ((XRLabel) this.xrTableCell8).Multiline = true;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell8).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell8).TextAlignment = (TextAlignment) 2;
    this.xrTableCell8.Weight = 4.0 / 5.0;
    this.xrTableRow3.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell5,
      this.xrTableCell6
    });
    ((XRControl) this.xrTableRow3).Name = "xrTableRow3";
    this.xrTableRow3.Weight = 1.0;
    ((XRControl) this.xrTableCell5).Font = new Font("Arial", 9f);
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell5).Text = "Básico";
    this.xrTableCell5.Weight = 1.1458334350585937;
    ((XRControl) this.xrTableCell6).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Basico]")
    });
    ((XRControl) this.xrTableCell6).Font = new Font("Arial", 9f);
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell6).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell6).Text = "$ 8917,96";
    ((XRControl) this.xrTableCell6).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrTableCell6).TextFormatString = "{0:$0.00}";
    this.xrTableCell6.Weight = 4.0 / 5.0;
    this.xrTableRow7.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell13,
      this.xrTableCell14
    });
    ((XRControl) this.xrTableRow7).Name = "xrTableRow7";
    this.xrTableRow7.Weight = 1.0;
    ((XRControl) this.xrTableCell13).Font = new Font("Arial", 9f);
    ((XRLabel) this.xrTableCell13).Multiline = true;
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    ((XRControl) this.xrTableCell13).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell13).Text = "Gastos Adm.";
    this.xrTableCell13.Weight = 1.1458334350585937;
    ((XRControl) this.xrTableCell14).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[GastosAdm]")
    });
    ((XRControl) this.xrTableCell14).Font = new Font("Arial", 9f);
    ((XRLabel) this.xrTableCell14).Multiline = true;
    ((XRControl) this.xrTableCell14).Name = "xrTableCell14";
    ((XRControl) this.xrTableCell14).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell14).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell14).Text = "$500,00";
    ((XRControl) this.xrTableCell14).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrTableCell14).TextFormatString = "{0:$0.00}";
    this.xrTableCell14.Weight = 4.0 / 5.0;
    this.xrTableRow8.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell15,
      this.xrTableCell16
    });
    ((XRControl) this.xrTableRow8).Name = "xrTableRow8";
    this.xrTableRow8.Weight = 1.0;
    ((XRControl) this.xrTableCell15).Font = new Font("Arial", 9f);
    ((XRLabel) this.xrTableCell15).Multiline = true;
    ((XRControl) this.xrTableCell15).Name = "xrTableCell15";
    ((XRControl) this.xrTableCell15).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell15).Text = "Redondeo";
    this.xrTableCell15.Weight = 1.1458334350585937;
    ((XRControl) this.xrTableCell16).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell16).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Redondeo]")
    });
    ((XRControl) this.xrTableCell16).Font = new Font("Arial", 9f);
    ((XRLabel) this.xrTableCell16).Multiline = true;
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    ((XRControl) this.xrTableCell16).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell16).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell16).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell16).Text = "$-46,32";
    ((XRControl) this.xrTableCell16).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrTableCell16).TextFormatString = "{0:$0.00}";
    this.xrTableCell16.Weight = 4.0 / 5.0;
    this.xrTableRow9.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell17,
      this.xrTableCell18
    });
    ((XRControl) this.xrTableRow9).Name = "xrTableRow9";
    this.xrTableRow9.Weight = 1.0;
    ((XRControl) this.xrTableCell17).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell17).Multiline = true;
    ((XRControl) this.xrTableCell17).Name = "xrTableCell17";
    ((XRControl) this.xrTableCell17).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell17).Text = "Total";
    this.xrTableCell17.Weight = 1.1458334350585937;
    ((XRControl) this.xrTableCell18).Borders = (BorderSide) 0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell18).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TotaBole]")
    });
    ((XRControl) this.xrTableCell18).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell18).Multiline = true;
    ((XRControl) this.xrTableCell18).Name = "xrTableCell18";
    ((XRControl) this.xrTableCell18).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell18).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell18).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell18).Text = "$9550,00";
    ((XRControl) this.xrTableCell18).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrTableCell18).TextFormatString = "{0:$0.00}";
    this.xrTableCell18.Weight = 4.0 / 5.0;
    this.xrTableRow5.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell9,
      this.xrTableCell10
    });
    ((XRControl) this.xrTableRow5).Name = "xrTableRow5";
    this.xrTableRow5.Weight = 0.428949698854601;
    ((XRControl) this.xrTableCell9).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell9).Multiline = true;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).StylePriority.UseFont = false;
    this.xrTableCell9.Weight = 1.1458334350585937;
    ((XRControl) this.xrTableCell10).Borders = (BorderSide) 0;
    ((XRControl) this.xrTableCell10).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell10).Multiline = true;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell10).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell10).TextAlignment = (TextAlignment) 2;
    this.xrTableCell10.Weight = 4.0 / 5.0;
    ((XRControl) this.xrLabel2).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel2).CanGrow = false;
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(575.625f, 2f);
    this.xrLabel2.Multiline = true;
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(89f, 15f);
    ((XRControl) this.xrLabel2).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "N° INTERNO:";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 4;
    this.objectDataSource1.DataSource = (object) typeof (DTOBoletoCemenSM.CuponCemenSM);
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
    this.Margins = new Margins(0, 61, 0, 5);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
