// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM.DifuntosSM
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
namespace InfoGov.Plugins.Recaudacion.Reportes.BoletoCementerioSM;

public class DifuntosSM : XtraReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ObjectDataSource objectDataSource1;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private GroupHeaderBand GroupHeader1;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;

  public DifuntosSM() => this.InitializeComponent();

  protected virtual void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.components = (IContainer) new Container();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 0.0f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 0.0f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail).HeightF = 20f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.xrTable2).Font = new Font("Arial", 8f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(341f, 20f);
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 2;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell3,
      this.xrTableCell4
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell3).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaDifu]")
    });
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Nombre";
    this.xrTableCell3.Weight = 1.8229466042858691;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FefaDifu]")
    });
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Fecha Fallec.";
    ((XRControl) this.xrTableCell4).TextFormatString = "{0:dd/MM/yyyy}";
    this.xrTableCell4.Weight = 1.3958033957141309;
    this.objectDataSource1.DataSource = (object) typeof (DTOBoletoCemenSM.DTODifuntos);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable1
    });
    ((XRControl) this.GroupHeader1).HeightF = 23f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.xrTable1).Font = new Font("Arial", 8f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(341f, 23f);
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell1,
      this.xrTableCell2
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Nombre";
    this.xrTableCell1.Weight = 1.8229466174459699;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Fecha Fallec.";
    this.xrTableCell2.Weight = 1.3958033825540301;
    ((XtraReportBase) this).Bands.AddRange(new Band[4]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.GroupHeader1
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(0, 486, 0, 0);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
