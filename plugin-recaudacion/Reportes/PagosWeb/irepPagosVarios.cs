// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.PagosWeb.irepPagosVarios
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
namespace InfoGov.Plugins.Recaudacion.Reportes.PagosWeb;

public class irepPagosVarios : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ReportHeaderBand ReportHeader;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel1;
  private XRLabel xrLabel2;
  private XRLabel xrLabel3;
  private XRLabel xrLabel4;
  private XRLabel xrLabel5;
  private XRLine xrLine1;
  private XRLine xrLine2;
  private Parameter Desde;
  private Parameter Hasta;
  private ObjectDataSource objectDataSource1;
  private XRLabel xrLabel7;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell8;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private XRLine xrLine3;
  private GroupHeaderBand GroupHeader1;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell9;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;
  private XRTableCell xrTableCell13;
  private XRTableCell xrTableCell14;
  private XRLabel xrLabel6;
  private XRTableCell xrTableCell16;
  private XRTableCell xrTableCell15;

  public irepPagosVarios()
    : base("irepPagosWeb", "Pago de Varios")
  {
    this.InitializeComponent();
    this.fillImageBoleto();
  }

  public DateTime FechaDesde { get; set; }

  public DateTime FechaHasta { get; set; }

  public int[] VCodiSede { get; set; }

  private void fillImageBoleto()
  {
    this.pbImageBoleto.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
  }

  protected override void setDataSource(Action<int, string> reportProgress)
  {
    List<DTO_PagosVarios> registroPagosWeb = new ExpPagosVarios().getRegistroPagosWeb(this.FechaDesde, this.FechaHasta, this.VCodiSede);
    this.Desde.Value = (object) this.FechaDesde;
    this.Hasta.Value = (object) this.FechaHasta;
    this.objectDataSource1.DataSource = (object) registroPagosWeb;
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
    this.xrLine3 = new XRLine();
    this.xrLabel7 = new XRLabel();
    this.xrLabel6 = new XRLabel();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell16 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.ReportHeader = new ReportHeaderBand();
    this.pbImageBoleto = new XRPictureBox();
    this.xrLabel1 = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLine1 = new XRLine();
    this.xrLine2 = new XRLine();
    this.Desde = new Parameter();
    this.Hasta = new Parameter();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell15 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.xrTableCell13 = new XRTableCell();
    this.xrTableCell14 = new XRTableCell();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 20f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 24.83343f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrLine3,
      (XRControl) this.xrLabel7,
      (XRControl) this.xrLabel6
    });
    ((XRControl) this.Detail).HeightF = 55.33326f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.xrLine3).LocationFloat = new PointFloat(0.0f, 43.24992f);
    ((XRControl) this.xrLine3).Name = "xrLine3";
    ((XRControl) this.xrLine3).SizeF = new SizeF(761.3751f, 2.080002f);
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaSede]")
    });
    ((XRControl) this.xrLabel7).Font = new Font("Arial", 12f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(52.08333f, 15.83313f);
    this.xrLabel7.Multiline = true;
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(683.9166f, 23f);
    ((XRControl) this.xrLabel7).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel7).Text = "xrLabel7";
    ((XRControl) this.xrLabel7).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodiSede]")
    });
    ((XRControl) this.xrLabel6).Font = new Font("Arial", 12f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(0.0f, 15.83313f);
    this.xrLabel6.Multiline = true;
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(52.08333f, 23f);
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "xrLabel6";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(761.3752f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[8]
    {
      this.xrTableCell6,
      this.xrTableCell4,
      this.xrTableCell16,
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell5,
      this.xrTableCell7,
      this.xrTableCell8
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 11.5;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[PeriBole]")
    });
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell6).Text = "xrTableCell6";
    ((XRControl) this.xrTableCell6).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell6.Weight = 0.094018955726803521;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NumeBole]")
    });
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell4).Text = "xrTableCell4";
    ((XRControl) this.xrTableCell4).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell4.Weight = 0.094258493605114985;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell16).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CucuPers]")
    });
    ((XRLabel) this.xrTableCell16).Multiline = true;
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    ((XRControl) this.xrTableCell16).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell16).Text = "xrTableCell16";
    ((XRControl) this.xrTableCell16).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell16.Weight = 0.13402192076151492;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell2).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaPers]")
    });
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell2).Text = "xrTableCell2";
    ((XRControl) this.xrTableCell2).TextAlignment = (TextAlignment) 16 /*0x10*/;
    this.xrTableCell2.Weight = 0.24732375387491282;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell3).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FechBole]")
    });
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell3).Text = "xrTableCell3";
    ((XRControl) this.xrTableCell3).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrTableCell3).TextFormatString = "{0:d}";
    this.xrTableCell3.Weight = 0.096183525366038053;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[EstaBole]")
    });
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell5).Text = "xrTableCell5";
    ((XRControl) this.xrTableCell5).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell5.Weight = 0.1052882688366943;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TipoBole]")
    });
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell7).Text = "xrTableCell7";
    ((XRControl) this.xrTableCell7).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell7.Weight = 0.10889886108641091;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TotaBole]")
    });
    ((XRLabel) this.xrTableCell8).Multiline = true;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell8).Text = "xrTableCell8";
    ((XRControl) this.xrTableCell8).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrTableCell8).TextFormatString = "{0:$0.00}";
    this.xrTableCell8.Weight = 0.13322216565285772;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[8]
    {
      (XRControl) this.pbImageBoleto,
      (XRControl) this.xrLabel1,
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLine1,
      (XRControl) this.xrLine2
    });
    ((XRControl) this.ReportHeader).HeightF = 172.8333f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(9.916656f, 0.0f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(173.8334f, 82.29166f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 18f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(183.75f, 23.54166f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(464.5834f, 43.83333f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Pago de Boletos Varios";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel2).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(0.0f, 116.8333f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(114.5833f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Fecha Desde:";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel3).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(214.5833f, 116.8333f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(109.375f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "Fecha Hasta:";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 2;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?Desde")
    });
    ((XRControl) this.xrLabel4).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(114.5833f, 116.8333f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    ((XRControl) this.xrLabel4).TextFormatString = "{0:d/M/yyyy}";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?Hasta")
    });
    ((XRControl) this.xrLabel5).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(323.9583f, 116.8333f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).Text = "xrLabel5";
    ((XRControl) this.xrLabel5).TextFormatString = "{0:d/M/yyyy}";
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(0.0f, 139.8333f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(761.3751f, 23f);
    ((XRControl) this.xrLine2).LocationFloat = new PointFloat(0.0f, 82.29166f);
    ((XRControl) this.xrLine2).Name = "xrLine2";
    ((XRControl) this.xrLine2).SizeF = new SizeF(761.3751f, 23f);
    this.Desde.Description = "Desde";
    this.Desde.Name = "Desde";
    this.Desde.Type = typeof (DateTime);
    this.Desde.ValueInfo = "2022-04-12";
    this.Desde.Visible = false;
    this.Hasta.Description = "Hasta";
    this.Hasta.Name = "Hasta";
    this.Hasta.Type = typeof (DateTime);
    this.Hasta.ValueInfo = "2022-04-12";
    this.Hasta.Visible = false;
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[2]
    {
      (Band) this.Detail1,
      (Band) this.GroupHeader1
    });
    ((XtraReportBase) this.DetailReport).DataMember = "detalle";
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((XRControl) this.Detail1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable1
    });
    ((XRControl) this.Detail1).HeightF = 25f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.GroupHeader1).HeightF = 25f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(761.375f, 25f);
    this.xrTableRow2.Cells.AddRange(new XRTableCell[8]
    {
      this.xrTableCell1,
      this.xrTableCell9,
      this.xrTableCell15,
      this.xrTableCell10,
      this.xrTableCell11,
      this.xrTableCell12,
      this.xrTableCell13,
      this.xrTableCell14
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 11.5;
    ((XRControl) this.xrTableCell1).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell1).Text = "PERIODO";
    ((XRControl) this.xrTableCell1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell1.Weight = 0.094018955726803508;
    ((XRControl) this.xrTableCell9).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell9).Multiline = true;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell9).Text = "NÚMERO";
    ((XRControl) this.xrTableCell9).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell9.Weight = 0.094258493605114985;
    ((XRControl) this.xrTableCell15).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell15).Multiline = true;
    ((XRControl) this.xrTableCell15).Name = "xrTableCell15";
    ((XRControl) this.xrTableCell15).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell15).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell15).Text = "CUIL";
    ((XRControl) this.xrTableCell15).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell15.Weight = 0.13402192076151492;
    ((XRControl) this.xrTableCell10).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell10).Multiline = true;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell10).Text = "CONTRIBUYENTE";
    ((XRControl) this.xrTableCell10).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell10.Weight = 0.24732375387491282;
    ((XRControl) this.xrTableCell11).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell11).Multiline = true;
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell11).Text = "FECHA";
    ((XRControl) this.xrTableCell11).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell11.Weight = 0.096183484369737657;
    ((XRControl) this.xrTableCell12).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell12).Multiline = true;
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell12).Text = "ESTADO";
    ((XRControl) this.xrTableCell12).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell12.Weight = 0.10528835003304104;
    ((XRControl) this.xrTableCell13).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell13).Multiline = true;
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    ((XRControl) this.xrTableCell13).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell13).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell13).Text = "TIPO";
    ((XRControl) this.xrTableCell13).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell13.Weight = 0.10889878927425432;
    ((XRControl) this.xrTableCell14).Font = new Font("Arial", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell14).Multiline = true;
    ((XRControl) this.xrTableCell14).Name = "xrTableCell14";
    ((XRControl) this.xrTableCell14).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell14).Text = "IMPORTE";
    ((XRControl) this.xrTableCell14).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableCell14.Weight = 0.13322189243844482;
    this.objectDataSource1.DataSource = (object) typeof (DTO_PagosVarios);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this).Bands.AddRange(new Band[5]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.ReportHeader,
      (Band) this.DetailReport
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(29, 25, 20, 25);
    this.Parameters.AddRange(new Parameter[2]
    {
      this.Desde,
      this.Hasta
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
