// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.CobranzaPorConcepto.irepCobranzaPorConcepto
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
namespace InfoGov.Plugins.Recaudacion.Reportes.CobranzaPorConcepto;

public class irepCobranzaPorConcepto : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ReportHeaderBand ReportHeader;
  private XRLabel lblSubTit;
  private XRLabel lblTitulo;
  private XRPictureBox pibImagen;
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
  private XRTableCell xrTableCell8;
  private XRTableCell xrTableCell9;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;
  private XRTableCell xrTableCell13;
  private XRTableCell xrTableCell14;
  private XRTableCell xrTableCell15;
  private XRTableCell xrTableCell16;
  private XRTableCell xrTableCell17;
  private XRTableCell xrTableCell18;
  private Parameter FDesde;
  private Parameter FHasta;
  private Parameter Concepto;
  private XRLabel xrLabel6;
  private XRLabel xrLabel5;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private XRLabel xrLabel2;
  private XRLabel xrLabel1;

  public irepCobranzaPorConcepto()
    : base(nameof (irepCobranzaPorConcepto), "Cobranza por Concepto")
  {
    this.InitializeComponent();
    this.pibImagen.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
  }

  public DateTime FechaDesde { get; set; }

  public DateTime FechaHasta { get; set; }

  public string Conc { get; set; }

  protected override void setDataSource(Action<int, string> reportProgress)
  {
    List<DTOCobranzaPorConcepto> cobranzaPorConcepto = new ExpCobranzaPorConcepto().getCobranzaPorConcepto(this.FechaDesde, this.FechaHasta, this.Conc);
    this.FDesde.Value = (object) this.FechaDesde;
    this.FHasta.Value = (object) this.FechaHasta;
    this.Concepto.Value = (object) this.Conc;
    this.objectDataSource1.DataSource = (object) cobranzaPorConcepto;
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
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.xrTableCell13 = new XRTableCell();
    this.xrTableCell14 = new XRTableCell();
    this.xrTableCell15 = new XRTableCell();
    this.xrTableCell16 = new XRTableCell();
    this.xrTableCell17 = new XRTableCell();
    this.xrTableCell18 = new XRTableCell();
    this.ReportHeader = new ReportHeaderBand();
    this.lblSubTit = new XRLabel();
    this.lblTitulo = new XRLabel();
    this.pibImagen = new XRPictureBox();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrLabel6 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.xrLabel1 = new XRLabel();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.FDesde = new Parameter();
    this.FHasta = new Parameter();
    this.Concepto = new Parameter();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 14f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 49.95499f;
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
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(1083f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 4;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[9]
    {
      this.xrTableCell10,
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
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FechaEnvio]")
    });
    ((XRLabel) this.xrTableCell10).Multiline = true;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell10).Text = "xrTableCell1";
    ((XRControl) this.xrTableCell10).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrTableCell10).TextFormatString = "{0:dd/MM/yyyy}";
    this.xrTableCell10.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell11).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NroGrupo]")
    });
    ((XRLabel) this.xrTableCell11).Multiline = true;
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell11).Text = "xrTableCell2";
    ((XRControl) this.xrTableCell11).TextAlignment = (TextAlignment) 2;
    this.xrTableCell11.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell12).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Periodo]")
    });
    ((XRLabel) this.xrTableCell12).Multiline = true;
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell12).Text = "xrTableCell3";
    ((XRControl) this.xrTableCell12).TextAlignment = (TextAlignment) 2;
    this.xrTableCell12.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell13).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NroBoleto]")
    });
    ((XRLabel) this.xrTableCell13).Multiline = true;
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    ((XRControl) this.xrTableCell13).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell13).Text = "xrTableCell4";
    ((XRControl) this.xrTableCell13).TextAlignment = (TextAlignment) 2;
    this.xrTableCell13.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Capital]")
    });
    ((XRLabel) this.xrTableCell14).Multiline = true;
    ((XRControl) this.xrTableCell14).Name = "xrTableCell14";
    ((XRControl) this.xrTableCell14).Text = "xrTableCell5";
    ((XRControl) this.xrTableCell14).TextFormatString = "{0:$0.00}";
    this.xrTableCell14.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell15).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Recargo]")
    });
    ((XRLabel) this.xrTableCell15).Multiline = true;
    ((XRControl) this.xrTableCell15).Name = "xrTableCell15";
    ((XRControl) this.xrTableCell15).Text = "xrTableCell6";
    ((XRControl) this.xrTableCell15).TextFormatString = "{0:$0.00}";
    this.xrTableCell15.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell16).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DescRec]")
    });
    ((XRLabel) this.xrTableCell16).Multiline = true;
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    ((XRControl) this.xrTableCell16).Text = "xrTableCell7";
    ((XRControl) this.xrTableCell16).TextFormatString = "{0:$0.00}";
    this.xrTableCell16.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell17).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Interes]")
    });
    ((XRLabel) this.xrTableCell17).Multiline = true;
    ((XRControl) this.xrTableCell17).Name = "xrTableCell17";
    ((XRControl) this.xrTableCell17).Text = "xrTableCell8";
    ((XRControl) this.xrTableCell17).TextFormatString = "{0:$0.00}";
    this.xrTableCell17.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell18).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[Total]")
    });
    ((XRLabel) this.xrTableCell18).Multiline = true;
    ((XRControl) this.xrTableCell18).Name = "xrTableCell18";
    ((XRControl) this.xrTableCell18).Text = "xrTableCell9";
    ((XRControl) this.xrTableCell18).TextFormatString = "{0:$0.00}";
    this.xrTableCell18.Weight = 1.0;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.lblSubTit,
      (XRControl) this.lblTitulo,
      (XRControl) this.pibImagen
    });
    ((XRControl) this.ReportHeader).HeightF = 81.42001f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.lblSubTit).Font = new Font("Tahoma", 18f, FontStyle.Bold);
    ((XRControl) this.lblSubTit).LocationFloat = new PointFloat(348.5002f, 36.91667f);
    this.lblSubTit.Multiline = true;
    ((XRControl) this.lblSubTit).Name = "lblSubTit";
    ((XRControl) this.lblSubTit).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblSubTit).SizeF = new SizeF(513.8333f, 37.50334f);
    ((XRControl) this.lblSubTit).StylePriority.UseFont = false;
    ((XRControl) this.lblSubTit).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblSubTit).Text = "Cobranza por Concepto";
    ((XRControl) this.lblSubTit).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.lblTitulo).Font = new Font("Tahoma", 18f, FontStyle.Bold);
    ((XRControl) this.lblTitulo).LocationFloat = new PointFloat(348.5002f, 4f);
    this.lblTitulo.Multiline = true;
    ((XRControl) this.lblTitulo).Name = "lblTitulo";
    ((XRControl) this.lblTitulo).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblTitulo).SizeF = new SizeF(513.8331f, 32.91666f);
    ((XRControl) this.lblTitulo).StylePriority.UseFont = false;
    ((XRControl) this.lblTitulo).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblTitulo).Text = "MUNICIPALIDAD DE SAN MARTÍN";
    ((XRControl) this.lblTitulo).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.pibImagen).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.pibImagen).Name = "pibImagen";
    ((XRControl) this.pibImagen).SizeF = new SizeF(189.17f, 81.41999f);
    this.pibImagen.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[7]
    {
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLabel1,
      (XRControl) this.xrTable1
    });
    ((XRControl) this.GroupHeader1).HeightF = 73.91332f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?Concepto")
    });
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(589.6667f, 10f);
    this.xrLabel6.Multiline = true;
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(133.3334f, 23f);
    ((XRControl) this.xrLabel6).Text = "xrLabel6";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?FHasta")
    });
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(340.6667f, 10f);
    this.xrLabel5.Multiline = true;
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "xrLabel5";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel5).TextFormatString = "{0:dd/MM/yyyy}";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?FDesde")
    });
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(110f, 10f);
    this.xrLabel4.Multiline = true;
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel4).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.xrLabel3).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(489.6667f, 10f);
    this.xrLabel3.Multiline = true;
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "Concepto:";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel2).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(240.6667f, 10f);
    this.xrLabel2.Multiline = true;
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Fecha Hasta:";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel1).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(10.00001f, 10f);
    this.xrLabel1.Multiline = true;
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Fecha Desde:";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Arial", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 48.91332f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(1083f, 25f);
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
      this.xrTableCell6,
      this.xrTableCell7,
      this.xrTableCell8,
      this.xrTableCell9
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Fecha de Envio";
    this.xrTableCell1.Weight = 1.0;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Nro. de Grupo";
    this.xrTableCell2.Weight = 1.0;
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Período";
    this.xrTableCell3.Weight = 1.0;
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Nro. de Boleto";
    this.xrTableCell4.Weight = 1.0;
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "Capital";
    this.xrTableCell5.Weight = 1.0;
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "Recargo";
    this.xrTableCell6.Weight = 1.0;
    ((XRLabel) this.xrTableCell7).Multiline = true;
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).Text = "Desc Rec.";
    this.xrTableCell7.Weight = 1.0;
    ((XRLabel) this.xrTableCell8).Multiline = true;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).Text = "Interes";
    this.xrTableCell8.Weight = 1.0;
    ((XRLabel) this.xrTableCell9).Multiline = true;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).Text = "Total";
    this.xrTableCell9.Weight = 1.0;
    this.FDesde.Description = "FDesde";
    this.FDesde.Name = "FDesde";
    this.FDesde.Type = typeof (DateTime);
    this.FDesde.ValueInfo = "2024-08-27";
    this.FDesde.Visible = false;
    this.FHasta.Description = "FHasta";
    this.FHasta.Name = "FHasta";
    this.FHasta.Type = typeof (int);
    this.FHasta.ValueInfo = "0";
    this.FHasta.Visible = false;
    this.Concepto.Description = "Concepto";
    this.Concepto.Name = "Concepto";
    this.Concepto.Visible = false;
    this.objectDataSource1.DataSource = (object) typeof (DTOCobranzaPorConcepto);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
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
    this.Landscape = true;
    this.Margins = new Margins(40, 46, 14, 50);
    this.PageHeight = 827;
    this.PageWidth = 1169;
    this.PaperKind = PaperKind.A4;
    this.Parameters.AddRange(new Parameter[3]
    {
      this.FDesde,
      this.FHasta,
      this.Concepto
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
