// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Certificados.Maipu.CertificadoExencion.irepCertExenMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraReports.Expressions;
using DevExpress.XtraReports.Parameters;
using DevExpress.XtraReports.UI;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Reports;
using InfoGov.Resources;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Certificados.Maipu.CertificadoExencion;

public class irepCertExenMP : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private DetailBand Detail;
  private PageHeaderBand PageHeader;
  private XRLabel xrLabel2;
  private XRLabel xrLabel1;
  private XRPictureBox pbImageBoleto;
  private ReportFooterBand ReportFooter;
  private XRLabel xrLabel25;
  private XRLabel lblUsuario;
  private XRPageInfo xrPageInfo2;
  private XRPageInfo xrPageInfo1;
  private XRLabel xrLabel3;
  private XRRichText xrRichText1;
  private Parameter usuario;
  private Parameter cuenta;
  private Parameter cuil;
  private Parameter nombre;
  private Parameter expte;

  internal long CucuPers { get; set; }

  internal string DetaPers { get; set; } = string.Empty;

  internal string CuenCtct { get; set; } = string.Empty;

  internal string Expediente { get; set; } = string.Empty;

  public irepCertExenMP()
    : base(nameof (irepCertExenMP), "Certificado de Exención")
  {
    this.InitializeComponent();
    this.fillImageBoleto();
    this.usuario.Value = (object) Misc.Usuario;
    this.cuenta.Value = this.nombre.Value = this.expte.Value = (object) string.Empty;
    this.cuil.Value = (object) 0;
  }

  private void fillImageBoleto()
  {
    this.pbImageBoleto.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
  }

  protected override void setDataSource(Action<int, string> reportProgress)
  {
    this.cuenta.Value = (object) this.CuenCtct;
    this.cuil.Value = (object) this.CucuPers;
    this.nombre.Value = (object) this.DetaPers;
    this.expte.Value = (object) this.Expediente;
    base.setDataSource(reportProgress);
  }

  protected virtual void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (irepCertExenMP));
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.Detail = new DetailBand();
    this.PageHeader = new PageHeaderBand();
    this.xrLabel2 = new XRLabel();
    this.xrLabel1 = new XRLabel();
    this.pbImageBoleto = new XRPictureBox();
    this.ReportFooter = new ReportFooterBand();
    this.xrLabel25 = new XRLabel();
    this.lblUsuario = new XRLabel();
    this.xrPageInfo2 = new XRPageInfo();
    this.xrPageInfo1 = new XRPageInfo();
    this.xrLabel3 = new XRLabel();
    this.xrRichText1 = new XRRichText();
    this.usuario = new Parameter();
    this.cuenta = new Parameter();
    this.cuil = new Parameter();
    this.nombre = new Parameter();
    this.expte = new Parameter();
    ((ISupportInitialize) this.xrRichText1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.TopMargin).HeightF = 28f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.BottomMargin).HeightF = 11f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrPageInfo1,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrRichText1
    });
    ((XRControl) this.Detail).HeightF = 438.5f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.PageHeader).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLabel1,
      (XRControl) this.pbImageBoleto
    });
    ((XRControl) this.PageHeader).Name = "PageHeader";
    ((XRControl) this.xrLabel2).Font = new Font("Calibri", 16f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(241.4583f, 33.00001f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(344.7917f, 33.75002f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Dirección de Rentas";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel1).Font = new Font("Calibri", 18f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(241.4583f, 0.0f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(344.7917f, 33.00001f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Municipalidad de Maipú";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(10.00001f, 0.0f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(180f, 75f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    ((XRControl) this.ReportFooter).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrLabel25,
      (XRControl) this.lblUsuario,
      (XRControl) this.xrPageInfo2
    });
    ((XRControl) this.ReportFooter).HeightF = 19.29169f;
    ((XRControl) this.ReportFooter).Name = "ReportFooter";
    this.ReportFooter.PrintAtBottom = true;
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
    ((XRControl) this.xrPageInfo2).LocationFloat = new PointFloat(690.9584f, 0.0f);
    ((XRControl) this.xrPageInfo2).Name = "xrPageInfo2";
    ((XRControl) this.xrPageInfo2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrPageInfo2).SizeF = new SizeF(77.08331f, 16.75002f);
    ((XRControl) this.xrPageInfo2).TextFormatString = "Pág.{0} de {1}";
    ((XRControl) this.xrPageInfo1).Font = new Font("Calibri", 12f);
    ((XRControl) this.xrPageInfo1).LocationFloat = new PointFloat(585.5835f, 37.08331f);
    ((XRControl) this.xrPageInfo1).Name = "xrPageInfo1";
    ((XRControl) this.xrPageInfo1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    this.xrPageInfo1.PageInfo = (PageInfo) 16 /*0x10*/;
    ((XRControl) this.xrPageInfo1).SizeF = new SizeF(205.3748f, 23f);
    ((XRControl) this.xrPageInfo1).StylePriority.UseFont = false;
    ((XRControl) this.xrPageInfo1).TextFormatString = "{0:d 'de' MMMM 'de' yyyy}";
    ((XRControl) this.xrLabel3).Font = new Font("Calibri", 12f);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(585.5835f, 14.08329f);
    this.xrLabel3.Multiline = true;
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(205.3748f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).Text = "Maipú, Mendoza";
    ((XRControl) this.xrRichText1).Font = new Font("Arial", 9.75f);
    ((XRControl) this.xrRichText1).LocationFloat = new PointFloat(32.91662f, 94.20831f);
    ((XRControl) this.xrRichText1).Name = "xrRichText1";
    ((XRControl) this.xrRichText1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRRichTextBase) this.xrRichText1).SerializableRtfString = componentResourceManager.GetString("xrRichText1.SerializableRtfString");
    ((XRControl) this.xrRichText1).SizeF = new SizeF(758.0417f, 334.2917f);
    this.usuario.Enabled = false;
    this.usuario.Name = "usuario";
    this.usuario.Visible = false;
    this.cuenta.Enabled = false;
    this.cuenta.Name = "cuenta";
    this.cuenta.Visible = false;
    this.cuil.Enabled = false;
    this.cuil.Name = "cuil";
    this.cuil.Type = typeof (long);
    this.cuil.ValueInfo = "0";
    this.cuil.Visible = false;
    this.nombre.Enabled = false;
    this.nombre.Name = "nombre";
    this.nombre.Visible = false;
    this.expte.Enabled = false;
    this.expte.Name = "expte";
    this.expte.Visible = false;
    ((XtraReportBase) this).Bands.AddRange(new Band[5]
    {
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.Detail,
      (Band) this.PageHeader,
      (Band) this.ReportFooter
    });
    ((XRControl) this).Font = new Font("Arial", 9.75f);
    this.Margins = new Margins(14, 10, 28, 11);
    this.Parameters.AddRange(new Parameter[5]
    {
      this.usuario,
      this.cuenta,
      this.cuil,
      this.nombre,
      this.expte
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrRichText1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
