// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM.irepBoletoCemenSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraPrinting.Drawing;
using DevExpress.XtraReports.Expressions;
using DevExpress.XtraReports.UI;
using InfoGov.Core;
using InfoGov.Reports;
using InfoGov.Resources;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM;

public class irepBoletoCemenSM : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private PageHeaderBand PageHeader;
  private XRPictureBox xrpbLogoSanMartin;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCellBanelcoLink;
  private XRTableCell xrTableCellBanelcoL;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCellNumeroObj;
  private XRTableCell xrTableCellCuenCtct;
  private XRRichText xrRichTextTituloPropiedad;
  private PageFooterBand PageFooter;
  private XRPictureBox xrPictureBox1;
  private XRPictureBox xrPictureBox2;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private GroupHeaderBand GroupHeader1;
  private XRSubreport xrSubreport1;
  private XRLabel xrLabelCucuPers;
  private XRLabel xrLabelDetaPers;
  private XRLabel xrLabel7;
  private XRLabel xrLabel6;
  private XRLabel xrLabel5;
  private XRLabel xrLabelDomPostal;
  private XRLabel xrLabelCucuInvalidoStr;
  private XRLabel xrLabelDeudaApremio;
  private ObjectDataSource objectDataSource1;
  private XRLabel xrLabel1;
  private XRSubreport xrSubreport2;
  private XRPanel xrPanel1;
  private XRTable xrTable3;
  private XRTableRow xrTableRow3;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRLabel xrLabel10;
  private XRLabel xrLabel9;
  private XRLabel xrLabel8;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private XRLabel xrLabel2;
  private XRLabel xrLabel13;
  private XRLabel xrLabel12;
  private XRLabel xrLabel11;
  private XRPanel xrPanelDifuntos;
  private XRLabel xrLabel22;
  private XRLabel xrLabel21;
  private XRLabel xrLabel20;
  private XRLabel xrLabel19;
  private XRLabel xrLabel18;
  private XRLabel xrLabel17;
  private XRLabel xrLabel16;
  private XRLabel xrLabel15;
  private XRLabel xrLabel14;

  public irepBoletoCemenSM(short op)
    : base(nameof (irepBoletoCemenSM), "Boleto Cementerio")
  {
    this.InitializeComponent();
    this.xrpbLogoSanMartin.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
    switch (op)
    {
      case 1:
        ((XRControl) this.xrLabel1).Visible = false;
        ((XRControl) this.xrRichTextTituloPropiedad).Visible = ((XRControl) this.xrpbLogoSanMartin).Visible = false;
        ((XRControl) this.xrTableCellNumeroObj).Visible = ((XRControl) this.xrTableCellBanelcoLink).Visible = false;
        ((XRControl) this.xrPictureBox1).Visible = ((XRControl) this.xrPictureBox2).Visible = false;
        ((XRControl) this.xrSubreport2).Visible = true;
        ((XRControl) this.xrLabel2).Visible = ((XRControl) this.xrLabel14).Visible = true;
        ((XRControl) this.xrLabel3).Visible = ((XRControl) this.xrLabel15).Visible = true;
        ((XRControl) this.xrLabel4).Visible = ((XRControl) this.xrLabel16).Visible = true;
        ((XRControl) this.xrLabel8).Visible = ((XRControl) this.xrLabel17).Visible = ((XRControl) this.xrLabel11).Visible = ((XRControl) this.xrLabel22).Visible = true;
        ((XRControl) this.xrLabel9).Visible = ((XRControl) this.xrLabel18).Visible = ((XRControl) this.xrLabel12).Visible = ((XRControl) this.xrLabel21).Visible = true;
        ((XRControl) this.xrLabel10).Visible = ((XRControl) this.xrLabel20).Visible = ((XRControl) this.xrLabel13).Visible = ((XRControl) this.xrLabel19).Visible = true;
        ((XRControl) this.xrTable3).Visible = true;
        ((XRControl) this.xrPanel1).Visible = ((XRControl) this.xrPanelDifuntos).Visible = true;
        break;
      case 2:
        ((XRControl) this.xrLabel1).Visible = true;
        ((XRControl) this.xrRichTextTituloPropiedad).Visible = ((XRControl) this.xrpbLogoSanMartin).Visible = true;
        ((XRControl) this.xrTableCellNumeroObj).Visible = ((XRControl) this.xrTableCellBanelcoLink).Visible = true;
        ((XRControl) this.xrTableCellCuenCtct).Visible = ((XRControl) this.xrTableCellBanelcoL).Visible = false;
        ((XRControl) this.xrLabelDetaPers).Visible = ((XRControl) this.xrLabelCucuPers).Visible = ((XRControl) this.xrLabelCucuInvalidoStr).Visible = false;
        ((XRControl) this.xrLabelDomPostal).Visible = ((XRControl) this.xrLabel5).Visible = false;
        ((XRControl) this.xrLabel6).Visible = ((XRControl) this.xrLabel5).Visible = true;
        ((XRControl) this.xrLabelDetaPers).Visible = ((XRControl) this.xrLabelCucuPers).Visible = ((XRControl) this.xrLabelCucuInvalidoStr).Visible = false;
        ((XRControl) this.xrTableCellCuenCtct).Visible = ((XRControl) this.xrTableCellBanelcoL).Visible = false;
        ((XRControl) this.xrLabelDeudaApremio).Visible = false;
        ((XRControl) this.xrSubreport1).Visible = false;
        ((XRControl) this.xrLabel5).Visible = false;
        ((XRControl) this.xrLabel6).Visible = false;
        ((XRControl) this.xrSubreport2).Visible = false;
        ((XRControl) this.xrLabel2).Visible = ((XRControl) this.xrLabel14).Visible = false;
        ((XRControl) this.xrLabel3).Visible = ((XRControl) this.xrLabel15).Visible = false;
        ((XRControl) this.xrLabel4).Visible = ((XRControl) this.xrLabel16).Visible = false;
        ((XRControl) this.xrLabel8).Visible = ((XRControl) this.xrLabel17).Visible = ((XRControl) this.xrLabel11).Visible = ((XRControl) this.xrLabel22).Visible = false;
        ((XRControl) this.xrLabel9).Visible = ((XRControl) this.xrLabel18).Visible = ((XRControl) this.xrLabel12).Visible = ((XRControl) this.xrLabel21).Visible = false;
        ((XRControl) this.xrLabel10).Visible = ((XRControl) this.xrLabel20).Visible = ((XRControl) this.xrLabel13).Visible = ((XRControl) this.xrLabel19).Visible = false;
        ((XRControl) this.xrTable3).Visible = false;
        ((XRControl) this.xrPanel1).Visible = ((XRControl) this.xrPanelDifuntos).Visible = false;
        break;
    }
  }

  private void GroupHeader1_BeforePrint(object sender, PrintEventArgs e)
  {
    DTOBoletoCemenSM currentRow = (DTOBoletoCemenSM) ((XtraReportBase) this).GetCurrentRow();
    if (currentRow == null)
      return;
    ((XtraReportBase) ((SubreportBase) this.xrSubreport1).ReportSource).DataSource = (object) currentRow.cupones;
  }

  private void PageHeader_BeforePrint(object sender, PrintEventArgs e)
  {
    DTOBoletoCemenSM currentRow = (DTOBoletoCemenSM) ((XtraReportBase) this).GetCurrentRow();
    if (currentRow == null)
      return;
    ((XtraReportBase) ((SubreportBase) this.xrSubreport2).ReportSource).DataSource = (object) currentRow.difuntos;
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (irepBoletoCemenSM));
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.PageHeader = new PageHeaderBand();
    this.xrSubreport2 = new XRSubreport();
    this.xrPanel1 = new XRPanel();
    this.xrLabel22 = new XRLabel();
    this.xrLabel21 = new XRLabel();
    this.xrLabel20 = new XRLabel();
    this.xrLabel19 = new XRLabel();
    this.xrLabel18 = new XRLabel();
    this.xrLabel17 = new XRLabel();
    this.xrLabel16 = new XRLabel();
    this.xrLabel15 = new XRLabel();
    this.xrLabel14 = new XRLabel();
    this.xrLabel13 = new XRLabel();
    this.xrLabel12 = new XRLabel();
    this.xrLabel11 = new XRLabel();
    this.xrLabel10 = new XRLabel();
    this.xrLabel9 = new XRLabel();
    this.xrLabel8 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.xrTable3 = new XRTable();
    this.xrTableRow3 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrLabel1 = new XRLabel();
    this.xrLabelDeudaApremio = new XRLabel();
    this.xrLabelCucuInvalidoStr = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLabelDomPostal = new XRLabel();
    this.xrLabel7 = new XRLabel();
    this.xrLabel6 = new XRLabel();
    this.xrLabelCucuPers = new XRLabel();
    this.xrLabelDetaPers = new XRLabel();
    this.xrPictureBox2 = new XRPictureBox();
    this.xrRichTextTituloPropiedad = new XRRichText();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCellBanelcoLink = new XRTableCell();
    this.xrTableCellBanelcoL = new XRTableCell();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCellNumeroObj = new XRTableCell();
    this.xrTableCellCuenCtct = new XRTableCell();
    this.xrpbLogoSanMartin = new XRPictureBox();
    this.xrPanelDifuntos = new XRPanel();
    this.PageFooter = new PageFooterBand();
    this.xrPictureBox1 = new XRPictureBox();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrSubreport1 = new XRSubreport();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrTable3).BeginInit();
    ((ISupportInitialize) this.xrRichTextTituloPropiedad).BeginInit();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).Dpi = 254f;
    ((XRControl) this.TopMargin).HeightF = 35f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).Dpi = 254f;
    ((XRControl) this.BottomMargin).HeightF = 99f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Dpi = 254f;
    ((XRControl) this.Detail).HeightF = 0.0f;
    this.Detail.HierarchyPrintOptions.Indent = 50.80001f;
    ((XRControl) this.Detail).KeepTogether = true;
    this.Detail.KeepTogetherWithDetailReports = true;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[18]
    {
      (XRControl) this.xrSubreport2,
      (XRControl) this.xrPanel1,
      (XRControl) this.xrTable3,
      (XRControl) this.xrLabel1,
      (XRControl) this.xrLabelDeudaApremio,
      (XRControl) this.xrLabelCucuInvalidoStr,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabelDomPostal,
      (XRControl) this.xrLabel7,
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabelCucuPers,
      (XRControl) this.xrLabelDetaPers,
      (XRControl) this.xrPictureBox2,
      (XRControl) this.xrRichTextTituloPropiedad,
      (XRControl) this.xrTable2,
      (XRControl) this.xrTable1,
      (XRControl) this.xrpbLogoSanMartin,
      (XRControl) this.xrPanelDifuntos
    });
    ((XRControl) this.PageHeader).Dpi = 254f;
    ((XRControl) this.PageHeader).HeightF = 1522.208f;
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((XRControl) this.PageHeader).BeforePrint += new PrintEventHandler(this.PageHeader_BeforePrint);
    ((XRControl) this.xrSubreport2).Dpi = 254f;
    ((XRControl) this.xrSubreport2).LocationFloat = new PointFloat(993.0005f, 1090.083f);
    ((XRControl) this.xrSubreport2).Name = "xrSubreport2";
    ((SubreportBase) this.xrSubreport2).ReportSource = (XtraReport) new DifuntosSM();
    ((XRControl) this.xrSubreport2).SizeF = new SizeF(927.9995f, 418.4397f);
    ((XRControl) this.xrPanel1).Borders = (BorderSide) 13;
    ((XRControl) this.xrPanel1).CanGrow = false;
    ((XRControl) this.xrPanel1).Controls.AddRange(new XRControl[18]
    {
      (XRControl) this.xrLabel22,
      (XRControl) this.xrLabel21,
      (XRControl) this.xrLabel20,
      (XRControl) this.xrLabel19,
      (XRControl) this.xrLabel18,
      (XRControl) this.xrLabel17,
      (XRControl) this.xrLabel16,
      (XRControl) this.xrLabel15,
      (XRControl) this.xrLabel14,
      (XRControl) this.xrLabel13,
      (XRControl) this.xrLabel12,
      (XRControl) this.xrLabel11,
      (XRControl) this.xrLabel10,
      (XRControl) this.xrLabel9,
      (XRControl) this.xrLabel8,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLabel2
    });
    ((XRControl) this.xrPanel1).Dpi = 254f;
    ((XRControl) this.xrPanel1).LocationFloat = new PointFloat(8.074442E-05f, 1090.083f);
    ((XRControl) this.xrPanel1).Name = "xrPanel1";
    ((XRControl) this.xrPanel1).SizeF = new SizeF(971.9996f, 432.1245f);
    ((XRControl) this.xrPanel1).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel22).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel22).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel22).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CuadDifu]")
    });
    ((XRControl) this.xrLabel22).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel22).LocationFloat = new PointFloat(770.8146f, 200.2603f);
    this.xrLabel22.Multiline = true;
    ((XRControl) this.xrLabel22).Name = "xrLabel22";
    ((XRControl) this.xrLabel22).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel22).SizeF = new SizeF(178.1859f, 58.42004f);
    ((XRControl) this.xrLabel22).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel22).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel22).Text = "xrLabel22";
    ((XRControl) this.xrLabel21).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel21).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel21).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FilaDifu]")
    });
    ((XRControl) this.xrLabel21).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel21).LocationFloat = new PointFloat(770.8149f, 258.6803f);
    this.xrLabel21.Multiline = true;
    ((XRControl) this.xrLabel21).Name = "xrLabel21";
    ((XRControl) this.xrLabel21).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel21).SizeF = new SizeF(178.1855f, 58.42004f);
    ((XRControl) this.xrLabel21).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel21).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel21).Text = "xrLabel21";
    ((XRControl) this.xrLabel20).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel20).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel20).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FereDifu]")
    });
    ((XRControl) this.xrLabel20).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel20).LocationFloat = new PointFloat(310.0001f, 317.1003f);
    this.xrLabel20.Multiline = true;
    ((XRControl) this.xrLabel20).Name = "xrLabel20";
    ((XRControl) this.xrLabel20).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel20).SizeF = new SizeF(154.356f, 58.42004f);
    ((XRControl) this.xrLabel20).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel20).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel20).Text = "xrLabel20";
    ((XRControl) this.xrLabel20).TextFormatString = "{0:d}";
    ((XRControl) this.xrLabel19).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel19).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel19).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FemaDifu]")
    });
    ((XRControl) this.xrLabel19).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel19).LocationFloat = new PointFloat(770.8144f, 317.1003f);
    this.xrLabel19.Multiline = true;
    ((XRControl) this.xrLabel19).Name = "xrLabel19";
    ((XRControl) this.xrLabel19).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel19).SizeF = new SizeF(178.186f, 58.42004f);
    ((XRControl) this.xrLabel19).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel19).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel19).Text = "xrLabel19";
    ((XRControl) this.xrLabel19).TextFormatString = "{0:d}";
    ((XRControl) this.xrLabel18).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel18).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel18).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[SectDifu]")
    });
    ((XRControl) this.xrLabel18).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel18).LocationFloat = new PointFloat(310.0001f, 258.6803f);
    this.xrLabel18.Multiline = true;
    ((XRControl) this.xrLabel18).Name = "xrLabel18";
    ((XRControl) this.xrLabel18).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel18).SizeF = new SizeF(154.356f, 58.42004f);
    ((XRControl) this.xrLabel18).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel18).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel18).Text = "xrLabel18";
    ((XRControl) this.xrLabel17).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel17).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel17).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NumeDifu]")
    });
    ((XRControl) this.xrLabel17).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel17).LocationFloat = new PointFloat(310.0001f, 200.2603f);
    this.xrLabel17.Multiline = true;
    ((XRControl) this.xrLabel17).Name = "xrLabel17";
    ((XRControl) this.xrLabel17).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel17).SizeF = new SizeF(135.3562f, 58.42004f);
    ((XRControl) this.xrLabel17).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel17).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel17).Text = "xrLabel17";
    ((XRControl) this.xrLabel16).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel16).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel16).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaClas]")
    });
    ((XRControl) this.xrLabel16).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel16).LocationFloat = new PointFloat(310.0001f, 141.8402f);
    this.xrLabel16.Multiline = true;
    ((XRControl) this.xrLabel16).Name = "xrLabel16";
    ((XRControl) this.xrLabel16).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel16).SizeF = new SizeF(586.9995f, 58.42004f);
    ((XRControl) this.xrLabel16).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel16).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel16).Text = "xrLabel16";
    ((XRControl) this.xrLabel15).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel15).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel15).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaTise]")
    });
    ((XRControl) this.xrLabel15).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel15).LocationFloat = new PointFloat(310.0001f, 83.42017f);
    this.xrLabel15.Multiline = true;
    ((XRControl) this.xrLabel15).Name = "xrLabel15";
    ((XRControl) this.xrLabel15).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel15).SizeF = new SizeF(586.9995f, 58.42004f);
    ((XRControl) this.xrLabel15).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel15).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel15).Text = "xrLabel15";
    ((XRControl) this.xrLabel14).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel14).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaCeme]")
    });
    ((XRControl) this.xrLabel14).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel14).LocationFloat = new PointFloat(310f, 25.00012f);
    this.xrLabel14.Multiline = true;
    ((XRControl) this.xrLabel14).Name = "xrLabel14";
    ((XRControl) this.xrLabel14).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel14).SizeF = new SizeF(586.9995f, 58.42004f);
    ((XRControl) this.xrLabel14).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel14).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel14).Text = "xrLabel14";
    ((XRControl) this.xrLabel13).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel13).Dpi = 254f;
    ((XRControl) this.xrLabel13).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel13).LocationFloat = new PointFloat(464.3562f, 317.1003f);
    this.xrLabel13.Multiline = true;
    ((XRControl) this.xrLabel13).Name = "xrLabel13";
    ((XRControl) this.xrLabel13).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel13).SizeF = new SizeF(306.4582f, 58.42004f);
    ((XRControl) this.xrLabel13).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel13).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel13).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel13).Text = "Fec. Mantenimiento:";
    ((XRControl) this.xrLabel13).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel12).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel12).Dpi = 254f;
    ((XRControl) this.xrLabel12).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel12).LocationFloat = new PointFloat(512.8144f, 258.6803f);
    this.xrLabel12.Multiline = true;
    ((XRControl) this.xrLabel12).Name = "xrLabel12";
    ((XRControl) this.xrLabel12).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel12).SizeF = new SizeF(258f, 58.42f);
    ((XRControl) this.xrLabel12).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel12).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel12).Text = "Fila:";
    ((XRControl) this.xrLabel12).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel11).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel11).Dpi = 254f;
    ((XRControl) this.xrLabel11).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel11).LocationFloat = new PointFloat(512.8144f, 200.2603f);
    this.xrLabel11.Multiline = true;
    ((XRControl) this.xrLabel11).Name = "xrLabel11";
    ((XRControl) this.xrLabel11).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel11).SizeF = new SizeF(258f, 58.42f);
    ((XRControl) this.xrLabel11).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel11).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel11).Text = "Galería/Cuadro:";
    ((XRControl) this.xrLabel11).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel10).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel10).Dpi = 254f;
    ((XRControl) this.xrLabel10).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel10).LocationFloat = new PointFloat(5.000082f, 317.1003f);
    this.xrLabel10.Multiline = true;
    ((XRControl) this.xrLabel10).Name = "xrLabel10";
    ((XRControl) this.xrLabel10).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel10).SizeF = new SizeF(305f, 58.42004f);
    ((XRControl) this.xrLabel10).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel10).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel10).Text = "Fec. Renovación:";
    ((XRControl) this.xrLabel10).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel9).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel9).Dpi = 254f;
    ((XRControl) this.xrLabel9).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(5f, 258.6803f);
    this.xrLabel9.Multiline = true;
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(305f, 58.42f);
    ((XRControl) this.xrLabel9).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel9).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel9).Text = "Sector:";
    ((XRControl) this.xrLabel9).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel8).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel8).Dpi = 254f;
    ((XRControl) this.xrLabel8).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel8).LocationFloat = new PointFloat(5.000082f, 200.2603f);
    this.xrLabel8.Multiline = true;
    ((XRControl) this.xrLabel8).Name = "xrLabel8";
    ((XRControl) this.xrLabel8).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel8).SizeF = new SizeF(305f, 58.42004f);
    ((XRControl) this.xrLabel8).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel8).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel8).Text = "Número:";
    ((XRControl) this.xrLabel8).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel4).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel4).Dpi = 254f;
    ((XRControl) this.xrLabel4).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(5.000099f, 141.8402f);
    this.xrLabel4.Multiline = true;
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(305f, 58.42004f);
    ((XRControl) this.xrLabel4).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "Condición Sepultura:";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel3).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel3).Dpi = 254f;
    ((XRControl) this.xrLabel3).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(5f, 83.42017f);
    this.xrLabel3.Multiline = true;
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(305f, 58.42f);
    ((XRControl) this.xrLabel3).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "Tipo Sepultura:";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel2).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel2).Dpi = 254f;
    ((XRControl) this.xrLabel2).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(5f, 25.00012f);
    this.xrLabel2.Multiline = true;
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(305f, 58.42f);
    ((XRControl) this.xrLabel2).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Cementerio:";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrTable3).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable3).Dpi = 254f;
    ((XRControl) this.xrTable3).LocationFloat = new PointFloat(0.0f, 1026.583f);
    ((XRControl) this.xrTable3).Name = "xrTable3";
    ((XRControl) this.xrTable3).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable3.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow3
    });
    ((XRControl) this.xrTable3).SizeF = new SizeF(1944f, 63.5f);
    ((XRControl) this.xrTable3).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable3).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow3.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell1,
      this.xrTableCell2
    });
    ((XRControl) this.xrTableRow3).Dpi = 254f;
    ((XRControl) this.xrTableRow3).Name = "xrTableRow3";
    this.xrTableRow3.Weight = 1.0;
    ((XRControl) this.xrTableCell1).Dpi = 254f;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "DATOS DE LA SEPULTURA";
    this.xrTableCell1.Weight = 1.0;
    ((XRControl) this.xrTableCell2).Dpi = 254f;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "DIFUNTOS";
    this.xrTableCell2.Weight = 1.0;
    ((XRControl) this.xrLabel1).Dpi = 254f;
    ((XRControl) this.xrLabel1).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(441.0001f, 265.9692f);
    this.xrLabel1.Multiline = true;
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(290f, 38.57623f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).Text = "Domicilio Postal";
    ((XRControl) this.xrLabelDeudaApremio).CanGrow = false;
    ((XRControl) this.xrLabelDeudaApremio).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabelDeudaApremio).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DeudaStr]")
    });
    ((XRControl) this.xrLabelDeudaApremio).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabelDeudaApremio).ForeColor = Color.Red;
    ((XRControl) this.xrLabelDeudaApremio).LocationFloat = new PointFloat(495.3562f, 490.5624f);
    this.xrLabelDeudaApremio.Multiline = true;
    ((XRControl) this.xrLabelDeudaApremio).Name = "xrLabelDeudaApremio";
    ((XRControl) this.xrLabelDeudaApremio).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabelDeudaApremio).SizeF = new SizeF(1063.625f, 50f);
    ((XRControl) this.xrLabelDeudaApremio).StylePriority.UseFont = false;
    ((XRControl) this.xrLabelDeudaApremio).StylePriority.UseForeColor = false;
    ((XRControl) this.xrLabelDeudaApremio).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabelDeudaApremio).Text = "SU PROPIEDAD POSEE DEUDA CON PERIODOS APREMIADOS.";
    ((XRControl) this.xrLabelDeudaApremio).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabelCucuInvalidoStr).CanGrow = false;
    ((XRControl) this.xrLabelCucuInvalidoStr).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabelCucuInvalidoStr).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CuitInvalidoStr]")
    });
    ((XRControl) this.xrLabelCucuInvalidoStr).Font = new Font("Arial", 6f);
    ((XRControl) this.xrLabelCucuInvalidoStr).LocationFloat = new PointFloat(731.0001f, 146.42f);
    this.xrLabelCucuInvalidoStr.Multiline = true;
    ((XRControl) this.xrLabelCucuInvalidoStr).Name = "xrLabelCucuInvalidoStr";
    ((XRControl) this.xrLabelCucuInvalidoStr).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabelCucuInvalidoStr).SizeF = new SizeF(615.0001f, 116.84f);
    ((XRControl) this.xrLabelCucuInvalidoStr).StylePriority.UseFont = false;
    ((XRControl) this.xrLabelCucuInvalidoStr).Text = "xrLabelCucuInvalidoStr";
    ((XRControl) this.xrLabel5).Dpi = 254f;
    ((XRControl) this.xrLabel5).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(529.9001f, 410.1891f);
    this.xrLabel5.Multiline = true;
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(20.32001f, 45.72f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "-";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabelDomPostal).CanGrow = false;
    ((XRControl) this.xrLabelDomPostal).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabelDomPostal).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DomiLicePostal]")
    });
    ((XRControl) this.xrLabelDomPostal).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabelDomPostal).LocationFloat = new PointFloat(441.0001f, 315.3892f);
    this.xrLabelDomPostal.Multiline = true;
    ((XRControl) this.xrLabelDomPostal).Name = "xrLabelDomPostal";
    ((XRControl) this.xrLabelDomPostal).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabelDomPostal).SizeF = new SizeF(1499f, 94.7999f);
    ((XRControl) this.xrLabelDomPostal).StylePriority.UseFont = false;
    ((XRControl) this.xrLabelDomPostal).Text = "xrLabelDomPostal";
    this.xrLabelDomPostal.TextFitMode = (TextFitMode) 2;
    ((XRControl) this.xrLabel7).CanGrow = false;
    ((XRControl) this.xrLabel7).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[LocaLice]")
    });
    ((XRControl) this.xrLabel7).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(550.22f, 410.1891f);
    this.xrLabel7.Multiline = true;
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(1192.593f, 45.72f);
    ((XRControl) this.xrLabel7).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel7).Text = "xrLabel7";
    ((XRControl) this.xrLabel6).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CopoLice]")
    });
    ((XRControl) this.xrLabel6).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(441.0001f, 410.1891f);
    this.xrLabel6.Multiline = true;
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(88.89999f, 45.72f);
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "xrLabel6";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrLabelCucuPers).CanGrow = false;
    ((XRControl) this.xrLabelCucuPers).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabelCucuPers).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CucuPers]")
    });
    ((XRControl) this.xrLabelCucuPers).Font = new Font("Arial", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabelCucuPers).ForeColor = Color.FromArgb(0, 148, (int) byte.MaxValue);
    ((XRControl) this.xrLabelCucuPers).LocationFloat = new PointFloat(441.0001f, 146.42f);
    this.xrLabelCucuPers.Multiline = true;
    ((XRControl) this.xrLabelCucuPers).Name = "xrLabelCucuPers";
    ((XRControl) this.xrLabelCucuPers).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabelCucuPers).SizeF = new SizeF(290f, 82.44414f);
    ((XRControl) this.xrLabelCucuPers).StylePriority.UseFont = false;
    ((XRControl) this.xrLabelCucuPers).StylePriority.UseForeColor = false;
    ((XRControl) this.xrLabelCucuPers).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabelCucuPers).Text = "xrLabelCucuPers";
    ((XRControl) this.xrLabelCucuPers).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabelDetaPers).CanGrow = false;
    ((XRControl) this.xrLabelDetaPers).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabelDetaPers).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaPers]")
    });
    ((XRControl) this.xrLabelDetaPers).Font = new Font("Arial", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabelDetaPers).ForeColor = Color.FromArgb(0, 148, (int) byte.MaxValue);
    ((XRControl) this.xrLabelDetaPers).LocationFloat = new PointFloat(441.0001f, 88f);
    this.xrLabelDetaPers.Multiline = true;
    ((XRControl) this.xrLabelDetaPers).Name = "xrLabelDetaPers";
    ((XRControl) this.xrLabelDetaPers).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabelDetaPers).SizeF = new SizeF(1499f, 58.42f);
    ((XRControl) this.xrLabelDetaPers).StylePriority.UseFont = false;
    ((XRControl) this.xrLabelDetaPers).StylePriority.UseForeColor = false;
    ((XRControl) this.xrLabelDetaPers).Text = "xrLabelDetaPers";
    ((XRControl) this.xrPictureBox2).Dpi = 254f;
    this.xrPictureBox2.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox2.ImageSource"));
    ((XRControl) this.xrPictureBox2).LocationFloat = new PointFloat(8.074442E-05f, 540.5624f);
    ((XRControl) this.xrPictureBox2).Name = "xrPictureBox2";
    ((XRControl) this.xrPictureBox2).SizeF = new SizeF(1944f, 486.0209f);
    this.xrPictureBox2.Sizing = (ImageSizeMode) 1;
    ((XRControl) this.xrRichTextTituloPropiedad).BackColor = Color.FromArgb(0, 148, (int) byte.MaxValue);
    ((XRControl) this.xrRichTextTituloPropiedad).Dpi = 254f;
    ((XRControl) this.xrRichTextTituloPropiedad).ForeColor = Color.White;
    ((XRControl) this.xrRichTextTituloPropiedad).LocationFloat = new PointFloat(441.0001f, 0.0f);
    ((XRControl) this.xrRichTextTituloPropiedad).Name = "xrRichTextTituloPropiedad";
    ((XRRichTextBase) this.xrRichTextTituloPropiedad).SerializableRtfString = componentResourceManager.GetString("xrRichTextTituloPropiedad.SerializableRtfString");
    ((XRControl) this.xrRichTextTituloPropiedad).SizeF = new SizeF(1499f, 80f);
    ((XRControl) this.xrRichTextTituloPropiedad).StylePriority.UseBackColor = false;
    ((XRControl) this.xrRichTextTituloPropiedad).StylePriority.UseFont = false;
    ((XRControl) this.xrRichTextTituloPropiedad).StylePriority.UseForeColor = false;
    ((XRControl) this.xrTable2).Dpi = 254f;
    ((XRControl) this.xrTable2).Font = new Font("Calibri", 9.75f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(1346f, 204.84f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(598f, 58.41998f);
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCellBanelcoLink,
      this.xrTableCellBanelcoL
    });
    ((XRControl) this.xrTableRow2).Dpi = 254f;
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((XRControl) this.xrTableCellBanelcoLink).BackColor = Color.FromArgb(0, 148, (int) byte.MaxValue);
    ((XRControl) this.xrTableCellBanelcoLink).Dpi = 254f;
    ((XRControl) this.xrTableCellBanelcoLink).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTableCellBanelcoLink).ForeColor = Color.White;
    ((XRLabel) this.xrTableCellBanelcoLink).Multiline = true;
    ((XRControl) this.xrTableCellBanelcoLink).Name = "xrTableCellBanelcoLink";
    ((XRControl) this.xrTableCellBanelcoLink).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCellBanelcoLink).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCellBanelcoLink).StylePriority.UseForeColor = false;
    ((XRControl) this.xrTableCellBanelcoLink).Text = "Banelco/Link:";
    this.xrTableCellBanelcoLink.Weight = 0.852305991511908;
    ((XRControl) this.xrTableCellBanelcoL).Borders = (BorderSide) 15;
    ((XRControl) this.xrTableCellBanelcoL).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCellBanelcoL).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[BanelcoLink]")
    });
    ((XRControl) this.xrTableCellBanelcoL).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTableCellBanelcoL).ForeColor = Color.FromArgb(0, 148, (int) byte.MaxValue);
    ((XRLabel) this.xrTableCellBanelcoL).Multiline = true;
    ((XRControl) this.xrTableCellBanelcoL).Name = "xrTableCellBanelcoL";
    ((XRControl) this.xrTableCellBanelcoL).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCellBanelcoL).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCellBanelcoL).StylePriority.UseForeColor = false;
    ((XRControl) this.xrTableCellBanelcoL).Text = "0101002002";
    this.xrTableCellBanelcoL.Weight = 0.96110901731821485;
    ((XRControl) this.xrTable1).Dpi = 254f;
    ((XRControl) this.xrTable1).Font = new Font("Calibri", 9.75f);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(1346f, 146.42f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(597.9995f, 58.42003f);
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCellNumeroObj,
      this.xrTableCellCuenCtct
    });
    ((XRControl) this.xrTableRow1).Dpi = 254f;
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCellNumeroObj).BackColor = Color.FromArgb(0, 148, (int) byte.MaxValue);
    ((XRControl) this.xrTableCellNumeroObj).Dpi = 254f;
    ((XRControl) this.xrTableCellNumeroObj).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrTableCellNumeroObj).ForeColor = Color.White;
    ((XRLabel) this.xrTableCellNumeroObj).Multiline = true;
    ((XRControl) this.xrTableCellNumeroObj).Name = "xrTableCellNumeroObj";
    ((XRControl) this.xrTableCellNumeroObj).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCellNumeroObj).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCellNumeroObj).StylePriority.UseForeColor = false;
    ((XRControl) this.xrTableCellNumeroObj).Text = "Número Objeto:";
    this.xrTableCellNumeroObj.Weight = 1.110236374726767;
    ((XRControl) this.xrTableCellCuenCtct).Borders = (BorderSide) 15;
    ((XRControl) this.xrTableCellCuenCtct).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCellCuenCtct).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CuenCtct]")
    });
    ((XRControl) this.xrTableCellCuenCtct).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTableCellCuenCtct).ForeColor = Color.FromArgb(0, 148, (int) byte.MaxValue);
    ((XRLabel) this.xrTableCellCuenCtct).Multiline = true;
    ((XRControl) this.xrTableCellCuenCtct).Name = "xrTableCellCuenCtct";
    ((XRControl) this.xrTableCellCuenCtct).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCellCuenCtct).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCellCuenCtct).StylePriority.UseForeColor = false;
    ((XRControl) this.xrTableCellCuenCtct).Text = "00002002";
    this.xrTableCellCuenCtct.Weight = 1.2519687168622522;
    ((XRControl) this.xrpbLogoSanMartin).Borders = (BorderSide) 0;
    ((XRControl) this.xrpbLogoSanMartin).Dpi = 254f;
    ((XRControl) this.xrpbLogoSanMartin).LocationFloat = new PointFloat(8.074442E-05f, 54.90916f);
    ((XRControl) this.xrpbLogoSanMartin).Name = "xrpbLogoSanMartin";
    ((XRControl) this.xrpbLogoSanMartin).SizeF = new SizeF(430f, 438f);
    this.xrpbLogoSanMartin.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrpbLogoSanMartin).StylePriority.UseBorders = false;
    ((XRControl) this.xrPanelDifuntos).Borders = (BorderSide) 12;
    ((XRControl) this.xrPanelDifuntos).CanGrow = false;
    ((XRControl) this.xrPanelDifuntos).Dpi = 254f;
    ((XRControl) this.xrPanelDifuntos).LocationFloat = new PointFloat(971.9996f, 1090.083f);
    ((XRControl) this.xrPanelDifuntos).Name = "xrPanelDifuntos";
    ((XRControl) this.xrPanelDifuntos).SizeF = new SizeF(971.9994f, 432.125f);
    ((XRControl) this.xrPanelDifuntos).StylePriority.UseBorders = false;
    ((XRControl) this.PageFooter).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrPictureBox1
    });
    ((XRControl) this.PageFooter).Dpi = 254f;
    ((XRControl) this.PageFooter).HeightF = 516.1458f;
    ((XRControl) this.PageFooter).Name = "PageFooter";
    ((XRControl) this.xrPictureBox1).Dpi = 254f;
    this.xrPictureBox1.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox1.ImageSource"));
    ((XRControl) this.xrPictureBox1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrPictureBox1).Name = "xrPictureBox1";
    ((XRControl) this.xrPictureBox1).SizeF = new SizeF(1946f, 516.1458f);
    this.xrPictureBox1.Sizing = (ImageSizeMode) 1;
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[2]
    {
      (Band) this.Detail1,
      (Band) this.GroupHeader1
    });
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    ((XRControl) this.DetailReport).Dpi = 254f;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((Band) this.DetailReport).PageBreak = (PageBreak) 3;
    ((XRControl) this.Detail1).Dpi = 254f;
    ((XRControl) this.Detail1).HeightF = 0.0f;
    this.Detail1.HierarchyPrintOptions.Indent = 50.80001f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrSubreport1
    });
    ((XRControl) this.GroupHeader1).Dpi = 254f;
    ((XRControl) this.GroupHeader1).HeightF = 58.42006f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.GroupHeader1).BeforePrint += new PrintEventHandler(this.GroupHeader1_BeforePrint);
    ((XRControl) this.xrSubreport1).Dpi = 254f;
    ((XRControl) this.xrSubreport1).LocationFloat = new PointFloat(6.546846E-05f, 0.0f);
    ((XRControl) this.xrSubreport1).Name = "xrSubreport1";
    ((SubreportBase) this.xrSubreport1).ReportSource = (XtraReport) new CuponesBoleCemenSM();
    ((XRControl) this.xrSubreport1).SizeF = new SizeF(1940f, 58.42f);
    this.objectDataSource1.DataSource = (object) typeof (DTOBoletoCemenSM);
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
    ((XRControl) this).Dpi = 254f;
    ((XRControl) this).Font = new Font("Arial", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Margins = new Margins(77, 77, 35, 99);
    this.PageHeight = 2970;
    this.PageWidth = 2100;
    this.PaperKind = PaperKind.A4;
    this.ReportUnit = (ReportUnit) 1;
    this.SnapGridSize = 25f;
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable3).EndInit();
    ((ISupportInitialize) this.xrRichTextTituloPropiedad).EndInit();
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
