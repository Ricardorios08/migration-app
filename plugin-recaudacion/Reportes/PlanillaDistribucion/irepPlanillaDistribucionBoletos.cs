// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.PlanillaDistribucion.irepPlanillaDistribucionBoletos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraReports.UI;
using InfoGov.Core;
using InfoGov.Reports;
using InfoGov.Resources;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.PlanillaDistribucion;

public class irepPlanillaDistribucionBoletos : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private DetailBand Detail;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private ReportHeaderBand ReportHeader;
  private XRLabel xrLabel1;
  private XRPictureBox pbImageBoleto;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell8;
  private XRTableCell xrTableCell9;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;
  private XRTableCell xrTableCell13;
  private XRTableCell xrTableCell14;
  private ObjectDataSource objectDataSource1;
  private GroupHeaderBand GroupHeader1;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell18;
  private XRTableCell xrTableCell17;
  private XRTableCell xrTableCell15;
  private XRTableCell xrTableCell16;

  public irepPlanillaDistribucionBoletos()
    : base(nameof (irepPlanillaDistribucionBoletos), "Planilla Distribución de Boletos")
  {
    this.InitializeComponent();
    this.fillImageBoleto();
  }

  private void fillImageBoleto()
  {
    this.pbImageBoleto.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
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
    this.Detail = new DetailBand();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell8 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.xrTableCell13 = new XRTableCell();
    this.xrTableCell14 = new XRTableCell();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.ReportHeader = new ReportHeaderBand();
    this.xrLabel1 = new XRLabel();
    this.pbImageBoleto = new XRPictureBox();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell7 = new XRTableCell();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.xrTableCell15 = new XRTableCell();
    this.xrTableCell16 = new XRTableCell();
    this.xrTableCell17 = new XRTableCell();
    this.xrTableCell18 = new XRTableCell();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail).HeightF = 25f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.Detail).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.Detail).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).Font = new Font("Tahoma", 8f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(1092f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 2;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[9]
    {
      this.xrTableCell8,
      this.xrTableCell9,
      this.xrTableCell10,
      this.xrTableCell11,
      this.xrTableCell12,
      this.xrTableCell18,
      this.xrTableCell17,
      this.xrTableCell13,
      this.xrTableCell14
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((XRControl) this.xrTableCell8).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "CodiInmu")
    });
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).Text = "Nro. Padrón";
    this.xrTableCell8.Weight = 0.41704858034993991;
    ((XRControl) this.xrTableCell9).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Titular")
    });
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).Text = "Titular";
    this.xrTableCell9.Weight = 1.5829514196500603;
    ((XRControl) this.xrTableCell10).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "DomicilioPostal")
    });
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).Text = "Domicilio";
    this.xrTableCell10.Weight = 1.3794683726995696;
    ((XRControl) this.xrTableCell11).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Distrito")
    });
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).Text = "Distrito";
    this.xrTableCell11.Weight = 0.89825850766173154;
    ((XRControl) this.xrTableCell12).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "OrdeLita")
    });
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).Text = "Nro. Orden";
    this.xrTableCell12.Weight = 0.41704859890757756;
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    this.xrTableCell13.Weight = 1.3153070399140943;
    ((XRControl) this.xrTableCell14).Name = "xrTableCell14";
    this.xrTableCell14.Weight = 0.98991748081702735;
    ((XRControl) this.TopMargin).HeightF = 13f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.TopMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.TopMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.BottomMargin).HeightF = 23f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.BottomMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.BottomMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrLabel1,
      (XRControl) this.pbImageBoleto
    });
    ((XRControl) this.ReportHeader).HeightF = 88.54166f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 20f);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(315.5057f, 22.87499f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(611.4583f, 43.83333f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Planilla de Distribución de Boletos";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(197.7917f, 88.54166f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable1
    });
    ((XRControl) this.GroupHeader1).HeightF = 25f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Tahoma", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(1092f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 2;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[9]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell4,
      this.xrTableCell5,
      this.xrTableCell15,
      this.xrTableCell16,
      this.xrTableCell6,
      this.xrTableCell7
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Padrón";
    this.xrTableCell1.Weight = 0.41704857709189874;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Titular";
    this.xrTableCell2.Weight = 1.5829514229081014;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Domicilio";
    this.xrTableCell3.Weight = 1.3794684245984741;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Distrito";
    this.xrTableCell4.Weight = 0.89825844200612515;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "Orden";
    this.xrTableCell5.Weight = 0.41704858276184353;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "Firma";
    this.xrTableCell6.Weight = 1.3153070297730722;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).Text = "Observaciones";
    this.xrTableCell7.Weight = 0.9899175208604849;
    this.objectDataSource1.DataSource = (object) typeof (DTOPlanillaDistribucionBoletos);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XRLabel) this.xrTableCell15).Multiline = true;
    ((XRControl) this.xrTableCell15).Name = "xrTableCell15";
    ((XRControl) this.xrTableCell15).Text = "Periodo";
    this.xrTableCell15.Weight = 0.41704858276184353;
    ((XRLabel) this.xrTableCell16).Multiline = true;
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    ((XRControl) this.xrTableCell16).Text = "Bimest.";
    this.xrTableCell16.Weight = 0.41704858276184353;
    ((XRControl) this.xrTableCell17).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Bimestre")
    });
    ((XRLabel) this.xrTableCell17).Multiline = true;
    ((XRControl) this.xrTableCell17).Name = "xrTableCell17";
    ((XRControl) this.xrTableCell17).Text = "xrTableCell17";
    this.xrTableCell17.Weight = 0.41704859890757756;
    ((XRControl) this.xrTableCell18).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Periodo")
    });
    ((XRLabel) this.xrTableCell18).Multiline = true;
    ((XRControl) this.xrTableCell18).Name = "xrTableCell18";
    ((XRControl) this.xrTableCell18).Text = "xrTableCell18";
    this.xrTableCell18.Weight = 0.41704859890757756;
    ((XtraReportBase) this).Bands.AddRange(new Band[5]
    {
      (Band) this.Detail,
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.ReportHeader,
      (Band) this.GroupHeader1
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    this.Landscape = true;
    this.Margins = new Margins(39, 38, 13, 23);
    this.PageHeight = 827;
    this.PageWidth = 1169;
    this.PaperKind = PaperKind.A4;
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
