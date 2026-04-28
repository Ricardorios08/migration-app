// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.DebitosVsRetenciones.irepDebitosvsRetenciones
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.DataAccess;
using DevExpress.DataAccess.ObjectBinding;
using DevExpress.Utils;
using DevExpress.XtraPrinting;
using DevExpress.XtraReports.Parameters;
using DevExpress.XtraReports.UI;
using InfoGov.Core;
using InfoGov.Plugins.Contabilidad.Expertos;
using InfoGov.Reports;
using InfoGov.Resources;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Printing;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.DebitosVsRetenciones;

public class irepDebitosvsRetenciones : InfoGovReport
{
  public int PeriInfo;
  public string CodiCuco;
  public string DetaCuco;
  public bool Todos;
  public bool Diferencia;
  public bool Iguales;
  private IContainer components = (IContainer) null;
  private DetailBand Detail;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private ReportHeaderBand ReportHeader;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel2;
  private XRLabel xrLabel1;
  private Parameter Municipio;
  private GroupHeaderBand GroupHeader1;
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
  private ObjectDataSource objectDataSource1;
  private Parameter Cuenta;
  private XRLine xrLine4;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private XRLabel xrLabel6;
  private Parameter Expe;
  private XRLabel xrLabel5;
  private XRLine xrLine1;

  public irepDebitosvsRetenciones()
    : base(nameof (irepDebitosvsRetenciones), "Débitos vs Retenciones")
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
    List<DTODebitosvsRetenciones> debitosvsRetenciones = new ExpDebitosvsRetenciones().getDebitosvsRetenciones(this.PeriInfo, this.CodiCuco, this.Todos, this.Diferencia, this.Iguales);
    this.Cuenta.Value = (object) $"{this.CodiCuco}-{this.DetaCuco}";
    this.Municipio.Value = (object) PARAMS.Parameters.GetString("NombreLargo");
    if (this.Todos)
      this.Expe.Value = (object) "Todos";
    else if (this.Diferencia)
      this.Expe.Value = (object) "Solo Diferencias";
    else if (this.Iguales)
      this.Expe.Value = (object) "Solo Iguales";
    this.objectDataSource1.DataSource = (object) debitosvsRetenciones;
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
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell8 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.ReportHeader = new ReportHeaderBand();
    this.xrLine4 = new XRLine();
    this.xrLabel2 = new XRLabel();
    this.xrLabel1 = new XRLabel();
    this.pbImageBoleto = new XRPictureBox();
    this.Municipio = new Parameter();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrLine1 = new XRLine();
    this.xrLabel6 = new XRLabel();
    this.Expe = new Parameter();
    this.xrLabel5 = new XRLabel();
    this.xrLabel4 = new XRLabel();
    this.Cuenta = new Parameter();
    this.xrLabel3 = new XRLabel();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
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
    ((XRControl) this.xrTable2).Font = new Font("Tahoma", 9.75f);
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(723f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseFont = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 2;
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
    ((XRControl) this.xrTableCell7).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Expediente")
    });
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).Text = "Expediente";
    this.xrTableCell7.Weight = 1.0;
    ((XRControl) this.xrTableCell8).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "ImpuDebi", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell8).Text = "Importe Debito";
    ((XRControl) this.xrTableCell8).TextAlignment = (TextAlignment) 4;
    this.xrTableCell8.Weight = 1.0;
    ((XRControl) this.xrTableCell9).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "NroDebi")
    });
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell9).Text = "Nro. Debito";
    ((XRControl) this.xrTableCell9).TextAlignment = (TextAlignment) 2;
    this.xrTableCell9.Weight = 1.0;
    ((XRControl) this.xrTableCell10).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "ImpuPres", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell10).Text = "Importe Reteción";
    ((XRControl) this.xrTableCell10).TextAlignment = (TextAlignment) 4;
    this.xrTableCell10.Weight = 1.0;
    ((XRControl) this.xrTableCell11).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "NroOp")
    });
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).Text = "Nro. Operación";
    this.xrTableCell11.Weight = 1.0;
    ((XRControl) this.xrTableCell12).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "Diferencia", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell12).Text = "Diferencia";
    ((XRControl) this.xrTableCell12).TextAlignment = (TextAlignment) 4;
    this.xrTableCell12.Weight = 1.0;
    ((XRControl) this.TopMargin).HeightF = 27f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.TopMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.TopMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.BottomMargin).HeightF = 48.95833f;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.BottomMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.BottomMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[4]
    {
      (XRControl) this.xrLine4,
      (XRControl) this.xrLabel2,
      (XRControl) this.xrLabel1,
      (XRControl) this.pbImageBoleto
    });
    ((XRControl) this.ReportHeader).HeightF = 110.875f;
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrLine4).LocationFloat = new PointFloat(0.0f, 87.87498f);
    ((XRControl) this.xrLine4).Name = "xrLine4";
    ((XRControl) this.xrLine4).SizeF = new SizeF(723f, 23f);
    ((XRControl) this.xrLabel2).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(276.0417f, 50.08334f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(296.875f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Debitos vs Retenciones";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel1).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(234.375f, 27.08333f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(362.5f, 23f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "[Parameters.Municipio]";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(10.00001f, 10.00001f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(190.2084f, 77.87499f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    this.Municipio.Description = "Municipio";
    this.Municipio.Name = "Municipio";
    this.Municipio.Visible = false;
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[6]
    {
      (XRControl) this.xrLine1,
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel3,
      (XRControl) this.xrTable1
    });
    ((XRControl) this.GroupHeader1).HeightF = 95.08334f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.xrLine1).LocationFloat = new PointFloat(0.0f, 46.5f);
    ((XRControl) this.xrLine1).Name = "xrLine1";
    ((XRControl) this.xrLine1).SizeF = new SizeF(723f, 23f);
    ((XRControl) this.xrLabel6).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding(this.Expe, "Text", "")
    });
    ((XRControl) this.xrLabel6).Font = new Font("Tahoma", 9.75f);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(101.0417f, 22.99999f);
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(198.9583f, 23f);
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).Text = "xrLabel6";
    this.Expe.Description = "Expe";
    this.Expe.Name = "Expe";
    this.Expe.Visible = false;
    ((XRControl) this.xrLabel5).Font = new Font("Tahoma", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(0.0f, 22.99999f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(101.0417f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel5).Text = "Expediente:";
    ((XRControl) this.xrLabel5).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel4).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding(this.Cuenta, "Text", "")
    });
    ((XRControl) this.xrLabel4).Font = new Font("Tahoma", 9.75f);
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(101.0417f, 0.0f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(405.9583f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    this.Cuenta.Description = "Cuenta";
    this.Cuenta.Name = "Cuenta";
    this.Cuenta.Visible = false;
    ((XRControl) this.xrLabel3).Font = new Font("Tahoma", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(0.0f, 0.0f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(101.0417f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel3).Text = "Cuenta:";
    ((XRControl) this.xrLabel3).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Tahoma", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.0f, 70.08334f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(723f, 25f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    ((XRControl) this.xrTable1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable1).TextAlignment = (TextAlignment) 2;
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
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "Expediente";
    this.xrTableCell1.Weight = 1.0;
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).Text = "Importe Debito";
    this.xrTableCell2.Weight = 1.0;
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).Text = "Nro. Debito";
    this.xrTableCell3.Weight = 1.0;
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "Importe O.P.";
    this.xrTableCell4.Weight = 1.0;
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).Text = "Nro. Orden Pago";
    this.xrTableCell5.Weight = 1.0;
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).Text = "Diferencia";
    this.xrTableCell6.Weight = 1.0;
    this.objectDataSource1.DataSource = (object) typeof (DTODebitosvsRetenciones);
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
    this.Margins = new Margins(50, 54, 27, 49);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Parameters.AddRange(new Parameter[3]
    {
      this.Municipio,
      this.Cuenta,
      this.Expe
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
