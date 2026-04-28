// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Tasas.CuponesComercio
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraPrinting.BarCode;
using DevExpress.XtraReports.UI;
using InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioGuay;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Tasas;

public class CuponesComercio : XtraReport
{
  private IContainer components = (IContainer) null;
  private DetailBand Detail;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private XRPanel xrPanel5;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell9;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell16;
  private XRTableCell xrTableCell18;
  private XRLabel lbVenciAnual;
  private XRLabel lbFechaAnual;
  private XRBarCode xrBarCode3;
  private XRLabel xrLabel24;
  private XRLabel xrLabel25;
  private CalculatedField TotalPagar;
  private FormattingRule Anual;
  private XRTable TableTitu;
  private XRTableRow xrTableRow3;
  private XRTableCell lbVencimiento;
  private XRTable TableDeta;
  private XRTableRow xrTableRow4;
  private FormattingRule Semestral;
  private XRTableCell lbFecha;
  private CalculatedField ToltalP;
  private XRPictureBox xrPictureBox1;
  private XRLabel xrLabel1;
  private ObjectDataSource objectDataSource1;

  public CuponesComercio() => this.InitializeComponent();

  private void xrBarCode3_BeforePrint(object sender, PrintEventArgs e)
  {
    XRBarCode xrBarCode = sender as XRBarCode;
    if (string.IsNullOrEmpty(((XRControl) xrBarCode).Text))
      ((XRControl) xrBarCode).Visible = false;
    else
      ((XRControl) xrBarCode).Visible = true;
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
    this.Detail = new DetailBand();
    this.xrPanel5 = new XRPanel();
    this.xrLabel1 = new XRLabel();
    this.xrPictureBox1 = new XRPictureBox();
    this.TableDeta = new XRTable();
    this.xrTableRow4 = new XRTableRow();
    this.lbFecha = new XRTableCell();
    this.Semestral = new FormattingRule();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell16 = new XRTableCell();
    this.xrTableCell18 = new XRTableCell();
    this.lbFechaAnual = new XRLabel();
    this.Anual = new FormattingRule();
    this.xrBarCode3 = new XRBarCode();
    this.xrLabel24 = new XRLabel();
    this.xrLabel25 = new XRLabel();
    this.TableTitu = new XRTable();
    this.xrTableRow3 = new XRTableRow();
    this.lbVencimiento = new XRTableCell();
    this.lbVenciAnual = new XRLabel();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.TotalPagar = new CalculatedField();
    this.ToltalP = new CalculatedField();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.TableDeta).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.TableTitu).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrPanel5
    });
    ((XRControl) this.Detail).HeightF = 160f;
    ((XRControl) this.Detail).KeepTogether = true;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.Detail).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.Detail).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrPanel5).Borders = (BorderSide) 15;
    ((XRControl) this.xrPanel5).Controls.AddRange(new XRControl[11]
    {
      (XRControl) this.xrLabel1,
      (XRControl) this.xrPictureBox1,
      (XRControl) this.TableDeta,
      (XRControl) this.xrTable1,
      (XRControl) this.xrTable2,
      (XRControl) this.lbFechaAnual,
      (XRControl) this.xrBarCode3,
      (XRControl) this.xrLabel24,
      (XRControl) this.xrLabel25,
      (XRControl) this.TableTitu,
      (XRControl) this.lbVenciAnual
    });
    ((XRControl) this.xrPanel5).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrPanel5).Name = "xrPanel5";
    ((XRControl) this.xrPanel5).SizeF = new SizeF(774.6667f, 160f);
    ((XRControl) this.xrPanel5).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel1).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel1).Font = new Font("Calibri", 7f);
    ((XRControl) this.xrLabel1).KeepTogether = true;
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(628.5338f, 135.3763f);
    this.xrLabel1.Multiline = true;
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(107f, 24f);
    ((XRControl) this.xrLabel1).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "BILLETERA ELECTRÓNICA\r\nQR VERSIÓN 3.0";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrPictureBox1).Borders = (BorderSide) 0;
    ((XRControl) this.xrPictureBox1).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("ImageSource", (object) null, "EpagosQr")
    });
    ((XRControl) this.xrPictureBox1).LocationFloat = new PointFloat(634.5338f, 56.12632f);
    ((XRControl) this.xrPictureBox1).Name = "xrPictureBox1";
    ((XRControl) this.xrPictureBox1).SizeF = new SizeF(95f, 80f);
    this.xrPictureBox1.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrPictureBox1).StylePriority.UseBorders = false;
    ((XRControl) this.TableDeta).LocationFloat = new PointFloat(1.0793f, 123.0417f);
    ((XRControl) this.TableDeta).Name = "TableDeta";
    this.TableDeta.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow4
    });
    ((XRControl) this.TableDeta).SizeF = new SizeF(140f, 22.99999f);
    this.xrTableRow4.Cells.AddRange(new XRTableCell[1]
    {
      this.lbFecha
    });
    ((XRControl) this.xrTableRow4).Name = "xrTableRow4";
    this.xrTableRow4.Weight = 1.0;
    ((XRControl) this.lbFecha).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "FeveLico")
    });
    ((XRControl) this.lbFecha).Font = new Font("Calibri", 9.75f);
    ((Collection<FormattingRule>) ((XRControl) this.lbFecha).FormattingRules).Add(this.Semestral);
    ((XRControl) this.lbFecha).Name = "lbFecha";
    ((XRControl) this.lbFecha).StylePriority.UseFont = false;
    ((XRControl) this.lbFecha).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lbFecha).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.lbFecha).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.lbFecha).Visible = false;
    this.lbFecha.Weight = 0.99577500206479963;
    this.Semestral.Condition = "[TipoVenc] == 1";
    this.Semestral.Formatting.Visible = (DefaultBoolean) 0;
    this.Semestral.Name = "Semestral";
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Calibri", 9f);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(1.079305f, 3.749974f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(773f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 2;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[4]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell7,
      this.xrTableCell9
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "DERECHOS";
    this.xrTableCell1.Weight = 2.1345407404535646;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "DESCUENTOS";
    this.xrTableCell2.Weight = 2.1345407898028177;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).Text = "RECARGO";
    this.xrTableCell7.Weight = 2.134540740453565;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).Text = "TOTAL A PAGAR";
    this.xrTableCell9.Weight = 2.461836988836489;
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).Font = new Font("Calibri", 9f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(1.079305f, 28.74998f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(773f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 2;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[4]
    {
      this.xrTableCell10,
      this.xrTableCell11,
      this.xrTableCell16,
      this.xrTableCell18
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((XRControl) this.xrTableCell10).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "ImpoLico")
    });
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).Text = "xrTableCell1";
    ((XRControl) this.xrTableCell10).TextFormatString = "{0:N2}";
    this.xrTableCell10.Weight = 2.1345407404535646;
    ((XRControl) this.xrTableCell11).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "DescLico")
    });
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).Text = "xrTableCell2";
    ((XRControl) this.xrTableCell11).TextFormatString = "{0:N2}";
    this.xrTableCell11.Weight = 2.1345407898028177;
    ((XRControl) this.xrTableCell16).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "RecaBole")
    });
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    ((XRControl) this.xrTableCell16).Text = "xrTableCell7";
    ((XRControl) this.xrTableCell16).TextFormatString = "{0:N2}";
    this.xrTableCell16.Weight = 2.134540740453565;
    ((XRControl) this.xrTableCell18).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "ToltalP")
    });
    ((XRControl) this.xrTableCell18).Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((XRControl) this.xrTableCell18).Name = "xrTableCell18";
    ((XRControl) this.xrTableCell18).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell18).Text = "xrTableCell9";
    ((XRControl) this.xrTableCell18).TextFormatString = "{0:N2}";
    this.xrTableCell18.Weight = 2.461836988836489;
    ((XRControl) this.lbFechaAnual).Borders = (BorderSide) 15;
    ((XRControl) this.lbFechaAnual).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "FeveLico", "{0:dd/MM/yyyy}")
    });
    ((XRControl) this.lbFechaAnual).Font = new Font("Calibri", 9.75f);
    ((Collection<FormattingRule>) ((XRControl) this.lbFechaAnual).FormattingRules).Add(this.Anual);
    ((XRControl) this.lbFechaAnual).LocationFloat = new PointFloat(1.079305f, 123.0417f);
    ((XRControl) this.lbFechaAnual).Name = "lbFechaAnual";
    ((XRControl) this.lbFechaAnual).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lbFechaAnual).SizeF = new SizeF(140f, 21.99999f);
    ((XRControl) this.lbFechaAnual).StylePriority.UseBorders = false;
    ((XRControl) this.lbFechaAnual).StylePriority.UseFont = false;
    ((XRControl) this.lbFechaAnual).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lbFechaAnual).TextAlignment = (TextAlignment) 2;
    this.Anual.Condition = "[TipoVenc] == 1";
    this.Anual.Formatting.Visible = (DefaultBoolean) 1;
    this.Anual.Name = "Anual";
    this.xrBarCode3.AutoModule = true;
    ((XRControl) this.xrBarCode3).Borders = (BorderSide) 0;
    ((XRControl) this.xrBarCode3).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "CodigoBarraCupon")
    });
    ((XRControl) this.xrBarCode3).Font = new Font("Trebuchet MS", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrBarCode3).LocationFloat = new PointFloat(190.9372f, 70.12634f);
    this.xrBarCode3.Module = 0.984252f;
    ((XRControl) this.xrBarCode3).Name = "xrBarCode3";
    ((XRControl) this.xrBarCode3).Padding = new PaddingInfo(10, 10, 0, 0, 100f);
    this.xrBarCode3.ShowText = false;
    ((XRControl) this.xrBarCode3).SizeF = new SizeF(372.8f, 34.79f);
    ((XRControl) this.xrBarCode3).StylePriority.UseBorders = false;
    ((XRControl) this.xrBarCode3).StylePriority.UseFont = false;
    ((XRControl) this.xrBarCode3).StylePriority.UseTextAlignment = false;
    code128Generator.CharacterSet = (Code128Charset) 105;
    this.xrBarCode3.Symbology = (BarCodeGeneratorBase) code128Generator;
    ((XRControl) this.xrBarCode3).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrBarCode3).BeforePrint += new PrintEventHandler(this.xrBarCode3_BeforePrint);
    ((XRControl) this.xrLabel24).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel24).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "CodigoBarraCupon")
    });
    ((XRControl) this.xrLabel24).Font = new Font("Calibri", 9.75f);
    ((XRControl) this.xrLabel24).LocationFloat = new PointFloat(176.621f, 109.0417f);
    ((XRControl) this.xrLabel24).Name = "xrLabel24";
    ((XRControl) this.xrLabel24).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel24).SizeF = new SizeF(409.3751f, 18.83333f);
    ((XRControl) this.xrLabel24).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel24).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel24).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel24).Text = "xrLabel22";
    ((XRControl) this.xrLabel24).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel25).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel25).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "PeriodoStr")
    });
    ((XRControl) this.xrLabel25).Font = new Font("Calibri", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel25).LocationFloat = new PointFloat(1.079305f, 58.12632f);
    ((XRControl) this.xrLabel25).Name = "xrLabel25";
    ((XRControl) this.xrLabel25).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel25).SizeF = new SizeF(140.5455f, 39.91542f);
    ((XRControl) this.xrLabel25).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel25).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel25).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel25).Text = "ANUAL";
    ((XRControl) this.xrLabel25).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.TableTitu).LocationFloat = new PointFloat(1.0793f, 100.0417f);
    ((XRControl) this.TableTitu).Name = "TableTitu";
    this.TableTitu.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow3
    });
    ((XRControl) this.TableTitu).SizeF = new SizeF(140f, 23f);
    this.xrTableRow3.Cells.AddRange(new XRTableCell[1]
    {
      this.lbVencimiento
    });
    ((XRControl) this.xrTableRow3).Name = "xrTableRow3";
    this.xrTableRow3.Weight = 1.0;
    ((XRControl) this.lbVencimiento).Font = new Font("Calibri", 9.75f);
    ((Collection<FormattingRule>) ((XRControl) this.lbVencimiento).FormattingRules).Add(this.Semestral);
    ((XRControl) this.lbVencimiento).Name = "lbVencimiento";
    ((XRControl) this.lbVencimiento).StylePriority.UseFont = false;
    ((XRControl) this.lbVencimiento).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lbVencimiento).Text = "VENCIMIENTO";
    ((XRControl) this.lbVencimiento).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.lbVencimiento).Visible = false;
    this.lbVencimiento.Weight = 0.996118898839057;
    ((XRControl) this.lbVenciAnual).Borders = (BorderSide) 15;
    ((XRControl) this.lbVenciAnual).Font = new Font("Calibri", 9.75f);
    ((Collection<FormattingRule>) ((XRControl) this.lbVenciAnual).FormattingRules).Add(this.Anual);
    ((XRControl) this.lbVenciAnual).LocationFloat = new PointFloat(1.030763f, 100.0417f);
    ((XRControl) this.lbVenciAnual).Name = "lbVenciAnual";
    ((XRControl) this.lbVenciAnual).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lbVenciAnual).SizeF = new SizeF(140f, 23f);
    ((XRControl) this.lbVenciAnual).StylePriority.UseBorders = false;
    ((XRControl) this.lbVenciAnual).StylePriority.UseFont = false;
    ((XRControl) this.lbVenciAnual).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lbVenciAnual).Text = "VENCIMIENTO";
    ((XRControl) this.lbVenciAnual).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.TopMargin).HeightF = 0.0f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.TopMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.TopMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.BottomMargin).HeightF = 0.0f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.BottomMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.BottomMargin).TextAlignment = (TextAlignment) 1;
    this.TotalPagar.Expression = "[TasaGral] + [InfUrbana] + [AlPublico ] + [ServAgua] + [BombLita] - [DescLita] + [RecaBole] + [CEmision]";
    this.TotalPagar.Name = "TotalPagar";
    this.ToltalP.Expression = "[ImpoLico] - [DescLico] + [RecaBole] + [CEmision]";
    this.ToltalP.Name = "ToltalP";
    this.objectDataSource1.DataSource = (object) typeof (CuponComercio);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this).Bands.AddRange(new Band[3]
    {
      (Band) this.Detail,
      (Band) this.TopMargin,
      (Band) this.BottomMargin
    });
    this.CalculatedFields.AddRange(new CalculatedField[2]
    {
      this.TotalPagar,
      this.ToltalP
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    this.FormattingRuleSheet.AddRange(new FormattingRule[2]
    {
      this.Anual,
      this.Semestral
    });
    this.Margins = new Margins(33, 19, 0, 0);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.ScriptsSource = "\r\nprivate void xrBarCode3_EvaluateBinding(object sender, DevExpress.XtraReports.UI.BindingEventArgs e) {\r\n}\r\n";
    this.Version = "21.2";
    ((ISupportInitialize) this.TableDeta).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.TableTitu).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
