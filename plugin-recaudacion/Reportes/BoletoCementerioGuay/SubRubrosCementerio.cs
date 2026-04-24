// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioGuay.SubRubrosCementerio
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraReports.Expressions;
using DevExpress.XtraReports.UI;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioGuay;

public class SubRubrosCementerio : XtraReport
{
  private IContainer components = (IContainer) null;
  private DetailBand Detail;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private FormattingRule Anual;
  private FormattingRule Semestral;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell16;
  private XRTableCell xrTableCell17;
  private XRTableCell xrTableCell18;
  private GroupHeaderBand GroupHeader1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private ObjectDataSource objectDataSource1;

  public SubRubrosCementerio() => this.InitializeComponent();

  protected virtual void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.components = (IContainer) new Container();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell16 = new XRTableCell();
    this.xrTableCell17 = new XRTableCell();
    this.xrTableCell18 = new XRTableCell();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.Detail = new DetailBand();
    this.Semestral = new FormattingRule();
    this.Anual = new FormattingRule();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.GroupHeader1 = new GroupHeaderBand();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    XRTable xrTable1 = new XRTable();
    XRTable xrTable2 = new XRTable();
    ((ISupportInitialize) xrTable1).BeginInit();
    ((ISupportInitialize) xrTable2).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) xrTable1).Borders = (BorderSide) 0;
    ((XRControl) xrTable1).Font = new Font("Calibri", 8f);
    ((XRControl) xrTable1).LocationFloat = new PointFloat(1.079305f, 0.0f);
    ((XRControl) xrTable1).Name = "xrTable2";
    xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) xrTable1).SizeF = new SizeF(350f, 12f);
    ((XRControl) xrTable1).StylePriority.UseBorders = false;
    ((XRControl) xrTable1).StylePriority.UseFont = false;
    ((XRControl) xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) xrTable1).TextAlignment = (TextAlignment) 4;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[5]
    {
      this.xrTableCell10,
      this.xrTableCell11,
      this.xrTableCell16,
      this.xrTableCell17,
      this.xrTableCell18
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodiRubr]")
    });
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).Text = "xrTableCell1";
    ((XRControl) this.xrTableCell10).TextFormatString = "{0:N2}";
    this.xrTableCell10.Weight = 2.1345407404535646;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell11).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodiSubr]")
    });
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).Text = "xrTableCell2";
    ((XRControl) this.xrTableCell11).TextFormatString = "{0:N2}";
    this.xrTableCell11.Weight = 2.1345407898028177;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell16).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CateSeco]")
    });
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    ((XRControl) this.xrTableCell16).Text = "xrTableCell7";
    ((XRControl) this.xrTableCell16).TextFormatString = "{0:N2}";
    this.xrTableCell16.Weight = 2.134540740453565;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell17).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CantSeco]")
    });
    ((XRControl) this.xrTableCell17).Name = "xrTableCell17";
    ((XRControl) this.xrTableCell17).Text = "xrTableCell8";
    ((XRControl) this.xrTableCell17).TextFormatString = "{0:N2}";
    this.xrTableCell17.Weight = 2.1345407404535646;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell18).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TotaLcde]")
    });
    ((XRControl) this.xrTableCell18).Font = new Font("Calibri", 8.25f);
    ((XRControl) this.xrTableCell18).Name = "xrTableCell18";
    ((XRControl) this.xrTableCell18).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell18).Text = "xrTableCell9";
    ((XRControl) this.xrTableCell18).TextFormatString = "{0:#.00}";
    this.xrTableCell18.Weight = 2.461836988836489;
    ((XRControl) xrTable2).Borders = (BorderSide) 0;
    ((XRControl) xrTable2).Font = new Font("Calibri", 8f);
    ((XRControl) xrTable2).LocationFloat = new PointFloat(1.079305f, 0.0f);
    ((XRControl) xrTable2).Name = "xrTable1";
    xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) xrTable2).SizeF = new SizeF(350f, 12f);
    ((XRControl) xrTable2).StylePriority.UseBorders = false;
    ((XRControl) xrTable2).StylePriority.UseFont = false;
    ((XRControl) xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) xrTable2).TextAlignment = (TextAlignment) 2;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[5]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell4,
      this.xrTableCell5
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Rubro";
    ((XRControl) this.xrTableCell1).TextFormatString = "{0:N2}";
    this.xrTableCell1.Weight = 2.1345407404535646;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Subrubro";
    ((XRControl) this.xrTableCell2).TextFormatString = "{0:N2}";
    this.xrTableCell2.Weight = 2.1345407898028177;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Categoría";
    ((XRControl) this.xrTableCell3).TextFormatString = "{0:N2}";
    this.xrTableCell3.Weight = 2.134540740453565;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Cantidad";
    ((XRControl) this.xrTableCell4).TextFormatString = "{0:N2}";
    this.xrTableCell4.Weight = 2.1345407404535646;
    ((XRControl) this.xrTableCell5).Font = new Font("Calibri", 8.25f);
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell5).Text = "Importe";
    ((XRControl) this.xrTableCell5).TextFormatString = "{0:N2}";
    this.xrTableCell5.Weight = 2.461836988836489;
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[1]
    {
      (XRControl) xrTable1
    });
    ((XRControl) this.Detail).HeightF = 12f;
    ((XRControl) this.Detail).KeepTogether = true;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.Detail).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.Detail).TextAlignment = (TextAlignment) 1;
    this.Semestral.Formatting.Visible = (DefaultBoolean) 0;
    this.Semestral.Name = "Semestral";
    this.Anual.Formatting.Visible = (DefaultBoolean) 1;
    this.Anual.Name = "Anual";
    ((XRControl) this.TopMargin).HeightF = 0.0f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.TopMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.TopMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.BottomMargin).HeightF = 0.0f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.BottomMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.BottomMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) xrTable2
    });
    ((XRControl) this.GroupHeader1).HeightF = 12f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    this.objectDataSource1.DataSource = (object) typeof (DTOSubRubrosCeme);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this).Bands.AddRange(new Band[4]
    {
      (Band) this.Detail,
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.GroupHeader1
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    this.Margins = new Margins(0, 475, 0, 0);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Version = "21.2";
    ((ISupportInitialize) xrTable1).EndInit();
    ((ISupportInitialize) xrTable2).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
