// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados.irepSubDevengados
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraReports.Expressions;
using DevExpress.XtraReports.Parameters;
using DevExpress.XtraReports.UI;
using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Expertos;
using InfoGov.Reports;
using InfoGov.Resources;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados;

public class irepSubDevengados : InfoGovReport
{
  public bool check;
  public DateTime desde;
  public DateTime hasta;
  public bool ajust;
  private IContainer components = (IContainer) null;
  private DetailBand Detail;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private ReportHeaderBand ReportHeader;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel1;
  private XRLabel xrLabel2;
  private ObjectDataSource objectDataSource1;
  private Parameter Municipio;
  private XRTable xrTable3;
  private XRTableRow xrTableRow3;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;
  private XRTableCell xrTableCell13;
  private XRTableCell xrTableCell15;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private GroupHeaderBand GroupHeader1;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell8;
  private XRTableCell xrTableCell9;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private PageHeaderBand PageHeader;
  private XRTable xrTable4;
  private XRTableRow xrTableRow4;
  private XRTableCell xrTableCell16;
  private XRTableCell xrTableCell17;
  private XRTableCell xrTableCell18;
  private XRTableCell xrTableCell19;
  private XRTableCell xrTableCell20;
  private XRTableCell xrTableCell21;
  private CalculatedField calculatedField1;
  private XRTableCell xrTableCell14;
  private CalculatedField HabeCajaC;
  private CalculatedField calculatedField2;
  private CalculatedField calculatedField3;
  private ReportFooterBand ReportFooter;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private XRLabel xrLabel7;
  private XRLabel xrLabel6;
  private XRLabel xrLabel5;
  private CalculatedField calculatedField4;

  public irepSubDevengados()
    : base(nameof (irepSubDevengados), "Subdiario Devengado")
  {
    this.InitializeComponent();
    this.fillImageBoleto();
  }

  private void fillImageBoleto()
  {
    this.pbImageBoleto.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
  }

  protected override void setDataSource(Action<int, string> reportProgress)
  {
    List<DTOSubDevengados> devengados = new ExpDevengado().getDevengados(this.desde, this.hasta, this.check, this.ajust);
    this.Municipio.Value = (object) PARAMS.Parameters.GetString("NombreLargo");
    this.objectDataSource1.DataSource = (object) devengados;
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
    this.xrTable4 = new XRTable();
    this.xrTableRow4 = new XRTableRow();
    this.xrTableCell16 = new XRTableCell();
    this.xrTableCell17 = new XRTableCell();
    this.xrTableCell18 = new XRTableCell();
    this.xrTableCell19 = new XRTableCell();
    this.xrTableCell20 = new XRTableCell();
    this.xrTableCell21 = new XRTableCell();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.xrTable3 = new XRTable();
    this.xrTableRow3 = new XRTableRow();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.xrTableCell13 = new XRTableCell();
    this.xrTableCell14 = new XRTableCell();
    this.xrTableCell15 = new XRTableCell();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.ReportHeader = new ReportHeaderBand();
    this.xrLabel2 = new XRLabel();
    this.xrLabel1 = new XRLabel();
    this.pbImageBoleto = new XRPictureBox();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.Municipio = new Parameter();
    this.GroupHeader1 = new GroupHeaderBand();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.PageHeader = new PageHeaderBand();
    this.calculatedField1 = new CalculatedField();
    this.HabeCajaC = new CalculatedField();
    this.calculatedField2 = new CalculatedField();
    this.calculatedField3 = new CalculatedField();
    this.ReportFooter = new ReportFooterBand();
    this.xrLabel6 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrLabel7 = new XRLabel();
    this.calculatedField4 = new CalculatedField();
    ((ISupportInitialize) this.xrTable4).BeginInit();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable3).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrTable4,
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail).HeightF = 50f;
    this.Detail.KeepTogetherWithDetailReports = true;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.Detail).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.Detail).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrTable4).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable4).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable4).LocationFloat = new PointFloat(3.178914E-05f, 25f);
    ((XRControl) this.xrTable4).Name = "xrTable4";
    this.xrTable4.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow4
    });
    ((XRControl) this.xrTable4).SizeF = new SizeF(600f, 25f);
    ((XRControl) this.xrTable4).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable4).StylePriority.UseFont = false;
    ((XRControl) this.xrTable4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable4).TextAlignment = (TextAlignment) 2;
    this.xrTableRow4.Cells.AddRange(new XRTableCell[6]
    {
      this.xrTableCell16,
      this.xrTableCell17,
      this.xrTableCell18,
      this.xrTableCell19,
      this.xrTableCell20,
      this.xrTableCell21
    });
    ((XRControl) this.xrTableRow4).Name = "xrTableRow4";
    this.xrTableRow4.Weight = 1.0;
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    ((XRControl) this.xrTableCell16).Text = "Fecha";
    this.xrTableCell16.Weight = 0.73958335876464842;
    ((XRControl) this.xrTableCell17).Name = "xrTableCell17";
    ((XRControl) this.xrTableCell17).Text = "Expediente";
    this.xrTableCell17.Weight = 1.2604166412353517;
    ((XRControl) this.xrTableCell18).Name = "xrTableCell18";
    ((XRControl) this.xrTableCell18).Text = "Partida";
    this.xrTableCell18.Weight = 1.0;
    ((XRControl) this.xrTableCell19).Name = "xrTableCell19";
    ((XRControl) this.xrTableCell19).Text = "Organigrama";
    this.xrTableCell19.Weight = 1.0;
    ((XRControl) this.xrTableCell20).Name = "xrTableCell20";
    ((XRControl) this.xrTableCell20).Text = "DEBE";
    this.xrTableCell20.Weight = 1.0;
    ((XRControl) this.xrTableCell21).Name = "xrTableCell21";
    ((XRControl) this.xrTableCell21).Text = "HABER";
    this.xrTableCell21.Weight = 1.0;
    ((XRControl) this.xrTable2).BackColor = Color.SkyBlue;
    ((XRControl) this.xrTable2).BorderColor = Color.Azure;
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(3.178914E-05f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(600f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTable2).StylePriority.UseBorderColor = false;
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseForeColor = false;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell7,
      this.xrTableCell8,
      this.xrTableCell9
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaCuco]")
    });
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).Text = "xrTableCell7";
    this.xrTableCell7.Weight = 2.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[totaldebe]")
    });
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell8).Text = "xrTableCell8";
    ((XRControl) this.xrTableCell8).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrTableCell8).TextFormatString = "{0:$ #,##0.00}";
    this.xrTableCell8.Weight = 0.5;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell9).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[totalhaber]")
    });
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell9).Text = "xrTableCell9";
    ((XRControl) this.xrTableCell9).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrTableCell9).TextFormatString = "{0:$ #,##0.00}";
    this.xrTableCell9.Weight = 0.5;
    ((XRControl) this.xrTable3).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable3).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable3).Name = "xrTable3";
    ((XRControl) this.xrTable3).Padding = new PaddingInfo(2, 2, 2, 2, 100f);
    this.xrTable3.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow3
    });
    ((XRControl) this.xrTable3).SizeF = new SizeF(600f, 25f);
    ((XRControl) this.xrTable3).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable3).StylePriority.UsePadding = false;
    this.xrTableRow3.Cells.AddRange(new XRTableCell[6]
    {
      this.xrTableCell10,
      this.xrTableCell11,
      this.xrTableCell12,
      this.xrTableCell13,
      this.xrTableCell14,
      this.xrTableCell15
    });
    ((XRControl) this.xrTableRow3).Name = "xrTableRow3";
    this.xrTableRow3.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FechCaja]")
    });
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).Text = "xrTableCell10";
    ((XRControl) this.xrTableCell10).TextFormatString = "{0:dd/MM/yyyy}";
    this.xrTableCell10.Weight = 0.73958335876464842;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell11).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[ExpeImpu]")
    });
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).Text = "xrTableCell11";
    this.xrTableCell11.Weight = 1.2604166412353517;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell12).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodiPart]")
    });
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).Text = "xrTableCell12";
    this.xrTableCell12.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell13).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodiOrga]")
    });
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    ((XRControl) this.xrTableCell13).Text = "xrTableCell13";
    this.xrTableCell13.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[calculatedField1]")
    });
    ((XRControl) this.xrTableCell14).Name = "xrTableCell14";
    ((XRControl) this.xrTableCell14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell14).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrTableCell14).TextFormatString = "{0:$ #,##0.00}";
    this.xrTableCell14.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell15).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[HabeCajaC]")
    });
    ((XRControl) this.xrTableCell15).Name = "xrTableCell15";
    ((XRControl) this.xrTableCell15).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell15).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrTableCell15).TextFormatString = "{0:$ #,##0.00}";
    this.xrTableCell15.Weight = 1.0;
    ((XRControl) this.TopMargin).HeightF = 15.625f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.TopMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.TopMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.BottomMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.BottomMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLabel1,
      (XRControl) this.pbImageBoleto
    });
    ((XRControl) this.ReportHeader).HeightF = 89.58337f;
    ((XRControl) this.ReportHeader).KeepTogether = true;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrLabel2).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(237.5f, 44.45834f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(362.5f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Subdiario Devengados";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel1).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(237.5f, 21.45834f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(362.5f, 23f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "[Parameters.Municipio]";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(10.00001f, 10.00001f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(190.2084f, 77.87499f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(600f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 2;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[6]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell4,
      this.xrTableCell5,
      this.xrTableCell6
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Fecha";
    this.xrTableCell1.Weight = 0.73958335876464842;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Expediente";
    this.xrTableCell2.Weight = 1.2604166412353517;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Partida";
    this.xrTableCell3.Weight = 1.0;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Organigrama";
    this.xrTableCell4.Weight = 1.0;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "DEBE";
    this.xrTableCell5.Weight = 1.0;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "HABER";
    this.xrTableCell6.Weight = 1.0;
    this.Municipio.Description = "Parameter1";
    this.Municipio.Name = "Municipio";
    this.Municipio.Visible = false;
    ((XRControl) this.GroupHeader1).HeightF = 0.0f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[1]
    {
      (Band) this.Detail1
    });
    ((XtraReportBase) this.DetailReport).DataMember = "detalles";
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((XRControl) this.Detail1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable3
    });
    ((XRControl) this.Detail1).HeightF = 25f;
    ((XRControl) this.Detail1).Name = "Detail1";
    this.objectDataSource1.DataSource = (object) typeof (DTOSubDevengados);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable1
    });
    ((XRControl) this.PageHeader).HeightF = 25f;
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((PageBand) this.PageHeader).PrintOn = (PrintOnPages) 2;
    ((DataContainerComponent) this.calculatedField1).DataMember = "detalles";
    this.calculatedField1.DisplayName = "DebeCajaC";
    this.calculatedField1.Expression = "IIF([DebeCaja]==0,'',[DebeCaja] )";
    this.calculatedField1.Name = "calculatedField1";
    ((DataContainerComponent) this.HabeCajaC).DataMember = "detalles";
    this.HabeCajaC.Expression = "IIF([HabeCaja] == 0,'',[HabeCaja])";
    this.HabeCajaC.Name = "HabeCajaC";
    this.calculatedField2.Expression = "sum([totaldebe])";
    this.calculatedField2.Name = "calculatedField2";
    this.calculatedField3.Expression = "sum([totalhaber])";
    this.calculatedField3.Name = "calculatedField3";
    ((XRControl) this.ReportFooter).Controls.AddRange(new XRControl[5]
    {
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLabel7
    });
    ((XRControl) this.ReportFooter).HeightF = 45.99999f;
    ((XRControl) this.ReportFooter).Name = "ReportFooter";
    ((XRControl) this.xrLabel6).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel6).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(222.9167f, 22.99999f);
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel6).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "Saldo:";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel5).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel5).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(222.9167f, 0.0f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "Totales:";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel4).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[calculatedField3]")
    });
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(461.4583f, 0.0f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(138.5417f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel4).TextFormatString = "{0:$ #,##0.00}";
    ((XRControl) this.xrLabel3).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel3).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[calculatedField2]")
    });
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(322.9167f, 0.0f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(138.5417f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "xrLabel3";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel3).TextFormatString = "{0:$ #,##0.00}";
    ((XRControl) this.xrLabel7).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[calculatedField4]")
    });
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(322.9167f, 22.99999f);
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(138.5417f, 23f);
    ((XRControl) this.xrLabel7).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel7).Text = "xrLabel7";
    ((XRControl) this.xrLabel7).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel7).TextFormatString = "{0:$ #,##0.00}";
    this.calculatedField4.Expression = "[calculatedField2] - [calculatedField3]";
    this.calculatedField4.Name = "calculatedField4";
    ((XtraReportBase) this).Bands.AddRange(new Band[8]
    {
      (Band) this.Detail,
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.ReportHeader,
      (Band) this.GroupHeader1,
      (Band) this.DetailReport,
      (Band) this.PageHeader,
      (Band) this.ReportFooter
    });
    this.CalculatedFields.AddRange(new CalculatedField[5]
    {
      this.calculatedField1,
      this.HabeCajaC,
      this.calculatedField2,
      this.calculatedField3,
      this.calculatedField4
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    this.Margins = new Margins(100, 100, 16 /*0x10*/, 100);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Parameters.AddRange(new Parameter[1]
    {
      this.Municipio
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable4).EndInit();
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable3).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
