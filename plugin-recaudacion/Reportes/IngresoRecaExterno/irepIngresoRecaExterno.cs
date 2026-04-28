// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.IngresoRecaExterno.irepIngresoRecaExterno
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

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.IngresoRecaExterno;

public class irepIngresoRecaExterno : InfoGovReport
{
  public DateTime FechaEnvio;
  private List<DTOIngresoRecaExterno> datos;
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ObjectDataSource objectDataSource1;
  private ReportHeaderBand ReportHeader;
  private XRPictureBox pibImagen;
  private XRLabel lblTitulo;
  private XRLabel lblSubTit;
  private GroupHeaderBand GroupHeader1;
  private XRLabel lblRangoFecha;
  private XRLabel lblFecha;
  private PageFooterBand PageFooter;
  private XRLabel xrLabel6;
  private XRLabel xrLabel7;
  private Parameter usua;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private GroupHeaderBand GroupHeader2;
  private XRTable xrTable4;
  private XRTableRow xrTableRow7;
  private XRTableCell xrTableCell32;
  private XRTableCell xrTableCell33;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell7;
  private XRTableCell xrTableCell8;
  private XRTableCell xrTableCell9;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;

  public irepIngresoRecaExterno()
    : base(nameof (irepIngresoRecaExterno), "Ingresos Externos")
  {
    this.InitializeComponent();
    ((XRControl) this.lblTitulo).Text = PARAMS.NombreLargoMunicipio;
    this.pibImagen.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
    this.datos = new List<DTOIngresoRecaExterno>();
  }

  private void CargarConfigControles()
  {
    ((XRControl) this.lblFecha).Text = this.FechaEnvio.ToShortDateString();
    this.usua.Value = (object) Misc.Usuario;
  }

  protected override void setDataSource(Action<int, string> reportProgress)
  {
    new ExpIngresoRecaExterno().DatosRepIngresosExternos(this.datos, this.FechaEnvio);
    this.CargarConfigControles();
    this.objectDataSource1.DataSource = (object) this.datos;
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
    this.ReportHeader = new ReportHeaderBand();
    this.pibImagen = new XRPictureBox();
    this.lblTitulo = new XRLabel();
    this.lblSubTit = new XRLabel();
    this.GroupHeader1 = new GroupHeaderBand();
    this.lblRangoFecha = new XRLabel();
    this.lblFecha = new XRLabel();
    this.PageFooter = new PageFooterBand();
    this.xrLabel6 = new XRLabel();
    this.xrLabel7 = new XRLabel();
    this.usua = new Parameter();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.GroupHeader2 = new GroupHeaderBand();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTable4 = new XRTable();
    this.xrTableRow7 = new XRTableRow();
    this.xrTableCell32 = new XRTableCell();
    this.xrTableCell33 = new XRTableCell();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.xrTable4).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 16f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 15f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).HeightF = 0.0f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.pibImagen,
      (XRControl) this.lblTitulo,
      (XRControl) this.lblSubTit
    });
    ((XRControl) this.ReportHeader).HeightF = 71.875f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.pibImagen).LocationFloat = new PointFloat(14.16674f, 0.0f);
    ((XRControl) this.pibImagen).Name = "pibImagen";
    ((XRControl) this.pibImagen).SizeF = new SizeF(189.17f, 70.42f);
    this.pibImagen.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.lblTitulo).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.lblTitulo).LocationFloat = new PointFloat(203.3367f, 10.00001f);
    this.lblTitulo.Multiline = true;
    ((XRControl) this.lblTitulo).Name = "lblTitulo";
    ((XRControl) this.lblTitulo).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblTitulo).SizeF = new SizeF(394.4999f, 22.91665f);
    ((XRControl) this.lblTitulo).StylePriority.UseFont = false;
    ((XRControl) this.lblTitulo).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblTitulo).Text = "MUNICIPALIDAD DE SAN MARTÍN";
    ((XRControl) this.lblTitulo).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.lblSubTit).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.lblSubTit).LocationFloat = new PointFloat(203.3367f, 32.91667f);
    this.lblSubTit.Multiline = true;
    ((XRControl) this.lblSubTit).Name = "lblSubTit";
    ((XRControl) this.lblSubTit).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblSubTit).SizeF = new SizeF(394.4999f, 22.91665f);
    ((XRControl) this.lblSubTit).StylePriority.UseFont = false;
    ((XRControl) this.lblSubTit).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblSubTit).Text = "Ingresos Recaudadores Externos";
    ((XRControl) this.lblSubTit).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.lblRangoFecha,
      (XRControl) this.lblFecha
    });
    ((XRControl) this.GroupHeader1).HeightF = 43.75f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.lblRangoFecha).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.lblRangoFecha).LocationFloat = new PointFloat(10.00002f, 9.999974f);
    this.lblRangoFecha.Multiline = true;
    ((XRControl) this.lblRangoFecha).Name = "lblRangoFecha";
    ((XRControl) this.lblRangoFecha).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblRangoFecha).SizeF = new SizeF(104.1667f, 23f);
    ((XRControl) this.lblRangoFecha).StylePriority.UseFont = false;
    ((XRControl) this.lblRangoFecha).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblRangoFecha).Text = "Fecha de Envío:";
    ((XRControl) this.lblRangoFecha).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.lblFecha).Font = new Font("Times New Roman", 9.75f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.lblFecha).LocationFloat = new PointFloat(114.1667f, 10.00001f);
    this.lblFecha.Multiline = true;
    ((XRControl) this.lblFecha).Name = "lblFecha";
    ((XRControl) this.lblFecha).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblFecha).SizeF = new SizeF(153.125f, 23.00001f);
    ((XRControl) this.lblFecha).StylePriority.UseFont = false;
    ((XRControl) this.lblFecha).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblFecha).Text = "01-01-2024";
    ((XRControl) this.lblFecha).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.PageFooter).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel7
    });
    ((XRControl) this.PageFooter).HeightF = 31.25f;
    ((XRControl) this.PageFooter).Name = "PageFooter";
    ((XRControl) this.xrLabel6).Font = new Font("Times New Roman", 8f, FontStyle.Bold);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(9.999998f, 10.00001f);
    this.xrLabel6.Multiline = true;
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(59.37502f, 16.75f);
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).Text = "Usuario:";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?usua")
    });
    ((XRControl) this.xrLabel7).Font = new Font("Times New Roman", 8f);
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(69.37502f, 10.00001f);
    this.xrLabel7.Multiline = true;
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(129.795f, 16.75f);
    ((XRControl) this.xrLabel7).StylePriority.UseFont = false;
    this.usua.Enabled = false;
    this.usua.Name = "usua";
    this.usua.Visible = false;
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[2]
    {
      (Band) this.Detail1,
      (Band) this.GroupHeader2
    });
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((XRControl) this.Detail1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail1).HeightF = 25f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.xrTable2).Borders = (BorderSide) 13;
    ((XRControl) this.xrTable2).Font = new Font("Verdana", 9f, FontStyle.Bold);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(778f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[6]
    {
      this.xrTableCell7,
      this.xrTableCell8,
      this.xrTableCell9,
      this.xrTableCell10,
      this.xrTableCell11,
      this.xrTableCell12
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((XRControl) this.xrTableCell7).BackColor = Color.Transparent;
    ((XRControl) this.xrTableCell7).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaEnre]")
    });
    ((XRControl) this.xrTableCell7).Font = new Font("Verdana", 9f);
    ((XRLabel) this.xrTableCell7).Multiline = true;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell7).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell7).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell7).TextAlignment = (TextAlignment) 16 /*0x10*/;
    this.xrTableCell7.Weight = 1.4857912231741084;
    ((XRControl) this.xrTableCell8).BackColor = Color.Transparent;
    ((XRControl) this.xrTableCell8).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FepaAcpa]")
    });
    ((XRControl) this.xrTableCell8).Font = new Font("Verdana", 9f);
    ((XRLabel) this.xrTableCell8).Multiline = true;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell8).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell8).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell8).TextFormatString = "{0:dd/MM/yyyy}";
    this.xrTableCell8.Weight = 0.97640596087884812;
    ((XRControl) this.xrTableCell9).BackColor = Color.Transparent;
    ((XRControl) this.xrTableCell9).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell9).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[ImpoAcpa]")
    });
    ((XRControl) this.xrTableCell9).Font = new Font("Verdana", 9f);
    ((XRLabel) this.xrTableCell9).Multiline = true;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell9).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell9).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell9).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell9).TextFormatString = "{0:C2}";
    this.xrTableCell9.Weight = 1.1957358299395282;
    ((XRControl) this.xrTableCell10).BackColor = Color.Transparent;
    ((XRControl) this.xrTableCell10).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "0")
    });
    ((XRControl) this.xrTableCell10).Font = new Font("Verdana", 9f);
    ((XRLabel) this.xrTableCell10).Multiline = true;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell10).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell10).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell10).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell10).TextFormatString = "{0:C2}";
    this.xrTableCell10.Weight = 1.3610511810427393;
    ((XRControl) this.xrTableCell11).BackColor = Color.Transparent;
    ((XRControl) this.xrTableCell11).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell11).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[ImpoAcpa]")
    });
    ((XRControl) this.xrTableCell11).Font = new Font("Verdana", 9f);
    ((XRLabel) this.xrTableCell11).Multiline = true;
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell11).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell11).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell11).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell11).TextFormatString = "{0:C2}";
    this.xrTableCell11.Weight = 1.06629401657343;
    ((XRControl) this.xrTableCell12).BackColor = Color.Transparent;
    ((XRControl) this.xrTableCell12).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell12).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[ImpoAcpa]")
    });
    ((XRControl) this.xrTableCell12).Font = new Font("Verdana", 9f);
    ((XRLabel) this.xrTableCell12).Multiline = true;
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell12).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell12).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell12).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell12).TextFormatString = "{0:C2}";
    this.xrTableCell12.Weight = 1.2529732883839024;
    ((XRControl) this.GroupHeader2).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrTable1,
      (XRControl) this.xrTable4
    });
    ((XRControl) this.GroupHeader2).HeightF = 50f;
    ((XRControl) this.GroupHeader2).Name = "GroupHeader2";
    ((XRControl) this.xrTable1).Borders = (BorderSide) 13;
    ((XRControl) this.xrTable1).Font = new Font("Verdana", 9f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 25f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(778f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 32 /*0x20*/;
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
    ((XRControl) this.xrTableCell1).BackColor = Color.LightGray;
    ((XRControl) this.xrTableCell1).Borders = (BorderSide) 15;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell1).Text = "Recaudador";
    this.xrTableCell1.Weight = 1.4857912231741084;
    ((XRControl) this.xrTableCell2).BackColor = Color.LightGray;
    ((XRControl) this.xrTableCell2).Borders = (BorderSide) 15;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell2).Text = "Fecha Cobro";
    this.xrTableCell2.Weight = 0.97640596087884812;
    ((XRControl) this.xrTableCell3).BackColor = Color.LightGray;
    ((XRControl) this.xrTableCell3).Borders = (BorderSide) 13;
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell3).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell3).Text = "Bruto";
    this.xrTableCell3.Weight = 1.1957358299395282;
    ((XRControl) this.xrTableCell4).BackColor = Color.LightGray;
    ((XRControl) this.xrTableCell4).Borders = (BorderSide) 13;
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell4).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell4).Text = "Débitos";
    this.xrTableCell4.Weight = 1.3610511810427393;
    ((XRControl) this.xrTableCell5).BackColor = Color.LightGray;
    ((XRControl) this.xrTableCell5).Borders = (BorderSide) 13;
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell5).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell5).Text = "Neto";
    this.xrTableCell5.Weight = 1.06629401657343;
    ((XRControl) this.xrTableCell6).BackColor = Color.LightGray;
    ((XRControl) this.xrTableCell6).Borders = (BorderSide) 13;
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell6).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell6).Text = "Boletos";
    this.xrTableCell6.Weight = 1.2529732883839024;
    ((XRControl) this.xrTable4).Borders = (BorderSide) 7;
    ((XRControl) this.xrTable4).Font = new Font("Verdana", 9f, FontStyle.Bold);
    ((XRControl) this.xrTable4).LocationFloat = new PointFloat(261.0418f, 0.0f);
    ((XRControl) this.xrTable4).Name = "xrTable4";
    ((XRControl) this.xrTable4).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable4.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow7
    });
    ((XRControl) this.xrTable4).SizeF = new SizeF(516.9583f, 25f);
    ((XRControl) this.xrTable4).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable4).StylePriority.UseFont = false;
    ((XRControl) this.xrTable4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable4).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow7.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell32,
      this.xrTableCell33
    });
    ((XRControl) this.xrTableRow7).Name = "xrTableRow7";
    this.xrTableRow7.Weight = 1.0;
    ((XRControl) this.xrTableCell32).BackColor = Color.LightGray;
    ((XRControl) this.xrTableCell32).Borders = (BorderSide) 7;
    ((XRLabel) this.xrTableCell32).Multiline = true;
    ((XRControl) this.xrTableCell32).Name = "xrTableCell32";
    ((XRControl) this.xrTableCell32).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell32).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell32).Text = "Contabilizado Por Banco";
    this.xrTableCell32.Weight = 3.623079595775879;
    ((XRControl) this.xrTableCell33).BackColor = Color.LightGray;
    ((XRControl) this.xrTableCell33).Borders = (BorderSide) 7;
    ((XRLabel) this.xrTableCell33).Multiline = true;
    ((XRControl) this.xrTableCell33).Name = "xrTableCell33";
    ((XRControl) this.xrTableCell33).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTableCell33).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell33).Text = "Real";
    this.xrTableCell33.Weight = 1.2529737323997594;
    this.objectDataSource1.DataSource = (object) typeof (DTOIngresoRecaExterno);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this).Bands.AddRange(new Band[7]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.ReportHeader,
      (Band) this.GroupHeader1,
      (Band) this.PageFooter,
      (Band) this.DetailReport
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(16 /*0x10*/, 16 /*0x10*/, 16 /*0x10*/, 15);
    this.Parameters.AddRange(new Parameter[1]{ this.usua });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.xrTable4).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
