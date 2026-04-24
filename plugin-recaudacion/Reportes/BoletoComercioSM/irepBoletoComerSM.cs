// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioSM.irepBoletoComerSM
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
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoComercioSM;

public class irepBoletoComerSM : InfoGovReport
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
  private XRLabel xrLabel10;
  private XRLabel xrLabel9;
  private XRLabel xrLabel12;
  private XRLabel xrLabel11;
  private XRLabel xrLabel14;
  private XRLabel xrLabel13;
  private XRLabel xrLabel5;
  private XRLabel xrLabelDomPostal;
  private XRLabel xrLabelCucuInvalidoStr;
  private XRLabel xrLabelDeudaApremio;
  private ObjectDataSource objectDataSource1;

  public irepBoletoComerSM(short op)
    : base(nameof (irepBoletoComerSM), "Boleto Comercio")
  {
    this.InitializeComponent();
    this.xrpbLogoSanMartin.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
    switch (op)
    {
      case 1:
        ((XRControl) this.xrRichTextTituloPropiedad).Visible = ((XRControl) this.xrpbLogoSanMartin).Visible = false;
        ((XRControl) this.xrTableCellNumeroObj).Visible = ((XRControl) this.xrTableCellBanelcoLink).Visible = false;
        ((XRControl) this.xrLabel9).Visible = ((XRControl) this.xrLabel10).Visible = false;
        ((XRControl) this.xrPictureBox1).Visible = ((XRControl) this.xrPictureBox2).Visible = false;
        break;
      case 2:
        ((XRControl) this.xrRichTextTituloPropiedad).Visible = ((XRControl) this.xrpbLogoSanMartin).Visible = true;
        ((XRControl) this.xrTableCellNumeroObj).Visible = ((XRControl) this.xrTableCellBanelcoLink).Visible = true;
        ((XRControl) this.xrTableCellCuenCtct).Visible = ((XRControl) this.xrTableCellBanelcoL).Visible = false;
        ((XRControl) this.xrLabelDetaPers).Visible = ((XRControl) this.xrLabelCucuPers).Visible = ((XRControl) this.xrLabelCucuInvalidoStr).Visible = false;
        ((XRControl) this.xrLabelDomPostal).Visible = ((XRControl) this.xrLabel5).Visible = false;
        ((XRControl) this.xrLabel6).Visible = ((XRControl) this.xrLabel5).Visible = true;
        ((XRControl) this.xrLabel9).Visible = ((XRControl) this.xrLabel10).Visible = true;
        ((XRControl) this.xrLabelDetaPers).Visible = ((XRControl) this.xrLabelCucuPers).Visible = ((XRControl) this.xrLabelCucuInvalidoStr).Visible = false;
        ((XRControl) this.xrTableCellCuenCtct).Visible = ((XRControl) this.xrTableCellBanelcoL).Visible = false;
        ((XRControl) this.xrLabelDeudaApremio).Visible = false;
        ((XRControl) this.xrSubreport1).Visible = false;
        ((XRControl) this.xrLabel5).Visible = ((XRControl) this.xrLabel13).Visible = false;
        ((XRControl) this.xrLabel6).Visible = ((XRControl) this.xrLabel11).Visible = false;
        break;
    }
  }

  private void GroupHeader1_BeforePrint(object sender, PrintEventArgs e)
  {
    DTOBoletoComerSM currentRow = (DTOBoletoComerSM) ((XtraReportBase) this).GetCurrentRow();
    if (currentRow == null)
      return;
    ((XtraReportBase) ((SubreportBase) this.xrSubreport1).ReportSource).DataSource = (object) currentRow.cupones;
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (irepBoletoComerSM));
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.PageHeader = new PageHeaderBand();
    this.xrLabelDeudaApremio = new XRLabel();
    this.xrLabelCucuInvalidoStr = new XRLabel();
    this.xrLabel14 = new XRLabel();
    this.xrLabel13 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLabelDomPostal = new XRLabel();
    this.xrLabel12 = new XRLabel();
    this.xrLabel11 = new XRLabel();
    this.xrLabel10 = new XRLabel();
    this.xrLabel9 = new XRLabel();
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
    this.PageFooter = new PageFooterBand();
    this.xrPictureBox1 = new XRPictureBox();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrSubreport1 = new XRSubreport();
    this.objectDataSource1 = new ObjectDataSource(this.components);
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
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[19]
    {
      (XRControl) this.xrLabelDeudaApremio,
      (XRControl) this.xrLabelCucuInvalidoStr,
      (XRControl) this.xrLabel14,
      (XRControl) this.xrLabel13,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabelDomPostal,
      (XRControl) this.xrLabel12,
      (XRControl) this.xrLabel11,
      (XRControl) this.xrLabel10,
      (XRControl) this.xrLabel9,
      (XRControl) this.xrLabel7,
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabelCucuPers,
      (XRControl) this.xrLabelDetaPers,
      (XRControl) this.xrPictureBox2,
      (XRControl) this.xrRichTextTituloPropiedad,
      (XRControl) this.xrTable2,
      (XRControl) this.xrTable1,
      (XRControl) this.xrpbLogoSanMartin
    });
    ((XRControl) this.PageHeader).Dpi = 254f;
    ((XRControl) this.PageHeader).HeightF = 1091.583f;
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((XRControl) this.xrLabelDeudaApremio).CanGrow = false;
    ((XRControl) this.xrLabelDeudaApremio).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabelDeudaApremio).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DeudaStr]")
    });
    ((XRControl) this.xrLabelDeudaApremio).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabelDeudaApremio).ForeColor = Color.Red;
    ((XRControl) this.xrLabelDeudaApremio).LocationFloat = new PointFloat(495.3562f, 555.5624f);
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
    ((XRControl) this.xrLabel14).CanGrow = false;
    ((XRControl) this.xrLabel14).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DomiLicoReal]")
    });
    ((XRControl) this.xrLabel14).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel14).LocationFloat = new PointFloat(441.0001f, 408.2424f);
    this.xrLabel14.Multiline = true;
    ((XRControl) this.xrLabel14).Name = "xrLabel14";
    ((XRControl) this.xrLabel14).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel14).SizeF = new SizeF(1499f, 45.72003f);
    ((XRControl) this.xrLabel14).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel14).Text = "xrLabel14";
    ((XRControl) this.xrLabel14).TextAlignment = (TextAlignment) 1;
    this.xrLabel14.TextFitMode = (TextFitMode) 2;
    ((XRControl) this.xrLabel13).Dpi = 254f;
    ((XRControl) this.xrLabel13).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel13).LocationFloat = new PointFloat(607.6876f, 453.9624f);
    this.xrLabel13.Multiline = true;
    ((XRControl) this.xrLabel13).Name = "xrLabel13";
    ((XRControl) this.xrLabel13).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel13).SizeF = new SizeF(20.32001f, 50.79996f);
    ((XRControl) this.xrLabel13).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel13).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel13).Text = "-";
    ((XRControl) this.xrLabel13).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel5).Dpi = 254f;
    ((XRControl) this.xrLabel5).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(529.9001f, 314.06f);
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
      new ExpressionBinding("BeforePrint", "Text", "[DomiLicoPostal]")
    });
    ((XRControl) this.xrLabelDomPostal).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabelDomPostal).LocationFloat = new PointFloat(441f, 263.26f);
    this.xrLabelDomPostal.Multiline = true;
    ((XRControl) this.xrLabelDomPostal).Name = "xrLabelDomPostal";
    ((XRControl) this.xrLabelDomPostal).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabelDomPostal).SizeF = new SizeF(1499f, 50.80002f);
    ((XRControl) this.xrLabelDomPostal).StylePriority.UseFont = false;
    ((XRControl) this.xrLabelDomPostal).Text = "xrLabelDomPostal";
    this.xrLabelDomPostal.TextFitMode = (TextFitMode) 2;
    ((XRControl) this.xrLabel12).CanGrow = false;
    ((XRControl) this.xrLabel12).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel12).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[LocaLicoReal]")
    });
    ((XRControl) this.xrLabel12).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel12).LocationFloat = new PointFloat(628.0076f, 453.9624f);
    this.xrLabel12.Multiline = true;
    ((XRControl) this.xrLabel12).Name = "xrLabel12";
    ((XRControl) this.xrLabel12).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel12).SizeF = new SizeF(963.9927f, 50.80002f);
    ((XRControl) this.xrLabel12).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel12).Text = "xrLabel12";
    ((XRControl) this.xrLabel11).CanGrow = false;
    ((XRControl) this.xrLabel11).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel11).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CopoLicoReal]")
    });
    ((XRControl) this.xrLabel11).Font = new Font("Arial", 9f);
    ((XRControl) this.xrLabel11).LocationFloat = new PointFloat(518.7876f, 453.9624f);
    this.xrLabel11.Multiline = true;
    ((XRControl) this.xrLabel11).Name = "xrLabel11";
    ((XRControl) this.xrLabel11).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel11).SizeF = new SizeF(88.89996f, 50.79996f);
    ((XRControl) this.xrLabel11).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel11).Text = "xrLabel11";
    ((XRControl) this.xrLabel11).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrLabel10).Dpi = 254f;
    ((XRControl) this.xrLabel10).LocationFloat = new PointFloat(441.0001f, 453.9624f);
    this.xrLabel10.Multiline = true;
    ((XRControl) this.xrLabel10).Name = "xrLabel10";
    ((XRControl) this.xrLabel10).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel10).SizeF = new SizeF(77.78757f, 50.79996f);
    ((XRControl) this.xrLabel10).Text = "CP:";
    ((XRControl) this.xrLabel9).Dpi = 254f;
    ((XRControl) this.xrLabel9).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(441.0001f, 362.5224f);
    this.xrLabel9.Multiline = true;
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(370f, 45.72003f);
    ((XRControl) this.xrLabel9).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel9).Text = "Domicilio del Inmueble:";
    ((XRControl) this.xrLabel7).CanGrow = false;
    ((XRControl) this.xrLabel7).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[LocaLico]")
    });
    ((XRControl) this.xrLabel7).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(550.2199f, 314.06f);
    this.xrLabel7.Multiline = true;
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(5, 5, 0, 0, 254f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(1389.78f, 45.71997f);
    ((XRControl) this.xrLabel7).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel7).Text = "xrLabel7";
    ((XRControl) this.xrLabel6).Dpi = 254f;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CopoLico]")
    });
    ((XRControl) this.xrLabel6).Font = new Font("Arial", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(441.0001f, 314.06f);
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
    ((XRControl) this.xrPictureBox2).LocationFloat = new PointFloat(8.074442E-05f, 605.5624f);
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
    ((XRControl) this.PageFooter).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrPictureBox1
    });
    ((XRControl) this.PageFooter).Dpi = 254f;
    ((XRControl) this.PageFooter).HeightF = 450f;
    ((XRControl) this.PageFooter).Name = "PageFooter";
    ((XRControl) this.xrPictureBox1).Dpi = 254f;
    this.xrPictureBox1.ImageSource = new ImageSource("img", componentResourceManager.GetString("xrPictureBox1.ImageSource"));
    ((XRControl) this.xrPictureBox1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrPictureBox1).Name = "xrPictureBox1";
    ((XRControl) this.xrPictureBox1).SizeF = new SizeF(1946f, 450f);
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
    ((SubreportBase) this.xrSubreport1).ReportSource = (XtraReport) new CuponesBoleComerSM();
    ((XRControl) this.xrSubreport1).SizeF = new SizeF(1940f, 58.42f);
    this.objectDataSource1.DataSource = (object) typeof (DTOBoletoComerSM);
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
    ((ISupportInitialize) this.xrRichTextTituloPropiedad).EndInit();
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
