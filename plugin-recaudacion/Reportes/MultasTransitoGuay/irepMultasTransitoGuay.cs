// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.MultasTransitoGuay.irepMultasTransitoGuay
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraReports.Expressions;
using DevExpress.XtraReports.Parameters;
using DevExpress.XtraReports.UI;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Reports;
using InfoGov.Resources;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.MultasTransitoGuay;

public class irepMultasTransitoGuay : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ReportHeaderBand ReportHeader;
  private XRLabel xrLabel1;
  private XRPictureBox pbImageBoleto;
  private ObjectDataSource objectDataSource1;
  private GroupHeaderBand GroupHeader1;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell8;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRLabel xrLabel3;
  private XRLabel xrLabel2;
  private Parameter fdesde;
  private Parameter fhasta;
  private XRLabel xrLabel5;
  private XRLabel xrLabel4;
  private XRLine xrLine1;
  private XRTableCell xrTableCell12;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell9;
  private XRTableCell xrTableCell10;

  public irepMultasTransitoGuay()
    : base(nameof (irepMultasTransitoGuay), "Cobranza Multas de Tránsito")
  {
    this.InitializeComponent();
    this.fillImageBoleto();
  }

  public DateTime FechaDesde { get; set; }

  public DateTime FechaHasta { get; set; }

  private void fillImageBoleto()
  {
    this.pbImageBoleto.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
  }

  protected override void setDataSource(Action<int, string> reportProgress)
  {
    List<DTOMultasTransitoGuay> multasTransitoGuay = new ExpMultasTransitoGuay().getMultasTransitoGuay(this.FechaDesde, this.FechaHasta);
    this.fdesde.Value = (object) this.FechaDesde;
    this.fhasta.Value = (object) this.FechaHasta;
    this.objectDataSource1.DataSource = (object) multasTransitoGuay;
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
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.ReportHeader = new ReportHeaderBand();
    this.xrLine1 = new XRLine();
    this.xrLabel1 = new XRLabel();
    this.pbImageBoleto = new XRPictureBox();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrLabel5 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrLabel3 = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.fdesde = new Parameter();
    this.fhasta = new Parameter();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 12f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 38.375f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail).HeightF = 25f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).Font = new Font("Arial", 9.75f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(725f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[6]
    {
      this.xrTableCell5,
      this.xrTableCell12,
      this.xrTableCell11,
      this.xrTableCell6,
      this.xrTableCell7,
      this.xrTableCell8
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Acta]")
    });
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell5).Text = "xrTableCell1";
    ((XRControl) this.xrTableCell5).TextAlignment = (TextAlignment) 2;
    this.xrTableCell5.Weight = 96.0 / 145.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TipoInfraccion]")
    });
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "xrTableCell2";
    this.xrTableCell6.Weight = 224.0 / 145.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Importe]")
    });
    ((XRLabel) this.xrTableCell7).Multiline = true;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell7).Text = "xrTableCell3";
    ((XRControl) this.xrTableCell7).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrTableCell7).TextFormatString = "{0:$0.00}";
    this.xrTableCell7.Weight = 136.0 / 145.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FepaPago]")
    });
    ((XRLabel) this.xrTableCell8).Multiline = true;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell8).Text = "xrTableCell4";
    ((XRControl) this.xrTableCell8).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrTableCell8).TextFormatString = "{0:dd/MM/yyyy}";
    this.xrTableCell8.Weight = 124.0 / 145.0;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrLine1,
      (XRControl) this.xrLabel1,
      (XRControl) this.pbImageBoleto
    });
    ((XRControl) this.ReportHeader).HeightF = 92.29168f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(0.0f, 82.29166f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(725f, 10.00002f);
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 18f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(203.0417f, 21.45832f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(511.9582f, 43.83332f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Cobranza Multas de Tránsito";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(6.291676f, 0.0f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(173.8334f, 82.29166f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[5]
    {
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrTable1,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLabel2
    });
    ((XRControl) this.GroupHeader1).HeightF = 73.95833f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?fhasta")
    });
    ((XRControl) this.xrLabel5).Font = new Font("Arial", 9.75f);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(351.0833f, 10f);
    this.xrLabel5.Multiline = true;
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "xrLabel5";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrLabel5).TextFormatString = "{0:dd/MM/yyyy}";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?fdesde")
    });
    ((XRControl) this.xrLabel4).Font = new Font("Arial", 9.75f);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(110f, 10f);
    this.xrLabel4.Multiline = true;
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrLabel4).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 48.95833f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(725f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 2;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[6]
    {
      this.xrTableCell1,
      this.xrTableCell9,
      this.xrTableCell10,
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell4
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Nro. Acta";
    this.xrTableCell1.Weight = 96.0 / 145.0;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Tipo de Infracción";
    this.xrTableCell2.Weight = 224.0 / 145.0;
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Importe";
    this.xrTableCell3.Weight = 136.0 / 145.0;
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Fecha de Pago";
    this.xrTableCell4.Weight = 124.0 / 145.0;
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(251.0833f, 10f);
    this.xrLabel3.Multiline = true;
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel3).Text = "Fecha Hasta";
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(10.00001f, 10f);
    this.xrLabel2.Multiline = true;
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel2).Text = "Fecha Desde:";
    this.fdesde.Description = "fdesde";
    this.fdesde.Name = "fdesde";
    this.fdesde.Type = typeof (int);
    this.fdesde.ValueInfo = "0";
    this.fdesde.Visible = false;
    this.fhasta.Description = "fhasta";
    this.fhasta.Name = "fhasta";
    this.fhasta.Type = typeof (int);
    this.fhasta.ValueInfo = "0";
    this.fhasta.Visible = false;
    this.objectDataSource1.DataSource = (object) typeof (DTOMultasTransitoGuay);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XRLabel) this.xrTableCell9).Multiline = true;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).Text = "Periodo";
    this.xrTableCell9.Weight = 96.0 / 145.0;
    ((XRLabel) this.xrTableCell10).Multiline = true;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).Text = "Nro. Boleto";
    this.xrTableCell10.Weight = 96.0 / 145.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell11).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NumeBole]")
    });
    ((XRLabel) this.xrTableCell11).Multiline = true;
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell11).Text = "xrTableCell11";
    ((XRControl) this.xrTableCell11).TextAlignment = (TextAlignment) 2;
    this.xrTableCell11.Weight = 96.0 / 145.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell12).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[PeriBole]")
    });
    ((XRLabel) this.xrTableCell12).Multiline = true;
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell12).Text = "xrTableCell12";
    ((XRControl) this.xrTableCell12).TextAlignment = (TextAlignment) 2;
    this.xrTableCell12.Weight = 96.0 / 145.0;
    ((XtraReportBase) this).Bands.AddRange(new Band[5]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.ReportHeader,
      (Band) this.GroupHeader1
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    this.Margins = new Margins(51, 51, 12, 38);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Parameters.AddRange(new Parameter[2]
    {
      this.fdesde,
      this.fhasta
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
