// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Reportes.Personas.irepPersonaTupu
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraReports.Expressions;
using DevExpress.XtraReports.Parameters;
using DevExpress.XtraReports.UI;
using InfoGov.Core;
using InfoGov.Reports;
using InfoGov.Resources;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Infogov.Reportes.Personas;

public class irepPersonaTupu : InfoGovReport
{
  private bool retenciones = false;
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private PageHeaderBand PageHeader;
  private XRLabel xrLabel3;
  private XRPageInfo xrPageInfo1;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel33;
  private XRLabel xrLabel6;
  private XRLabel xrLabel4;
  private XRLabel xrLabel5;
  private XRLabel xrLabel11;
  private XRLabel xrLabel13;
  private XRLabel xrLabel20;
  private XRLabel xrLabel28;
  private XRLabel xrLabel26;
  private XRLabel xrLabel24;
  private XRLabel lblSexo;
  private XRLabel xrLabel12;
  private XRLabel xrLabel22;
  private XRLabel xrLabel14;
  private XRLabel xrLabel10;
  private XRLabel xrLabel9;
  private XRLabel xrLabel8;
  private XRLabel xrLabel7;
  private ObjectDataSource objectDataSource1;
  private XRLabel xrLabel17;
  private XRLabel xrLabel16;
  private XRLabel xrLabel15;
  private XRLabel xrLabel23;
  private XRLabel xrLabel21;
  private XRLabel lblSexo2;
  private XRLabel xrLabel18;
  private XRLine xrLine1;
  private XRLabel xrLabel30;
  private XRLabel xrLabel34;
  private XRLabel xrLabel37;
  private XRLabel xrLabel36;
  private XRLabel xrLabel39;
  private XRLabel xrLabel38;
  private XRLabel xrLabel41;
  private XRLabel xrLabel40;
  private XRLabel xrLabel42;
  private XRLabel xrLabel44;
  private XRLabel xrLabel47;
  private XRLabel xrLabel46;
  private XRLabel xrLabel49;
  private XRLabel xrLabel48;
  private XRLabel xrLabel53;
  private XRLabel xrLabel54;
  private XRLabel xrLabel55;
  private Parameter titulo;
  private XRLabel xrLabel1;
  private XRCheckBox xrCheckBox2;
  private XRCheckBox xrCheckBox1;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private ReportHeaderBand ReportHeader;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRLabel xrLabel2;

  public irepPersonaTupu(string juriPers, bool rete)
    : base(nameof (irepPersonaTupu), "Datos Persona")
  {
    this.InitializeComponent();
    this.fillImageBoleto();
    this.showHideLabels(juriPers);
    this.retenciones = rete;
  }

  private void fillImageBoleto()
  {
    this.pbImageBoleto.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
  }

  private void showHideLabels(string juriPers)
  {
    if (juriPers.Contains("Jurídica"))
      ((XRControl) this.lblSexo).Visible = ((XRControl) this.lblSexo2).Visible = false;
    else
      ((XRControl) this.lblSexo).Visible = ((XRControl) this.lblSexo2).Visible = true;
  }

  public void setTitulo(string titulo) => this.titulo.Value = (object) titulo;

  private void DetailReport_BeforePrint(object sender, PrintEventArgs e)
  {
    if (this.retenciones)
      ((XRControl) this.DetailReport).Visible = true;
    else
      ((XRControl) this.DetailReport).Visible = false;
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
    this.xrCheckBox2 = new XRCheckBox();
    this.xrCheckBox1 = new XRCheckBox();
    this.xrLabel30 = new XRLabel();
    this.xrLabel34 = new XRLabel();
    this.xrLabel37 = new XRLabel();
    this.xrLabel36 = new XRLabel();
    this.xrLabel39 = new XRLabel();
    this.xrLabel38 = new XRLabel();
    this.xrLabel41 = new XRLabel();
    this.xrLabel40 = new XRLabel();
    this.xrLabel42 = new XRLabel();
    this.xrLabel44 = new XRLabel();
    this.xrLabel47 = new XRLabel();
    this.xrLabel46 = new XRLabel();
    this.xrLabel49 = new XRLabel();
    this.xrLabel48 = new XRLabel();
    this.xrLabel53 = new XRLabel();
    this.xrLabel54 = new XRLabel();
    this.xrLabel55 = new XRLabel();
    this.xrLabel23 = new XRLabel();
    this.xrLabel21 = new XRLabel();
    this.lblSexo2 = new XRLabel();
    this.xrLabel18 = new XRLabel();
    this.xrLabel17 = new XRLabel();
    this.xrLabel16 = new XRLabel();
    this.xrLabel15 = new XRLabel();
    this.xrLabel14 = new XRLabel();
    this.xrLabel10 = new XRLabel();
    this.xrLabel9 = new XRLabel();
    this.xrLabel8 = new XRLabel();
    this.xrLabel7 = new XRLabel();
    this.xrLabel33 = new XRLabel();
    this.xrLabel6 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLabel11 = new XRLabel();
    this.xrLabel13 = new XRLabel();
    this.xrLabel20 = new XRLabel();
    this.xrLabel28 = new XRLabel();
    this.xrLabel26 = new XRLabel();
    this.xrLabel24 = new XRLabel();
    this.lblSexo = new XRLabel();
    this.xrLabel12 = new XRLabel();
    this.xrLabel22 = new XRLabel();
    this.PageHeader = new PageHeaderBand();
    this.xrLabel1 = new XRLabel();
    this.xrLine1 = new XRLine();
    this.xrLabel3 = new XRLabel();
    this.xrPageInfo1 = new XRPageInfo();
    this.pbImageBoleto = new XRPictureBox();
    this.titulo = new Parameter();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.ReportHeader = new ReportHeaderBand();
    this.xrLabel2 = new XRLabel();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 15f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 19.37498f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[44]
    {
      (XRControl) this.xrCheckBox2,
      (XRControl) this.xrCheckBox1,
      (XRControl) this.xrLabel30,
      (XRControl) this.xrLabel34,
      (XRControl) this.xrLabel37,
      (XRControl) this.xrLabel36,
      (XRControl) this.xrLabel39,
      (XRControl) this.xrLabel38,
      (XRControl) this.xrLabel41,
      (XRControl) this.xrLabel40,
      (XRControl) this.xrLabel42,
      (XRControl) this.xrLabel44,
      (XRControl) this.xrLabel47,
      (XRControl) this.xrLabel46,
      (XRControl) this.xrLabel49,
      (XRControl) this.xrLabel48,
      (XRControl) this.xrLabel53,
      (XRControl) this.xrLabel54,
      (XRControl) this.xrLabel55,
      (XRControl) this.xrLabel23,
      (XRControl) this.xrLabel21,
      (XRControl) this.lblSexo2,
      (XRControl) this.xrLabel18,
      (XRControl) this.xrLabel17,
      (XRControl) this.xrLabel16,
      (XRControl) this.xrLabel15,
      (XRControl) this.xrLabel14,
      (XRControl) this.xrLabel10,
      (XRControl) this.xrLabel9,
      (XRControl) this.xrLabel8,
      (XRControl) this.xrLabel7,
      (XRControl) this.xrLabel33,
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel11,
      (XRControl) this.xrLabel13,
      (XRControl) this.xrLabel20,
      (XRControl) this.xrLabel28,
      (XRControl) this.xrLabel26,
      (XRControl) this.xrLabel24,
      (XRControl) this.lblSexo,
      (XRControl) this.xrLabel12,
      (XRControl) this.xrLabel22
    });
    ((XRControl) this.Detail).HeightF = 509.5833f;
    ((XRControl) this.Detail).Name = "Detail";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrCheckBox2).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "CheckBoxState", "[EsLocador]")
    });
    ((XRControl) this.xrCheckBox2).LocationFloat = new PointFloat(445.8863f, 267.2916f);
    ((XRControl) this.xrCheckBox2).Name = "xrCheckBox2";
    ((XRControl) this.xrCheckBox2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrCheckBox2).SizeF = new SizeF(133.3333f, 23f);
    ((XRControl) this.xrCheckBox2).Text = " ¿Es Locador?";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrCheckBox1).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "CheckBoxState", "[EsProveedor]")
    });
    ((XRControl) this.xrCheckBox1).LocationFloat = new PointFloat(200.0528f, 267.2916f);
    ((XRControl) this.xrCheckBox1).Name = "xrCheckBox1";
    ((XRControl) this.xrCheckBox1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrCheckBox1).SizeF = new SizeF(133.3334f, 23f);
    ((XRControl) this.xrCheckBox1).Text = " ¿Es Proveedor?";
    ((XRControl) this.xrLabel30).Font = new Font("Verdana", 10f, FontStyle.Bold);
    ((XRControl) this.xrLabel30).LocationFloat = new PointFloat(201.875f, 340f);
    ((XRControl) this.xrLabel30).Name = "xrLabel30";
    ((XRControl) this.xrLabel30).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel30).SizeF = new SizeF(344.7917f, 23f);
    ((XRControl) this.xrLabel30).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel30).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel30).Text = "DOMICILIO";
    ((XRControl) this.xrLabel30).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel34).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel34).LocationFloat = new PointFloat(30.84455f, 377.7083f);
    ((XRControl) this.xrLabel34).Name = "xrLabel34";
    ((XRControl) this.xrLabel34).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel34).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel34).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel34).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel34).Text = "Calle:";
    ((XRControl) this.xrLabel34).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel37).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NurePers]")
    });
    ((XRControl) this.xrLabel37).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel37).LocationFloat = new PointFloat(133.3862f, 400.7083f);
    this.xrLabel37.Multiline = true;
    ((XRControl) this.xrLabel37).Name = "xrLabel37";
    ((XRControl) this.xrLabel37).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel37).SizeF = new SizeF(84.375f, 23f);
    ((XRControl) this.xrLabel37).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel37).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel37).Text = "xrLabel8";
    ((XRControl) this.xrLabel37).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel36).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel36).LocationFloat = new PointFloat(30.84458f, 400.7083f);
    ((XRControl) this.xrLabel36).Name = "xrLabel36";
    ((XRControl) this.xrLabel36).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel36).SizeF = new SizeF(102.5415f, 23f);
    ((XRControl) this.xrLabel36).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel36).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel36).Text = "N°:";
    ((XRControl) this.xrLabel36).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel39).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[MarePers]")
    });
    ((XRControl) this.xrLabel39).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel39).LocationFloat = new PointFloat(295.8862f, 400.7083f);
    this.xrLabel39.Multiline = true;
    ((XRControl) this.xrLabel39).Name = "xrLabel39";
    ((XRControl) this.xrLabel39).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel39).SizeF = new SizeF(84.375f, 23f);
    ((XRControl) this.xrLabel39).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel39).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel39).Text = "xrLabel8";
    ((XRControl) this.xrLabel39).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel38).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel38).LocationFloat = new PointFloat(217.7612f, 400.7083f);
    ((XRControl) this.xrLabel38).Name = "xrLabel38";
    ((XRControl) this.xrLabel38).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel38).SizeF = new SizeF(78.125f, 23f);
    ((XRControl) this.xrLabel38).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel38).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel38).Text = "Manzana:";
    ((XRControl) this.xrLabel38).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel41).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CarePers]")
    });
    ((XRControl) this.xrLabel41).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel41).LocationFloat = new PointFloat(458.3862f, 400.7083f);
    this.xrLabel41.Multiline = true;
    ((XRControl) this.xrLabel41).Name = "xrLabel41";
    ((XRControl) this.xrLabel41).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel41).SizeF = new SizeF(84.375f, 23f);
    ((XRControl) this.xrLabel41).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel41).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel41).Text = "xrLabel8";
    ((XRControl) this.xrLabel41).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel40).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel40).LocationFloat = new PointFloat(380.2612f, 400.7083f);
    ((XRControl) this.xrLabel40).Name = "xrLabel40";
    ((XRControl) this.xrLabel40).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel40).SizeF = new SizeF(78.125f, 23f);
    ((XRControl) this.xrLabel40).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel40).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel40).Text = "Casa:";
    ((XRControl) this.xrLabel40).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel42).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel42).LocationFloat = new PointFloat(30.84458f, 423.7082f);
    ((XRControl) this.xrLabel42).Name = "xrLabel42";
    ((XRControl) this.xrLabel42).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel42).SizeF = new SizeF(102.5415f, 23f);
    ((XRControl) this.xrLabel42).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel42).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel42).Text = "Barrio:";
    ((XRControl) this.xrLabel42).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel44).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel44).LocationFloat = new PointFloat(30.84458f, 446.7083f);
    ((XRControl) this.xrLabel44).Name = "xrLabel44";
    ((XRControl) this.xrLabel44).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel44).SizeF = new SizeF(102.5415f, 23f);
    ((XRControl) this.xrLabel44).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel44).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel44).Text = "Localidad:";
    ((XRControl) this.xrLabel44).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel47).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CoprPers]")
    });
    ((XRControl) this.xrLabel47).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel47).LocationFloat = new PointFloat(579.2197f, 446.7083f);
    this.xrLabel47.Multiline = true;
    ((XRControl) this.xrLabel47).Name = "xrLabel47";
    ((XRControl) this.xrLabel47).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel47).SizeF = new SizeF(128.9055f, 23f);
    ((XRControl) this.xrLabel47).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel47).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel47).Text = "xrLabel8";
    ((XRControl) this.xrLabel47).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel46).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel46).LocationFloat = new PointFloat(542.7613f, 446.7083f);
    ((XRControl) this.xrLabel46).Name = "xrLabel46";
    ((XRControl) this.xrLabel46).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel46).SizeF = new SizeF(36.45834f, 23f);
    ((XRControl) this.xrLabel46).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel46).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel46).Text = "C.P.:";
    ((XRControl) this.xrLabel46).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel49).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[UbrePers]")
    });
    ((XRControl) this.xrLabel49).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel49).LocationFloat = new PointFloat(133.6779f, 469.7083f);
    this.xrLabel49.Multiline = true;
    ((XRControl) this.xrLabel49).Name = "xrLabel49";
    ((XRControl) this.xrLabel49).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel49).SizeF = new SizeF(574.4473f, 23f);
    ((XRControl) this.xrLabel49).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel49).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel49).Text = "xrLabel8";
    ((XRControl) this.xrLabel49).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel48).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel48).LocationFloat = new PointFloat(30.84458f, 469.7083f);
    ((XRControl) this.xrLabel48).Name = "xrLabel48";
    ((XRControl) this.xrLabel48).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel48).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel48).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel48).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel48).Text = "Ubicación:";
    ((XRControl) this.xrLabel48).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel53).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DecrPers]")
    });
    ((XRControl) this.xrLabel53).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel53).LocationFloat = new PointFloat(133.6779f, 377.7083f);
    this.xrLabel53.Multiline = true;
    ((XRControl) this.xrLabel53).Name = "xrLabel53";
    ((XRControl) this.xrLabel53).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel53).SizeF = new SizeF(574.4474f, 22.99997f);
    ((XRControl) this.xrLabel53).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel53).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel53).Text = "xrLabel8";
    ((XRControl) this.xrLabel53).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel54).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DebrPers]")
    });
    ((XRControl) this.xrLabel54).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel54).LocationFloat = new PointFloat(133.386f, 423.7082f);
    this.xrLabel54.Multiline = true;
    ((XRControl) this.xrLabel54).Name = "xrLabel54";
    ((XRControl) this.xrLabel54).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel54).SizeF = new SizeF(409.3752f, 23f);
    ((XRControl) this.xrLabel54).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel54).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel54).Text = "xrLabel8";
    ((XRControl) this.xrLabel54).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel55).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DelrPers]")
    });
    ((XRControl) this.xrLabel55).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel55).LocationFloat = new PointFloat(133.386f, 446.7083f);
    this.xrLabel55.Multiline = true;
    ((XRControl) this.xrLabel55).Name = "xrLabel55";
    ((XRControl) this.xrLabel55).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel55).SizeF = new SizeF(409.3752f, 23f);
    ((XRControl) this.xrLabel55).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel55).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel55).Text = "xrLabel8";
    ((XRControl) this.xrLabel55).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel23).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaTido]")
    });
    ((XRControl) this.xrLabel23).LocationFloat = new PointFloat(133.3862f, 162.5f);
    this.xrLabel23.Multiline = true;
    ((XRControl) this.xrLabel23).Name = "xrLabel23";
    ((XRControl) this.xrLabel23).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel23).SizeF = new SizeF(200f, 23f);
    ((XRControl) this.xrLabel23).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel23).Text = "xrLabel23";
    ((XRControl) this.xrLabel23).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel21).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TelePers]")
    });
    ((XRControl) this.xrLabel21).LocationFloat = new PointFloat(432.3445f, 116.5001f);
    this.xrLabel21.Multiline = true;
    ((XRControl) this.xrLabel21).Name = "xrLabel21";
    ((XRControl) this.xrLabel21).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel21).SizeF = new SizeF(288.5416f, 22.99998f);
    ((XRControl) this.xrLabel21).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel21).Text = "xrLabel21";
    ((XRControl) this.xrLabel21).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.lblSexo2).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[SexoPers]")
    });
    ((XRControl) this.lblSexo2).LocationFloat = new PointFloat(432.3445f, 93.50001f);
    this.lblSexo2.Multiline = true;
    ((XRControl) this.lblSexo2).Name = "lblSexo2";
    ((XRControl) this.lblSexo2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblSexo2).SizeF = new SizeF(288.5416f, 23f);
    ((XRControl) this.lblSexo2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblSexo2).Text = "lblSexo2";
    ((XRControl) this.lblSexo2).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel18).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaEsci]")
    });
    ((XRControl) this.xrLabel18).LocationFloat = new PointFloat(133.3862f, 208.5001f);
    this.xrLabel18.Multiline = true;
    ((XRControl) this.xrLabel18).Name = "xrLabel18";
    ((XRControl) this.xrLabel18).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel18).SizeF = new SizeF(262.4999f, 23f);
    ((XRControl) this.xrLabel18).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel18).Text = "xrLabel18";
    ((XRControl) this.xrLabel18).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel17).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaPofi]")
    });
    ((XRControl) this.xrLabel17).LocationFloat = new PointFloat(133.3862f, 231.5001f);
    this.xrLabel17.Multiline = true;
    ((XRControl) this.xrLabel17).Name = "xrLabel17";
    ((XRControl) this.xrLabel17).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel17).SizeF = new SizeF(262.4999f, 23f);
    ((XRControl) this.xrLabel17).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel17).Text = "xrLabel17";
    ((XRControl) this.xrLabel17).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel16).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FenaPers]")
    });
    ((XRControl) this.xrLabel16).LocationFloat = new PointFloat(133.3862f, 185.5001f);
    this.xrLabel16.Multiline = true;
    ((XRControl) this.xrLabel16).Name = "xrLabel16";
    ((XRControl) this.xrLabel16).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel16).SizeF = new SizeF(262.4999f, 23f);
    ((XRControl) this.xrLabel16).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel16).Text = "xrLabel16";
    ((XRControl) this.xrLabel16).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel16).TextFormatString = "{0:d}";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel15).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NudoPers]")
    });
    ((XRControl) this.xrLabel15).LocationFloat = new PointFloat(432.3445f, 162.5f);
    this.xrLabel15.Multiline = true;
    ((XRControl) this.xrLabel15).Name = "xrLabel15";
    ((XRControl) this.xrLabel15).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel15).SizeF = new SizeF(288.5416f, 23f);
    ((XRControl) this.xrLabel15).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel15).Text = "xrLabel15";
    ((XRControl) this.xrLabel15).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[MailPers]")
    });
    ((XRControl) this.xrLabel14).LocationFloat = new PointFloat(133.3862f, 139.5f);
    this.xrLabel14.Multiline = true;
    ((XRControl) this.xrLabel14).Name = "xrLabel14";
    ((XRControl) this.xrLabel14).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel14).SizeF = new SizeF(398.9583f, 23f);
    ((XRControl) this.xrLabel14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel14).Text = "xrLabel14";
    ((XRControl) this.xrLabel14).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TelePers]")
    });
    ((XRControl) this.xrLabel10).LocationFloat = new PointFloat(133.3862f, 116.5f);
    this.xrLabel10.Multiline = true;
    ((XRControl) this.xrLabel10).Name = "xrLabel10";
    ((XRControl) this.xrLabel10).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel10).SizeF = new SizeF(200f, 23f);
    ((XRControl) this.xrLabel10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel10).Text = "xrLabel10";
    ((XRControl) this.xrLabel10).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel9).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[JuriPers]")
    });
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(133.3862f, 93.50005f);
    this.xrLabel9.Multiline = true;
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(200f, 23f);
    ((XRControl) this.xrLabel9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel9).Text = "xrLabel9";
    ((XRControl) this.xrLabel9).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaPers]")
    });
    ((XRControl) this.xrLabel8).LocationFloat = new PointFloat(133.3862f, 70.49999f);
    this.xrLabel8.Multiline = true;
    ((XRControl) this.xrLabel8).Name = "xrLabel8";
    ((XRControl) this.xrLabel8).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel8).SizeF = new SizeF(398.9583f, 23f);
    ((XRControl) this.xrLabel8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel8).Text = "xrLabel8";
    ((XRControl) this.xrLabel8).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CucuPers]")
    });
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(133.3862f, 47.50001f);
    this.xrLabel7.Multiline = true;
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(398.9583f, 23f);
    ((XRControl) this.xrLabel7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel7).Text = "xrLabel7";
    ((XRControl) this.xrLabel7).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel33).Font = new Font("Verdana", 10f, FontStyle.Bold);
    ((XRControl) this.xrLabel33).LocationFloat = new PointFloat(201.875f, 10.00001f);
    ((XRControl) this.xrLabel33).Name = "xrLabel33";
    ((XRControl) this.xrLabel33).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel33).SizeF = new SizeF(344.7917f, 23f);
    ((XRControl) this.xrLabel33).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel33).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel33).Text = "DATOS DE LA PERSONA";
    ((XRControl) this.xrLabel33).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel6).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(30.55289f, 47.50001f);
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "CUIL / CUIT:";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel4).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(30.84458f, 70.50002f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(102.5416f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "Nombre:";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel5).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(30.55289f, 93.50001f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "Tipo Persona:";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel11).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel11).LocationFloat = new PointFloat(30.55289f, 116.5f);
    ((XRControl) this.xrLabel11).Name = "xrLabel11";
    ((XRControl) this.xrLabel11).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel11).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel11).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel11).Text = "Tel. Fijo:";
    ((XRControl) this.xrLabel11).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel13).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel13).LocationFloat = new PointFloat(30.55289f, 139.5f);
    ((XRControl) this.xrLabel13).Name = "xrLabel13";
    ((XRControl) this.xrLabel13).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel13).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel13).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel13).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel13).Text = "Email:";
    ((XRControl) this.xrLabel13).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel20).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel20).LocationFloat = new PointFloat(30.55289f, 162.5f);
    ((XRControl) this.xrLabel20).Name = "xrLabel20";
    ((XRControl) this.xrLabel20).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel20).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel20).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel20).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel20).Text = "Documento:";
    ((XRControl) this.xrLabel20).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel28).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel28).LocationFloat = new PointFloat(30.55289f, 231.5001f);
    ((XRControl) this.xrLabel28).Name = "xrLabel28";
    ((XRControl) this.xrLabel28).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel28).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel28).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel28).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel28).Text = "Pos. Fiscal:";
    ((XRControl) this.xrLabel28).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel26).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel26).LocationFloat = new PointFloat(30.55289f, 208.5001f);
    ((XRControl) this.xrLabel26).Name = "xrLabel26";
    ((XRControl) this.xrLabel26).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel26).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel26).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel26).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel26).Text = "Estado Civil:";
    ((XRControl) this.xrLabel26).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel24).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel24).LocationFloat = new PointFloat(30.55289f, 185.5001f);
    ((XRControl) this.xrLabel24).Name = "xrLabel24";
    ((XRControl) this.xrLabel24).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel24).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel24).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel24).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel24).Text = "Fecha Nac.:";
    ((XRControl) this.xrLabel24).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.lblSexo).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.lblSexo).LocationFloat = new PointFloat(333.3862f, 93.50005f);
    ((XRControl) this.lblSexo).Name = "lblSexo";
    ((XRControl) this.lblSexo).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblSexo).SizeF = new SizeF(98.95828f, 23f);
    ((XRControl) this.lblSexo).StylePriority.UseFont = false;
    ((XRControl) this.lblSexo).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblSexo).Text = "Sexo:";
    ((XRControl) this.lblSexo).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel12).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel12).LocationFloat = new PointFloat(333.3862f, 116.5f);
    ((XRControl) this.xrLabel12).Name = "xrLabel12";
    ((XRControl) this.xrLabel12).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel12).SizeF = new SizeF(98.95828f, 23f);
    ((XRControl) this.xrLabel12).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel12).Text = "Tel. Celular:";
    ((XRControl) this.xrLabel12).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel22).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel22).LocationFloat = new PointFloat(333.3862f, 162.5f);
    ((XRControl) this.xrLabel22).Name = "xrLabel22";
    ((XRControl) this.xrLabel22).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel22).SizeF = new SizeF(36.45834f, 23f);
    ((XRControl) this.xrLabel22).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel22).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel22).Text = "N°:";
    ((XRControl) this.xrLabel22).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[5]
    {
      (XRControl) this.xrLabel1,
      (XRControl) this.xrLine1,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrPageInfo1,
      (XRControl) this.pbImageBoleto
    });
    ((Band) this.PageHeader).Expanded = false;
    ((XRControl) this.PageHeader).HeightF = 107.2917f;
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel1).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?titulo")
    });
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 14.25f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(217.7612f, 10.00001f);
    this.xrLabel1.Multiline = true;
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(344.79f, 23f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "xrLabel1";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(9.999998f, 84.29168f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(757.2916f, 23f);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(610.5834f, 10.00001f);
    this.xrLabel3.Multiline = true;
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(71.875f, 23f);
    ((XRControl) this.xrLabel3).Text = "Emitido el:";
    ((XRControl) this.xrPageInfo1).LocationFloat = new PointFloat(682.4584f, 10.00001f);
    ((XRControl) this.xrPageInfo1).Name = "xrPageInfo1";
    ((XRControl) this.xrPageInfo1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    this.xrPageInfo1.PageInfo = (PageInfo) 16 /*0x10*/;
    ((XRControl) this.xrPageInfo1).SizeF = new SizeF(84.83325f, 23f);
    ((XRControl) this.xrPageInfo1).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(180f, 75f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    this.titulo.Description = "Titulo";
    this.titulo.Enabled = false;
    this.titulo.Name = "titulo";
    this.titulo.Visible = false;
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[2]
    {
      (Band) this.Detail1,
      (Band) this.ReportHeader
    });
    ((XRControl) this.DetailReport).Borders = (BorderSide) 15;
    ((XtraReportBase) this.DetailReport).DataMember = "retenciones";
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((XRControl) this.DetailReport).BeforePrint += new PrintEventHandler(this.DetailReport_BeforePrint);
    ((XRControl) this.Detail1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail1).HeightF = 38.12497f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(30.55289f, 9.999974f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(690.3332f, 25f);
    ((XRControl) this.xrTableRow2).BackColor = Color.LightGray;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell4,
      this.xrTableCell5,
      this.xrTableCell6
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    ((XRControl) this.xrTableRow2).StylePriority.UseBackColor = false;
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell4).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaRete]")
    });
    ((XRControl) this.xrTableCell4).Font = new Font("Verdana", 9f);
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell4).Text = "xrTableCell4";
    this.xrTableCell4.Weight = 0.75555308782106123;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell5).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaDere]")
    });
    ((XRControl) this.xrTableCell5).Font = new Font("Verdana", 9f);
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell5).Text = "xrTableCell5";
    this.xrTableCell5.Weight = 1.765101496239883;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell6).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NuinRexp]")
    });
    ((XRControl) this.xrTableCell6).Font = new Font("Verdana", 9f);
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell6).Text = "xrTableCell6";
    this.xrTableCell6.Weight = 0.47934541593905577;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrLabel2,
      (XRControl) this.xrTable1
    });
    ((XRControl) this.ReportHeader).HeightF = 74.5834f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrLabel2).Borders = (BorderSide) 0;
    ((XRControl) this.xrLabel2).Font = new Font("Verdana", 10f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(201.875f, 10.00001f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(344.7917f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "RETENCIONES";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrTable1).BackColor = Color.Silver;
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(30.55289f, 49.5834f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(690.3332f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBackColor = false;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCell1).Font = new Font("Verdana", 9f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell1).Text = "Concepto ";
    this.xrTableCell1.Weight = 0.75555308782106123;
    ((XRControl) this.xrTableCell2).Font = new Font("Verdana", 9f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell2).Text = "Detalle";
    this.xrTableCell2.Weight = 1.765101496239883;
    ((XRControl) this.xrTableCell3).Font = new Font("Verdana", 9f, FontStyle.Bold);
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell3).Text = "Inscripcion";
    this.xrTableCell3.Weight = 0.47934541593905577;
    this.objectDataSource1.DataSource = (object) typeof (DTOPersonaTupu);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this).Bands.AddRange(new Band[5]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.PageHeader,
      (Band) this.DetailReport
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(23, 27, 15, 19);
    this.Parameters.AddRange(new Parameter[1]{ this.titulo });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
