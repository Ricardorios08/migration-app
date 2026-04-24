// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos.irepRegistroEnvioCorreosTunuyan
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
namespace InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos;

public class irepRegistroEnvioCorreosTunuyan : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ReportHeaderBand ReportHeader;
  private XRLabel xrLabel1;
  private XRPictureBox pbImageBoleto;
  private GroupHeaderBand GroupHeader1;
  private XRLabel xrLabel2;
  private XRLine xrLine1;
  private XRLabel xrLabel5;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private XRLine xrLine2;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private Parameter fDesde;
  private Parameter fHasta;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private ObjectDataSource objectDataSource2;
  private XRTableCell xrTableCell7;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell8;
  private XRTableCell xrTableCell9;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;
  private XRTableCell xrTableCell13;
  private XRTableCell xrTableCell14;

  public irepRegistroEnvioCorreosTunuyan()
    : base(nameof (irepRegistroEnvioCorreosTunuyan), "Registro Envío de Correos")
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
    List<DTORegistroEnvioCorreos> registroEnviosTunuyan = new ExpEnviarMailMasivoTunuyan().getRegistroEnviosTunuyan(this.FechaDesde, this.FechaHasta);
    this.fDesde.Value = (object) this.FechaDesde;
    this.fHasta.Value = (object) this.FechaHasta;
    this.objectDataSource2.DataSource = (object) registroEnviosTunuyan;
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
    this.xrTableCell8 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.xrTableCell13 = new XRTableCell();
    this.xrTableCell14 = new XRTableCell();
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
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.fDesde = new Parameter();
    this.fHasta = new Parameter();
    this.objectDataSource2 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource2).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 17f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 38.91671f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail).HeightF = 25f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 2, 2, 100f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(1065f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UsePadding = false;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[7]
    {
      this.xrTableCell8,
      this.xrTableCell9,
      this.xrTableCell10,
      this.xrTableCell11,
      this.xrTableCell12,
      this.xrTableCell13,
      this.xrTableCell14
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Ofic]")
    });
    ((XRLabel) this.xrTableCell8).Multiline = true;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell8).Text = "Oficina";
    ((XRControl) this.xrTableCell8).TextAlignment = (TextAlignment) 2;
    this.xrTableCell8.Weight = 0.85446012255171655;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell9).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Periodo]")
    });
    ((XRLabel) this.xrTableCell9).Multiline = true;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell9).Text = "Periodo";
    ((XRControl) this.xrTableCell9).TextAlignment = (TextAlignment) 2;
    this.xrTableCell9.Weight = 0.46009392536861793;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Bimestre]")
    });
    ((XRLabel) this.xrTableCell10).Multiline = true;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell10).Text = "Bimestre";
    ((XRControl) this.xrTableCell10).TextAlignment = (TextAlignment) 2;
    this.xrTableCell10.Weight = 0.46009392536861782;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell11).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NroLiqu]")
    });
    ((XRLabel) this.xrTableCell11).Multiline = true;
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell11).Text = "Nro. Liquidación";
    ((XRControl) this.xrTableCell11).TextAlignment = (TextAlignment) 2;
    this.xrTableCell11.Weight = 0.78873242302120006;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell12).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Cuentas]")
    });
    ((XRLabel) this.xrTableCell12).Multiline = true;
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell12).Text = "Cuenta";
    ((XRControl) this.xrTableCell12).TextAlignment = (TextAlignment) 2;
    this.xrTableCell12.Weight = 0.59154932442965125;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell13).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Email]")
    });
    ((XRLabel) this.xrTableCell13).Multiline = true;
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    ((XRControl) this.xrTableCell13).Text = "Email";
    this.xrTableCell13.Weight = 2.8450702792601965;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FechaEnvio]")
    });
    ((XRLabel) this.xrTableCell14).Multiline = true;
    ((XRControl) this.xrTableCell14).Name = "xrTableCell14";
    ((XRControl) this.xrTableCell14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell14).Text = "Fecha de Envío";
    ((XRControl) this.xrTableCell14).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrTableCell14).TextFormatString = "{0:dd/MM/yyyy}";
    this.xrTableCell14.Weight = 1.0;
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
    ((XRControl) this.ReportHeader).HeightF = 159.6666f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrLabel2).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(22.87499f, 115.2917f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(114.5833f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Fecha Desde:";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(0.0f, 130.9167f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(1065f, 23.00002f);
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?fHasta")
    });
    ((XRControl) this.xrLabel5).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(389.5001f, 111.9167f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).Text = "xrLabel5";
    ((XRControl) this.xrLabel5).TextFormatString = "{0:dd/MM/yyyy}";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?fDesde")
    });
    ((XRControl) this.xrLabel4).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(137.4583f, 115.2917f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    ((XRControl) this.xrLabel4).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.xrLabel3).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(280.1251f, 111.9167f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(109.375f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "Fecha Hasta:";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLine2).LocationFloat = new PointFloat(0.0f, 92.29167f);
    ((XRControl) this.xrLine2).Name = "xrLine2";
    ((XRControl) this.xrLine2).SizeF = new SizeF(1065f, 23f);
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 18f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(369.25f, 31.49999f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(494.7917f, 43.83333f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Registro Envío de Correos";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(10.00001f, 10.00001f);
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
    ((XRControl) this.xrTable1).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(1065f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 2;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[7]
    {
      this.xrTableCell7,
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell4,
      this.xrTableCell5,
      this.xrTableCell6
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRLabel) this.xrTableCell7).Multiline = true;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).Text = "Oficina";
    this.xrTableCell7.Weight = 0.85446012255171655;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Periodo";
    this.xrTableCell1.Weight = 0.46009392536861826;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Bimestre";
    this.xrTableCell2.Weight = 0.46009392536861782;
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Nro. Liquidación";
    this.xrTableCell3.Weight = 0.78873237287494491;
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Cuenta";
    this.xrTableCell4.Weight = 0.59154927428339565;
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "Email";
    this.xrTableCell5.Weight = 2.8450703795527068;
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "Fecha de Envío";
    this.xrTableCell6.Weight = 1.0;
    this.fDesde.Description = "fDesde";
    this.fDesde.Name = "fDesde";
    this.fDesde.Type = typeof (DateTime);
    this.fDesde.ValueInfo = "2023-05-09";
    this.fDesde.Visible = false;
    this.fHasta.Description = "fHasta";
    this.fHasta.Name = "fHasta";
    this.fHasta.Type = typeof (DateTime);
    this.fHasta.ValueInfo = "2023-05-09";
    this.fHasta.Visible = false;
    this.objectDataSource2.DataSource = (object) typeof (DTORegistroEnvioCorreos);
    ((DataComponentBase) this.objectDataSource2).Name = "objectDataSource2";
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
      (IComponent) this.objectDataSource2
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource2;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Landscape = true;
    this.Margins = new Margins(39, 63 /*0x3F*/, 17, 39);
    this.PageHeight = 827;
    this.PageWidth = 1169;
    this.PaperKind = PaperKind.A4;
    this.Parameters.AddRange(new Parameter[2]
    {
      this.fDesde,
      this.fHasta
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource2).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
