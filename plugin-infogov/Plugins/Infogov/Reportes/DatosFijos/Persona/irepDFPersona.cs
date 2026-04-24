// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Reportes.DatosFijos.Persona.irepDFPersona
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
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Reports;
using InfoGov.Resources;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Infogov.Reportes.DatosFijos.Persona;

public class irepDFPersona : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ObjectDataSource objectDataSource1;
  private PageHeaderBand PageHeader;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel1;
  private XRLabel xrLabel2;
  private XRLabel xrLabel3;
  private XRPageInfo xrPageInfo1;
  private XRLine xrLine1;
  private PageFooterBand PageFooter;
  private XRLabel xrLabel7;
  private XRLabel xrLabel8;
  private XRLabel xrLabel4;
  private Parameter usua;
  private XRLabel xrLabel5;
  private XRLabel lblSexo;
  private XRLabel xrLabel6;
  private XRLabel xrLabel9;
  private XRLabel xrLabel14;
  private XRLabel xrLabel11;
  private XRLabel xrLabel12;
  private XRLabel xrLabel13;
  private XRLabel xrLabel18;
  private XRLabel xrLabel17;
  private XRLabel lblSexo2;
  private XRLabel xrLabel15;
  private XRLabel xrLabel20;
  private XRLabel xrLabel19;
  private XRLabel xrLabel22;
  private XRLabel xrLabel23;
  private XRLabel xrLabel25;
  private XRLabel xrLabel24;
  private XRLabel xrLabel26;
  private XRLabel xrLabel28;
  private XRLabel xrLabel30;
  private XRLabel xrLabel31;
  private XRLabel xrLabel32;
  private XRLabel xrLabel34;
  private XRLabel xrLabel33;
  private XRLabel xrLabel36;
  private XRLabel xrLabel37;
  private XRLabel xrLabel42;
  private XRLabel xrLabel40;
  private XRLabel xrLabel41;
  private XRLabel xrLabel38;
  private XRLabel xrLabel39;
  private XRLabel xrLabel46;
  private XRLabel xrLabel47;
  private XRLabel xrLabel44;
  private XRLabel xrLabel48;
  private XRLabel xrLabel49;
  private XRLabel xrLabel50;
  private XRLabel xrLabel51;
  private XRLabel xrLabel10;
  private XRLabel xrLabel27;
  private XRLabel xrLabel29;
  private XRLabel xrLabel53;
  private XRLabel xrLabel55;
  private XRLabel xrLabel54;

  internal long CucuPers { get; set; }

  public irepDFPersona()
    : base(nameof (irepDFPersona), "Datos Fijos Persona")
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
    DTOPersona dtoPersona = new ExpPersona().ObtenerDFPersona(this.CucuPers);
    this.usua.Value = (object) Misc.Usuario;
    if (dtoPersona.JuriPers.Contains("Jurídica"))
      ((XRControl) this.lblSexo).Visible = ((XRControl) this.lblSexo2).Visible = false;
    else
      ((XRControl) this.lblSexo).Visible = ((XRControl) this.lblSexo2).Visible = true;
    this.objectDataSource1.DataSource = (object) dtoPersona;
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
    this.xrLabel50 = new XRLabel();
    this.xrLabel51 = new XRLabel();
    this.xrLabel48 = new XRLabel();
    this.xrLabel49 = new XRLabel();
    this.xrLabel46 = new XRLabel();
    this.xrLabel47 = new XRLabel();
    this.xrLabel44 = new XRLabel();
    this.xrLabel42 = new XRLabel();
    this.xrLabel40 = new XRLabel();
    this.xrLabel41 = new XRLabel();
    this.xrLabel38 = new XRLabel();
    this.xrLabel39 = new XRLabel();
    this.xrLabel36 = new XRLabel();
    this.xrLabel37 = new XRLabel();
    this.xrLabel34 = new XRLabel();
    this.xrLabel33 = new XRLabel();
    this.xrLabel31 = new XRLabel();
    this.xrLabel32 = new XRLabel();
    this.xrLabel30 = new XRLabel();
    this.xrLabel28 = new XRLabel();
    this.xrLabel26 = new XRLabel();
    this.xrLabel25 = new XRLabel();
    this.xrLabel24 = new XRLabel();
    this.xrLabel23 = new XRLabel();
    this.xrLabel22 = new XRLabel();
    this.xrLabel20 = new XRLabel();
    this.xrLabel19 = new XRLabel();
    this.xrLabel18 = new XRLabel();
    this.xrLabel17 = new XRLabel();
    this.lblSexo2 = new XRLabel();
    this.xrLabel15 = new XRLabel();
    this.xrLabel14 = new XRLabel();
    this.xrLabel11 = new XRLabel();
    this.xrLabel12 = new XRLabel();
    this.xrLabel13 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.lblSexo = new XRLabel();
    this.xrLabel6 = new XRLabel();
    this.xrLabel9 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.PageHeader = new PageHeaderBand();
    this.xrLine1 = new XRLine();
    this.pbImageBoleto = new XRPictureBox();
    this.xrLabel1 = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrPageInfo1 = new XRPageInfo();
    this.PageFooter = new PageFooterBand();
    this.xrLabel7 = new XRLabel();
    this.xrLabel8 = new XRLabel();
    this.usua = new Parameter();
    this.xrLabel10 = new XRLabel();
    this.xrLabel27 = new XRLabel();
    this.xrLabel29 = new XRLabel();
    this.xrLabel53 = new XRLabel();
    this.xrLabel54 = new XRLabel();
    this.xrLabel55 = new XRLabel();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 10f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 9f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[46]
    {
      (XRControl) this.xrLabel55,
      (XRControl) this.xrLabel54,
      (XRControl) this.xrLabel53,
      (XRControl) this.xrLabel29,
      (XRControl) this.xrLabel27,
      (XRControl) this.xrLabel10,
      (XRControl) this.xrLabel50,
      (XRControl) this.xrLabel51,
      (XRControl) this.xrLabel48,
      (XRControl) this.xrLabel49,
      (XRControl) this.xrLabel46,
      (XRControl) this.xrLabel47,
      (XRControl) this.xrLabel44,
      (XRControl) this.xrLabel42,
      (XRControl) this.xrLabel40,
      (XRControl) this.xrLabel41,
      (XRControl) this.xrLabel38,
      (XRControl) this.xrLabel39,
      (XRControl) this.xrLabel36,
      (XRControl) this.xrLabel37,
      (XRControl) this.xrLabel34,
      (XRControl) this.xrLabel33,
      (XRControl) this.xrLabel31,
      (XRControl) this.xrLabel32,
      (XRControl) this.xrLabel30,
      (XRControl) this.xrLabel28,
      (XRControl) this.xrLabel26,
      (XRControl) this.xrLabel25,
      (XRControl) this.xrLabel24,
      (XRControl) this.xrLabel23,
      (XRControl) this.xrLabel22,
      (XRControl) this.xrLabel20,
      (XRControl) this.xrLabel19,
      (XRControl) this.xrLabel18,
      (XRControl) this.xrLabel17,
      (XRControl) this.lblSexo2,
      (XRControl) this.xrLabel15,
      (XRControl) this.xrLabel14,
      (XRControl) this.xrLabel11,
      (XRControl) this.xrLabel12,
      (XRControl) this.xrLabel13,
      (XRControl) this.xrLabel5,
      (XRControl) this.lblSexo,
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel9,
      (XRControl) this.xrLabel4
    });
    ((XRControl) this.Detail).HeightF = 523.1249f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.xrLabel50).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel50).LocationFloat = new PointFloat(30.55275f, 500.1248f);
    ((XRControl) this.xrLabel50).Name = "xrLabel50";
    ((XRControl) this.xrLabel50).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel50).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel50).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel50).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel50).Text = "Observación:";
    ((XRControl) this.xrLabel50).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel51).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[ObsePers]")
    });
    ((XRControl) this.xrLabel51).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel51).LocationFloat = new PointFloat(133.3861f, 500.1248f);
    this.xrLabel51.Multiline = true;
    ((XRControl) this.xrLabel51).Name = "xrLabel51";
    ((XRControl) this.xrLabel51).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel51).SizeF = new SizeF(574.4473f, 23f);
    ((XRControl) this.xrLabel51).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel51).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel51).Text = "xrLabel8";
    ((XRControl) this.xrLabel51).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel48).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel48).LocationFloat = new PointFloat(30.84459f, 432.8333f);
    ((XRControl) this.xrLabel48).Name = "xrLabel48";
    ((XRControl) this.xrLabel48).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel48).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel48).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel48).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel48).Text = "Ubicación:";
    ((XRControl) this.xrLabel48).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel49).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[UbrePers]")
    });
    ((XRControl) this.xrLabel49).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel49).LocationFloat = new PointFloat(133.6779f, 432.8333f);
    this.xrLabel49.Multiline = true;
    ((XRControl) this.xrLabel49).Name = "xrLabel49";
    ((XRControl) this.xrLabel49).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel49).SizeF = new SizeF(574.4473f, 23f);
    ((XRControl) this.xrLabel49).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel49).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel49).Text = "xrLabel8";
    ((XRControl) this.xrLabel49).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel46).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel46).LocationFloat = new PointFloat(542.7613f, 409.8333f);
    ((XRControl) this.xrLabel46).Name = "xrLabel46";
    ((XRControl) this.xrLabel46).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel46).SizeF = new SizeF(36.45834f, 23f);
    ((XRControl) this.xrLabel46).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel46).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel46).Text = "C.P.:";
    ((XRControl) this.xrLabel46).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel47).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CoprPers]")
    });
    ((XRControl) this.xrLabel47).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel47).LocationFloat = new PointFloat(579.2197f, 409.8333f);
    this.xrLabel47.Multiline = true;
    ((XRControl) this.xrLabel47).Name = "xrLabel47";
    ((XRControl) this.xrLabel47).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel47).SizeF = new SizeF(128.9055f, 23f);
    ((XRControl) this.xrLabel47).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel47).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel47).Text = "xrLabel8";
    ((XRControl) this.xrLabel47).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel44).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel44).LocationFloat = new PointFloat(30.84459f, 409.8333f);
    ((XRControl) this.xrLabel44).Name = "xrLabel44";
    ((XRControl) this.xrLabel44).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel44).SizeF = new SizeF(102.5415f, 23f);
    ((XRControl) this.xrLabel44).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel44).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel44).Text = "Localidad:";
    ((XRControl) this.xrLabel44).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel42).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel42).LocationFloat = new PointFloat(30.84459f, 386.8333f);
    ((XRControl) this.xrLabel42).Name = "xrLabel42";
    ((XRControl) this.xrLabel42).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel42).SizeF = new SizeF(102.5415f, 23f);
    ((XRControl) this.xrLabel42).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel42).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel42).Text = "Barrio:";
    ((XRControl) this.xrLabel42).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel40).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel40).LocationFloat = new PointFloat(380.2612f, 363.8333f);
    ((XRControl) this.xrLabel40).Name = "xrLabel40";
    ((XRControl) this.xrLabel40).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel40).SizeF = new SizeF(78.125f, 23f);
    ((XRControl) this.xrLabel40).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel40).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel40).Text = "Casa:";
    ((XRControl) this.xrLabel40).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel41).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CarePers]")
    });
    ((XRControl) this.xrLabel41).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel41).LocationFloat = new PointFloat(458.3862f, 363.8333f);
    this.xrLabel41.Multiline = true;
    ((XRControl) this.xrLabel41).Name = "xrLabel41";
    ((XRControl) this.xrLabel41).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel41).SizeF = new SizeF(84.375f, 23f);
    ((XRControl) this.xrLabel41).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel41).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel41).Text = "xrLabel8";
    ((XRControl) this.xrLabel41).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel38).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel38).LocationFloat = new PointFloat(217.7612f, 363.8333f);
    ((XRControl) this.xrLabel38).Name = "xrLabel38";
    ((XRControl) this.xrLabel38).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel38).SizeF = new SizeF(78.125f, 23f);
    ((XRControl) this.xrLabel38).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel38).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel38).Text = "Manzana:";
    ((XRControl) this.xrLabel38).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel39).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[MarePers]")
    });
    ((XRControl) this.xrLabel39).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel39).LocationFloat = new PointFloat(295.8862f, 363.8333f);
    this.xrLabel39.Multiline = true;
    ((XRControl) this.xrLabel39).Name = "xrLabel39";
    ((XRControl) this.xrLabel39).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel39).SizeF = new SizeF(84.375f, 23f);
    ((XRControl) this.xrLabel39).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel39).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel39).Text = "xrLabel8";
    ((XRControl) this.xrLabel39).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel36).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel36).LocationFloat = new PointFloat(96.92773f, 363.8333f);
    ((XRControl) this.xrLabel36).Name = "xrLabel36";
    ((XRControl) this.xrLabel36).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel36).SizeF = new SizeF(36.45834f, 23f);
    ((XRControl) this.xrLabel36).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel36).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel36).Text = "N°:";
    ((XRControl) this.xrLabel36).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel37).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NurePers]")
    });
    ((XRControl) this.xrLabel37).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel37).LocationFloat = new PointFloat(133.3862f, 363.8333f);
    this.xrLabel37.Multiline = true;
    ((XRControl) this.xrLabel37).Name = "xrLabel37";
    ((XRControl) this.xrLabel37).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel37).SizeF = new SizeF(84.375f, 23f);
    ((XRControl) this.xrLabel37).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel37).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel37).Text = "xrLabel8";
    ((XRControl) this.xrLabel37).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel34).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel34).LocationFloat = new PointFloat(30.84454f, 340.8334f);
    ((XRControl) this.xrLabel34).Name = "xrLabel34";
    ((XRControl) this.xrLabel34).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel34).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel34).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel34).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel34).Text = "Calle:";
    ((XRControl) this.xrLabel34).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel33).Font = new Font("Verdana", 10f, FontStyle.Bold);
    ((XRControl) this.xrLabel33).LocationFloat = new PointFloat(201.875f, 10.00001f);
    ((XRControl) this.xrLabel33).Name = "xrLabel33";
    ((XRControl) this.xrLabel33).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel33).SizeF = new SizeF(344.7917f, 23f);
    ((XRControl) this.xrLabel33).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel33).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel33).Text = "DATOS DE LA PERSONA";
    ((XRControl) this.xrLabel33).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel31).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel31).LocationFloat = new PointFloat(9.999998f, 254.5002f);
    ((XRControl) this.xrLabel31).Name = "xrLabel31";
    ((XRControl) this.xrLabel31).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel31).SizeF = new SizeF(123.6779f, 23f);
    ((XRControl) this.xrLabel31).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel31).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel31).Text = "Fec. Validación:";
    ((XRControl) this.xrLabel31).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel32).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FevaPersStr]")
    });
    ((XRControl) this.xrLabel32).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel32).LocationFloat = new PointFloat(133.6779f, 254.5f);
    this.xrLabel32.Multiline = true;
    ((XRControl) this.xrLabel32).Name = "xrLabel32";
    ((XRControl) this.xrLabel32).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel32).SizeF = new SizeF(298.9583f, 23f);
    ((XRControl) this.xrLabel32).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel32).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel32).Text = "xrLabel8";
    ((XRControl) this.xrLabel32).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel30).Font = new Font("Verdana", 10f, FontStyle.Bold);
    ((XRControl) this.xrLabel30).LocationFloat = new PointFloat(201.875f, 303.125f);
    ((XRControl) this.xrLabel30).Name = "xrLabel30";
    ((XRControl) this.xrLabel30).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel30).SizeF = new SizeF(344.7917f, 23f);
    ((XRControl) this.xrLabel30).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel30).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel30).Text = "DOMICILIO";
    ((XRControl) this.xrLabel30).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrLabel28).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel28).LocationFloat = new PointFloat(30.55289f, 231.5001f);
    ((XRControl) this.xrLabel28).Name = "xrLabel28";
    ((XRControl) this.xrLabel28).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel28).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel28).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel28).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel28).Text = "Pos. Fiscal:";
    ((XRControl) this.xrLabel28).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel26).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel26).LocationFloat = new PointFloat(30.55289f, 208.5001f);
    ((XRControl) this.xrLabel26).Name = "xrLabel26";
    ((XRControl) this.xrLabel26).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel26).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel26).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel26).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel26).Text = "Estado Civil:";
    ((XRControl) this.xrLabel26).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel25).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FenaPersStr]")
    });
    ((XRControl) this.xrLabel25).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel25).LocationFloat = new PointFloat(133.3862f, 185.5f);
    this.xrLabel25.Multiline = true;
    ((XRControl) this.xrLabel25).Name = "xrLabel25";
    ((XRControl) this.xrLabel25).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel25).SizeF = new SizeF(298.9583f, 23f);
    ((XRControl) this.xrLabel25).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel25).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel25).Text = "xrLabel8";
    ((XRControl) this.xrLabel25).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel24).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel24).LocationFloat = new PointFloat(30.55289f, 185.5001f);
    ((XRControl) this.xrLabel24).Name = "xrLabel24";
    ((XRControl) this.xrLabel24).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel24).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel24).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel24).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel24).Text = "Fecha Nac.:";
    ((XRControl) this.xrLabel24).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel23).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NudoPers]")
    });
    ((XRControl) this.xrLabel23).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel23).LocationFloat = new PointFloat(527.9169f, 162.5f);
    this.xrLabel23.Multiline = true;
    ((XRControl) this.xrLabel23).Name = "xrLabel23";
    ((XRControl) this.xrLabel23).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel23).SizeF = new SizeF(180.2083f, 22.99999f);
    ((XRControl) this.xrLabel23).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel23).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel23).Text = "xrLabel8";
    ((XRControl) this.xrLabel23).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel22).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel22).LocationFloat = new PointFloat(491.4585f, 162.5f);
    ((XRControl) this.xrLabel22).Name = "xrLabel22";
    ((XRControl) this.xrLabel22).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel22).SizeF = new SizeF(36.45834f, 23f);
    ((XRControl) this.xrLabel22).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel22).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel22).Text = "N°:";
    ((XRControl) this.xrLabel22).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel20).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel20).LocationFloat = new PointFloat(30.55289f, 162.5f);
    ((XRControl) this.xrLabel20).Name = "xrLabel20";
    ((XRControl) this.xrLabel20).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel20).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel20).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel20).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel20).Text = "Documento:";
    ((XRControl) this.xrLabel20).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel19).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[MailPers]")
    });
    ((XRControl) this.xrLabel19).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel19).LocationFloat = new PointFloat(133.3862f, 139.5001f);
    this.xrLabel19.Multiline = true;
    ((XRControl) this.xrLabel19).Name = "xrLabel19";
    ((XRControl) this.xrLabel19).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel19).SizeF = new SizeF(298.9583f, 23f);
    ((XRControl) this.xrLabel19).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel19).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel19).Text = "xrLabel8";
    ((XRControl) this.xrLabel19).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel18).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CeluPers]")
    });
    ((XRControl) this.xrLabel18).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel18).LocationFloat = new PointFloat(432.3445f, 116.5f);
    this.xrLabel18.Multiline = true;
    ((XRControl) this.xrLabel18).Name = "xrLabel18";
    ((XRControl) this.xrLabel18).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel18).SizeF = new SizeF(200f, 23f);
    ((XRControl) this.xrLabel18).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel18).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel18).Text = "xrLabel8";
    ((XRControl) this.xrLabel18).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel17).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TelePers]")
    });
    ((XRControl) this.xrLabel17).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel17).LocationFloat = new PointFloat(133.3862f, 116.5001f);
    this.xrLabel17.Multiline = true;
    ((XRControl) this.xrLabel17).Name = "xrLabel17";
    ((XRControl) this.xrLabel17).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel17).SizeF = new SizeF(200f, 23f);
    ((XRControl) this.xrLabel17).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel17).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel17).Text = "xrLabel8";
    ((XRControl) this.xrLabel17).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.lblSexo2).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[SexoPers]")
    });
    ((XRControl) this.lblSexo2).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.lblSexo2).LocationFloat = new PointFloat(432.3445f, 93.50001f);
    this.lblSexo2.Multiline = true;
    ((XRControl) this.lblSexo2).Name = "lblSexo2";
    ((XRControl) this.lblSexo2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblSexo2).SizeF = new SizeF(199.9999f, 23f);
    ((XRControl) this.lblSexo2).StylePriority.UseFont = false;
    ((XRControl) this.lblSexo2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblSexo2).Text = "xrLabel8";
    ((XRControl) this.lblSexo2).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel15).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[JuriPers]")
    });
    ((XRControl) this.xrLabel15).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel15).LocationFloat = new PointFloat(133.3862f, 93.50005f);
    this.xrLabel15.Multiline = true;
    ((XRControl) this.xrLabel15).Name = "xrLabel15";
    ((XRControl) this.xrLabel15).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel15).SizeF = new SizeF(200f, 23f);
    ((XRControl) this.xrLabel15).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel15).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel15).Text = "xrLabel8";
    ((XRControl) this.xrLabel15).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaPers]")
    });
    ((XRControl) this.xrLabel14).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel14).LocationFloat = new PointFloat(133.3861f, 70.50002f);
    this.xrLabel14.Multiline = true;
    ((XRControl) this.xrLabel14).Name = "xrLabel14";
    ((XRControl) this.xrLabel14).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel14).SizeF = new SizeF(498.9583f, 23f);
    ((XRControl) this.xrLabel14).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel14).Text = "xrLabel8";
    ((XRControl) this.xrLabel14).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel11).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel11).LocationFloat = new PointFloat(30.55289f, 116.5f);
    ((XRControl) this.xrLabel11).Name = "xrLabel11";
    ((XRControl) this.xrLabel11).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel11).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel11).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel11).Text = "Tel. Fijo:";
    ((XRControl) this.xrLabel11).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel12).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel12).LocationFloat = new PointFloat(333.3862f, 116.5f);
    ((XRControl) this.xrLabel12).Name = "xrLabel12";
    ((XRControl) this.xrLabel12).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel12).SizeF = new SizeF(98.95828f, 23f);
    ((XRControl) this.xrLabel12).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel12).Text = "Tel. Celular:";
    ((XRControl) this.xrLabel12).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel13).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel13).LocationFloat = new PointFloat(30.55289f, 139.5f);
    ((XRControl) this.xrLabel13).Name = "xrLabel13";
    ((XRControl) this.xrLabel13).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel13).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel13).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel13).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel13).Text = "Email:";
    ((XRControl) this.xrLabel13).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel5).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(30.55289f, 93.50001f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "Tipo Persona:";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.lblSexo).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.lblSexo).LocationFloat = new PointFloat(333.3862f, 93.50005f);
    ((XRControl) this.lblSexo).Name = "lblSexo";
    ((XRControl) this.lblSexo).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblSexo).SizeF = new SizeF(98.95828f, 23f);
    ((XRControl) this.lblSexo).StylePriority.UseFont = false;
    ((XRControl) this.lblSexo).StylePriority.UseTextAlignment = false;
    ((XRControl) this.lblSexo).Text = "Sexo:";
    ((XRControl) this.lblSexo).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel6).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(30.55289f, 47.50001f);
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(102.8333f, 23f);
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "CUIL / CUIT:";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel9).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CucuPers]")
    });
    ((XRControl) this.xrLabel9).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(133.3862f, 47.50004f);
    this.xrLabel9.Multiline = true;
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(162.5f, 23f);
    ((XRControl) this.xrLabel9).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel9).Text = "xrLabel8";
    ((XRControl) this.xrLabel9).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel4).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(64.92789f, 70.50002f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(68.45833f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "Nombre:";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[6]
    {
      (XRControl) this.xrLine1,
      (XRControl) this.pbImageBoleto,
      (XRControl) this.xrLabel1,
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrPageInfo1
    });
    ((XRControl) this.PageHeader).HeightF = 100.875f;
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(0.0f, 77.87498f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(777.2916f, 23f);
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(10.00001f, 0.0f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(180f, 75f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 14.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(201.875f, 10.00001f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(344.7917f, 23f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Municipalidad de San Martín";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel2).Font = new Font("Verdana", 12f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(201.875f, 43.75003f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(344.7917f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Datos Fijos Persona";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(620.5834f, 10.00001f);
    this.xrLabel3.Multiline = true;
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(71.875f, 23f);
    ((XRControl) this.xrLabel3).Text = "Emitido el:";
    ((XRControl) this.xrPageInfo1).LocationFloat = new PointFloat(692.4584f, 10.00001f);
    ((XRControl) this.xrPageInfo1).Name = "xrPageInfo1";
    ((XRControl) this.xrPageInfo1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    this.xrPageInfo1.PageInfo = (PageInfo) 16 /*0x10*/;
    ((XRControl) this.xrPageInfo1).SizeF = new SizeF(84.83325f, 23f);
    ((XRControl) this.xrPageInfo1).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.PageFooter).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrLabel7,
      (XRControl) this.xrLabel8
    });
    ((XRControl) this.PageFooter).HeightF = 34.04176f;
    ((XRControl) this.PageFooter).Name = "PageFooter";
    ((XRControl) this.xrLabel7).Font = new Font("Times New Roman", 8f, FontStyle.Bold);
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(10.00001f, 6.25f);
    this.xrLabel7.Multiline = true;
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(59.37502f, 16.75f);
    ((XRControl) this.xrLabel7).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel7).Text = "Usuario:";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?usua")
    });
    ((XRControl) this.xrLabel8).Font = new Font("Times New Roman", 8f);
    ((XRControl) this.xrLabel8).LocationFloat = new PointFloat(69.37502f, 6.25f);
    this.xrLabel8.Multiline = true;
    ((XRControl) this.xrLabel8).Name = "xrLabel8";
    ((XRControl) this.xrLabel8).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel8).SizeF = new SizeF(129.795f, 16.75f);
    ((XRControl) this.xrLabel8).StylePriority.UseFont = false;
    this.usua.Enabled = false;
    this.usua.Name = "usua";
    this.usua.Visible = false;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaTido]")
    });
    ((XRControl) this.xrLabel10).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel10).LocationFloat = new PointFloat(133.3861f, 162.5f);
    this.xrLabel10.Multiline = true;
    ((XRControl) this.xrLabel10).Name = "xrLabel10";
    ((XRControl) this.xrLabel10).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel10).SizeF = new SizeF(358.0724f, 22.99998f);
    ((XRControl) this.xrLabel10).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel10).Text = "xrLabel8";
    ((XRControl) this.xrLabel10).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel27).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaEsci]")
    });
    ((XRControl) this.xrLabel27).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel27).LocationFloat = new PointFloat(133.3861f, 208.5f);
    this.xrLabel27.Multiline = true;
    ((XRControl) this.xrLabel27).Name = "xrLabel27";
    ((XRControl) this.xrLabel27).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel27).SizeF = new SizeF(358.3642f, 22.99998f);
    ((XRControl) this.xrLabel27).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel27).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel27).Text = "xrLabel8";
    ((XRControl) this.xrLabel27).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel29).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaPofi]")
    });
    ((XRControl) this.xrLabel29).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel29).LocationFloat = new PointFloat(133.3861f, 231.5001f);
    this.xrLabel29.Multiline = true;
    ((XRControl) this.xrLabel29).Name = "xrLabel29";
    ((XRControl) this.xrLabel29).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel29).SizeF = new SizeF(360.7775f, 22.99998f);
    ((XRControl) this.xrLabel29).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel29).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel29).Text = "xrLabel8";
    ((XRControl) this.xrLabel29).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel53).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DecrPers]")
    });
    ((XRControl) this.xrLabel53).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel53).LocationFloat = new PointFloat(133.6779f, 340.8334f);
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
    ((XRControl) this.xrLabel54).LocationFloat = new PointFloat(133.386f, 386.8333f);
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
    ((XRControl) this.xrLabel55).LocationFloat = new PointFloat(133.386f, 409.8333f);
    this.xrLabel55.Multiline = true;
    ((XRControl) this.xrLabel55).Name = "xrLabel55";
    ((XRControl) this.xrLabel55).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel55).SizeF = new SizeF(409.3752f, 23f);
    ((XRControl) this.xrLabel55).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel55).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel55).Text = "xrLabel8";
    ((XRControl) this.xrLabel55).TextAlignment = (TextAlignment) 16 /*0x10*/;
    this.objectDataSource1.DataSource = (object) typeof (DTOPersona);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this).Bands.AddRange(new Band[5]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.PageHeader,
      (Band) this.PageFooter
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(26, 24, 10, 9);
    this.Parameters.AddRange(new Parameter[1]{ this.usua });
    this.Version = "21.2";
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
