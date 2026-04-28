// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosPago
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
public class DatosPago
{
  private int codigoUnicoTransaccionField;
  private bool codigoUnicoTransaccionFieldSpecified;
  private string externoIdField;
  private string externoId_2Field;
  private string externoId_3Field;
  private DateTime fechaPagoDesdeField;
  private bool fechaPagoDesdeFieldSpecified;
  private DateTime fechaPagoHastaField;
  private bool fechaPagoHastaFieldSpecified;
  private DateTime fechaAcreditacionDesdeField;
  private bool fechaAcreditacionDesdeFieldSpecified;
  private DateTime fechaAcreditacionHastaField;
  private bool fechaAcreditacionHastaFieldSpecified;
  private DateTime fechaNovedadAcreditacionDesdeField;
  private bool fechaNovedadAcreditacionDesdeFieldSpecified;
  private DateTime fechaNovedadAcreditacionHastaField;
  private bool fechaNovedadAcreditacionHastaFieldSpecified;
  private string estadoField;
  private string codBarrasField;
  private int implementadorField;
  private bool implementadorFieldSpecified;
  private int paginaField;
  private bool paginaFieldSpecified;

  public int CodigoUnicoTransaccion
  {
    get => this.codigoUnicoTransaccionField;
    set => this.codigoUnicoTransaccionField = value;
  }

  [SoapIgnore]
  public bool CodigoUnicoTransaccionSpecified
  {
    get => this.codigoUnicoTransaccionFieldSpecified;
    set => this.codigoUnicoTransaccionFieldSpecified = value;
  }

  public string ExternoId
  {
    get => this.externoIdField;
    set => this.externoIdField = value;
  }

  public string ExternoId_2
  {
    get => this.externoId_2Field;
    set => this.externoId_2Field = value;
  }

  public string ExternoId_3
  {
    get => this.externoId_3Field;
    set => this.externoId_3Field = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime FechaPagoDesde
  {
    get => this.fechaPagoDesdeField;
    set => this.fechaPagoDesdeField = value;
  }

  [SoapIgnore]
  public bool FechaPagoDesdeSpecified
  {
    get => this.fechaPagoDesdeFieldSpecified;
    set => this.fechaPagoDesdeFieldSpecified = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime FechaPagoHasta
  {
    get => this.fechaPagoHastaField;
    set => this.fechaPagoHastaField = value;
  }

  [SoapIgnore]
  public bool FechaPagoHastaSpecified
  {
    get => this.fechaPagoHastaFieldSpecified;
    set => this.fechaPagoHastaFieldSpecified = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime FechaAcreditacionDesde
  {
    get => this.fechaAcreditacionDesdeField;
    set => this.fechaAcreditacionDesdeField = value;
  }

  [SoapIgnore]
  public bool FechaAcreditacionDesdeSpecified
  {
    get => this.fechaAcreditacionDesdeFieldSpecified;
    set => this.fechaAcreditacionDesdeFieldSpecified = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime FechaAcreditacionHasta
  {
    get => this.fechaAcreditacionHastaField;
    set => this.fechaAcreditacionHastaField = value;
  }

  [SoapIgnore]
  public bool FechaAcreditacionHastaSpecified
  {
    get => this.fechaAcreditacionHastaFieldSpecified;
    set => this.fechaAcreditacionHastaFieldSpecified = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime FechaNovedadAcreditacionDesde
  {
    get => this.fechaNovedadAcreditacionDesdeField;
    set => this.fechaNovedadAcreditacionDesdeField = value;
  }

  [SoapIgnore]
  public bool FechaNovedadAcreditacionDesdeSpecified
  {
    get => this.fechaNovedadAcreditacionDesdeFieldSpecified;
    set => this.fechaNovedadAcreditacionDesdeFieldSpecified = value;
  }

  [SoapElement(DataType = "date")]
  public DateTime FechaNovedadAcreditacionHasta
  {
    get => this.fechaNovedadAcreditacionHastaField;
    set => this.fechaNovedadAcreditacionHastaField = value;
  }

  [SoapIgnore]
  public bool FechaNovedadAcreditacionHastaSpecified
  {
    get => this.fechaNovedadAcreditacionHastaFieldSpecified;
    set => this.fechaNovedadAcreditacionHastaFieldSpecified = value;
  }

  public string Estado
  {
    get => this.estadoField;
    set => this.estadoField = value;
  }

  public string CodBarras
  {
    get => this.codBarrasField;
    set => this.codBarrasField = value;
  }

  public int Implementador
  {
    get => this.implementadorField;
    set => this.implementadorField = value;
  }

  [SoapIgnore]
  public bool ImplementadorSpecified
  {
    get => this.implementadorFieldSpecified;
    set => this.implementadorFieldSpecified = value;
  }

  public int Pagina
  {
    get => this.paginaField;
    set => this.paginaField = value;
  }

  [SoapIgnore]
  public bool PaginaSpecified
  {
    get => this.paginaFieldSpecified;
    set => this.paginaFieldSpecified = value;
  }
}
