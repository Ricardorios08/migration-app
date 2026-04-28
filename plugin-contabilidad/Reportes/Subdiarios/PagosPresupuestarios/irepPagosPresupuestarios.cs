// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.PagosPresupuestarios.irepPagosPresupuestarios
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
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
namespace InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.PagosPresupuestarios;

public class irepPagosPresupuestarios : InfoGovReport
{
  public DateTime desde;
  public DateTime hasta;
  public string CodiCuco;
  public bool check;
  private IContainer components = (IContainer) null;
  private DetailBand Detail;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private ReportHeaderBand ReportHeader;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel1;
  private XRLabel xrLabel2;
  private Parameter Municipio;
  private ObjectDataSource objectDataSource1;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;
  private XRTableCell xrTableCell13;
  private XRTableCell xrTableCell14;
  private XRTableCell xrTableCell15;
  private XRTableCell xrTableCell16;
  private XRTableCell xrTableCell17;
  private XRTableCell xrTableCell18;
  private GroupHeaderBand GroupHeader1;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell8;
  private XRTableCell xrTableCell9;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private XRLabel xrLabel5;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private ReportFooterBand ReportFooter;
  private XRLabel xrLabel6;
  private CalculatedField DebeFormat;
  private CalculatedField HabeFormat;
  private XRLabel xrLabel9;
  private XRLabel xrLabel8;
  private CalculatedField TotalD;
  private CalculatedField TotalH;
  private PageHeaderBand PageHeader;
  private XRTable xrTable3;
  private XRTableRow xrTableRow3;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell19;
  private XRTableCell xrTableCell20;
  private XRTableCell xrTableCell21;
  private XRTableCell xrTableCell22;
  private XRTableCell xrTableCell23;
  private XRTableCell xrTableCell24;

  public irepPagosPresupuestarios()
    : base(nameof (irepPagosPresupuestarios), "Subdiario de Pagos Presupuestarios")
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
    List<DTOPagosPresupuestarios> pagosPresupuestarios = new ExpPagosPresupuestos().getPagosPresupuestarios(this.desde, this.hasta, this.CodiCuco, this.check);
    this.Municipio.Value = (object) PARAMS.Parameters.GetString("NombreLargo");
    this.objectDataSource1.DataSource = (object) pagosPresupuestarios;
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
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.xrLabel3 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.xrTableCell13 = new XRTableCell();
    this.xrTableCell14 = new XRTableCell();
    this.xrTableCell15 = new XRTableCell();
    this.xrTableCell16 = new XRTableCell();
    this.xrTableCell17 = new XRTableCell();
    this.xrTableCell18 = new XRTableCell();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.ReportHeader = new ReportHeaderBand();
    this.pbImageBoleto = new XRPictureBox();
    this.xrLabel1 = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.Municipio = new Parameter();
    this.GroupHeader1 = new GroupHeaderBand();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.ReportFooter = new ReportFooterBand();
    this.xrLabel9 = new XRLabel();
    this.xrLabel8 = new XRLabel();
    this.xrLabel6 = new XRLabel();
    this.DebeFormat = new CalculatedField();
    this.HabeFormat = new CalculatedField();
    this.TotalD = new CalculatedField();
    this.TotalH = new CalculatedField();
    this.PageHeader = new PageHeaderBand();
    this.xrTable3 = new XRTable();
    this.xrTableRow3 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell19 = new XRTableCell();
    this.xrTableCell20 = new XRTableCell();
    this.xrTableCell21 = new XRTableCell();
    this.xrTableCell22 = new XRTableCell();
    this.xrTableCell23 = new XRTableCell();
    this.xrTableCell24 = new XRTableCell();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this.xrTable3).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[4]
    {
      (XRControl) this.xrTable1,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel5
    });
    ((XRControl) this.Detail).HeightF = 58.83332f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.Detail).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.Detail).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.006771088f, 22.99999f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(700.9557f, 35.83333f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 2;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[8]
    {
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell4,
      this.xrTableCell5,
      this.xrTableCell6,
      this.xrTableCell7,
      this.xrTableCell8,
      this.xrTableCell9
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Fecha";
    this.xrTableCell2.Weight = 0.73496104259142836;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Expediente";
    this.xrTableCell3.Weight = 0.99252212184376809;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Liquidación";
    this.xrTableCell4.Weight = 0.8443566375770063;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "Proveedor";
    this.xrTableCell5.Weight = 0.988786097552244;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "Banco";
    this.xrTableCell6.Weight = 0.49837492519548765;
    ((XRLabel) this.xrTableCell7).Multiline = true;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell7).Text = "Cheque/\r\nRetención";
    ((XRControl) this.xrTableCell7).TextAlignment = (TextAlignment) 2;
    this.xrTableCell7.Weight = 0.738664616601764;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell8).Text = "DEBE";
    ((XRControl) this.xrTableCell8).TextAlignment = (TextAlignment) 2;
    this.xrTableCell8.Weight = 1.046007260380603;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell9).Text = "HABER";
    ((XRControl) this.xrTableCell9).TextAlignment = (TextAlignment) 2;
    this.xrTableCell9.Weight = 1.047997272733141;
    ((XRControl) this.xrLabel3).BackColor = Color.SkyBlue;
    ((XRControl) this.xrLabel3).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "DetaCuco")
    });
    ((XRControl) this.xrLabel3).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(486.0218f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).Text = "xrLabel3";
    ((XRControl) this.xrLabel4).BackColor = Color.SkyBlue;
    ((XRControl) this.xrLabel4).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "TotalDebe", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel4).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(487.9733f, 0.0f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(105.2083f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel5).BackColor = Color.SkyBlue;
    ((XRControl) this.xrLabel5).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "TotalHaber", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel5).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(595.7056f, 0.0f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(105.2501f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "xrLabel5";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).Font = new Font("Times New Roman", 9.75f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(700.9625f, 25.83333f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 2;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[8]
    {
      this.xrTableCell11,
      this.xrTableCell12,
      this.xrTableCell13,
      this.xrTableCell14,
      this.xrTableCell15,
      this.xrTableCell16,
      this.xrTableCell17,
      this.xrTableCell18
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((XRControl) this.xrTableCell11).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.FechCaja", "{0:dd/MM/yyyy}")
    });
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).Text = "Fecha";
    this.xrTableCell11.Weight = 0.73496154899207455;
    ((XRControl) this.xrTableCell12).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.ExpeImpu")
    });
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).Text = "Expediente";
    this.xrTableCell12.Weight = 0.99243200302008439;
    ((XRControl) this.xrTableCell13).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.NumeLiqu")
    });
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    ((XRControl) this.xrTableCell13).Text = "Liquidación";
    this.xrTableCell13.Weight = 0.84430479203418518;
    ((XRControl) this.xrTableCell14).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.CucuPers")
    });
    ((XRControl) this.xrTableCell14).Name = "xrTableCell14";
    ((XRControl) this.xrTableCell14).Text = "Proveedor";
    this.xrTableCell14.Weight = 0.99154671625058521;
    ((XRControl) this.xrTableCell15).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.CodiBanc")
    });
    ((XRControl) this.xrTableCell15).Name = "xrTableCell15";
    ((XRControl) this.xrTableCell15).Text = "Banco";
    this.xrTableCell15.Weight = 0.49828151470274928;
    ((XRControl) this.xrTableCell16).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.NumeMoba")
    });
    ((XRLabel) this.xrTableCell16).Multiline = true;
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    ((XRControl) this.xrTableCell16).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell16).Text = "Cheque/\r\nRetención";
    ((XRControl) this.xrTableCell16).TextAlignment = (TextAlignment) 2;
    this.xrTableCell16.Weight = 0.73876673588326225;
    ((XRControl) this.xrTableCell17).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.DebeFormat", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrTableCell17).Name = "xrTableCell17";
    ((XRControl) this.xrTableCell17).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell17).TextAlignment = (TextAlignment) 4;
    this.xrTableCell17.Weight = 1.0461354247748254;
    ((XRControl) this.xrTableCell18).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.HabeFormat", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrTableCell18).Name = "xrTableCell18";
    ((XRControl) this.xrTableCell18).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell18).TextAlignment = (TextAlignment) 4;
    this.xrTableCell18.Weight = 1.0480964594316895;
    ((XRControl) this.TopMargin).HeightF = 15f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.TopMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.TopMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.BottomMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.BottomMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.pbImageBoleto,
      (XRControl) this.xrLabel1,
      (XRControl) this.xrLabel2
    });
    ((XRControl) this.ReportHeader).HeightF = 96.875f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(18.5f, 177f / 16f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(190.2084f, 77.87499f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrLabel1).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(246f, 22.52083f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(362.5f, 23f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "[Parameters.Municipio]";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel2).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(246f, 45.52083f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(362.5f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Subdiario Pagos Presupuestarios";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    this.Municipio.Description = "Parameter1";
    this.Municipio.Name = "Municipio";
    this.Municipio.Visible = false;
    ((XRControl) this.GroupHeader1).HeightF = 0.0f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((GroupBand) this.GroupHeader1).RepeatEveryPage = true;
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
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail1).HeightF = 25.83333f;
    ((XRControl) this.Detail1).Name = "Detail1";
    this.objectDataSource1.DataSource = (object) typeof (DTOPagosPresupuestarios);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XRControl) this.ReportFooter).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrLabel9,
      (XRControl) this.xrLabel8,
      (XRControl) this.xrLabel6
    });
    ((XRControl) this.ReportFooter).HeightF = 23f;
    ((XRControl) this.ReportFooter).Name = "ReportFooter";
    ((XRControl) this.xrLabel9).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel9).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "TotalH", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(594.3633f, 0.0f);
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(106.5507f, 23f);
    ((XRControl) this.xrLabel9).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel9).Text = "xrLabel9";
    ((XRControl) this.xrLabel9).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel8).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel8).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "TotalD", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel8).LocationFloat = new PointFloat(488.0431f, 0.0f);
    ((XRControl) this.xrLabel8).Name = "xrLabel8";
    ((XRControl) this.xrLabel8).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel8).SizeF = new SizeF(106.2367f, 23f);
    ((XRControl) this.xrLabel8).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel8).Text = "xrLabel8";
    ((XRControl) this.xrLabel8).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel6).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel6).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(412.9331f, 0.0f);
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(75.06827f, 23f);
    ((XRControl) this.xrLabel6).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "Totales:";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 4;
    ((DataContainerComponent) this.DebeFormat).DataMember = "detalles";
    this.DebeFormat.Expression = "IIF([DebeCaja]==0,'',[DebeCaja] )";
    this.DebeFormat.Name = "DebeFormat";
    ((DataContainerComponent) this.HabeFormat).DataMember = "detalles";
    this.HabeFormat.Expression = "IIF([HabeCaja] == 0,'',[HabeCaja])";
    this.HabeFormat.Name = "HabeFormat";
    this.TotalD.Expression = "sum([TotalDebe])";
    this.TotalD.Name = "TotalD";
    this.TotalH.Expression = "sum([TotalHaber])";
    this.TotalH.Name = "TotalH";
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable3
    });
    ((XRControl) this.PageHeader).HeightF = 35.83333f;
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((PageBand) this.PageHeader).PrintOn = (PrintOnPages) 2;
    ((XRControl) this.xrTable3).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable3).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable3).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable3).Name = "xrTable3";
    this.xrTable3.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow3
    });
    ((XRControl) this.xrTable3).SizeF = new SizeF(700.9557f, 35.83333f);
    ((XRControl) this.xrTable3).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable3).StylePriority.UseFont = false;
    ((XRControl) this.xrTable3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable3).TextAlignment = (TextAlignment) 2;
    this.xrTableRow3.Cells.AddRange(new XRTableCell[8]
    {
      this.xrTableCell1,
      this.xrTableCell10,
      this.xrTableCell19,
      this.xrTableCell20,
      this.xrTableCell21,
      this.xrTableCell22,
      this.xrTableCell23,
      this.xrTableCell24
    });
    ((XRControl) this.xrTableRow3).Name = "xrTableRow3";
    this.xrTableRow3.Weight = 1.0;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Fecha";
    this.xrTableCell1.Weight = 0.73496104259142836;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).Text = "Expediente";
    this.xrTableCell10.Weight = 0.99252212184376809;
    ((XRControl) this.xrTableCell19).Name = "xrTableCell19";
    ((XRControl) this.xrTableCell19).Text = "Liquidación";
    this.xrTableCell19.Weight = 0.8443566375770063;
    ((XRControl) this.xrTableCell20).Name = "xrTableCell20";
    ((XRControl) this.xrTableCell20).Text = "Proveedor";
    this.xrTableCell20.Weight = 0.988786097552244;
    ((XRControl) this.xrTableCell21).Name = "xrTableCell21";
    ((XRControl) this.xrTableCell21).Text = "Banco";
    this.xrTableCell21.Weight = 0.49837492519548765;
    ((XRLabel) this.xrTableCell22).Multiline = true;
    ((XRControl) this.xrTableCell22).Name = "xrTableCell22";
    ((XRControl) this.xrTableCell22).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell22).Text = "Cheque/\r\nRetención";
    ((XRControl) this.xrTableCell22).TextAlignment = (TextAlignment) 2;
    this.xrTableCell22.Weight = 0.738664616601764;
    ((XRControl) this.xrTableCell23).Name = "xrTableCell23";
    ((XRControl) this.xrTableCell23).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell23).Text = "DEBE";
    ((XRControl) this.xrTableCell23).TextAlignment = (TextAlignment) 2;
    this.xrTableCell23.Weight = 1.0460072603806032;
    ((XRControl) this.xrTableCell24).Name = "xrTableCell24";
    ((XRControl) this.xrTableCell24).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell24).Text = "HABER";
    ((XRControl) this.xrTableCell24).TextAlignment = (TextAlignment) 2;
    this.xrTableCell24.Weight = 1.0479972727331408;
    ((XtraReportBase) this).Bands.AddRange(new Band[8]
    {
      (Band) this.Detail,
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.ReportHeader,
      (Band) this.GroupHeader1,
      (Band) this.DetailReport,
      (Band) this.ReportFooter,
      (Band) this.PageHeader
    });
    this.CalculatedFields.AddRange(new CalculatedField[4]
    {
      this.DebeFormat,
      this.HabeFormat,
      this.TotalD,
      this.TotalH
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    this.Margins = new Margins(49, 73, 15, 100);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Parameters.AddRange(new Parameter[1]
    {
      this.Municipio
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this.xrTable3).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
