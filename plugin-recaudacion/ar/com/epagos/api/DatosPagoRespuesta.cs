// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosPagoRespuesta
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Xml.Serialization;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.ar.com.epagos.api;

[GeneratedCode("System.Xml", "4.8.4161.0")]
[DebuggerStepThrough]
[DesignerCategory("code")]
[SoapType(Namespace = "https://api.epagos.com.ar/")]
[Serializable]
public class DatosPagoRespuesta
{
  private long codigoUnicoTransaccionField;
  private string estadoField;
  private int convenioField;
  private float importeField;
  private string externaField;
  private string externa_2Field;
  private string externa_3Field;
  private int implementadorField;
  private DateTime fechaPagoField;
  private DateTime fechaAcreditacionField;
  private DateTime fechaNovedadAcreditacionField;
  private DatosFormaPagoObtenerPago[] formaPagoField;
  private DatosPagadorObtenerPago datosPagadorField;
  private DatosContribuyenteObtenerPago datosContribuyenteField;
  private InfoGov.Plugins.Recaudacion.ar.com.epagos.api.PagosAdicionales[] pagosAdicionalesField;
  private string reciboField;
  private string url_QRField;

  public long CodigoUnicoTransaccion
  {
    get => this.codigoUnicoTransaccionField;
    set => this.codigoUnicoTransaccionField = value;
  }

  public string Estado
  {
    get => this.estadoField;
    set => this.estadoField = value;
  }

  public int Convenio
  {
    get => this.convenioField;
    set => this.convenioField = value;
  }

  public float Importe
  {
    get => this.importeField;
    set => this.importeField = value;
  }

  public string Externa
  {
    get => this.externaField;
    set => this.externaField = value;
  }

  public string Externa_2
  {
    get => this.externa_2Field;
    set => this.externa_2Field = value;
  }

  public string Externa_3
  {
    get => this.externa_3Field;
    set => this.externa_3Field = value;
  }

  public int Implementador
  {
    get => this.implementadorField;
    set => this.implementadorField = value;
  }

  public DateTime FechaPago
  {
    get => this.fechaPagoField;
    set => this.fechaPagoField = value;
  }

  public DateTime FechaAcreditacion
  {
    get => this.fechaAcreditacionField;
    set => this.fechaAcreditacionField = value;
  }

  public DateTime FechaNovedadAcreditacion
  {
    get => this.fechaNovedadAcreditacionField;
    set => this.fechaNovedadAcreditacionField = value;
  }

  public DatosFormaPagoObtenerPago[] FormaPago
  {
    get => this.formaPagoField;
    set => this.formaPagoField = value;
  }

  public DatosPagadorObtenerPago DatosPagador
  {
    get => this.datosPagadorField;
    set => this.datosPagadorField = value;
  }

  public DatosContribuyenteObtenerPago DatosContribuyente
  {
    get => this.datosContribuyenteField;
    set => this.datosContribuyenteField = value;
  }

  public InfoGov.Plugins.Recaudacion.ar.com.epagos.api.PagosAdicionales[] PagosAdicionales
  {
    get => this.pagosAdicionalesField;
    set => this.pagosAdicionalesField = value;
  }

  public string Recibo
  {
    get => this.reciboField;
    set => this.reciboField = value;
  }

  public string Url_QR
  {
    get => this.url_QRField;
    set => this.url_QRField = value;
  }
}
