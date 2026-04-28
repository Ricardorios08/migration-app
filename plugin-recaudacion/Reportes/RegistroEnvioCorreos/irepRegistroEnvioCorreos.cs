// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos.irepRegistroEnvioCorreos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
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

public class irepRegistroEnvioCorreos : InfoGovReport
{
  private IContainer components = (IContainer) null;
  private DetailBand Detail;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private ReportHeaderBand ReportHeader;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel1;
  private GroupHeaderBand GroupHeader1;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRLabel xrLabel3;
  private XRLabel xrLabel2;
  private XRLabel xrLabel5;
  private Parameter Hasta;
  private XRLabel xrLabel4;
  private Parameter Desde;
  private ObjectDataSource objectDataSource1;
  private XRLine xrLine1;
  private XRLine xrLine2;
  private XRTableCell xrTableCell6;
  private XRTableCell xrTableCell5;

  public irepRegistroEnvioCorreos()
    : base(nameof (irepRegistroEnvioCorreos), "Registro Envío de Correos")
  {
    this.InitializeComponent();
    this.fillImageBoleto();
  }

  public DateTime FechaDesde { get; set; }

  public DateTime FechaHasta { get; set; }

  public bool indimasi { get; set; }

  private void fillImageBoleto()
  {
    this.pbImageBoleto.Image = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
  }

  protected override void setDataSource(Action<int, string> reportProgress)
  {
    List<DTORegistroEnvioCorreos> registroEnvioCorreos = new ExpEmisionMasivaTasas().getRegistroEnvioCorreos(this.FechaDesde, this.FechaHasta, this.indimasi);
    this.Desde.Value = (object) this.FechaDesde;
    this.Hasta.Value = (object) this.FechaHasta;
    this.objectDataSource1.DataSource = (object) registroEnvioCorreos;
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
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.ReportHeader = new ReportHeaderBand();
    this.xrLine2 = new XRLine();
    this.xrLine1 = new XRLine();
    this.xrLabel5 = new XRLabel();
    this.Hasta = new Parameter();
    this.xrLabel4 = new XRLabel();
    this.Desde = new Parameter();
    this.xrLabel3 = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.xrLabel1 = new XRLabel();
    this.pbImageBoleto = new XRPictureBox();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable2
    });
    ((XRControl) this.Detail).HeightF = 25f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.Detail).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.Detail).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    ((XRControl) this.xrTable2).Padding = new PaddingInfo(1, 1, 1, 1, 100f);
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(736f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UsePadding = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 2;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell3,
      this.xrTableCell6,
      this.xrTableCell4
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((XRControl) this.xrTableCell3).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Email")
    });
    ((XRControl) this.xrTableCell3).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell3).Text = "Email";
    ((XRControl) this.xrTableCell3).TextAlignment = (TextAlignment) 1;
    this.xrTableCell3.Weight = 1.3579903700977123;
    ((XRControl) this.xrTableCell6).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Cuentas")
    });
    ((XRControl) this.xrTableCell6).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell6).Text = "xrTableCell6";
    this.xrTableCell6.Weight = 0.512656737276497;
    ((XRControl) this.xrTableCell4).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "FechaEnvio", "{0:dd/MM/yyyy HH:mm}")
    });
    ((XRControl) this.xrTableCell4).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).StylePriority.UseFont = false;
    ((XRControl) this.xrTableCell4).Text = "Fecha de Envío";
    this.xrTableCell4.Weight = 0.53958132781364321;
    ((XRControl) this.TopMargin).HeightF = 10.41667f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.TopMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.TopMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.BottomMargin).HeightF = 35.41667f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.BottomMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.BottomMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[8]
    {
      (XRControl) this.xrLine2,
      (XRControl) this.xrLine1,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLabel1,
      (XRControl) this.pbImageBoleto
    });
    ((XRControl) this.ReportHeader).HeightF = 144.7917f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrLine2).LocationFloat = new PointFloat(0.0f, 78.5f);
    ((XRControl) this.xrLine2).Name = "xrLine2";
    ((XRControl) this.xrLine2).SizeF = new SizeF(736f, 23f);
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(0.0f, 117.125f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(736f, 23f);
    ((XRControl) this.xrLabel5).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding(this.Hasta, "Text", "{0:dd/MM/yyyy}")
    });
    ((XRControl) this.xrLabel5).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(389.5f, 98.12502f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).Text = "xrLabel5";
    this.Hasta.Description = "Hasta";
    this.Hasta.Name = "Hasta";
    this.Hasta.Type = typeof (DateTime);
    this.Hasta.Visible = false;
    ((XRControl) this.xrLabel4).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding(this.Desde, "Text", "{0:dd/MM/yyyy}")
    });
    ((XRControl) this.xrLabel4).Font = new Font("Verdana", 9.75f);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(137.4583f, 98.12502f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    this.Desde.Description = "Desde";
    this.Desde.Name = "Desde";
    this.Desde.Type = typeof (DateTime);
    this.Desde.Visible = false;
    ((XRControl) this.xrLabel3).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(280.125f, 98.12502f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(109.375f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "Fecha Hasta:";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel2).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(22.87496f, 98.12502f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(114.5833f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Fecha Desde:";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel1).Font = new Font("Verdana", 18f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(231.2083f, 27.08333f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(494.7917f, 43.83333f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "Registro Envío de Correos";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 32 /*0x20*/;
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(9.916656f, 1.458343f);
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
    ((XRControl) this.xrTable1).Font = new Font("Verdana", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(736f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 2;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[3]
    {
      this.xrTableCell1,
      this.xrTableCell5,
      this.xrTableCell2
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Email";
    this.xrTableCell1.Weight = 1.3577172396678487;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "Cuentas";
    this.xrTableCell5.Weight = 0.51265683721445154;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Fecha de Envío";
    this.xrTableCell2.Weight = 0.53985435830555228;
    this.objectDataSource1.DataSource = (object) typeof (DTORegistroEnvioCorreos);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((XtraReportBase) this).Bands.AddRange(new Band[5]
    {
      (Band) this.Detail,
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.ReportHeader,
      (Band) this.GroupHeader1
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    this.Margins = new Margins(48 /*0x30*/, 43, 10, 35);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Parameters.AddRange(new Parameter[2]
    {
      this.Desde,
      this.Hasta
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
