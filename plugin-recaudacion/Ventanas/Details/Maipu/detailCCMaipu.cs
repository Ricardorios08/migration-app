// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.Details.Maipu.detailCCMaipu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Catastro.Entidades;
using InfoGov.Plugins.Catastro.Expertos;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Expertos.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Details.Maipu.Modals;
using InfoGov.Plugins.Recaudacion.Ventanas.CuentaCorriente.Herencia;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.Details.Maipu;

public class detailCCMaipu : BuscadorBase, IDetailCuentaCorriente
{
  private ExpCCMaipu experto;
  private ExpCuentaCorriente expCtaCte;
  private ExpRelacion exprelacion;
  private ExpObse expObse;
  private ExpDomInmuebleMP expdom;
  private List<Relacion> relaciones;
  private List<DomInmuebleMP> domicilios;
  private List<Obse> observaciones;
  private List<FaciPagoCtaCte> facilidades;
  private List<ApreCtaCte> apremios;
  private List<DatoBoleCtaCte> boletos;
  private HashSet<(short, string)> cuentasBuscadas;
  private short CodiOficActual = 0;
  private string CuenCtctActual = string.Empty;
  private BindingSource BSRelaciones;
  private BindingSource BSDomicilios;
  private BindingSource BSObservaciones;
  private IContainer components = (IContainer) null;
  private MetroPanel panCentral;
  private TabPane Paneles;
  private TabNavigationPage tabObjImp;
  private TabNavigationPage tabFaciPago;
  private TabNavigationPage tabApre;
  private TabNavigationPage tabDatoBole;
  private Panel panObjetoImponible;
  private GridControl gridControlDom;
  private GridView gridViewDom;
  private GridColumn colTipo;
  private GridColumn colPrin;
  private GridColumn colCalle;
  private GridColumn colNumeCalle;
  private GridColumn colManzCasa;
  private GridView gridView3;
  private MetroLabel metroLabel4;
  private GridColumn colBloque;
  private GridColumn colDepto;
  private GridColumn colPiso;
  private GridColumn colBarrio;
  private GridColumn colLoca;
  private GridColumn colDist;
  private GridColumn colCP;
  private GridColumn colEmail;
  private Panel panInferiorDOI;
  private Panel panInferiorIzquierdo;
  private MetroPanel panInferiorDerecho;
  private GridControl gridObse;
  private GridView viewObse;
  private GridColumn colNumeCoob;
  private GridColumn colObseCoob;
  private MetroLabel metroLabel6;
  private GridControl gridControlTitular;
  private GridView gridViewTitular;
  private GridColumn CucuPers;
  private GridColumn DetaPers;
  private GridColumn TipoRela;
  private GridColumn colUsAlta;
  private GridColumn FealRela;
  private GridColumn colUsBaja;
  private GridColumn FebaRela;
  private GridColumn MobaRela;
  private MetroLabel metroLabel5;
  private SimpleButton btnDetalles;
  private MetroPanel panFacilidad;
  private MetroPanel panFaciDerecho;
  private MetroTextBox txtTipoPlan;
  private MetroLabel metroLabel1;
  private MetroTextBox txtInteFapa;
  private MetroLabel metroLabel10;
  private MetroTextBox txtApreFapa;
  private MetroLabel metroLabel11;
  private MetroTextBox txtDereFapa;
  private MetroLabel metroLabel12;
  private MetroTextBox txtDecaFapa;
  private MetroLabel metroLabel13;
  private MetroTextBox txtRecaFapa;
  private MetroLabel metroLabel8;
  private MetroTextBox txtCapiFapa;
  private MetroLabel lblCap;
  private MetroTextBox txtEstaFapa;
  private MetroLabel labelEs;
  private MetroTextBox txtTotaFapa;
  private MetroLabel metroLabel14;
  private MetroTextBox txtFealFapa;
  private MetroLabel label;
  private MetroPanel panFaciDerechoAbajo;
  private GridControl gridControlFaci;
  private GridView gridViewFaci;
  private GridColumn colCuota;
  private GridColumn colFeve;
  private GridColumn colFepa;
  private GridColumn colCapi;
  private GridColumn colDeca;
  private GridColumn colReca;
  private GridColumn colDere;
  private GridColumn colApre;
  private GridColumn colInte;
  private GridColumn colRecMora;
  private GridColumn colTotal;
  private GridView gridView2;
  private MetroTextBox txtAltaUsua;
  private MetroLabel metroLabel7;
  private GridColumn colEstaDefa;
  private MetroPanel panApremio;
  private MetroPanel panApreSuperior;
  private MetroPanel panApreInferior;
  private GridControl gridControlInstApre;
  private MetroTextBox txtFealApre;
  private MetroLabel metroLabel9;
  private MetroTextBox txtAutoApre;
  private MetroLabel metroLabel2;
  private MetroTextBox txtEstaApre;
  private MetroLabel metroLabel15;
  private MetroTextBox txtOfjuApre;
  private MetroLabel metroLabel17;
  private MetroTextBox txtRecaudadorApre;
  private MetroLabel metroLabel16;
  private MetroTextBox txtTotaApre;
  private MetroLabel metroLabel20;
  private MetroTextBox txtRecaApre;
  private MetroLabel metroLabel19;
  private MetroTextBox txtCapiApre;
  private MetroLabel metroLabel18;
  private GridView gridViewInstApre;
  private GridColumn colNumeInst;
  private GridColumn colFechAlta;
  private GridColumn colDetaInst;
  private MetroPanel panDatoBole;
  private MetroPanel panDatoBoleSup;
  private MetroPanel panGrillaApre;
  private MetroPanel panGrillaApreDerecha;
  private GridControl gridControlBoap;
  private GridView gridViewBoap;
  private GridColumn colBoleto;
  private GridColumn colEstado;
  private GridColumn colFealBoap;
  private GridColumn colCoadBoap;
  private GridColumn colApleBoap;
  private GridColumn colDefiBoap;
  private GridColumn colReseBoap;
  private GridColumn colHoreBoap;
  private GridColumn colHoofBoap;
  private GridColumn colMoreBoap;
  private GridColumn colMoofBoap;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel21;
  private MetroLabel metroLabel22;
  private MetroPanel panDatoBoleInferior;
  private MetroPanel panDatoBolePagos;
  private MetroPanel panDatoBoleLiquida;
  private MetroLabel metroLabel24;
  private MetroLabel metroLabel23;
  private GridControl gridControlDetaBoleLiq;
  private GridView gridViewDetaBoleLiq;
  private GridColumn colCodigo;
  private GridColumn colDetalle;
  private GridColumn colImporte;
  private GridControl gridControlDetaPago;
  private GridView gridViewDetaPago;
  private GridColumn colPeriodo;
  private GridColumn colBime;
  private GridColumn colConcepto;
  private GridColumn colCapital;
  private GridColumn colDesCap;
  private GridColumn colRecargo;
  private GridColumn colDescReca;
  private GridColumn colInteres;
  private GridColumn colApremio;
  private GridColumn colTotaPago;
  private MetroLabel metroLabel25;
  private MetroTextBox txtConcepto;
  private MetroTextBox txtUsuarioAlta;
  private MetroLabel metroLabel27;
  private MetroLabel metroLabel26;
  private MetroTextBox txtObseCtacte;
  private MetroTextBox txtOrden;
  private MetroLabel metroLabel29;
  private MetroTextBox txtLiqu;
  private MetroLabel metroLabel28;
  private MetroTextBox txtFeal;
  private MetroLabel metroLabel32;
  private MetroTextBox txtEstado;
  private MetroLabel metroLabel31;
  private MetroTextBox txtTipo;
  private MetroLabel metroLabel30;
  private MetroTextBox txtNumePlan;
  private MetroLabel metroLabel34;
  private MetroTextBox txtFeve;
  private MetroLabel metroLabel33;
  private MetroTextBox txtFeen;
  private MetroLabel metroLabel35;
  private MetroTextBox txtGrupo;
  private MetroLabel metroLabel36;
  private MetroTextBox txtCuota;
  private MetroLabel metroLabel39;
  private MetroTextBox txtFeac;
  private MetroLabel metroLabel38;
  private MetroTextBox txtFepa;
  private MetroLabel metroLabel37;
  private MetroTextBox txtApre;
  private MetroLabel metroLabel45;
  private MetroTextBox txtInte;
  private MetroLabel metroLabel44;
  private MetroTextBox txtDere;
  private MetroLabel metroLabel43;
  private MetroTextBox txtReca;
  private MetroLabel metroLabel42;
  private MetroTextBox txtDeca;
  private MetroLabel metroLabel41;
  private MetroTextBox txtCapi;
  private MetroLabel metroLabel40;
  private MetroTextBox txtTota;
  private MetroLabel metroLabel46;
  private GridColumn colDescuento;
  private GridColumn colExencion;
  private GridColumn colTotaBoleLiqu;
  private TabNavigationPage tabDetaApre;
  private MetroPanel panProcApre;
  private MetroPanel panProcApreSinDOCK;
  private MetroPanel panProcApreSup;
  private GridControl gridControlDetaAprePeri;
  private GridView gridViewDetaAprePeri;
  private MetroLabel metroLabel47;
  private GridColumn colNumeCausa;
  private GridColumn colImpuesto;
  private GridColumn colCuenta;
  private GridColumn colPeriDeta;
  private GridColumn colBimeDeta;
  private GridColumn colCapiDeta;
  private GridColumn colInteDeta;
  private GridColumn colFecProc;
  private GridColumn colPerador;

  public detailCCMaipu()
  {
    this.InitializeComponent();
    this.experto = new ExpCCMaipu();
    this.expCtaCte = new ExpCuentaCorriente();
    this.exprelacion = new ExpRelacion();
    this.expObse = new ExpObse();
    this.expdom = new ExpDomInmuebleMP();
    this.relaciones = new List<Relacion>();
    this.domicilios = new List<DomInmuebleMP>();
    this.observaciones = new List<Obse>();
    this.facilidades = new List<FaciPagoCtaCte>();
    this.apremios = new List<ApreCtaCte>();
    this.boletos = new List<DatoBoleCtaCte>();
    this.cuentasBuscadas = new HashSet<(short, string)>();
    this.BSRelaciones = new BindingSource();
    this.BSDomicilios = new BindingSource();
    this.BSObservaciones = new BindingSource();
    this.BSRelaciones.DataSource = (object) this.relaciones;
    this.BSDomicilios.DataSource = (object) this.domicilios;
    this.BSObservaciones.DataSource = (object) this.observaciones;
    this.gridControlTitular.DataSource = (object) this.BSRelaciones;
    this.gridControlDom.DataSource = (object) this.BSDomicilios;
    this.gridObse.DataSource = (object) this.BSObservaciones;
    this.gridControlFaci.DataSource = (object) null;
    this.gridControlInstApre.DataSource = (object) null;
    this.gridControlBoap.DataSource = (object) null;
    this.gridControlDetaAprePeri.DataSource = (object) null;
    this.gridControlDetaBoleLiq.DataSource = (object) null;
    this.gridControlDetaPago.DataSource = (object) null;
    this.gridViewFaci.CustomDrawFooterCell += new FooterCellCustomDrawEventHandler(this.CustomDrawFooterCell);
  }

  public override void Limpiar()
  {
    // ISSUE: method pointer
    this.EjecutarEnUI(new Action((object) this, __methodptr(\u003CLimpiar\u003Eg__RealizarLimpieza\u007C18_0)));
  }

  public override void Buscar(CtaCte cuenta)
  {
    List<Relacion> tmp_rela = new List<Relacion>();
    List<DomInmuebleMP> tmp_domi = new List<DomInmuebleMP>();
    List<Obse> tmp_obse = new List<Obse>();
    if (cuenta.CodiOfic != (short) 99)
    {
      this.exprelacion.CargarTitularesSanMartin(cuenta.CuenCtct, (int) cuenta.CodiOfic, tmp_rela);
      this.expdom.CargarDomicilios(cuenta.CuenCtct, (int) cuenta.CodiOfic, tmp_domi);
      if (cuenta.CodiOfic != (short) 3 && cuenta.CodiOfic != (short) 5)
        this.expObse.ObtenerObservaciones(int.Parse(cuenta.CuenCtct), (int) cuenta.CodiOfic, tmp_obse);
      this.cuentasBuscadas.Add((cuenta.CodiOfic, cuenta.CuenCtct));
    }
    this.EjecutarEnUI(new Action(RealizarBusqueda));

    void RealizarBusqueda()
    {
      this.relaciones.AddRange((IEnumerable<Relacion>) tmp_rela);
      this.domicilios.AddRange((IEnumerable<DomInmuebleMP>) tmp_domi);
      this.observaciones.AddRange((IEnumerable<Obse>) tmp_obse);
      this.LimpiarCamposFacilidad();
      this.LimpiarCamposApremio();
      this.LimpiarCamposCuentaCorriente();
      this.LimpiarCamposBoleto();
      this.EstablecerDatosCuenta(cuenta.CodiOfic, cuenta.CuenCtct);
      ((Control) this.Paneles).Enabled = true;
    }
  }

  private void RefrescarGrillasObjetoImponible()
  {
    ((BaseView) this.gridViewTitular).RefreshData();
    ((BaseView) this.gridViewDom).RefreshData();
    ((BaseView) this.viewObse).RefreshData();
  }

  private void RefrescarGrillasApremio()
  {
    ((BaseView) this.gridViewInstApre).RefreshData();
    ((BaseView) this.gridViewBoap).RefreshData();
    ((BaseView) this.gridViewDetaAprePeri).RefreshData();
  }

  private void RefrescarGrillasBoleto()
  {
    ((BaseView) this.gridViewDetaBoleLiq).RefreshData();
    ((BaseView) this.gridViewDetaPago).RefreshData();
  }

  private void RefrescarGrillasFacilidades() => ((BaseView) this.gridViewFaci).RefreshData();

  private void LimpiarCamposFacilidad()
  {
    this.txtTipoPlan.Text = this.txtFealFapa.Text = this.txtAltaUsua.Text = this.txtEstaFapa.Text = this.txtCapiFapa.Text = this.txtRecaFapa.Text = this.txtDecaFapa.Text = this.txtDereFapa.Text = this.txtApreFapa.Text = this.txtInteFapa.Text = this.txtTotaFapa.Text = string.Empty;
    this.gridControlFaci.DataSource = (object) null;
    this.RefrescarGrillasFacilidades();
  }

  private void LimpiarCamposApremio()
  {
    this.txtAutoApre.Text = this.txtFealApre.Text = this.txtEstaApre.Text = this.txtRecaudadorApre.Text = this.txtOfjuApre.Text = this.txtCapiApre.Text = this.txtRecaApre.Text = this.txtTotaApre.Text = string.Empty;
    this.gridControlInstApre.DataSource = (object) null;
    this.gridControlBoap.DataSource = (object) null;
    this.gridControlDetaAprePeri.DataSource = (object) null;
    this.RefrescarGrillasApremio();
  }

  private void LimpiarCamposCuentaCorriente()
  {
    this.txtConcepto.Text = this.txtUsuarioAlta.Text = this.txtObseCtacte.Text = string.Empty;
  }

  private void LimpiarCamposBoleto()
  {
    this.txtLiqu.Text = this.txtOrden.Text = this.txtTipo.Text = this.txtEstado.Text = this.txtFeal.Text = this.txtFeve.Text = this.txtNumePlan.Text = this.txtFeen.Text = this.txtGrupo.Text = this.txtFepa.Text = this.txtFeac.Text = this.txtCuota.Text = this.txtCapi.Text = this.txtDeca.Text = this.txtReca.Text = this.txtDere.Text = this.txtInte.Text = this.txtApre.Text = this.txtTota.Text = string.Empty;
    this.gridControlDetaBoleLiq.DataSource = (object) null;
    this.gridControlDetaPago.DataSource = (object) null;
    this.RefrescarGrillasBoleto();
  }

  private void LimpiarCamposCuenta()
  {
    this.relaciones.Clear();
    this.domicilios.Clear();
    this.observaciones.Clear();
    this.RefrescarGrillasObjetoImponible();
  }

  private void EstablecerDatosCuenta(short CodiOfic, string CuenCtct)
  {
    int cuenta;
    int.TryParse(CuenCtct, out cuenta);
    this.BSRelaciones.DataSource = (object) this.relaciones.Where<Relacion>((Func<Relacion, bool>) (x => (int) x.CodiOfic == (int) CodiOfic && x.CuenCtct == CuenCtct)).ToList<Relacion>();
    this.BSDomicilios.DataSource = (object) this.domicilios.Where<DomInmuebleMP>((Func<DomInmuebleMP, bool>) (x => (int) x.CodiOfic == (int) CodiOfic && x.CodiCome == (long) cuenta)).ToList<DomInmuebleMP>();
    this.BSObservaciones.DataSource = (object) this.observaciones.Where<Obse>((Func<Obse, bool>) (x => x.CodiOfic == (int) CodiOfic && x.CodiObse == cuenta)).ToList<Obse>();
    this.RefrescarGrillasObjetoImponible();
  }

  private void EstablecerDatosFacilidad(FaciPagoCtaCte facilidad)
  {
    this.txtTipoPlan.Text = facilidad.DetaTifa;
    this.txtFealFapa.Text = facilidad.FealFapa.ToString("dd/MM/yyyy");
    this.txtAltaUsua.Text = facilidad.AltaUsua;
    this.txtEstaFapa.Text = facilidad.EstaFapa;
    this.txtCapiFapa.Text = facilidad.CapiFapa.ToString("C2");
    this.txtRecaFapa.Text = facilidad.RecaFapa.ToString("C2");
    this.txtDecaFapa.Text = facilidad.DecaFapa.ToString("C2");
    this.txtDereFapa.Text = facilidad.DereFapa.ToString("C2");
    this.txtApreFapa.Text = facilidad.ApreFapa.ToString("C2");
    this.txtInteFapa.Text = facilidad.InteFapa.ToString("C2");
    this.txtTotaFapa.Text = facilidad.TotaFapa.ToString("C2");
    this.gridControlFaci.DataSource = (object) facilidad.Detalles;
    this.RefrescarGrillasFacilidades();
  }

  private void EstablecerDatosApremio(ApreCtaCte apremio)
  {
    this.txtAutoApre.Text = apremio.AutoApre.ToString();
    this.txtFealApre.Text = apremio.FealApre.ToString("dd/MM/yyyy");
    this.txtEstaApre.Text = apremio.EstaApre;
    this.txtRecaudadorApre.Text = $"{apremio.CodiReca.ToString()} - {apremio.DetaReca}";
    this.txtOfjuApre.Text = $"{apremio.CodiOfju.ToString()} - {apremio.DetaOfju}";
    this.txtCapiApre.Text = apremio.CapiApre.ToString("C2");
    this.txtRecaApre.Text = apremio.RecaApre.ToString("C2");
    this.txtTotaApre.Text = apremio.TotaApre.ToString("C2");
    this.gridControlBoap.DataSource = (object) apremio.Boletos;
    this.gridControlInstApre.DataSource = (object) apremio.Instancias;
    this.gridControlDetaAprePeri.DataSource = (object) apremio.Composicion;
    this.CambiarColumnaApre(apremio.Composicion.FirstOrDefault<ComposicionApreCtaCte>() != null && apremio.Composicion.First<ComposicionApreCtaCte>().EsFacilidad);
    this.RefrescarGrillasApremio();
  }

  private void EstablecerDatosCtaCte(DetaCCMaipu datosCuenta)
  {
    this.txtConcepto.Text = datosCuenta.DetaConc;
    this.txtUsuarioAlta.Text = datosCuenta.AltaUsua;
    this.txtObseCtacte.Text = datosCuenta.DetaCtct;
  }

  private void EstablecerDatosBoleto(DatoBoleCtaCte boleto)
  {
    this.txtLiqu.Text = boleto.NumeLiqu.ToString();
    this.txtOrden.Text = boleto.OrdeLiqu.ToString();
    this.txtTipo.Text = boleto.TipoBole;
    this.txtEstado.Text = boleto.EstaBole;
    this.txtFeal.Text = boleto.FealBoleStr;
    this.txtFeve.Text = boleto.FeveBoleStr;
    this.txtNumePlan.Text = boleto.CodiFapa.ToString();
    this.txtFeen.Text = boleto.FeenAcpaStr;
    this.txtGrupo.Text = boleto.NumeAcpa.ToString();
    this.txtFepa.Text = boleto.FepaPagoStr;
    this.txtFeac.Text = boleto.FeacPagoStr;
    this.txtCuota.Text = boleto.CuotDefa.ToString();
    this.txtCapi.Text = boleto.CapiBole.ToString("C2");
    this.txtDeca.Text = boleto.DecaBole.ToString("C2");
    this.txtReca.Text = boleto.RecaBole.ToString("C2");
    this.txtDere.Text = boleto.DereBole.ToString("C2");
    this.txtInte.Text = boleto.InteBole.ToString("C2");
    this.txtApre.Text = boleto.ApreBole.ToString("C2");
    this.txtTota.Text = boleto.TotaBole.ToString("C2");
    this.gridControlDetaBoleLiq.DataSource = (object) boleto.DetalleBoletos;
    this.gridControlDetaPago.DataSource = (object) boleto.DetallePagos;
    this.RefrescarGrillasBoleto();
  }

  private void CambiarColumnaApre(bool esFacilidad)
  {
    this.colCuenta.Caption = esFacilidad ? "N° Facilidad" : "Cuenta";
    this.colBimeDeta.Caption = esFacilidad ? "N° Cuota" : "Mes";
    this.colPeriDeta.Visible = !esFacilidad;
  }

  private void btnDetalles_Click(object sender, EventArgs e)
  {
    if (!this.TerminoCarga)
      return;
    switch (this.CodiOficActual)
    {
      case 1:
        int num = (int) new mdlDatosInmueble(int.Parse(this.CuenCtctActual)).ShowDialog((IWin32Window) this.ParentForm);
        break;
    }
  }

  public void MostrarDetalle(object detalle)
  {
    if (!this.TerminoCarga)
      return;
    DetaCCMaipu detalleMaipu = detalle as DetaCCMaipu;
    if (detalleMaipu != null)
    {
      bool OtraCuenta = (int) this.CodiOficActual != (int) detalleMaipu.CodiOfic || !(this.CuenCtctActual == detalleMaipu.CuenCtct);
      this.CodiOficActual = detalleMaipu.CodiOfic;
      this.CuenCtctActual = detalleMaipu.CuenCtct;
      this.EjecutarEnUI(new Action(BuscarDetalles));
      // ISSUE: variable of a compiler-generated type
      detailCCMaipu.\u003C\u003Ec__DisplayClass36_0 cDisplayClass360;

      void BuscarDetalles()
      {
        if (!this.cuentasBuscadas.Contains((this.CodiOficActual, this.CuenCtctActual)))
        {
          List<Relacion> relacionList = new List<Relacion>();
          List<DomInmuebleMP> domInmuebleMpList = new List<DomInmuebleMP>();
          List<Obse> obseList = new List<Obse>();
          this.exprelacion.CargarTitularesSanMartin(this.CuenCtctActual, (int) this.CodiOficActual, relacionList);
          this.expdom.CargarDomicilios(this.CuenCtctActual, (int) this.CodiOficActual, domInmuebleMpList);
          if (this.CodiOficActual != (short) 3 && this.CodiOficActual != (short) 5)
            this.expObse.ObtenerObservaciones(int.Parse(this.CuenCtctActual), (int) this.CodiOficActual, obseList);
          this.relaciones.AddRange((IEnumerable<Relacion>) relacionList);
          this.domicilios.AddRange((IEnumerable<DomInmuebleMP>) domInmuebleMpList);
          this.observaciones.AddRange((IEnumerable<Obse>) obseList);
          this.cuentasBuscadas.Add((this.CodiOficActual, this.CuenCtctActual));
        }
        if (OtraCuenta)
          this.EstablecerDatosCuenta(this.CodiOficActual, this.CuenCtctActual);
        if (detalleMaipu.CodiFapa > 0)
        {
          // ISSUE: reference to a compiler-generated method
          if (!this.facilidades.Exists(new Predicate<FaciPagoCtaCte>(cDisplayClass360.\u003CMostrarDetalle\u003Eb__5)))
            this.expCtaCte.BuscarDatosFacilidad(detalleMaipu.CodiFapa, this.facilidades);
          // ISSUE: reference to a compiler-generated method
          if (this.facilidades.Count > 0 && this.facilidades.Exists(new Predicate<FaciPagoCtaCte>(cDisplayClass360.\u003CMostrarDetalle\u003Eb__6)))
          {
            // ISSUE: reference to a compiler-generated method
            this.EstablecerDatosFacilidad(this.facilidades.Find(new Predicate<FaciPagoCtaCte>(cDisplayClass360.\u003CMostrarDetalle\u003Eb__2)));
          }
          else
            this.EjecutarEnUI(new Action(this.LimpiarCamposFacilidad));
        }
        else
          this.EjecutarEnUI(new Action(this.LimpiarCamposFacilidad));
        if (detalleMaipu.NumeApre > 0)
        {
          // ISSUE: reference to a compiler-generated method
          if (!this.apremios.Exists(new Predicate<ApreCtaCte>(cDisplayClass360.\u003CMostrarDetalle\u003Eb__7)))
            this.expCtaCte.BuscarDatosApremio(detalleMaipu.NumeApre, this.apremios);
          // ISSUE: reference to a compiler-generated method
          if (this.apremios.Count > 0 && this.apremios.Exists(new Predicate<ApreCtaCte>(cDisplayClass360.\u003CMostrarDetalle\u003Eb__8)))
          {
            // ISSUE: reference to a compiler-generated method
            this.EstablecerDatosApremio(this.apremios.Find(new Predicate<ApreCtaCte>(cDisplayClass360.\u003CMostrarDetalle\u003Eb__3)));
          }
          else
            this.EjecutarEnUI(new Action(this.LimpiarCamposApremio));
        }
        else
          this.EjecutarEnUI(new Action(this.LimpiarCamposApremio));
        this.EstablecerDatosCtaCte(detalleMaipu);
        if (detalleMaipu.PeriBole > (short) 0 && detalleMaipu.NumeBole > 0)
        {
          // ISSUE: reference to a compiler-generated method
          if (!this.boletos.Exists(new Predicate<DatoBoleCtaCte>(cDisplayClass360.\u003CMostrarDetalle\u003Eb__9)))
            this.expCtaCte.BuscarDatosBoleto(new DTOCtaCte()
            {
              CodiOfic = this.CodiOficActual,
              CuenCtct = this.CuenCtctActual,
              PeriBole = detalleMaipu.PeriBole,
              NumeBole = detalleMaipu.NumeBole,
              PeriCtct = detalleMaipu.PeriCtct,
              BimeCtct = detalleMaipu.BimeCtct
            }, this.boletos);
          // ISSUE: reference to a compiler-generated method
          if (this.boletos.Count > 0 && this.boletos.Exists(new Predicate<DatoBoleCtaCte>(cDisplayClass360.\u003CMostrarDetalle\u003Eb__10)))
          {
            // ISSUE: reference to a compiler-generated method
            this.EstablecerDatosBoleto(this.boletos.Find(new Predicate<DatoBoleCtaCte>(cDisplayClass360.\u003CMostrarDetalle\u003Eb__4)));
          }
          else
            this.LimpiarCamposBoleto();
        }
        else
          this.LimpiarCamposBoleto();
      }
    }
    else
    {
      this.CodiOficActual = (short) 0;
      this.CuenCtctActual = string.Empty;
      this.EjecutarEnUI((Action) (() => this.EstablecerDatosCuenta(this.CodiOficActual, this.CuenCtctActual)));
    }
  }

  private void CustomDrawFooterCell(object sender, FooterCellCustomDrawEventArgs e)
  {
    ((CustomDrawEventArgs) e).Appearance.Font = new Font(((CustomDrawEventArgs) e).Appearance.Font, FontStyle.Bold);
  }

  public IReporte ObtenerDetallesCuentaReporte()
  {
    return (IReporte) new DTODetallesCuentaReporteMP()
    {
      Relaciones = this.relaciones,
      Domicilios = this.domicilios,
      Observaciones = this.observaciones
    };
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (detailCCMaipu));
    this.panCentral = new MetroPanel();
    this.Paneles = new TabPane();
    this.tabObjImp = new TabNavigationPage();
    this.panObjetoImponible = new Panel();
    this.btnDetalles = new SimpleButton();
    this.metroLabel4 = new MetroLabel();
    this.gridControlDom = new GridControl();
    this.gridViewDom = new GridView();
    this.colTipo = new GridColumn();
    this.colPrin = new GridColumn();
    this.colCalle = new GridColumn();
    this.colNumeCalle = new GridColumn();
    this.colManzCasa = new GridColumn();
    this.colBloque = new GridColumn();
    this.colDepto = new GridColumn();
    this.colPiso = new GridColumn();
    this.colBarrio = new GridColumn();
    this.colLoca = new GridColumn();
    this.colDist = new GridColumn();
    this.colCP = new GridColumn();
    this.colEmail = new GridColumn();
    this.gridView3 = new GridView();
    this.panInferiorDOI = new Panel();
    this.panInferiorDerecho = new MetroPanel();
    this.gridObse = new GridControl();
    this.viewObse = new GridView();
    this.colNumeCoob = new GridColumn();
    this.colObseCoob = new GridColumn();
    this.metroLabel6 = new MetroLabel();
    this.panInferiorIzquierdo = new Panel();
    this.gridControlTitular = new GridControl();
    this.gridViewTitular = new GridView();
    this.CucuPers = new GridColumn();
    this.DetaPers = new GridColumn();
    this.TipoRela = new GridColumn();
    this.colUsAlta = new GridColumn();
    this.FealRela = new GridColumn();
    this.colUsBaja = new GridColumn();
    this.FebaRela = new GridColumn();
    this.MobaRela = new GridColumn();
    this.metroLabel5 = new MetroLabel();
    this.tabFaciPago = new TabNavigationPage();
    this.panFacilidad = new MetroPanel();
    this.txtTotaFapa = new MetroTextBox();
    this.metroLabel14 = new MetroLabel();
    this.txtInteFapa = new MetroTextBox();
    this.metroLabel10 = new MetroLabel();
    this.txtApreFapa = new MetroTextBox();
    this.metroLabel11 = new MetroLabel();
    this.txtDereFapa = new MetroTextBox();
    this.metroLabel12 = new MetroLabel();
    this.txtDecaFapa = new MetroTextBox();
    this.metroLabel13 = new MetroLabel();
    this.txtRecaFapa = new MetroTextBox();
    this.metroLabel8 = new MetroLabel();
    this.txtCapiFapa = new MetroTextBox();
    this.lblCap = new MetroLabel();
    this.txtEstaFapa = new MetroTextBox();
    this.labelEs = new MetroLabel();
    this.txtTipoPlan = new MetroTextBox();
    this.metroLabel1 = new MetroLabel();
    this.panFaciDerecho = new MetroPanel();
    this.txtAltaUsua = new MetroTextBox();
    this.metroLabel7 = new MetroLabel();
    this.txtFealFapa = new MetroTextBox();
    this.label = new MetroLabel();
    this.panFaciDerechoAbajo = new MetroPanel();
    this.gridControlFaci = new GridControl();
    this.gridViewFaci = new GridView();
    this.colCuota = new GridColumn();
    this.colEstaDefa = new GridColumn();
    this.colFeve = new GridColumn();
    this.colFepa = new GridColumn();
    this.colCapi = new GridColumn();
    this.colDeca = new GridColumn();
    this.colReca = new GridColumn();
    this.colDere = new GridColumn();
    this.colApre = new GridColumn();
    this.colInte = new GridColumn();
    this.colRecMora = new GridColumn();
    this.colTotal = new GridColumn();
    this.gridView2 = new GridView();
    this.metroLabel22 = new MetroLabel();
    this.tabApre = new TabNavigationPage();
    this.panApremio = new MetroPanel();
    this.panApreInferior = new MetroPanel();
    this.panGrillaApreDerecha = new MetroPanel();
    this.gridControlBoap = new GridControl();
    this.gridViewBoap = new GridView();
    this.colBoleto = new GridColumn();
    this.colEstado = new GridColumn();
    this.colFealBoap = new GridColumn();
    this.colCoadBoap = new GridColumn();
    this.colApleBoap = new GridColumn();
    this.colDefiBoap = new GridColumn();
    this.colReseBoap = new GridColumn();
    this.colHoreBoap = new GridColumn();
    this.colHoofBoap = new GridColumn();
    this.colMoreBoap = new GridColumn();
    this.colMoofBoap = new GridColumn();
    this.metroLabel21 = new MetroLabel();
    this.panGrillaApre = new MetroPanel();
    this.gridControlInstApre = new GridControl();
    this.gridViewInstApre = new GridView();
    this.colNumeInst = new GridColumn();
    this.colFechAlta = new GridColumn();
    this.colDetaInst = new GridColumn();
    this.metroLabel3 = new MetroLabel();
    this.panApreSuperior = new MetroPanel();
    this.txtTotaApre = new MetroTextBox();
    this.metroLabel20 = new MetroLabel();
    this.txtRecaApre = new MetroTextBox();
    this.metroLabel19 = new MetroLabel();
    this.txtCapiApre = new MetroTextBox();
    this.metroLabel18 = new MetroLabel();
    this.txtOfjuApre = new MetroTextBox();
    this.metroLabel17 = new MetroLabel();
    this.txtRecaudadorApre = new MetroTextBox();
    this.metroLabel16 = new MetroLabel();
    this.txtEstaApre = new MetroTextBox();
    this.metroLabel15 = new MetroLabel();
    this.txtFealApre = new MetroTextBox();
    this.metroLabel9 = new MetroLabel();
    this.txtAutoApre = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.tabDatoBole = new TabNavigationPage();
    this.panDatoBole = new MetroPanel();
    this.panDatoBoleInferior = new MetroPanel();
    this.panDatoBolePagos = new MetroPanel();
    this.gridControlDetaPago = new GridControl();
    this.gridViewDetaPago = new GridView();
    this.colPeriodo = new GridColumn();
    this.colBime = new GridColumn();
    this.colConcepto = new GridColumn();
    this.colCapital = new GridColumn();
    this.colDesCap = new GridColumn();
    this.colRecargo = new GridColumn();
    this.colDescReca = new GridColumn();
    this.colInteres = new GridColumn();
    this.colApremio = new GridColumn();
    this.colTotaPago = new GridColumn();
    this.metroLabel24 = new MetroLabel();
    this.panDatoBoleLiquida = new MetroPanel();
    this.gridControlDetaBoleLiq = new GridControl();
    this.gridViewDetaBoleLiq = new GridView();
    this.colCodigo = new GridColumn();
    this.colDetalle = new GridColumn();
    this.colImporte = new GridColumn();
    this.colDescuento = new GridColumn();
    this.colExencion = new GridColumn();
    this.colTotaBoleLiqu = new GridColumn();
    this.metroLabel23 = new MetroLabel();
    this.panDatoBoleSup = new MetroPanel();
    this.txtTota = new MetroTextBox();
    this.metroLabel46 = new MetroLabel();
    this.txtApre = new MetroTextBox();
    this.metroLabel45 = new MetroLabel();
    this.txtInte = new MetroTextBox();
    this.metroLabel44 = new MetroLabel();
    this.txtDere = new MetroTextBox();
    this.metroLabel43 = new MetroLabel();
    this.txtReca = new MetroTextBox();
    this.metroLabel42 = new MetroLabel();
    this.txtDeca = new MetroTextBox();
    this.metroLabel41 = new MetroLabel();
    this.txtCapi = new MetroTextBox();
    this.metroLabel40 = new MetroLabel();
    this.txtCuota = new MetroTextBox();
    this.metroLabel39 = new MetroLabel();
    this.txtFeac = new MetroTextBox();
    this.metroLabel38 = new MetroLabel();
    this.txtFepa = new MetroTextBox();
    this.metroLabel37 = new MetroLabel();
    this.txtGrupo = new MetroTextBox();
    this.metroLabel36 = new MetroLabel();
    this.txtFeen = new MetroTextBox();
    this.metroLabel35 = new MetroLabel();
    this.txtNumePlan = new MetroTextBox();
    this.metroLabel34 = new MetroLabel();
    this.txtFeve = new MetroTextBox();
    this.metroLabel33 = new MetroLabel();
    this.txtFeal = new MetroTextBox();
    this.metroLabel32 = new MetroLabel();
    this.txtEstado = new MetroTextBox();
    this.metroLabel31 = new MetroLabel();
    this.txtTipo = new MetroTextBox();
    this.metroLabel30 = new MetroLabel();
    this.txtOrden = new MetroTextBox();
    this.metroLabel29 = new MetroLabel();
    this.txtLiqu = new MetroTextBox();
    this.metroLabel28 = new MetroLabel();
    this.txtUsuarioAlta = new MetroTextBox();
    this.metroLabel27 = new MetroLabel();
    this.metroLabel26 = new MetroLabel();
    this.txtObseCtacte = new MetroTextBox();
    this.txtConcepto = new MetroTextBox();
    this.metroLabel25 = new MetroLabel();
    this.tabDetaApre = new TabNavigationPage();
    this.panProcApre = new MetroPanel();
    this.panProcApreSinDOCK = new MetroPanel();
    this.panProcApreSup = new MetroPanel();
    this.gridControlDetaAprePeri = new GridControl();
    this.gridViewDetaAprePeri = new GridView();
    this.colNumeCausa = new GridColumn();
    this.colImpuesto = new GridColumn();
    this.colCuenta = new GridColumn();
    this.colPeriDeta = new GridColumn();
    this.colBimeDeta = new GridColumn();
    this.colCapiDeta = new GridColumn();
    this.colInteDeta = new GridColumn();
    this.colFecProc = new GridColumn();
    this.colPerador = new GridColumn();
    this.metroLabel47 = new MetroLabel();
    this.panCentral.SuspendLayout();
    ((ISupportInitialize) this.Paneles).BeginInit();
    ((Control) this.Paneles).SuspendLayout();
    ((Control) this.tabObjImp).SuspendLayout();
    this.panObjetoImponible.SuspendLayout();
    ((ISupportInitialize) this.gridControlDom).BeginInit();
    ((ISupportInitialize) this.gridViewDom).BeginInit();
    ((ISupportInitialize) this.gridView3).BeginInit();
    this.panInferiorDOI.SuspendLayout();
    this.panInferiorDerecho.SuspendLayout();
    ((ISupportInitialize) this.gridObse).BeginInit();
    ((ISupportInitialize) this.viewObse).BeginInit();
    this.panInferiorIzquierdo.SuspendLayout();
    ((ISupportInitialize) this.gridControlTitular).BeginInit();
    ((ISupportInitialize) this.gridViewTitular).BeginInit();
    ((Control) this.tabFaciPago).SuspendLayout();
    this.panFacilidad.SuspendLayout();
    this.panFaciDerecho.SuspendLayout();
    this.panFaciDerechoAbajo.SuspendLayout();
    ((ISupportInitialize) this.gridControlFaci).BeginInit();
    ((ISupportInitialize) this.gridViewFaci).BeginInit();
    ((ISupportInitialize) this.gridView2).BeginInit();
    ((Control) this.tabApre).SuspendLayout();
    this.panApremio.SuspendLayout();
    this.panApreInferior.SuspendLayout();
    this.panGrillaApreDerecha.SuspendLayout();
    ((ISupportInitialize) this.gridControlBoap).BeginInit();
    ((ISupportInitialize) this.gridViewBoap).BeginInit();
    this.panGrillaApre.SuspendLayout();
    ((ISupportInitialize) this.gridControlInstApre).BeginInit();
    ((ISupportInitialize) this.gridViewInstApre).BeginInit();
    this.panApreSuperior.SuspendLayout();
    ((Control) this.tabDatoBole).SuspendLayout();
    this.panDatoBole.SuspendLayout();
    this.panDatoBoleInferior.SuspendLayout();
    this.panDatoBolePagos.SuspendLayout();
    ((ISupportInitialize) this.gridControlDetaPago).BeginInit();
    ((ISupportInitialize) this.gridViewDetaPago).BeginInit();
    this.panDatoBoleLiquida.SuspendLayout();
    ((ISupportInitialize) this.gridControlDetaBoleLiq).BeginInit();
    ((ISupportInitialize) this.gridViewDetaBoleLiq).BeginInit();
    this.panDatoBoleSup.SuspendLayout();
    ((Control) this.tabDetaApre).SuspendLayout();
    this.panProcApre.SuspendLayout();
    this.panProcApreSinDOCK.SuspendLayout();
    this.panProcApreSup.SuspendLayout();
    ((ISupportInitialize) this.gridControlDetaAprePeri).BeginInit();
    ((ISupportInitialize) this.gridViewDetaAprePeri).BeginInit();
    this.SuspendLayout();
    this.panCentral.Controls.Add((Control) this.Paneles);
    this.panCentral.Dock = DockStyle.Fill;
    this.panCentral.Location = new Point(0, 0);
    this.panCentral.Name = "panCentral";
    this.panCentral.Size = new Size(1360, 300);
    this.panCentral.TabIndex = 0;
    ((Control) this.Paneles).Controls.Add((Control) this.tabObjImp);
    ((Control) this.Paneles).Controls.Add((Control) this.tabFaciPago);
    ((Control) this.Paneles).Controls.Add((Control) this.tabApre);
    ((Control) this.Paneles).Controls.Add((Control) this.tabDatoBole);
    ((Control) this.Paneles).Controls.Add((Control) this.tabDetaApre);
    ((Control) this.Paneles).Dock = DockStyle.Fill;
    ((Control) this.Paneles).Location = new Point(0, 0);
    ((Control) this.Paneles).Name = "Paneles";
    ((BaseMutableList<NavigationPageBase>) ((NavigationFrame) this.Paneles).Pages).AddRange(new NavigationPageBase[5]
    {
      (NavigationPageBase) this.tabObjImp,
      (NavigationPageBase) this.tabFaciPago,
      (NavigationPageBase) this.tabApre,
      (NavigationPageBase) this.tabDetaApre,
      (NavigationPageBase) this.tabDatoBole
    });
    ((NavigationPane) this.Paneles).RegularSize = new Size(1360, 300);
    this.Paneles.SelectedPage = this.tabObjImp;
    ((Control) this.Paneles).Size = new Size(1360, 300);
    ((Control) this.Paneles).TabIndex = 2;
    ((Control) this.Paneles).Text = "tabPane1";
    ((NavigationPageBase) this.tabObjImp).Caption = "Datos del Objeto Imponible";
    ((Control) this.tabObjImp).Controls.Add((Control) this.panObjetoImponible);
    ((Control) this.tabObjImp).Name = "tabObjImp";
    ((NavigationPageBase) this.tabObjImp).Size = new Size(1360, 267);
    this.panObjetoImponible.Controls.Add((Control) this.btnDetalles);
    this.panObjetoImponible.Controls.Add((Control) this.metroLabel4);
    this.panObjetoImponible.Controls.Add((Control) this.gridControlDom);
    this.panObjetoImponible.Controls.Add((Control) this.panInferiorDOI);
    this.panObjetoImponible.Dock = DockStyle.Fill;
    this.panObjetoImponible.Location = new Point(0, 0);
    this.panObjetoImponible.Name = "panObjetoImponible";
    this.panObjetoImponible.Size = new Size(1360, 267);
    this.panObjetoImponible.TabIndex = 0;
    ((BaseStyleControl) this.btnDetalles).Appearance.Font = new Font("Calibri", 10f, FontStyle.Bold);
    ((BaseStyleControl) this.btnDetalles).Appearance.Options.UseFont = true;
    ((BaseButton) this.btnDetalles).ButtonStyle = (BorderStyles) 3;
    ((ImageOptions) this.btnDetalles.ImageOptions).Image = (Image) componentResourceManager.GetObject("btnDetalles.ImageOptions.Image");
    ((Control) this.btnDetalles).Location = new Point(18, 12);
    ((Control) this.btnDetalles).Name = "btnDetalles";
    ((Control) this.btnDetalles).Size = new Size(45, 34);
    ((Control) this.btnDetalles).TabIndex = 506;
    ((Control) this.btnDetalles).TabStop = false;
    ((Control) this.btnDetalles).Click += new EventHandler(this.btnDetalles_Click);
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Dock = DockStyle.Bottom;
    this.metroLabel4.FontSize = 15f;
    this.metroLabel4.FontWeight = MetroFontWeight.Bold;
    this.metroLabel4.Location = new Point(0, 44);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(1360, 19);
    this.metroLabel4.TabIndex = 279;
    this.metroLabel4.Text = "Domicilios";
    this.metroLabel4.TextAlign = ContentAlignment.MiddleCenter;
    ((Control) this.gridControlDom).Dock = DockStyle.Bottom;
    ((Control) this.gridControlDom).Location = new Point(0, 63 /*0x3F*/);
    this.gridControlDom.MainView = (BaseView) this.gridViewDom;
    ((Control) this.gridControlDom).Name = "gridControlDom";
    ((Control) this.gridControlDom).Size = new Size(1360, 78);
    ((Control) this.gridControlDom).TabIndex = 278;
    this.gridControlDom.ViewCollection.AddRange(new BaseView[2]
    {
      (BaseView) this.gridViewDom,
      (BaseView) this.gridView3
    });
    this.gridViewDom.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewDom.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewDom).Columns.AddRange(new GridColumn[13]
    {
      this.colTipo,
      this.colPrin,
      this.colCalle,
      this.colNumeCalle,
      this.colManzCasa,
      this.colBloque,
      this.colDepto,
      this.colPiso,
      this.colBarrio,
      this.colLoca,
      this.colDist,
      this.colCP,
      this.colEmail
    });
    this.gridViewDom.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewDom).GridControl = this.gridControlDom;
    ((BaseView) this.gridViewDom).Name = "gridViewDom";
    ((ColumnViewOptionsBehavior) this.gridViewDom.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewDom.OptionsBehavior).ReadOnly = true;
    this.gridViewDom.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewDom.OptionsView.ShowGroupPanel = false;
    this.gridViewDom.OptionsView.ShowIndicator = false;
    this.colTipo.Caption = "Tipo";
    this.colTipo.FieldName = "DetaTido";
    this.colTipo.MaxWidth = 200;
    this.colTipo.Name = "colTipo";
    this.colTipo.Visible = true;
    this.colTipo.VisibleIndex = 0;
    ((AppearanceOptions) this.colPrin.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPrin.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPrin.Caption = "Princ.";
    this.colPrin.FieldName = "PrinDomi";
    this.colPrin.MaxWidth = 35;
    this.colPrin.Name = "colPrin";
    this.colPrin.Visible = true;
    this.colPrin.VisibleIndex = 1;
    this.colPrin.Width = 35;
    this.colCalle.Caption = "Calle";
    this.colCalle.FieldName = "Calle";
    this.colCalle.Name = "colCalle";
    this.colCalle.Visible = true;
    this.colCalle.VisibleIndex = 2;
    this.colNumeCalle.Caption = "N°";
    this.colNumeCalle.FieldName = "NumeCalle";
    this.colNumeCalle.MaxWidth = 55;
    this.colNumeCalle.Name = "colNumeCalle";
    this.colNumeCalle.Visible = true;
    this.colNumeCalle.VisibleIndex = 3;
    this.colNumeCalle.Width = 50;
    this.colManzCasa.Caption = "Manz/Casa";
    this.colManzCasa.FieldName = "ManzCasa";
    this.colManzCasa.MaxWidth = 70;
    this.colManzCasa.Name = "colManzCasa";
    this.colManzCasa.Visible = true;
    this.colManzCasa.VisibleIndex = 4;
    this.colManzCasa.Width = 60;
    this.colBloque.Caption = "Bloque";
    this.colBloque.FieldName = "Bloque";
    this.colBloque.MaxWidth = 60;
    this.colBloque.Name = "colBloque";
    this.colBloque.Visible = true;
    this.colBloque.VisibleIndex = 5;
    this.colBloque.Width = 60;
    this.colDepto.Caption = "Depto";
    this.colDepto.FieldName = "Dpto";
    this.colDepto.MaxWidth = 60;
    this.colDepto.Name = "colDepto";
    this.colDepto.Visible = true;
    this.colDepto.VisibleIndex = 6;
    this.colDepto.Width = 60;
    this.colPiso.Caption = "Piso";
    this.colPiso.FieldName = "Piso";
    this.colPiso.MaxWidth = 60;
    this.colPiso.Name = "colPiso";
    this.colPiso.Visible = true;
    this.colPiso.VisibleIndex = 7;
    this.colPiso.Width = 60;
    this.colBarrio.Caption = "Barrio";
    this.colBarrio.FieldName = "Barrio";
    this.colBarrio.MaxWidth = 160 /*0xA0*/;
    this.colBarrio.Name = "colBarrio";
    this.colBarrio.Visible = true;
    this.colBarrio.VisibleIndex = 8;
    this.colBarrio.Width = 160 /*0xA0*/;
    this.colLoca.Caption = "Localidad";
    this.colLoca.FieldName = "Localidad";
    this.colLoca.MaxWidth = 160 /*0xA0*/;
    this.colLoca.MinWidth = 10;
    this.colLoca.Name = "colLoca";
    this.colLoca.Visible = true;
    this.colLoca.VisibleIndex = 9;
    this.colLoca.Width = 160 /*0xA0*/;
    this.colDist.Caption = "Distrito";
    this.colDist.FieldName = "Distrito";
    this.colDist.MaxWidth = 160 /*0xA0*/;
    this.colDist.Name = "colDist";
    this.colDist.Visible = true;
    this.colDist.VisibleIndex = 10;
    this.colDist.Width = 160 /*0xA0*/;
    ((AppearanceOptions) this.colCP.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCP.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCP.Caption = "CP";
    this.colCP.FieldName = "CodPostal";
    this.colCP.MaxWidth = 75;
    this.colCP.Name = "colCP";
    this.colCP.Visible = true;
    this.colCP.VisibleIndex = 11;
    this.colEmail.Caption = "Email";
    this.colEmail.FieldName = "MailDomi";
    this.colEmail.MaxWidth = 150;
    this.colEmail.Name = "colEmail";
    this.colEmail.Visible = true;
    this.colEmail.VisibleIndex = 12;
    this.colEmail.Width = 150;
    ((BaseView) this.gridView3).GridControl = this.gridControlDom;
    ((BaseView) this.gridView3).Name = "gridView3";
    this.panInferiorDOI.Controls.Add((Control) this.panInferiorDerecho);
    this.panInferiorDOI.Controls.Add((Control) this.panInferiorIzquierdo);
    this.panInferiorDOI.Dock = DockStyle.Bottom;
    this.panInferiorDOI.Location = new Point(0, 141);
    this.panInferiorDOI.Name = "panInferiorDOI";
    this.panInferiorDOI.Size = new Size(1360, 126);
    this.panInferiorDOI.TabIndex = 504;
    this.panInferiorDerecho.Controls.Add((Control) this.gridObse);
    this.panInferiorDerecho.Controls.Add((Control) this.metroLabel6);
    this.panInferiorDerecho.Dock = DockStyle.Fill;
    this.panInferiorDerecho.Location = new Point(680, 0);
    this.panInferiorDerecho.Name = "panInferiorDerecho";
    this.panInferiorDerecho.Size = new Size(680, 126);
    this.panInferiorDerecho.TabIndex = 1;
    ((Control) this.gridObse).Dock = DockStyle.Fill;
    ((Control) this.gridObse).Location = new Point(0, 19);
    this.gridObse.MainView = (BaseView) this.viewObse;
    ((Control) this.gridObse).Name = "gridObse";
    ((Control) this.gridObse).Size = new Size(680, 107);
    ((Control) this.gridObse).TabIndex = 505;
    this.gridObse.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.viewObse
    });
    this.viewObse.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.viewObse.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.viewObse).Columns.AddRange(new GridColumn[2]
    {
      this.colNumeCoob,
      this.colObseCoob
    });
    ((BaseView) this.viewObse).GridControl = this.gridObse;
    ((BaseView) this.viewObse).Name = "viewObse";
    ((ColumnViewOptionsBehavior) this.viewObse.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.viewObse.OptionsBehavior).ReadOnly = true;
    this.viewObse.OptionsView.ShowGroupPanel = false;
    this.viewObse.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colNumeCoob.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNumeCoob.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNumeCoob.Caption = "N°";
    this.colNumeCoob.FieldName = "NumeCoob";
    this.colNumeCoob.Name = "colNumeCoob";
    this.colNumeCoob.Visible = true;
    this.colNumeCoob.VisibleIndex = 0;
    this.colObseCoob.Caption = "Observación";
    this.colObseCoob.FieldName = "ObseCoob";
    this.colObseCoob.Name = "colObseCoob";
    this.colObseCoob.Visible = true;
    this.colObseCoob.VisibleIndex = 1;
    this.colObseCoob.Width = 1162;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Dock = DockStyle.Top;
    this.metroLabel6.FontSize = 15f;
    this.metroLabel6.FontWeight = MetroFontWeight.Bold;
    this.metroLabel6.Location = new Point(0, 0);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(680, 19);
    this.metroLabel6.TabIndex = 504;
    this.metroLabel6.Text = "Observaciones";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleCenter;
    this.panInferiorIzquierdo.Controls.Add((Control) this.gridControlTitular);
    this.panInferiorIzquierdo.Controls.Add((Control) this.metroLabel5);
    this.panInferiorIzquierdo.Dock = DockStyle.Left;
    this.panInferiorIzquierdo.Location = new Point(0, 0);
    this.panInferiorIzquierdo.Name = "panInferiorIzquierdo";
    this.panInferiorIzquierdo.Size = new Size(680, 126);
    this.panInferiorIzquierdo.TabIndex = 0;
    ((Control) this.gridControlTitular).Dock = DockStyle.Fill;
    ((Control) this.gridControlTitular).Location = new Point(0, 19);
    this.gridControlTitular.MainView = (BaseView) this.gridViewTitular;
    ((Control) this.gridControlTitular).Name = "gridControlTitular";
    ((Control) this.gridControlTitular).Size = new Size(680, 107);
    ((Control) this.gridControlTitular).TabIndex = 283;
    this.gridControlTitular.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewTitular
    });
    this.gridViewTitular.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewTitular.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewTitular).Columns.AddRange(new GridColumn[8]
    {
      this.CucuPers,
      this.DetaPers,
      this.TipoRela,
      this.colUsAlta,
      this.FealRela,
      this.colUsBaja,
      this.FebaRela,
      this.MobaRela
    });
    ((BaseView) this.gridViewTitular).GridControl = this.gridControlTitular;
    ((BaseView) this.gridViewTitular).Name = "gridViewTitular";
    ((ColumnViewOptionsBehavior) this.gridViewTitular.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewTitular.OptionsBehavior).ReadOnly = true;
    this.gridViewTitular.OptionsView.ShowGroupPanel = false;
    this.gridViewTitular.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.CucuPers.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.CucuPers.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.CucuPers.Caption = "CUIT/CUIL";
    this.CucuPers.FieldName = "CucuPers";
    this.CucuPers.Name = "CucuPers";
    this.CucuPers.Visible = true;
    this.CucuPers.VisibleIndex = 0;
    this.DetaPers.Caption = "Apellido y Nombre";
    this.DetaPers.FieldName = "DetaPers";
    this.DetaPers.Name = "DetaPers";
    this.DetaPers.Visible = true;
    this.DetaPers.VisibleIndex = 1;
    ((AppearanceOptions) this.TipoRela.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.TipoRela.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.TipoRela.Caption = "Relacion";
    this.TipoRela.FieldName = "TipoRela";
    this.TipoRela.Name = "TipoRela";
    this.TipoRela.Visible = true;
    this.TipoRela.VisibleIndex = 2;
    this.colUsAlta.Caption = "Us. Alta";
    this.colUsAlta.FieldName = "AltaUsua";
    this.colUsAlta.Name = "colUsAlta";
    this.colUsAlta.Visible = true;
    this.colUsAlta.VisibleIndex = 3;
    ((AppearanceOptions) this.FealRela.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.FealRela.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.FealRela.Caption = "Fecha Alta";
    this.FealRela.DisplayFormat.FormatString = "dd/MM/yyyy";
    this.FealRela.DisplayFormat.FormatType = (FormatType) 2;
    this.FealRela.FieldName = "FealRela";
    this.FealRela.Name = "FealRela";
    this.FealRela.Visible = true;
    this.FealRela.VisibleIndex = 4;
    this.colUsBaja.Caption = "Us. Baja";
    this.colUsBaja.FieldName = "BajaUsua";
    this.colUsBaja.Name = "colUsBaja";
    this.colUsBaja.Visible = true;
    this.colUsBaja.VisibleIndex = 5;
    ((AppearanceOptions) this.FebaRela.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.FebaRela.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.FebaRela.Caption = "Fecha Baja";
    this.FebaRela.DisplayFormat.FormatString = "dd/MM/yyyy";
    this.FebaRela.DisplayFormat.FormatType = (FormatType) 2;
    this.FebaRela.FieldName = "FebaRelaString";
    this.FebaRela.Name = "FebaRela";
    this.FebaRela.Visible = true;
    this.FebaRela.VisibleIndex = 6;
    this.MobaRela.Caption = "Motivo de Baja";
    this.MobaRela.DisplayFormat.FormatString = "dd/MM/yyyy";
    this.MobaRela.DisplayFormat.FormatType = (FormatType) 2;
    this.MobaRela.FieldName = "MobaRela";
    this.MobaRela.Name = "MobaRela";
    this.MobaRela.Visible = true;
    this.MobaRela.VisibleIndex = 7;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Dock = DockStyle.Top;
    this.metroLabel5.FontSize = 15f;
    this.metroLabel5.FontWeight = MetroFontWeight.Bold;
    this.metroLabel5.Location = new Point(0, 0);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(680, 19);
    this.metroLabel5.TabIndex = 282;
    this.metroLabel5.Text = "Relaciones";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleCenter;
    ((NavigationPageBase) this.tabFaciPago).Caption = "Facilidad de Pago";
    ((Control) this.tabFaciPago).Controls.Add((Control) this.panFacilidad);
    ((Control) this.tabFaciPago).Name = "tabFaciPago";
    ((NavigationPageBase) this.tabFaciPago).Size = new Size(1360, 267);
    this.panFacilidad.Controls.Add((Control) this.txtTotaFapa);
    this.panFacilidad.Controls.Add((Control) this.metroLabel14);
    this.panFacilidad.Controls.Add((Control) this.txtInteFapa);
    this.panFacilidad.Controls.Add((Control) this.metroLabel10);
    this.panFacilidad.Controls.Add((Control) this.txtApreFapa);
    this.panFacilidad.Controls.Add((Control) this.metroLabel11);
    this.panFacilidad.Controls.Add((Control) this.txtDereFapa);
    this.panFacilidad.Controls.Add((Control) this.metroLabel12);
    this.panFacilidad.Controls.Add((Control) this.txtDecaFapa);
    this.panFacilidad.Controls.Add((Control) this.metroLabel13);
    this.panFacilidad.Controls.Add((Control) this.txtRecaFapa);
    this.panFacilidad.Controls.Add((Control) this.metroLabel8);
    this.panFacilidad.Controls.Add((Control) this.txtCapiFapa);
    this.panFacilidad.Controls.Add((Control) this.lblCap);
    this.panFacilidad.Controls.Add((Control) this.txtEstaFapa);
    this.panFacilidad.Controls.Add((Control) this.labelEs);
    this.panFacilidad.Controls.Add((Control) this.txtTipoPlan);
    this.panFacilidad.Controls.Add((Control) this.metroLabel1);
    this.panFacilidad.Controls.Add((Control) this.panFaciDerecho);
    this.panFacilidad.Dock = DockStyle.Fill;
    this.panFacilidad.Location = new Point(0, 0);
    this.panFacilidad.Name = "panFacilidad";
    this.panFacilidad.Size = new Size(1360, 267);
    this.panFacilidad.TabIndex = 0;
    this.txtTotaFapa.CausesValidation = false;
    this.txtTotaFapa.Location = new Point(82, 235);
    this.txtTotaFapa.Name = "txtTotaFapa";
    this.txtTotaFapa.ReadOnly = true;
    this.txtTotaFapa.Size = new Size((int) sbyte.MaxValue, 23);
    this.txtTotaFapa.TabIndex = 18;
    this.txtTotaFapa.TabStop = false;
    this.txtTotaFapa.TextAlign = HorizontalAlignment.Right;
    this.metroLabel14.AutoSize = false;
    this.metroLabel14.Location = new Point(6, 235);
    this.metroLabel14.Name = "metroLabel14";
    this.metroLabel14.Size = new Size(45, 19);
    this.metroLabel14.TabIndex = 19;
    this.metroLabel14.Text = "TOTAL";
    this.txtInteFapa.CausesValidation = false;
    this.txtInteFapa.Location = new Point(82, 206);
    this.txtInteFapa.Name = "txtInteFapa";
    this.txtInteFapa.ReadOnly = true;
    this.txtInteFapa.Size = new Size((int) sbyte.MaxValue, 23);
    this.txtInteFapa.TabIndex = 16 /*0x10*/;
    this.txtInteFapa.TabStop = false;
    this.txtInteFapa.TextAlign = HorizontalAlignment.Right;
    this.metroLabel10.AutoSize = false;
    this.metroLabel10.Location = new Point(7, 206);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(47, 19);
    this.metroLabel10.TabIndex = 17;
    this.metroLabel10.Text = "Interes";
    this.txtApreFapa.CausesValidation = false;
    this.txtApreFapa.Location = new Point(82, 177);
    this.txtApreFapa.Name = "txtApreFapa";
    this.txtApreFapa.ReadOnly = true;
    this.txtApreFapa.Size = new Size((int) sbyte.MaxValue, 23);
    this.txtApreFapa.TabIndex = 14;
    this.txtApreFapa.TabStop = false;
    this.txtApreFapa.TextAlign = HorizontalAlignment.Right;
    this.metroLabel11.AutoSize = false;
    this.metroLabel11.Location = new Point(7, 177);
    this.metroLabel11.Name = "metroLabel11";
    this.metroLabel11.Size = new Size(61, 19);
    this.metroLabel11.TabIndex = 15;
    this.metroLabel11.Text = "Apremio";
    this.txtDereFapa.CausesValidation = false;
    this.txtDereFapa.Location = new Point(82, 149);
    this.txtDereFapa.Name = "txtDereFapa";
    this.txtDereFapa.ReadOnly = true;
    this.txtDereFapa.Size = new Size((int) sbyte.MaxValue, 23);
    this.txtDereFapa.TabIndex = 12;
    this.txtDereFapa.TabStop = false;
    this.txtDereFapa.TextAlign = HorizontalAlignment.Right;
    this.metroLabel12.AutoSize = false;
    this.metroLabel12.Location = new Point(7, 149);
    this.metroLabel12.Name = "metroLabel12";
    this.metroLabel12.Size = new Size(67, 19);
    this.metroLabel12.TabIndex = 13;
    this.metroLabel12.Text = "Desc. Rec.";
    this.txtDecaFapa.CausesValidation = false;
    this.txtDecaFapa.Location = new Point(82, 120);
    this.txtDecaFapa.Name = "txtDecaFapa";
    this.txtDecaFapa.ReadOnly = true;
    this.txtDecaFapa.Size = new Size((int) sbyte.MaxValue, 23);
    this.txtDecaFapa.TabIndex = 10;
    this.txtDecaFapa.TabStop = false;
    this.txtDecaFapa.TextAlign = HorizontalAlignment.Right;
    this.metroLabel13.AutoSize = false;
    this.metroLabel13.Location = new Point(7, 120);
    this.metroLabel13.Name = "metroLabel13";
    this.metroLabel13.Size = new Size(70, 19);
    this.metroLabel13.TabIndex = 11;
    this.metroLabel13.Text = "Desc. Cap.";
    this.txtRecaFapa.CausesValidation = false;
    this.txtRecaFapa.Location = new Point(82, 92);
    this.txtRecaFapa.Name = "txtRecaFapa";
    this.txtRecaFapa.ReadOnly = true;
    this.txtRecaFapa.Size = new Size((int) sbyte.MaxValue, 23);
    this.txtRecaFapa.TabIndex = 8;
    this.txtRecaFapa.TabStop = false;
    this.txtRecaFapa.TextAlign = HorizontalAlignment.Right;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(6, 92);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(58, 19);
    this.metroLabel8.TabIndex = 9;
    this.metroLabel8.Text = "Recargo";
    this.txtCapiFapa.CausesValidation = false;
    this.txtCapiFapa.Location = new Point(82, 63 /*0x3F*/);
    this.txtCapiFapa.Name = "txtCapiFapa";
    this.txtCapiFapa.ReadOnly = true;
    this.txtCapiFapa.Size = new Size((int) sbyte.MaxValue, 23);
    this.txtCapiFapa.TabIndex = 6;
    this.txtCapiFapa.TabStop = false;
    this.txtCapiFapa.TextAlign = HorizontalAlignment.Right;
    this.lblCap.AutoSize = false;
    this.lblCap.Location = new Point(6, 63 /*0x3F*/);
    this.lblCap.Name = "lblCap";
    this.lblCap.Size = new Size(50, 19);
    this.lblCap.TabIndex = 7;
    this.lblCap.Text = "Capital";
    this.txtEstaFapa.CausesValidation = false;
    this.txtEstaFapa.Location = new Point(82, 35);
    this.txtEstaFapa.Name = "txtEstaFapa";
    this.txtEstaFapa.ReadOnly = true;
    this.txtEstaFapa.Size = new Size((int) sbyte.MaxValue, 23);
    this.txtEstaFapa.TabIndex = 4;
    this.txtEstaFapa.TabStop = false;
    this.txtEstaFapa.TextAlign = HorizontalAlignment.Center;
    this.labelEs.AutoSize = false;
    this.labelEs.Location = new Point(6, 35);
    this.labelEs.Name = "labelEs";
    this.labelEs.Size = new Size(48 /*0x30*/, 19);
    this.labelEs.TabIndex = 5;
    this.labelEs.Text = "Estado";
    this.txtTipoPlan.CausesValidation = false;
    this.txtTipoPlan.Location = new Point(82, 6);
    this.txtTipoPlan.Name = "txtTipoPlan";
    this.txtTipoPlan.ReadOnly = true;
    this.txtTipoPlan.Size = new Size(223, 23);
    this.txtTipoPlan.TabIndex = 1;
    this.txtTipoPlan.TabStop = false;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(6, 6);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(64 /*0x40*/, 19);
    this.metroLabel1.TabIndex = 3;
    this.metroLabel1.Text = "Tipo Plan";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleLeft;
    this.panFaciDerecho.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
    this.panFaciDerecho.Controls.Add((Control) this.txtAltaUsua);
    this.panFaciDerecho.Controls.Add((Control) this.metroLabel7);
    this.panFaciDerecho.Controls.Add((Control) this.txtFealFapa);
    this.panFaciDerecho.Controls.Add((Control) this.label);
    this.panFaciDerecho.Controls.Add((Control) this.panFaciDerechoAbajo);
    this.panFaciDerecho.Location = new Point(314, 0);
    this.panFaciDerecho.Name = "panFaciDerecho";
    this.panFaciDerecho.Size = new Size(1046, 267);
    this.panFaciDerecho.TabIndex = 2;
    this.txtAltaUsua.CausesValidation = false;
    this.txtAltaUsua.Location = new Point(295, 6);
    this.txtAltaUsua.Name = "txtAltaUsua";
    this.txtAltaUsua.ReadOnly = true;
    this.txtAltaUsua.Size = new Size(140, 23);
    this.txtAltaUsua.TabIndex = 6;
    this.txtAltaUsua.TabStop = false;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(203, 6);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(80 /*0x50*/, 19);
    this.metroLabel7.TabIndex = 7;
    this.metroLabel7.Text = "Usuario Alta";
    this.txtFealFapa.CausesValidation = false;
    this.txtFealFapa.Location = new Point(82, 6);
    this.txtFealFapa.Name = "txtFealFapa";
    this.txtFealFapa.ReadOnly = true;
    this.txtFealFapa.Size = new Size(109, 23);
    this.txtFealFapa.TabIndex = 4;
    this.txtFealFapa.TabStop = false;
    this.txtFealFapa.TextAlign = HorizontalAlignment.Center;
    this.label.AutoSize = false;
    this.label.Location = new Point(6, 6);
    this.label.Name = "label";
    this.label.Size = new Size(70, 19);
    this.label.TabIndex = 5;
    this.label.Text = "Fecha Alta";
    this.panFaciDerechoAbajo.Controls.Add((Control) this.gridControlFaci);
    this.panFaciDerechoAbajo.Controls.Add((Control) this.metroLabel22);
    this.panFaciDerechoAbajo.Dock = DockStyle.Bottom;
    this.panFaciDerechoAbajo.Location = new Point(0, 38);
    this.panFaciDerechoAbajo.Name = "panFaciDerechoAbajo";
    this.panFaciDerechoAbajo.Size = new Size(1046, 229);
    this.panFaciDerechoAbajo.TabIndex = 2;
    ((Control) this.gridControlFaci).Dock = DockStyle.Fill;
    ((Control) this.gridControlFaci).Location = new Point(0, 19);
    this.gridControlFaci.MainView = (BaseView) this.gridViewFaci;
    ((Control) this.gridControlFaci).Name = "gridControlFaci";
    ((Control) this.gridControlFaci).Size = new Size(1046, 210);
    ((Control) this.gridControlFaci).TabIndex = 280;
    ((Control) this.gridControlFaci).TabStop = false;
    this.gridControlFaci.ViewCollection.AddRange(new BaseView[2]
    {
      (BaseView) this.gridViewFaci,
      (BaseView) this.gridView2
    });
    this.gridViewFaci.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewFaci.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewFaci).Columns.AddRange(new GridColumn[12]
    {
      this.colCuota,
      this.colEstaDefa,
      this.colFeve,
      this.colFepa,
      this.colCapi,
      this.colDeca,
      this.colReca,
      this.colDere,
      this.colApre,
      this.colInte,
      this.colRecMora,
      this.colTotal
    });
    this.gridViewFaci.FocusRectStyle = (DrawFocusRectStyle) 3;
    ((BaseView) this.gridViewFaci).GridControl = this.gridControlFaci;
    ((BaseView) this.gridViewFaci).Name = "gridViewFaci";
    ((ColumnViewOptionsBehavior) this.gridViewFaci.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewFaci.OptionsBehavior).ReadOnly = true;
    this.gridViewFaci.OptionsSelection.EnableAppearanceFocusedCell = false;
    this.gridViewFaci.OptionsView.ShowFooter = true;
    this.gridViewFaci.OptionsView.ShowGroupPanel = false;
    this.gridViewFaci.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colCuota.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuota.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuota.Caption = "Cuota";
    this.colCuota.FieldName = "CuotDefa";
    this.colCuota.MaxWidth = 40;
    this.colCuota.Name = "colCuota";
    this.colCuota.Visible = true;
    this.colCuota.VisibleIndex = 0;
    this.colCuota.Width = 30;
    this.colEstaDefa.Caption = "Estado";
    this.colEstaDefa.FieldName = "EstaDefa";
    this.colEstaDefa.Name = "colEstaDefa";
    this.colEstaDefa.Visible = true;
    this.colEstaDefa.VisibleIndex = 1;
    ((AppearanceOptions) this.colFeve.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFeve.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFeve.Caption = "Fecha Venc.";
    this.colFeve.DisplayFormat.FormatString = "dd/MM/yyyy";
    this.colFeve.DisplayFormat.FormatType = (FormatType) 2;
    this.colFeve.FieldName = "FeveDefa";
    this.colFeve.MaxWidth = 70;
    this.colFeve.MinWidth = 10;
    this.colFeve.Name = "colFeve";
    this.colFeve.Visible = true;
    this.colFeve.VisibleIndex = 2;
    this.colFeve.Width = 70;
    ((AppearanceOptions) this.colFepa.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFepa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFepa.Caption = "Fecha Pago";
    this.colFepa.FieldName = "FepaDefaStr";
    this.colFepa.MaxWidth = 70;
    this.colFepa.Name = "colFepa";
    this.colFepa.Visible = true;
    this.colFepa.VisibleIndex = 3;
    this.colFepa.Width = 70;
    ((AppearanceOptions) this.colCapi.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCapi.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCapi.Caption = "Capital";
    this.colCapi.DisplayFormat.FormatString = "{0:C2}";
    this.colCapi.DisplayFormat.FormatType = (FormatType) 3;
    this.colCapi.FieldName = "CapiDefa";
    this.colCapi.Name = "colCapi";
    ((GridSummaryItemCollection) this.colCapi.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "CapiDefa", "{0:C2}")
    });
    this.colCapi.Visible = true;
    this.colCapi.VisibleIndex = 4;
    ((AppearanceOptions) this.colDeca.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDeca.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDeca.Caption = "Desc. Capital";
    this.colDeca.DisplayFormat.FormatString = "{0:C2}";
    this.colDeca.DisplayFormat.FormatType = (FormatType) 3;
    this.colDeca.FieldName = "DecaDefa";
    this.colDeca.Name = "colDeca";
    ((GridSummaryItemCollection) this.colDeca.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "DecaDefa", "{0:C2}")
    });
    this.colDeca.Visible = true;
    this.colDeca.VisibleIndex = 5;
    ((AppearanceOptions) this.colReca.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colReca.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colReca.Caption = "Recargo";
    this.colReca.DisplayFormat.FormatString = "{0:C2}";
    this.colReca.DisplayFormat.FormatType = (FormatType) 3;
    this.colReca.FieldName = "RecaDefa";
    this.colReca.Name = "colReca";
    ((GridSummaryItemCollection) this.colReca.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "RecaDefa", "{0:C2}")
    });
    this.colReca.Visible = true;
    this.colReca.VisibleIndex = 6;
    ((AppearanceOptions) this.colDere.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDere.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDere.Caption = "Desc. Recargo";
    this.colDere.DisplayFormat.FormatString = "{0:C2}";
    this.colDere.DisplayFormat.FormatType = (FormatType) 3;
    this.colDere.FieldName = "DereDefa";
    this.colDere.Name = "colDere";
    ((GridSummaryItemCollection) this.colDere.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "DereDefa", "{0:C2}")
    });
    this.colDere.Visible = true;
    this.colDere.VisibleIndex = 7;
    ((AppearanceOptions) this.colApre.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colApre.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colApre.Caption = "Apremio";
    this.colApre.DisplayFormat.FormatString = "{0:C2}";
    this.colApre.DisplayFormat.FormatType = (FormatType) 3;
    this.colApre.FieldName = "ApreDefa";
    this.colApre.Name = "colApre";
    ((GridSummaryItemCollection) this.colApre.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "ApreDefa", "{0:C2}")
    });
    this.colApre.Visible = true;
    this.colApre.VisibleIndex = 8;
    ((AppearanceOptions) this.colInte.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colInte.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colInte.Caption = "Interes";
    this.colInte.DisplayFormat.FormatString = "{0:C2}";
    this.colInte.DisplayFormat.FormatType = (FormatType) 3;
    this.colInte.FieldName = "InteDefa";
    this.colInte.Name = "colInte";
    ((GridSummaryItemCollection) this.colInte.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "InteDefa", "{0:C2}")
    });
    this.colInte.Visible = true;
    this.colInte.VisibleIndex = 9;
    ((AppearanceOptions) this.colRecMora.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colRecMora.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colRecMora.Caption = "Rec. Mora";
    this.colRecMora.DisplayFormat.FormatString = "{0:C2}";
    this.colRecMora.DisplayFormat.FormatType = (FormatType) 3;
    this.colRecMora.FieldName = "RemoDefa";
    this.colRecMora.Name = "colRecMora";
    ((GridSummaryItemCollection) this.colRecMora.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "RemoDefa", "{0:C2}")
    });
    this.colRecMora.Visible = true;
    this.colRecMora.VisibleIndex = 10;
    ((AppearanceOptions) this.colTotal.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotal.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotal.Caption = "Total";
    this.colTotal.DisplayFormat.FormatString = "{0:C2}";
    this.colTotal.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotal.FieldName = "TotaDefa";
    this.colTotal.Name = "colTotal";
    ((GridSummaryItemCollection) this.colTotal.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "TotaDefa", "{0:C2}")
    });
    this.colTotal.Visible = true;
    this.colTotal.VisibleIndex = 11;
    ((BaseView) this.gridView2).GridControl = this.gridControlFaci;
    ((BaseView) this.gridView2).Name = "gridView2";
    this.metroLabel22.AutoSize = false;
    this.metroLabel22.Dock = DockStyle.Top;
    this.metroLabel22.FontSize = 15f;
    this.metroLabel22.FontWeight = MetroFontWeight.Bold;
    this.metroLabel22.Location = new Point(0, 0);
    this.metroLabel22.Name = "metroLabel22";
    this.metroLabel22.Size = new Size(1046, 19);
    this.metroLabel22.TabIndex = 281;
    this.metroLabel22.Text = "Detalle Cuotas";
    this.metroLabel22.TextAlign = ContentAlignment.MiddleCenter;
    ((NavigationPageBase) this.tabApre).Caption = "Apremio";
    ((Control) this.tabApre).Controls.Add((Control) this.panApremio);
    ((Control) this.tabApre).Name = "tabApre";
    ((NavigationPageBase) this.tabApre).Size = new Size(1360, 267);
    this.panApremio.Controls.Add((Control) this.panApreInferior);
    this.panApremio.Controls.Add((Control) this.panApreSuperior);
    this.panApremio.Dock = DockStyle.Fill;
    this.panApremio.Location = new Point(0, 0);
    this.panApremio.Name = "panApremio";
    this.panApremio.Size = new Size(1360, 267);
    this.panApremio.TabIndex = 0;
    this.panApreInferior.Controls.Add((Control) this.panGrillaApreDerecha);
    this.panApreInferior.Controls.Add((Control) this.panGrillaApre);
    this.panApreInferior.Dock = DockStyle.Fill;
    this.panApreInferior.Location = new Point(0, 98);
    this.panApreInferior.Name = "panApreInferior";
    this.panApreInferior.Size = new Size(1360, 169);
    this.panApreInferior.TabIndex = 3;
    this.panGrillaApreDerecha.Controls.Add((Control) this.gridControlBoap);
    this.panGrillaApreDerecha.Controls.Add((Control) this.metroLabel21);
    this.panGrillaApreDerecha.Dock = DockStyle.Fill;
    this.panGrillaApreDerecha.Location = new Point(296, 0);
    this.panGrillaApreDerecha.Name = "panGrillaApreDerecha";
    this.panGrillaApreDerecha.Size = new Size(1064, 169);
    this.panGrillaApreDerecha.TabIndex = 509;
    ((Control) this.gridControlBoap).Dock = DockStyle.Fill;
    ((Control) this.gridControlBoap).Location = new Point(0, 28);
    this.gridControlBoap.MainView = (BaseView) this.gridViewBoap;
    ((Control) this.gridControlBoap).Name = "gridControlBoap";
    ((Control) this.gridControlBoap).Size = new Size(1064, 141);
    ((Control) this.gridControlBoap).TabIndex = 508;
    this.gridControlBoap.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewBoap
    });
    this.gridViewBoap.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewBoap.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewBoap).Columns.AddRange(new GridColumn[11]
    {
      this.colBoleto,
      this.colEstado,
      this.colFealBoap,
      this.colCoadBoap,
      this.colApleBoap,
      this.colDefiBoap,
      this.colReseBoap,
      this.colHoreBoap,
      this.colHoofBoap,
      this.colMoreBoap,
      this.colMoofBoap
    });
    ((BaseView) this.gridViewBoap).GridControl = this.gridControlBoap;
    ((BaseView) this.gridViewBoap).Name = "gridViewBoap";
    ((ColumnViewOptionsBehavior) this.gridViewBoap.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewBoap.OptionsBehavior).ReadOnly = true;
    this.gridViewBoap.OptionsView.ShowGroupPanel = false;
    this.gridViewBoap.OptionsView.ShowIndicator = false;
    this.colBoleto.Caption = "Boleto";
    this.colBoleto.FieldName = "Boleto";
    this.colBoleto.Name = "colBoleto";
    this.colBoleto.Visible = true;
    this.colBoleto.VisibleIndex = 0;
    ((AppearanceOptions) this.colEstado.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colEstado.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colEstado.Caption = "Estado";
    this.colEstado.FieldName = "EstaBoap";
    this.colEstado.Name = "colEstado";
    this.colEstado.Visible = true;
    this.colEstado.VisibleIndex = 1;
    ((AppearanceOptions) this.colFealBoap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFealBoap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFealBoap.Caption = "Fecha Alta";
    this.colFealBoap.DisplayFormat.FormatString = "dd/MM/yyyy";
    this.colFealBoap.DisplayFormat.FormatType = (FormatType) 2;
    this.colFealBoap.FieldName = "FealBoap";
    this.colFealBoap.Name = "colFealBoap";
    this.colFealBoap.Visible = true;
    this.colFealBoap.VisibleIndex = 2;
    ((AppearanceOptions) this.colCoadBoap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCoadBoap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCoadBoap.Caption = "Com. Admin.";
    this.colCoadBoap.DisplayFormat.FormatString = "{0:C2}";
    this.colCoadBoap.DisplayFormat.FormatType = (FormatType) 3;
    this.colCoadBoap.FieldName = "CoadBoap";
    this.colCoadBoap.Name = "colCoadBoap";
    this.colCoadBoap.Visible = true;
    this.colCoadBoap.VisibleIndex = 3;
    ((AppearanceOptions) this.colApleBoap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colApleBoap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colApleBoap.Caption = "Aporte Ley";
    this.colApleBoap.DisplayFormat.FormatString = "{0:C2}";
    this.colApleBoap.DisplayFormat.FormatType = (FormatType) 3;
    this.colApleBoap.FieldName = "ApleBoap";
    this.colApleBoap.Name = "colApleBoap";
    this.colApleBoap.Visible = true;
    this.colApleBoap.VisibleIndex = 4;
    ((AppearanceOptions) this.colDefiBoap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDefiBoap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDefiBoap.Caption = "Der. Fijo";
    this.colDefiBoap.DisplayFormat.FormatString = "{0:C2}";
    this.colDefiBoap.DisplayFormat.FormatType = (FormatType) 3;
    this.colDefiBoap.FieldName = "DefiBoap";
    this.colDefiBoap.Name = "colDefiBoap";
    this.colDefiBoap.Visible = true;
    this.colDefiBoap.VisibleIndex = 5;
    ((AppearanceOptions) this.colReseBoap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colReseBoap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colReseBoap.Caption = "Tasa Just.";
    this.colReseBoap.DisplayFormat.FormatString = "{0:C2}";
    this.colReseBoap.DisplayFormat.FormatType = (FormatType) 3;
    this.colReseBoap.FieldName = "ReseBoap";
    this.colReseBoap.Name = "colReseBoap";
    this.colReseBoap.Visible = true;
    this.colReseBoap.VisibleIndex = 6;
    ((AppearanceOptions) this.colHoreBoap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colHoreBoap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colHoreBoap.Caption = "Hon. Reca.";
    this.colHoreBoap.DisplayFormat.FormatString = "{0:C2}";
    this.colHoreBoap.DisplayFormat.FormatType = (FormatType) 3;
    this.colHoreBoap.FieldName = "HoreBoap";
    this.colHoreBoap.Name = "colHoreBoap";
    this.colHoreBoap.Visible = true;
    this.colHoreBoap.VisibleIndex = 7;
    ((AppearanceOptions) this.colHoofBoap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colHoofBoap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colHoofBoap.Caption = "Hon. Ofic.";
    this.colHoofBoap.DisplayFormat.FormatString = "{0:C2}";
    this.colHoofBoap.DisplayFormat.FormatType = (FormatType) 3;
    this.colHoofBoap.FieldName = "HoofBoap";
    this.colHoofBoap.Name = "colHoofBoap";
    this.colHoofBoap.Visible = true;
    this.colHoofBoap.VisibleIndex = 8;
    ((AppearanceOptions) this.colMoreBoap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colMoreBoap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colMoreBoap.Caption = "Mov. Reca.";
    this.colMoreBoap.DisplayFormat.FormatString = "{0:C2}";
    this.colMoreBoap.DisplayFormat.FormatType = (FormatType) 3;
    this.colMoreBoap.FieldName = "MoreBoap";
    this.colMoreBoap.Name = "colMoreBoap";
    this.colMoreBoap.Visible = true;
    this.colMoreBoap.VisibleIndex = 9;
    ((AppearanceOptions) this.colMoofBoap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colMoofBoap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colMoofBoap.Caption = "Mov. Ofic.";
    this.colMoofBoap.DisplayFormat.FormatString = "{0:C2}";
    this.colMoofBoap.DisplayFormat.FormatType = (FormatType) 3;
    this.colMoofBoap.FieldName = "MoofBoap";
    this.colMoofBoap.Name = "colMoofBoap";
    this.colMoofBoap.Visible = true;
    this.colMoofBoap.VisibleIndex = 10;
    this.metroLabel21.AutoSize = false;
    this.metroLabel21.Dock = DockStyle.Top;
    this.metroLabel21.FontSize = 15f;
    this.metroLabel21.FontWeight = MetroFontWeight.Bold;
    this.metroLabel21.Location = new Point(0, 0);
    this.metroLabel21.Name = "metroLabel21";
    this.metroLabel21.Size = new Size(1064, 28);
    this.metroLabel21.TabIndex = 509;
    this.metroLabel21.Text = "Boletos Apremio";
    this.metroLabel21.TextAlign = ContentAlignment.MiddleCenter;
    this.panGrillaApre.Controls.Add((Control) this.gridControlInstApre);
    this.panGrillaApre.Controls.Add((Control) this.metroLabel3);
    this.panGrillaApre.Dock = DockStyle.Left;
    this.panGrillaApre.Location = new Point(0, 0);
    this.panGrillaApre.Name = "panGrillaApre";
    this.panGrillaApre.Size = new Size(296, 169);
    this.panGrillaApre.TabIndex = 508;
    ((Control) this.gridControlInstApre).Dock = DockStyle.Fill;
    ((Control) this.gridControlInstApre).Location = new Point(0, 28);
    this.gridControlInstApre.MainView = (BaseView) this.gridViewInstApre;
    ((Control) this.gridControlInstApre).Name = "gridControlInstApre";
    ((Control) this.gridControlInstApre).Size = new Size(296, 141);
    ((Control) this.gridControlInstApre).TabIndex = 506;
    this.gridControlInstApre.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewInstApre
    });
    this.gridViewInstApre.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewInstApre.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewInstApre).Columns.AddRange(new GridColumn[3]
    {
      this.colNumeInst,
      this.colFechAlta,
      this.colDetaInst
    });
    ((BaseView) this.gridViewInstApre).GridControl = this.gridControlInstApre;
    ((BaseView) this.gridViewInstApre).Name = "gridViewInstApre";
    ((ColumnViewOptionsBehavior) this.gridViewInstApre.OptionsBehavior).AllowAddRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewInstApre.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewInstApre.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewInstApre.OptionsBehavior).ReadOnly = true;
    this.gridViewInstApre.OptionsView.ShowGroupPanel = false;
    this.gridViewInstApre.OptionsView.ShowIndicator = false;
    ((BaseView) this.gridViewInstApre).ViewCaption = "Instancia";
    ((AppearanceOptions) this.colNumeInst.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNumeInst.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNumeInst.Caption = "N° Inst.";
    this.colNumeInst.FieldName = "CodiInju";
    this.colNumeInst.MaxWidth = 65;
    this.colNumeInst.Name = "colNumeInst";
    this.colNumeInst.Visible = true;
    this.colNumeInst.VisibleIndex = 0;
    this.colNumeInst.Width = 50;
    ((AppearanceOptions) this.colFechAlta.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFechAlta.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFechAlta.Caption = "Fecha Alta";
    this.colFechAlta.DisplayFormat.FormatString = "dd/MM/yyyy";
    this.colFechAlta.DisplayFormat.FormatType = (FormatType) 2;
    this.colFechAlta.FieldName = "FealInap";
    this.colFechAlta.MaxWidth = 80 /*0x50*/;
    this.colFechAlta.Name = "colFechAlta";
    this.colFechAlta.Visible = true;
    this.colFechAlta.VisibleIndex = 1;
    this.colDetaInst.Caption = "Detalle";
    this.colDetaInst.FieldName = "DetaInju";
    this.colDetaInst.Name = "colDetaInst";
    this.colDetaInst.Visible = true;
    this.colDetaInst.VisibleIndex = 2;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Dock = DockStyle.Top;
    this.metroLabel3.FontSize = 15f;
    this.metroLabel3.FontWeight = MetroFontWeight.Bold;
    this.metroLabel3.Location = new Point(0, 0);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(296, 28);
    this.metroLabel3.TabIndex = 2;
    this.metroLabel3.Text = "Instancias";
    this.metroLabel3.TextAlign = ContentAlignment.MiddleCenter;
    this.panApreSuperior.Controls.Add((Control) this.txtTotaApre);
    this.panApreSuperior.Controls.Add((Control) this.metroLabel20);
    this.panApreSuperior.Controls.Add((Control) this.txtRecaApre);
    this.panApreSuperior.Controls.Add((Control) this.metroLabel19);
    this.panApreSuperior.Controls.Add((Control) this.txtCapiApre);
    this.panApreSuperior.Controls.Add((Control) this.metroLabel18);
    this.panApreSuperior.Controls.Add((Control) this.txtOfjuApre);
    this.panApreSuperior.Controls.Add((Control) this.metroLabel17);
    this.panApreSuperior.Controls.Add((Control) this.txtRecaudadorApre);
    this.panApreSuperior.Controls.Add((Control) this.metroLabel16);
    this.panApreSuperior.Controls.Add((Control) this.txtEstaApre);
    this.panApreSuperior.Controls.Add((Control) this.metroLabel15);
    this.panApreSuperior.Controls.Add((Control) this.txtFealApre);
    this.panApreSuperior.Controls.Add((Control) this.metroLabel9);
    this.panApreSuperior.Controls.Add((Control) this.txtAutoApre);
    this.panApreSuperior.Controls.Add((Control) this.metroLabel2);
    this.panApreSuperior.Dock = DockStyle.Top;
    this.panApreSuperior.Location = new Point(0, 0);
    this.panApreSuperior.Name = "panApreSuperior";
    this.panApreSuperior.Size = new Size(1360, 98);
    this.panApreSuperior.TabIndex = 2;
    this.txtTotaApre.CausesValidation = false;
    this.txtTotaApre.Location = new Point(680, 69);
    this.txtTotaApre.Name = "txtTotaApre";
    this.txtTotaApre.ReadOnly = true;
    this.txtTotaApre.Size = new Size(138, 23);
    this.txtTotaApre.TabIndex = 18;
    this.txtTotaApre.TabStop = false;
    this.txtTotaApre.TextAlign = HorizontalAlignment.Right;
    this.metroLabel20.AutoSize = false;
    this.metroLabel20.Location = new Point(623, 68);
    this.metroLabel20.Name = "metroLabel20";
    this.metroLabel20.Size = new Size(45, 19);
    this.metroLabel20.TabIndex = 19;
    this.metroLabel20.Text = "TOTAL";
    this.metroLabel20.TextAlign = ContentAlignment.MiddleLeft;
    this.txtRecaApre.CausesValidation = false;
    this.txtRecaApre.Location = new Point(680, 37);
    this.txtRecaApre.Name = "txtRecaApre";
    this.txtRecaApre.ReadOnly = true;
    this.txtRecaApre.Size = new Size(138, 23);
    this.txtRecaApre.TabIndex = 16 /*0x10*/;
    this.txtRecaApre.TabStop = false;
    this.txtRecaApre.TextAlign = HorizontalAlignment.Right;
    this.metroLabel19.AutoSize = false;
    this.metroLabel19.Location = new Point(610, 37);
    this.metroLabel19.Name = "metroLabel19";
    this.metroLabel19.Size = new Size(58, 19);
    this.metroLabel19.TabIndex = 17;
    this.metroLabel19.Text = "Recargo";
    this.metroLabel19.TextAlign = ContentAlignment.MiddleLeft;
    this.txtCapiApre.CausesValidation = false;
    this.txtCapiApre.Location = new Point(680, 6);
    this.txtCapiApre.Name = "txtCapiApre";
    this.txtCapiApre.ReadOnly = true;
    this.txtCapiApre.Size = new Size(138, 23);
    this.txtCapiApre.TabIndex = 14;
    this.txtCapiApre.TabStop = false;
    this.txtCapiApre.TextAlign = HorizontalAlignment.Right;
    this.metroLabel18.AutoSize = false;
    this.metroLabel18.Location = new Point(618, 6);
    this.metroLabel18.Name = "metroLabel18";
    this.metroLabel18.Size = new Size(50, 19);
    this.metroLabel18.TabIndex = 15;
    this.metroLabel18.Text = "Capital";
    this.metroLabel18.TextAlign = ContentAlignment.MiddleLeft;
    this.txtOfjuApre.CausesValidation = false;
    this.txtOfjuApre.Location = new Point(409, 37);
    this.txtOfjuApre.Name = "txtOfjuApre";
    this.txtOfjuApre.ReadOnly = true;
    this.txtOfjuApre.Size = new Size(189, 23);
    this.txtOfjuApre.TabIndex = 12;
    this.txtOfjuApre.TabStop = false;
    this.metroLabel17.AutoSize = false;
    this.metroLabel17.Location = new Point(288, 37);
    this.metroLabel17.Name = "metroLabel17";
    this.metroLabel17.Size = new Size(109, 19);
    this.metroLabel17.TabIndex = 13;
    this.metroLabel17.Text = "Oficial de Justicia";
    this.metroLabel17.TextAlign = ContentAlignment.MiddleLeft;
    this.txtRecaudadorApre.CausesValidation = false;
    this.txtRecaudadorApre.Location = new Point(409, 6);
    this.txtRecaudadorApre.Name = "txtRecaudadorApre";
    this.txtRecaudadorApre.ReadOnly = true;
    this.txtRecaudadorApre.Size = new Size(189, 23);
    this.txtRecaudadorApre.TabIndex = 10;
    this.txtRecaudadorApre.TabStop = false;
    this.metroLabel16.AutoSize = false;
    this.metroLabel16.Location = new Point(317, 6);
    this.metroLabel16.Name = "metroLabel16";
    this.metroLabel16.Size = new Size(80 /*0x50*/, 19);
    this.metroLabel16.TabIndex = 11;
    this.metroLabel16.Text = "Recaudador";
    this.metroLabel16.TextAlign = ContentAlignment.MiddleLeft;
    this.txtEstaApre.CausesValidation = false;
    this.txtEstaApre.Location = new Point(94, 69);
    this.txtEstaApre.Name = "txtEstaApre";
    this.txtEstaApre.ReadOnly = true;
    this.txtEstaApre.Size = new Size(173, 23);
    this.txtEstaApre.TabIndex = 8;
    this.txtEstaApre.TabStop = false;
    this.metroLabel15.AutoSize = false;
    this.metroLabel15.Location = new Point(34, 68);
    this.metroLabel15.Name = "metroLabel15";
    this.metroLabel15.Size = new Size(48 /*0x30*/, 19);
    this.metroLabel15.TabIndex = 9;
    this.metroLabel15.Text = "Estado";
    this.metroLabel15.TextAlign = ContentAlignment.MiddleLeft;
    this.txtFealApre.CausesValidation = false;
    this.txtFealApre.Location = new Point(94, 37);
    this.txtFealApre.Name = "txtFealApre";
    this.txtFealApre.ReadOnly = true;
    this.txtFealApre.Size = new Size(95, 23);
    this.txtFealApre.TabIndex = 6;
    this.txtFealApre.TabStop = false;
    this.txtFealApre.TextAlign = HorizontalAlignment.Center;
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(12, 37);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(70, 19);
    this.metroLabel9.TabIndex = 7;
    this.metroLabel9.Text = "Fecha Alta";
    this.metroLabel9.TextAlign = ContentAlignment.MiddleLeft;
    this.txtAutoApre.CausesValidation = false;
    this.txtAutoApre.Location = new Point(94, 6);
    this.txtAutoApre.Name = "txtAutoApre";
    this.txtAutoApre.ReadOnly = true;
    this.txtAutoApre.Size = new Size(95, 23);
    this.txtAutoApre.TabIndex = 4;
    this.txtAutoApre.TabStop = false;
    this.txtAutoApre.TextAlign = HorizontalAlignment.Center;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(26, 6);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(56, 19);
    this.metroLabel2.TabIndex = 5;
    this.metroLabel2.Text = "N° Auto";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleLeft;
    ((NavigationPageBase) this.tabDatoBole).Caption = "Datos del Boleto";
    ((Control) this.tabDatoBole).Controls.Add((Control) this.panDatoBole);
    ((Control) this.tabDatoBole).Name = "tabDatoBole";
    ((NavigationPageBase) this.tabDatoBole).Size = new Size(1360, 267);
    this.panDatoBole.Controls.Add((Control) this.panDatoBoleInferior);
    this.panDatoBole.Controls.Add((Control) this.panDatoBoleSup);
    this.panDatoBole.Dock = DockStyle.Fill;
    this.panDatoBole.Location = new Point(0, 0);
    this.panDatoBole.Name = "panDatoBole";
    this.panDatoBole.Size = new Size(1360, 267);
    this.panDatoBole.TabIndex = 0;
    this.panDatoBoleInferior.Controls.Add((Control) this.panDatoBolePagos);
    this.panDatoBoleInferior.Controls.Add((Control) this.panDatoBoleLiquida);
    this.panDatoBoleInferior.Dock = DockStyle.Fill;
    this.panDatoBoleInferior.Location = new Point(0, 142);
    this.panDatoBoleInferior.Name = "panDatoBoleInferior";
    this.panDatoBoleInferior.Size = new Size(1360, 125);
    this.panDatoBoleInferior.TabIndex = 3;
    this.panDatoBolePagos.Controls.Add((Control) this.gridControlDetaPago);
    this.panDatoBolePagos.Controls.Add((Control) this.metroLabel24);
    this.panDatoBolePagos.Dock = DockStyle.Fill;
    this.panDatoBolePagos.Location = new Point(643, 0);
    this.panDatoBolePagos.Name = "panDatoBolePagos";
    this.panDatoBolePagos.Size = new Size(717, 125);
    this.panDatoBolePagos.TabIndex = 3;
    ((Control) this.gridControlDetaPago).Dock = DockStyle.Fill;
    ((Control) this.gridControlDetaPago).Location = new Point(0, 28);
    this.gridControlDetaPago.MainView = (BaseView) this.gridViewDetaPago;
    ((Control) this.gridControlDetaPago).Name = "gridControlDetaPago";
    ((Control) this.gridControlDetaPago).Size = new Size(717, 97);
    ((Control) this.gridControlDetaPago).TabIndex = 512 /*0x0200*/;
    this.gridControlDetaPago.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewDetaPago
    });
    this.gridViewDetaPago.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewDetaPago.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewDetaPago).Columns.AddRange(new GridColumn[10]
    {
      this.colPeriodo,
      this.colBime,
      this.colConcepto,
      this.colCapital,
      this.colDesCap,
      this.colRecargo,
      this.colDescReca,
      this.colInteres,
      this.colApremio,
      this.colTotaPago
    });
    ((BaseView) this.gridViewDetaPago).GridControl = this.gridControlDetaPago;
    ((BaseView) this.gridViewDetaPago).Name = "gridViewDetaPago";
    ((ColumnViewOptionsBehavior) this.gridViewDetaPago.OptionsBehavior).AllowAddRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewDetaPago.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewDetaPago.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewDetaPago.OptionsBehavior).ReadOnly = true;
    this.gridViewDetaPago.OptionsView.ShowGroupPanel = false;
    this.gridViewDetaPago.OptionsView.ShowIndicator = false;
    ((BaseView) this.gridViewDetaPago).ViewCaption = "Instancia";
    ((AppearanceOptions) this.colPeriodo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeriodo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeriodo.Caption = "Periodo";
    this.colPeriodo.FieldName = "PeriCtct";
    this.colPeriodo.MaxWidth = 50;
    this.colPeriodo.Name = "colPeriodo";
    this.colPeriodo.Visible = true;
    this.colPeriodo.VisibleIndex = 0;
    this.colPeriodo.Width = 50;
    ((AppearanceOptions) this.colBime.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colBime.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colBime.Caption = "Bimestre";
    this.colBime.FieldName = "BimeCtct";
    this.colBime.MaxWidth = 50;
    this.colBime.Name = "colBime";
    this.colBime.Visible = true;
    this.colBime.VisibleIndex = 1;
    this.colBime.Width = 50;
    this.colConcepto.Caption = "Concepto";
    this.colConcepto.FieldName = "DetaConc";
    this.colConcepto.Name = "colConcepto";
    this.colConcepto.Visible = true;
    this.colConcepto.VisibleIndex = 2;
    this.colConcepto.Width = 80 /*0x50*/;
    ((AppearanceOptions) this.colCapital.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCapital.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCapital.Caption = "Capital";
    this.colCapital.DisplayFormat.FormatString = "{0:C2}";
    this.colCapital.DisplayFormat.FormatType = (FormatType) 3;
    this.colCapital.FieldName = "CapiDepa";
    this.colCapital.MaxWidth = 100;
    this.colCapital.Name = "colCapital";
    this.colCapital.Visible = true;
    this.colCapital.VisibleIndex = 3;
    this.colCapital.Width = 100;
    ((AppearanceOptions) this.colDesCap.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDesCap.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDesCap.Caption = "Desc. Capital";
    this.colDesCap.DisplayFormat.FormatString = "{0:C2}";
    this.colDesCap.DisplayFormat.FormatType = (FormatType) 3;
    this.colDesCap.FieldName = "DecaDepa";
    this.colDesCap.MaxWidth = 100;
    this.colDesCap.Name = "colDesCap";
    this.colDesCap.Visible = true;
    this.colDesCap.VisibleIndex = 4;
    this.colDesCap.Width = 100;
    ((AppearanceOptions) this.colRecargo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colRecargo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colRecargo.Caption = "Recargo";
    this.colRecargo.DisplayFormat.FormatString = "{0:C2}";
    this.colRecargo.DisplayFormat.FormatType = (FormatType) 3;
    this.colRecargo.FieldName = "RecaDepa";
    this.colRecargo.MaxWidth = 100;
    this.colRecargo.Name = "colRecargo";
    this.colRecargo.Visible = true;
    this.colRecargo.VisibleIndex = 5;
    this.colRecargo.Width = 81;
    ((AppearanceOptions) this.colDescReca.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colDescReca.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colDescReca.Caption = "Desc. Recargo";
    this.colDescReca.DisplayFormat.FormatString = "{0:C2}";
    this.colDescReca.DisplayFormat.FormatType = (FormatType) 3;
    this.colDescReca.FieldName = "DereDepa";
    this.colDescReca.MaxWidth = 100;
    this.colDescReca.Name = "colDescReca";
    this.colDescReca.Visible = true;
    this.colDescReca.VisibleIndex = 6;
    this.colDescReca.Width = 81;
    ((AppearanceOptions) this.colInteres.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colInteres.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colInteres.Caption = "Interes";
    this.colInteres.DisplayFormat.FormatString = "{0:C2}";
    this.colInteres.DisplayFormat.FormatType = (FormatType) 3;
    this.colInteres.FieldName = "InteDepa";
    this.colInteres.MaxWidth = 100;
    this.colInteres.Name = "colInteres";
    this.colInteres.Visible = true;
    this.colInteres.VisibleIndex = 7;
    this.colInteres.Width = 81;
    ((AppearanceOptions) this.colApremio.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colApremio.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colApremio.Caption = "Apremio";
    this.colApremio.DisplayFormat.FormatString = "{0:C2}";
    this.colApremio.DisplayFormat.FormatType = (FormatType) 3;
    this.colApremio.FieldName = "ApreDepa";
    this.colApremio.MaxWidth = 100;
    this.colApremio.Name = "colApremio";
    this.colApremio.Visible = true;
    this.colApremio.VisibleIndex = 8;
    this.colApremio.Width = 81;
    ((AppearanceOptions) this.colTotaPago.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colTotaPago.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colTotaPago.Caption = "Total";
    this.colTotaPago.DisplayFormat.FormatString = "{0:C2}";
    this.colTotaPago.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotaPago.FieldName = "TotaDepa";
    this.colTotaPago.MaxWidth = 100;
    this.colTotaPago.Name = "colTotaPago";
    this.colTotaPago.Visible = true;
    this.colTotaPago.VisibleIndex = 9;
    this.colTotaPago.Width = 100;
    this.metroLabel24.AutoSize = false;
    this.metroLabel24.Dock = DockStyle.Top;
    this.metroLabel24.FontSize = 15f;
    this.metroLabel24.FontWeight = MetroFontWeight.Bold;
    this.metroLabel24.Location = new Point(0, 0);
    this.metroLabel24.Name = "metroLabel24";
    this.metroLabel24.Size = new Size(717, 28);
    this.metroLabel24.TabIndex = 511 /*0x01FF*/;
    this.metroLabel24.Text = "Detalle del Pago";
    this.metroLabel24.TextAlign = ContentAlignment.MiddleCenter;
    this.panDatoBoleLiquida.Controls.Add((Control) this.gridControlDetaBoleLiq);
    this.panDatoBoleLiquida.Controls.Add((Control) this.metroLabel23);
    this.panDatoBoleLiquida.Dock = DockStyle.Left;
    this.panDatoBoleLiquida.Location = new Point(0, 0);
    this.panDatoBoleLiquida.Name = "panDatoBoleLiquida";
    this.panDatoBoleLiquida.Size = new Size(643, 125);
    this.panDatoBoleLiquida.TabIndex = 2;
    ((Control) this.gridControlDetaBoleLiq).Dock = DockStyle.Fill;
    ((Control) this.gridControlDetaBoleLiq).Location = new Point(0, 28);
    this.gridControlDetaBoleLiq.MainView = (BaseView) this.gridViewDetaBoleLiq;
    ((Control) this.gridControlDetaBoleLiq).Name = "gridControlDetaBoleLiq";
    ((Control) this.gridControlDetaBoleLiq).Size = new Size(643, 97);
    ((Control) this.gridControlDetaBoleLiq).TabIndex = 511 /*0x01FF*/;
    this.gridControlDetaBoleLiq.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewDetaBoleLiq
    });
    this.gridViewDetaBoleLiq.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewDetaBoleLiq.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewDetaBoleLiq).Columns.AddRange(new GridColumn[6]
    {
      this.colCodigo,
      this.colDetalle,
      this.colImporte,
      this.colDescuento,
      this.colExencion,
      this.colTotaBoleLiqu
    });
    ((BaseView) this.gridViewDetaBoleLiq).GridControl = this.gridControlDetaBoleLiq;
    ((BaseView) this.gridViewDetaBoleLiq).Name = "gridViewDetaBoleLiq";
    ((ColumnViewOptionsBehavior) this.gridViewDetaBoleLiq.OptionsBehavior).AllowAddRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewDetaBoleLiq.OptionsBehavior).AllowDeleteRows = (DefaultBoolean) 1;
    ((ColumnViewOptionsBehavior) this.gridViewDetaBoleLiq.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewDetaBoleLiq.OptionsBehavior).ReadOnly = true;
    this.gridViewDetaBoleLiq.OptionsView.ShowGroupPanel = false;
    this.gridViewDetaBoleLiq.OptionsView.ShowIndicator = false;
    ((BaseView) this.gridViewDetaBoleLiq).ViewCaption = "Instancia";
    ((AppearanceOptions) this.colCodigo.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCodigo.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCodigo.Caption = "Código";
    this.colCodigo.FieldName = "Codigo";
    this.colCodigo.MaxWidth = 65;
    this.colCodigo.Name = "colCodigo";
    this.colCodigo.Visible = true;
    this.colCodigo.VisibleIndex = 0;
    this.colCodigo.Width = 50;
    this.colDetalle.Caption = "Detalle";
    this.colDetalle.FieldName = "Detalle";
    this.colDetalle.Name = "colDetalle";
    this.colDetalle.Visible = true;
    this.colDetalle.VisibleIndex = 1;
    ((AppearanceOptions) this.colImporte.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colImporte.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colImporte.Caption = "Importe";
    this.colImporte.DisplayFormat.FormatString = "{0:C2}";
    this.colImporte.DisplayFormat.FormatType = (FormatType) 3;
    this.colImporte.FieldName = "Importe";
    this.colImporte.MaxWidth = 80 /*0x50*/;
    this.colImporte.Name = "colImporte";
    this.colImporte.Visible = true;
    this.colImporte.VisibleIndex = 2;
    this.colDescuento.Caption = "Descuento";
    this.colDescuento.DisplayFormat.FormatString = "{0:C2}";
    this.colDescuento.DisplayFormat.FormatType = (FormatType) 3;
    this.colDescuento.FieldName = "Descuento";
    this.colDescuento.MaxWidth = 80 /*0x50*/;
    this.colDescuento.Name = "colDescuento";
    this.colDescuento.Visible = true;
    this.colDescuento.VisibleIndex = 3;
    this.colExencion.Caption = "Exención";
    this.colExencion.DisplayFormat.FormatString = "{0:C2}";
    this.colExencion.DisplayFormat.FormatType = (FormatType) 3;
    this.colExencion.FieldName = "Exencion";
    this.colExencion.MaxWidth = 80 /*0x50*/;
    this.colExencion.Name = "colExencion";
    this.colExencion.Visible = true;
    this.colExencion.VisibleIndex = 4;
    this.colTotaBoleLiqu.Caption = "Total";
    this.colTotaBoleLiqu.DisplayFormat.FormatString = "{0:C2}";
    this.colTotaBoleLiqu.DisplayFormat.FormatType = (FormatType) 3;
    this.colTotaBoleLiqu.FieldName = "Total";
    this.colTotaBoleLiqu.MaxWidth = 80 /*0x50*/;
    this.colTotaBoleLiqu.Name = "colTotaBoleLiqu";
    this.colTotaBoleLiqu.Visible = true;
    this.colTotaBoleLiqu.VisibleIndex = 5;
    this.metroLabel23.AutoSize = false;
    this.metroLabel23.Dock = DockStyle.Top;
    this.metroLabel23.FontSize = 15f;
    this.metroLabel23.FontWeight = MetroFontWeight.Bold;
    this.metroLabel23.Location = new Point(0, 0);
    this.metroLabel23.Name = "metroLabel23";
    this.metroLabel23.Size = new Size(643, 28);
    this.metroLabel23.TabIndex = 510;
    this.metroLabel23.Text = "Detalle del Boleto";
    this.metroLabel23.TextAlign = ContentAlignment.MiddleCenter;
    this.panDatoBoleSup.Controls.Add((Control) this.txtTota);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel46);
    this.panDatoBoleSup.Controls.Add((Control) this.txtApre);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel45);
    this.panDatoBoleSup.Controls.Add((Control) this.txtInte);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel44);
    this.panDatoBoleSup.Controls.Add((Control) this.txtDere);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel43);
    this.panDatoBoleSup.Controls.Add((Control) this.txtReca);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel42);
    this.panDatoBoleSup.Controls.Add((Control) this.txtDeca);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel41);
    this.panDatoBoleSup.Controls.Add((Control) this.txtCapi);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel40);
    this.panDatoBoleSup.Controls.Add((Control) this.txtCuota);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel39);
    this.panDatoBoleSup.Controls.Add((Control) this.txtFeac);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel38);
    this.panDatoBoleSup.Controls.Add((Control) this.txtFepa);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel37);
    this.panDatoBoleSup.Controls.Add((Control) this.txtGrupo);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel36);
    this.panDatoBoleSup.Controls.Add((Control) this.txtFeen);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel35);
    this.panDatoBoleSup.Controls.Add((Control) this.txtNumePlan);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel34);
    this.panDatoBoleSup.Controls.Add((Control) this.txtFeve);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel33);
    this.panDatoBoleSup.Controls.Add((Control) this.txtFeal);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel32);
    this.panDatoBoleSup.Controls.Add((Control) this.txtEstado);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel31);
    this.panDatoBoleSup.Controls.Add((Control) this.txtTipo);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel30);
    this.panDatoBoleSup.Controls.Add((Control) this.txtOrden);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel29);
    this.panDatoBoleSup.Controls.Add((Control) this.txtLiqu);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel28);
    this.panDatoBoleSup.Controls.Add((Control) this.txtUsuarioAlta);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel27);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel26);
    this.panDatoBoleSup.Controls.Add((Control) this.txtObseCtacte);
    this.panDatoBoleSup.Controls.Add((Control) this.txtConcepto);
    this.panDatoBoleSup.Controls.Add((Control) this.metroLabel25);
    this.panDatoBoleSup.Dock = DockStyle.Top;
    this.panDatoBoleSup.Location = new Point(0, 0);
    this.panDatoBoleSup.Name = "panDatoBoleSup";
    this.panDatoBoleSup.Size = new Size(1360, 142);
    this.panDatoBoleSup.TabIndex = 2;
    this.txtTota.CausesValidation = false;
    this.txtTota.Location = new Point(1056, 110);
    this.txtTota.Name = "txtTota";
    this.txtTota.ReadOnly = true;
    this.txtTota.Size = new Size(99, 23);
    this.txtTota.TabIndex = 53;
    this.txtTota.TabStop = false;
    this.txtTota.TextAlign = HorizontalAlignment.Right;
    this.metroLabel46.AutoSize = false;
    this.metroLabel46.Location = new Point(1018, 112 /*0x70*/);
    this.metroLabel46.Name = "metroLabel46";
    this.metroLabel46.Size = new Size(36, 19);
    this.metroLabel46.TabIndex = 52;
    this.metroLabel46.Text = "Total";
    this.txtApre.CausesValidation = false;
    this.txtApre.Location = new Point(917, 110);
    this.txtApre.Name = "txtApre";
    this.txtApre.ReadOnly = true;
    this.txtApre.Size = new Size(99, 23);
    this.txtApre.TabIndex = 51;
    this.txtApre.TabStop = false;
    this.txtApre.TextAlign = HorizontalAlignment.Right;
    this.metroLabel45.AutoSize = false;
    this.metroLabel45.Location = new Point(854, 112 /*0x70*/);
    this.metroLabel45.Name = "metroLabel45";
    this.metroLabel45.Size = new Size(61, 19);
    this.metroLabel45.TabIndex = 50;
    this.metroLabel45.Text = "Apremio";
    this.txtInte.CausesValidation = false;
    this.txtInte.Location = new Point(753, 110);
    this.txtInte.Name = "txtInte";
    this.txtInte.ReadOnly = true;
    this.txtInte.Size = new Size(99, 23);
    this.txtInte.TabIndex = 49;
    this.txtInte.TabStop = false;
    this.txtInte.TextAlign = HorizontalAlignment.Right;
    this.metroLabel44.AutoSize = false;
    this.metroLabel44.Location = new Point(704, 112 /*0x70*/);
    this.metroLabel44.Name = "metroLabel44";
    this.metroLabel44.Size = new Size(47, 19);
    this.metroLabel44.TabIndex = 48 /*0x30*/;
    this.metroLabel44.Text = "Interes";
    this.txtDere.CausesValidation = false;
    this.txtDere.Location = new Point(603, 110);
    this.txtDere.Name = "txtDere";
    this.txtDere.ReadOnly = true;
    this.txtDere.Size = new Size(99, 23);
    this.txtDere.TabIndex = 47;
    this.txtDere.TabStop = false;
    this.txtDere.TextAlign = HorizontalAlignment.Right;
    this.metroLabel43.AutoSize = false;
    this.metroLabel43.Location = new Point(534, 112 /*0x70*/);
    this.metroLabel43.Name = "metroLabel43";
    this.metroLabel43.Size = new Size(67, 19);
    this.metroLabel43.TabIndex = 46;
    this.metroLabel43.Text = "Desc. Rec.";
    this.txtReca.CausesValidation = false;
    this.txtReca.Location = new Point(433, 110);
    this.txtReca.Name = "txtReca";
    this.txtReca.ReadOnly = true;
    this.txtReca.Size = new Size(99, 23);
    this.txtReca.TabIndex = 45;
    this.txtReca.TabStop = false;
    this.txtReca.TextAlign = HorizontalAlignment.Right;
    this.metroLabel42.AutoSize = false;
    this.metroLabel42.Location = new Point(373, 112 /*0x70*/);
    this.metroLabel42.Name = "metroLabel42";
    this.metroLabel42.Size = new Size(58, 19);
    this.metroLabel42.TabIndex = 44;
    this.metroLabel42.Text = "Recargo";
    this.txtDeca.CausesValidation = false;
    this.txtDeca.Location = new Point(272, 110);
    this.txtDeca.Name = "txtDeca";
    this.txtDeca.ReadOnly = true;
    this.txtDeca.Size = new Size(99, 23);
    this.txtDeca.TabIndex = 43;
    this.txtDeca.TabStop = false;
    this.txtDeca.TextAlign = HorizontalAlignment.Right;
    this.metroLabel41.AutoSize = false;
    this.metroLabel41.Location = new Point(200, 112 /*0x70*/);
    this.metroLabel41.Name = "metroLabel41";
    this.metroLabel41.Size = new Size(70, 19);
    this.metroLabel41.TabIndex = 42;
    this.metroLabel41.Text = "Desc. Cap.";
    this.txtCapi.CausesValidation = false;
    this.txtCapi.Location = new Point(99, 110);
    this.txtCapi.Name = "txtCapi";
    this.txtCapi.ReadOnly = true;
    this.txtCapi.Size = new Size(99, 23);
    this.txtCapi.TabIndex = 41;
    this.txtCapi.TabStop = false;
    this.txtCapi.TextAlign = HorizontalAlignment.Right;
    this.metroLabel40.AutoSize = false;
    this.metroLabel40.Location = new Point(47, 112 /*0x70*/);
    this.metroLabel40.Name = "metroLabel40";
    this.metroLabel40.Size = new Size(50, 19);
    this.metroLabel40.TabIndex = 40;
    this.metroLabel40.Text = "Capital";
    this.txtCuota.CausesValidation = false;
    this.txtCuota.Location = new Point(851, 78);
    this.txtCuota.Name = "txtCuota";
    this.txtCuota.ReadOnly = true;
    this.txtCuota.Size = new Size(36, 23);
    this.txtCuota.TabIndex = 39;
    this.txtCuota.TabStop = false;
    this.txtCuota.TextAlign = HorizontalAlignment.Center;
    this.metroLabel39.AutoSize = false;
    this.metroLabel39.Location = new Point(776, 78);
    this.metroLabel39.Name = "metroLabel39";
    this.metroLabel39.Size = new Size(63 /*0x3F*/, 19);
    this.metroLabel39.TabIndex = 38;
    this.metroLabel39.Text = "N° Cuota";
    this.txtFeac.CausesValidation = false;
    this.txtFeac.Location = new Point(619, 76);
    this.txtFeac.Name = "txtFeac";
    this.txtFeac.ReadOnly = true;
    this.txtFeac.Size = new Size(85, 23);
    this.txtFeac.TabIndex = 37;
    this.txtFeac.TabStop = false;
    this.txtFeac.TextAlign = HorizontalAlignment.Center;
    this.metroLabel38.AutoSize = false;
    this.metroLabel38.Location = new Point(488, 78);
    this.metroLabel38.Name = "metroLabel38";
    this.metroLabel38.Size = new Size(123, 19);
    this.metroLabel38.TabIndex = 36;
    this.metroLabel38.Text = "Fecha Actualización";
    this.txtFepa.CausesValidation = false;
    this.txtFepa.Location = new Point(395, 76);
    this.txtFepa.Name = "txtFepa";
    this.txtFepa.ReadOnly = true;
    this.txtFepa.Size = new Size(85, 23);
    this.txtFepa.TabIndex = 35;
    this.txtFepa.TabStop = false;
    this.txtFepa.TextAlign = HorizontalAlignment.Center;
    this.metroLabel37.AutoSize = false;
    this.metroLabel37.Location = new Point(291, 78);
    this.metroLabel37.Name = "metroLabel37";
    this.metroLabel37.Size = new Size(96 /*0x60*/, 19);
    this.metroLabel37.TabIndex = 34;
    this.metroLabel37.Text = "Fecha de Pago";
    this.txtGrupo.CausesValidation = false;
    this.txtGrupo.Location = new Point(246, 76);
    this.txtGrupo.Name = "txtGrupo";
    this.txtGrupo.ReadOnly = true;
    this.txtGrupo.Size = new Size(37, 23);
    this.txtGrupo.TabIndex = 33;
    this.txtGrupo.TabStop = false;
    this.txtGrupo.TextAlign = HorizontalAlignment.Center;
    this.metroLabel36.AutoSize = false;
    this.metroLabel36.Location = new Point(192 /*0xC0*/, 78);
    this.metroLabel36.Name = "metroLabel36";
    this.metroLabel36.Size = new Size(46, 19);
    this.metroLabel36.TabIndex = 32 /*0x20*/;
    this.metroLabel36.Text = "Grupo";
    this.txtFeen.CausesValidation = false;
    this.txtFeen.Location = new Point(99, 76);
    this.txtFeen.Name = "txtFeen";
    this.txtFeen.ReadOnly = true;
    this.txtFeen.Size = new Size(85, 23);
    this.txtFeen.TabIndex = 31 /*0x1F*/;
    this.txtFeen.TabStop = false;
    this.txtFeen.TextAlign = HorizontalAlignment.Center;
    this.metroLabel35.AutoSize = false;
    this.metroLabel35.Location = new Point(13, 78);
    this.metroLabel35.Name = "metroLabel35";
    this.metroLabel35.Size = new Size(78, 19);
    this.metroLabel35.TabIndex = 30;
    this.metroLabel35.Text = "Fecha Envío";
    this.txtNumePlan.CausesValidation = false;
    this.txtNumePlan.Location = new Point(851, 41);
    this.txtNumePlan.Name = "txtNumePlan";
    this.txtNumePlan.ReadOnly = true;
    this.txtNumePlan.Size = new Size(98, 23);
    this.txtNumePlan.TabIndex = 29;
    this.txtNumePlan.TabStop = false;
    this.txtNumePlan.TextAlign = HorizontalAlignment.Center;
    this.metroLabel34.AutoSize = false;
    this.metroLabel34.Location = new Point(737, 43);
    this.metroLabel34.Name = "metroLabel34";
    this.metroLabel34.Size = new Size(106, 19);
    this.metroLabel34.TabIndex = 28;
    this.metroLabel34.Text = "N° Plan de Pago";
    this.txtFeve.CausesValidation = false;
    this.txtFeve.Location = new Point(644, 41);
    this.txtFeve.Name = "txtFeve";
    this.txtFeve.ReadOnly = true;
    this.txtFeve.Size = new Size(85, 23);
    this.txtFeve.TabIndex = 27;
    this.txtFeve.TabStop = false;
    this.txtFeve.TextAlign = HorizontalAlignment.Center;
    this.metroLabel33.AutoSize = false;
    this.metroLabel33.Location = new Point(566, 43);
    this.metroLabel33.Name = "metroLabel33";
    this.metroLabel33.Size = new Size(70, 19);
    this.metroLabel33.TabIndex = 26;
    this.metroLabel33.Text = "Fecha Vto.";
    this.txtFeal.CausesValidation = false;
    this.txtFeal.Location = new Point(473, 41);
    this.txtFeal.Name = "txtFeal";
    this.txtFeal.ReadOnly = true;
    this.txtFeal.Size = new Size(85, 23);
    this.txtFeal.TabIndex = 25;
    this.txtFeal.TabStop = false;
    this.txtFeal.TextAlign = HorizontalAlignment.Center;
    this.metroLabel32.AutoSize = false;
    this.metroLabel32.Location = new Point(395, 43);
    this.metroLabel32.Name = "metroLabel32";
    this.metroLabel32.Size = new Size(70, 19);
    this.metroLabel32.TabIndex = 24;
    this.metroLabel32.Text = "Fecha Alta";
    this.txtEstado.CausesValidation = false;
    this.txtEstado.Location = new Point(262, 41);
    this.txtEstado.Name = "txtEstado";
    this.txtEstado.ReadOnly = true;
    this.txtEstado.Size = new Size(125, 23);
    this.txtEstado.TabIndex = 23;
    this.txtEstado.TabStop = false;
    this.metroLabel31.AutoSize = false;
    this.metroLabel31.Location = new Point(206, 43);
    this.metroLabel31.Name = "metroLabel31";
    this.metroLabel31.Size = new Size(48 /*0x30*/, 19);
    this.metroLabel31.TabIndex = 22;
    this.metroLabel31.Text = "Estado";
    this.txtTipo.CausesValidation = false;
    this.txtTipo.Location = new Point(99, 41);
    this.txtTipo.Name = "txtTipo";
    this.txtTipo.ReadOnly = true;
    this.txtTipo.Size = new Size(99, 23);
    this.txtTipo.TabIndex = 21;
    this.txtTipo.TabStop = false;
    this.metroLabel30.AutoSize = false;
    this.metroLabel30.Location = new Point(56, 43);
    this.metroLabel30.Name = "metroLabel30";
    this.metroLabel30.Size = new Size(35, 19);
    this.metroLabel30.TabIndex = 20;
    this.metroLabel30.Text = "Tipo";
    this.txtOrden.CausesValidation = false;
    this.txtOrden.Location = new Point(733, 6);
    this.txtOrden.Name = "txtOrden";
    this.txtOrden.ReadOnly = true;
    this.txtOrden.Size = new Size(83, 23);
    this.txtOrden.TabIndex = 19;
    this.txtOrden.TabStop = false;
    this.txtOrden.TextAlign = HorizontalAlignment.Center;
    this.metroLabel29.AutoSize = false;
    this.metroLabel29.Location = new Point(655, 8);
    this.metroLabel29.Name = "metroLabel29";
    this.metroLabel29.Size = new Size(66, 19);
    this.metroLabel29.TabIndex = 18;
    this.metroLabel29.Text = "N° Orden";
    this.txtLiqu.CausesValidation = false;
    this.txtLiqu.Location = new Point(600, 6);
    this.txtLiqu.Name = "txtLiqu";
    this.txtLiqu.ReadOnly = true;
    this.txtLiqu.Size = new Size(43, 23);
    this.txtLiqu.TabIndex = 17;
    this.txtLiqu.TabStop = false;
    this.txtLiqu.TextAlign = HorizontalAlignment.Center;
    this.metroLabel28.AutoSize = false;
    this.metroLabel28.Location = new Point(513, 8);
    this.metroLabel28.Name = "metroLabel28";
    this.metroLabel28.Size = new Size(75, 19);
    this.metroLabel28.TabIndex = 16 /*0x10*/;
    this.metroLabel28.Text = "Liquidación";
    this.txtUsuarioAlta.CausesValidation = false;
    this.txtUsuarioAlta.Location = new Point(422, 6);
    this.txtUsuarioAlta.Name = "txtUsuarioAlta";
    this.txtUsuarioAlta.ReadOnly = true;
    this.txtUsuarioAlta.Size = new Size(79, 23);
    this.txtUsuarioAlta.TabIndex = 15;
    this.txtUsuarioAlta.TabStop = false;
    this.txtUsuarioAlta.TextAlign = HorizontalAlignment.Center;
    this.metroLabel27.AutoSize = false;
    this.metroLabel27.Location = new Point(357, 8);
    this.metroLabel27.Name = "metroLabel27";
    this.metroLabel27.Size = new Size(53, 19);
    this.metroLabel27.TabIndex = 14;
    this.metroLabel27.Text = "Usuario";
    this.metroLabel26.AutoSize = false;
    this.metroLabel26.Location = new Point(1049, 8);
    this.metroLabel26.Name = "metroLabel26";
    this.metroLabel26.Size = new Size(220, 19);
    this.metroLabel26.TabIndex = 13;
    this.metroLabel26.Text = "Observación de la Cuenta Corriente";
    this.txtObseCtacte.CausesValidation = false;
    this.txtObseCtacte.Location = new Point(964, 37);
    this.txtObseCtacte.Multiline = true;
    this.txtObseCtacte.Name = "txtObseCtacte";
    this.txtObseCtacte.ReadOnly = true;
    this.txtObseCtacte.Size = new Size(390, 60);
    this.txtObseCtacte.TabIndex = 12;
    this.txtObseCtacte.TabStop = false;
    this.txtConcepto.CausesValidation = false;
    this.txtConcepto.Location = new Point(99, 6);
    this.txtConcepto.Name = "txtConcepto";
    this.txtConcepto.ReadOnly = true;
    this.txtConcepto.Size = new Size(246, 23);
    this.txtConcepto.TabIndex = 11;
    this.txtConcepto.TabStop = false;
    this.metroLabel25.AutoSize = false;
    this.metroLabel25.Location = new Point(21, 8);
    this.metroLabel25.Name = "metroLabel25";
    this.metroLabel25.Size = new Size(66, 19);
    this.metroLabel25.TabIndex = 2;
    this.metroLabel25.Text = "Concepto";
    ((NavigationPageBase) this.tabDetaApre).Caption = "Detalle Apremio";
    ((Control) this.tabDetaApre).Controls.Add((Control) this.panProcApre);
    ((Control) this.tabDetaApre).Name = "tabDetaApre";
    ((NavigationPageBase) this.tabDetaApre).Size = new Size(1360, 267);
    this.panProcApre.Controls.Add((Control) this.panProcApreSinDOCK);
    this.panProcApre.Dock = DockStyle.Fill;
    this.panProcApre.Location = new Point(0, 0);
    this.panProcApre.Name = "panProcApre";
    this.panProcApre.Size = new Size(1360, 267);
    this.panProcApre.TabIndex = 0;
    this.panProcApreSinDOCK.Controls.Add((Control) this.panProcApreSup);
    this.panProcApreSinDOCK.Location = new Point(0, 0);
    this.panProcApreSinDOCK.Name = "panProcApreSinDOCK";
    this.panProcApreSinDOCK.Size = new Size(1360, 267);
    this.panProcApreSinDOCK.TabIndex = 2;
    this.panProcApreSup.Controls.Add((Control) this.gridControlDetaAprePeri);
    this.panProcApreSup.Controls.Add((Control) this.metroLabel47);
    this.panProcApreSup.Dock = DockStyle.Top;
    this.panProcApreSup.Location = new Point(0, 0);
    this.panProcApreSup.Name = "panProcApreSup";
    this.panProcApreSup.Size = new Size(1360, 207);
    this.panProcApreSup.TabIndex = 2;
    ((Control) this.gridControlDetaAprePeri).Dock = DockStyle.Fill;
    ((Control) this.gridControlDetaAprePeri).Location = new Point(0, 28);
    this.gridControlDetaAprePeri.MainView = (BaseView) this.gridViewDetaAprePeri;
    ((Control) this.gridControlDetaAprePeri).Name = "gridControlDetaAprePeri";
    ((Control) this.gridControlDetaAprePeri).Size = new Size(1360, 179);
    ((Control) this.gridControlDetaAprePeri).TabIndex = 510;
    this.gridControlDetaAprePeri.ViewCollection.AddRange(new BaseView[1]
    {
      (BaseView) this.gridViewDetaAprePeri
    });
    this.gridViewDetaAprePeri.Appearance.HeaderPanel.Options.UseTextOptions = true;
    this.gridViewDetaAprePeri.Appearance.HeaderPanel.TextOptions.HAlignment = (HorzAlignment) 2;
    ((ColumnView) this.gridViewDetaAprePeri).Columns.AddRange(new GridColumn[9]
    {
      this.colNumeCausa,
      this.colImpuesto,
      this.colCuenta,
      this.colPeriDeta,
      this.colBimeDeta,
      this.colCapiDeta,
      this.colInteDeta,
      this.colFecProc,
      this.colPerador
    });
    ((BaseView) this.gridViewDetaAprePeri).GridControl = this.gridControlDetaAprePeri;
    ((BaseView) this.gridViewDetaAprePeri).Name = "gridViewDetaAprePeri";
    ((ColumnViewOptionsBehavior) this.gridViewDetaAprePeri.OptionsBehavior).Editable = false;
    ((ColumnViewOptionsBehavior) this.gridViewDetaAprePeri.OptionsBehavior).ReadOnly = true;
    this.gridViewDetaAprePeri.OptionsView.ShowFooter = true;
    this.gridViewDetaAprePeri.OptionsView.ShowGroupPanel = false;
    this.gridViewDetaAprePeri.OptionsView.ShowIndicator = false;
    ((AppearanceOptions) this.colNumeCausa.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colNumeCausa.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colNumeCausa.Caption = "N° Causa";
    this.colNumeCausa.FieldName = "NumeCausa";
    this.colNumeCausa.MaxWidth = 120;
    this.colNumeCausa.Name = "colNumeCausa";
    this.colNumeCausa.Visible = true;
    this.colNumeCausa.VisibleIndex = 0;
    this.colNumeCausa.Width = 70;
    this.colImpuesto.Caption = "Impuesto";
    this.colImpuesto.FieldName = "DetaImp";
    this.colImpuesto.MaxWidth = 160 /*0xA0*/;
    this.colImpuesto.Name = "colImpuesto";
    this.colImpuesto.Visible = true;
    this.colImpuesto.VisibleIndex = 1;
    ((AppearanceOptions) this.colCuenta.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCuenta.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colCuenta.Caption = "Cuenta";
    this.colCuenta.FieldName = "Objeto";
    this.colCuenta.MaxWidth = 140;
    this.colCuenta.Name = "colCuenta";
    this.colCuenta.Visible = true;
    this.colCuenta.VisibleIndex = 2;
    ((AppearanceOptions) this.colPeriDeta.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colPeriDeta.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colPeriDeta.Caption = "Periodo";
    this.colPeriDeta.FieldName = "Periodo";
    this.colPeriDeta.MaxWidth = 70;
    this.colPeriDeta.Name = "colPeriDeta";
    this.colPeriDeta.Visible = true;
    this.colPeriDeta.VisibleIndex = 3;
    this.colPeriDeta.Width = 70;
    ((AppearanceOptions) this.colBimeDeta.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colBimeDeta.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colBimeDeta.Caption = "Mes";
    this.colBimeDeta.FieldName = "Cuota";
    this.colBimeDeta.MaxWidth = 80 /*0x50*/;
    this.colBimeDeta.Name = "colBimeDeta";
    this.colBimeDeta.Visible = true;
    this.colBimeDeta.VisibleIndex = 4;
    ((AppearanceOptions) this.colCapiDeta.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colCapiDeta.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colCapiDeta.Caption = "Capital";
    this.colCapiDeta.DisplayFormat.FormatString = "{0:C2}";
    this.colCapiDeta.DisplayFormat.FormatType = (FormatType) 1;
    this.colCapiDeta.FieldName = "Capital";
    this.colCapiDeta.MaxWidth = 130;
    this.colCapiDeta.Name = "colCapiDeta";
    ((GridSummaryItemCollection) this.colCapiDeta.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "Capital", "{0:C2}")
    });
    this.colCapiDeta.Visible = true;
    this.colCapiDeta.VisibleIndex = 5;
    ((AppearanceOptions) this.colInteDeta.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colInteDeta.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 3;
    this.colInteDeta.Caption = "Interes";
    this.colInteDeta.DisplayFormat.FormatString = "{0:C2}";
    this.colInteDeta.DisplayFormat.FormatType = (FormatType) 1;
    this.colInteDeta.FieldName = "Interes";
    this.colInteDeta.MaxWidth = 130;
    this.colInteDeta.Name = "colInteDeta";
    ((GridSummaryItemCollection) this.colInteDeta.Summary).AddRange(new GridSummaryItem[1]
    {
      (GridSummaryItem) new GridColumnSummaryItem((SummaryItemType) 0, "Interes", "{0:C2}")
    });
    this.colInteDeta.Visible = true;
    this.colInteDeta.VisibleIndex = 6;
    ((AppearanceOptions) this.colFecProc.AppearanceCell.Options).UseTextOptions = true;
    ((AppearanceObject) this.colFecProc.AppearanceCell).TextOptions.HAlignment = (HorzAlignment) 2;
    this.colFecProc.Caption = "Fecha Proceso";
    this.colFecProc.FieldName = "FecProc";
    this.colFecProc.MaxWidth = 120;
    this.colFecProc.Name = "colFecProc";
    this.colFecProc.Visible = true;
    this.colFecProc.VisibleIndex = 7;
    this.colPerador.Caption = "Operador";
    this.colPerador.FieldName = "Operador";
    this.colPerador.Name = "colPerador";
    this.colPerador.Visible = true;
    this.colPerador.VisibleIndex = 8;
    this.metroLabel47.AutoSize = false;
    this.metroLabel47.Dock = DockStyle.Top;
    this.metroLabel47.FontSize = 15f;
    this.metroLabel47.FontWeight = MetroFontWeight.Bold;
    this.metroLabel47.Location = new Point(0, 0);
    this.metroLabel47.Name = "metroLabel47";
    this.metroLabel47.Size = new Size(1360, 28);
    this.metroLabel47.TabIndex = 511 /*0x01FF*/;
    this.metroLabel47.Text = "Composición del Apremio";
    this.metroLabel47.TextAlign = ContentAlignment.MiddleCenter;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.panCentral);
    this.Name = nameof (detailCCMaipu);
    this.Size = new Size(1360, 300);
    this.panCentral.ResumeLayout(false);
    ((ISupportInitialize) this.Paneles).EndInit();
    ((Control) this.Paneles).ResumeLayout(false);
    ((Control) this.tabObjImp).ResumeLayout(false);
    this.panObjetoImponible.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlDom).EndInit();
    ((ISupportInitialize) this.gridViewDom).EndInit();
    ((ISupportInitialize) this.gridView3).EndInit();
    this.panInferiorDOI.ResumeLayout(false);
    this.panInferiorDerecho.ResumeLayout(false);
    ((ISupportInitialize) this.gridObse).EndInit();
    ((ISupportInitialize) this.viewObse).EndInit();
    this.panInferiorIzquierdo.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlTitular).EndInit();
    ((ISupportInitialize) this.gridViewTitular).EndInit();
    ((Control) this.tabFaciPago).ResumeLayout(false);
    this.panFacilidad.ResumeLayout(false);
    this.panFaciDerecho.ResumeLayout(false);
    this.panFaciDerechoAbajo.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlFaci).EndInit();
    ((ISupportInitialize) this.gridViewFaci).EndInit();
    ((ISupportInitialize) this.gridView2).EndInit();
    ((Control) this.tabApre).ResumeLayout(false);
    this.panApremio.ResumeLayout(false);
    this.panApreInferior.ResumeLayout(false);
    this.panGrillaApreDerecha.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlBoap).EndInit();
    ((ISupportInitialize) this.gridViewBoap).EndInit();
    this.panGrillaApre.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlInstApre).EndInit();
    ((ISupportInitialize) this.gridViewInstApre).EndInit();
    this.panApreSuperior.ResumeLayout(false);
    ((Control) this.tabDatoBole).ResumeLayout(false);
    this.panDatoBole.ResumeLayout(false);
    this.panDatoBoleInferior.ResumeLayout(false);
    this.panDatoBolePagos.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlDetaPago).EndInit();
    ((ISupportInitialize) this.gridViewDetaPago).EndInit();
    this.panDatoBoleLiquida.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlDetaBoleLiq).EndInit();
    ((ISupportInitialize) this.gridViewDetaBoleLiq).EndInit();
    this.panDatoBoleSup.ResumeLayout(false);
    ((Control) this.tabDetaApre).ResumeLayout(false);
    this.panProcApre.ResumeLayout(false);
    this.panProcApreSinDOCK.ResumeLayout(false);
    this.panProcApreSup.ResumeLayout(false);
    ((ISupportInitialize) this.gridControlDetaAprePeri).EndInit();
    ((ISupportInitialize) this.gridViewDetaAprePeri).EndInit();
    this.ResumeLayout(false);
  }
}
