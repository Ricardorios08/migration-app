// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.RegistroCorreosWeb.irepRegistroCorreosWeb
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
namespace InfoGov.Plugins.Recaudacion.Reportes.RegistroCorreosWeb;

public class irepRegistroCorreosWeb : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ReportHeaderBand ReportHeader;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel1;
  private XRLabel xrLabel2;
  private XRLine xrLine1;
  private XRLabel xrLabel5;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private XRLine xrLine2;
  private ObjectDataSource objectDataSource1;
  private GroupHeaderBand GroupHeader1;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private Parameter fdesde;
  private Parameter fhasta;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;

  public irepRegistroCorreosWeb()
    : base(nameof (irepRegistroCorreosWeb), "Registro Correos Web")
  {
    this.InitializeComponent();
    this.fillImageBoleto();
  }

  public DateTime desde { get; set; }

  public DateTime hasta { get; set; }

  private void fillImageBoleto()
  {
    this.pbImageBoleto.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
  }

  protected override void setDataSource(Action<int, string> reporteProgress)
  {
    List<DTORegistroCorreosWeb> registoCorreosWeb = new ExpEnviarMailMasivoTunuyan().getRegistoCorreosWeb(this.desde, this.hasta);
    this.fdesde.Value = (object) this.desde;
    this.fhasta.Value = (object) this.hasta;
    this.objectDataSource1.DataSource = (object) registoCorreosWeb;
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
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.ReportHeader = new ReportHeaderBand();
    this.xrLabel2 = new XRLabel();
    this.xrLine1 = new XRLine();
    this.xrLabel5 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrLine2 = new XRLine();
    this.xrLabel1 = new XRLabel();
    this.pbImageBoleto = new XRPictureBox();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.fdesde = new Parameter();
    this.fhasta = new Parameter();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 12.5f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 49.41667f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail).HeightF = 25f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(9.916687f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(690.1666f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 2;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell4,
      this.xrTableCell5,
      this.xrTableCell6
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Oficina]")
    });
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Oficina";
    this.xrTableCell4.Weight = 0.52161322485965078;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Cuenta]")
    });
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "Cuenta";
    this.xrTableCell5.Weight = 0.52161322485965078;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Email]")
    });
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "Email";
    this.xrTableCell6.Weight = 1.9567735502806984;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[8]
    {
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLine1,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLine2,
      (XRControl) this.xrLabel1,
      (XRControl) this.pbImageBoleto
    });
    ((XRControl) this.ReportHeader).HeightF = 145.375f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrLabel2).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(22.87496f, 103.375f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(114.5833f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Fecha Desde:";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(0.0f, 122.375f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(722.9999f, 22.99999f);
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?fhasta")
    });
    ((XRControl) this.xrLabel5).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(389.5001f, 103.375f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).Text = "xrLabel5";
    ((XRControl) this.xrLabel5).TextFormatString = "{0:dd/MM/yyyy}";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?fdesde")
    });
    ((XRControl) this.xrLabel4).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(137.4583f, 103.375f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    ((XRControl) this.xrLabel4).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.xrLabel3).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(280.1251f, 103.375f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(109.375f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "Fecha Hasta:";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLine2).LocationFloat = new PointFloat(0.0f, 83.74999f);
    ((XRControl) this.xrLine2).Name = "xrLine2";
    ((XRControl) this.xrLine2).SizeF = new SizeF(722.9999f, 23f);
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 18f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(205.2916f, 22.91667f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(494.7917f, 43.83333f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Registro Correos Web";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(9.916656f, 1.458343f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(173.8334f, 82.29166f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable1
    });
    ((XRControl) this.GroupHeader1).HeightF = 25f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(9.916687f, 0.0f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(690.1666f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 2;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Oficina";
    this.xrTableCell1.Weight = 0.52161322485965078;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Cuenta";
    this.xrTableCell2.Weight = 0.52161322485965078;
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Email";
    this.xrTableCell3.Weight = 1.9567735502806984;
    this.objectDataSource1.DataSource = (object) typeof (DTORegistroCorreosWeb);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    this.fdesde.Description = "fdesde";
    this.fdesde.Name = "fdesde";
    this.fdesde.Type = typeof (DateTime);
    this.fdesde.ValueInfo = "2023-11-02";
    this.fdesde.Visible = false;
    this.fhasta.Description = "fhasta";
    this.fhasta.Name = "fhasta";
    this.fhasta.Type = typeof (DateTime);
    this.fhasta.ValueInfo = "2023-11-02";
    this.fhasta.Visible = false;
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
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(52, 52, 12, 49);
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
