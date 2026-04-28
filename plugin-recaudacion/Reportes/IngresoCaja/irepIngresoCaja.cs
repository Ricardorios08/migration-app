// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja.irepIngresoCaja
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
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Expertos;
using InfoGov.Reports;
using InfoGov.Resources;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.IngresoCaja;

public class irepIngresoCaja : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ObjectDataSource objectDataSource1;
  private PageFooterBand PageFooter;
  private XRPageInfo xrPageInfo2;
  private Parameter usuario;
  private XRLabel xrLabel25;
  private XRLabel lblUsuario;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private GroupFooterBand GroupFooter1;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell8;
  private XRTable xrTable4;
  private XRTableRow xrTableRow4;
  private XRTableCell xrTableCell23;
  private Parameter pTotal;
  private ReportHeaderBand ReportHeader;
  private XRPageInfo xrPageInfo1;
  private XRLabel xrLabel3;
  private XRLabel lblTitulo;
  private XRLabel xrLabel2;
  private XRLine xrLine1;
  private XRPictureBox pbImageBoleto;
  private GroupHeaderBand GroupHeader2;
  private XRLabel xrLabel36;
  private XRLabel xrLabel1;
  private XRLabel xrLabel37;
  private XRLabel xrLabel4;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRLabel xrLabel55;
  private Parameter pFeenAcpa;
  private Parameter pNumeAcpa;
  private ReportFooterBand ReportFooter1;
  private XRTable xrTable3;
  private XRTableRow xrTableRow3;
  private XRTableCell xrTableCell9;
  private XRTableCell xrTableCell10;
  private XRRichText xrRichText1;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;

  internal DateTime FeenAcpa { get; set; }

  internal int NumeAcpa { get; set; }

  public irepIngresoCaja()
    : base(nameof (irepIngresoCaja), "Ingreso de Caja")
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
    List<DTOIngresoCaja> source = new ExpIngresoCaja().ObtenerDetallesIngreso(this.FeenAcpa, this.NumeAcpa);
    ((XRControl) this.lblTitulo).Text = PARAMS.NombreLargoMunicipio;
    this.usuario.Value = (object) Misc.Usuario;
    this.pTotal.Value = (object) source.Sum<DTOIngresoCaja>((Func<DTOIngresoCaja, Decimal>) (x => x.TotaIngr));
    this.pFeenAcpa.Value = (object) this.FeenAcpa.ToShortDateString();
    this.pNumeAcpa.Value = (object) this.NumeAcpa;
    this.objectDataSource1.DataSource = (object) source;
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (irepIngresoCaja));
    XRSummary xrSummary = new XRSummary();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.PageFooter = new PageFooterBand();
    this.xrLabel25 = new XRLabel();
    this.lblUsuario = new XRLabel();
    this.xrPageInfo2 = new XRPageInfo();
    this.usuario = new Parameter();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.GroupFooter1 = new GroupFooterBand();
    this.xrRichText1 = new XRRichText();
    this.xrTable4 = new XRTable();
    this.xrTableRow4 = new XRTableRow();
    this.xrTableCell23 = new XRTableCell();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.pTotal = new Parameter();
    this.ReportHeader = new ReportHeaderBand();
    this.xrPageInfo1 = new XRPageInfo();
    this.xrLabel3 = new XRLabel();
    this.lblTitulo = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.xrLine1 = new XRLine();
    this.pbImageBoleto = new XRPictureBox();
    this.GroupHeader2 = new GroupHeaderBand();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrLabel55 = new XRLabel();
    this.xrLabel36 = new XRLabel();
    this.xrLabel1 = new XRLabel();
    this.xrLabel37 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.pFeenAcpa = new Parameter();
    this.pNumeAcpa = new Parameter();
    this.ReportFooter1 = new ReportFooterBand();
    this.xrTable3 = new XRTable();
    this.xrTableRow3 = new XRTableRow();
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrRichText1).BeginInit();
    ((ISupportInitialize) this.xrTable4).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.xrTable3).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 10f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 11f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((Band) this.Detail).Expanded = false;
    ((XRControl) this.Detail).HeightF = 0.0f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.PageFooter).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrLabel25,
      (XRControl) this.lblUsuario,
      (XRControl) this.xrPageInfo2
    });
    ((XRControl) this.PageFooter).HeightF = 25.58333f;
    ((XRControl) this.PageFooter).Name = "PageFooter";
    ((XRControl) this.xrLabel25).Font = new Font("Verdana", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel25).LocationFloat = new PointFloat(10.57653f, 0.0f);
    this.xrLabel25.Multiline = true;
    ((XRControl) this.xrLabel25).Name = "xrLabel25";
    ((XRControl) this.xrLabel25).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel25).SizeF = new SizeF(63.72635f, 16.75f);
    ((XRControl) this.xrLabel25).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel25).Text = "Usuario:";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.lblUsuario).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?usuario")
    });
    ((XRControl) this.lblUsuario).Font = new Font("Verdana", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.lblUsuario).LocationFloat = new PointFloat(74.30288f, 0.0f);
    this.lblUsuario.Multiline = true;
    ((XRControl) this.lblUsuario).Name = "lblUsuario";
    ((XRControl) this.lblUsuario).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblUsuario).SizeF = new SizeF(79.03508f, 16.75f);
    ((XRControl) this.lblUsuario).StylePriority.UseFont = false;
    ((XRControl) this.xrPageInfo2).LocationFloat = new PointFloat(624.1666f, 0.0f);
    ((XRControl) this.xrPageInfo2).Name = "xrPageInfo2";
    ((XRControl) this.xrPageInfo2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrPageInfo2).SizeF = new SizeF(95.83331f, 16.75002f);
    ((XRControl) this.xrPageInfo2).TextFormatString = "Pág.{0} de {1}";
    this.usuario.Enabled = false;
    this.usuario.Name = "usuario";
    this.usuario.Visible = false;
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[2]
    {
      (Band) this.Detail1,
      (Band) this.GroupFooter1
    });
    ((XtraReportBase) this.DetailReport).DataMember = "Movimientos";
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((XRControl) this.Detail1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail1).HeightF = 22.12499f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).Font = new Font("Verdana", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(1.000134f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(726.9999f, 22.12499f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[5]
    {
      this.xrTableCell5,
      this.xrTableCell6,
      this.xrTableCell7,
      this.xrTableCell12,
      this.xrTableCell8
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodiUsua]")
    });
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "Usuario";
    this.xrTableCell5.Weight = 0.51107335787396813;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodiConc]")
    });
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "Cod. Concepto";
    this.xrTableCell6.Weight = 0.67089336259857668;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaConc]")
    });
    ((XRLabel) this.xrTableCell7).Multiline = true;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).Text = "Detalle Concepto";
    this.xrTableCell7.Weight = 1.9102621644531641;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell12).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[IngrConc]")
    });
    ((XRLabel) this.xrTableCell12).Multiline = true;
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).Text = "xrTableCell12";
    this.xrTableCell12.Weight = 1.0100197347266533;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[ImpoIngr]")
    });
    ((XRLabel) this.xrTableCell8).Multiline = true;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell8).Text = "Importe";
    ((XRControl) this.xrTableCell8).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell8).TextFormatString = "{0:C2}";
    this.xrTableCell8.Weight = 1.1303951445919638;
    ((XRControl) this.GroupFooter1).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrRichText1,
      (XRControl) this.xrTable4
    });
    ((XRControl) this.GroupFooter1).HeightF = 23.33338f;
    ((XRControl) this.GroupFooter1).Name = "GroupFooter1";
    ((XRControl) this.xrRichText1).Borders = (BorderSide) 5;
    ((XRControl) this.xrRichText1).Font = new Font("Verdana", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrRichText1).LocationFloat = new PointFloat(344.5419f, 0.3333727f);
    ((XRControl) this.xrRichText1).Name = "xrRichText1";
    ((XRControl) this.xrRichText1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRRichTextBase) this.xrRichText1).SerializableRtfString = componentResourceManager.GetString("xrRichText1.SerializableRtfString");
    ((XRControl) this.xrRichText1).SizeF = new SizeF(226.4063f, 23f);
    ((XRControl) this.xrRichText1).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable4).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable4).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTable4).LocationFloat = new PointFloat(570.948f, 0.0f);
    ((XRControl) this.xrTable4).Name = "xrTable4";
    this.xrTable4.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow4
    });
    ((XRControl) this.xrTable4).SizeF = new SizeF(157.052f, 23.33336f);
    ((XRControl) this.xrTable4).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable4).StylePriority.UseFont = false;
    this.xrTableRow4.Cells.AddRange(new XRTableCell[1]
    {
      this.xrTableCell23
    });
    ((XRControl) this.xrTableRow4).Name = "xrTableRow4";
    this.xrTableRow4.Weight = 1.0;
    ((XRControl) this.xrTableCell23).Borders = (BorderSide) 4;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell23).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "sumSum([ImpoIngr])")
    });
    ((XRControl) this.xrTableCell23).Font = new Font("Verdana", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTableCell23).Name = "xrTableCell23";
    ((XRControl) this.xrTableCell23).Padding = new PaddingInfo(2, 12, 0, 0, 100f);
    ((XRControl) this.xrTableCell23).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell23).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell23).StylePriority.UsePadding = false;
    ((XRControl) this.xrTableCell23).StylePriority.UseTextAlignment = false;
    xrSummary.Running = (SummaryRunning) 1;
    ((XRLabel) this.xrTableCell23).Summary = xrSummary;
    ((XRControl) this.xrTableCell23).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell23).TextFormatString = "{0:C2}";
    this.xrTableCell23.Weight = 1.1019373325122539;
    this.objectDataSource1.DataSource = (object) typeof (DTOIngresoCaja);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    this.pTotal.Enabled = false;
    this.pTotal.Name = "pTotal";
    this.pTotal.Type = typeof (Decimal);
    this.pTotal.ValueInfo = "0";
    this.pTotal.Visible = false;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[6]
    {
      (XRControl) this.xrPageInfo1,
      (XRControl) this.xrLabel3,
      (XRControl) this.lblTitulo,
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLine1,
      (XRControl) this.pbImageBoleto
    });
    ((XRControl) this.ReportHeader).HeightF = 100.875f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrPageInfo1).LocationFloat = new PointFloat(653.5834f, 43.75003f);
    ((XRControl) this.xrPageInfo1).Name = "xrPageInfo1";
    ((XRControl) this.xrPageInfo1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    this.xrPageInfo1.PageInfo = (PageInfo) 16 /*0x10*/;
    ((XRControl) this.xrPageInfo1).SizeF = new SizeF(74.41663f, 23f);
    ((XRControl) this.xrPageInfo1).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(581.7084f, 43.75003f);
    this.xrLabel3.Multiline = true;
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(71.875f, 23f);
    ((XRControl) this.xrLabel3).Text = "Emitido el:";
    ((XRControl) this.lblTitulo).Font = new Font("Verdana", 14.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.lblTitulo).LocationFloat = new PointFloat(201.875f, 10.00001f);
    ((XRControl) this.lblTitulo).Name = "lblTitulo";
    ((XRControl) this.lblTitulo).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblTitulo).SizeF = new SizeF(344.7917f, 23f);
    ((XRControl) this.lblTitulo).StylePriority.UseFont = false;
    ((XRControl) this.lblTitulo).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblTitulo).Text = "Municipalidad de San Martín";
    ((XRControl) this.lblTitulo).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel2).Font = new Font("Verdana", 12f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(201.875f, 43.75003f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(344.7917f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Ingresos de Caja";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(0.0f, 77.87499f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(728f, 23f);
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(9.999998f, 2.874994f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(180f, 75f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.GroupHeader2).Controls.AddRange(new XRControl[6]
    {
      (XRControl) this.xrTable1,
      (XRControl) this.xrLabel55,
      (XRControl) this.xrLabel36,
      (XRControl) this.xrLabel1,
      (XRControl) this.xrLabel37,
      (XRControl) this.xrLabel4
    });
    ((XRControl) this.GroupHeader2).HeightF = 127.6667f;
    ((XRControl) this.GroupHeader2).Name = "GroupHeader2";
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Verdana", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(1.000134f, 105.5417f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(726.9999f, 22.12499f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[5]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell11,
      this.xrTableCell4
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Usuario";
    this.xrTableCell1.Weight = 0.54999912968403075;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Cod. Conc.";
    this.xrTableCell2.Weight = 0.72199202549292407;
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Detalle Concepto";
    this.xrTableCell3.Weight = 2.0557569940742506;
    ((XRLabel) this.xrTableCell11).Multiline = true;
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).Text = "Cuenta Contable";
    this.xrTableCell11.Weight = 1.0869484405984449;
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Importe";
    this.xrTableCell4.Weight = 1.216491751308642;
    ((XRControl) this.xrLabel55).Font = new Font("Verdana", 9f, FontStyle.Bold);
    ((XRControl) this.xrLabel55).LocationFloat = new PointFloat(0.0f, 89.83336f);
    this.xrLabel55.Multiline = true;
    ((XRControl) this.xrLabel55).Name = "xrLabel55";
    ((XRControl) this.xrLabel55).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel55).SizeF = new SizeF(100f, 15.70833f);
    ((XRControl) this.xrLabel55).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel55).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel55).Text = "Ingresos";
    ((XRControl) this.xrLabel55).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel36).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel36).LocationFloat = new PointFloat(0.0f, 25.95835f);
    ((XRControl) this.xrLabel36).Name = "xrLabel36";
    ((XRControl) this.xrLabel36).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel36).SizeF = new SizeF(142.7612f, 22.99999f);
    ((XRControl) this.xrLabel36).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel36).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel36).Text = "Fecha de Envío:";
    ((XRControl) this.xrLabel36).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(0.0f, 48.95833f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(142.7612f, 22.99999f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "N° de Grupo:";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel37).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?pFeenAcpa")
    });
    ((XRControl) this.xrLabel37).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel37).LocationFloat = new PointFloat(142.7612f, 25.95835f);
    this.xrLabel37.Multiline = true;
    ((XRControl) this.xrLabel37).Name = "xrLabel37";
    ((XRControl) this.xrLabel37).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel37).SizeF = new SizeF(139.4164f, 23f);
    ((XRControl) this.xrLabel37).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel37).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel37).Text = "xrLabel11";
    ((XRControl) this.xrLabel37).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?pNumeAcpa")
    });
    ((XRControl) this.xrLabel4).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(142.7612f, 48.9583f);
    this.xrLabel4.Multiline = true;
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(139.4164f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel11";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 16 /*0x10*/;
    this.pFeenAcpa.Enabled = false;
    this.pFeenAcpa.Name = "pFeenAcpa";
    this.pFeenAcpa.Visible = false;
    this.pNumeAcpa.Enabled = false;
    this.pNumeAcpa.Name = "pNumeAcpa";
    this.pNumeAcpa.Type = typeof (int);
    this.pNumeAcpa.ValueInfo = "0";
    this.pNumeAcpa.Visible = false;
    ((XRControl) this.ReportFooter1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable3
    });
    ((XRControl) this.ReportFooter1).HeightF = 23.33336f;
    ((XRControl) this.ReportFooter1).Name = "ReportFooter1";
    ((XRControl) this.xrTable3).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable3).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTable3).LocationFloat = new PointFloat(344.5419f, 0.0f);
    ((XRControl) this.xrTable3).Name = "xrTable3";
    this.xrTable3.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow3
    });
    ((XRControl) this.xrTable3).SizeF = new SizeF(383.4581f, 23.33336f);
    ((XRControl) this.xrTable3).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable3).StylePriority.UseFont = false;
    this.xrTableRow3.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell9,
      this.xrTableCell10
    });
    ((XRControl) this.xrTableRow3).Name = "xrTableRow3";
    this.xrTableRow3.Weight = 1.0;
    ((XRControl) this.xrTableCell9).Borders = (BorderSide) 15;
    ((XRControl) this.xrTableCell9).Font = new Font("Verdana", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrTableCell9).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell9).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell9).StylePriority.UsePadding = false;
    ((XRControl) this.xrTableCell9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell9).Text = "TOTAL:";
    ((XRControl) this.xrTableCell9).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell9).TextFormatString = "{0}";
    this.xrTableCell9.Weight = 1.5885526658834177;
    ((XRControl) this.xrTableCell10).Borders = (BorderSide) 14;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?pTotal")
    });
    ((XRControl) this.xrTableCell10).Font = new Font("Verdana", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).Padding = new PaddingInfo(2, 12, 0, 0, 100f);
    ((XRControl) this.xrTableCell10).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell10).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell10).StylePriority.UsePadding = false;
    ((XRControl) this.xrTableCell10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell10).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell10).TextFormatString = "{0:C2}";
    this.xrTableCell10.Weight = 1.1019373325122539;
    ((XtraReportBase) this).Bands.AddRange(new Band[8]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.PageFooter,
      (Band) this.DetailReport,
      (Band) this.ReportHeader,
      (Band) this.GroupHeader2,
      (Band) this.ReportFooter1
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(24, 59, 10, 11);
    this.Parameters.AddRange(new Parameter[4]
    {
      this.usuario,
      this.pTotal,
      this.pFeenAcpa,
      this.pNumeAcpa
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrRichText1).EndInit();
    ((ISupportInitialize) this.xrTable4).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.xrTable3).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
