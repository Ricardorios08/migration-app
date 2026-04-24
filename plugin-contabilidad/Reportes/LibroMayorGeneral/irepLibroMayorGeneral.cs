// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral.irepLibroMayorGeneral
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
namespace InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral;

public class irepLibroMayorGeneral : InfoGovReport
{
  public int PeriInfo;
  public DateTime desde;
  public DateTime hasta;
  public int CodiTias;
  public string DetaTias;
  public string CodiCuco;
  public bool todaslascuentas;
  private IContainer components = (IContainer) null;
  private DetailBand Detail;
  private TopMarginBand TopMargin;
  private BottomMarginBand BottomMargin;
  private ReportHeaderBand ReportHeader;
  private XRPictureBox pbImageBoleto;
  private XRLabel xrLabel1;
  private XRLabel xrLabel2;
  private Parameter Municipio;
  private ObjectDataSource objectDataSource1;
  private GroupHeaderBand GroupHeader1;
  private DetailReportBand DetailReport;
  private DetailBand Detail1;
  private XRLabel xrLabel4;
  private XRLabel xrLabel3;
  private XRTable xrTable1;
  private XRTableRow xrTableRow1;
  private XRTableCell xrTableCell1;
  private XRTableCell xrTableCell2;
  private XRTableCell xrTableCell3;
  private XRTableCell xrTableCell4;
  private XRTableCell xrTableCell6;
  private XRTableCell xrTableCell7;
  private XRLabel xrLabel6;
  private XRLabel xrLabel5;
  private XRTable xrTable2;
  private XRTableRow xrTableRow2;
  private XRTableCell xrTableCell8;
  private XRTableCell xrTableCell9;
  private XRTableCell xrTableCell10;
  private XRTableCell xrTableCell11;
  private XRTableCell xrTableCell12;
  private XRTableCell xrTableCell13;
  private XRTableCell xrTableCell14;
  private GroupFooterBand GroupFooter1;
  private XRTableCell xrTableCell15;
  private XRTableCell xrTableCell16;
  private CalculatedField TotalDebe;
  private CalculatedField TotalHaber;
  private CalculatedField DebeMoasStr;
  private CalculatedField HabeMoasStr;
  private XRTableCell xrTableCell5;
  private XRLabel xrLabel8;
  private XRLabel xrLabel7;
  private CalculatedField AcreedorStr;
  private CalculatedField DeudorStr;
  private XRLabel xrLabel10;
  private XRLabel xrLabel9;
  private XRLabel xrLabel12;
  private XRLabel xrLabel11;
  private CalculatedField AcreeStr;
  private CalculatedField DeuStr;
  private XRLabel xrLabel13;
  private XRLabel xrLabel18;
  private Parameter TiposAsie;
  private XRLabel xrLabel17;
  private Parameter FechHasta;
  private XRLabel xrLabel16;
  private Parameter FechDesde;
  private XRLabel xrLabel15;
  private XRLabel xrLabel14;
  private XRLabel xrLabel20;
  private Parameter Todas;
  private XRLabel xrLabel19;

  public irepLibroMayorGeneral()
    : base(nameof (irepLibroMayorGeneral), "Libro Mayor General")
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
    List<DTOLibroMayorGeneral> libroMayorGeneral = new ExpLibroMayorGeneral().getLibroMayorGeneral(this.PeriInfo, this.desde, this.hasta, this.CodiTias, this.CodiCuco, this.todaslascuentas);
    this.Municipio.Value = (object) PARAMS.Parameters.GetString("NombreLargo");
    this.FechDesde.Value = (object) this.desde;
    this.FechHasta.Value = (object) this.hasta;
    this.TiposAsie.Value = this.CodiTias != 0 ? (object) this.DetaTias : (object) "Todos";
    this.Todas.Value = this.todaslascuentas ? (object) "Todas" : (object) "Solo con movidiento en el periodo indicado";
    this.objectDataSource1.DataSource = (object) libroMayorGeneral;
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
    this.xrLabel12 = new XRLabel();
    this.xrLabel11 = new XRLabel();
    this.xrLabel6 = new XRLabel();
    this.xrLabel5 = new XRLabel();
    this.xrTable2 = new XRTable();
    this.xrTableRow2 = new XRTableRow();
    this.xrTableCell8 = new XRTableCell();
    this.xrTableCell9 = new XRTableCell();
    this.xrTableCell10 = new XRTableCell();
    this.xrTableCell11 = new XRTableCell();
    this.xrTableCell12 = new XRTableCell();
    this.xrTableCell13 = new XRTableCell();
    this.xrTableCell14 = new XRTableCell();
    this.xrTableCell15 = new XRTableCell();
    this.xrLabel4 = new XRLabel();
    this.xrLabel3 = new XRLabel();
    this.TopMargin = new TopMarginBand();
    this.BottomMargin = new BottomMarginBand();
    this.ReportHeader = new ReportHeaderBand();
    this.xrLabel1 = new XRLabel();
    this.xrLabel2 = new XRLabel();
    this.pbImageBoleto = new XRPictureBox();
    this.Municipio = new Parameter();
    this.GroupHeader1 = new GroupHeaderBand();
    this.xrLabel20 = new XRLabel();
    this.Todas = new Parameter();
    this.xrLabel19 = new XRLabel();
    this.xrLabel18 = new XRLabel();
    this.TiposAsie = new Parameter();
    this.xrLabel17 = new XRLabel();
    this.FechHasta = new Parameter();
    this.xrLabel16 = new XRLabel();
    this.FechDesde = new Parameter();
    this.xrLabel15 = new XRLabel();
    this.xrLabel14 = new XRLabel();
    this.xrLabel13 = new XRLabel();
    this.DetailReport = new DetailReportBand();
    this.Detail1 = new DetailBand();
    this.xrTable1 = new XRTable();
    this.xrTableRow1 = new XRTableRow();
    this.xrTableCell1 = new XRTableCell();
    this.xrTableCell2 = new XRTableCell();
    this.xrTableCell3 = new XRTableCell();
    this.xrTableCell4 = new XRTableCell();
    this.xrTableCell5 = new XRTableCell();
    this.xrTableCell6 = new XRTableCell();
    this.xrTableCell7 = new XRTableCell();
    this.xrTableCell16 = new XRTableCell();
    this.GroupFooter1 = new GroupFooterBand();
    this.xrLabel10 = new XRLabel();
    this.xrLabel9 = new XRLabel();
    this.xrLabel8 = new XRLabel();
    this.xrLabel7 = new XRLabel();
    this.objectDataSource1 = new ObjectDataSource(this.components);
    this.TotalDebe = new CalculatedField();
    this.TotalHaber = new CalculatedField();
    this.DebeMoasStr = new CalculatedField();
    this.HabeMoasStr = new CalculatedField();
    this.AcreedorStr = new CalculatedField();
    this.DeudorStr = new CalculatedField();
    this.AcreeStr = new CalculatedField();
    this.DeuStr = new CalculatedField();
    ((ISupportInitialize) this.xrTable2).BeginInit();
    ((ISupportInitialize) this.xrTable1).BeginInit();
    ((ISupportInitialize) this.objectDataSource1).BeginInit();
    ((ISupportInitialize) this).BeginInit();
    ((XRControl) this.Detail).Controls.AddRange(new XRControl[7]
    {
      (XRControl) this.xrLabel12,
      (XRControl) this.xrLabel11,
      (XRControl) this.xrLabel6,
      (XRControl) this.xrLabel5,
      (XRControl) this.xrTable2,
      (XRControl) this.xrLabel4,
      (XRControl) this.xrLabel3
    });
    ((XRControl) this.Detail).HeightF = 58f;
    ((XRControl) this.Detail).Name = "Detail";
    ((XRControl) this.Detail).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.Detail).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.xrLabel12).BackColor = Color.SkyBlue;
    ((XRControl) this.xrLabel12).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel12).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "AcreeStr", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel12).LocationFloat = new PointFloat(629.4043f, 10f);
    ((XRControl) this.xrLabel12).Name = "xrLabel12";
    ((XRControl) this.xrLabel12).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel12).SizeF = new SizeF(93.90771f, 23f);
    ((XRControl) this.xrLabel12).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel12).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel12).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel12).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel11).BackColor = Color.SkyBlue;
    ((XRControl) this.xrLabel11).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel11).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "DeuStr", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel11).LocationFloat = new PointFloat(533.5496f, 10f);
    ((XRControl) this.xrLabel11).Name = "xrLabel11";
    ((XRControl) this.xrLabel11).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel11).SizeF = new SizeF(95.81293f, 23f);
    ((XRControl) this.xrLabel11).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel11).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel11).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel11).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel6).BackColor = Color.SkyBlue;
    ((XRControl) this.xrLabel6).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel6).LocationFloat = new PointFloat(131.0835f, 10f);
    ((XRControl) this.xrLabel6).Name = "xrLabel6";
    ((XRControl) this.xrLabel6).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel6).SizeF = new SizeF(81.25003f, 23f);
    ((XRControl) this.xrLabel6).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel6).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel6).Text = "Descripción";
    ((XRControl) this.xrLabel5).BackColor = Color.SkyBlue;
    ((XRControl) this.xrLabel5).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel5).LocationFloat = new PointFloat(0.0f, 10f);
    ((XRControl) this.xrLabel5).Name = "xrLabel5";
    ((XRControl) this.xrLabel5).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel5).SizeF = new SizeF(48.66673f, 23f);
    ((XRControl) this.xrLabel5).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel5).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel5).Text = "Cuenta";
    ((XRControl) this.xrTable2).BackColor = Color.LightGray;
    ((XRControl) this.xrTable2).BorderColor = Color.Black;
    ((XRControl) this.xrTable2).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable2).ForeColor = Color.Black;
    ((XRControl) this.xrTable2).LocationFloat = new PointFloat(0.1667341f, 33f);
    ((XRControl) this.xrTable2).Name = "xrTable2";
    this.xrTable2.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow2
    });
    ((XRControl) this.xrTable2).SizeF = new SizeF(723.8332f, 25f);
    ((XRControl) this.xrTable2).StylePriority.UseBackColor = false;
    ((XRControl) this.xrTable2).StylePriority.UseBorderColor = false;
    ((XRControl) this.xrTable2).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable2).StylePriority.UseForeColor = false;
    ((XRControl) this.xrTable2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTable2).TextAlignment = (TextAlignment) 2;
    this.xrTableRow2.Cells.AddRange(new XRTableCell[8]
    {
      this.xrTableCell8,
      this.xrTableCell9,
      this.xrTableCell10,
      this.xrTableCell11,
      this.xrTableCell12,
      this.xrTableCell13,
      this.xrTableCell14,
      this.xrTableCell15
    });
    ((XRControl) this.xrTableRow2).Name = "xrTableRow2";
    this.xrTableRow2.Weight = 1.0;
    ((XRControl) this.xrTableCell8).Name = "xrTableCell8";
    ((XRControl) this.xrTableCell8).Text = "Fecha";
    this.xrTableCell8.Weight = 0.6762299430553167;
    ((XRControl) this.xrTableCell9).Name = "xrTableCell9";
    ((XRControl) this.xrTableCell9).Text = "Asiento";
    this.xrTableCell9.Weight = 0.46833452334648207;
    ((XRControl) this.xrTableCell10).Name = "xrTableCell10";
    ((XRControl) this.xrTableCell10).Text = "Tipo";
    this.xrTableCell10.Weight = 0.36894686699527934;
    ((XRControl) this.xrTableCell11).Name = "xrTableCell11";
    ((XRControl) this.xrTableCell11).Text = "Detalle";
    this.xrTableCell11.Weight = 2.0744970819242585;
    ((XRControl) this.xrTableCell12).Name = "xrTableCell12";
    ((XRControl) this.xrTableCell12).Text = "Debe";
    this.xrTableCell12.Weight = 0.99221835461640717;
    ((XRControl) this.xrTableCell13).Name = "xrTableCell13";
    ((XRControl) this.xrTableCell13).Text = "Haber";
    this.xrTableCell13.Weight = 0.98382377686935463;
    ((XRControl) this.xrTableCell14).Name = "xrTableCell14";
    ((XRControl) this.xrTableCell14).Text = "Deudor";
    this.xrTableCell14.Weight = 0.9911819441464581;
    ((XRControl) this.xrTableCell15).Name = "xrTableCell15";
    ((XRControl) this.xrTableCell15).Text = "Acreedor";
    this.xrTableCell15.Weight = 0.97574016583979817;
    ((XRControl) this.xrLabel4).BackColor = Color.SkyBlue;
    ((XRControl) this.xrLabel4).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "DetaCuco")
    });
    ((XRControl) this.xrLabel4).LocationFloat = new PointFloat(212.4168f, 10f);
    ((XRControl) this.xrLabel4).Name = "xrLabel4";
    ((XRControl) this.xrLabel4).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel4).SizeF = new SizeF(321.1328f, 23f);
    ((XRControl) this.xrLabel4).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel4).Text = "xrLabel4";
    ((XRControl) this.xrLabel3).BackColor = Color.SkyBlue;
    ((XRControl) this.xrLabel3).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "CodiCuco")
    });
    ((XRControl) this.xrLabel3).LocationFloat = new PointFloat(48.75008f, 10f);
    ((XRControl) this.xrLabel3).Name = "xrLabel3";
    ((XRControl) this.xrLabel3).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel3).SizeF = new SizeF(82.29169f, 23f);
    ((XRControl) this.xrLabel3).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel3).Text = "xrLabel3";
    ((XRControl) this.TopMargin).HeightF = 15f;
    ((XRControl) this.TopMargin).Name = "TopMargin";
    ((XRControl) this.TopMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.TopMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.BottomMargin).Name = "BottomMargin";
    ((XRControl) this.BottomMargin).Padding = new PaddingInfo(0, 0, 0, 0, 100f);
    ((XRControl) this.BottomMargin).TextAlignment = (TextAlignment) 1;
    ((XRControl) this.ReportHeader).Controls.AddRange(new XRControl[3]
    {
      (XRControl) this.xrLabel1,
      (XRControl) this.xrLabel2,
      (XRControl) this.pbImageBoleto
    });
    ((XRControl) this.ReportHeader).Name = "ReportHeader";
    ((XRControl) this.xrLabel1).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel1).LocationFloat = new PointFloat(240f, 29.08333f);
    ((XRControl) this.xrLabel1).Name = "xrLabel1";
    ((XRControl) this.xrLabel1).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel1).SizeF = new SizeF(362.5f, 23f);
    ((XRControl) this.xrLabel1).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel1).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel1).Text = "[Parameters.Municipio]";
    ((XRControl) this.xrLabel1).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.xrLabel2).Font = new Font("Tahoma", 12f, FontStyle.Bold);
    ((XRControl) this.xrLabel2).LocationFloat = new PointFloat(240f, 52.08333f);
    ((XRControl) this.xrLabel2).Name = "xrLabel2";
    ((XRControl) this.xrLabel2).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel2).SizeF = new SizeF(362.5f, 23f);
    ((XRControl) this.xrLabel2).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel2).Text = "Libro Mayor General";
    ((XRControl) this.xrLabel2).TextAlignment = (TextAlignment) 2;
    ((XRControl) this.pbImageBoleto).LocationFloat = new PointFloat(10.00001f, 10.00001f);
    ((XRControl) this.pbImageBoleto).Name = "pbImageBoleto";
    ((XRControl) this.pbImageBoleto).SizeF = new SizeF(190.2084f, 77.87499f);
    this.pbImageBoleto.Sizing = (ImageSizeMode) 4;
    this.Municipio.Description = "Municipio";
    this.Municipio.Name = "Municipio";
    this.Municipio.Visible = false;
    ((XRControl) this.GroupHeader1).Controls.AddRange(new XRControl[8]
    {
      (XRControl) this.xrLabel20,
      (XRControl) this.xrLabel19,
      (XRControl) this.xrLabel18,
      (XRControl) this.xrLabel17,
      (XRControl) this.xrLabel16,
      (XRControl) this.xrLabel15,
      (XRControl) this.xrLabel14,
      (XRControl) this.xrLabel13
    });
    ((XRControl) this.GroupHeader1).HeightF = 91.99995f;
    ((XRControl) this.GroupHeader1).Name = "GroupHeader1";
    ((XRControl) this.xrLabel20).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding(this.Todas, "Text", "")
    });
    ((XRControl) this.xrLabel20).LocationFloat = new PointFloat(119.0418f, 68.99995f);
    ((XRControl) this.xrLabel20).Name = "xrLabel20";
    ((XRControl) this.xrLabel20).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel20).SizeF = new SizeF(414.5079f, 23f);
    ((XRControl) this.xrLabel20).Text = "xrLabel20";
    this.Todas.Description = "Parameter1";
    this.Todas.Name = "Todas";
    this.Todas.Visible = false;
    ((XRControl) this.xrLabel19).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel19).LocationFloat = new PointFloat(0.2500534f, 68.99995f);
    ((XRControl) this.xrLabel19).Name = "xrLabel19";
    ((XRControl) this.xrLabel19).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel19).SizeF = new SizeF(118.75f, 23f);
    ((XRControl) this.xrLabel19).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel19).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel19).Text = "Cuentas:";
    ((XRControl) this.xrLabel19).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel18).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding(this.TiposAsie, "Text", "")
    });
    ((XRControl) this.xrLabel18).LocationFloat = new PointFloat(119.0001f, 45.99997f);
    ((XRControl) this.xrLabel18).Name = "xrLabel18";
    ((XRControl) this.xrLabel18).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel18).SizeF = new SizeF(416.1591f, 23f);
    ((XRControl) this.xrLabel18).Text = "xrLabel18";
    this.TiposAsie.Description = "Parameter1";
    this.TiposAsie.Name = "TiposAsie";
    this.TiposAsie.Visible = false;
    ((XRControl) this.xrLabel17).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding(this.FechHasta, "Text", "{0:dd/MM/yyyy}")
    });
    ((XRControl) this.xrLabel17).LocationFloat = new PointFloat(118.7917f, 22.99999f);
    ((XRControl) this.xrLabel17).Name = "xrLabel17";
    ((XRControl) this.xrLabel17).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel17).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel17).Text = "xrLabel17";
    this.FechHasta.Description = "Parameter1";
    this.FechHasta.Name = "FechHasta";
    this.FechHasta.Type = typeof (DateTime);
    this.FechHasta.Visible = false;
    ((XRControl) this.xrLabel16).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding(this.FechDesde, "Text", "{0:dd/MM/yyyy}")
    });
    ((XRControl) this.xrLabel16).LocationFloat = new PointFloat(118.7917f, 0.0f);
    ((XRControl) this.xrLabel16).Name = "xrLabel16";
    ((XRControl) this.xrLabel16).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel16).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel16).Text = "xrLabel16";
    this.FechDesde.Description = "Parameter1";
    this.FechDesde.Name = "FechDesde";
    this.FechDesde.Type = typeof (DateTime);
    this.FechDesde.Visible = false;
    ((XRControl) this.xrLabel15).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel15).LocationFloat = new PointFloat(0.2500534f, 45.99997f);
    ((XRControl) this.xrLabel15).Name = "xrLabel15";
    ((XRControl) this.xrLabel15).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel15).SizeF = new SizeF(118.75f, 23f);
    ((XRControl) this.xrLabel15).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel15).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel15).Text = "Tipos de Asientos:";
    ((XRControl) this.xrLabel15).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel14).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel14).LocationFloat = new PointFloat(18.79171f, 22.99999f);
    ((XRControl) this.xrLabel14).Name = "xrLabel14";
    ((XRControl) this.xrLabel14).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel14).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel14).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel14).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel14).Text = "Fecha Hasta:";
    ((XRControl) this.xrLabel14).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel13).Font = new Font("Times New Roman", 9.75f, FontStyle.Bold);
    ((XRControl) this.xrLabel13).LocationFloat = new PointFloat(18.79171f, 0.0f);
    ((XRControl) this.xrLabel13).Name = "xrLabel13";
    ((XRControl) this.xrLabel13).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel13).SizeF = new SizeF(100f, 23f);
    ((XRControl) this.xrLabel13).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel13).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel13).Text = "Fecha Desde:";
    ((XRControl) this.xrLabel13).TextAlignment = (TextAlignment) 4;
    ((XtraReportBase) this.DetailReport).Bands.AddRange(new Band[2]
    {
      (Band) this.Detail1,
      (Band) this.GroupFooter1
    });
    ((XtraReportBase) this.DetailReport).DataMember = "detalles";
    ((XtraReportBase) this.DetailReport).DataSource = (object) this.objectDataSource1;
    ((XtraReportBase) this.DetailReport).FilterString = "[CodiAsie] <> 0";
    this.DetailReport.Level = 0;
    ((XRControl) this.DetailReport).Name = "DetailReport";
    ((XRControl) this.Detail1).Controls.AddRange(new XRControl[1]
    {
      (XRControl) this.xrTable1
    });
    ((XRControl) this.Detail1).HeightF = 22.99999f;
    ((XRControl) this.Detail1).Name = "Detail1";
    ((XRControl) this.xrTable1).Borders = (BorderSide) 15;
    ((XRControl) this.xrTable1).Font = new Font("Times New Roman", 9f);
    ((XRControl) this.xrTable1).LocationFloat = new PointFloat(0.2500534f, 0.0f);
    ((XRControl) this.xrTable1).Name = "xrTable1";
    this.xrTable1.Rows.AddRange(new XRTableRow[1]
    {
      this.xrTableRow1
    });
    ((XRControl) this.xrTable1).SizeF = new SizeF(723.7499f, 22.99999f);
    ((XRControl) this.xrTable1).StylePriority.UseBorders = false;
    ((XRControl) this.xrTable1).StylePriority.UseFont = false;
    this.xrTableRow1.Cells.AddRange(new XRTableCell[8]
    {
      this.xrTableCell1,
      this.xrTableCell2,
      this.xrTableCell3,
      this.xrTableCell4,
      this.xrTableCell5,
      this.xrTableCell6,
      this.xrTableCell7,
      this.xrTableCell16
    });
    ((XRControl) this.xrTableRow1).Name = "xrTableRow1";
    this.xrTableRow1.Weight = 1.0;
    ((XRControl) this.xrTableCell1).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.FechAsie", "{0:dd/MM/yyyy}")
    });
    ((XRControl) this.xrTableCell1).Name = "xrTableCell1";
    ((XRControl) this.xrTableCell1).Text = "xrTableCell1";
    this.xrTableCell1.Weight = 0.67716120370033839;
    ((XRControl) this.xrTableCell2).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.CodiAsie")
    });
    ((XRControl) this.xrTableCell2).Name = "xrTableCell2";
    ((XRControl) this.xrTableCell2).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell2).TextAlignment = (TextAlignment) 4;
    this.xrTableCell2.Weight = 0.46740082562489421;
    ((XRControl) this.xrTableCell3).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.CodiTias")
    });
    ((XRControl) this.xrTableCell3).Name = "xrTableCell3";
    ((XRControl) this.xrTableCell3).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell3).Text = "xrTableCell3";
    ((XRControl) this.xrTableCell3).TextAlignment = (TextAlignment) 4;
    this.xrTableCell3.Weight = 0.3690497401294725;
    ((XRControl) this.xrTableCell4).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.DetaAsie")
    });
    ((XRControl) this.xrTableCell4).Name = "xrTableCell4";
    ((XRControl) this.xrTableCell4).Text = "xrTableCell4";
    this.xrTableCell4.Weight = 2.0784379001885918;
    ((XRControl) this.xrTableCell5).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.DebeMoasStr", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrTableCell5).Name = "xrTableCell5";
    ((XRControl) this.xrTableCell5).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell5).Text = "xrTableCell5";
    ((XRControl) this.xrTableCell5).TextAlignment = (TextAlignment) 4;
    this.xrTableCell5.Weight = 0.99369581658140371;
    ((XRControl) this.xrTableCell6).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.HabeMoasStr", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrTableCell6).Name = "xrTableCell6";
    ((XRControl) this.xrTableCell6).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell6).Text = "xrTableCell6";
    ((XRControl) this.xrTableCell6).TextAlignment = (TextAlignment) 4;
    this.xrTableCell6.Weight = 0.98528920551377108;
    ((XRControl) this.xrTableCell7).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.DeudorStr", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrTableCell7).Name = "xrTableCell7";
    ((XRControl) this.xrTableCell7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell7).Text = "xrTableCell7";
    ((XRControl) this.xrTableCell7).TextAlignment = (TextAlignment) 4;
    this.xrTableCell7.Weight = 0.99265776569711417;
    ((XRControl) this.xrTableCell16).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.AcreedorStr", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrTableCell16).Name = "xrTableCell16";
    ((XRControl) this.xrTableCell16).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrTableCell16).Text = "xrTableCell16";
    ((XRControl) this.xrTableCell16).TextAlignment = (TextAlignment) 4;
    this.xrTableCell16.Weight = 0.97762812207516447;
    ((XRControl) this.GroupFooter1).Controls.AddRange(new XRControl[4]
    {
      (XRControl) this.xrLabel10,
      (XRControl) this.xrLabel9,
      (XRControl) this.xrLabel8,
      (XRControl) this.xrLabel7
    });
    ((XRControl) this.GroupFooter1).HeightF = 23f;
    ((XRControl) this.GroupFooter1).Name = "GroupFooter1";
    ((XRControl) this.xrLabel10).BackColor = Color.LightBlue;
    ((XRControl) this.xrLabel10).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel10).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.DeudorStr", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel10).Font = new Font("Times New Roman", 9f);
    ((XRControl) this.xrLabel10).LocationFloat = new PointFloat(534.3629f, 0.0f);
    ((XRControl) this.xrLabel10).Name = "xrLabel10";
    ((XRControl) this.xrLabel10).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel10).SizeF = new SizeF(94.99963f, 23f);
    ((XRControl) this.xrLabel10).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel10).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel10).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel10).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel10).Text = "xrLabel10";
    ((XRControl) this.xrLabel10).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel9).BackColor = Color.LightBlue;
    ((XRControl) this.xrLabel9).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel9).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.AcreedorStr", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel9).Font = new Font("Times New Roman", 9f);
    ((XRControl) this.xrLabel9).LocationFloat = new PointFloat(629.3626f, 0.0f);
    ((XRControl) this.xrLabel9).Name = "xrLabel9";
    ((XRControl) this.xrLabel9).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel9).SizeF = new SizeF(93.9494f, 23f);
    ((XRControl) this.xrLabel9).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel9).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel9).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel9).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel9).Text = "xrLabel9";
    ((XRControl) this.xrLabel9).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel8).BackColor = Color.LightBlue;
    ((XRControl) this.xrLabel8).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel8).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.TotalHaber", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel8).Font = new Font("Times New Roman", 9f);
    ((XRControl) this.xrLabel8).LocationFloat = new PointFloat(439.8192f, 0.0f);
    ((XRControl) this.xrLabel8).Name = "xrLabel8";
    ((XRControl) this.xrLabel8).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel8).SizeF = new SizeF(94.4603f, 23f);
    ((XRControl) this.xrLabel8).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel8).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel8).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel8).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel8).Text = "xrLabel8";
    ((XRControl) this.xrLabel8).TextAlignment = (TextAlignment) 4;
    ((XRControl) this.xrLabel7).BackColor = Color.LightBlue;
    ((XRControl) this.xrLabel7).Borders = (BorderSide) 15;
    ((XRControl) this.xrLabel7).DataBindings.AddRange(new XRBinding[1]
    {
      new XRBinding("Text", (object) null, "detalles.TotalDebe", "{0:$ #,##0.00}")
    });
    ((XRControl) this.xrLabel7).Font = new Font("Times New Roman", 9f);
    ((XRControl) this.xrLabel7).LocationFloat = new PointFloat(343.6906f, 0.0f);
    ((XRControl) this.xrLabel7).Name = "xrLabel7";
    ((XRControl) this.xrLabel7).Padding = new PaddingInfo(2, 2, 0, 0, 100f);
    ((XRControl) this.xrLabel7).SizeF = new SizeF(96.1286f, 23f);
    ((XRControl) this.xrLabel7).StylePriority.UseBackColor = false;
    ((XRControl) this.xrLabel7).StylePriority.UseBorders = false;
    ((XRControl) this.xrLabel7).StylePriority.UseFont = false;
    ((XRControl) this.xrLabel7).StylePriority.UseTextAlignment = false;
    ((XRControl) this.xrLabel7).Text = "xrLabel7";
    ((XRControl) this.xrLabel7).TextAlignment = (TextAlignment) 4;
    this.objectDataSource1.DataSource = (object) typeof (DTOLibroMayorGeneral);
    ((DataComponentBase) this.objectDataSource1).Name = "objectDataSource1";
    ((DataContainerComponent) this.TotalDebe).DataMember = "detalles";
    this.TotalDebe.Expression = "IIF(sum([DebeMoas]) == 0,'',sum([DebeMoas]))";
    this.TotalDebe.Name = "TotalDebe";
    ((DataContainerComponent) this.TotalHaber).DataMember = "detalles";
    this.TotalHaber.Expression = "IIF(sum([HabeMoas]) == 0,'',sum([HabeMoas]))";
    this.TotalHaber.Name = "TotalHaber";
    ((DataContainerComponent) this.DebeMoasStr).DataMember = "detalles";
    this.DebeMoasStr.Expression = "IIF([DebeMoas] == 0,'',[DebeMoas])";
    this.DebeMoasStr.Name = "DebeMoasStr";
    ((DataContainerComponent) this.HabeMoasStr).DataMember = "detalles";
    this.HabeMoasStr.Expression = "IIF([HabeMoas] == 0,'',[HabeMoas])";
    this.HabeMoasStr.Name = "HabeMoasStr";
    ((DataContainerComponent) this.AcreedorStr).DataMember = "detalles";
    this.AcreedorStr.Expression = "IIF([Acreedor] == 0,'',[Acreedor])";
    this.AcreedorStr.Name = "AcreedorStr";
    ((DataContainerComponent) this.DeudorStr).DataMember = "detalles";
    this.DeudorStr.Expression = "IIF([Deudor] == 0,'',[Deudor])";
    this.DeudorStr.Name = "DeudorStr";
    this.AcreeStr.Expression = "IIF([Acreedor]== 0,'',[Acreedor])";
    this.AcreeStr.Name = "AcreeStr";
    this.DeuStr.Expression = "IIF([Deudor] == 0,'',[Deudor])";
    this.DeuStr.Name = "DeuStr";
    ((XtraReportBase) this).Bands.AddRange(new Band[6]
    {
      (Band) this.Detail,
      (Band) this.TopMargin,
      (Band) this.BottomMargin,
      (Band) this.ReportHeader,
      (Band) this.GroupHeader1,
      (Band) this.DetailReport
    });
    this.CalculatedFields.AddRange(new CalculatedField[8]
    {
      this.TotalDebe,
      this.TotalHaber,
      this.DebeMoasStr,
      this.HabeMoasStr,
      this.AcreedorStr,
      this.DeudorStr,
      this.AcreeStr,
      this.DeuStr
    });
    this.ComponentStorage.AddRange(new IComponent[1]
    {
      (IComponent) this.objectDataSource1
    });
    ((XtraReportBase) this).DataSource = (object) this.objectDataSource1;
    this.Margins = new Margins(51, 52, 15, 100);
    this.PageHeight = 1169;
    this.PageWidth = 827;
    this.PaperKind = PaperKind.A4;
    this.Parameters.AddRange(new Parameter[5]
    {
      this.Municipio,
      this.FechDesde,
      this.FechHasta,
      this.TiposAsie,
      this.Todas
    });
    this.Version = "21.2";
    ((ISupportInitialize) this.xrTable2).EndInit();
    ((ISupportInitialize) this.xrTable1).EndInit();
    ((ISupportInitialize) this.objectDataSource1).EndInit();
    ((ISupportInitialize) this).EndInit();
  }
}
