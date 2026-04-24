// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay.irepControlCajaGuay
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
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.ControlCajaGuay;

public class irepControlCajaGuay : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private ObjectDataSource objectDataSource1;
  private PageHeaderBand PageHeader;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private GroupHeaderBand GroupHeader1;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel1;
  private XRLabel xrLabel2;
  private XRLabel xrLabel3;
  private XRPageInfo xrPageInfo1;
  private XRLine xrLine1;
  private Parameter sUsuario;
  private Parameter dTotal;
  private GroupFooterBand GroupFooter1;
  private XRLabel xrLabel25;
  private XRLabel lblUsuario;
  private XRPageInfo xrPageInfo2;
  private XRLabel xrLabel4;
  private XRLabel xrLabel5;
  private XRLabel xrLabel14;
  private XRLabel xrLabel8;
  private XRLabel xrLabel9;
  private XRLabel xrLabel15;
  private Parameter sEnteReca;
  private Parameter sFeenAcpa;
  private Parameter iGrupo;
  private XRLabel xrLabel7;
  private XRLabel xrLabel10;
  private XRLabel xrLabel12;
  private XRLabel xrLabel13;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRLabel xrLabel6;
  private GroupFooterBand GroupFooter2;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell5;
  private XRTableCell xrTableCell6;
  private XRTableCell xrTableCell8;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;
  private XRTableCell xrTableCell13;
  private XRTableCell xrTableCell14;
  private XRTableCell xrTableCell16;
  private XRTableCell xrTableCell18;
  private XRTableCell xrTableCell10;
  private XRTable xrTable3;
  private XRTableRow xrTableRow3;
  private XRTableCell xrTableCell23;
  private XRTableCell xrTableCell24;
  private XRRichText xrRichText1;

  public int CodiEnre { get; set; }

  public string DetaEnre { get; set; } = string.Empty;

  public DateTime FeenAcpa { get; set; }

  public irepControlCajaGuay()
    : base(nameof (irepControlCajaGuay), "Control de Cajas")
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
    DTOControlCajaGuay dtoControlCajaGuay = new ExpRepControlCajaGuay().ObtenerDatos(this.CodiEnre, this.FeenAcpa);
    this.sUsuario.Value = (object) Misc.Usuario;
    this.sEnteReca.Value = (object) this.DetaEnre.ToUpper();
    this.sFeenAcpa.Value = (object) this.FeenAcpa.ToShortDateString();
    this.iGrupo.Value = (object) this.CodiEnre;
    this.dTotal.Value = (object) (dtoControlCajaGuay.Pagos.Count > 0 ? dtoControlCajaGuay.Pagos.Sum<DTOPagos>((Func<DTOPagos, Decimal>) (x => x.TotaPago)) : 0M);
    this.objectDataSource1.DataSource = (object) dtoControlCajaGuay;
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
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (irepControlCajaGuay));
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.xrLabel7 = new XRLabel();
    this.xrLabel10 = new XRLabel();
    this.xrLabel12 = new XRLabel();
    this.xrLabel13 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrLabel14 = new XRLabel();
    this.xrLabel8 = new XRLabel();
    this.xrLabel9 = new XRLabel();
    this.xrLabel15 = new XRLabel();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.PageHeader = new PageHeaderBand();
    this.pbImageBoleto = new XRPictureBox();
    this.xrLabel1 = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.xrPageInfo1 = new XRPageInfo();
    this.xrLine1 = new XRLine();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.xrRichText1 = new XRRichText();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.xrTableCell13 = new XRTableCell();
    this.xrTableCell14 = new XRTableCell();
    this.xrTableCell16 = new XRTableCell();
    this.xrTableCell18 = new XRTableCell();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrLabel6 = new XRLabel();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.GroupFooter2 = new GroupFooterBand();
    this.xrTable3 = new XRTable();
    this.xrTableRow3 = new XRTableRow();
    this.xrTableCell23 = new XRTableCell();
    this.xrTableCell24 = new XRTableCell();
    this.sUsuario = new Parameter();
    this.dTotal = new Parameter();
    this.GroupFooter1 = new GroupFooterBand();
    this.xrLabel25 = new XRLabel();
    this.lblUsuario = new XRLabel();
    this.xrPageInfo2 = new XRPageInfo();
    this.sEnteReca = new Parameter();
    this.sFeenAcpa = new Parameter();
    this.iGrupo = new Parameter();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this.xrRichText1).BeginInit();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.xrTable3).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 11f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 24f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[10]
    {
      (XRControl) this.xrLabel7,
      (XRControl) this.xrLabel10,
      (XRControl) this.xrLabel12,
      (XRControl) this.xrLabel13,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel14,
      (XRControl) this.xrLabel8,
      (XRControl) this.xrLabel9,
      (XRControl) this.xrLabel15
    });
    ((XRControl) this.Detail).HeightF = 150.8334f;
    ((XRControl) this.Detail).Name = "Detail";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel7).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[UscoAcpa]")
    });
    ((XRControl) this.xrLabel7).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(153.338f, 120.25f);
    this.xrLabel7.Multiline = true;
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(385.1667f, 23f);
    ((XRControl) this.xrLabel7).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel7).Text = "xrLabel9";
    ((XRControl) this.xrLabel7).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel10).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[FecoAcpa]")
    });
    ((XRControl) this.xrLabel10).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel10).LocationFloat = new PointFloat(153.338f, 97.25008f);
    this.xrLabel10.Multiline = true;
    ((XRControl) this.xrLabel10).Name = "xrLabel10";
    ((XRControl) this.xrLabel10).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel10).SizeF = new SizeF(385.1667f, 23f);
    ((XRControl) this.xrLabel10).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel10).Text = "xrLabel8";
    ((XRControl) this.xrLabel10).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((XRControl) this.xrLabel10).TextFormatString = "{0:dd/MM/yyyy HH:mm:ss}";
    ((XRControl) this.xrLabel12).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel12).LocationFloat = new PointFloat(20.57676f, 120.25f);
    ((XRControl) this.xrLabel12).Name = "xrLabel12";
    ((XRControl) this.xrLabel12).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel12).SizeF = new SizeF(132.7612f, 23f);
    ((XRControl) this.xrLabel12).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel12).Text = "Usuario Control:";
    ((XRControl) this.xrLabel12).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel13).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel13).LocationFloat = new PointFloat(11.577f, 97.25008f);
    ((XRControl) this.xrLabel13).Name = "xrLabel13";
    ((XRControl) this.xrLabel13).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel13).SizeF = new SizeF(141.761f, 23f);
    ((XRControl) this.xrLabel13).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel13).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel13).Text = "Fecha Control:";
    ((XRControl) this.xrLabel13).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel4).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(11.577f, 17.79169f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(141.761f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel4).Text = "Ente Recaudador:";
    ((XRControl) this.xrLabel4).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel5).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(20.57676f, 40.79164f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(132.7612f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "Fecha Envío:";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrLabel14).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel14).LocationFloat = new PointFloat(11.577f, 63.79163f);
    ((XRControl) this.xrLabel14).Name = "xrLabel14";
    ((XRControl) this.xrLabel14).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel14).SizeF = new SizeF(142.7612f, 22.99999f);
    ((XRControl) this.xrLabel14).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel14).Text = "Grupo:";
    ((XRControl) this.xrLabel14).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel8).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?sEnteReca")
    });
    ((XRControl) this.xrLabel8).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel8).LocationFloat = new PointFloat(153.338f, 17.79169f);
    this.xrLabel8.Multiline = true;
    ((XRControl) this.xrLabel8).Name = "xrLabel8";
    ((XRControl) this.xrLabel8).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel8).SizeF = new SizeF(385.1667f, 23f);
    ((XRControl) this.xrLabel8).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel8).Text = "xrLabel8";
    ((XRControl) this.xrLabel8).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel9).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?sFeenAcpa")
    });
    ((XRControl) this.xrLabel9).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(153.338f, 40.79164f);
    this.xrLabel9.Multiline = true;
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(385.1667f, 23f);
    ((XRControl) this.xrLabel9).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel9).Text = "xrLabel9";
    ((XRControl) this.xrLabel9).TextAlignment = (TextAlignment) 16 /*0x10*/;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrLabel15).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?iGrupo")
    });
    ((XRControl) this.xrLabel15).Font = new Font("Verdana", 9f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel15).LocationFloat = new PointFloat(154.3382f, 63.79163f);
    this.xrLabel15.Multiline = true;
    ((XRControl) this.xrLabel15).Name = "xrLabel15";
    ((XRControl) this.xrLabel15).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel15).SizeF = new SizeF(384.1666f, 23f);
    ((XRControl) this.xrLabel15).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel15).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel15).Text = "xrLabel11";
    ((XRControl) this.xrLabel15).TextAlignment = (TextAlignment) 16 /*0x10*/;
    this.objectDataSource1.DataSource = (object) typeof (DTOControlCajaGuay);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[6]
    {
      (XRControl) this.pbImageBoleto,
      (XRControl) this.xrLabel1,
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrPageInfo1,
      (XRControl) this.xrLine1
    });
    ((XRControl) this.PageHeader).HeightF = 100.875f;
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(10.00001f, 0.0f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(180f, 75f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 14.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(201.875f, 10.00001f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(416.6667f, 23f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Municipalidad de Guaymallén";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel2).Font = new Font("Verdana", 12f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(201.875f, 43.75003f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(416.6667f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Control de Caja";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(651.5001f, 10.00001f);
    this.xrLabel3.Multiline = true;
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(71.875f, 23f);
    ((XRControl) this.xrLabel3).Text = "Emitido el:";
    ((XRControl) this.xrPageInfo1).LocationFloat = new PointFloat(723.3751f, 10.00001f);
    ((XRControl) this.xrPageInfo1).Name = "xrPageInfo1";
    ((XRControl) this.xrPageInfo1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    this.xrPageInfo1.PageInfo = (PageInfo) 16 /*0x10*/;
    ((XRControl) this.xrPageInfo1).SizeF = new SizeF(72.33301f, 23f);
    ((XRControl) this.xrPageInfo1).TextFormatString = "{0:dd/MM/yyyy}";
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(0.0f, 77.87499f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(795.7081f, 23.00001f);
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[3]
    {
      (Band) this.Detail1,
      (Band) this.GroupHeader1,
      (Band) this.GroupFooter2
    });
    ((XtraReportBase) this.DetailReport).DataMember = "Pagos";
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((XRControl) this.Detail1).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrRichText1,
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail1).HeightF = 48f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.xrRichText1).Borders = (BorderSide) 15;
    ((XRControl) this.xrRichText1).Font = new Font("Verdana", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrRichText1).LocationFloat = new PointFloat(9.999983f, 25f);
    ((XRControl) this.xrRichText1).Name = "xrRichText1";
    ((XRControl) this.xrRichText1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRRichTextBase) this.xrRichText1).SerializableRtfString = componentResourceManager.GetString("xrRichText1.SerializableRtfString");
    ((XRControl) this.xrRichText1).SizeF = new SizeF(665.5374f, 23f);
    ((XRControl) this.xrRichText1).StylePriority.UseBorders = false;
    ((XRControl) this.xrRichText1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).Borders = (BorderSide) 7;
    ((XRControl) this.xrTable2).Font = new Font("Verdana", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(9.999983f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(785.7081f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[7]
    {
      this.xrTableCell1,
      this.xrTableCell11,
      this.xrTableCell12,
      this.xrTableCell13,
      this.xrTableCell14,
      this.xrTableCell16,
      this.xrTableCell18
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell1).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NumeBole]")
    });
    ((XRLabel) this.xrTableCell1).Multiline = true;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    this.xrTableCell1.Weight = 1.2690131053611287;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell11).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaFopa]")
    });
    ((XRLabel) this.xrTableCell11).Multiline = true;
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    this.xrTableCell11.Weight = 1.4470648668294821;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell12).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[NuchFopa]")
    });
    ((XRLabel) this.xrTableCell12).Multiline = true;
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    this.xrTableCell12.Weight = 0.80298564401691075;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell13).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[DetaOfic]")
    });
    ((XRLabel) this.xrTableCell13).Multiline = true;
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    this.xrTableCell13.Weight = 0.84535787890223824;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell14).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CuenCtct]")
    });
    ((XRLabel) this.xrTableCell14).Multiline = true;
    ((XRControl) this.xrTableCell14).Name = "xrTableCell14";
    this.xrTableCell14.Weight = 0.73880634486712493;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell16).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[CodiUsua]")
    });
    ((XRLabel) this.xrTableCell16).Multiline = true;
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    this.xrTableCell16.Weight = 0.78896952017910327;
    ((XRControl) this.xrTableCell18).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell18).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "[TotaPago]")
    });
    ((XRLabel) this.xrTableCell18).Multiline = true;
    ((XRControl) this.xrTableCell18).Name = "xrTableCell18";
    ((XRControl) this.xrTableCell18).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell18).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell18).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell18).TextFormatString = "{0:C2}";
    this.xrTableCell18.Weight = 1.0639069185718579;
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[2]
    {
      (XRControl) this.xrLabel6,
      (XRControl) this.xrTable1
    });
    ((XRControl) this.GroupHeader1).HeightF = 58.00002f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.xrLabel6).Borders = (BorderSide) 7;
    ((XRControl) this.xrLabel6).Font = new Font("Verdana", 9f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(10.57653f, 10.00001f);
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(785.1316f, 23f);
    ((XRControl) this.xrLabel6).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel6).Text = "PAGOS CONTROLADOS";
    ((XRControl) this.xrLabel6).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.xrTable1).Borders = (BorderSide) 7;
    ((XRControl) this.xrTable1).Font = new Font("Verdana", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(9.999985f, 33.00002f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    ((XRControl) this.xrTable1).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(785.7081f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[7]
    {
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell4,
      this.xrTableCell5,
      this.xrTableCell6,
      this.xrTableCell8,
      this.xrTableCell10
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRLabel) this.xrTableCell2).Multiline = true;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Boleto";
    this.xrTableCell2.Weight = 1.2690131053611287;
    ((XRLabel) this.xrTableCell3).Multiline = true;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Forma Pago";
    this.xrTableCell3.Weight = 1.4470656773726631;
    ((XRLabel) this.xrTableCell4).Multiline = true;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "N° Operación";
    this.xrTableCell4.Weight = 0.80298456329266876;
    ((XRLabel) this.xrTableCell5).Multiline = true;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "Oficina";
    this.xrTableCell5.Weight = 0.84535895962648022;
    ((XRLabel) this.xrTableCell6).Multiline = true;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "Cuenta";
    this.xrTableCell6.Weight = 0.73880580450500422;
    ((XRLabel) this.xrTableCell8).Multiline = true;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).Text = "Us. Ingreso";
    this.xrTableCell8.Weight = 0.78896924999804285;
    ((XRLabel) this.xrTableCell10).Multiline = true;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).Text = "Importe";
    this.xrTableCell10.Weight = 1.0639063782097371;
    ((XRControl) this.GroupFooter2).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable3
    });
    ((XRControl) this.GroupFooter2).HeightF = 25f;
    ((XRControl) this.GroupFooter2).Name = "GroupFooter2";
    ((XRControl) this.xrTable3).Borders = (BorderSide) 7;
    ((XRControl) this.xrTable3).Font = new Font("Verdana", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrTable3).LocationFloat = new PointFloat(522.4123f, 0.0f);
    ((XRControl) this.xrTable3).Name = "xrTable3";
    ((XRControl) this.xrTable3).Padding = new PaddingInfo(2, 2, 0, 0, 96f);
    this.xrTable3.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow3
    });
    ((XRControl) this.xrTable3).SizeF = new SizeF(273.2958f, 25f);
    ((XRControl) this.xrTable3).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable3).StylePriority.UseFont = false;
    ((XRControl) this.xrTable3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable3).TextAlignment = (TextAlignment) 32 /*0x20*/;
    this.xrTableRow3.Cells.AddRange(new XRTableCell[2]
    {
      this.xrTableCell23,
      this.xrTableCell24
    });
    ((XRControl) this.xrTableRow3).Name = "xrTableRow3";
    this.xrTableRow3.Weight = 1.0;
    ((XRControl) this.xrTableCell23).Borders = (BorderSide) 13;
    ((XRControl) this.xrTableCell23).Font = new Font("Verdana", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell23).Multiline = true;
    ((XRControl) this.xrTableCell23).Name = "xrTableCell23";
    ((XRControl) this.xrTableCell23).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell23).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell23).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell23).Text = "TOTAL:";
    ((XRControl) this.xrTableCell23).TextAlignment = (TextAlignment) 64 /*0x40*/;
    this.xrTableCell23.Weight = 1.3556610882706381;
    ((XRControl) this.xrTableCell24).Borders = (BorderSide) 15;
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.xrTableCell24).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?dTotal")
    });
    ((XRControl) this.xrTableCell24).Font = new Font("Verdana", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRLabel) this.xrTableCell24).Multiline = true;
    ((XRControl) this.xrTableCell24).Name = "xrTableCell24";
    ((XRControl) this.xrTableCell24).StylePriority.UseBorders = false;
    ((XRControl) this.xrTableCell24).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell24).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell24).Text = "0.00";
    ((XRControl) this.xrTableCell24).TextAlignment = (TextAlignment) 64 /*0x40*/;
    ((XRControl) this.xrTableCell24).TextFormatString = "{0:C2}";
    this.xrTableCell24.Weight = 1.0639070555833663;
    this.sUsuario.Enabled = false;
    this.sUsuario.Name = "sUsuario";
    this.sUsuario.Visible = false;
    this.dTotal.Enabled = false;
    this.dTotal.Name = "dTotal";
    this.dTotal.Type = typeof (Decimal);
    this.dTotal.ValueInfo = "0";
    this.dTotal.Visible = false;
    ((XRControl) this.GroupFooter1).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrLabel25,
      (XRControl) this.lblUsuario,
      (XRControl) this.xrPageInfo2
    });
    ((XRControl) this.GroupFooter1).HeightF = 33.54162f;
    ((XRControl) this.GroupFooter1).Name = "GroupFooter1";
    this.GroupFooter1.PrintAtBottom = true;
    ((XRControl) this.xrLabel25).Font = new Font("Verdana", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.xrLabel25).LocationFloat = new PointFloat(10.57654f, 16.7916f);
    this.xrLabel25.Multiline = true;
    ((XRControl) this.xrLabel25).Name = "xrLabel25";
    ((XRControl) this.xrLabel25).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel25).SizeF = new SizeF(63.72635f, 16.75f);
    ((XRControl) this.xrLabel25).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel25).Text = "Usuario:";
    ((ExpressionBindingCollectionBase<ExpressionBinding>) ((XRControl) this.lblUsuario).ExpressionBindings).AddRange(new ExpressionBinding[1]
    {
      new ExpressionBinding("BeforePrint", "Text", "?sUsuario")
    });
    ((XRControl) this.lblUsuario).Font = new Font("Verdana", 8.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    ((XRControl) this.lblUsuario).LocationFloat = new PointFloat(74.3029f, 16.7916f);
    this.lblUsuario.Multiline = true;
    ((XRControl) this.lblUsuario).Name = "lblUsuario";
    ((XRControl) this.lblUsuario).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.lblUsuario).SizeF = new SizeF(79.03508f, 16.75f);
    ((XRControl) this.lblUsuario).StylePriority.UseFont = false;
    ((XRControl) this.xrPageInfo2).LocationFloat = new PointFloat(699.8748f, 16.7916f);
    ((XRControl) this.xrPageInfo2).Name = "xrPageInfo2";
    ((XRControl) this.xrPageInfo2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrPageInfo2).SizeF = new SizeF(95.83331f, 16.75002f);
    ((XRControl) this.xrPageInfo2).TextFormatString = "Pág.{0} de {1}";
    this.sEnteReca.Enabled = false;
    this.sEnteReca.Name = "sEnteReca";
    this.sEnteReca.Visible = false;
    this.sFeenAcpa.Enabled = false;
    this.sFeenAcpa.Name = "sFeenAcpa";
    this.sFeenAcpa.Visible = false;
    this.iGrupo.Enabled = false;
    this.iGrupo.Name = "iGrupo";
    this.iGrupo.Type = typeof (int);
    this.iGrupo.ValueInfo = "0";
    this.iGrupo.Visible = false;
    ((XtraReportBase) this).Bands.AddRange(new Band[6]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.PageHeader,
      (Band) this.DetailReport,
      (Band) this.GroupFooter1
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(10, 10, 11, 24);
    this.Parameters.AddRange(new Parameter[5]
    {
      this.sUsuario,
      this.dTotal,
      this.sEnteReca,
      this.sFeenAcpa,
      this.iGrupo
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this.xrRichText1).EndInit();
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.xrTable3).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
