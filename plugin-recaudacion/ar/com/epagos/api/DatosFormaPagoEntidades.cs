// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosFormaPagoEntidades
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
public class DatosFormaPagoEntidades
{
  private int id_fpField;
  private string nombre_fpField;
  private TipoFormaPago tipo_fpField;
  private EstadoFormaPago estado_fpField;
  private LogosFormaPago logos_fpField;
  private ConfFormaPago config_fpField;
  private string adicional_fpField;
  private float monto_minimo_fpField;
  private float monto_maximo_fpField;
  private int tiempo_acreditacion_fpField;

  public int id_fp
  {
    get => this.id_fpField;
    set => this.id_fpField = value;
  }

  public string nombre_fp
  {
    get => this.nombre_fpField;
    set => this.nombre_fpField = value;
  }

  public TipoFormaPago tipo_fp
  {
    get => this.tipo_fpField;
    set => this.tipo_fpField = value;
  }

  public EstadoFormaPago estado_fp
  {
    get => this.estado_fpField;
    set => this.estado_fpField = value;
  }

  public LogosFormaPago logos_fp
  {
    get => this.logos_fpField;
    set => this.logos_fpField = value;
  }

  public ConfFormaPago config_fp
  {
    get => this.config_fpField;
    set => this.config_fpField = value;
  }

  public string adicional_fp
  {
    get => this.adicional_fpField;
    set => this.adicional_fpField = value;
  }

  public float monto_minimo_fp
  {
    get => this.monto_minimo_fpField;
    set => this.monto_minimo_fpField = value;
  }

  public float monto_maximo_fp
  {
    get => this.monto_maximo_fpField;
    set => this.monto_maximo_fpField = value;
  }

  public int tiempo_acreditacion_fp
  {
    get => this.tiempo_acreditacion_fpField;
    set => this.tiempo_acreditacion_fpField = value;
  }
}
